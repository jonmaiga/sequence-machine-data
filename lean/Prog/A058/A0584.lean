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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A058400: Triangle of partial row sums of partition triangle A058398.

The programs for A058400, there is no canonical definition to state claims against.
-/

/-! ## A058400.P7562273213706600953

`A026820(∑[char[∑[n]]]²-n)`
-/

namespace A058400.P7562273213706600953
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A058400.P7562273213706600953

/-! ## A058400.P14209054045984386626

`or(char[2], A026820(A038722(n+1)))`
-/

namespace A058400.P14209054045984386626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A026820 (A038722 (n + 1)).toNat)

end

end A058400.P14209054045984386626

/-! ## A058400.P10600598190331993854

`gcd(A000038(n), A026820(A038722(n+1)))`
-/

namespace A058400.P10600598190331993854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A026820 (A038722 (n + 1)).toNat)

end

end A058400.P10600598190331993854

/-! ## A058400.P595443468920508026

`lcm(A020985(n), A026820(A038722(n+1)))`
-/

namespace A058400.P595443468920508026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A026820 (A038722 (n + 1)).toNat)

end

end A058400.P595443468920508026

/-! ## A058400.P7576409463448640095

`A000010(C(2, n)!)*A026820(A038722(n+1))`
-/

namespace A058400.P7576409463448640095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A026820 (A038722 (n + 1)).toNat

end

end A058400.P7576409463448640095

/-! ## A058400.P14401379323402755714

`A026820(A038722(n+1))+A001222(gcd(n, n+1))`
-/

namespace A058400.P14401379323402755714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A038722 (n + 1)).toNat + A001222 (Nat.gcd n (n + 1))

end

end A058400.P14401379323402755714

/-! ## A058400.P11084542910111401098

`A026820(A038722(n+1))%A000051(n)`
-/

namespace A058400.P11084542910111401098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026820 (A038722 (n + 1)).toNat) (A000051 n)

end

end A058400.P11084542910111401098

/-!
# A058402: Coefficient triangle of polynomials (rising powers) related to Pell number convolutions. Companion triangle is A058403.

The programs for A058402, there is no canonical definition to state claims against.
-/

/-! ## A058402.P10965759984639105177

`A058404(∑[2*n]%comp[∑[n]])`
-/

namespace A058402.P10965759984639105177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058404 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A058402.P10965759984639105177

/-! ## A058402.P10452425167306234895

`A058404(∑[char[∑[n]]]²-(n+1))`
-/

namespace A058402.P10452425167306234895
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058404 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A058402.P10452425167306234895

/-! ## A058402.P10766531829007073268

`lcm(A033999(n), A058404(A061579(n)))`
-/

namespace A058402.P10766531829007073268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A058404 (A061579 n).toNat)

end

end A058402.P10766531829007073268

/-! ## A058402.P9553545752412596301

`-(A033999(2*A152980(n)+1)*A058404(A061579(n)))`
-/

namespace A058402.P9553545752412596301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 (2 * A152980 n + 1).toNat * A058404 (A061579 n).toNat)

end

end A058402.P9553545752412596301

/-! ## A058402.P12397423244312429034

`A033999(A006998(n+2))+A058404(A061579(n))-1`
-/

namespace A058402.P12397423244312429034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A006998 (n + 2)).toNat + (A058404 (A061579 n).toNat - 1)

end

end A058402.P12397423244312429034

/-! ## A058402.P7453408849170557945

`A033999(A049207(n))+A058404(A061579(n))-1`
-/

namespace A058402.P7453408849170557945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A049207 n).toNat + (A058404 (A061579 n).toNat - 1)

end

end A058402.P7453408849170557945

/-!
# A058403: Coefficient triangle of polynomials (rising powers) related to Pell number convolutions. Companion triangle is A058402.

The programs for A058403, there is no canonical definition to state claims against.
-/

/-! ## A058403.P6936853668105090536

`A058405(∑[2*n]%comp[∑[n]])`
-/

namespace A058403.P6936853668105090536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058405 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A058403.P6936853668105090536

/-! ## A058403.P274936805347094172

`A058405(∑[char[∑[n]]]²-n-1)`
-/

namespace A058403.P274936805347094172
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058405 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A058403.P274936805347094172

/-! ## A058403.P12161463860177222169

`lcm(2, A058405(A061579(n)))`
-/

namespace A058403.P12161463860177222169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A058405 (A061579 n).toNat)

end

end A058403.P12161463860177222169

/-! ## A058403.P7828191473361895372

`gcd(A000038(n), A058405(A061579(n)))`
-/

namespace A058403.P7828191473361895372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A058405 (A061579 n).toNat)

end

end A058403.P7828191473361895372

/-! ## A058403.P8538017712380357614

`A082041(n)%2*A058405(A061579(n))`
-/

namespace A058403.P8538017712380357614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082041 n) 2 * A058405 (A061579 n).toNat

end

end A058403.P8538017712380357614

/-!
# A058404: Coefficient triangle of polynomials (falling powers) related to Pell number convolutions. Companion triangle is A058405.

The programs for A058404, there is no canonical definition to state claims against.
-/

/-! ## A058404.P3382421411220178788

`A058402(∑[2*n]%comp[∑[n]])`
-/

namespace A058404.P3382421411220178788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058402 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A058404.P3382421411220178788

/-! ## A058404.P16314723326677692890

`A058402(∑[char[∑[n]]]²-(n+1))`
-/

namespace A058404.P16314723326677692890
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058402 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A058404.P16314723326677692890

/-! ## A058404.P16491103312695300945

`gcd(A000038(n), A058402(A061579(n)))`
-/

namespace A058404.P16491103312695300945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A058402 (A061579 n).toNat)

end

end A058404.P16491103312695300945

/-! ## A058404.P2332218934990721084

`lcm(A020985(n), A058402(A061579(n)))`
-/

namespace A058404.P2332218934990721084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A058402 (A061579 n).toNat)

end

end A058404.P2332218934990721084

/-! ## A058404.P9003488843726432807

`A058402(A061579(n))/val(A272828(n)+1, 2)`
-/

namespace A058404.P9003488843726432807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058402 (A061579 n).toNat : ℚ) / (SequenceMachineLib.valuation (A272828 n + 1).toNat 2 : ℚ)

end

end A058404.P9003488843726432807

/-! ## A058404.P1581798011104163271

`A058402(A061579(n))+val(A157514(n+1)+1, 2)`
-/

namespace A058404.P1581798011104163271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058402 (A061579 n).toNat + (SequenceMachineLib.valuation (A157514 (n + 1) + 1).toNat 2 : ℤ)

end

end A058404.P1581798011104163271

/-!
# A058405: Coefficient triangle of polynomials (falling powers) related to Pell number convolutions. Companion triangle is A058404.

The programs for A058405, there is no canonical definition to state claims against.
-/

/-! ## A058405.P17447412395510652868

`A058403(∑[2*n]%comp[∑[n]])`
-/

namespace A058405.P17447412395510652868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058403 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A058405.P17447412395510652868

/-! ## A058405.P353862822238481190

`A058403(∑[char[∑[n]]]²-n-1)`
-/

namespace A058405.P353862822238481190
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058403 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A058405.P353862822238481190

/-! ## A058405.P12651079040468648464

`lcm(2, A058403(A061579(n)))`
-/

namespace A058405.P12651079040468648464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A058403 (A061579 n).toNat)

end

end A058405.P12651079040468648464

/-! ## A058405.P1122336735632696456

`gcd(A000038(n), A058403(A061579(n)))`
-/

namespace A058405.P1122336735632696456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A058403 (A061579 n).toNat)

end

end A058405.P1122336735632696456

/-! ## A058405.P9492003409190496180

`A001222(A228567(n+1))*A058403(A061579(n))`
-/

namespace A058405.P9492003409190496180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A228567 (n + 1)).toNat * A058403 (A061579 n).toNat

end

end A058405.P9492003409190496180

/-!
# A058406: Total number of interior nodes in all series-parallel networks with n labeled edges, multiple edges not allowed.

The programs for A058406, there is no canonical definition to state claims against.
-/

/-! ## A058406.P15598218303385044131

`A058475(n)-A058388(n)`
-/

namespace A058406.P15598218303385044131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058475 n - A058388 n

end

end A058406.P15598218303385044131

/-! ## A058406.P10582257873042590500

`A058475(n)+A058388(n)*A260196(n)`
-/

namespace A058406.P10582257873042590500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058475 n + A058388 n * A260196 n

end

end A058406.P10582257873042590500

/-!
# A058407: Number of 3 X n nonnegative integer matrices with all column sums 3, up to row and column permutation.

The programs for A058407, there is no canonical definition to state claims against.
-/

/-! ## A058407.P5071391334757505167

`∑[A050927(n)]`
-/

namespace A058407.P5071391334757505167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058407.P5071391334757505167

/-! ## A058407.P12598826100641450896

`A050927(n)-(A209229(2*n+1)-a(n-1))` with `a(0)=1`
-/

namespace A058407.P12598826100641450896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050927 n - (A209229 (2 * n + 1) - a (n - 1))

end

end A058407.P12598826100641450896

/-! ## A058407.P4583327694741070259

`∑[A138107(∑[n+4]+2)]`
-/

namespace A058407.P4583327694741070259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138107 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058407.P4583327694741070259

/-! ## A058407.P5163844184485811894

`A235800(2*A050927(n))+a(n-1)` with `a(0)=1`
-/

namespace A058407.P5163844184485811894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A235800 (2 * A050927 n).toNat + a (n - 1)

end

end A058407.P5163844184485811894

/-!
# A058408: Number of 3 X n nonnegative integer matrices with all column sums 4, up to row and column permutation.

The programs for A058408, there is no canonical definition to state claims against.
-/

/-! ## A058408.P4984099987398164546

`xor(2, A140977(A182959(n)))`
-/

namespace A058408.P4984099987398164546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A140977 (A182959 n).toNat)

end

end A058408.P4984099987398164546

/-!
# A058409: Number of 4 X n nonnegative integer matrices with all column sums 3, up to row and column permutation.

The programs for A058409, there is no canonical definition to state claims against.
-/

/-! ## A058409.P619213709971396474

`record[A008617(A269822(n+1))]`
-/

namespace A058409.P619213709971396474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A269822 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058409.P619213709971396474

/-!
# A058410: Number of 4 X n nonnegative integer matrices with all column sums 4, up to row and column permutation.

The programs for A058410, there is no canonical definition to state claims against.
-/

/-! ## A058410.P6825835234125272470

`or(A004526(A126532(n)), A149694(n))`
-/

namespace A058410.P6825835234125272470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004526 (A126532 n).toNat) (A149694 n)

end

end A058410.P6825835234125272470

/-!
# A058411: Numbers k such that k^2 contains only digits {0,1,2}, not ending with zero.

The programs for A058411, there is no canonical definition to state claims against.
-/

/-! ## A058411.P16668686155738733335

`sqrt(A058412(n+1))`
-/

namespace A058411.P16668686155738733335
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058412 (n + 1) : ℝ)

end

end A058411.P16668686155738733335

/-! ## A058411.P18278790367237854944

`A058441(n+1)/2`
-/

namespace A058411.P18278790367237854944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058441 (n + 1) : ℚ) / 2

end

end A058411.P18278790367237854944

/-! ## A058411.P15095111704928329890

`sqrt(A058442(n+1))/2`
-/

namespace A058411.P15095111704928329890
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058442 (n + 1) : ℝ) / 2

end

end A058411.P15095111704928329890

/-! ## A058411.P13095371237766468870

`A058412(n+1)%A058441(n+1)`
-/

namespace A058411.P13095371237766468870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058412 (n + 1)) (A058441 (n + 1))

end

end A058411.P13095371237766468870

/-! ## A058411.P12275895254777560919

`root(A058412(n+1), A020639(2*(n+1)))`
-/

namespace A058411.P12275895254777560919
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058412 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A058411.P12275895254777560919

/-! ## A058411.P12550200063044110553

`root(A058412(n+1), A001316(A001316(n)))`
-/

namespace A058411.P12550200063044110553
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058412 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A058411.P12550200063044110553

/-!
# A058412: Squares composed of digits {0,1,2}, not ending with zero.

The programs for A058412, there is no canonical definition to state claims against.
-/

/-! ## A058412.P3313183400517568292

`A058411(n+1)²`
-/

namespace A058412.P3313183400517568292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058411 (n + 1) ^ 2

end

end A058412.P3313183400517568292

/-! ## A058412.P15168967343485598971

`A058442(n+1)/4`
-/

namespace A058412.P15168967343485598971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058442 (n + 1) : ℚ) / 4

end

end A058412.P15168967343485598971

/-! ## A058412.P2589818536954827782

`(A058441(n+1)/2)²`
-/

namespace A058412.P2589818536954827782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A058441 (n + 1) : ℚ) / 2) ^ 2

end

end A058412.P2589818536954827782

/-! ## A058412.P12789022882933047041

`A058411(n+1)^A020639(4*(n+1))`
-/

namespace A058412.P12789022882933047041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058411 (n + 1) : ℚ) ^ (A020639 (4 * (n + 1)) : ℤ)

end

end A058412.P12789022882933047041

/-! ## A058412.P16617524691564707666

`A058411(n+1)^A014963(A001316(n))`
-/

namespace A058412.P16617524691564707666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058411 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A058412.P16617524691564707666

/-! ## A058412.P13483530111278541214

`A058411(A000027(n+1))*A058411(n+1)`
-/

namespace A058412.P13483530111278541214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058411 (A000027 (n + 1)).toNat * A058411 (n + 1)

end

end A058412.P13483530111278541214

/-! ## A058412.P10856400427581156890

`A058411(n+1)^A034444(A006530(n+1))`
-/

namespace A058412.P10856400427581156890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058411 (n + 1) : ℚ) ^ (A034444 (A006530 (n + 1)).toNat : ℤ)

end

end A058412.P10856400427581156890

/-! ## A058412.P7095051436089162608

`A058411(n+1)^A000005(A230775(n+1))`
-/

namespace A058412.P7095051436089162608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058411 (n + 1) : ℚ) ^ (A000005 (A230775 (n + 1)).toNat : ℤ)

end

end A058412.P7095051436089162608

/-! ## A058412.P1118296789702381803

`A058411(n+1)^A034444(A020639(n+2))`
-/

namespace A058412.P1118296789702381803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058411 (n + 1) : ℚ) ^ (A034444 (A020639 (n + 2)).toNat : ℤ)

end

end A058412.P1118296789702381803

/-! ## A058412.P5756020052766628171

`A058411(n+1)^A004736(∑[n+2])`
-/

namespace A058412.P5756020052766628171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058411 (n + 1) : ℚ) ^ (A004736 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A058412.P5756020052766628171

/-!
# A058413: Numbers k such that k^2 contains only digits {0,1,4}, not ending with zero.

The programs for A058413, there is no canonical definition to state claims against.
-/

/-! ## A058413.P8245790162434375368

`sqrt(A058414(n+1))`
-/

namespace A058413.P8245790162434375368
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058414 (n + 1) : ℝ)

end

end A058413.P8245790162434375368

/-! ## A058413.P17550735153553631112

`root(A058414(n+1), gcd(2, A058403(n)))`
-/

namespace A058413.P17550735153553631112
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058414 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A058403 n) : ℝ))

end

end A058413.P17550735153553631112

/-! ## A058413.P16085429037222156343

`root(A058414(n+1), gcd(4, A069484(n+2)))`
-/

namespace A058413.P16085429037222156343
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058414 (n + 1) : ℝ) ^ (1 / (Int.gcd 4 (A069484 (n + 2)) : ℝ))

end

end A058413.P16085429037222156343

/-! ## A058413.P5044061246411393008

`A058414(n+1)^2^A008683(A020484(n))`
-/

namespace A058413.P5044061246411393008
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058414 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ) : ℝ)

end

end A058413.P5044061246411393008

/-! ## A058413.P9177350459187308557

`root(A058414(n+1), A000051(n)-A000225(n))`
-/

namespace A058413.P9177350459187308557
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058414 (n + 1) : ℝ) ^ (1 / (A000051 n - A000225 n : ℝ))

end

end A058413.P9177350459187308557

/-!
# A058414: Squares composed of digits {0,1,4}, not ending with zero.

The programs for A058414, there is no canonical definition to state claims against.
-/

/-! ## A058414.P3979405884778162103

`A058413(n+1)²`
-/

namespace A058414.P3979405884778162103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058413 (n + 1) ^ 2

end

end A058414.P3979405884778162103

/-! ## A058414.P16467243078067558767

`A058413(n+1)^(2-A000007(n))`
-/

namespace A058414.P16467243078067558767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058413 (n + 1) : ℚ) ^ (2 - A000007 n : ℤ)

end

end A058414.P16467243078067558767

/-! ## A058414.P16342724832098755402

`A058413(n+1)^A004736(∑[n+2])`
-/

namespace A058414.P16342724832098755402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058413 (n + 1) : ℚ) ^ (A004736 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A058414.P16342724832098755402

/-! ## A058414.P11558072418338839152

`A058413(n+1)^A020639(4*(n+1))`
-/

namespace A058414.P11558072418338839152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058413 (n + 1) : ℚ) ^ (A020639 (4 * (n + 1)) : ℤ)

end

end A058414.P11558072418338839152

/-! ## A058414.P777802237399510115

`A058413(n+1)^A014963(A001316(n))`
-/

namespace A058414.P777802237399510115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058413 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A058414.P777802237399510115

/-! ## A058414.P14641575605149893886

`A058413(n+1)^A034444(A006530(n+1))`
-/

namespace A058414.P14641575605149893886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058413 (n + 1) : ℚ) ^ (A034444 (A006530 (n + 1)).toNat : ℤ)

end

end A058414.P14641575605149893886

/-! ## A058414.P11179554768715391945

`A058413(n+1)^A000005(A230775(n+1))`
-/

namespace A058414.P11179554768715391945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058413 (n + 1) : ℚ) ^ (A000005 (A230775 (n + 1)).toNat : ℤ)

end

end A058414.P11179554768715391945

/-! ## A058414.P4227210563222919346

`A058413(n+1)^A034444(A020639(n+2))`
-/

namespace A058414.P4227210563222919346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058413 (n + 1) : ℚ) ^ (A034444 (A020639 (n + 2)).toNat : ℤ)

end

end A058414.P4227210563222919346

/-! ## A058414.P8075545717725880098

`A058413(n+1)^A000005(A204911(2*n+1))`
-/

namespace A058414.P8075545717725880098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058413 (n + 1) : ℚ) ^ (A000005 (A204911 (2 * n + 1)).toNat : ℤ)

end

end A058414.P8075545717725880098

/-!
# A058416: 

The programs for A058416, there is no canonical definition to state claims against.
-/

/-! ## A058416.P16295317096054630712

`A058415(n+1)²`
-/

namespace A058416.P16295317096054630712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058415 (n + 1) ^ 2

end

end A058416.P16295317096054630712

/-!
# A058417: Numbers k such that k^2 contains only digits {0,1,6}, not ending with zero.

The programs for A058417, there is no canonical definition to state claims against.
-/

/-! ## A058417.P10111027009064377449

`sqrt(A058418(n+1))`
-/

namespace A058417.P10111027009064377449
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058418 (n + 1) : ℝ)

end

end A058417.P10111027009064377449

/-! ## A058417.P11172153490830410822

`A058418(n+1)^(n/A004277(n))`
-/

namespace A058417.P11172153490830410822
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058418 (n + 1) : ℝ) ^ ((n : ℚ) / (A004277 n : ℚ) : ℝ)

end

end A058417.P11172153490830410822

/-! ## A058417.P1131502936618805447

`root(A058418(n+1), A001316(A001316(n)))`
-/

namespace A058417.P1131502936618805447
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058418 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A058417.P1131502936618805447

/-! ## A058417.P7662639169772349256

`A058418(n+1)^(A058411(n+1)/A058441(n+1))`
-/

namespace A058417.P7662639169772349256
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058418 (n + 1) : ℝ) ^ ((A058411 (n + 1) : ℚ) / (A058441 (n + 1) : ℚ) : ℝ)

end

end A058417.P7662639169772349256

/-!
# A058418: Squares composed of digits {0,1,6}, not ending with zero.

The programs for A058418, there is no canonical definition to state claims against.
-/

/-! ## A058418.P13336177171374837751

`A058417(n+1)²`
-/

namespace A058418.P13336177171374837751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058417 (n + 1) ^ 2

end

end A058418.P13336177171374837751

/-! ## A058418.P10754438107466272900

`record[A058417(A236858(n))²]`
-/

namespace A058418.P10754438107466272900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058417 (A236858 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058418.P10754438107466272900

/-! ## A058418.P321242756380158831

`A058417(n+1)^A001511(A017137(n))`
-/

namespace A058418.P321242756380158831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058417 (n + 1) : ℚ) ^ (A001511 (A017137 n).toNat : ℤ)

end

end A058418.P321242756380158831

/-! ## A058418.P8930182284808599084

`record[A058417(A236858(n))]*A058417(n+1)`
-/

namespace A058418.P8930182284808599084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058417 (A236858 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A058417 (n + 1)

end

end A058418.P8930182284808599084

/-!
# A058421: Numbers k such that k^2 contains only digits {0,1,8}, not ending with zero.

The programs for A058421, there is no canonical definition to state claims against.
-/

/-! ## A058421.P17364652841865019060

`sqrt(A058422(n+1))`
-/

namespace A058421.P17364652841865019060
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058422 (n + 1) : ℝ)

end

end A058421.P17364652841865019060

/-! ## A058421.P16088912482000328763

`root(A058422(n+1), ratio[A000079(n)])`
-/

namespace A058421.P16088912482000328763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058422 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A058421.P16088912482000328763

/-! ## A058421.P13159643894362376772

`A058422(n+1)^(A057427(n)/2)`
-/

namespace A058421.P13159643894362376772
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058422 (n + 1) : ℝ) ^ ((A057427 n : ℚ) / 2 : ℝ)

end

end A058421.P13159643894362376772

/-!
# A058422: Squares composed of digits {0,1,8}, not ending with zero.

The programs for A058422, there is no canonical definition to state claims against.
-/

/-! ## A058422.P7927602916819249560

`A058421(n+1)²`
-/

namespace A058422.P7927602916819249560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058421 (n + 1) ^ 2

end

end A058422.P7927602916819249560

/-! ## A058422.P11277776838235903052

`A058421(n+1)^ratio[A000079(n)]`
-/

namespace A058422.P11277776838235903052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058421 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A058422.P11277776838235903052

/-! ## A058422.P16755299505068636286

`A058421(n+1)^A020639(4*(n+1))`
-/

namespace A058422.P16755299505068636286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058421 (n + 1) : ℚ) ^ (A020639 (4 * (n + 1)) : ℤ)

end

end A058422.P16755299505068636286

/-! ## A058422.P10944173682463424983

`A058421(n+1)^A000005(A215642(n+1))`
-/

namespace A058422.P10944173682463424983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058421 (n + 1) : ℚ) ^ (A000005 (A215642 (n + 1)).toNat : ℤ)

end

end A058422.P10944173682463424983

/-! ## A058422.P11733384918051835383

`A058421(n+1)^A000005(A123318(n+1))`
-/

namespace A058422.P11733384918051835383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058421 (n + 1) : ℚ) ^ (A000005 (A123318 (n + 1)).toNat : ℤ)

end

end A058422.P11733384918051835383

/-!
# A058423: Numbers k such that k^2 contains only digits {0,2,4}, not ending with zero.

The programs for A058423, there is no canonical definition to state claims against.
-/

/-! ## A058423.P14306491273906950145

`sqrt(A058424(n+1))`
-/

namespace A058423.P14306491273906950145
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058424 (n + 1) : ℝ)

end

end A058423.P14306491273906950145

/-! ## A058423.P6997889790411161380

`A058424(n+1)^(A058411(n+1)/A058441(n+1))`
-/

namespace A058423.P6997889790411161380
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058424 (n + 1) : ℝ) ^ ((A058411 (n + 1) : ℚ) / (A058441 (n + 1) : ℚ) : ℝ)

end

end A058423.P6997889790411161380

/-!
# A058424: Squares composed of digits {0,2,4}, not ending with zero.

The programs for A058424, there is no canonical definition to state claims against.
-/

/-! ## A058424.P13350608164659506065

`A058423(n+1)²`
-/

namespace A058424.P13350608164659506065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058423 (n + 1) ^ 2

end

end A058424.P13350608164659506065

/-! ## A058424.P6155999950604110249

`A058423(n+1)^p?[A030599(n+1)]`
-/

namespace A058424.P6155999950604110249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030599 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058423 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A058424.P6155999950604110249

/-! ## A058424.P13875612328018409794

`A058423(n+1)^A000005(A097050(n))`
-/

namespace A058424.P13875612328018409794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058423 (n + 1) : ℚ) ^ (A000005 (A097050 n).toNat : ℤ)

end

end A058424.P13875612328018409794

/-! ## A058424.P4120156059034110347

`A058423(n+1)^A006126(A067169(n))`
-/

namespace A058424.P4120156059034110347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058423 (n + 1) : ℚ) ^ (A006126 (A067169 (n + 11)).toNat : ℤ)

end

end A058424.P4120156059034110347

/-! ## A058424.P5625549225006992240

`A058423(n+1)^A097050(A059117(n))`
-/

namespace A058424.P5625549225006992240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058423 (n + 1) : ℚ) ^ (A097050 (A059117 n).toNat : ℤ)

end

end A058424.P5625549225006992240

/-!
# A058425: Numbers k such that k^2 contains only digits {0,2,5}, not ending with zero.

The programs for A058425, there is no canonical definition to state claims against.
-/

/-! ## A058425.P15910748985425128268

`sqrt(A058426(n+1))`
-/

namespace A058425.P15910748985425128268
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058426 (n + 1) : ℝ)

end

end A058425.P15910748985425128268

/-! ## A058425.P91398060231122188

`root(A058426(n+1), dr(A348646(n)))`
-/

namespace A058425.P91398060231122188
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058426 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A348646 n) : ℝ))

end

end A058425.P91398060231122188

/-! ## A058425.P16994595262018230024

`root(A058426(n+1), A020639(lcm(2, n+1)))`
-/

namespace A058425.P16994595262018230024
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058426 (n + 1) : ℝ) ^ (1 / (A020639 (Nat.lcm 2 (n + 1)) : ℝ))

end

end A058425.P16994595262018230024

/-! ## A058425.P7299616022072844301

`root(A058426(n+1), A060395(2*n))`
-/

namespace A058425.P7299616022072844301
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058426 (n + 1) : ℝ) ^ (1 / (A060395 (2 * n) : ℝ))

end

end A058425.P7299616022072844301

/-!
# A058426: Squares composed of digits {0,2,5}, not ending with zero.

The programs for A058426, there is no canonical definition to state claims against.
-/

/-! ## A058426.P9483475487415938209

`A058425(n+1)²`
-/

namespace A058426.P9483475487415938209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058425 (n + 1) ^ 2

end

end A058426.P9483475487415938209

/-! ## A058426.P5659667553006009711

`A058425(n+1)^A020639(4*(n+1))`
-/

namespace A058426.P5659667553006009711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058425 (n + 1) : ℚ) ^ (A020639 (4 * (n + 1)) : ℤ)

end

end A058426.P5659667553006009711

/-! ## A058426.P3179008674639567688

`A058425(n+1)^A000005(A230775(n+1))`
-/

namespace A058426.P3179008674639567688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058425 (n + 1) : ℚ) ^ (A000005 (A230775 (n + 1)).toNat : ℤ)

end

end A058426.P3179008674639567688

/-! ## A058426.P1065312460156467793

`A058425(n+1)^A034444(A020639(n+2))`
-/

namespace A058426.P1065312460156467793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058425 (n + 1) : ℚ) ^ (A034444 (A020639 (n + 2)).toNat : ℤ)

end

end A058426.P1065312460156467793

/-! ## A058426.P17458691005376673680

`A058425(n+1)^A006530(Δ[A003605(n+1)]+1)`
-/

namespace A058426.P17458691005376673680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058425 (n + 1) : ℚ) ^ (A006530 (f1 (n + 1) - f1 n + 1).toNat : ℤ)

end

end A058426.P17458691005376673680

/-! ## A058426.P12926658016343668889

`A058425(n+1)^A000005(A204911(2*n+1))`
-/

namespace A058426.P12926658016343668889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058425 (n + 1) : ℚ) ^ (A000005 (A204911 (2 * n + 1)).toNat : ℤ)

end

end A058426.P12926658016343668889

/-! ## A058426.P18397904234025653197

`A058425(n+1)^A058399(∑[n+2])`
-/

namespace A058426.P18397904234025653197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058425 (n + 1) : ℚ) ^ (A058399 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A058426.P18397904234025653197

/-! ## A058426.P9294407560710818191

`A058425(n+1)^A004736(∑[n+2])`
-/

namespace A058426.P9294407560710818191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058425 (n + 1) : ℚ) ^ (A004736 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A058426.P9294407560710818191

/-! ## A058426.P4469521559573013845

`A058425(n+1)^A000005(A281290(n+1))`
-/

namespace A058426.P4469521559573013845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058425 (n + 1) : ℚ) ^ (A000005 (A281290 (n + 1)).toNat : ℤ)

end

end A058426.P4469521559573013845

/-!
# A058427: Numbers k such that k^2 contains only digits {0,2,9}, not ending with zero.

The programs for A058427, there is no canonical definition to state claims against.
-/

/-! ## A058427.P9647737709881990790

`sqrt(A058428(n+1))`
-/

namespace A058427.P9647737709881990790
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058428 (n + 1) : ℝ)

end

end A058427.P9647737709881990790

/-! ## A058427.P6500477242636461903

`root(A058428(n+1), p?[A003652(n+2)])`
-/

namespace A058427.P6500477242636461903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003652 (n + 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058428 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A058427.P6500477242636461903

/-! ## A058427.P2319832340778922898

`A058428(n+1)^2^A008683(A003629(n+1))`
-/

namespace A058427.P2319832340778922898
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058428 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ) : ℝ)

end

end A058427.P2319832340778922898

/-! ## A058427.P5056007362668096273

`A058428(n+1)^(A058411(n+1)/A058441(n+1))`
-/

namespace A058427.P5056007362668096273
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058428 (n + 1) : ℝ) ^ ((A058411 (n + 1) : ℚ) / (A058441 (n + 1) : ℚ) : ℝ)

end

end A058427.P5056007362668096273

/-!
# A058428: Squares composed of digits {0,2,9}, not ending with zero.

The programs for A058428, there is no canonical definition to state claims against.
-/

/-! ## A058428.P8610079870074266077

`A058427(n+1)²`
-/

namespace A058428.P8610079870074266077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058427 (n + 1) ^ 2

end

end A058428.P8610079870074266077

/-! ## A058428.P13646025120541846307

`A058427(n+1)^A000122(A008459(n))`
-/

namespace A058428.P13646025120541846307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058427 (n + 1) : ℚ) ^ (A000122 (A008459 n).toNat : ℤ)

end

end A058428.P13646025120541846307

/-! ## A058428.P1027546925597789923

`A058427(n+1)^A006530(A011782(n+4))`
-/

namespace A058428.P1027546925597789923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058427 (n + 1) : ℚ) ^ (A006530 (A011782 (n + 4)).toNat : ℤ)

end

end A058428.P1027546925597789923

/-! ## A058428.P41437150795853907

`A058427(n+1)^A219704(abs(2-A173740(n)))`
-/

namespace A058428.P41437150795853907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058427 (n + 1) : ℚ) ^ (A219704 |2 - A173740 n|.toNat : ℤ)

end

end A058428.P41437150795853907

/-! ## A058428.P11419736308803185953

`A058427(n+1)^A219704(ceil(A109128(n)/2))`
-/

namespace A058428.P11419736308803185953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058427 (n + 1) : ℚ) ^ (A219704 ⌈(A109128 n : ℚ) / 2⌉.toNat : ℤ)

end

end A058428.P11419736308803185953

/-!
# A058430: 

The programs for A058430, there is no canonical definition to state claims against.
-/

/-! ## A058430.P11176403677831517246

`A058429(n+1)²`
-/

namespace A058430.P11176403677831517246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058429 (n + 1) ^ 2

end

end A058430.P11176403677831517246

/-! ## A058430.P9371803558562243268

`A058429(n+1)^A000005(A058383(n+1))`
-/

namespace A058430.P9371803558562243268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058429 (n + 1) : ℚ) ^ (A000005 (A058383 (n + 1)).toNat : ℤ)

end

end A058430.P9371803558562243268

/-!
# A058435: Numbers k such that k^2 contains only digits {0,4,5}, not ending with zero.

The programs for A058435, there is no canonical definition to state claims against.
-/

/-! ## A058435.P18212460435099139704

`sqrt(A058436(n+1))`
-/

namespace A058435.P18212460435099139704
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058436 (n + 1) : ℝ)

end

end A058435.P18212460435099139704

/-! ## A058435.P6067686047299421611

`root(A058436(n+1), ratio[A000079(n)])`
-/

namespace A058435.P6067686047299421611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058436 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A058435.P6067686047299421611

/-! ## A058435.P13352655644219326650

`root(A058436(n+1), p?[A025461(n)])`
-/

namespace A058435.P13352655644219326650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058436 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A058435.P13352655644219326650

/-! ## A058435.P13871260954546125920

`root(A058436(n+1), p?[A003652(n+2)])`
-/

namespace A058435.P13871260954546125920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003652 (n + 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058436 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A058435.P13871260954546125920

/-! ## A058435.P10233383381852722731

`A058436(n+1)^(A058411(n+1)/A058441(n+1))`
-/

namespace A058435.P10233383381852722731
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058436 (n + 1) : ℝ) ^ ((A058411 (n + 1) : ℚ) / (A058441 (n + 1) : ℚ) : ℝ)

end

end A058435.P10233383381852722731

/-!
# A058436: Squares composed of digits {0,4,5}, not ending with zero.

The programs for A058436, there is no canonical definition to state claims against.
-/

/-! ## A058436.P9656472673879819576

`A058435(n+1)²`
-/

namespace A058436.P9656472673879819576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058435 (n + 1) ^ 2

end

end A058436.P9656472673879819576

/-! ## A058436.P11354250881864396724

`A058435(n+1)^A000005(A058383(n+1))`
-/

namespace A058436.P11354250881864396724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058435 (n + 1) : ℚ) ^ (A000005 (A058383 (n + 1)).toNat : ℤ)

end

end A058436.P11354250881864396724

/-! ## A058436.P16144536425779367568

`A058435(n+1)^A058435(A131299(n))`
-/

namespace A058436.P16144536425779367568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058435 (n + 1) : ℚ) ^ (A058435 (A131299 n).toNat : ℤ)

end

end A058436.P16144536425779367568

/-!
# A058437: Numbers k such that k^2 contains only digits {0,4,6}, not ending with zero.

The programs for A058437, there is no canonical definition to state claims against.
-/

/-! ## A058437.P3196114765728572046

`sqrt(A058438(n+1))`
-/

namespace A058437.P3196114765728572046
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058438 (n + 1) : ℝ)

end

end A058437.P3196114765728572046

/-! ## A058437.P6758786815379615850

`root(A058438(n+1), ratio[A000079(n)])`
-/

namespace A058437.P6758786815379615850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058438 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A058437.P6758786815379615850

/-!
# A058438: Squares composed of digits {0,4,6}, not ending with zero.

The programs for A058438, there is no canonical definition to state claims against.
-/

/-! ## A058438.P14173979372173386240

`A058437(n+1)²`
-/

namespace A058438.P14173979372173386240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058437 (n + 1) ^ 2

end

end A058438.P14173979372173386240

/-! ## A058438.P844900025629325741

`A058437(n+1)^A080425(3*n+4)`
-/

namespace A058438.P844900025629325741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058437 (n + 1) : ℚ) ^ (A080425 (3 * n + 4) : ℤ)

end

end A058438.P844900025629325741

/-! ## A058438.P15418581530795781786

`A058437(n+1)^A168361(A099375(n))`
-/

namespace A058438.P15418581530795781786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058437 (n + 1) : ℚ) ^ (A168361 (A099375 n).toNat : ℤ)

end

end A058438.P15418581530795781786

/-!
# A058441: Numbers k such that k^2 contains only digits {0,4,8}, not ending with zero.

The programs for A058441, there is no canonical definition to state claims against.
-/

/-! ## A058441.P14426608905482615645

`sqrt(A058442(n+1))`
-/

namespace A058441.P14426608905482615645
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058442 (n + 1) : ℝ)

end

end A058441.P14426608905482615645

/-! ## A058441.P17039043620117447977

`2*A058411(n+1)`
-/

namespace A058441.P17039043620117447977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058411 (n + 1)

end

end A058441.P17039043620117447977

/-! ## A058441.P12943612661701827168

`lcm(2, A058411(A000027(n+1)))`
-/

namespace A058441.P12943612661701827168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A058411 (A000027 (n + 1)).toNat)

end

end A058441.P12943612661701827168

/-! ## A058441.P832180485566823221

`A058411(n+1)+A058411(-xor(n, -1))`
-/

namespace A058441.P832180485566823221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058411 (n + 1) + A058411 (-Int.xor (n : ℤ) (-1)).toNat

end

end A058441.P832180485566823221

/-! ## A058441.P554445901983640600

`root(A058442(n+1), A001316(A001316(n)))`
-/

namespace A058441.P554445901983640600
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058442 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A058441.P554445901983640600

/-! ## A058441.P17918712557700969693

`A058411(A000027(n+1))+A058411(n+1)`
-/

namespace A058441.P17918712557700969693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058411 (A000027 (n + 1)).toNat + A058411 (n + 1)

end

end A058441.P17918712557700969693

/-! ## A058441.P13919503191889531804

`lcm(A000005(A078494(n+1)), A058411(n+1))`
-/

namespace A058441.P13919503191889531804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A078494 (n + 1)).toNat) (A058411 (n + 1))

end

end A058441.P13919503191889531804

/-! ## A058441.P10676943521713057174

`2*sqrt(A058412(n+1))`
-/

namespace A058441.P10676943521713057174
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A058412 (n + 1) : ℝ)

end

end A058441.P10676943521713057174

/-! ## A058441.P16697319045669402116

`A058411(n+1)+A058412(n+1)/A058411(n+1)`
-/

namespace A058441.P16697319045669402116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058411 (n + 1) : ℚ) + (A058412 (n + 1) : ℚ) / (A058411 (n + 1) : ℚ)

end

end A058441.P16697319045669402116

/-!
# A058442: Squares composed of digits {0,4,8}, not ending with zero.

The programs for A058442, there is no canonical definition to state claims against.
-/

/-! ## A058442.P15561358573099184897

`A058441(n+1)²`
-/

namespace A058442.P15561358573099184897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058441 (n + 1) ^ 2

end

end A058442.P15561358573099184897

/-! ## A058442.P17545991699614125469

`(2*A058411(n+1))²`
-/

namespace A058442.P17545991699614125469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A058411 (n + 1)) ^ 2

end

end A058442.P17545991699614125469

/-! ## A058442.P14940509176553994399

`2*A058411(n+1)*A058441(n+1)`
-/

namespace A058442.P14940509176553994399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A058411 (n + 1) * A058441 (n + 1))

end

end A058442.P14940509176553994399

/-! ## A058442.P3521641847257964792

`A058441(n+1)^A020639(4*(n+1))`
-/

namespace A058442.P3521641847257964792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058441 (n + 1) : ℚ) ^ (A020639 (4 * (n + 1)) : ℤ)

end

end A058442.P3521641847257964792

/-! ## A058442.P5879695949190894385

`(A058411(A000027(n+1))+A058411(n+1))²`
-/

namespace A058442.P5879695949190894385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A058411 (A000027 (n + 1)).toNat + A058411 (n + 1)) ^ 2

end

end A058442.P5879695949190894385

/-! ## A058442.P11930980277559131772

`4*A058412(n+1)`
-/

namespace A058442.P11930980277559131772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A058412 (n + 1)

end

end A058442.P11930980277559131772

/-! ## A058442.P17076113784711654948

`lcm(4, A058412(A000027(n+1)))`
-/

namespace A058442.P17076113784711654948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A058412 (A000027 (n + 1)).toNat)

end

end A058442.P17076113784711654948

/-! ## A058442.P9012387606655328201

`lcm(A058412(n+1), A088899(A088899(n+1)))`
-/

namespace A058442.P9012387606655328201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A058412 (n + 1)) (A088899 (A088899 (n + 1)).toNat)

end

end A058442.P9012387606655328201

/-! ## A058442.P8946334221466735814

`(A058411(n+1)+A058412(n+1)/A058411(n+1))²`
-/

namespace A058442.P8946334221466735814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A058411 (n + 1) : ℚ) + (A058412 (n + 1) : ℚ) / (A058411 (n + 1) : ℚ)) ^ 2

end

end A058442.P8946334221466735814

/-! ## A058442.P6664426599810070959

`A058441(n+1)^A004736(∑[n+2])`
-/

namespace A058442.P6664426599810070959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058441 (n + 1) : ℚ) ^ (A004736 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A058442.P6664426599810070959

/-!
# A058443: Numbers k such that k^2 contains only digits {0,4,9}, not ending with zero.

The programs for A058443, there is no canonical definition to state claims against.
-/

/-! ## A058443.P17468181108841342010

`sqrt(A058444(n+1))`
-/

namespace A058443.P17468181108841342010
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058444 (n + 1) : ℝ)

end

end A058443.P17468181108841342010

/-! ## A058443.P1618424293280701388

`root(A058444(n+1), 2)*A001222(A106817(n+1))`
-/

namespace A058443.P1618424293280701388
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058444 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A001222 (A106817 (n + 1)).toNat : ℝ)

end

end A058443.P1618424293280701388

/-! ## A058443.P12631877277507977584

`root(A058444(n+1), 2)*A001222(A106929(n+1))`
-/

namespace A058443.P12631877277507977584
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058444 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A001222 (A106929 (n + 1)).toNat : ℝ)

end

end A058443.P12631877277507977584

/-! ## A058443.P15701121202533907218

`root(A058444(n+1), 2)*A001222(A137812(n+1))`
-/

namespace A058443.P15701121202533907218
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058444 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A001222 (A137812 (n + 1)).toNat : ℝ)

end

end A058443.P15701121202533907218

/-! ## A058443.P17558123266919669102

`root(A058444(n+1), 2)*A001222(A308788(n+1))`
-/

namespace A058443.P17558123266919669102
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A058444 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A001222 (A308788 (n + 1)).toNat : ℝ)

end

end A058443.P17558123266919669102

/-!
# A058444: Squares composed of digits {0,4,9}, not ending with zero.

The programs for A058444, there is no canonical definition to state claims against.
-/

/-! ## A058444.P2261735250726951322

`A058443(n+1)²`
-/

namespace A058444.P2261735250726951322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058443 (n + 1) ^ 2

end

end A058444.P2261735250726951322

/-! ## A058444.P16295359607727852842

`A058443(n+1)^(2%A101188(n+1))`
-/

namespace A058444.P16295359607727852842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058443 (n + 1) : ℚ) ^ (Int.tmod 2 (A101188 (n + 1)) : ℤ)

end

end A058444.P16295359607727852842

/-! ## A058444.P1642916600707280969

`A058443(n+1)^A020639(A153494(n+1))`
-/

namespace A058444.P1642916600707280969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058443 (n + 1) : ℚ) ^ (A020639 (A153494 (n + 1)).toNat : ℤ)

end

end A058444.P1642916600707280969

/-! ## A058444.P17509293673454058534

`A058443(n+1)^A257773(A016526(n+1))`
-/

namespace A058444.P17509293673454058534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058443 (n + 1) : ℚ) ^ (A257773 (A016526 (n + 1)).toNat : ℤ)

end

end A058444.P17509293673454058534

/-! ## A058444.P2133888589891802108

`A058443(n+1)^A020639(A235792(n+1))`
-/

namespace A058444.P2133888589891802108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058443 (n + 1) : ℚ) ^ (A020639 (A235792 (n + 1)).toNat : ℤ)

end

end A058444.P2133888589891802108

/-!
# A058451: Numbers k such that k^2 contains only digits {0,6,9}, not ending with zero.

The programs for A058451, there is no canonical definition to state claims against.
-/

/-! ## A058451.P3452581270451569574

`sqrt(A058452(n+1))`
-/

namespace A058451.P3452581270451569574
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058452 (n + 1) : ℝ)

end

end A058451.P3452581270451569574

/-!
# A058452: Squares composed of digits {0,6,9}, not ending with zero.

The programs for A058452, there is no canonical definition to state claims against.
-/

/-! ## A058452.P9121811875272372831

`A058451(n+1)²`
-/

namespace A058452.P9121811875272372831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058451 (n + 1) ^ 2

end

end A058452.P9121811875272372831

/-!
# A058466: 

The programs for A058466, there is no canonical definition to state claims against.
-/

/-! ## A058466.P15064725190112419583

`A058465(n+1)²`
-/

namespace A058466.P15064725190112419583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058465 (n + 1) ^ 2

end

end A058466.P15064725190112419583

/-!
# A058468: 

The programs for A058468, there is no canonical definition to state claims against.
-/

/-! ## A058468.P8597671550367648488

`A058467(n+1)²`
-/

namespace A058468.P8597671550367648488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058467 (n + 1) ^ 2

end

end A058468.P8597671550367648488

/-!
# A058475: Total number of interior nodes in all series-parallel networks with n labeled edges, multiple edges not allowed.

The programs for A058475, there is no canonical definition to state claims against.
-/

/-! ## A058475.P379152286724499421

`A058406(n)+A058388(n)`
-/

namespace A058475.P379152286724499421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058406 n + A058388 n

end

end A058475.P379152286724499421

/-! ## A058475.P753225875437703088

`A058388(n)-A058406(n)*A260196(n)`
-/

namespace A058475.P753225875437703088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058388 n - A058406 n * A260196 n

end

end A058475.P753225875437703088

/-!
# A058476: Total number of multiple edges in all essentially parallel series-parallel networks with n labeled edges, multiple edges allowed.

The programs for A058476, there is no canonical definition to state claims against.
-/

/-! ## A058476.P18377518354188790235

`xor(A058477(n), A178334(A003415(n)))`
-/

namespace A058476.P18377518354188790235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058477 n) (A178334 (A003415 n).toNat)

end

end A058476.P18377518354188790235

/-! ## A058476.P3326164305593319971

`xor(A058477(n), A178334(A004526(n)))`
-/

namespace A058476.P3326164305593319971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058477 n) (A178334 (A004526 n).toNat)

end

end A058476.P3326164305593319971

/-! ## A058476.P3682661669822491994

`xor(A058477(n), A178334(n-A178334(n)))`
-/

namespace A058476.P3682661669822491994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058477 n) (A178334 ((n : ℤ) - A178334 n).toNat)

end

end A058476.P3682661669822491994

/-!
# A058477: Total number of multiple edges in all essentially series series-parallel networks with n labeled edges, multiple edges allowed.

The programs for A058477, there is no canonical definition to state claims against.
-/

/-! ## A058477.P17893251677738386249

`xor(char[A083221(n+2)], A058476(n))`
-/

namespace A058477.P17893251677738386249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083221 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A058476 n)

end

end A058477.P17893251677738386249

/-! ## A058477.P8874073003673225357

`xor(char[A002375(2*n+5)], A058476(n))`
-/

namespace A058477.P8874073003673225357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (2 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A058476 n)

end

end A058477.P8874073003673225357

/-! ## A058477.P4793237107094778337

`xor(A058476(n), A178334(A003415(n)))`
-/

namespace A058477.P4793237107094778337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058476 n) (A178334 (A003415 n).toNat)

end

end A058477.P4793237107094778337

/-! ## A058477.P10434413526762032604

`xor(A058476(n), A178334(A004526(n)))`
-/

namespace A058477.P10434413526762032604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058476 n) (A178334 (A004526 n).toNat)

end

end A058477.P10434413526762032604

/-! ## A058477.P16983596442606496518

`xor(A058476(n), A178334(n-A178334(n)))`
-/

namespace A058477.P16983596442606496518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058476 n) (A178334 ((n : ℤ) - A178334 n).toNat)

end

end A058477.P16983596442606496518

/-!
# A058478: Total number of interior nodes in all essentially series series-parallel networks with n labeled edges, multiple edges allowed.

The programs for A058478, there is no canonical definition to state claims against.
-/

/-! ## A058478.P10874305720598692385

`A058480(n)-A058479(n)`
-/

namespace A058478.P10874305720598692385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058480 n - A058479 n

end

end A058478.P10874305720598692385

/-! ## A058478.P7260222164650716089

`(n-1)*A000311(n)-A058479(n)`
-/

namespace A058478.P7260222164650716089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A000311 n - A058479 n

end

end A058478.P7260222164650716089

/-! ## A058478.P7164406577291290609

`A058480(n)+A057428(n)*A058479(n)`
-/

namespace A058478.P7164406577291290609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058480 n + A057428 n * A058479 n

end

end A058478.P7164406577291290609

/-! ## A058478.P6455716471659102439

`A000311(n)*A023443(n)-A058479(n)`
-/

namespace A058478.P6455716471659102439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000311 n * A023443 n - A058479 n

end

end A058478.P6455716471659102439

/-! ## A058478.P4717868913798298340

`A000311(n)*A023443(n)+A057428(n)*A058479(n)`
-/

namespace A058478.P4717868913798298340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000311 n * A023443 n + A057428 n * A058479 n

end

end A058478.P4717868913798298340

/-!
# A058479: Total number of interior nodes in all essentially parallel series-parallel networks with n labeled edges, multiple edges allowed.

The programs for A058479, there is no canonical definition to state claims against.
-/

/-! ## A058479.P14309932717571215648

`A058480(n)-A058478(n)`
-/

namespace A058479.P14309932717571215648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058480 n - A058478 n

end

end A058479.P14309932717571215648

/-! ## A058479.P10005816863753083572

`(n-1)*A000311(n)-A058478(n)`
-/

namespace A058479.P10005816863753083572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A000311 n - A058478 n

end

end A058479.P10005816863753083572

/-! ## A058479.P15481560732300632082

`A058480(n)%A058478(A233583(n+1))`
-/

namespace A058479.P15481560732300632082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058480 n) (A058478 (A233583 (n + 1)).toNat)

end

end A058479.P15481560732300632082

/-! ## A058479.P3567451722676175793

`A000311(n)*A023443(n)-A058478(n)`
-/

namespace A058479.P3567451722676175793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000311 n * A023443 n - A058478 n

end

end A058479.P3567451722676175793

/-! ## A058479.P17516810940353475755

`(A000311(n)*A023443(n))%A058478(A233583(n+1))`
-/

namespace A058479.P17516810940353475755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000311 n * A023443 n) (A058478 (A233583 (n + 1)).toNat)

end

end A058479.P17516810940353475755

/-! ## A058479.P3621358336541196348

`(A000311(n)*A259361(n²))%A058478(A233583(n+1))`
-/

namespace A058479.P3621358336541196348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000311 n * A259361 (n ^ 2)) (A058478 (A233583 (n + 1)).toNat)

end

end A058479.P3621358336541196348

/-!
# A058480: Total number of interior nodes in all series-parallel networks with n labeled edges, multiple edges allowed.

The programs for A058480, there is no canonical definition to state claims against.
-/

/-! ## A058480.P5796508349203179544

`(n-1)*A000311(n)`
-/

namespace A058480.P5796508349203179544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A000311 n

end

end A058480.P5796508349203179544

/-! ## A058480.P17699225240477767483

`A058479(n)+A058478(n)`
-/

namespace A058480.P17699225240477767483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058479 n + A058478 n

end

end A058480.P17699225240477767483

/-! ## A058480.P6309196201683667833

`A000311(n)*A023443(n)`
-/

namespace A058480.P6309196201683667833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000311 n * A023443 n

end

end A058480.P6309196201683667833

/-! ## A058480.P14853926760850681380

`abs(A000311(n)*A024000(n))`
-/

namespace A058480.P14853926760850681380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000311 n * A024000 n|

end

end A058480.P14853926760850681380

/-! ## A058480.P5478526050022459267

`A000311(n)*A259361(n²)`
-/

namespace A058480.P5478526050022459267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000311 n * A259361 (n ^ 2)

end

end A058480.P5478526050022459267

/-! ## A058480.P2419662982521692943

`A000311(n)*A289207(n+1)`
-/

namespace A058480.P2419662982521692943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000311 n * A289207 (n + 1)

end

end A058480.P2419662982521692943

/-!
# A058481: a(n) = 3^n - 2.

The programs for A058481, the canonical program `A058481.P14870397075544163787` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058481 has offset 1).

The definition of A058481 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(n+1)-2` (program `A058481.P14870397075544163787`, by `A058481.P14870397075544163787.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058481.P14870397075544163787

`3^(n+1)-2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058481

/-- `3^(n+1)-2` -/
def P14870397075544163787.Spec : Prop :=
  ∀ n, P14870397075544163787.a n = A058481 (n + 1)

theorem P14870397075544163787.correct : P14870397075544163787.Spec := by
  intro n
  simp only [A058481, Nat.add_sub_cancel]

end A058481

/-! ## A058481.P13243874417642619469

`ogf((1+3x)/(1-4x+3x^2))`
-/

namespace A058481.P13243874417642619469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -4, 3] n

end

end A058481.P13243874417642619469

namespace A058481

/-- `ogf((1+3x)/(1-4x+3x^2))` -/
def P13243874417642619469.Spec : Prop :=
  ∀ n, P13243874417642619469.a n = A058481 (n + 1)

end A058481

/-! ## A058481.P451638926251627403

`xor(1, 3*(3^n-1))`
-/

namespace A058481.P451638926251627403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (3 * ((3 ^ n : ℤ) - 1))

end

end A058481.P451638926251627403

namespace A058481

/-- `xor(1, 3*(3^n-1))` -/
def P451638926251627403.Spec : Prop :=
  ∀ n, P451638926251627403.a n = A058481 (n + 1)

end A058481

/-! ## A058481.P4918837396189180286

`∑[3*a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A058481.P4918837396189180286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058481.P4918837396189180286

namespace A058481

/-- `∑[3*a(n-1)]` -/
def P4918837396189180286.Spec : Prop :=
  ∀ n, (P4918837396189180286.a n : ℤ) = A058481 (n + 1)

end A058481

/-! ## A058481.P8961694537900666786

`record[3^abs(1-n)-2]`
-/

namespace A058481.P8961694537900666786
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058481.P8961694537900666786

namespace A058481

/-- `record[3^abs(1-n)-2]` -/
def P8961694537900666786.Spec : Prop :=
  ∀ n, P8961694537900666786.a n = (A058481 (n + 1) : ℚ)

end A058481

/-! ## A058481.P12843062185494154951

`abs(∑[lcm(2, 3^n)]-1)`
-/

namespace A058481.P12843062185494154951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1|

end

end A058481.P12843062185494154951

namespace A058481

/-- `abs(∑[lcm(2, 3^n)]-1)` -/
def P12843062185494154951.Spec : Prop :=
  ∀ n, P12843062185494154951.a n = A058481 (n + 1)

end A058481

/-! ## A058481.P5048595320915199803

`∑[Δ[3^n]-floor(acot(n))]`
-/

namespace A058481.P5048595320915199803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058481.P5048595320915199803

namespace A058481

/-- `∑[Δ[3^n]-floor(acot(n))]` -/
def P5048595320915199803.Spec : Prop :=
  ∀ n, P5048595320915199803.a n = A058481 (n + 1)

end A058481

/-! ## A058481.P14048207208916651490

`abs(3*a(n-1)+4)` with `a(0)=1`
-/

namespace A058481.P14048207208916651490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + 4

end

end A058481.P14048207208916651490

namespace A058481

/-- `abs(3*a(n-1)+4)` -/
def P14048207208916651490.Spec : Prop :=
  ∀ n, (P14048207208916651490.a n : ℤ) = A058481 (n + 1)

theorem P14048207208916651490.correct : P14048207208916651490.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A058481, Nat.add_sub_cancel, A058481.P14048207208916651490.a, A058481.P14870397075544163787.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A058481, Nat.add_sub_cancel, A058481.P14048207208916651490.a, A058481.P14870397075544163787.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A058481

/-! ## A058481.P2243685244815244847

`∑[3^n*ceil(atan(n+1))]`
-/

namespace A058481.P2243685244815244847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058481.P2243685244815244847

namespace A058481

/-- `∑[3^n*ceil(atan(n+1))]` -/
def P2243685244815244847.Spec : Prop :=
  ∀ n, P2243685244815244847.a n = A058481 (n + 1)

end A058481

/-! ## A058481.P273737192753995078

`3*(a(n-1)+4/3)` with `a(0)=1`
-/

namespace A058481.P273737192753995078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a (n - 1) + (4 : ℚ) / 3)

end

end A058481.P273737192753995078

namespace A058481

/-- `3*(a(n-1)+4/3)` -/
def P273737192753995078.Spec : Prop :=
  ∀ n, P273737192753995078.a n = (A058481 (n + 1) : ℚ)

theorem P273737192753995078.correct : P273737192753995078.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A058481, Nat.add_sub_cancel, A058481.P273737192753995078.a, A058481.P14870397075544163787.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A058481, Nat.add_sub_cancel, A058481.P273737192753995078.a, A058481.P14870397075544163787.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A058481

/-! ## A058481.P11006424043871212335

`or(1, 3*(a(n-1)+1))` with `a(0)=1`
-/

namespace A058481.P11006424043871212335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (3 * (a (n - 1) + 1))

end

end A058481.P11006424043871212335

namespace A058481

/-- `or(1, 3*(a(n-1)+1))` -/
def P11006424043871212335.Spec : Prop :=
  ∀ n, (P11006424043871212335.a n : ℤ) = A058481 (n + 1)

end A058481

/-! ## A058481.P5073302996465624601

`3*(2-(2/3-a(n-1)))` with `a(0)=1`
-/

namespace A058481.P5073302996465624601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * (2 - ((2 : ℚ) / 3 - a (n - 1)))

end

end A058481.P5073302996465624601

namespace A058481

/-- `3*(2-(2/3-a(n-1)))` -/
def P5073302996465624601.Spec : Prop :=
  ∀ n, P5073302996465624601.a n = (A058481 (n + 1) : ℚ)

theorem P5073302996465624601.correct : P5073302996465624601.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A058481, Nat.add_sub_cancel, A058481.P5073302996465624601.a, A058481.P14870397075544163787.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A058481, Nat.add_sub_cancel, A058481.P5073302996465624601.a, A058481.P14870397075544163787.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A058481

/-! ## A058481.P7242168521313247322

`floor(4%(n+4)+3*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A058481.P7242168521313247322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 % (n + 4) + 3 * a (n - 1)

end

end A058481.P7242168521313247322

namespace A058481

/-- `floor(4%(n+4)+3*a(n-1))` -/
def P7242168521313247322.Spec : Prop :=
  ∀ n, (P7242168521313247322.a n : ℤ) = A058481 (n + 1)

end A058481

/-! ## A058481.P16008929124691285218

`floor(gcd(4, 4*n)+3*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A058481.P16008929124691285218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 4 (4 * n) + 3 * a (n - 1)

end

end A058481.P16008929124691285218

namespace A058481

/-- `floor(gcd(4, 4*n)+3*a(n-1))` -/
def P16008929124691285218.Spec : Prop :=
  ∀ n, (P16008929124691285218.a n : ℤ) = A058481 (n + 1)

end A058481

/-! ## A058481.P14772869139764817583

`floor(a(n-1)+2*(a(n-1)+2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A058481.P14772869139764817583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * (a (n - 1) + 2)

end

end A058481.P14772869139764817583

namespace A058481

/-- `floor(a(n-1)+2*(a(n-1)+2))` -/
def P14772869139764817583.Spec : Prop :=
  ∀ n, (P14772869139764817583.a n : ℤ) = A058481 (n + 1)

theorem P14772869139764817583.correct : P14772869139764817583.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A058481, Nat.add_sub_cancel, A058481.P14772869139764817583.a, A058481.P14870397075544163787.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A058481, Nat.add_sub_cancel, A058481.P14772869139764817583.a, A058481.P14870397075544163787.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A058481

/-! ## A058481.P6571708617055113379

`floor(4*a(n-1)-(a(n-1)-4))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A058481.P6571708617055113379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - (a (n - 1) - 4)

end

end A058481.P6571708617055113379

namespace A058481

/-- `floor(4*a(n-1)-(a(n-1)-4))` -/
def P6571708617055113379.Spec : Prop :=
  ∀ n, P6571708617055113379.a n = A058481 (n + 1)

theorem P6571708617055113379.correct : P6571708617055113379.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A058481, Nat.add_sub_cancel, A058481.P6571708617055113379.a, A058481.P14870397075544163787.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A058481, Nat.add_sub_cancel, A058481.P6571708617055113379.a, A058481.P14870397075544163787.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A058481

/-! ## A058481.P6255632254725862995

`(3*a(n-1)+4)*a(n-1)%2` with `a(0)=1`
-/

namespace A058481.P6255632254725862995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (3 * a (n - 1) + 4) * (a (n - 1) % 2)

end

end A058481.P6255632254725862995

namespace A058481

/-- `(3*a(n-1)+4)*a(n-1)%2` -/
def P6255632254725862995.Spec : Prop :=
  ∀ n, (P6255632254725862995.a n : ℤ) = A058481 (n + 1)

end A058481

/-! ## A058481.P10916556029964472234

`(3*a(n-1)+4)*gcd(2, a(n-1))` with `a(0)=1`
-/

namespace A058481.P10916556029964472234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (3 * a (n - 1) + 4) * Nat.gcd 2 (a (n - 1))

end

end A058481.P10916556029964472234

namespace A058481

/-- `(3*a(n-1)+4)*gcd(2, a(n-1))` -/
def P10916556029964472234.Spec : Prop :=
  ∀ n, (P10916556029964472234.a n : ℤ) = A058481 (n + 1)

end A058481

/-! ## A058481.P5951868248894486137

`floor(a(n-1)+a(n-1)+a(n-1)+4)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A058481.P5951868248894486137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 4))

end

end A058481.P5951868248894486137

namespace A058481

/-- `floor(a(n-1)+a(n-1)+a(n-1)+4)` -/
def P5951868248894486137.Spec : Prop :=
  ∀ n, (P5951868248894486137.a n : ℤ) = A058481 (n + 1)

theorem P5951868248894486137.correct : P5951868248894486137.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A058481, Nat.add_sub_cancel, A058481.P5951868248894486137.a, A058481.P14870397075544163787.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A058481, Nat.add_sub_cancel, A058481.P5951868248894486137.a, A058481.P14870397075544163787.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A058481

/-! ## A058481.P11396575530659228096

`∑[A099856(n)]`
-/

namespace A058481.P11396575530659228096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058481.P11396575530659228096

namespace A058481

/-- `∑[A099856(n)]` -/
def P11396575530659228096.Spec : Prop :=
  ∀ n, P11396575530659228096.a n = A058481 (n + 1)

end A058481

/-!
# A058482: Number of 3 X n binary matrices with no zero rows or columns.

The programs for A058482, the canonical program `A058482.P12276682187950633990` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058482 has offset 1).

The definition of A058482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058482.P12276682187950633990

`7^(n+1)-3*3^(n+1)+3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A058482

/-- `7^(n+1)-3*3^(n+1)+3` -/
def P12276682187950633990.Spec : Prop :=
  ∀ n, P12276682187950633990.a n = A058482 (n + 1)

theorem P12276682187950633990.correct : P12276682187950633990.Spec := by
  intro n
  simp only [A058482, Nat.add_sub_cancel]

end A058482

/-! ## A058482.P3175080851469519077

`xor(1, 3*a(n-1)-(7-4*7^n))` with `a(0)=1`
-/

namespace A058482.P3175080851469519077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (3 * a (n - 1) - (7 - (4 * 7 ^ n : ℤ)))

end

end A058482.P3175080851469519077

namespace A058482

/-- `xor(1, 3*a(n-1)-(7-4*7^n))` -/
def P3175080851469519077.Spec : Prop :=
  ∀ n, P3175080851469519077.a n = A058482 (n + 1)

end A058482

/-! ## A058482.P1501909757532374193

`A218695(A167614(n+1))`
-/

namespace A058482.P1501909757532374193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218695 (A167614 (n + 1)).toNat

end

end A058482.P1501909757532374193

namespace A058482

/-- `A218695(A167614(n+1))` -/
def P1501909757532374193.Spec : Prop :=
  ∀ n, P1501909757532374193.a n = A058482 (n + 1)

end A058482

/-! ## A058482.P15601587763547527325

`A218695(A373663(n+1))`
-/

namespace A058482.P15601587763547527325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218695 (A373663 (n + 1)).toNat

end

end A058482.P15601587763547527325

namespace A058482

/-- `A218695(A373663(n+1))` -/
def P15601587763547527325.Spec : Prop :=
  ∀ n, P15601587763547527325.a n = A058482 (n + 1)

end A058482

/-! ## A058482.P14718948894101551629

`A218695(A034856(n+2))`
-/

namespace A058482.P14718948894101551629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218695 (A034856 (n + 2)).toNat

end

end A058482.P14718948894101551629

namespace A058482

/-- `A218695(A034856(n+2))` -/
def P14718948894101551629.Spec : Prop :=
  ∀ n, P14718948894101551629.a n = A058482 (n + 1)

end A058482

/-!
# A058483: McKay-Thompson series of class 12E for the Monster group.

The programs for A058483, there is no canonical definition to state claims against.
-/

/-! ## A058483.P14471788911983088665

`A033999(n)*A112162(n)`
-/

namespace A058483.P14471788911983088665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112162 n

end

end A058483.P14471788911983088665

/-!
# A058484: McKay-Thompson series of class 12F for Monster.

The programs for A058484, there is no canonical definition to state claims against.
-/

/-! ## A058484.P457000014594740826

`A058485(n)+A058490(n)-A058492(n)`
-/

namespace A058484.P457000014594740826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058485 n + (A058490 n - A058492 n)

end

end A058484.P457000014594740826

/-! ## A058484.P13895806480981319088

`(A058490(n)+A058206(n))/2`
-/

namespace A058484.P13895806480981319088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058490 n + A058206 n : ℚ) / 2

end

end A058484.P13895806480981319088

/-! ## A058484.P17955896593487560400

`(A058490(n)+A058206(n))*2^A008683(A007918(n))`
-/

namespace A058484.P17955896593487560400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058490 n + A058206 n : ℚ) * (2 : ℚ) ^ (A008683 (A007918 n).toNat : ℤ)

end

end A058484.P17955896593487560400

/-! ## A058484.P11356120740267030991

`(A058490(n)+A058206(n))*2^A008683(A151800(n))`
-/

namespace A058484.P11356120740267030991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058490 n + A058206 n : ℚ) * (2 : ℚ) ^ (A008683 (A151800 n).toNat : ℤ)

end

end A058484.P11356120740267030991

/-! ## A058484.P14000793336877722453

`A058485(n)+A058492(n)-A058489(n)`
-/

namespace A058484.P14000793336877722453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058485 n + (A058492 n - A058489 n)

end

end A058484.P14000793336877722453

/-!
# A058485: McKay-Thompson series of class 12G for Monster.

The programs for A058485, there is no canonical definition to state claims against.
-/

/-! ## A058485.P11572138852722109735

`A058206(n)+A058492(n)-A058484(n)`
-/

namespace A058485.P11572138852722109735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058206 n + (A058492 n - A058484 n)

end

end A058485.P11572138852722109735

/-! ## A058485.P12325170921977081773

`A058484(n)+A058492(n)-A058490(n)`
-/

namespace A058485.P12325170921977081773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058484 n + (A058492 n - A058490 n)

end

end A058485.P12325170921977081773

/-! ## A058485.P11391465957848535115

`(A058489(n)+A058206(n))/2`
-/

namespace A058485.P11391465957848535115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058489 n + A058206 n : ℚ) / 2

end

end A058485.P11391465957848535115

/-! ## A058485.P8425036619493465626

`A058484(n)+A058489(n)-A058492(n)`
-/

namespace A058485.P8425036619493465626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058484 n + (A058489 n - A058492 n)

end

end A058485.P8425036619493465626

/-!
# A058487: McKay-Thompson series of class 12I for the Monster group.

The programs for A058487, there is no canonical definition to state claims against.
-/

/-! ## A058487.P7952013797478282865

`(-1)^n*A062243(n)`
-/

namespace A058487.P7952013797478282865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A062243 n

end

end A058487.P7952013797478282865

/-! ## A058487.P7522055211074599132

`A057079(n)*A112205(n)`
-/

namespace A058487.P7522055211074599132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A112205 n

end

end A058487.P7522055211074599132

/-! ## A058487.P16213771357260684976

`A112176(n)*A131713(n)`
-/

namespace A058487.P16213771357260684976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112176 n * A131713 n

end

end A058487.P16213771357260684976

/-! ## A058487.P3000399825989358910

`A062243(n)/A033999(n)`
-/

namespace A058487.P3000399825989358910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062243 n : ℚ) / (A033999 n : ℚ)

end

end A058487.P3000399825989358910

/-! ## A058487.P5685080764197347396

`(2-A057079(n)²)*A112176(n)`
-/

namespace A058487.P5685080764197347396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A057079 n ^ 2) * A112176 n

end

end A058487.P5685080764197347396

/-! ## A058487.P4332351368274195482

`A057079(4*n)*A112176(n)`
-/

namespace A058487.P4332351368274195482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (4 * n) * A112176 n

end

end A058487.P4332351368274195482

/-! ## A058487.P4897889985904514133

`A062243(n)*A186924(n)/A261320(n)`
-/

namespace A058487.P4897889985904514133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062243 n * A186924 n : ℚ) / (A261320 n : ℚ)

end

end A058487.P4897889985904514133

/-!
# A058488: Total number of interior nodes in all essentially parallel series-parallel networks with n unlabeled edges, multiple edges not allowed.

The programs for A058488, there is no canonical definition to state claims against.
-/

/-! ## A058488.P10218130311014037850

`ogf((x^2+2x^3+2x^5-2x^6+x^7)/(1-2x-2x^2))`
-/

namespace A058488.P10218130311014037850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 2, 0, 2, -2, 1] [1, -2, -2] n

end

end A058488.P10218130311014037850

/-! ## A058488.P1212583121697777324

`A132270(∑{d}[n+1, floor(cosh(#))]+2)`
-/

namespace A058488.P1212583121697777324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (∑ d ∈ Nat.divisors (f1 n), ⌊Real.cosh (d : ℝ)⌋ + 2).toNat

end

end A058488.P1212583121697777324

/-! ## A058488.P9140001807316303713

`A036234(a(n-1)*record[∑{p}[n, #]])` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A058488.P9140001807316303713
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A036234 (a (n - 1) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)).toNat

end

end A058488.P9140001807316303713

/-! ## A058488.P2310913165559123597

`A338228(A394285(n))`
-/

namespace A058488.P2310913165559123597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338228 (A394285 n).toNat

end

end A058488.P2310913165559123597

/-!
# A058489: McKay-Thompson series of class 12a for Monster.

The programs for A058489, there is no canonical definition to state claims against.
-/

/-! ## A058489.P17000349238930547446

`2*A058485(n)-A058206(n)`
-/

namespace A058489.P17000349238930547446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058485 n - A058206 n

end

end A058489.P17000349238930547446

/-! ## A058489.P10572832624938709658

`2*A058492(n)-A058490(n)`
-/

namespace A058489.P10572832624938709658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058492 n - A058490 n

end

end A058489.P10572832624938709658

/-! ## A058489.P14492352827489033033

`2*A058492(n)-abs(A156215(n))`
-/

namespace A058489.P14492352827489033033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058492 n - |A156215 n|

end

end A058489.P14492352827489033033

/-! ## A058489.P12624566192147221822

`A058485(n)+A058492(n)-A058484(n)`
-/

namespace A058489.P12624566192147221822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058485 n + (A058492 n - A058484 n)

end

end A058489.P12624566192147221822

/-! ## A058489.P5544506942629039935

`A058492(n)+A058492(n)-(2*A058484(n)-A058206(n))`
-/

namespace A058489.P5544506942629039935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058492 n + (A058492 n - (2 * A058484 n - A058206 n))

end

end A058489.P5544506942629039935

/-!
# A058490: Coefficients of replicable function number 12b.

The programs for A058490, there is no canonical definition to state claims against.
-/

/-! ## A058490.P5110088857903346616

`2*A058484(n)-A058206(n)`
-/

namespace A058490.P5110088857903346616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058484 n - A058206 n

end

end A058490.P5110088857903346616

/-! ## A058490.P9211017002366953171

`2*A058492(n)-A058489(n)`
-/

namespace A058490.P9211017002366953171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058492 n - A058489 n

end

end A058490.P9211017002366953171

/-! ## A058490.P18382773248157021245

`A058484(n)+A058492(n)-A058485(n)`
-/

namespace A058490.P18382773248157021245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058484 n + (A058492 n - A058485 n)

end

end A058490.P18382773248157021245

/-! ## A058490.P106548606384411328

`abs(A156215(n))`
-/

namespace A058490.P106548606384411328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156215 n|

end

end A058490.P106548606384411328

/-! ## A058490.P17559573654447860194

`A033999(n)*A156215(n)`
-/

namespace A058490.P17559573654447860194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A156215 n

end

end A058490.P17559573654447860194

/-! ## A058490.P6949164346565302780

`gcd(A000038(n), A156215(n))`
-/

namespace A058490.P6949164346565302780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A156215 n)

end

end A058490.P6949164346565302780

/-! ## A058490.P3733167506706191969

`lcm(A020985(n), A156215(n))`
-/

namespace A058490.P3733167506706191969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A156215 n)

end

end A058490.P3733167506706191969

/-! ## A058490.P11570995990246334812

`A054354(A054353(n+1))*A156215(n)`
-/

namespace A058490.P11570995990246334812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A054353 (n + 1)).toNat * A156215 n

end

end A058490.P11570995990246334812

/-!
# A058492: McKay-Thompson series of class 12d for Monster.

The programs for A058492, there is no canonical definition to state claims against.
-/

/-! ## A058492.P2743803197306943932

`A033999(n)*A058571(n)`
-/

namespace A058492.P2743803197306943932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A058571 n

end

end A058492.P2743803197306943932

/-! ## A058492.P15908198743798377

`A058571(n)/A033999(A330396(n))`
-/

namespace A058492.P15908198743798377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058571 n : ℚ) / (A033999 (A330396 n).toNat : ℚ)

end

end A058492.P15908198743798377

/-! ## A058492.P12440383519198913084

`A055975(A055975(n+1)+n)*A058571(n)`
-/

namespace A058492.P12440383519198913084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (A055975 (n + 1) + (n : ℤ)).toNat * A058571 n

end

end A058492.P12440383519198913084

/-! ## A058492.P18237021213667259195

`A055975(2*n+1)*A058571(n)`
-/

namespace A058492.P18237021213667259195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (2 * n + 1) * A058571 n

end

end A058492.P18237021213667259195

/-! ## A058492.P12272658062223541218

`(A058490(n)+A058489(n))/2`
-/

namespace A058492.P12272658062223541218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058490 n + A058489 n : ℚ) / 2

end

end A058492.P12272658062223541218

/-!
# A058493: McKay-Thompson series of class 12e for Monster.

The programs for A058493, there is no canonical definition to state claims against.
-/

/-! ## A058493.P12811379717339512235

`A049347(n)*A112149(n)`
-/

namespace A058493.P12811379717339512235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A112149 n

end

end A058493.P12811379717339512235

/-! ## A058493.P8523121317590980477

`A112149(n)*A257075(n)`
-/

namespace A058493.P8523121317590980477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112149 n * A257075 n

end

end A058493.P8523121317590980477

/-! ## A058493.P1317575384906875472

`Δ[A062756(n)]*A112149(n)`
-/

namespace A058493.P1317575384906875472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A112149 n

end

end A058493.P1317575384906875472

/-! ## A058493.P2676146629823315060

`A112149(n)*A343785(n+1)`
-/

namespace A058493.P2676146629823315060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112149 n * A343785 (n + 1)

end

end A058493.P2676146629823315060

/-! ## A058493.P12130001802525644605

`Δ[A133310(n)]*A112149(n)`
-/

namespace A058493.P12130001802525644605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A112149 n

end

end A058493.P12130001802525644605

/-!
# A058494: Total number of interior nodes in all essentially parallel series-parallel networks with n unlabeled edges, multiple edges allowed.

The programs for A058494, there is no canonical definition to state claims against.
-/

/-! ## A058494.P6426596925129796966

`A013939(A034836((n+1)!-char[1]))`
-/

namespace A058494.P6426596925129796966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (A034836 (Nat.factorial (n + 1) - (if ∃ j, f1 j = n then 1 else 0))).toNat

end

end A058494.P6426596925129796966

/-! ## A058494.P6091126317668755396

`A137212(n)+A086967(A283064(n))`
-/

namespace A058494.P6091126317668755396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137212 n + A086967 (A283064 n).toNat

end

end A058494.P6091126317668755396

/-!
# A058495: Total number of multiple edges in all essentially parallel series-parallel networks with n unlabeled edges, multiple edges allowed.

The programs for A058495, there is no canonical definition to state claims against.
-/

/-! ## A058495.P15005833017002745696

`round(sqrt(A144223(n)/12))`
-/

namespace A058495.P15005833017002745696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A144223 n : ℚ) / 12 : ℝ))

end

end A058495.P15005833017002745696

/-! ## A058495.P8316637353081118782

`Δ[ceil(A035053(n+3)/7)]`
-/

namespace A058495.P8316637353081118782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035053 (n + 3) : ℚ) / 7⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058495.P8316637353081118782

/-! ## A058495.P1154279444569480013

`ceil((2*(4^n-1)-n)/∑[A196355(n+1)])`
-/

namespace A058495.P1154279444569480013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * ((4 ^ n : ℤ) - 1) - (n : ℤ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌉

end

end A058495.P1154279444569480013

/-! ## A058495.P536702492686350049

`A004525(A118974(n+1))`
-/

namespace A058495.P536702492686350049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A118974 (n + 1)).toNat

end

end A058495.P536702492686350049

/-!
# A058498: Number of solutions to c(1)t(1) + ... + c(n)t(n) = 0, where c(i) = +-1 for i>1, c(1) = t(1) = 1, t(i) = triangular numbers (A000217).

The programs for A058498, there is no canonical definition to state claims against.
-/

/-! ## A058498.P3941744565956012433

`A158380(n+1)/2`
-/

namespace A058498.P3941744565956012433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158380 (n + 1) : ℚ) / 2

end

end A058498.P3941744565956012433

/-! ## A058498.P12739619333928471199

`ceil(A158380(A028242(2*n))/2)`
-/

namespace A058498.P12739619333928471199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158380 (A028242 (2 * n)).toNat : ℚ) / 2⌉

end

end A058498.P12739619333928471199

/-! ## A058498.P12152175326343181124

`2^A008683(A020483(n))*A158380(n+1)`
-/

namespace A058498.P12152175326343181124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A158380 (n + 1) : ℚ)

end

end A058498.P12152175326343181124

/-! ## A058498.P17727422337889576222

`2^A008683(A176045(n+1)-1)*A158380(n+1)`
-/

namespace A058498.P17727422337889576222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A176045 (n + 1) - 1).toNat : ℤ) * (A158380 (n + 1) : ℚ)

end

end A058498.P17727422337889576222

/-! ## A058498.P17537100988528916851

`Δ[∑[A158380(n)]/2]`
-/

namespace A058498.P17537100988528916851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158380 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058498.P17537100988528916851

/-! ## A058498.P10852120118678839475

`(n²%8)%3*A308682(n+1)`
-/

namespace A058498.P10852120118678839475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 % 8 % 3 : ℕ) : ℤ) * A308682 (n + 1)

end

end A058498.P10852120118678839475

/-! ## A058498.P3438562528548990946

`A131379(n+1)²*A308682(n+1)`
-/

namespace A058498.P3438562528548990946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131379 (n + 1) ^ 2 * A308682 (n + 1)

end

end A058498.P3438562528548990946

/-!
# A058499: G.f.: Product_{j>=1} (1 - x^j)^(-A000084(j)).

The programs for A058499, there is no canonical definition to state claims against.
-/

/-! ## A058499.P15293466108062686609

`A099176(n)-A035026(A076615(n))`
-/

namespace A058499.P15293466108062686609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099176 n - A035026 (A076615 n).toNat

end

end A058499.P15293466108062686609

/-! ## A058499.P15807588604948016723

`A265947(n)+A378383(n)+A374744(A365756(n))`
-/

namespace A058499.P15807588604948016723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265947 n + (A378383 n + A374744 (A365756 n).toNat)

end

end A058499.P15807588604948016723

/-! ## A058499.P15169802376313316562

`A325038(a(n-1)+2)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7`
-/

namespace A058499.P15169802376313316562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 7] fun n a =>
  A325038 (a (n - 1) + 2).toNat

end

end A058499.P15169802376313316562

