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
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B005.C001
import Seq.B005.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A353000: Quotients obtained when sigma(k) divides antisigma(k) with k = A076617(n), sigma (A000203) is the sum of divisors function and antisigma (A024816) is the sum of the non-divisors of n less than n function.

The programs for A353000, there is no canonical definition to state claims against.
-/

/-! ## A353000.P3612422438473552280

`A024816(A076617(n+1))/A000203(A076617(n+1))`
-/

namespace A353000.P3612422438473552280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024816 (A076617 (n + 1)).toNat : ℚ) / (A000203 (A076617 (n + 1)).toNat : ℚ)

end

end A353000.P3612422438473552280

/-! ## A353000.P8657598833400213790

`A244327(A076617(n+1))-1`
-/

namespace A353000.P8657598833400213790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244327 (A076617 (n + 1)).toNat - 1

end

end A353000.P8657598833400213790

/-! ## A353000.P1641912401068046478

`A244329(A076617(n+1))`
-/

namespace A353000.P1641912401068046478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244329 (A076617 (n + 1)).toNat

end

end A353000.P1641912401068046478

/-! ## A353000.P14128926667339023344

`A244327(eq[0, A232324(n+1)]+1)-1`
-/

namespace A353000.P14128926667339023344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A353000.P14128926667339023344

/-!
# A353001: Numbers k such that the k-th triangular number mod the sum (with multiplicity) of prime factors of k, and the k-th triangular number mod the sum of divisors of k, are both prime.

The programs for A353001, there is no canonical definition to state claims against.
-/

/-! ## A353001.P17737830060151012262

`∩[A352908(n+1), A352997(n+1)]`
-/

namespace A353001.P17737830060151012262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353001.P17737830060151012262

/-!
# A353003: Indices k where A225401(k) = 0.

The programs for A353003, there is no canonical definition to state claims against.
-/

/-! ## A353003.P751753801198926336

`eq[0, A225401(n)]`
-/

namespace A353003.P751753801198926336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353003.P751753801198926336

/-! ## A353003.P18114501111302797627

`lt[8, A225410(n)]`
-/

namespace A353003.P18114501111302797627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A353003.P18114501111302797627

/-! ## A353003.P6808826053334154033

`lt[A225401(A028310(n)), 1]`
-/

namespace A353003.P6808826053334154033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A353003.P6808826053334154033

/-! ## A353003.P7013476874858521856

`A000027(eq[9, A225410(n)])`
-/

namespace A353003.P7013476874858521856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353003.P7013476874858521856

/-! ## A353003.P6605634622533078000

`A028310(eq[9, A225410(n)])`
-/

namespace A353003.P6605634622533078000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353003.P6605634622533078000

/-! ## A353003.P10782051211717020901

`lt[A225401(n), abs(A033999(n))]`
-/

namespace A353003.P10782051211717020901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353003.P10782051211717020901

/-! ## A353003.P10970144326447029705

`lt[A225401(n), acot(A000196(n))]`
-/

namespace A353003.P10970144326447029705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000196 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A353003.P10970144326447029705

/-! ## A353003.P5208648421866101913

`lt[A225401(n), acot(A000217(n))]`
-/

namespace A353003.P5208648421866101913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000217 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A353003.P5208648421866101913

/-! ## A353003.P9125375034917614776

`lt[A225401(n), A014963(A008458(n))]`
-/

namespace A353003.P9125375034917614776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353003.P9125375034917614776

/-!
# A353004: Numbers k such that 2*k^2 + 29 is semiprime.

The programs for A353004, there is no canonical definition to state claims against.
-/

/-! ## A353004.P16690967232779185230

`floor(sqrt(A241554(n+1)/2))`
-/

namespace A353004.P16690967232779185230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A241554 (n + 1) : ℚ) / 2 : ℝ)⌋

end

end A353004.P16690967232779185230

/-! ## A353004.P1133737930946160768

`eq[4, A305973(A241750(n))]`
-/

namespace A353004.P1133737930946160768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (A241750 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353004.P1133737930946160768

/-! ## A353004.P5951372828859363498

`lt[0, A008683(2*n²+29)]`
-/

namespace A353004.P5951372828859363498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * n ^ 2 + 29)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A353004.P5951372828859363498

/-! ## A353004.P16619228003483088486

`eq[2, A001222(2*n²+29)]`
-/

namespace A353004.P16619228003483088486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n ^ 2 + 29)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353004.P16619228003483088486

/-! ## A353004.P9790498533454332363

`eq[4, A000005(2*n²+29)]`
-/

namespace A353004.P9790498533454332363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n ^ 2 + 29)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353004.P9790498533454332363

/-! ## A353004.P12500007769789428367

`eq[1, A008683(n*2*n+29)]`
-/

namespace A353004.P12500007769789428367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n * (2 * n) + 29)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353004.P12500007769789428367

/-! ## A353004.P6260269503992182661

`eq[0, 1-A008683(A056220(n)+30)]`
-/

namespace A353004.P6260269503992182661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008683 (A056220 n + 30).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353004.P6260269503992182661

/-! ## A353004.P13836430969746250720

`eq[2, A020639(A001414(2*n²+29))]`
-/

namespace A353004.P13836430969746250720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001414 (2 * n ^ 2 + 29)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353004.P13836430969746250720

/-! ## A353004.P8573118497382759756

`eq[A008683(A056220(n)+30), A054977(n)]`
-/

namespace A353004.P8573118497382759756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A056220 n + 30).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353004.P8573118497382759756

/-! ## A353004.P7738270940138551901

`eq[A008683(A056220(n)+30), A057427(n)]`
-/

namespace A353004.P7738270940138551901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A056220 n + 30).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353004.P7738270940138551901

/-!
# A353006: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest positive number that has not appeared that shares a factor with (a(n-1) + a(n-2))*|a(n-1) - a(n-2)|.

The programs for A353006, there is no canonical definition to state claims against.
-/

/-! ## A353006.P3428829446065066866

`filter[A337136(n+1), A242718(#)]`
-/

namespace A353006.P3428829446065066866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A242718 (f1 j).toNat = 1) n)

end

end A353006.P3428829446065066866

/-! ## A353006.P5677423287768339257

`filter[A361314(n+1), A242718(#)]`
-/

namespace A353006.P5677423287768339257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A242718 (f1 j).toNat = 1) n)

end

end A353006.P5677423287768339257

/-!
# A353007: Nonnegative integers in which any odd digit, if present, occurs an even number of times, and any even digit, if present, occurs an odd number of times.

The programs for A353007, there is no canonical definition to state claims against.
-/

/-! ## A353007.P6380555712504248594

`lt[0, A228710(A045918(n))]`
-/

namespace A353007.P6380555712504248594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 (A045918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A353007.P6380555712504248594

/-! ## A353007.P5844749506889921836

`lt[0, A228710(A047842(n))]`
-/

namespace A353007.P5844749506889921836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 (A047842 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A353007.P5844749506889921836

/-! ## A353007.P14130883519947993597

`eq[A152271(2*(n+2)), A228710(A045918(n))]`
-/

namespace A353007.P14130883519947993597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 (A045918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353007.P14130883519947993597

/-! ## A353007.P4791189404230174894

`eq[A152271(2*(n+2)), A228710(A047842(n))]`
-/

namespace A353007.P4791189404230174894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 (A047842 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353007.P4791189404230174894

/-!
# A353008: a(n) is the smallest positive k such that k^2 + 1 has 2*n divisors, or -1 if no such k exists.

The programs for A353008, there is no canonical definition to state claims against.
-/

/-! ## A353008.P14989498979836978039

`∑[A112480(∑[n!])]`
-/

namespace A353008.P14989498979836978039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112480 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353008.P14989498979836978039

/-!
# A353009: a(n) = Sum_{k=0..floor(n/2)} (n-2*k)^(n-2*k).

The programs for A353009, there is no canonical definition to state claims against.
-/

/-! ## A353009.P2857961844878384025

`∑[abs(∑[(-n)^n])]`
-/

namespace A353009.P2857961844878384025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353009.P2857961844878384025

/-! ## A353009.P3342890011078353806

`a(n-2)+n^n` with `a(0)=1, a(1)=1`
-/

namespace A353009.P3342890011078353806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + n ^ n

end

end A353009.P3342890011078353806

/-! ## A353009.P14051717914990073969

`∑[n^n]-a(n-1)` with `a(0)=1`
-/

namespace A353009.P14051717914990073969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A353009.P14051717914990073969

/-! ## A353009.P14797958808994473978

`A001923(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A353009.P14797958808994473978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001923 n + (1 - a (n - 1))

end

end A353009.P14797958808994473978

/-! ## A353009.P17249118840484498912

`abs(∑[A033999(n)*A062970(n)])`
-/

namespace A353009.P17249118840484498912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A062970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A353009.P17249118840484498912

/-! ## A353009.P892700686177383969

`abs(a(n-2))-(A000007(n)-A000312(n))` with `a(0)=1, a(1)=1`
-/

namespace A353009.P892700686177383969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  |a (n - 2)| - (A000007 n - A000312 n)

end

end A353009.P892700686177383969

/-!
# A353011: Indices of "late birds" in A090395 (denominator of d(n)/n): indices n such that A090395(k) > A090395(n) for all k > n.

The programs for A353011, there is no canonical definition to state claims against.
-/

/-! ## A353011.P14068811312892612166

`record[A390913(n+1)]`
-/

namespace A353011.P14068811312892612166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353011.P14068811312892612166

/-! ## A353011.P15110854599548866661

`record[A352549(∑[A051521(n+1)])]`
-/

namespace A353011.P15110854599548866661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352549 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353011.P15110854599548866661

/-! ## A353011.P8327684823321381711

`record[A352549(A216577(n)+A003963(n+4))]`
-/

namespace A353011.P8327684823321381711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352549 (A216577 n + A003963 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353011.P8327684823321381711

/-! ## A353011.P9480886544871831343

`A390913(A062399(n+1))`
-/

namespace A353011.P9480886544871831343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390913 (A062399 (n + 1)).toNat

end

end A353011.P9480886544871831343

/-! ## A353011.P6533858603910071916

`A390913(A351870(n+1))`
-/

namespace A353011.P6533858603910071916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390913 (A351870 (n + 1)).toNat

end

end A353011.P6533858603910071916

/-!
# A353012: Numbers N such that gcd(N - d, N*d) >= d^2, where d = A000005(N) is the number of divisors of N.

The programs for A353012, there is no canonical definition to state claims against.
-/

/-! ## A353012.P18275298699697242450

`A359678(A201360(n+1))+A002262(n)`
-/

namespace A353012.P18275298699697242450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359678 (A201360 (n + 1)).toNat + A002262 n

end

end A353012.P18275298699697242450

/-!
# A353013: a(n) = Sum_{k=0..floor(n/2)} (n-2*k)^(n-k).

The programs for A353013, there is no canonical definition to state claims against.
-/

/-! ## A353013.P1990089795553093262

`A360867(A360885(n))+A360727(n)`
-/

namespace A353013.P1990089795553093262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360867 (A360885 n).toNat + A360727 n

end

end A353013.P1990089795553093262

/-! ## A353013.P18232935685837828875

`A360727(n)+A089851(A112426(n+1))`
-/

namespace A353013.P18232935685837828875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360727 n + A089851 (A112426 (n + 1)).toNat

end

end A353013.P18232935685837828875

/-!
# A353014: a(n) = Sum_{k=0..floor(n/3)} (n-3*k)^(n-2*k).

The programs for A353014, there is no canonical definition to state claims against.
-/

/-! ## A353014.P10491497376535351736

`A360728(n)+A185246(n²+3)`
-/

namespace A353014.P10491497376535351736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360728 n + A185246 (n ^ 2 + 3)

end

end A353014.P10491497376535351736

/-! ## A353014.P9619160416238559087

`A360728(n)+A100910(A000142(n))`
-/

namespace A353014.P9619160416238559087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360728 n + A100910 (A000142 n).toNat

end

end A353014.P9619160416238559087

/-! ## A353014.P8935501315138566080

`A360728(n)+A107846(A000248(n))`
-/

namespace A353014.P8935501315138566080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360728 n + A107846 (A000248 n).toNat

end

end A353014.P8935501315138566080

/-! ## A353014.P11663043619465427943

`A360728(n)+A060953(A275780(n))`
-/

namespace A353014.P11663043619465427943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360728 n + A060953 (A275780 n).toNat

end

end A353014.P11663043619465427943

/-!
# A353015: a(n) = Sum_{k=0..floor(n/3)} (n-3*k)^n.

The programs for A353015, there is no canonical definition to state claims against.
-/

/-! ## A353015.P1760735924731883695

`A141100(∑[n^floor(n-atan(n))])+n^n`
-/

namespace A353015.P1760735924731883695
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141100 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + (n ^ n : ℤ)

end

end A353015.P1760735924731883695

/-! ## A353015.P2373132562491631375

`A141100(∑[n^(abs(1-n)-1)])+n^n`
-/

namespace A353015.P2373132562491631375
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (|1 - (n : ℤ)| - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141100 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + (n ^ n : ℤ)

end

end A353015.P2373132562491631375

/-!
# A353016: a(n) = Sum_{k=0..floor(n/2)} (n-2*k)^(2*k).

The programs for A353016, there is no canonical definition to state claims against.
-/

/-! ## A353016.P11355582600529825477

`(A062811(round(sqrt(n²+1)))+1)/2`
-/

namespace A353016.P11355582600529825477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062811 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1 : ℚ) / 2

end

end A353016.P11355582600529825477

/-! ## A353016.P7308558919303358130

`A008619(A062811(round(acot(n)+n)))`
-/

namespace A353016.P7308558919303358130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A062811 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat).toNat

end

end A353016.P7308558919303358130

/-! ## A353016.P18232863220347244504

`A123684(A062811(floor(acot(n)+n))+1)`
-/

namespace A353016.P18232863220347244504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123684 (A062811 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + 1).toNat

end

end A353016.P18232863220347244504

/-! ## A353016.P14464469100638405338

`A225126(A062811(floor(acot(n)+n))+1)`
-/

namespace A353016.P14464469100638405338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225126 (A062811 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + 1).toNat

end

end A353016.P14464469100638405338

/-! ## A353016.P10734641767061782129

`A062828(A062811(round(acot(n)+n))+1)`
-/

namespace A353016.P10734641767061782129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062828 (A062811 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + 1).toNat

end

end A353016.P10734641767061782129

/-!
# A353018: a(n) = Sum_{k=0..floor(n/3)} (n-3*k)^(n-3*k).

The programs for A353018, there is no canonical definition to state claims against.
-/

/-! ## A353018.P1913831571693427816

`a(n-3)+n^n` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A353018.P1913831571693427816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 3) + n ^ n

end

end A353018.P1913831571693427816

/-! ## A353018.P12475808746543569325

`n^n-floor(-a(n-3))` with `a(0)=1, a(1)=1, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A353018.P12475808746543569325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  (n ^ n : ℤ) - (-a (n - 3))

end

end A353018.P12475808746543569325

/-! ## A353018.P4618044779412553803

`∑[n^n-a(n-1)-a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A353018.P4618044779412553803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (n ^ n : ℤ) - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353018.P4618044779412553803

/-! ## A353018.P14149573894816661049

`A000312(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A353018.P14149573894816661049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A000312 n + a (n - 3)

end

end A353018.P14149573894816661049

/-! ## A353018.P4497513166861364386

`A062970(n)-(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A353018.P4497513166861364386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A062970 n - (a (n - 1) + a (n - 2))

end

end A353018.P4497513166861364386

/-!
# A353021: a(n) = Sum_{l=1..n} Sum_{k=1..l} Sum_{j=1..k} Sum_{i=1..j} (l*k*j*i)^2.

The programs for A353021, the canonical program `A353021.P3216855254160646294` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353021 has offset 0).

The definition of A353021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353021.P3216855254160646294

`∑[n²*∑[n²*∑[n²*∑[n²]]]]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A353021

/-- `∑[n²*∑[n²*∑[n²*∑[n²]]]]` -/
def P3216855254160646294.Spec : Prop :=
  ∀ n, (P3216855254160646294.a n : ℤ) = A353021 n

theorem P3216855254160646294.correct : P3216855254160646294.Spec := by
  intro n
  simp only [A353021]

end A353021

/-! ## A353021.P7388074828243462682

`or(∑[n²*A351105(n)], char[1])`
-/

namespace A353021.P7388074828243462682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A351105 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A353021.P7388074828243462682

namespace A353021

/-- `or(∑[n²*A351105(n)], char[1])` -/
def P7388074828243462682.Spec : Prop :=
  ∀ n, P7388074828243462682.a n = A353021 n

end A353021

/-! ## A353021.P629535556062486822

`record[A269945(A052905(n))]`
-/

namespace A353021.P629535556062486822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269945 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353021.P629535556062486822

namespace A353021

/-- `record[A269945(A052905(n))]` -/
def P629535556062486822.Spec : Prop :=
  ∀ n, P629535556062486822.a n = A353021 n

end A353021

/-! ## A353021.P18197104506551829750

`A269945(A052905(n+2))`
-/

namespace A353021.P18197104506551829750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269945 (A052905 (n + 2)).toNat

end

end A353021.P18197104506551829750

namespace A353021

/-- `A269945(A052905(n+2))` -/
def P18197104506551829750.Spec : Prop :=
  ∀ n, P18197104506551829750.a n = A353021 n

end A353021

/-! ## A353021.P3372097367836976362

`A269945(eq[4, A025581(n)])`
-/

namespace A353021.P3372097367836976362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353021.P3372097367836976362

namespace A353021

/-- `A269945(eq[4, A025581(n)])` -/
def P3372097367836976362.Spec : Prop :=
  ∀ n, P3372097367836976362.a n = A353021 n

end A353021

/-! ## A353021.P4911047739929000651

`record[A269945(A046691(n+1)-1)]`
-/

namespace A353021.P4911047739929000651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269945 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353021.P4911047739929000651

namespace A353021

/-- `record[A269945(A046691(n+1)-1)]` -/
def P4911047739929000651.Spec : Prop :=
  ∀ n, P4911047739929000651.a n = A353021 n

end A353021

/-!
# A353022: Products of four distinct primes between twin primes.

The programs for A353022, the canonical program `A353022.P11468291543949970931` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353022 has offset 1).

The definition of A353022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353022.P11468291543949970931

`∩[A014574(n+1), A382133(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A353022

/-- `∩[A014574(n+1), A382133(n+1)]` -/
def P11468291543949970931.Spec : Prop :=
  ∀ n, (P11468291543949970931.a n : ℤ) = A353022 (n + 1)

theorem P11468291543949970931.correct : P11468291543949970931.Spec := by
  intro n
  simp only [A353022, Nat.add_sub_cancel]

end A353022

/-! ## A353022.P5177105417696639744

`∩[A070195(n+1), A382133(n+1)]`
-/

namespace A353022.P5177105417696639744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353022.P5177105417696639744

namespace A353022

/-- `∩[A070195(n+1), A382133(n+1)]` -/
def P5177105417696639744.Spec : Prop :=
  ∀ n, (P5177105417696639744.a n : ℤ) = A353022 (n + 1)

end A353022

/-! ## A353022.P9596282695274408685

`∩[A120432(n+1), A382133(n+1)]`
-/

namespace A353022.P9596282695274408685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353022.P9596282695274408685

namespace A353022

/-- `∩[A120432(n+1), A382133(n+1)]` -/
def P9596282695274408685.Spec : Prop :=
  ∀ n, (P9596282695274408685.a n : ℤ) = A353022 (n + 1)

end A353022

/-! ## A353022.P12557931928092142695

`∩[A217259(n+1), A382133(n+1)]`
-/

namespace A353022.P12557931928092142695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353022.P12557931928092142695

namespace A353022

/-- `∩[A217259(n+1), A382133(n+1)]` -/
def P12557931928092142695.Spec : Prop :=
  ∀ n, (P12557931928092142695.a n : ℤ) = A353022 (n + 1)

end A353022

/-! ## A353022.P1308983459974720402

`∩[A223138(n+1), A382133(n+1)]`
-/

namespace A353022.P1308983459974720402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353022.P1308983459974720402

namespace A353022

/-- `∩[A223138(n+1), A382133(n+1)]` -/
def P1308983459974720402.Spec : Prop :=
  ∀ n, (P1308983459974720402.a n : ℤ) = A353022 (n + 1)

end A353022

/-! ## A353022.P11436034982194370153

`∩[A306298(n+1), A382133(n+1)]`
-/

namespace A353022.P11436034982194370153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353022.P11436034982194370153

namespace A353022

/-- `∩[A306298(n+1), A382133(n+1)]` -/
def P11436034982194370153.Spec : Prop :=
  ∀ n, (P11436034982194370153.a n : ℤ) = A353022 (n + 1)

end A353022

/-! ## A353022.P8831020653029142165

`∩[A343502(n+1), A382133(n+1)]`
-/

namespace A353022.P8831020653029142165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353022.P8831020653029142165

namespace A353022

/-- `∩[A343502(n+1), A382133(n+1)]` -/
def P8831020653029142165.Spec : Prop :=
  ∀ n, (P8831020653029142165.a n : ℤ) = A353022 (n + 1)

end A353022

/-! ## A353022.P6833510651227528970

`∩[A014574(n+1), A379762(n+1)]`
-/

namespace A353022.P6833510651227528970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353022.P6833510651227528970

namespace A353022

/-- `∩[A014574(n+1), A379762(n+1)]` -/
def P6833510651227528970.Spec : Prop :=
  ∀ n, (P6833510651227528970.a n : ℤ) = A353022 (n + 1)

end A353022

/-! ## A353022.P7510482780744619281

`∩[A056853(n+1), A379762(n+1)]`
-/

namespace A353022.P7510482780744619281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353022.P7510482780744619281

namespace A353022

/-- `∩[A056853(n+1), A379762(n+1)]` -/
def P7510482780744619281.Spec : Prop :=
  ∀ n, (P7510482780744619281.a n : ℤ) = A353022 (n + 1)

end A353022

/-! ## A353022.P17250234833543128342

`∩[A070195(n+1), A379762(n+1)]`
-/

namespace A353022.P17250234833543128342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353022.P17250234833543128342

namespace A353022

/-- `∩[A070195(n+1), A379762(n+1)]` -/
def P17250234833543128342.Spec : Prop :=
  ∀ n, (P17250234833543128342.a n : ℤ) = A353022 (n + 1)

end A353022

/-! ## A353022.P9926341774136980912

`∩[A120432(n+1), A379762(n+1)]`
-/

namespace A353022.P9926341774136980912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353022.P9926341774136980912

namespace A353022

/-- `∩[A120432(n+1), A379762(n+1)]` -/
def P9926341774136980912.Spec : Prop :=
  ∀ n, (P9926341774136980912.a n : ℤ) = A353022 (n + 1)

end A353022

/-! ## A353022.P4593029378181777578

`∩[A217259(n+1), A379762(n+1)]`
-/

namespace A353022.P4593029378181777578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353022.P4593029378181777578

namespace A353022

/-- `∩[A217259(n+1), A379762(n+1)]` -/
def P4593029378181777578.Spec : Prop :=
  ∀ n, (P4593029378181777578.a n : ℤ) = A353022 (n + 1)

end A353022

/-! ## A353022.P10952653121482120308

`∩[A223138(n+1), A379762(n+1)]`
-/

namespace A353022.P10952653121482120308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353022.P10952653121482120308

namespace A353022

/-- `∩[A223138(n+1), A379762(n+1)]` -/
def P10952653121482120308.Spec : Prop :=
  ∀ n, (P10952653121482120308.a n : ℤ) = A353022 (n + 1)

end A353022

/-! ## A353022.P1276941940793118122

`∩[A306298(n+1), A379762(n+1)]`
-/

namespace A353022.P1276941940793118122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353022.P1276941940793118122

namespace A353022

/-- `∩[A306298(n+1), A379762(n+1)]` -/
def P1276941940793118122.Spec : Prop :=
  ∀ n, (P1276941940793118122.a n : ℤ) = A353022 (n + 1)

end A353022

/-! ## A353022.P705626480274419396

`∩[A070195(n+1), A136153(n+1)]`
-/

namespace A353022.P705626480274419396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353022.P705626480274419396

namespace A353022

/-- `∩[A070195(n+1), A136153(n+1)]` -/
def P705626480274419396.Spec : Prop :=
  ∀ n, (P705626480274419396.a n : ℤ) = A353022 (n + 1)

end A353022

/-! ## A353022.P14793388056303809944

`∩[A136153(n+1), A382133(n+1)]`
-/

namespace A353022.P14793388056303809944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353022.P14793388056303809944

namespace A353022

/-- `∩[A136153(n+1), A382133(n+1)]` -/
def P14793388056303809944.Spec : Prop :=
  ∀ n, (P14793388056303809944.a n : ℤ) = A353022 (n + 1)

end A353022

/-! ## A353022.P12193135536635475111

`∩[A063015(n+1), A136153(n+1)]`
-/

namespace A353022.P12193135536635475111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353022.P12193135536635475111

namespace A353022

/-- `∩[A063015(n+1), A136153(n+1)]` -/
def P12193135536635475111.Spec : Prop :=
  ∀ n, (P12193135536635475111.a n : ℤ) = A353022 (n + 1)

end A353022

/-! ## A353022.P6786816830005575093

`∩[A063015(n+1), A382133(n+1)]`
-/

namespace A353022.P6786816830005575093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353022.P6786816830005575093

namespace A353022

/-- `∩[A063015(n+1), A382133(n+1)]` -/
def P6786816830005575093.Spec : Prop :=
  ∀ n, (P6786816830005575093.a n : ℤ) = A353022 (n + 1)

end A353022

/-! ## A353022.P4188042157297604183

`∩[A077067(n+1), A382133(n+1)]`
-/

namespace A353022.P4188042157297604183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353022.P4188042157297604183

namespace A353022

/-- `∩[A077067(n+1), A382133(n+1)]` -/
def P4188042157297604183.Spec : Prop :=
  ∀ n, (P4188042157297604183.a n : ℤ) = A353022 (n + 1)

end A353022

/-! ## A353022.P253338122621818311

`∩[A077064(n+1), A136153(n+1)]`
-/

namespace A353022.P253338122621818311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353022.P253338122621818311

namespace A353022

/-- `∩[A077064(n+1), A136153(n+1)]` -/
def P253338122621818311.Spec : Prop :=
  ∀ n, (P253338122621818311.a n : ℤ) = A353022 (n + 1)

end A353022

/-!
# A353024: Largest k such that A007504(k) <= n^2.

The programs for A353024, the canonical program `A353024.P9978356076092781004` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353024 has offset 1).

The definition of A353024 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350174, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353024.P9978356076092781004

`A350174((n+1)²)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A353024

/-- `A350174((n+1)²)` -/
def P9978356076092781004.Spec : Prop :=
  ∀ n, P9978356076092781004.a n = A353024 (n + 1)

theorem P9978356076092781004.correct : P9978356076092781004.Spec := by
  intro n
  simp only [A353024, Nat.add_sub_cancel]

end A353024

/-! ## A353024.P9684508949622464062

`A337769(n+1)-1`
-/

namespace A353024.P9684508949622464062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337769 (n + 1) - 1

end

end A353024.P9684508949622464062

namespace A353024

/-- `A337769(n+1)-1` -/
def P9684508949622464062.Spec : Prop :=
  ∀ n, P9684508949622464062.a n = A353024 (n + 1)

end A353024

/-! ## A353024.P15713355399643955541

`A289207(A337769(n+1)+1)`
-/

namespace A353024.P15713355399643955541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A337769 (n + 1) + 1).toNat

end

end A353024.P15713355399643955541

namespace A353024

/-- `A289207(A337769(n+1)+1)` -/
def P15713355399643955541.Spec : Prop :=
  ∀ n, P15713355399643955541.a n = A353024 (n + 1)

end A353024

/-! ## A353024.P13838717178149968255

`A003056(C(A337769(n+1), 2))`
-/

namespace A353024.P13838717178149968255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A337769 (n + 1)).toNat 2)

end

end A353024.P13838717178149968255

namespace A353024

/-- `A003056(C(A337769(n+1), 2))` -/
def P13838717178149968255.Spec : Prop :=
  ∀ n, P13838717178149968255.a n = A353024 (n + 1)

end A353024

/-! ## A353024.P18270441157271944901

`A070198(n)%A337769(n+1)`
-/

namespace A353024.P18270441157271944901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A337769 (n + 1))

end

end A353024.P18270441157271944901

namespace A353024

/-- `A070198(n)%A337769(n+1)` -/
def P18270441157271944901.Spec : Prop :=
  ∀ n, P18270441157271944901.a n = A353024 (n + 1)

end A353024

/-! ## A353024.P8016034992457133692

`A079782(n+1)%A337769(n+1)`
-/

namespace A353024.P8016034992457133692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A337769 (n + 1))

end

end A353024.P8016034992457133692

namespace A353024

/-- `A079782(n+1)%A337769(n+1)` -/
def P8016034992457133692.Spec : Prop :=
  ∀ n, P8016034992457133692.a n = A353024 (n + 1)

end A353024

/-! ## A353024.P8571389274813404501

`A083685(n+1)%A337769(n+1)`
-/

namespace A353024.P8571389274813404501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A337769 (n + 1))

end

end A353024.P8571389274813404501

namespace A353024

/-- `A083685(n+1)%A337769(n+1)` -/
def P8571389274813404501.Spec : Prop :=
  ∀ n, P8571389274813404501.a n = A353024 (n + 1)

end A353024

/-! ## A353024.P13343458846008564050

`A121934(n+1)%A337769(n+1)`
-/

namespace A353024.P13343458846008564050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A337769 (n + 1))

end

end A353024.P13343458846008564050

namespace A353024

/-- `A121934(n+1)%A337769(n+1)` -/
def P13343458846008564050.Spec : Prop :=
  ∀ n, P13343458846008564050.a n = A353024 (n + 1)

end A353024

/-! ## A353024.P11741181583555802376

`∑{d}[A063905(A080335(n)), A230980(#)]-1`
-/

namespace A353024.P11741181583555802376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063905 (A080335 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A230980 d - 1

end

end A353024.P11741181583555802376

namespace A353024

/-- `∑{d}[A063905(A080335(n)), A230980(#)]-1` -/
def P11741181583555802376.Spec : Prop :=
  ∀ n, P11741181583555802376.a n = A353024 (n + 1)

end A353024

/-! ## A353024.P2565781900944873318

`A354347(A005111(n+1))+A337769(n+1)`
-/

namespace A353024.P2565781900944873318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (A005111 (n + 1)).toNat + A337769 (n + 1)

end

end A353024.P2565781900944873318

namespace A353024

/-- `A354347(A005111(n+1))+A337769(n+1)` -/
def P2565781900944873318.Spec : Prop :=
  ∀ n, P2565781900944873318.a n = A353024 (n + 1)

end A353024

/-!
# A353027: Tetrahedral (or triangular pyramidal) numbers which are products of four distinct primes.

The programs for A353027, there is no canonical definition to state claims against.
-/

/-! ## A353027.P2536578999770778122

`A000292(A362410(n+1))`
-/

namespace A353027.P2536578999770778122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A362410 (n + 1)).toNat

end

end A353027.P2536578999770778122

/-! ## A353027.P11257911278158139464

`filter[A070755(n+1), A101637(#)]`
-/

namespace A353027.P11257911278158139464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A353027.P11257911278158139464

/-! ## A353027.P12317259240405130241

`filter[A156126(n+2), A353629(#)]`
-/

namespace A353027.P12317259240405130241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156126 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A353027.P12317259240405130241

/-! ## A353027.P15358635445073691245

`filter[A242291(n+2), A353629(#)]`
-/

namespace A353027.P15358635445073691245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242291 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A353027.P15358635445073691245

/-!
# A353028: Number of subgraphs of the directed square lattice with n vertices and all vertices reachable from the origin.

The programs for A353028, there is no canonical definition to state claims against.
-/

/-! ## A353028.P2777683069226632950

`A346157(n)-A090620(A149983(n))`
-/

namespace A353028.P2777683069226632950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346157 n - A090620 (A149983 n).toNat

end

end A353028.P2777683069226632950

/-! ## A353028.P10529027506549593423

`A033270(A228770(n+1)+A001611(n))`
-/

namespace A353028.P10529027506549593423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A228770 (n + 1) + A001611 n).toNat

end

end A353028.P10529027506549593423

/-! ## A353028.P16290621843325029740

`A008676(A094821(n+1)+A007980(2*n))`
-/

namespace A353028.P16290621843325029740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A094821 (n + 1) + A007980 (2 * n)).toNat

end

end A353028.P16290621843325029740

/-!
# A353029: Number of copies of the star graph S(2,2,2) contained in the n-dimensional hypercube graph.

The programs for A353029, the canonical program `A353029.P8826914884595127453` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353029 has offset 1).

The definition of A353029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A353029.P8826914884595127453

`2^(n+1)*C(n+1, 3)*(n^3-3*n)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A353029

/-- `2^(n+1)*C(n+1, 3)*(n^3-3*n)` -/
def P8826914884595127453.Spec : Prop :=
  ∀ n, P8826914884595127453.a n = A353029 (n + 1)

theorem P8826914884595127453.correct : P8826914884595127453.Spec := by
  intro n
  simp only [A353029, Nat.add_sub_cancel]

end A353029

/-!
# A353034: Numbers m such that tau(m) = 2 * tau(m + 1) and simultaneously sigma(m) = 2 * sigma(m + 1), where tau(k) = A000005(k) and sigma(k) = A000203(k).

The programs for A353034, there is no canonical definition to state claims against.
-/

/-! ## A353034.P905120253532907197

`∩[A163193(n+1), A238380(n+1)]`
-/

namespace A353034.P905120253532907197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353034.P905120253532907197

/-!
# A353035: a(n) = A119435(2^n).

The programs for A353035, there is no canonical definition to state claims against.
-/

/-! ## A353035.P6672581260055888404

`A119435(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353035.P6672581260055888404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119435 (2 ^ n)

end

end A353035.P6672581260055888404

/-! ## A353035.P16495268770880846799

`∑[A243903(Δ[A164001(n+1)])]`
-/

namespace A353035.P16495268770880846799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353035.P16495268770880846799

/-! ## A353035.P10268195131740818263

`A087192(n+1)-A178798(A237823(n+1))`
-/

namespace A353035.P10268195131740818263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087192 (n + 1) - A178798 (A237823 (n + 1)).toNat

end

end A353035.P10268195131740818263

/-! ## A353035.P4239019628768114170

`A329974(a(n-1))+1` with `a(0)=1`
-/

namespace A353035.P4239019628768114170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A329974 (a (n - 1)).toNat + 1

end

end A353035.P4239019628768114170

/-! ## A353035.P1740835767201482784

`A000196(∑[A329178(n)])`
-/

namespace A353035.P1740835767201482784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A353035.P1740835767201482784

/-!
# A353036: Records in A119435.

The programs for A353036, the canonical program `A353036.P3388281851575775907` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353036 has offset 1).

The definition of A353036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353036.P8665138693858113515

`record[A331633(n+2)-1]`
-/

namespace A353036.P8665138693858113515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331633 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353036.P8665138693858113515

namespace A353036

/-- `record[A331633(n+2)-1]` -/
def P8665138693858113515.Spec : Prop :=
  ∀ n, P8665138693858113515.a n = A353036 (n + 1)

end A353036

/-! ## A353036.P3388281851575775907

`record[2*n+1-A055945(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A353036

/-- `record[2*n+1-A055945(n+1)]` -/
def P3388281851575775907.Spec : Prop :=
  ∀ n, P3388281851575775907.a n = A353036 (n + 1)

theorem P3388281851575775907.correct : P3388281851575775907.Spec := by
  intro n
  simp only [A353036, Nat.add_sub_cancel]

end A353036

/-! ## A353036.P7757004397283593961

`record[A119435(n+1)]`
-/

namespace A353036.P7757004397283593961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353036.P7757004397283593961

namespace A353036

/-- `record[A119435(n+1)]` -/
def P7757004397283593961.Spec : Prop :=
  ∀ n, P7757004397283593961.a n = A353036 (n + 1)

end A353036

/-! ## A353036.P6138689990454163228

`record[A055944(n+1)-1]`
-/

namespace A353036.P6138689990454163228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353036.P6138689990454163228

namespace A353036

/-- `record[A055944(n+1)-1]` -/
def P6138689990454163228.Spec : Prop :=
  ∀ n, P6138689990454163228.a n = A353036 (n + 1)

end A353036

/-! ## A353036.P9019564013480045092

`record[A030101(n+1)+n]`
-/

namespace A353036.P9019564013480045092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353036.P9019564013480045092

namespace A353036

/-- `record[A030101(n+1)+n]` -/
def P9019564013480045092.Spec : Prop :=
  ∀ n, P9019564013480045092.a n = A353036 (n + 1)

end A353036

/-! ## A353036.P7929406302659049959

`A119435(A353037(n+1))`
-/

namespace A353036.P7929406302659049959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119435 (A353037 (n + 1)).toNat

end

end A353036.P7929406302659049959

namespace A353036

/-- `A119435(A353037(n+1))` -/
def P7929406302659049959.Spec : Prop :=
  ∀ n, P7929406302659049959.a n = A353036 (n + 1)

end A353036

/-! ## A353036.P17125916893796529243

`record[A124625(n)+A030101(n)]`
-/

namespace A353036.P17125916893796529243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n + A030101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353036.P17125916893796529243

namespace A353036

/-- `record[A124625(n)+A030101(n)]` -/
def P17125916893796529243.Spec : Prop :=
  ∀ n, P17125916893796529243.a n = A353036 (n + 1)

end A353036

/-! ## A353036.P11737566226905290168

`record[A281589(2*(n+1))+n]`
-/

namespace A353036.P11737566226905290168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353036.P11737566226905290168

namespace A353036

/-- `record[A281589(2*(n+1))+n]` -/
def P11737566226905290168.Spec : Prop :=
  ∀ n, P11737566226905290168.a n = A353036 (n + 1)

end A353036

/-! ## A353036.P12137865439496088390

`record[A325401(2*(n+1))+n]`
-/

namespace A353036.P12137865439496088390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353036.P12137865439496088390

namespace A353036

/-- `record[A325401(2*(n+1))+n]` -/
def P12137865439496088390.Spec : Prop :=
  ∀ n, P12137865439496088390.a n = A353036 (n + 1)

end A353036

/-!
# A353037: Positions of records in A119435.

The programs for A353037, there is no canonical definition to state claims against.
-/

/-! ## A353037.P10275681453437845841

`A119436(A353036(n+1))`
-/

namespace A353037.P10275681453437845841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119436 (A353036 (n + 1)).toNat

end

end A353037.P10275681453437845841

/-! ## A353037.P7923876733175987418

`A119436(record[A119435(n+1)])`
-/

namespace A353037.P7923876733175987418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119436 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353037.P7923876733175987418

/-! ## A353037.P15101930964321362314

`A119436(record[A055944(n+1)-1])`
-/

namespace A353037.P15101930964321362314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119436 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353037.P15101930964321362314

/-! ## A353037.P117270112290349901

`A119436(record[A331633(n+2)-1])`
-/

namespace A353037.P117270112290349901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331633 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119436 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353037.P117270112290349901

/-! ## A353037.P115709961501820471

`A119436(record[A030101(n+1)+n])`
-/

namespace A353037.P115709961501820471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119436 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353037.P115709961501820471

/-! ## A353037.P7084467342862280362

`A119436(record[A281589(2*(n+1))+n])`
-/

namespace A353037.P7084467342862280362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119436 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A353037.P7084467342862280362

/-!
# A353039: Unitary arithmetic numbers k whose mean unitary divisor is a unitary divisor of k.

The programs for A353039, there is no canonical definition to state claims against.
-/

/-! ## A353039.P5974834359330709281

`filter[A361387(n+1), A030190(#)]`
-/

namespace A353039.P5974834359330709281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030190 (f1 j).toNat = 1) n)

end

end A353039.P5974834359330709281

/-! ## A353039.P18222595590258898364

`filter[A361387(n+1), A030302(#)]`
-/

namespace A353039.P18222595590258898364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030302 (f1 j).toNat = 1) n)

end

end A353039.P18222595590258898364

/-! ## A353039.P12290749147999740318

`filter[A361387(n+1), A039963(#)]`
-/

namespace A353039.P12290749147999740318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039963 (f1 j).toNat = 1) n)

end

end A353039.P12290749147999740318

/-!
# A353040: Unitary harmonic numbers (A006086) with a record number of unitary divisors.

The programs for A353040, there is no canonical definition to state claims against.
-/

/-! ## A353040.P16513515844247311542

`A353039(A361396(n+1)%A033650(n))`
-/

namespace A353040.P16513515844247311542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353039 (Int.tmod (A361396 (n + 1)) (A033650 n)).toNat

end

end A353040.P16513515844247311542

/-!
# A353041: G.f. A(x) satisfies: A(x) = 1 + x * A(3*x/(1 + 2*x)) / (1 - x).

The programs for A353041, there is no canonical definition to state claims against.
-/

/-! ## A353041.P6420159286045982616

`floor(∑{d}[A208184(n), sqrt(#)])`
-/

namespace A353041.P6420159286045982616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n).natAbs, Real.sqrt (d : ℝ)⌋

end

end A353041.P6420159286045982616

/-!
# A353042: G.f. A(x) satisfies: A(x) = 1 + x * A(4*x/(1 + 3*x)) / (1 - x).

The programs for A353042, there is no canonical definition to state claims against.
-/

/-! ## A353042.P7283293893647516264

`abs(A227758(A266527(n)))`
-/

namespace A353042.P7283293893647516264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A227758 (A266527 n).toNat|

end

end A353042.P7283293893647516264

/-!
# A353043: a(n) is the smallest number whose name in Bengali has n letters, or -1 if no such word exists.

The programs for A353043, there is no canonical definition to state claims against.
-/

/-! ## A353043.P7545939564795970216

`A007088(A007046(n+3))%A090570(A003173(n+4))`
-/

namespace A353043.P7545939564795970216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 (A007046 (n + 3)).toNat) (A090570 (A003173 (n + 4)).toNat)

end

end A353043.P7545939564795970216

/-!
# A353044: a(n) is the minimal sum of squares over partitions of n with a nonnegative rank.

The programs for A353044, there is no canonical definition to state claims against.
-/

/-! ## A353044.P1045072428651064935

`∑[A182850(∑[A160118(2*(n+2))])]`
-/

namespace A353044.P1045072428651064935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160118 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353044.P1045072428651064935

/-! ## A353044.P14808230845007900933

`∑[A072219(p?[A008315(n)])]`
-/

namespace A353044.P14808230845007900933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353044.P14808230845007900933

/-! ## A353044.P10792875357350513373

`∑[A072219(p?[A037012(n)])]`
-/

namespace A353044.P10792875357350513373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353044.P10792875357350513373

/-! ## A353044.P6249160183578455881

`∑[A072219(p?[A052173(n)])]`
-/

namespace A353044.P6249160183578455881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052173 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353044.P6249160183578455881

/-! ## A353044.P146041124931072958

`∑[A072219(p?[A080233(n)])]`
-/

namespace A353044.P146041124931072958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353044.P146041124931072958

/-!
# A353047: Number of length n words on alphabet {0,1,2} that contain each of the subwords 01, 02, 10, 12, 20, and 21 as (not necessarily contiguous) subwords.

The programs for A353047, there is no canonical definition to state claims against.
-/

/-! ## A353047.P3903925410990435079

`2*∑[∑[lcm(2, 3*A349140(2^(n+1)))]]`
-/

namespace A353047.P3903925410990435079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (3 * A349140 (2 ^ (n + 1)))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A353047.P3903925410990435079

/-!
# A353048: a(n) = (number of primes p in the first n primes such that 2*p+1 is also prime) - (number of primes p in the first n primes such that 2*p-1 is also prime).

The programs for A353048, there is no canonical definition to state claims against.
-/

/-! ## A353048.P3995219288205291267

`∑[A173950(n+1)%A263879(n+1)]`
-/

namespace A353048.P3995219288205291267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173950 (n + 1)) (A263879 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353048.P3995219288205291267

/-! ## A353048.P6769961633985551015

`A196049(A379309(3*n+4)+A237593(n+1)+n)`
-/

namespace A353048.P6769961633985551015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196049 (A379309 (3 * n + 4) + A237593 (n + 1) + (n : ℤ)).toNat

end

end A353048.P6769961633985551015

/-! ## A353048.P15545910962520023980

`A084558(∑{e}[2^n, A308073(#)]%A137735(n))`
-/

namespace A353048.P15545910962520023980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (Int.tmod (∑ p ∈ Nat.primeFactors (f1 n), A308073 (Nat.factorization (f1 n) p)) (A137735 n)).toNat

end

end A353048.P15545910962520023980

/-! ## A353048.P8436580522272502460

`A319906(n+1)%A319856(A319856(n+4))`
-/

namespace A353048.P8436580522272502460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319906 (n + 1)) (A319856 (A319856 (n + 4)).toNat)

end

end A353048.P8436580522272502460

/-! ## A353048.P7990217267259771213

`A124761(lt[A124765(3*n)², A066099(n+1)])`
-/

namespace A353048.P7990217267259771213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (3 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353048.P7990217267259771213

/-!
# A353051: Starting with x = n and repeatedly apply the map x -> x - sopfr(x) until 0, 1 or a prime is reached.

The programs for A353051, there is no canonical definition to state claims against.
-/

/-! ## A353051.P12693867670859816119

`n+1-A032741(∑{e}[n+1, #]^∑{p}[n+1, #*val(n+1, #)])`
-/

namespace A353051.P12693867670859816119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A032741 ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ (∑ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p))

end

end A353051.P12693867670859816119

/-! ## A353051.P1261915769252385906

`(n+1)%A063655(A187829(n+1))`
-/

namespace A353051.P1261915769252385906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A063655 (A187829 (n + 1)).toNat)

end

end A353051.P1261915769252385906

/-! ## A353051.P15289190617754453863

`A321318(2^n)%(1-A220114(n+1)+n)`
-/

namespace A353051.P15289190617754453863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321318 (2 ^ n)) (1 - A220114 (n + 1) + (n : ℤ))

end

end A353051.P15289190617754453863

/-! ## A353051.P13332550336601557934

`A003967(A000079(n))-A352167(n+1)`
-/

namespace A353051.P13332550336601557934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (A000079 n).toNat - A352167 (n + 1)

end

end A353051.P13332550336601557934

/-! ## A353051.P11623737049421225910

`A001222(A020714(n))-A352167(n+1)`
-/

namespace A353051.P11623737049421225910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020714 n).toNat - A352167 (n + 1)

end

end A353051.P11623737049421225910

/-!
# A353052: Number of inequivalent {-1,1} matrices of order n, up to permutation of rows and/or columns, multiplication of rows and/or columns by -1, and transposition.

The programs for A353052, there is no canonical definition to state claims against.
-/

/-! ## A353052.P10440679283982126722

`A114107(A387693(n))`
-/

namespace A353052.P10440679283982126722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114107 (A387693 n).toNat

end

end A353052.P10440679283982126722

/-! ## A353052.P10429344944548000462

`∑[A360297(A352864(n))]`
-/

namespace A353052.P10429344944548000462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360297 (A352864 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353052.P10429344944548000462

/-!
# A353056: Composite numbers of the form k^2+k+1 all of whose prime factors are of that same form.

The programs for A353056, there is no canonical definition to state claims against.
-/

/-! ## A353056.P4418270394681858326

`A002061(C(A051351(n+2), A283819(n+1)))`
-/

namespace A353056.P4418270394681858326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (Nat.choose (A051351 (n + 2)).toNat (A283819 (n + 1)).toNat)

end

end A353056.P4418270394681858326

/-!
# A353058: Minimum number of iterations {add or subtract 1, or half if even} needed to reach 1, starting from n.

The programs for A353058, there is no canonical definition to state claims against.
-/

/-! ## A353058.P13802576303747066289

`A061339(n+1)-1`
-/

namespace A353058.P13802576303747066289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061339 (n + 1) - 1

end

end A353058.P13802576303747066289

/-! ## A353058.P5112230289428655989

`Δ[∑[A061339(n)]-n]`
-/

namespace A353058.P5112230289428655989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061339 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A353058.P5112230289428655989

/-! ## A353058.P17109735288442853004

`A023444(A061339(n+1)+1)`
-/

namespace A353058.P17109735288442853004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A061339 (n + 1) + 1).toNat

end

end A353058.P17109735288442853004

/-! ## A353058.P16193870670877905881

`∑[Δ[A061339(n)]%A000124(n)]`
-/

namespace A353058.P16193870670877905881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061339 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353058.P16193870670877905881

/-! ## A353058.P1452010149725692344

`A153881(n+2)+A061339(n+1)`
-/

namespace A353058.P1452010149725692344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A061339 (n + 1)

end

end A353058.P1452010149725692344

/-!
# A353061: Zumkeller numbers (A083207) that are not practical numbers (A005153).

The programs for A353061, there is no canonical definition to state claims against.
-/

/-! ## A353061.P5467134006585422702

`∩[A083207(n+1), A237287(n+1)]`
-/

namespace A353061.P5467134006585422702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353061.P5467134006585422702

/-!
# A353062: Non-prime-powers k such that sigma(k^2) is divisible by d(k^2), where d = A000005, sigma = A000203; non-prime-powers k such that k^2 is in A003601.

The programs for A353062, there is no canonical definition to state claims against.
-/

/-! ## A353062.P18229890012746310197

`record[A048671(sqrt(A277793(n+1)))]`
-/

namespace A353062.P18229890012746310197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (SequenceMachineLib.roundAway (Real.sqrt (A277793 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353062.P18229890012746310197

/-! ## A353062.P478377504009825816

`filter[A155109(n+1), A319691(#)]`
-/

namespace A353062.P478377504009825816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A353062.P478377504009825816

/-!
# A353065: Euler transform of odd primes.

The programs for A353065, there is no canonical definition to state claims against.
-/

/-! ## A353065.P309551639271061491

`A023193(A134415(n)-n)`
-/

namespace A353065.P309551639271061491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A134415 n - (n : ℤ)).toNat

end

end A353065.P309551639271061491

/-! ## A353065.P8649037299094905471

`∑[∑[A136272(A034691(n))]]`
-/

namespace A353065.P8649037299094905471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136272 (A034691 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353065.P8649037299094905471

/-!
# A353067: a(n) is the number of free polyominoes of width 3 and size n.

The programs for A353067, there is no canonical definition to state claims against.
-/

/-! ## A353067.P1081373174086528162

`A320355(2*n+1)-char[∏{p}[n, #]]`
-/

namespace A353067.P1081373174086528162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320355 (2 * n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A353067.P1081373174086528162

/-! ## A353067.P7803779606061349974

`A381063(A278666(n))`
-/

namespace A353067.P7803779606061349974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381063 (A278666 n).toNat

end

end A353067.P7803779606061349974

/-!
# A353068: Irregular triangle read by rows: T(n,k) = n - multiplicity of prime(k) as a divisor of n!.

The programs for A353068, there is no canonical definition to state claims against.
-/

/-! ## A353068.P15704494172068807240

`A249728(n+2)-A115627(n+2)`
-/

namespace A353068.P15704494172068807240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (n + 2) - A115627 (n + 2)

end

end A353068.P15704494172068807240

/-! ## A353068.P12092532212954247563

`A280134(A045832(n+1)+A004770(n+1))`
-/

namespace A353068.P12092532212954247563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280134 (A045832 (n + 1) + A004770 (n + 1)).toNat

end

end A353068.P12092532212954247563

/-! ## A353068.P16247924252437580893

`A280134(or(A004770(n+1), A303362(n+3)))`
-/

namespace A353068.P16247924252437580893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280134 (Int.lor (A004770 (n + 1)) (A303362 (n + 3))).toNat

end

end A353068.P16247924252437580893

/-! ## A353068.P3513791004475449424

`A001222(A372028(n+1)+A002605(n))`
-/

namespace A353068.P3513791004475449424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A372028 (n + 1) + A002605 n).toNat

end

end A353068.P3513791004475449424

/-! ## A353068.P10222894972729035362

`A001222(A285160(n+1)+A122889(n+1))`
-/

namespace A353068.P10222894972729035362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A285160 (n + 1) + A122889 (n + 1)).toNat

end

end A353068.P10222894972729035362

/-!
# A353072: Numbers k such that nextprime(k)-k is a positive square.

The programs for A353072, there is no canonical definition to state claims against.
-/

/-! ## A353072.P13452158161324345212

`eq[1, A078739(A151800(n)-n)]`
-/

namespace A353072.P13452158161324345212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078739 (A151800 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353072.P13452158161324345212

/-! ## A353072.P1256551565390260327

`eq[1, A078740(A151800(n)-n)]`
-/

namespace A353072.P1256551565390260327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078740 (A151800 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353072.P1256551565390260327

/-! ## A353072.P2957502957581846035

`eq[0, A068527(A013632(n))]`
-/

namespace A353072.P2957502957581846035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A013632 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353072.P2957502957581846035

/-! ## A353072.P5599918745608963677

`eq[A000038(n), A193347(A013632(n))]`
-/

namespace A353072.P5599918745608963677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193347 (A013632 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353072.P5599918745608963677

/-! ## A353072.P171437477604314350

`record[A005145(n+1)-A055461(n+1)]`
-/

namespace A353072.P171437477604314350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) - A055461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353072.P171437477604314350

/-! ## A353072.P7172311470361885997

`eq[1, A332602(A100802(2*n+1))]`
-/

namespace A353072.P7172311470361885997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332602 (A100802 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353072.P7172311470361885997

/-!
# A353073: Numbers that differ from their prime neighbors by a square.

The programs for A353073, there is no canonical definition to state claims against.
-/

/-! ## A353073.P5861478066921504361

`∩[A056853(n+1), A247423(n+1)]`
-/

namespace A353073.P5861478066921504361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353073.P5861478066921504361

/-! ## A353073.P4078773198035967579

`eq[A166597(n), A345994(A129597(n+1))]`
-/

namespace A353073.P4078773198035967579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345994 (A129597 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353073.P4078773198035967579

/-! ## A353073.P15173755064003684555

`∩[A056853(n+1), A175071(n+1)]`
-/

namespace A353073.P15173755064003684555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353073.P15173755064003684555

/-! ## A353073.P7521998588402246701

`∩[A056853(n+1), A175074(n+1)]`
-/

namespace A353073.P7521998588402246701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353073.P7521998588402246701

/-!
# A353074: Numbers that differ from their prime neighbors by distinct squares.

The programs for A353074, there is no canonical definition to state claims against.
-/

/-! ## A353074.P8747936454510977886

`A270310(n+1)+A033999(A024637(n))`
-/

namespace A353074.P8747936454510977886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270310 (n + 1) + A033999 (A024637 n).toNat

end

end A353074.P8747936454510977886

/-! ## A353074.P9220953731992913634

`A270310(n+1)+A033999(A255185(n))`
-/

namespace A353074.P9220953731992913634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270310 (n + 1) + A033999 (A255185 n).toNat

end

end A353074.P9220953731992913634

/-! ## A353074.P3346940872286180889

`A270310(n+1)+A244895(A032810(n+1))`
-/

namespace A353074.P3346940872286180889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270310 (n + 1) + A244895 (A032810 (n + 1)).toNat

end

end A353074.P3346940872286180889

/-! ## A353074.P10361968308623929651

`A270310(n+1)+A057077(A268754(n+1))`
-/

namespace A353074.P10361968308623929651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270310 (n + 1) + A057077 (A268754 (n + 1)).toNat

end

end A353074.P10361968308623929651

/-! ## A353074.P9983817467178350817

`A270310(n+1)+A033999(A064761(n))`
-/

namespace A353074.P9983817467178350817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270310 (n + 1) + A033999 (A064761 n).toNat

end

end A353074.P9983817467178350817

/-!
# A353076: Odd positive integers k such that sigma(k) > exp(gamma) * k * log(log(k))/2.

The programs for A353076, there is no canonical definition to state claims against.
-/

/-! ## A353076.P9874140546807727443

`lt[A146611(A141256(n)), A093178(n)]`
-/

namespace A353076.P9874140546807727443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146611 (A141256 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353076.P9874140546807727443

/-! ## A353076.P12464947643130775301

`lt[A276625(n+5), -A133690(n)]`
-/

namespace A353076.P12464947643130775301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A133690 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353076.P12464947643130775301

/-! ## A353076.P11379686963111055851

`lt[A342522(n+1), A049988(lcm(2, n))]`
-/

namespace A353076.P11379686963111055851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (Nat.lcm 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353076.P11379686963111055851

/-! ## A353076.P17293858490951291152

`lt[A052224(A093413(n+2)), A000118(2*n)]`
-/

namespace A353076.P17293858490951291152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (A093413 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353076.P17293858490951291152

/-! ## A353076.P8615552731004064722

`lt[A168322(n+1), ∑{d}[n+1, (n+1)*#%2]]+1`
-/

namespace A353076.P8615552731004064722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168322 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (n + 1) * (d % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A353076.P8615552731004064722

/-!
# A353077: Triangle read by rows, where the n-th row consists of the lexicographically earliest solution for n integers in 0..p-1 whose n*(n-1) differences are congruent to 1..p-1 (mod p), where p=n*(n-1)+1. If no solution exists, the n-th row consists of n -1's.

The programs for A353077, there is no canonical definition to state claims against.
-/

/-! ## A353077.P179718521727856119

`A108611(5*A079520(n))`
-/

namespace A353077.P179718521727856119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (5 * A079520 n).toNat

end

end A353077.P179718521727856119

/-! ## A353077.P6133447985211563578

`A105564(A208918(n+1)+1)`
-/

namespace A353077.P6133447985211563578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105564 (A208918 (n + 1) + 1).toNat

end

end A353077.P6133447985211563578

/-! ## A353077.P13644437422118157750

`A086707(or(1, A140894(n+1)))`
-/

namespace A353077.P13644437422118157750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086707 (Int.lor 1 (A140894 (n + 1))).toNat

end

end A353077.P13644437422118157750

/-! ## A353077.P17972400485203725536

`A108611(A208918(n+1)+A096179(n+1))`
-/

namespace A353077.P17972400485203725536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A208918 (n + 1) + A096179 (n + 1)).toNat

end

end A353077.P17972400485203725536

/-! ## A353077.P4892473161078120501

`A329585(A266183(n+1))`
-/

namespace A353077.P4892473161078120501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329585 (A266183 (n + 1)).toNat

end

end A353077.P4892473161078120501

/-!
# A353078: Inverse Moebius transform of odd primes.

The programs for A353078, the canonical program `A353078.P2808149922824200265` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353078 has offset 1).

The definition of A353078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353078.P2808149922824200265

`∑{d}[n+1, A065091(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A353078

/-- `∑{d}[n+1, A065091(#)]` -/
def P2808149922824200265.Spec : Prop :=
  ∀ n, P2808149922824200265.a n = A353078 (n + 1)

theorem P2808149922824200265.correct : P2808149922824200265.Spec := by
  intro n
  simp only [A353078, Nat.add_sub_cancel]

end A353078

/-! ## A353078.P3006633186369045792

`∑{d}[n+1, A000005(#)*A352915((n+1)/#)]`
-/

namespace A353078.P3006633186369045792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A352915 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353078.P3006633186369045792

namespace A353078

/-- `∑{d}[n+1, A000005(#)*A352915((n+1)/#)]` -/
def P3006633186369045792.Spec : Prop :=
  ∀ n, P3006633186369045792.a n = A353078 (n + 1)

end A353078

/-! ## A353078.P7937938695635798735

`∑{d}[n+1, A000040(#+1)]`
-/

namespace A353078.P7937938695635798735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000040 (d + 1)

end

end A353078.P7937938695635798735

namespace A353078

/-- `∑{d}[n+1, A000040(#+1)]` -/
def P7937938695635798735.Spec : Prop :=
  ∀ n, P7937938695635798735.a n = A353078 (n + 1)

end A353078

/-! ## A353078.P16292746338581406986

`∑{d}[n+1, A006005(#+1)]`
-/

namespace A353078.P16292746338581406986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006005 (d + 1)

end

end A353078.P16292746338581406986

namespace A353078

/-- `∑{d}[n+1, A006005(#+1)]` -/
def P16292746338581406986.Spec : Prop :=
  ∀ n, P16292746338581406986.a n = A353078 (n + 1)

end A353078

/-! ## A353078.P11491114481776321156

`∑{d}[n+1, A006093(#+1)+1]`
-/

namespace A353078.P11491114481776321156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A006093 (d + 1) + 1)

end

end A353078.P11491114481776321156

namespace A353078

/-- `∑{d}[n+1, A006093(#+1)+1]` -/
def P11491114481776321156.Spec : Prop :=
  ∀ n, P11491114481776321156.a n = A353078 (n + 1)

end A353078

/-! ## A353078.P3146570799021448521

`∑{d}[n+1, A008578(#+2)]`
-/

namespace A353078.P3146570799021448521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008578 (d + 2)

end

end A353078.P3146570799021448521

namespace A353078

/-- `∑{d}[n+1, A008578(#+2)]` -/
def P3146570799021448521.Spec : Prop :=
  ∀ n, P3146570799021448521.a n = A353078 (n + 1)

end A353078

/-! ## A353078.P8763051154307712968

`∑{d}[n+1, A158611(#+3)]`
-/

namespace A353078.P8763051154307712968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158611 (d + 3)

end

end A353078.P8763051154307712968

namespace A353078

/-- `∑{d}[n+1, A158611(#+3)]` -/
def P8763051154307712968.Spec : Prop :=
  ∀ n, P8763051154307712968.a n = A353078 (n + 1)

end A353078

/-!
# A353079: Exponential transform of odd primes.

The programs for A353079, there is no canonical definition to state claims against.
-/

/-! ## A353079.P548239422901990234

`A321681(Δ[n²])+∑[∑{e}[n, #]]`
-/

namespace A353079.P548239422901990234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321681 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A353079.P548239422901990234

/-!
# A353082: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest positive number that has not appeared that is a divisor of (a(n-1) + a(n-2))*|a(n-1) - a(n-2)|.

The programs for A353082, there is no canonical definition to state claims against.
-/

/-! ## A353082.P11988471869684940231

`A349493(n+1)+A241468(A224815(n))`
-/

namespace A353082.P11988471869684940231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349493 (n + 1) + A241468 (A224815 n).toNat

end

end A353082.P11988471869684940231

/-!
# A353083: The second column of the Trithoff (tribonacci) array.

The programs for A353083, there is no canonical definition to state claims against.
-/

/-! ## A353083.P1373486523583302820

`eq[2, A278038(n)%4]`
-/

namespace A353083.P1373486523583302820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278038 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353083.P1373486523583302820

/-! ## A353083.P16199835621762077065

`lt[0, xor(1, A317950(n))]`
-/

namespace A353083.P16199835621762077065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A317950 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A353083.P16199835621762077065

/-! ## A353083.P4537780382616584566

`eq[ceil(acot(n)), A278045(n)]`
-/

namespace A353083.P4537780382616584566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353083.P4537780382616584566

/-! ## A353083.P14424013843846245645

`comp[A317193(n+1)+n]`
-/

namespace A353083.P14424013843846245645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317193 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A353083.P14424013843846245645

/-! ## A353083.P8054082567214286962

`eq[1, A278045(n+1)]+1`
-/

namespace A353083.P8054082567214286962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278045 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A353083.P8054082567214286962

/-! ## A353083.P14128388372525147567

`eq[2, A275392(n+1)]+1`
-/

namespace A353083.P14128388372525147567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275392 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A353083.P14128388372525147567

/-! ## A353083.P13268367565024804371

`eq[3, A319431(n+1)]+1`
-/

namespace A353083.P13268367565024804371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319431 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A353083.P13268367565024804371

/-! ## A353083.P1943765021619530806

`eq[2, A003726(n+1)%4]`
-/

namespace A353083.P1943765021619530806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003726 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353083.P1943765021619530806

/-! ## A353083.P1587908531655158504

`A278039(comp[A278039(n)])`
-/

namespace A353083.P1587908531655158504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A353083.P1587908531655158504

/-!
# A353084: Column 0 of the extended Trithoff (tribonacci) array.

The programs for A353084, the canonical program `A353084.P13564049963541245376` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353084 has offset 1).

The definition of A353084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353084.P1533873365656656635

`lt[2, A305374(n)]`
-/

namespace A353084.P1533873365656656635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305374 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A353084.P1533873365656656635

namespace A353084

/-- `lt[2, A305374(n)]` -/
def P1533873365656656635.Spec : Prop :=
  ∀ n, (P1533873365656656635.a n : ℤ) = A353084 (n + 1)

end A353084

/-! ## A353084.P1142506834692222115

`comp[A278041(n)]+1`
-/

namespace A353084.P1142506834692222115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A353084.P1142506834692222115

namespace A353084

/-- `comp[A278041(n)]+1` -/
def P1142506834692222115.Spec : Prop :=
  ∀ n, (P1142506834692222115.a n : ℤ) = A353084 (n + 1)

end A353084

/-! ## A353084.P10076408220281993758

`comp[A305373(n)+n]`
-/

namespace A353084.P10076408220281993758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305373 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A353084.P10076408220281993758

namespace A353084

/-- `comp[A305373(n)+n]` -/
def P10076408220281993758.Spec : Prop :=
  ∀ n, (P10076408220281993758.a n : ℤ) = A353084 (n + 1)

end A353084

/-! ## A353084.P11412655195309946884

`comp[A278039(n)]-n`
-/

namespace A353084.P11412655195309946884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A353084.P11412655195309946884

namespace A353084

/-- `comp[A278039(n)]-n` -/
def P11412655195309946884.Spec : Prop :=
  ∀ n, P11412655195309946884.a n = A353084 (n + 1)

end A353084

/-! ## A353084.P15431858878727655961

`A385455(n+2)+1`
-/

namespace A353084.P15431858878727655961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385455 (n + 2) + 1

end

end A353084.P15431858878727655961

namespace A353084

/-- `A385455(n+2)+1` -/
def P15431858878727655961.Spec : Prop :=
  ∀ n, P15431858878727655961.a n = A353084 (n + 1)

end A353084

/-! ## A353084.P13564049963541245376

`A003265(n+1)-n`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A353084

/-- `A003265(n+1)-n` -/
def P13564049963541245376.Spec : Prop :=
  ∀ n, P13564049963541245376.a n = A353084 (n + 1)

theorem P13564049963541245376.correct : P13564049963541245376.Spec := by
  intro n
  simp only [A353084, Nat.add_sub_cancel]

end A353084

/-! ## A353084.P14792785636825069183

`A351631(n+2)-(n+1)`
-/

namespace A353084.P14792785636825069183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351631 (n + 2) - (n + 1 : ℤ)

end

end A353084.P14792785636825069183

namespace A353084

/-- `A351631(n+2)-(n+1)` -/
def P14792785636825069183.Spec : Prop :=
  ∀ n, P14792785636825069183.a n = A353084 (n + 1)

end A353084

/-! ## A353084.P6389999039850353126

`∪[A003144(n+1), A003145(n+1)]`
-/

namespace A353084.P6389999039850353126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353084.P6389999039850353126

namespace A353084

/-- `∪[A003144(n+1), A003145(n+1)]` -/
def P6389999039850353126.Spec : Prop :=
  ∀ n, (P6389999039850353126.a n : ℤ) = A353084 (n + 1)

end A353084

/-! ## A353084.P626144484209089740

`eq[0, A276791(n)]`
-/

namespace A353084.P626144484209089740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353084.P626144484209089740

namespace A353084

/-- `eq[0, A276791(n)]` -/
def P626144484209089740.Spec : Prop :=
  ∀ n, (P626144484209089740.a n : ℤ) = A353084 (n + 1)

end A353084

/-! ## A353084.P3053708169093555894

`lt[0, A276790(n)]`
-/

namespace A353084.P3053708169093555894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276790 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A353084.P3053708169093555894

namespace A353084

/-- `lt[0, A276790(n)]` -/
def P3053708169093555894.Spec : Prop :=
  ∀ n, (P3053708169093555894.a n : ℤ) = A353084 (n + 1)

end A353084

/-! ## A353084.P7229277110586592555

`eq[A122553(n), A305374(n)]`
-/

namespace A353084.P7229277110586592555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305374 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353084.P7229277110586592555

namespace A353084

/-- `eq[A122553(n), A305374(n)]` -/
def P7229277110586592555.Spec : Prop :=
  ∀ n, (P7229277110586592555.a n : ℤ) = A353084 (n + 1)

end A353084

/-! ## A353084.P16547932767262307430

`A276796(A003265(n+1))`
-/

namespace A353084.P16547932767262307430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A003265 (n + 1)).toNat

end

end A353084.P16547932767262307430

namespace A353084

/-- `A276796(A003265(n+1))` -/
def P16547932767262307430.Spec : Prop :=
  ∀ n, P16547932767262307430.a n = A353084 (n + 1)

end A353084

/-! ## A353084.P3989590736932236689

`A276796(A351631(n+2))`
-/

namespace A353084.P3989590736932236689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A351631 (n + 2)).toNat

end

end A353084.P3989590736932236689

namespace A353084

/-- `A276796(A351631(n+2))` -/
def P3989590736932236689.Spec : Prop :=
  ∀ n, P3989590736932236689.a n = A353084 (n + 1)

end A353084

/-! ## A353084.P14437296053799557587

`A276796(A276383(n+1))`
-/

namespace A353084.P14437296053799557587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A276383 (n + 1)).toNat

end

end A353084.P14437296053799557587

namespace A353084

/-- `A276796(A276383(n+1))` -/
def P14437296053799557587.Spec : Prop :=
  ∀ n, P14437296053799557587.a n = A353084 (n + 1)

end A353084

/-!
# A353085: a(n) = nextprime(A138198(n-1)). Largest of a pair of consecutive primes whose prime gap is the first occurrence of n^2 or -1 if such a gap never occurs.

The programs for A353085, there is no canonical definition to state claims against.
-/

/-! ## A353085.P9684948931392340045

`A151800(A138198(n))`
-/

namespace A353085.P9684948931392340045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A138198 n).toNat

end

end A353085.P9684948931392340045

/-! ## A353085.P11585240543704987101

`A138198(n)+A004277(n)²`
-/

namespace A353085.P11585240543704987101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138198 n + A004277 n ^ 2

end

end A353085.P11585240543704987101

/-! ## A353085.P12599049191512768079

`A138198(n)+A008574(n²)`
-/

namespace A353085.P12599049191512768079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138198 n + A008574 (n ^ 2)

end

end A353085.P12599049191512768079

/-! ## A353085.P8663691325953140134

`A000230(2*n²)+A004277(n)²`
-/

namespace A353085.P8663691325953140134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (2 * n ^ 2) + A004277 n ^ 2

end

end A353085.P8663691325953140134

/-! ## A353085.P7942012180743178637

`A138198(n)+A013632(A000230(n))²`
-/

namespace A353085.P7942012180743178637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138198 n + A013632 (A000230 n).toNat ^ 2

end

end A353085.P7942012180743178637

/-!
# A353086: Column -1 of the extended Trithoff (Tribonacci) array.

The programs for A353086, there is no canonical definition to state claims against.
-/

/-! ## A353086.P6646126990378721525

`n-round(floor(n*sqrt(10))/9)`
-/

namespace A353086.P6646126990378721525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway ((⌊(n : ℝ) * Real.sqrt (10 : ℝ)⌋ : ℚ) / 9)

end

end A353086.P6646126990378721525

/-! ## A353086.P14807378561916883189

`round(log(Δ[A188765(n)]))`
-/

namespace A353086.P14807378561916883189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (f1 (n + 1) - f1 n : ℝ))

end

end A353086.P14807378561916883189

/-! ## A353086.P11409222247878113180

`∑[char[comp[A140101(n)]]]`
-/

namespace A353086.P11409222247878113180
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353086.P11409222247878113180

/-! ## A353086.P11323104677295732874

`floor(comp[A312927(n)]/2)`
-/

namespace A353086.P11323104677295732874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312927 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌋

end

end A353086.P11323104677295732874

/-! ## A353086.P14818054375028667041

`∑[char[A140100(n+1)]]`
-/

namespace A353086.P14818054375028667041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353086.P14818054375028667041

/-! ## A353086.P10587648763301151468

`round(A314492(2*n)/14)`
-/

namespace A353086.P10587648763301151468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A314492 (2 * n) : ℚ) / 14)

end

end A353086.P10587648763301151468

/-! ## A353086.P3803381127678799822

`round(A313845(2*n)/16)`
-/

namespace A353086.P3803381127678799822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A313845 (2 * n) : ℚ) / 16)

end

end A353086.P3803381127678799822

/-! ## A353086.P11481859621968627827

`round(n-A172337(n)/17)`
-/

namespace A353086.P11481859621968627827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) - (A172337 n : ℚ) / 17)

end

end A353086.P11481859621968627827

/-! ## A353086.P5540330215699618169

`floor(∑[A091799(n+1)]/5)`
-/

namespace A353086.P5540330215699618169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5⌋

end

end A353086.P5540330215699618169

/-! ## A353086.P11223527433200282915

`∑[6%p?[A275925(n+1)]]`
-/

namespace A353086.P11223527433200282915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275925 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 6 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353086.P11223527433200282915

/-!
# A353088: Primes having square prime gaps to both neighbor primes.

The programs for A353088, there is no canonical definition to state claims against.
-/

/-! ## A353088.P17701966679768287101

`A151800(A161002(n+1))`
-/

namespace A353088.P17701966679768287101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A161002 (n + 1)).toNat

end

end A353088.P17701966679768287101

/-!
# A353089: Least number which differs from both of its prime neighbors by n^2, and -1 if no such number exists.

The programs for A353089, there is no canonical definition to state claims against.
-/

/-! ## A353089.P11341066972896397891

`A282690((n+1)²)`
-/

namespace A353089.P11341066972896397891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282690 ((n + 1) ^ 2)

end

end A353089.P11341066972896397891

/-! ## A353089.P17831264844185360923

`A114294(n)*A282690(A000290(n+1))`
-/

namespace A353089.P17831264844185360923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114294 n * A282690 (A000290 (n + 1)).toNat

end

end A353089.P17831264844185360923

/-! ## A353089.P2765653275335632322

`A111704(n+1)+A000230(A111704(n+1))`
-/

namespace A353089.P2765653275335632322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111704 (n + 1) + A000230 (A111704 (n + 1)).toNat

end

end A353089.P2765653275335632322

/-! ## A353089.P17712743232605185363

`A087378((n+1)²)`
-/

namespace A353089.P17712743232605185363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087378 ((n + 1) ^ 2)

end

end A353089.P17712743232605185363

/-!
# A353090: Column -2 of the extended Trithoff (tribonacci) array.

The programs for A353090, there is no canonical definition to state claims against.
-/

/-! ## A353090.P53931717766089173

`round(floor(n*sqrt(10))/9)`
-/

namespace A353090.P53931717766089173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((⌊(n : ℝ) * Real.sqrt (10 : ℝ)⌋ : ℚ) / 9)

end

end A353090.P53931717766089173

/-! ## A353090.P2573756049730395077

`floor((n*acot(1)+1)/sqrt(5))`
-/

namespace A353090.P2573756049730395077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℝ) * SequenceMachineLib.acot (1 : ℝ) + 1) / Real.sqrt (5 : ℝ)⌋

end

end A353090.P2573756049730395077

/-! ## A353090.P10805197963989431463

`∑[char[∑[A305374(n)]]]`
-/

namespace A353090.P10805197963989431463
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305374 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353090.P10805197963989431463

/-! ## A353090.P1458622094908575425

`A385533(n+1)+1`
-/

namespace A353090.P1458622094908575425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385533 (n + 1) + 1

end

end A353090.P1458622094908575425

/-! ## A353090.P2610672122027178824

`n-A353086(n+1)`
-/

namespace A353090.P2610672122027178824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A353086 (n + 1)

end

end A353090.P2610672122027178824

/-! ## A353090.P11596226245201543966

`∑[char[A140101(n+1)]]`
-/

namespace A353090.P11596226245201543966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353090.P11596226245201543966

/-! ## A353090.P3639562324667654314

`∑[char[A140101(n)]]-1`
-/

namespace A353090.P3639562324667654314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A353090.P3639562324667654314

/-! ## A353090.P5379795838088684484

`eq[1, char[A319198(n)]]-n`
-/

namespace A353090.P5379795838088684484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319198 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A353090.P5379795838088684484

/-! ## A353090.P4752221214001693586

`n-(A385532(n+1)+1)`
-/

namespace A353090.P4752221214001693586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A385532 (n + 1) + 1)

end

end A353090.P4752221214001693586

/-! ## A353090.P7338091510653700068

`A305386(n)+a(n-1)` with `a(0)=0`
-/

namespace A353090.P7338091510653700068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A305386 n + a (n - 1)

end

end A353090.P7338091510653700068

/-!
# A353092: Inventory sequence counting prime factors. (See comment.)

The programs for A353092, there is no canonical definition to state claims against.
-/

/-! ## A353092.P8442522735841702555

`C(A348016(n), A270755(A068045(n)))`
-/

namespace A353092.P8442522735841702555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A348016 n).toNat (A270755 (A068045 n).toNat).toNat

end

end A353092.P8442522735841702555

/-! ## A353092.P14696370897233154387

`A348016(n^A051159(n)²)`
-/

namespace A353092.P14696370897233154387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348016 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A051159 n ^ 2 : ℤ))).toNat

end

end A353092.P14696370897233154387

/-! ## A353092.P1922355970388925586

`A348040(A347975(n))+A348016(n)`
-/

namespace A353092.P1922355970388925586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348040 (A347975 n).toNat + A348016 n

end

end A353092.P1922355970388925586

/-! ## A353092.P17277696997906020101

`A369241(A347973(n))+A348016(n)`
-/

namespace A353092.P17277696997906020101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369241 (A347973 n).toNat + A348016 n

end

end A353092.P17277696997906020101

/-!
# A353094: a(1) = 2; for n > 1, a(n) = 3*a(n-1) + 3 - n.

The programs for A353094, the canonical program `A353094.P2986780387289272960` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353094 has offset 1).

The definition of A353094 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+3-(n+1)` (program `A353094.P2986780387289272960`, by `A353094.P2986780387289272960.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A353094.P2986780387289272960

`3*a(n-1)+3-(n+1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A353094

/-- `3*a(n-1)+3-(n+1)` -/
def P2986780387289272960.Spec : Prop :=
  ∀ n, P2986780387289272960.a n = A353094 (n + 1)

theorem P2986780387289272960.correct : P2986780387289272960.Spec := by
  intro n
  simp only [A353094, Nat.add_sub_cancel]

end A353094

/-! ## A353094.P10063173167477282338

`A000340(n)+n+1`
-/

namespace A353094.P10063173167477282338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000340 n + (n + 1 : ℤ)

end

end A353094.P10063173167477282338

namespace A353094

/-- `A000340(n)+n+1` -/
def P10063173167477282338.Spec : Prop :=
  ∀ n, P10063173167477282338.a n = A353094 (n + 1)

end A353094

/-! ## A353094.P17948776987220168580

`(3^(n+2)+2*(n+1)-3)/4`
-/

namespace A353094.P17948776987220168580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 2) + 2 * (n + 1) : ℤ) - 3 : ℚ) / 4

end

end A353094.P17948776987220168580

namespace A353094

/-- `(3^(n+2)+2*(n+1)-3)/4` -/
def P17948776987220168580.Spec : Prop :=
  ∀ n, P17948776987220168580.a n = (A353094 (n + 1) : ℚ)

theorem P17948776987220168580.correct : P17948776987220168580.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A353094, Nat.add_sub_cancel, A353094.P17948776987220168580.a, A353094.P2986780387289272960.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A353094, Nat.add_sub_cancel, A353094.P17948776987220168580.a, A353094.P2986780387289272960.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A353094

/-! ## A353094.P3346392574939137431

`ogf((2-3x)/(1-5x+7x^2-3x^3))`
-/

namespace A353094.P3346392574939137431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3] [1, -5, 7, -3] n

end

end A353094.P3346392574939137431

namespace A353094

/-- `ogf((2-3x)/(1-5x+7x^2-3x^3))` -/
def P3346392574939137431.Spec : Prop :=
  ∀ n, P3346392574939137431.a n = A353094 (n + 1)

end A353094

/-! ## A353094.P4485695980632938339

`-∑[xor(-1, ∑[3^n])]`
-/

namespace A353094.P4485695980632938339
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A353094.P4485695980632938339

namespace A353094

/-- `-∑[xor(-1, ∑[3^n])]` -/
def P4485695980632938339.Spec : Prop :=
  ∀ n, P4485695980632938339.a n = A353094 (n + 1)

end A353094

/-! ## A353094.P14250213834661724454

`-∑[1-or(2, ∑[3^n])]`
-/

namespace A353094.P14250213834661724454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.lor 2 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A353094.P14250213834661724454

namespace A353094

/-- `-∑[1-or(2, ∑[3^n])]` -/
def P14250213834661724454.Spec : Prop :=
  ∀ n, P14250213834661724454.a n = A353094 (n + 1)

end A353094

/-! ## A353094.P3612563432310958136

`2-(n-3*a(n-1))` with `a(0)=2`
-/

namespace A353094.P3612563432310958136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - ((n : ℤ) - 3 * a (n - 1))

end

end A353094.P3612563432310958136

namespace A353094

/-- `2-(n-3*a(n-1))` -/
def P3612563432310958136.Spec : Prop :=
  ∀ n, P3612563432310958136.a n = A353094 (n + 1)

end A353094

/-! ## A353094.P10543620870330964215

`a(n-1)+(3^(n+1)+1)/2` with `a(0)=2`
-/

namespace A353094.P10543620870330964215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (3 ^ (n + 1) + 1 : ℚ) / 2

end

end A353094.P10543620870330964215

namespace A353094

/-- `a(n-1)+(3^(n+1)+1)/2` -/
def P10543620870330964215.Spec : Prop :=
  ∀ n, P10543620870330964215.a n = (A353094 (n + 1) : ℚ)

end A353094

/-! ## A353094.P6229491960572080366

`3^(n+1)-(a(n-1)+1)+n` with `a(0)=2`
-/

namespace A353094.P6229491960572080366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (3 ^ (n + 1) : ℤ) - (a (n - 1) + 1) + (n : ℤ)

end

end A353094.P6229491960572080366

namespace A353094

/-- `3^(n+1)-(a(n-1)+1)+n` -/
def P6229491960572080366.Spec : Prop :=
  ∀ n, P6229491960572080366.a n = A353094 (n + 1)

end A353094

/-! ## A353094.P1897437066181587006

`a(n-1)+2+a(n-1)+a(n-1)-n` with `a(0)=2`
-/

namespace A353094.P1897437066181587006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 + (a (n - 1) + (a (n - 1) - (n : ℤ)))

end

end A353094.P1897437066181587006

namespace A353094

/-- `a(n-1)+2+a(n-1)+a(n-1)-n` -/
def P1897437066181587006.Spec : Prop :=
  ∀ n, P1897437066181587006.a n = A353094 (n + 1)

theorem P1897437066181587006.correct : P1897437066181587006.Spec := by
  intro n
  simp only [A353094, Nat.add_sub_cancel, A353094.P1897437066181587006.a, A353094.P2986780387289272960.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A353094

/-! ## A353094.P2513908476157481677

`2-(n-a(n-1)-a(n-1)-a(n-1))` with `a(0)=2`
-/

namespace A353094.P2513908476157481677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - ((n : ℤ) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A353094.P2513908476157481677

namespace A353094

/-- `2-(n-a(n-1)-a(n-1)-a(n-1))` -/
def P2513908476157481677.Spec : Prop :=
  ∀ n, P2513908476157481677.a n = A353094 (n + 1)

end A353094

/-! ## A353094.P4808267360646339093

`A047926(n+1)-1`
-/

namespace A353094.P4808267360646339093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047926 (n + 1) - 1

end

end A353094.P4808267360646339093

namespace A353094

/-- `A047926(n+1)-1` -/
def P4808267360646339093.Spec : Prop :=
  ∀ n, P4808267360646339093.a n = A353094 (n + 1)

end A353094

/-! ## A353094.P17256724399266125175

`A164039(n+2)-2`
-/

namespace A353094.P17256724399266125175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164039 (n + 2) - 2

end

end A353094.P17256724399266125175

namespace A353094

/-- `A164039(n+2)-2` -/
def P17256724399266125175.Spec : Prop :=
  ∀ n, P17256724399266125175.a n = A353094 (n + 1)

end A353094

/-! ## A353094.P156905296277974611

`A243513(n+2)-3`
-/

namespace A353094.P156905296277974611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243513 (n + 2) - 3

end

end A353094.P156905296277974611

namespace A353094

/-- `A243513(n+2)-3` -/
def P156905296277974611.Spec : Prop :=
  ∀ n, P156905296277974611.a n = A353094 (n + 1)

end A353094

/-! ## A353094.P7995587822812694710

`A111277(n+2)+n`
-/

namespace A353094.P7995587822812694710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111277 (n + 2) + (n : ℤ)

end

end A353094.P7995587822812694710

namespace A353094

/-- `A111277(n+2)+n` -/
def P7995587822812694710.Spec : Prop :=
  ∀ n, P7995587822812694710.a n = A353094 (n + 1)

end A353094

/-! ## A353094.P10122513071415189002

`∑[A123109(n)+2]-1`
-/

namespace A353094.P10122513071415189002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123109 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A353094.P10122513071415189002

namespace A353094

/-- `∑[A123109(n)+2]-1` -/
def P10122513071415189002.Spec : Prop :=
  ∀ n, P10122513071415189002.a n = A353094 (n + 1)

end A353094

/-! ## A353094.P1955699543513736895

`Δ[A262592(n+1)]+n`
-/

namespace A353094.P1955699543513736895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A353094.P1955699543513736895

namespace A353094

/-- `Δ[A262592(n+1)]+n` -/
def P1955699543513736895.Spec : Prop :=
  ∀ n, P1955699543513736895.a n = A353094 (n + 1)

end A353094

/-! ## A353094.P4803157055709898395

`A090328(n+1)+3^n`
-/

namespace A353094.P4803157055709898395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090328 (n + 1) + (3 ^ n : ℤ)

end

end A353094.P4803157055709898395

namespace A353094

/-- `A090328(n+1)+3^n` -/
def P4803157055709898395.Spec : Prop :=
  ∀ n, P4803157055709898395.a n = A353094 (n + 1)

end A353094

/-!
# A353095: a(1) = 3; for n > 1, a(n) = 4*a(n-1) + 4 - n.

The programs for A353095, the canonical program `A353095.P741332639687855806` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353095 has offset 1).

The definition of A353095 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+4-(n+1)` (program `A353095.P741332639687855806`, by `A353095.P741332639687855806.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A353095.P741332639687855806

`4*a(n-1)+4-(n+1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A353095

/-- `4*a(n-1)+4-(n+1)` -/
def P741332639687855806.Spec : Prop :=
  ∀ n, P741332639687855806.a n = A353095 (n + 1)

theorem P741332639687855806.correct : P741332639687855806.Spec := by
  intro n
  simp only [A353095, Nat.add_sub_cancel]

end A353095

/-! ## A353095.P651692598066846428

`2*A014825(n+1)+n+1`
-/

namespace A353095.P651692598066846428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014825 (n + 1) + (n + 1 : ℤ)

end

end A353095.P651692598066846428

namespace A353095

/-- `2*A014825(n+1)+n+1` -/
def P651692598066846428.Spec : Prop :=
  ∀ n, P651692598066846428.a n = A353095 (n + 1)

end A353095

/-! ## A353095.P1966113969598849170

`(2*4^(n+2)+3*(n+1)-8)/9`
-/

namespace A353095.P1966113969598849170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 4 ^ (n + 2) + 3 * (n + 1) : ℤ) - 8 : ℚ) / 9

end

end A353095.P1966113969598849170

namespace A353095

/-- `(2*4^(n+2)+3*(n+1)-8)/9` -/
def P1966113969598849170.Spec : Prop :=
  ∀ n, P1966113969598849170.a n = (A353095 (n + 1) : ℚ)

theorem P1966113969598849170.correct : P1966113969598849170.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A353095, Nat.add_sub_cancel, A353095.P1966113969598849170.a, A353095.P741332639687855806.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A353095, Nat.add_sub_cancel, A353095.P1966113969598849170.a, A353095.P741332639687855806.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A353095

/-! ## A353095.P968021393068010006

`∑[ogf((3-4x)/(1-5x+4x^2))]`
-/

namespace A353095.P968021393068010006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4] [1, -5, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353095.P968021393068010006

namespace A353095

/-- `∑[ogf((3-4x)/(1-5x+4x^2))]` -/
def P968021393068010006.Spec : Prop :=
  ∀ n, P968021393068010006.a n = A353095 (n + 1)

end A353095

/-! ## A353095.P6974107699172925891

`ogf((3-4x)/(1-6x+9x^2-4x^3))`
-/

namespace A353095.P6974107699172925891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4] [1, -6, 9, -4] n

end

end A353095.P6974107699172925891

namespace A353095

/-- `ogf((3-4x)/(1-6x+9x^2-4x^3))` -/
def P6974107699172925891.Spec : Prop :=
  ∀ n, P6974107699172925891.a n = A353095 (n + 1)

end A353095

/-! ## A353095.P11434474664541024951

`3-(n-4*a(n-1))` with `a(0)=3`
-/

namespace A353095.P11434474664541024951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 - ((n : ℤ) - 4 * a (n - 1))

end

end A353095.P11434474664541024951

namespace A353095

/-- `3-(n-4*a(n-1))` -/
def P11434474664541024951.Spec : Prop :=
  ∀ n, P11434474664541024951.a n = A353095 (n + 1)

end A353095

/-! ## A353095.P15643874525161726678

`floor(∑[a(n-1)+2^(n+1+n)])` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A353095.P15643874525161726678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 2 ^ (n + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353095.P15643874525161726678

namespace A353095

/-- `floor(∑[a(n-1)+2^(n+1+n)])` -/
def P15643874525161726678.Spec : Prop :=
  ∀ n, (P15643874525161726678.a n : ℤ) = A353095 (n + 1)

end A353095

/-! ## A353095.P4741819297624673319

`A160156(n+1)-1`
-/

namespace A353095.P4741819297624673319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160156 (n + 1) - 1

end

end A353095.P4741819297624673319

namespace A353095

/-- `A160156(n+1)-1` -/
def P4741819297624673319.Spec : Prop :=
  ∀ n, P4741819297624673319.a n = A353095 (n + 1)

end A353095

/-! ## A353095.P3233775862434509762

`A350717(n+2)-2`
-/

namespace A353095.P3233775862434509762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350717 (n + 2) - 2

end

end A353095.P3233775862434509762

namespace A353095

/-- `A350717(n+2)-2` -/
def P3233775862434509762.Spec : Prop :=
  ∀ n, P3233775862434509762.a n = A353095 (n + 1)

end A353095

/-! ## A353095.P15946146463682531195

`A302757(n+2)+n`
-/

namespace A353095.P15946146463682531195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302757 (n + 2) + (n : ℤ)

end

end A353095.P15946146463682531195

namespace A353095

/-- `A302757(n+2)+n` -/
def P15946146463682531195.Spec : Prop :=
  ∀ n, P15946146463682531195.a n = A353095 (n + 1)

end A353095

/-! ## A353095.P13428131577532919408

`∑[A168642(2*n)]+2`
-/

namespace A353095.P13428131577532919408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168642 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A353095.P13428131577532919408

namespace A353095

/-- `∑[A168642(2*n)]+2` -/
def P13428131577532919408.Spec : Prop :=
  ∀ n, P13428131577532919408.a n = A353095 (n + 1)

end A353095

/-! ## A353095.P5295943502299769727

`A034299(2*(n+1))-1`
-/

namespace A353095.P5295943502299769727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034299 (2 * (n + 1)) - 1

end

end A353095.P5295943502299769727

namespace A353095

/-- `A034299(2*(n+1))-1` -/
def P5295943502299769727.Spec : Prop :=
  ∀ n, P5295943502299769727.a n = A353095 (n + 1)

end A353095

/-! ## A353095.P3355571725617624198

`A145766(n+1)+1+n`
-/

namespace A353095.P3355571725617624198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145766 (n + 1) + 1 + (n : ℤ)

end

end A353095.P3355571725617624198

namespace A353095

/-- `A145766(n+1)+1+n` -/
def P3355571725617624198.Spec : Prop :=
  ∀ n, P3355571725617624198.a n = A353095 (n + 1)

end A353095

/-! ## A353095.P17969139613835657036

`A103196(2*(n+1))+n`
-/

namespace A353095.P17969139613835657036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103196 (2 * (n + 1)) + (n : ℤ)

end

end A353095.P17969139613835657036

namespace A353095

/-- `A103196(2*(n+1))+n` -/
def P17969139613835657036.Spec : Prop :=
  ∀ n, P17969139613835657036.a n = A353095 (n + 1)

end A353095

/-! ## A353095.P7565042080056320672

`A091919(Δ[n²])+n+1`
-/

namespace A353095.P7565042080056320672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091919 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)

end

end A353095.P7565042080056320672

namespace A353095

/-- `A091919(Δ[n²])+n+1` -/
def P7565042080056320672.Spec : Prop :=
  ∀ n, P7565042080056320672.a n = A353095 (n + 1)

end A353095

/-! ## A353095.P5064361939445263062

`A091919(2*n+1)+1+n`
-/

namespace A353095.P5064361939445263062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091919 (2 * n + 1) + 1 + (n : ℤ)

end

end A353095.P5064361939445263062

namespace A353095

/-- `A091919(2*n+1)+1+n` -/
def P5064361939445263062.Spec : Prop :=
  ∀ n, P5064361939445263062.a n = A353095 (n + 1)

end A353095

/-! ## A353095.P5837277077194704709

`A053088(2*n+3)+n+1`
-/

namespace A353095.P5837277077194704709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 (2 * n + 3) + (n + 1 : ℤ)

end

end A353095.P5837277077194704709

namespace A353095

/-- `A053088(2*n+3)+n+1` -/
def P5837277077194704709.Spec : Prop :=
  ∀ n, P5837277077194704709.a n = A353095 (n + 1)

end A353095

/-! ## A353095.P3574658880901472020

`A198693(n)+A164044(n)`
-/

namespace A353095.P3574658880901472020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198693 n + A164044 n

end

end A353095.P3574658880901472020

namespace A353095

/-- `A198693(n)+A164044(n)` -/
def P3574658880901472020.Spec : Prop :=
  ∀ n, P3574658880901472020.a n = A353095 (n + 1)

end A353095

/-! ## A353095.P15266380072144452972

`A166753(A005843(n+1))-(n+2)`
-/

namespace A353095.P15266380072144452972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166753 (A005843 (n + 1)).toNat - (n + 2 : ℤ)

end

end A353095.P15266380072144452972

namespace A353095

/-- `A166753(A005843(n+1))-(n+2)` -/
def P15266380072144452972.Spec : Prop :=
  ∀ n, P15266380072144452972.a n = A353095 (n + 1)

end A353095

/-!
# A353096: a(1) = 4; for n > 1, a(n) = 5*a(n-1) + 5 - n.

The programs for A353096, the canonical program `A353096.P16731346764666725118` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353096 has offset 1).

The definition of A353096 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+5-(n+1)` (program `A353096.P16731346764666725118`, by `A353096.P16731346764666725118.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A353096.P16731346764666725118

`5*a(n-1)+5-(n+1)` with `a(0)=4`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A353096

/-- `5*a(n-1)+5-(n+1)` -/
def P16731346764666725118.Spec : Prop :=
  ∀ n, P16731346764666725118.a n = A353096 (n + 1)

theorem P16731346764666725118.correct : P16731346764666725118.Spec := by
  intro n
  simp only [A353096, Nat.add_sub_cancel]

end A353096

/-! ## A353096.P17652265006154156339

`3*A014827(n+1)+n+1`
-/

namespace A353096.P17652265006154156339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A014827 (n + 1) + (n + 1 : ℤ)

end

end A353096.P17652265006154156339

namespace A353096

/-- `3*A014827(n+1)+n+1` -/
def P17652265006154156339.Spec : Prop :=
  ∀ n, P17652265006154156339.a n = A353096 (n + 1)

end A353096

/-! ## A353096.P5981395861899100946

`(3*5^(n+2)+4*(n+1)-15)/16`
-/

namespace A353096.P5981395861899100946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 5 ^ (n + 2) + 4 * (n + 1) : ℤ) - 15 : ℚ) / 16

end

end A353096.P5981395861899100946

namespace A353096

/-- `(3*5^(n+2)+4*(n+1)-15)/16` -/
def P5981395861899100946.Spec : Prop :=
  ∀ n, P5981395861899100946.a n = (A353096 (n + 1) : ℚ)

theorem P5981395861899100946.correct : P5981395861899100946.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A353096, Nat.add_sub_cancel, A353096.P5981395861899100946.a, A353096.P16731346764666725118.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A353096, Nat.add_sub_cancel, A353096.P5981395861899100946.a, A353096.P16731346764666725118.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A353096

/-! ## A353096.P16866763877128106783

`∑[ogf((4-5x)/(1-6x+5x^2))]`
-/

namespace A353096.P16866763877128106783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -5] [1, -6, 5] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353096.P16866763877128106783

namespace A353096

/-- `∑[ogf((4-5x)/(1-6x+5x^2))]` -/
def P16866763877128106783.Spec : Prop :=
  ∀ n, P16866763877128106783.a n = A353096 (n + 1)

end A353096

/-! ## A353096.P7763831035359403781

`ogf((4-5x)/(1-7x+11x^2-5x^3))`
-/

namespace A353096.P7763831035359403781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -5] [1, -7, 11, -5] n

end

end A353096.P7763831035359403781

namespace A353096

/-- `ogf((4-5x)/(1-7x+11x^2-5x^3))` -/
def P7763831035359403781.Spec : Prop :=
  ∀ n, P7763831035359403781.a n = A353096 (n + 1)

end A353096

/-! ## A353096.P5785683708012959260

`4-(n-5*a(n-1))` with `a(0)=4`
-/

namespace A353096.P5785683708012959260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  4 - ((n : ℤ) - 5 * a (n - 1))

end

end A353096.P5785683708012959260

namespace A353096

/-- `4-(n-5*a(n-1))` -/
def P5785683708012959260.Spec : Prop :=
  ∀ n, P5785683708012959260.a n = A353096 (n + 1)

end A353096

/-!
# A353097: a(1) = 5; for n > 1, a(n) = 6*a(n-1) + 6 - n.

The programs for A353097, the canonical program `A353097.P17936307305718576530` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353097 has offset 1).

The definition of A353097 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+6-(n+1)` (program `A353097.P17936307305718576530`, by `A353097.P17936307305718576530.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A353097.P17936307305718576530

`6*a(n-1)+6-(n+1)` with `a(0)=5`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A353097

/-- `6*a(n-1)+6-(n+1)` -/
def P17936307305718576530.Spec : Prop :=
  ∀ n, P17936307305718576530.a n = A353097 (n + 1)

theorem P17936307305718576530.correct : P17936307305718576530.Spec := by
  intro n
  simp only [A353097, Nat.add_sub_cancel]

end A353097

/-! ## A353097.P10406844730297463341

`4*A014829(n+1)+n+1`
-/

namespace A353097.P10406844730297463341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A014829 (n + 1) + (n + 1 : ℤ)

end

end A353097.P10406844730297463341

namespace A353097

/-- `4*A014829(n+1)+n+1` -/
def P10406844730297463341.Spec : Prop :=
  ∀ n, P10406844730297463341.a n = A353097 (n + 1)

end A353097

/-! ## A353097.P13853986462872776228

`(4*6^(n+2)+5*(n+1)-24)/25`
-/

namespace A353097.P13853986462872776228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 6 ^ (n + 2) + 5 * (n + 1) : ℤ) - 24 : ℚ) / 25

end

end A353097.P13853986462872776228

namespace A353097

/-- `(4*6^(n+2)+5*(n+1)-24)/25` -/
def P13853986462872776228.Spec : Prop :=
  ∀ n, P13853986462872776228.a n = (A353097 (n + 1) : ℚ)

theorem P13853986462872776228.correct : P13853986462872776228.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A353097, Nat.add_sub_cancel, A353097.P13853986462872776228.a, A353097.P17936307305718576530.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A353097, Nat.add_sub_cancel, A353097.P13853986462872776228.a, A353097.P17936307305718576530.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A353097

/-! ## A353097.P1476578135014665063

`∑[ogf((5-6x)/(1-7x+6x^2))]`
-/

namespace A353097.P1476578135014665063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -6] [1, -7, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353097.P1476578135014665063

namespace A353097

/-- `∑[ogf((5-6x)/(1-7x+6x^2))]` -/
def P1476578135014665063.Spec : Prop :=
  ∀ n, P1476578135014665063.a n = A353097 (n + 1)

end A353097

/-! ## A353097.P7800605461851212683

`ogf((5-6x)/(1-8x+13x^2-6x^3))`
-/

namespace A353097.P7800605461851212683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -6] [1, -8, 13, -6] n

end

end A353097.P7800605461851212683

namespace A353097

/-- `ogf((5-6x)/(1-8x+13x^2-6x^3))` -/
def P7800605461851212683.Spec : Prop :=
  ∀ n, P7800605461851212683.a n = A353097 (n + 1)

end A353097

/-! ## A353097.P4823934655055462766

`5-(n-6*a(n-1))` with `a(0)=5`
-/

namespace A353097.P4823934655055462766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  5 - ((n : ℤ) - 6 * a (n - 1))

end

end A353097.P4823934655055462766

namespace A353097

/-- `5-(n-6*a(n-1))` -/
def P4823934655055462766.Spec : Prop :=
  ∀ n, P4823934655055462766.a n = A353097 (n + 1)

end A353097

/-!
# A353098: a(1) = 6; for n>1, a(n) = 7 * a(n-1) + 7 - n.

The programs for A353098, the canonical program `A353098.P11297008092462418147` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353098 has offset 1).

The definition of A353098 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)+7-(n+1)` (program `A353098.P11297008092462418147`, by `A353098.P11297008092462418147.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A353098.P11297008092462418147

`7*a(n-1)+7-(n+1)` with `a(0)=6`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A353098

/-- `7*a(n-1)+7-(n+1)` -/
def P11297008092462418147.Spec : Prop :=
  ∀ n, P11297008092462418147.a n = A353098 (n + 1)

theorem P11297008092462418147.correct : P11297008092462418147.Spec := by
  intro n
  simp only [A353098, Nat.add_sub_cancel]

end A353098

/-! ## A353098.P2866470882176146168

`5*A014830(n+1)+n+1`
-/

namespace A353098.P2866470882176146168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A014830 (n + 1) + (n + 1 : ℤ)

end

end A353098.P2866470882176146168

namespace A353098

/-- `5*A014830(n+1)+n+1` -/
def P2866470882176146168.Spec : Prop :=
  ∀ n, P2866470882176146168.a n = A353098 (n + 1)

end A353098

/-! ## A353098.P6825653831731234869

`(5*7^(n+2)+6*(n+1)-35)/36`
-/

namespace A353098.P6825653831731234869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 7 ^ (n + 2) + 6 * (n + 1) : ℤ) - 35 : ℚ) / 36

end

end A353098.P6825653831731234869

namespace A353098

/-- `(5*7^(n+2)+6*(n+1)-35)/36` -/
def P6825653831731234869.Spec : Prop :=
  ∀ n, P6825653831731234869.a n = (A353098 (n + 1) : ℚ)

theorem P6825653831731234869.correct : P6825653831731234869.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A353098, Nat.add_sub_cancel, A353098.P6825653831731234869.a, A353098.P11297008092462418147.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A353098, Nat.add_sub_cancel, A353098.P6825653831731234869.a, A353098.P11297008092462418147.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A353098

/-! ## A353098.P8115925610630878450

`∑[ogf((6-7x)/(1-8x+7x^2))]`
-/

namespace A353098.P8115925610630878450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -7] [1, -8, 7] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353098.P8115925610630878450

namespace A353098

/-- `∑[ogf((6-7x)/(1-8x+7x^2))]` -/
def P8115925610630878450.Spec : Prop :=
  ∀ n, P8115925610630878450.a n = A353098 (n + 1)

end A353098

/-! ## A353098.P14925793775687405700

`ogf((6-7x)/(1-9x+15x^2-7x^3))`
-/

namespace A353098.P14925793775687405700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -7] [1, -9, 15, -7] n

end

end A353098.P14925793775687405700

namespace A353098

/-- `ogf((6-7x)/(1-9x+15x^2-7x^3))` -/
def P14925793775687405700.Spec : Prop :=
  ∀ n, P14925793775687405700.a n = A353098 (n + 1)

end A353098

/-! ## A353098.P8348011291686719617

`6-(n-7*a(n-1))` with `a(0)=6`
-/

namespace A353098.P8348011291686719617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  6 - ((n : ℤ) - 7 * a (n - 1))

end

end A353098.P8348011291686719617

namespace A353098

/-- `6-(n-7*a(n-1))` -/
def P8348011291686719617.Spec : Prop :=
  ∀ n, P8348011291686719617.a n = A353098 (n + 1)

end A353098

/-!
# A353099: a(1) = 7; for n>1, a(n) = 8 * a(n-1) + 8 - n.

The programs for A353099, the canonical program `A353099.P6530940694152001939` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353099 has offset 1).

The definition of A353099 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+8-(n+1)` (program `A353099.P6530940694152001939`, by `A353099.P6530940694152001939.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A353099.P6530940694152001939

`8*a(n-1)+8-(n+1)` with `a(0)=7`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A353099

/-- `8*a(n-1)+8-(n+1)` -/
def P6530940694152001939.Spec : Prop :=
  ∀ n, P6530940694152001939.a n = A353099 (n + 1)

theorem P6530940694152001939.correct : P6530940694152001939.Spec := by
  intro n
  simp only [A353099, Nat.add_sub_cancel]

end A353099

/-! ## A353099.P17426602814074731905

`6*A014831(n+1)+n+1`
-/

namespace A353099.P17426602814074731905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A014831 (n + 1) + (n + 1 : ℤ)

end

end A353099.P17426602814074731905

namespace A353099

/-- `6*A014831(n+1)+n+1` -/
def P17426602814074731905.Spec : Prop :=
  ∀ n, P17426602814074731905.a n = A353099 (n + 1)

end A353099

/-! ## A353099.P4877889486944566179

`(6*8^(n+2)+7*(n+1)-48)/49`
-/

namespace A353099.P4877889486944566179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * 8 ^ (n + 2) + 7 * (n + 1) : ℤ) - 48 : ℚ) / 49

end

end A353099.P4877889486944566179

namespace A353099

/-- `(6*8^(n+2)+7*(n+1)-48)/49` -/
def P4877889486944566179.Spec : Prop :=
  ∀ n, P4877889486944566179.a n = (A353099 (n + 1) : ℚ)

theorem P4877889486944566179.correct : P4877889486944566179.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A353099, Nat.add_sub_cancel, A353099.P4877889486944566179.a, A353099.P6530940694152001939.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A353099, Nat.add_sub_cancel, A353099.P4877889486944566179.a, A353099.P6530940694152001939.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A353099

/-! ## A353099.P13498500461121932344

`∑[ogf((7-8x)/(1-9x+8x^2))]`
-/

namespace A353099.P13498500461121932344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -8] [1, -9, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353099.P13498500461121932344

namespace A353099

/-- `∑[ogf((7-8x)/(1-9x+8x^2))]` -/
def P13498500461121932344.Spec : Prop :=
  ∀ n, P13498500461121932344.a n = A353099 (n + 1)

end A353099

/-! ## A353099.P13477081780336303399

`7-(n-8*a(n-1))` with `a(0)=7`
-/

namespace A353099.P13477081780336303399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  7 - ((n : ℤ) - 8 * a (n - 1))

end

end A353099.P13477081780336303399

namespace A353099

/-- `7-(n-8*a(n-1))` -/
def P13477081780336303399.Spec : Prop :=
  ∀ n, P13477081780336303399.a n = A353099 (n + 1)

end A353099

/-! ## A353099.P17580663008069881604

`Δ[A145729(n)]-∑[∑[8^n]]`
-/

namespace A353099.P17580663008069881604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145729 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A353099.P17580663008069881604

namespace A353099

/-- `Δ[A145729(n)]-∑[∑[8^n]]` -/
def P17580663008069881604.Spec : Prop :=
  ∀ n, P17580663008069881604.a n = A353099 (n + 1)

end A353099

/-! ## A353099.P7610735947039252546

`A145729(n+1)-(A145729(n)+A014831(n+1))`
-/

namespace A353099.P7610735947039252546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145729 (n + 1) - (A145729 n + A014831 (n + 1))

end

end A353099.P7610735947039252546

namespace A353099

/-- `A145729(n+1)-(A145729(n)+A014831(n+1))` -/
def P7610735947039252546.Spec : Prop :=
  ∀ n, P7610735947039252546.a n = A353099 (n + 1)

end A353099

