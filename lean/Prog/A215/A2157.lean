import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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
# A215700: Number of primes of the form 1 + b^1024 for 1 < b < 10^n.

The programs for A215700, there is no canonical definition to state claims against.
-/

/-! ## A215700.P11547420863032090028

`xor(n^abs(1-n), ∑[A003422(n)])`
-/

namespace A215700.P11547420863032090028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((n : ℚ) ^ (|1 - (n : ℤ)| : ℤ))) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215700.P11547420863032090028

/-!
# A215701: Number of primes of the form 1 + b^2048 for 1 < b < 10^n.

The programs for A215701, there is no canonical definition to state claims against.
-/

/-! ## A215701.P9082737887010119336

`floor((n/2)²)²+(n-3)*and(-4, n!)`
-/

namespace A215701.P9082737887010119336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋ ^ 2 + ((n : ℤ) - 3) * Int.land (-4) (Nat.factorial n : ℤ)

end

end A215701.P9082737887010119336

/-!
# A215702: Number of primes of the form 1 + b^4096 for 1 < b < 10^n.

The programs for A215702, there is no canonical definition to state claims against.
-/

/-! ## A215702.P10486224391000814693

`floor(4^∑[n/3]/6)`
-/

namespace A215702.P10486224391000814693
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℝ) ^ ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ) / 6⌋

end

end A215702.P10486224391000814693

/-!
# A215703: A(n,k) is the n-th derivative of f_k at x=1, and f_k is the k-th of all functions that are representable as x^x^...^x with m>=1 x's and parentheses inserted in all possible ways; square array A(n,k), n>=0, k>=1, read by antidiagonals.

The programs for A215703, there is no canonical definition to state claims against.
-/

/-! ## A215703.P8422191634894992090

`A287417(n)^A343422(n+1)`
-/

namespace A215703.P8422191634894992090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287417 n : ℚ) ^ (A343422 (n + 1) : ℤ)

end

end A215703.P8422191634894992090

/-! ## A215703.P18359162852830363980

`A287417(n)^Δ[A070217(n+1)]`
-/

namespace A215703.P18359162852830363980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070217 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287417 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A215703.P18359162852830363980

/-! ## A215703.P4866015917226134072

`A287417(n)+A070206(A110448(n))`
-/

namespace A215703.P4866015917226134072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287417 n + A070206 (A110448 n).toNat

end

end A215703.P4866015917226134072

/-! ## A215703.P18021369813287730921

`A287417(n)^A000034(A001037(n))`
-/

namespace A215703.P18021369813287730921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287417 n : ℚ) ^ (A000034 (A001037 n).toNat : ℤ)

end

end A215703.P18021369813287730921

/-! ## A215703.P7603060590489243857

`A287417(n)^A115362(A006597(n+1))`
-/

namespace A215703.P7603060590489243857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287417 n : ℚ) ^ (A115362 (A006597 (n + 1)).toNat : ℤ)

end

end A215703.P7603060590489243857

/-!
# A215704: n-th derivative of ((x^x)^x)^x at x=1.

The programs for A215704, there is no canonical definition to state claims against.
-/

/-! ## A215704.P14552450874278389495

`A215703(∑[n+5]+5)`
-/

namespace A215704.P14552450874278389495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A215704.P14552450874278389495

/-! ## A215704.P5307500031493185412

`A215703(A000217(n+5)-5)/A048479(n)%2`
-/

namespace A215704.P5307500031493185412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215703 (A000217 (n + 5) - 5).toNat : ℚ) / (Int.tmod (A048479 n) 2 : ℚ)

end

end A215704.P5307500031493185412

/-! ## A215704.P5273233915995247429

`A006519(2*n+1)*A215703(A000217(n+5)-5)`
-/

namespace A215704.P5273233915995247429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) * A215703 (A000217 (n + 5) - 5).toNat

end

end A215704.P5273233915995247429

/-! ## A215704.P10084431272144664782

`A028920(2*(n+1))*A215703(A000217(n+5)-5)`
-/

namespace A215704.P10084431272144664782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (2 * (n + 1)) * A215703 (A000217 (n + 5) - 5).toNat

end

end A215704.P10084431272144664782

/-! ## A215704.P2104089477887239393

`(A000027(n+1)-n)*A215703(A000217(n+5)-5)`
-/

namespace A215704.P2104089477887239393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) - (n : ℤ)) * A215703 (A000217 (n + 5) - 5).toNat

end

end A215704.P2104089477887239393

/-! ## A215704.P5736879536576201413

`A215703(A000217(n+5)-5)+A026650(n+1)%(n+1)`
-/

namespace A215704.P5736879536576201413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000217 (n + 5) - 5).toNat + Int.tmod (A026650 (n + 1)) (n + 1 : ℤ)

end

end A215704.P5736879536576201413

/-! ## A215704.P12585529155787629296

`A215703(A000217(n+5)-5)^A014963(A014574(n+1))`
-/

namespace A215704.P12585529155787629296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215703 (A000217 (n + 5) - 5).toNat : ℚ) ^ (A014963 (A014574 (n + 1)).toNat : ℤ)

end

end A215704.P12585529155787629296

/-! ## A215704.P10988557308379892433

`A215703(A000217(n+5)-5)^A033999(A000010(n+1))`
-/

namespace A215704.P10988557308379892433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215703 (A000217 (n + 5) - 5).toNat : ℚ) ^ (A033999 (A000010 (n + 1)).toNat : ℤ)

end

end A215704.P10988557308379892433

/-! ## A215704.P17376633188172871625

`A215703(A000217(n+5)-5)^A014963(A044364(n+1))`
-/

namespace A215704.P17376633188172871625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215703 (A000217 (n + 5) - 5).toNat : ℚ) ^ (A014963 (A044364 (n + 1)).toNat : ℤ)

end

end A215704.P17376633188172871625

/-! ## A215704.P4771224242911503582

`A215703(A000217(n+5)-5)+A008683(A001248(n+1))`
-/

namespace A215704.P4771224242911503582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000217 (n + 5) - 5).toNat + A008683 (A001248 (n + 1)).toNat

end

end A215704.P4771224242911503582

/-!
# A215705: n-th derivative of x^((x^x)^x) at x=1.

The programs for A215705, there is no canonical definition to state claims against.
-/

/-! ## A215705.P12719808336879790654

`A215703(A052905(n+4)-2)`
-/

namespace A215705.P12719808336879790654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A052905 (n + 4) - 2).toNat

end

end A215705.P12719808336879790654

/-! ## A215705.P4954753699916773787

`A215703(A000217(n+7)-7)`
-/

namespace A215705.P4954753699916773787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000217 (n + 7) - 7).toNat

end

end A215705.P4954753699916773787

/-! ## A215705.P10778732287692845193

`A215703(Δ[A026054(n+4)]-1)`
-/

namespace A215705.P10778732287692845193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (f1 (n + 1) - f1 n - 1).toNat

end

end A215705.P10778732287692845193

/-! ## A215705.P7200737855836931687

`A215703(A167499(n+4)+A005408(n))`
-/

namespace A215705.P7200737855836931687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A167499 (n + 4) + A005408 n).toNat

end

end A215705.P7200737855836931687

/-! ## A215705.P15162135065932662356

`A215703(A055998(n+2)+A016789(n+4))`
-/

namespace A215705.P15162135065932662356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A055998 (n + 2) + A016789 (n + 4)).toNat

end

end A215705.P15162135065932662356

/-! ## A215705.P15716875409432456008

`A215703(A000096(n+5)-A001478(n+1))`
-/

namespace A215705.P15716875409432456008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000096 (n + 5) - A001478 (n + 1)).toNat

end

end A215705.P15716875409432456008

/-! ## A215705.P9633879355713914959

`A215703(A005408(n+3)+A000096(n+4))`
-/

namespace A215705.P9633879355713914959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A005408 (n + 3) + A000096 (n + 4)).toNat

end

end A215705.P9633879355713914959

/-! ## A215705.P7184625604152799103

`A215703(A000124(n+10)-A016789(n+11))`
-/

namespace A215705.P7184625604152799103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000124 (n + 10) - A016789 (n + 11)).toNat

end

end A215705.P7184625604152799103

/-! ## A215705.P1331797656914097572

`A215703(A033999(2*n+1)+Δ[A026054(n+4)])`
-/

namespace A215705.P1331797656914097572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A033999 (2 * n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A215705.P1331797656914097572

/-!
# A215706: n-th derivative of (((x^x)^x)^x)^x at x=1.

The programs for A215706, there is no canonical definition to state claims against.
-/

/-! ## A215706.P3290212143752085328

`A215703(A155212(n+5)-1)`
-/

namespace A215706.P3290212143752085328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A155212 (n + 5) - 1).toNat

end

end A215706.P3290212143752085328

/-! ## A215706.P6245781813632226012

`A215703(A253145(n+8)-9)`
-/

namespace A215706.P6245781813632226012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A253145 (n + 8) - 9).toNat

end

end A215706.P6245781813632226012

/-! ## A215706.P7588057952869050897

`A215703(A000217(n+9)-9)`
-/

namespace A215706.P7588057952869050897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000217 (n + 9) - 9).toNat

end

end A215706.P7588057952869050897

/-! ## A215706.P15594175890014602853

`A215703(A000124(n+9)-10)`
-/

namespace A215706.P15594175890014602853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000124 (n + 9) - 10).toNat

end

end A215706.P15594175890014602853

/-! ## A215706.P2234388062120566466

`A215703(A000096(n+7)+n+1)`
-/

namespace A215706.P2234388062120566466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A215706.P2234388062120566466

/-! ## A215706.P1583002460301703458

`A215703(A034856(n+7)+n+2)`
-/

namespace A215706.P1583002460301703458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A034856 (n + 7) + (n + 2 : ℤ)).toNat

end

end A215706.P1583002460301703458

/-! ## A215706.P4113965843767633260

`A215703(A016789(n+4)+A000124(n+6))`
-/

namespace A215706.P4113965843767633260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A016789 (n + 4) + A000124 (n + 6)).toNat

end

end A215706.P4113965843767633260

/-!
# A215707: n-th derivative of ((x^x)^x)^(x^x) at x=1.

The programs for A215707, there is no canonical definition to state claims against.
-/

/-! ## A215707.P5924930123392572413

`A215703(eq[8, A116598(n)])`
-/

namespace A215707.P5924930123392572413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215707.P5924930123392572413

/-! ## A215707.P17995469594336720743

`A215703(eq[9, A025581(n)])`
-/

namespace A215707.P17995469594336720743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215707.P17995469594336720743

/-! ## A215707.P681904533282404091

`A215703(eq[10, A193739(n)])`
-/

namespace A215707.P681904533282404091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215707.P681904533282404091

/-! ## A215707.P8201323865025535017

`A215703(eq[19, A099375(n)])`
-/

namespace A215707.P8201323865025535017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215707.P8201323865025535017

/-! ## A215707.P5565849757115175829

`A215703(eq[10, A004736(n+1)])`
-/

namespace A215707.P5565849757115175829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215707.P5565849757115175829

/-!
# A215708: n-th derivative of (x^(x^x))^(x^x) at x=1.

The programs for A215708, there is no canonical definition to state claims against.
-/

/-! ## A215708.P10083299684994474909

`A215703(eq[10, A025581(n)])`
-/

namespace A215708.P10083299684994474909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215708.P10083299684994474909

/-! ## A215708.P13375955240019111849

`A215703(eq[10, A195664(n)])`
-/

namespace A215708.P13375955240019111849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215708.P13375955240019111849

/-! ## A215708.P13972911322760642480

`A215703(eq[11, A193739(n)])`
-/

namespace A215708.P13972911322760642480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215708.P13972911322760642480

/-! ## A215708.P15524698099821604451

`A215703(eq[21, A099375(n)])`
-/

namespace A215708.P15524698099821604451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215708.P15524698099821604451

/-! ## A215708.P10129566442709866456

`A215703(A000217(n+11)-11)`
-/

namespace A215708.P10129566442709866456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000217 (n + 11) - 11).toNat

end

end A215708.P10129566442709866456

/-! ## A215708.P12333432417217617726

`A215703(eq[11, A004736(n+1)])`
-/

namespace A215708.P12333432417217617726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215708.P12333432417217617726

/-!
# A215709: n-th derivative of (x^x)^((x^x)^x) at x=1.

The programs for A215709, there is no canonical definition to state claims against.
-/

/-! ## A215709.P11186779311620404684

`A215703(eq[11, A025581(n)])`
-/

namespace A215709.P11186779311620404684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215709.P11186779311620404684

/-! ## A215709.P12019844024084042677

`A215703(eq[11, A195664(n)])`
-/

namespace A215709.P12019844024084042677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215709.P12019844024084042677

/-! ## A215709.P563920434130063263

`A215703(eq[12, A193739(n)])`
-/

namespace A215709.P563920434130063263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215709.P563920434130063263

/-! ## A215709.P1706085075406089309

`A215703(eq[12, A195663(n)])`
-/

namespace A215709.P1706085075406089309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215709.P1706085075406089309

/-! ## A215709.P12927974690807863547

`A215703(eq[23, A099375(n)])`
-/

namespace A215709.P12927974690807863547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215709.P12927974690807863547

/-! ## A215709.P5861542111126814517

`A215703(eq[12, A004736(n+1)])`
-/

namespace A215709.P5861542111126814517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215709.P5861542111126814517

/-!
# A215710: n-th derivative of x^(((x^x)^x)^x) at x=1.

The programs for A215710, there is no canonical definition to state claims against.
-/

/-! ## A215710.P4266479543629018061

`A215703(eq[13, A025581(n)])`
-/

namespace A215710.P4266479543629018061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215710.P4266479543629018061

/-! ## A215710.P17963132915946970291

`A215703(eq[24, A116598(n)])`
-/

namespace A215710.P17963132915946970291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215710.P17963132915946970291

/-! ## A215710.P11243520928628414940

`A215703(eq[27, A099375(n)])`
-/

namespace A215710.P11243520928628414940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215710.P11243520928628414940

/-! ## A215710.P12295219603212505402

`A215703(eq[13, A193592(n+1)])`
-/

namespace A215710.P12295219603212505402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215710.P12295219603212505402

/-! ## A215710.P7987807680574091336

`A215703(eq[14, A004736(n+1)])`
-/

namespace A215710.P7987807680574091336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215710.P7987807680574091336

/-!
# A215711: Expansion of a(q) * b(q)^3 in powers of q where a(), b() are cubic AGM theta functions.

The programs for A215711, there is no canonical definition to state claims against.
-/

/-! ## A215711.P16776945914266705101

`A008655(n)-A198956(3*n)`
-/

namespace A215711.P16776945914266705101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008655 n - A198956 (3 * n)

end

end A215711.P16776945914266705101

/-!
# A215712: Numerator of sum(i=1..n, 3*i/4^i ).

The programs for A215712, there is no canonical definition to state claims against.
-/

/-! ## A215712.P1576928884311666746

`A000265(∑[∑[3*4^n]])`
-/

namespace A215712.P1576928884311666746
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 4 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215712.P1576928884311666746

/-! ## A215712.P8176147951608199675

`3*A000265(A014825(n+1))`
-/

namespace A215712.P8176147951608199675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000265 (A014825 (n + 1)).toNat

end

end A215712.P8176147951608199675

/-! ## A215712.P18377185284921121413

`3*A000265(A053088(2*n+3))`
-/

namespace A215712.P18377185284921121413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000265 (A053088 (2 * n + 3)).toNat

end

end A215712.P18377185284921121413

/-! ## A215712.P3319439860981336702

`or(1, A000265(∑[A287101(2*n+1)]))`
-/

namespace A215712.P3319439860981336702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287101 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A215712.P3319439860981336702

/-!
# A215713: Denominator of sum(i=1..n, 3*i/4^i).

The programs for A215713, the canonical program `A215713.P3588067354417912298` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215713 has offset 1).

The definition of A215713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215713.P16582228722417200032

`2^round(log2(A215712(n+1)))`
-/

namespace A215713.P16582228722417200032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway (Real.logb 2 (A215712 (n + 1) : ℝ)) : ℤ)

end

end A215713.P16582228722417200032

namespace A215713

/-- `2^round(log2(A215712(n+1)))` -/
def P16582228722417200032.Spec : Prop :=
  ∀ n, P16582228722417200032.a n = (A215713 (n + 1) : ℚ)

end A215713

/-! ## A215713.P3588067354417912298

`A000079(n+1)²/A006519(A016777(n+2))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215713

/-- `A000079(n+1)²/A006519(A016777(n+2))` -/
def P3588067354417912298.Spec : Prop :=
  ∀ n, P3588067354417912298.a n = (A215713 (n + 1) : ℚ)

end A215713

/-! ## A215713.P11761416577360302378

`A000079(2*(n+1))/A006519(A016777(n+2))`
-/

namespace A215713.P11761416577360302378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * (n + 1)) : ℚ) / (A006519 (A016777 (n + 2)).toNat : ℚ)

end

end A215713.P11761416577360302378

namespace A215713

/-- `A000079(2*(n+1))/A006519(A016777(n+2))` -/
def P11761416577360302378.Spec : Prop :=
  ∀ n, P11761416577360302378.a n = (A215713 (n + 1) : ℚ)

end A215713

/-! ## A215713.P15848307027620684402

`A000079(n+1)²/A000079(A050605(A016777(2*(n+2))))`
-/

namespace A215713.P15848307027620684402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) ^ 2 : ℚ) / (A000079 (A050605 (A016777 (2 * (n + 2))).toNat).toNat : ℚ)

end

end A215713.P15848307027620684402

namespace A215713

/-- `A000079(n+1)²/A000079(A050605(A016777(2*(n+2))))` -/
def P15848307027620684402.Spec : Prop :=
  ∀ n, P15848307027620684402.a n = (A215713 (n + 1) : ℚ)

end A215713

/-! ## A215713.P5947162968587305523

`A000079(2*(n+1))/A000079(A050605(A016777(2*(n+2))))`
-/

namespace A215713.P5947162968587305523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * (n + 1)) : ℚ) / (A000079 (A050605 (A016777 (2 * (n + 2))).toNat).toNat : ℚ)

end

end A215713.P5947162968587305523

namespace A215713

/-- `A000079(2*(n+1))/A000079(A050605(A016777(2*(n+2))))` -/
def P5947162968587305523.Spec : Prop :=
  ∀ n, P5947162968587305523.a n = (A215713 (n + 1) : ℚ)

end A215713

/-! ## A215713.P12414037982828116972

`A011782(2*(n+2))/A006519(A016789(2*(n+2)))`
-/

namespace A215713.P12414037982828116972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (2 * (n + 2)) : ℚ) / (A006519 (A016789 (2 * (n + 2))).toNat : ℚ)

end

end A215713.P12414037982828116972

namespace A215713

/-- `A011782(2*(n+2))/A006519(A016789(2*(n+2)))` -/
def P12414037982828116972.Spec : Prop :=
  ∀ n, P12414037982828116972.a n = (A215713 (n + 1) : ℚ)

end A215713

/-! ## A215713.P6133587600174143649

`A034008(2*n+5)/A028233(A001281(2*n+5))`
-/

namespace A215713.P6133587600174143649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034008 (2 * n + 5) : ℚ) / (A028233 (A001281 (2 * n + 5)).toNat : ℚ)

end

end A215713.P6133587600174143649

namespace A215713

/-- `A034008(2*n+5)/A028233(A001281(2*n+5))` -/
def P6133587600174143649.Spec : Prop :=
  ∀ n, P6133587600174143649.a n = (A215713 (n + 1) : ℚ)

end A215713

/-! ## A215713.P16581084581161135917

`8*A000079(n)²/A000079(A001511(A016777(n+2)))`
-/

namespace A215713.P16581084581161135917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * A000079 n ^ 2 : ℚ) / (A000079 (A001511 (A016777 (n + 2)).toNat).toNat : ℚ)

end

end A215713.P16581084581161135917

namespace A215713

/-- `8*A000079(n)²/A000079(A001511(A016777(n+2)))` -/
def P16581084581161135917.Spec : Prop :=
  ∀ n, P16581084581161135917.a n = (A215713 (n + 1) : ℚ)

end A215713

/-! ## A215713.P17817108035776778972

`A273692(2*(n+2))/8`
-/

namespace A215713.P17817108035776778972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273692 (2 * (n + 2)) : ℚ) / 8

end

end A215713.P17817108035776778972

namespace A215713

/-- `A273692(2*(n+2))/8` -/
def P17817108035776778972.Spec : Prop :=
  ∀ n, P17817108035776778972.a n = (A215713 (n + 1) : ℚ)

end A215713

/-! ## A215713.P5304907504892084129

`A003945(2*(n+2))/A003945(A087229(n+2))`
-/

namespace A215713.P5304907504892084129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003945 (2 * (n + 2)) : ℚ) / (A003945 (A087229 (n + 2)).toNat : ℚ)

end

end A215713.P5304907504892084129

namespace A215713

/-- `A003945(2*(n+2))/A003945(A087229(n+2))` -/
def P5304907504892084129.Spec : Prop :=
  ∀ n, P5304907504892084129.a n = (A215713 (n + 1) : ℚ)

end A215713

/-! ## A215713.P170455563746592053

`lcm(8*A000079(n)², A016789(2*(n+2)))/A016789(2*(n+2))`
-/

namespace A215713.P170455563746592053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (8 * A000079 n ^ 2) (A016789 (2 * (n + 2))) : ℚ) / (A016789 (2 * (n + 2)) : ℚ)

end

end A215713.P170455563746592053

namespace A215713

/-- `lcm(8*A000079(n)², A016789(2*(n+2)))/A016789(2*(n+2))` -/
def P170455563746592053.Spec : Prop :=
  ∀ n, P170455563746592053.a n = (A215713 (n + 1) : ℚ)

end A215713

/-!
# A215714: Sophie Germain primes q such that q^2 + q + 41 is prime.

The programs for A215714, there is no canonical definition to state claims against.
-/

/-! ## A215714.P1278508176550564398

`∩[A005384(n+1), A238242(n+1)]`
-/

namespace A215714.P1278508176550564398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215714.P1278508176550564398

/-! ## A215714.P12771435342703726268

`∩[A238242(n+1), A246857(n+1)]`
-/

namespace A215714.P12771435342703726268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215714.P12771435342703726268

/-! ## A215714.P7948321891159893423

`∩[A238242(n+1), A348511(n+1)]`
-/

namespace A215714.P7948321891159893423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215714.P7948321891159893423

/-! ## A215714.P9266382438926317033

`∩[A238242(n+1), A364926(n+1)]`
-/

namespace A215714.P9266382438926317033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215714.P9266382438926317033

/-! ## A215714.P8818998584703782358

`∩[A238242(n+1), A259973(n+1)]`
-/

namespace A215714.P8818998584703782358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215714.P8818998584703782358

/-! ## A215714.P12709092887527285942

`∩[A078762(n+1), A238242(n+1)]`
-/

namespace A215714.P12709092887527285942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215714.P12709092887527285942

/-! ## A215714.P2126149932555677251

`∩[A005384(n+1), A268513(n+1)]`
-/

namespace A215714.P2126149932555677251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215714.P2126149932555677251

/-! ## A215714.P17575272008830596998

`∩[A268513(n+1), A364926(n+1)]`
-/

namespace A215714.P17575272008830596998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215714.P17575272008830596998

/-! ## A215714.P8536750825697841365

`∩[A054639(n+1), A238242(n+1)]`
-/

namespace A215714.P8536750825697841365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215714.P8536750825697841365

/-! ## A215714.P3282875923287645611

`∩[A014109(n+1), A238242(n+1)]`
-/

namespace A215714.P3282875923287645611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215714.P3282875923287645611

/-! ## A215714.P14522654336861582993

`∩[A156541(n+1), A238242(n+1)]`
-/

namespace A215714.P14522654336861582993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215714.P14522654336861582993

/-! ## A215714.P10326849871645682190

`∩[A074821(n+1), A238242(n+1)]`
-/

namespace A215714.P10326849871645682190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215714.P10326849871645682190

/-! ## A215714.P15131215137374068233

`∩[A117360(n+1), A238242(n+1)]`
-/

namespace A215714.P15131215137374068233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215714.P15131215137374068233

/-! ## A215714.P18065116953399851274

`∩[A005097(n+1), A238242(n+1)]`
-/

namespace A215714.P18065116953399851274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215714.P18065116953399851274

/-! ## A215714.P2879218208127264390

`∩[A102781(n+1), A238242(n+1)]`
-/

namespace A215714.P2879218208127264390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215714.P2879218208127264390

/-! ## A215714.P16318516589225733660

`∩[A139791(n+1), A238242(n+1)]`
-/

namespace A215714.P16318516589225733660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215714.P16318516589225733660

/-! ## A215714.P430774985637139257

`∩[A238242(n+1), A326583(n+1)]`
-/

namespace A215714.P430774985637139257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215714.P430774985637139257

/-! ## A215714.P13254037178547311460

`filter[A238242(n+1), A101264(#)]`
-/

namespace A215714.P13254037178547311460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A215714.P13254037178547311460

/-! ## A215714.P8355913489238754020

`∩[A005384(n+1), A056561(n+1)]`
-/

namespace A215714.P8355913489238754020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215714.P8355913489238754020

/-! ## A215714.P5050876553856596445

`∩[A238242(n+1), A328413(n+1)]`
-/

namespace A215714.P5050876553856596445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215714.P5050876553856596445

/-!
# A215715: G.f. satisfies A(x) = (1 + x*A(x)^2) * (1 + x*A(x)^4).

The programs for A215715, there is no canonical definition to state claims against.
-/

/-! ## A215715.P4721154549853440552

`xor(n, A172002(A335531(n)))`
-/

namespace A215715.P4721154549853440552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A172002 (A335531 n).toNat)

end

end A215715.P4721154549853440552

/-!
# A215716: Number of permutations on n points admitting a fifth root.

The programs for A215716, there is no canonical definition to state claims against.
-/

/-! ## A215716.P4209741851881756271

`A247005(C(n+7, 2)-6)`
-/

namespace A215716.P4209741851881756271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (Nat.choose (n + 7) 2 - 6)

end

end A215716.P4209741851881756271

/-! ## A215716.P12791685244056534968

`A247005(A055999(n+3))`
-/

namespace A215716.P12791685244056534968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (A055999 (n + 3)).toNat

end

end A215716.P12791685244056534968

/-! ## A215716.P2923418204073331202

`A247005(eq[5, A025581(n)])`
-/

namespace A215716.P2923418204073331202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215716.P2923418204073331202

/-! ## A215716.P13838999444474893325

`A247005(eq[6, A193739(n)])`
-/

namespace A215716.P13838999444474893325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215716.P13838999444474893325

/-! ## A215716.P11369868939776097982

`A247005(eq[11, A099375(n)])`
-/

namespace A215716.P11369868939776097982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215716.P11369868939776097982

/-! ## A215716.P3879084745333043779

`A247005(A052905(n+3)-1)`
-/

namespace A215716.P3879084745333043779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (A052905 (n + 3) - 1).toNat

end

end A215716.P3879084745333043779

/-!
# A215717: Number of permutations on n points admitting a sixth root.

The programs for A215717, there is no canonical definition to state claims against.
-/

/-! ## A215717.P13049482510620192702

`A247005(C(n+7, 2)+n)`
-/

namespace A215717.P13049482510620192702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (Nat.choose (n + 7) 2 + n)

end

end A215717.P13049482510620192702

/-! ## A215717.P11576778812654337772

`A247005(eq[6, A025581(n)])`
-/

namespace A215717.P11576778812654337772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215717.P11576778812654337772

/-! ## A215717.P17149079896574962877

`A247005(eq[7, A193739(n)])`
-/

namespace A215717.P17149079896574962877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215717.P17149079896574962877

/-! ## A215717.P9618538779409949025

`A247005(A052905(n+4)-2)`
-/

namespace A215717.P9618538779409949025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (A052905 (n + 4) - 2).toNat

end

end A215717.P9618538779409949025

/-! ## A215717.P14636616189087584795

`A247005(A000124(n+7)-8)`
-/

namespace A215717.P14636616189087584795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (A000124 (n + 7) - 8).toNat

end

end A215717.P14636616189087584795

/-! ## A215717.P2642067336167661695

`A247005(A027379(n+4)+n+3)`
-/

namespace A215717.P2642067336167661695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (A027379 (n + 4) + (n + 3 : ℤ)).toNat

end

end A215717.P2642067336167661695

/-! ## A215717.P12179606433948662233

`A247005(2*n+A052905(n+2)+11)`
-/

namespace A215717.P12179606433948662233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 ((2 * n : ℤ) + (A052905 (n + 2) + 11)).toNat

end

end A215717.P12179606433948662233

/-!
# A215718: Number of permutations on n points admitting a seventh root.

The programs for A215718, there is no canonical definition to state claims against.
-/

/-! ## A215718.P9297726655844445482

`∏[(A000700(n)*A378532(A095295(n+1)))%2+n]`
-/

namespace A215718.P9297726655844445482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000700 n * A378532 (A095295 (n + 1)).toNat) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A215718.P9297726655844445482

/-! ## A215718.P13946335069804532836

`(n-A133565(A133581(n+1)))*a(n-1)` with `a(0)=1`
-/

namespace A215718.P13946335069804532836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - A133565 (A133581 (n + 1)).toNat) * a (n - 1)

end

end A215718.P13946335069804532836

/-! ## A215718.P814743747790674504

`∏[A000005(A011782(n-A025460(n)))]`
-/

namespace A215718.P814743747790674504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A011782 ((n : ℤ) - A025460 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A215718.P814743747790674504

/-! ## A215718.P1915961925629138120

`∏[A016402(A246037(n))+n]`
-/

namespace A215718.P1915961925629138120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016402 (A246037 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A215718.P1915961925629138120

/-! ## A215718.P8177921468139649146

`A060727(A122204(∑[n]))`
-/

namespace A215718.P8177921468139649146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060727 (A122204 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A215718.P8177921468139649146

/-!
# A215720: The number of functions f:{1,2,...,n}->{1,2,...,n}, endofunctions, such that exactly one nonrecurrent element is mapped into each recurrent element.

The programs for A215720, there is no canonical definition to state claims against.
-/

/-! ## A215720.P4943878106880587422

`A124425(n)*A325781(A124380(n))`
-/

namespace A215720.P4943878106880587422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124425 n * A325781 (A124380 n).toNat

end

end A215720.P4943878106880587422

/-! ## A215720.P10448510342068104503

`A282574(A007788(n)+n)`
-/

namespace A215720.P10448510342068104503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282574 (A007788 n + (n : ℤ)).toNat

end

end A215720.P10448510342068104503

/-!
# A215721: The values of N for which the 1 X N domino-covering game is a second player win.

The programs for A215721, there is no canonical definition to state claims against.
-/

/-! ## A215721.P1887583713521787169

`A274161(n+1)-2`
-/

namespace A215721.P1887583713521787169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274161 (n + 1) - 2

end

end A215721.P1887583713521787169

/-! ## A215721.P253054881965957661

`A023444(A274161(n+1))`
-/

namespace A215721.P253054881965957661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A274161 (n + 1)).toNat

end

end A215721.P253054881965957661

/-! ## A215721.P6668416730906134832

`A134824(n+2)+A029578(A274161(n+1))`
-/

namespace A215721.P6668416730906134832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A029578 (A274161 (n + 1)).toNat

end

end A215721.P6668416730906134832

/-! ## A215721.P376550258155229432

`A029578(A274161(n+1))+A008683(A051698(n))`
-/

namespace A215721.P376550258155229432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A274161 (n + 1)).toNat + A008683 (A051698 n).toNat

end

end A215721.P376550258155229432

/-! ## A215721.P8062537688436153816

`A087003(A020639(10*n+5))+A029578(A274161(n+1))`
-/

namespace A215721.P8062537688436153816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (A020639 (10 * n + 5)).toNat + A029578 (A274161 (n + 1)).toNat

end

end A215721.P8062537688436153816

/-! ## A215721.P6142826258870470100

`A029578(A274161(n+1))+A008683(A081256(n+1))`
-/

namespace A215721.P6142826258870470100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A274161 (n + 1)).toNat + A008683 (A081256 (n + 1)).toNat

end

end A215721.P6142826258870470100

/-! ## A215721.P2556615348078829665

`A133695(A097981(n))+A029578(A274161(n+1))`
-/

namespace A215721.P2556615348078829665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133695 (A097981 n).toNat + A029578 (A274161 (n + 1)).toNat

end

end A215721.P2556615348078829665

/-! ## A215721.P9126502742795532702

`A029578(A274161(n+1))+A008683(A164333(n+1))`
-/

namespace A215721.P9126502742795532702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A274161 (n + 1)).toNat + A008683 (A164333 (n + 1)).toNat

end

end A215721.P9126502742795532702

/-!
# A215723: Maximum determinant of an n X n circulant (1,-1)-matrix.

The programs for A215723, there is no canonical definition to state claims against.
-/

/-! ## A215723.P4142218211422471323

`2^n*A215897(n+1)`
-/

namespace A215723.P4142218211422471323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A215897 (n + 1)

end

end A215723.P4142218211422471323

/-! ## A215723.P18110914197858579420

`abs(A122803(n)*A215897(n+1))`
-/

namespace A215723.P18110914197858579420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122803 n * A215897 (n + 1)|

end

end A215723.P18110914197858579420

/-! ## A215723.P12782884204545441094

`A000051(n)*A215897(n+1)-A215897(n+1)`
-/

namespace A215723.P12782884204545441094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A215897 (n + 1) - A215897 (n + 1)

end

end A215723.P12782884204545441094

/-! ## A215723.P18067443713489275019

`A215897(n+1)%A192513(n+1)*A000079(n)`
-/

namespace A215723.P18067443713489275019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215897 (n + 1)) (A192513 (n + 1)) * A000079 n

end

end A215723.P18067443713489275019

/-!
# A215724: Maximum absolute value of determinant of n X n (1,-1)-Toeplitz matrix.

The programs for A215724, there is no canonical definition to state claims against.
-/

/-! ## A215724.P12740733816168928931

`2^n*A076269(A076271(n+1))`
-/

namespace A215724.P12740733816168928931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A076269 (A076271 (n + 1)).toNat

end

end A215724.P12740733816168928931

/-! ## A215724.P5063640536787231993

`A076269(A076271(n+1))*A190126(n+1)`
-/

namespace A215724.P5063640536787231993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076269 (A076271 (n + 1)).toNat * A190126 (n + 1)

end

end A215724.P5063640536787231993

/-! ## A215724.P16503412354160099416

`A109168((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A215724.P16503412354160099416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109168 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A215724.P16503412354160099416

/-! ## A215724.P11159099445022523242

`A140472((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A215724.P11159099445022523242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A140472 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A215724.P11159099445022523242

/-!
# A215725: Numbers x such that 2*x+1 is prime as is 2*x+3 and x^2+x+41 and (x+1)^2+(x+1)+41.

The programs for A215725, there is no canonical definition to state claims against.
-/

/-! ## A215725.P9413621034087738254

`eq[A124522(n+1), A178334(A114717(n+1))]`
-/

namespace A215725.P9413621034087738254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A114717 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215725.P9413621034087738254

/-! ## A215725.P8164386975332071007

`eq[A047160(2*(n+1)), A263296(A009194(n+1))]`
-/

namespace A215725.P8164386975332071007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263296 (A009194 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215725.P8164386975332071007

/-! ## A215725.P1306668680995557881

`lt[A071256(A103517(n)), A226934(n+1)]`
-/

namespace A215725.P1306668680995557881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071256 (A103517 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226934 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A215725.P1306668680995557881

/-! ## A215725.P541940772673373513

`eq[A052433(A134866(n+1)), A286385(2*n+1)]`
-/

namespace A215725.P541940772673373513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052433 (A134866 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215725.P541940772673373513

/-! ## A215725.P18164377561242637198

`eq[2, A305972(n+3)]`
-/

namespace A215725.P18164377561242637198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305972 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215725.P18164377561242637198

/-!
# A215726: Numbers k such that the k-th triangular number is squarefree.

The programs for A215726, the canonical program `A215726.P9624273629466354318` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215726 has offset 1).

The definition of A215726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6828 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215726.P2759738866503611408

`floor(sqrt(2*A061304(n+1)))`
-/

namespace A215726.P2759738866503611408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A061304 (n + 1))

end

end A215726.P2759738866503611408

namespace A215726

/-- `floor(sqrt(2*A061304(n+1)))` -/
def P2759738866503611408.Spec : Prop :=
  ∀ n, P2759738866503611408.a n = A215726 (n + 1)

end A215726

/-! ## A215726.P9624273629466354318

`∩[A078779(n+1)-1, A078779(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215726

/-- `∩[A078779(n+1)-1, A078779(n+1)]` -/
def P9624273629466354318.Spec : Prop :=
  ∀ n, (P9624273629466354318.a n : ℤ) = A215726 (n + 1)

theorem P9624273629466354318.correct : P9624273629466354318.Spec := by
  intro n
  simp only [A215726, Nat.add_sub_cancel]

end A215726

/-! ## A215726.P7079348670592809163

`eq[1, A175608(n+1)]+1`
-/

namespace A215726.P7079348670592809163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175608 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A215726.P7079348670592809163

namespace A215726

/-- `eq[1, A175608(n+1)]+1` -/
def P7079348670592809163.Spec : Prop :=
  ∀ n, (P7079348670592809163.a n : ℤ) = A215726 (n + 1)

end A215726

/-! ## A215726.P12793294667986067666

`record[A000026(A000026(n+2)-1)]`
-/

namespace A215726.P12793294667986067666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A000026 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215726.P12793294667986067666

namespace A215726

/-- `record[A000026(A000026(n+2)-1)]` -/
def P12793294667986067666.Spec : Prop :=
  ∀ n, P12793294667986067666.a n = A215726 (n + 1)

end A215726

/-! ## A215726.P15683946449419106402

`record[A038388(A038388(n+2)-1)]`
-/

namespace A215726.P15683946449419106402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038388 (A038388 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215726.P15683946449419106402

namespace A215726

/-- `record[A038388(A038388(n+2)-1)]` -/
def P15683946449419106402.Spec : Prop :=
  ∀ n, P15683946449419106402.a n = A215726 (n + 1)

end A215726

/-! ## A215726.P3803957054410389500

`record[A038389(A038389(n+2)-1)]`
-/

namespace A215726.P3803957054410389500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038389 (A038389 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215726.P3803957054410389500

namespace A215726

/-- `record[A038389(A038389(n+2)-1)]` -/
def P3803957054410389500.Spec : Prop :=
  ∀ n, P3803957054410389500.a n = A215726 (n + 1)

end A215726

/-! ## A215726.P7438888205522670709

`record[A000026(n+1)%A000026(n+2)]`
-/

namespace A215726.P7438888205522670709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000026 (n + 1)) (A000026 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215726.P7438888205522670709

namespace A215726

/-- `record[A000026(n+1)%A000026(n+2)]` -/
def P7438888205522670709.Spec : Prop :=
  ∀ n, P7438888205522670709.a n = A215726 (n + 1)

end A215726

/-! ## A215726.P11997702499118546709

`lt[A078771(n+1), char[A078779(n+1)]]`
-/

namespace A215726.P11997702499118546709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A215726.P11997702499118546709

namespace A215726

/-- `lt[A078771(n+1), char[A078779(n+1)]]` -/
def P11997702499118546709.Spec : Prop :=
  ∀ n, (P11997702499118546709.a n : ℤ) = A215726 (n + 1)

end A215726

/-! ## A215726.P5146372779303855705

`eq[∑[n], ∏{p}[∑[n], #]]`
-/

namespace A215726.P5146372779303855705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A215726.P5146372779303855705

namespace A215726

/-- `eq[∑[n], ∏{p}[∑[n], #]]` -/
def P5146372779303855705.Spec : Prop :=
  ∀ n, (P5146372779303855705.a n : ℤ) = A215726 (n + 1)

end A215726

/-! ## A215726.P15243492728523313616

`eq[1, ∏{e}[∑[n+1], #]]+1`
-/

namespace A215726.P15243492728523313616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A215726.P15243492728523313616

namespace A215726

/-- `eq[1, ∏{e}[∑[n+1], #]]+1` -/
def P15243492728523313616.Spec : Prop :=
  ∀ n, (P15243492728523313616.a n : ℤ) = A215726 (n + 1)

end A215726

/-! ## A215726.P3631919323282429692

`lt[∏{e}[∑[n+1], #], 2]+1`
-/

namespace A215726.P3631919323282429692
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n + 1

end

end A215726.P3631919323282429692

namespace A215726

/-- `lt[∏{e}[∑[n+1], #], 2]+1` -/
def P3631919323282429692.Spec : Prop :=
  ∀ n, (P3631919323282429692.a n : ℤ) = A215726 (n + 1)

end A215726

/-! ## A215726.P18014464180130075108

`record[∏{p}[∑[n+1], #]-∑[n]]`
-/

namespace A215726.P18014464180130075108
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215726.P18014464180130075108

namespace A215726

/-- `record[∏{p}[∑[n+1], #]-∑[n]]` -/
def P18014464180130075108.Spec : Prop :=
  ∀ n, P18014464180130075108.a n = A215726 (n + 1)

end A215726

/-! ## A215726.P3128594709872477506

`record[(n+1)/∏{e}[∑[n+1], #]]`
-/

namespace A215726.P3128594709872477506
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215726.P3128594709872477506

namespace A215726

/-- `record[(n+1)/∏{e}[∑[n+1], #]]` -/
def P3128594709872477506.Spec : Prop :=
  ∀ n, P3128594709872477506.a n = (A215726 (n + 1) : ℚ)

end A215726

/-! ## A215726.P3322613469081308097

`eq[∏{p}[A000217(n), #], A000217(n)]`
-/

namespace A215726.P3322613469081308097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A215726.P3322613469081308097

namespace A215726

/-- `eq[∏{p}[A000217(n), #], A000217(n)]` -/
def P3322613469081308097.Spec : Prop :=
  ∀ n, (P3322613469081308097.a n : ℤ) = A215726 (n + 1)

end A215726

/-! ## A215726.P17545044483093172025

`eq[2, A268045(n)]+1`
-/

namespace A215726.P17545044483093172025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A215726.P17545044483093172025

namespace A215726

/-- `eq[2, A268045(n)]+1` -/
def P17545044483093172025.Spec : Prop :=
  ∀ n, (P17545044483093172025.a n : ℤ) = A215726 (n + 1)

end A215726

/-! ## A215726.P14112361087611937565

`eq[1, A008683(∑[n+1])²]+1`
-/

namespace A215726.P14112361087611937565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A215726.P14112361087611937565

namespace A215726

/-- `eq[1, A008683(∑[n+1])²]+1` -/
def P14112361087611937565.Spec : Prop :=
  ∀ n, (P14112361087611937565.a n : ℤ) = A215726 (n + 1)

end A215726

/-! ## A215726.P6079687497955808535

`lt[A105570(∑[n]), n]`
-/

namespace A215726.P6079687497955808535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A215726.P6079687497955808535

namespace A215726

/-- `lt[A105570(∑[n]), n]` -/
def P6079687497955808535.Spec : Prop :=
  ∀ n, (P6079687497955808535.a n : ℤ) = A215726 (n + 1)

end A215726

/-! ## A215726.P6346101989462826620

`eq[A278253(n+1), A278253(A278253(n+1))]+1`
-/

namespace A215726.P6346101989462826620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278253 (A278253 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A215726.P6346101989462826620

namespace A215726

/-- `eq[A278253(n+1), A278253(A278253(n+1))]+1` -/
def P6346101989462826620.Spec : Prop :=
  ∀ n, (P6346101989462826620.a n : ℤ) = A215726 (n + 1)

end A215726

/-!
# A215727: a(n) is the smallest m for which 3^m contains n consecutive identical digits.

The programs for A215727, there is no canonical definition to state claims against.
-/

/-! ## A215727.P17409757351707158834

`and(A010015(n), A192824(n+1))`
-/

namespace A215727.P17409757351707158834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010015 n) (A192824 (n + 1))

end

end A215727.P17409757351707158834

/-!
# A215728: a(n) is the smallest m for which 5^m contains n consecutive identical digits.

The programs for A215728, there is no canonical definition to state claims against.
-/

/-! ## A215728.P4431136741310605738

`A003056(lcm(3*n*(n+1)²+n+1, A331987(n)))`
-/

namespace A215728.P4431136741310605738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lcm (3 * (n * (n + 1) ^ 2) + (n + 1) : ℤ) (A331987 n))

end

end A215728.P4431136741310605738

/-!
# A215729: a(n) is the smallest m for which 6^m contains (at least) n consecutive identical digits.

The programs for A215729, there is no canonical definition to state claims against.
-/

/-! ## A215729.P11880104562603399146

`∑[A361391(A299556(n+1)+A264772(n))]`
-/

namespace A215729.P11880104562603399146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361391 (A299556 (n + 1) + A264772 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215729.P11880104562603399146

/-!
# A215730: a(n) is the smallest m for which 7^m contains n consecutive identical digits.

The programs for A215730, there is no canonical definition to state claims against.
-/

/-! ## A215730.P12035518060670777517

`A234743(∑[∑[A139404(3*n+1)]])`
-/

namespace A215730.P12035518060670777517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139404 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234743 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A215730.P12035518060670777517

/-!
# A215731: a(n) is the smallest m for which the decimal representation of 11^m contains n consecutive identical digits.

The programs for A215731, there is no canonical definition to state claims against.
-/

/-! ## A215731.P17696763905220888426

`n*A010430(2^n)`
-/

namespace A215731.P17696763905220888426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010430 (2 ^ n)

end

end A215731.P17696763905220888426

/-!
# A215740: Number of horizontal, vertical, diagonal and antidiagonal neighbor colorings of the odd squares of an nX3 array with new integer colors introduced in row major order.

The programs for A215740, there is no canonical definition to state claims against.
-/

/-! ## A215740.P16770521024383701098

`A215745(∑[n+2]+4)`
-/

namespace A215740.P16770521024383701098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215745 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A215740.P16770521024383701098

/-! ## A215740.P5348801122969811788

`or(char[1], A215745(A167499(n)+n))`
-/

namespace A215740.P5348801122969811788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A215745 (A167499 n + (n : ℤ)).toNat)

end

end A215740.P5348801122969811788

/-! ## A215740.P16805694343673114376

`A215745(A167614(n+1))^ceil(acot(n))`
-/

namespace A215740.P16805694343673114376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215745 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A215740.P16805694343673114376

/-! ## A215740.P15897951734813125463

`A215745(A167614(n+1))+A011738(n)`
-/

namespace A215740.P15897951734813125463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215745 (A167614 (n + 1)).toNat + A011738 n

end

end A215740.P15897951734813125463

/-! ## A215740.P14494770459740911931

`A215745(A167614(n+1))+A014083(n)`
-/

namespace A215740.P14494770459740911931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215745 (A167614 (n + 1)).toNat + A014083 n

end

end A215740.P14494770459740911931

/-!
# A215741: Number of horizontal, vertical, diagonal and antidiagonal neighbor colorings of the odd squares of an n X 4 array with new integer colors introduced in row major order.

The programs for A215741, there is no canonical definition to state claims against.
-/

/-! ## A215741.P3820600361448968769

`A215745(∑[n+2]+5)`
-/

namespace A215741.P3820600361448968769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215745 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A215741.P3820600361448968769

/-! ## A215741.P556403426163200906

`A215847(∑[n+2]+5)`
-/

namespace A215741.P556403426163200906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215847 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A215741.P556403426163200906

/-! ## A215741.P14460339927846822978

`A215745(A141214(n))/gcd(n, n+1)`
-/

namespace A215741.P14460339927846822978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215745 (A141214 n).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A215741.P14460339927846822978

/-! ## A215741.P11427649185537162434

`A215745(A141214(n))+A011734(n)`
-/

namespace A215741.P11427649185537162434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215745 (A141214 n).toNat + A011734 n

end

end A215741.P11427649185537162434

/-! ## A215741.P11348381527037682027

`A215745(A141214(n))+A011738(n)`
-/

namespace A215741.P11348381527037682027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215745 (A141214 n).toNat + A011738 n

end

end A215741.P11348381527037682027

/-!
# A215742: Number of horizontal, vertical, diagonal and antidiagonal neighbor colorings of the odd squares of an n X 5 array with new integer colors introduced in row major order.

The programs for A215742, there is no canonical definition to state claims against.
-/

/-! ## A215742.P1505056543372631186

`A215745(A167499(n+2))`
-/

namespace A215742.P1505056543372631186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215745 (A167499 (n + 2)).toNat

end

end A215742.P1505056543372631186

/-! ## A215742.P18117243858175218178

`A215745(A141214(n)+8)`
-/

namespace A215742.P18117243858175218178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215745 (A141214 n + 8).toNat

end

end A215742.P18117243858175218178

/-! ## A215742.P15283235794731185315

`A215745(A052905(n)+10)`
-/

namespace A215742.P15283235794731185315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215745 (A052905 n + 10).toNat

end

end A215742.P15283235794731185315

/-! ## A215742.P6345479062030360803

`A215745(A055999(n)+11)`
-/

namespace A215742.P6345479062030360803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215745 (A055999 n + 11).toNat

end

end A215742.P6345479062030360803

/-! ## A215742.P1332077449927808957

`A215745(A167614(n+2)+2)`
-/

namespace A215742.P1332077449927808957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215745 (A167614 (n + 2) + 2).toNat

end

end A215742.P1332077449927808957

/-!
# A215743: Number of horizontal, vertical, diagonal and antidiagonal neighbor colorings of the odd squares of an n X 6 array with new integer colors introduced in row major order.

The programs for A215743, there is no canonical definition to state claims against.
-/

/-! ## A215743.P8754685059405783518

`record[A054527(n+1)*A215745(n+1)]`
-/

namespace A215743.P8754685059405783518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) * A215745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215743.P8754685059405783518

/-! ## A215743.P12767869400755435207

`A215847(C(n+5, 2)+n)`
-/

namespace A215743.P12767869400755435207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215847 (Nat.choose (n + 5) 2 + n)

end

end A215743.P12767869400755435207

/-! ## A215743.P800235911502157821

`A215745(A052905(n+2))`
-/

namespace A215743.P800235911502157821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215745 (A052905 (n + 2)).toNat

end

end A215743.P800235911502157821

/-! ## A215743.P1897801394368421243

`A215745(A056115(n)+10)`
-/

namespace A215743.P1897801394368421243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215745 (A056115 n + 10).toNat

end

end A215743.P1897801394368421243

/-!
# A215744: Number of horizontal, vertical, diagonal and antidiagonal neighbor colorings of the odd squares of an n X 7 array with new integer colors introduced in row major order.

The programs for A215744, there is no canonical definition to state claims against.
-/

/-! ## A215744.P10542550560229166576

`A215745(A055999(n+3))`
-/

namespace A215744.P10542550560229166576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215745 (A055999 (n + 3)).toNat

end

end A215744.P10542550560229166576

/-! ## A215744.P942686363024518480

`A215745(eq[5, A025581(n)])`
-/

namespace A215744.P942686363024518480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215745 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215744.P942686363024518480

/-! ## A215744.P4319465583646460462

`A215745(eq[11, A099375(n)])`
-/

namespace A215744.P4319465583646460462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215745 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215744.P4319465583646460462

/-!
# A215745: T(n,k)=Number of horizontal, vertical, diagonal and antidiagonal neighbor colorings of the odd squares of an nXk array with new integer colors introduced in row major order.

The programs for A215745, there is no canonical definition to state claims against.
-/

/-! ## A215745.P7939784226209766720

`A008619(val(A222649(n+1)!, 10))`
-/

namespace A215745.P7939784226209766720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.valuation (Nat.factorial (A222649 (n + 1)).toNat) 10)

end

end A215745.P7939784226209766720

/-! ## A215745.P6459714699032918123

`dr(A020639(A222479(A222479(n+1))))`
-/

namespace A215745.P6459714699032918123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A020639 (A222479 (A222479 (n + 1)).toNat).toNat)

end

end A215745.P6459714699032918123

/-!
# A215746: Numerator of Sum_{i=0..n} (-1)^i*4/(2*i + 1).

The programs for A215746, there is no canonical definition to state claims against.
-/

/-! ## A215746.P11899735766834483234

`4*A007509(n)`
-/

namespace A215746.P11899735766834483234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007509 n

end

end A215746.P11899735766834483234

/-! ## A215746.P1617900269372097455

`4*A024199(n+1)/gcd(A024199(2*n+1), A024199(n+1))`
-/

namespace A215746.P1617900269372097455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A024199 (n + 1) : ℚ) / (Int.gcd (A024199 (2 * n + 1)) (A024199 (n + 1)) : ℚ))

end

end A215746.P1617900269372097455

/-! ## A215746.P3458985601760369136

`4*A024199(A068634(n+1))/A025549(n+1)`
-/

namespace A215746.P3458985601760369136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A024199 (A068634 (n + 1)).toNat : ℚ) / (A025549 (n + 1) : ℚ))

end

end A215746.P3458985601760369136

/-!
# A215747: a(n) = (-2)^n mod n.

The programs for A215747, the canonical program `A215747.P14723553648550715807` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215747 has offset 1).

The definition of A215747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215747.P14723553648550715807

`(xor(1, n+1)*A015910(n+1))%(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A215747

/-- `(xor(1, n+1)*A015910(n+1))%(n+1)` -/
def P14723553648550715807.Spec : Prop :=
  ∀ n, P14723553648550715807.a n = A215747 (n + 1)

theorem P14723553648550715807.correct : P14723553648550715807.Spec := by
  intro n
  simp only [A215747, Nat.add_sub_cancel]

end A215747

/-! ## A215747.P271270272691253793

`(xor(1, n+1)*A066606(n+1))%(n+1)`
-/

namespace A215747.P271270272691253793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.xor 1 (n + 1) : ℤ) * A066606 (n + 1)) (n + 1 : ℤ)

end

end A215747.P271270272691253793

namespace A215747

/-- `(xor(1, n+1)*A066606(n+1))%(n+1)` -/
def P271270272691253793.Spec : Prop :=
  ∀ n, P271270272691253793.a n = A215747 (n + 1)

end A215747

/-! ## A215747.P2697521850706323460

`(2^(n+1)*xor(1, n+1))%(n+1)`
-/

namespace A215747.P2697521850706323460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1) * Nat.xor 1 (n + 1) % (n + 1)

end

end A215747.P2697521850706323460

namespace A215747

/-- `(2^(n+1)*xor(1, n+1))%(n+1)` -/
def P2697521850706323460.Spec : Prop :=
  ∀ n, (P2697521850706323460.a n : ℤ) = A215747 (n + 1)

end A215747

/-! ## A215747.P1953571309505678564

`(2^(n+1)*A065190(n+1))%(n+1)`
-/

namespace A215747.P1953571309505678564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 ^ (n + 1) : ℤ) * A065190 (n + 1)) (n + 1 : ℤ)

end

end A215747.P1953571309505678564

namespace A215747

/-- `(2^(n+1)*A065190(n+1))%(n+1)` -/
def P1953571309505678564.Spec : Prop :=
  ∀ n, P1953571309505678564.a n = A215747 (n + 1)

end A215747

/-! ## A215747.P18357534478474856550

`(xor(1, n+1)*A000079(n+1))%(n+1)`
-/

namespace A215747.P18357534478474856550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.xor 1 (n + 1) : ℤ) * A000079 (n + 1)) (n + 1 : ℤ)

end

end A215747.P18357534478474856550

namespace A215747

/-- `(xor(1, n+1)*A000079(n+1))%(n+1)` -/
def P18357534478474856550.Spec : Prop :=
  ∀ n, P18357534478474856550.a n = A215747 (n + 1)

end A215747

/-! ## A215747.P10304751224308260108

`(xor(1, n+1)*A006127(n+1))%(n+1)`
-/

namespace A215747.P10304751224308260108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.xor 1 (n + 1) : ℤ) * A006127 (n + 1)) (n + 1 : ℤ)

end

end A215747.P10304751224308260108

namespace A215747

/-- `(xor(1, n+1)*A006127(n+1))%(n+1)` -/
def P10304751224308260108.Spec : Prop :=
  ∀ n, P10304751224308260108.a n = A215747 (n + 1)

end A215747

/-! ## A215747.P6721823124193489958

`(2^(n+1)*A273407(n))%(n+1)`
-/

namespace A215747.P6721823124193489958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 ^ (n + 1) : ℤ) * A273407 n) (n + 1 : ℤ)

end

end A215747.P6721823124193489958

namespace A215747

/-- `(2^(n+1)*A273407(n))%(n+1)` -/
def P6721823124193489958.Spec : Prop :=
  ∀ n, P6721823124193489958.a n = A215747 (n + 1)

end A215747

/-! ## A215747.P10315370145658951215

`A114448(A051890(n))`
-/

namespace A215747.P10315370145658951215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114448 (A051890 n).toNat

end

end A215747.P10315370145658951215

namespace A215747

/-- `A114448(A051890(n))` -/
def P10315370145658951215.Spec : Prop :=
  ∀ n, P10315370145658951215.a n = A215747 (n + 1)

end A215747

/-! ## A215747.P12681956383365896284

`A087981(n+1)%(n+1)`
-/

namespace A215747.P12681956383365896284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087981 (n + 1)) (n + 1 : ℤ)

end

end A215747.P12681956383365896284

namespace A215747

/-- `A087981(n+1)%(n+1)` -/
def P12681956383365896284.Spec : Prop :=
  ∀ n, P12681956383365896284.a n = A215747 (n + 1)

end A215747

/-! ## A215747.P5745007816100270024

`A335595(n+1)%(n+1)`
-/

namespace A215747.P5745007816100270024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335595 (n + 1)) (n + 1 : ℤ)

end

end A215747.P5745007816100270024

namespace A215747

/-- `A335595(n+1)%(n+1)` -/
def P5745007816100270024.Spec : Prop :=
  ∀ n, P5745007816100270024.a n = A215747 (n + 1)

end A215747

/-!
# A215748: Characteristic numbers of smooth plane quartics.

The programs for A215748, there is no canonical definition to state claims against.
-/

/-! ## A215748.P8001056229696017226

`A000400(n)-A333791(A227506(n+1))`
-/

namespace A215748.P8001056229696017226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n - A333791 (A227506 (n + 1)).toNat

end

end A215748.P8001056229696017226

/-! ## A215748.P3716825723630035005

`xor(A000400(n), A185236(A317577(n+1)))`
-/

namespace A215748.P3716825723630035005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000400 n) (A185236 (A317577 (n + 1)).toNat)

end

end A215748.P3716825723630035005

/-!
# A215751: Numbers n such that tau(4n+2)=tau(4n)-2, where tau=A000005 gives the number of divisors.

The programs for A215751, the canonical program `A215751.P5539135677145150358` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215751 has offset 1).

The definition of A215751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215751.P5539135677145150358

`eq[A032741(4*n+2)+2, A032741(4*n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A215751

/-- `eq[A032741(4*n+2)+2, A032741(4*n)]` -/
def P5539135677145150358.Spec : Prop :=
  ∀ n, (P5539135677145150358.a n : ℤ) = A215751 (n + 1)

theorem P5539135677145150358.correct : P5539135677145150358.Spec := by
  intro n
  simp only [A215751, Nat.add_sub_cancel]

end A215751

/-! ## A215751.P2936561411301601178

`eq[A023645(A008574(n)), A054844(2*n+1)]`
-/

namespace A215751.P2936561411301601178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215751.P2936561411301601178

namespace A215751

/-- `eq[A023645(A008574(n)), A054844(2*n+1)]` -/
def P2936561411301601178.Spec : Prop :=
  ∀ n, (P2936561411301601178.a n : ℤ) = A215751 (n + 1)

end A215751

/-!
# A215753: Denominators of the continued fraction convergents of log_10(3).

The programs for A215753, there is no canonical definition to state claims against.
-/

/-! ## A215753.P12999961316865363936

`A271518(A136803(n+1)+A053700(n+1))`
-/

namespace A215753.P12999961316865363936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271518 (A136803 (n + 1) + A053700 (n + 1)).toNat

end

end A215753.P12999961316865363936

/-!
# A215754: Denominators of the continued fraction convergents of log_10(6).

The programs for A215754, there is no canonical definition to state claims against.
-/

/-! ## A215754.P6202499685235880388

`filter[A041993(n), A380419(#)]`
-/

namespace A215754.P6202499685235880388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380419 (f1 j).toNat = 1) n)

end

end A215754.P6202499685235880388

/-!
# A215755: Denominators of the continued fraction convergents of log_10(7).

The programs for A215755, there is no canonical definition to state claims against.
-/

/-! ## A215755.P449235414656251131

`A008407(A118187(n))+A002945(2*(n+1))`
-/

namespace A215755.P449235414656251131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008407 (A118187 n).toNat + A002945 (2 * (n + 1))

end

end A215755.P449235414656251131

/-!
# A215758: Numerators of the continued fraction convergents of log_10(6).

The programs for A215758, there is no canonical definition to state claims against.
-/

/-! ## A215758.P6260365434731408854

`eq[n, A160652(A043093(n))]`
-/

namespace A215758.P6260365434731408854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 (A043093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215758.P6260365434731408854

/-!
# A215759: Numerators of the continued fraction convergents of log_10(7).

The programs for A215759, there is no canonical definition to state claims against.
-/

/-! ## A215759.P26516001870729581

`A061357(A363440(n)-A005079(n+1))`
-/

namespace A215759.P26516001870729581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A363440 n - A005079 (n + 1)).toNat

end

end A215759.P26516001870729581

/-!
# A215761: Numbers m with property that 36m+11 is prime.

The programs for A215761, the canonical program `A215761.P3697800326789046983` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215761 has offset 1).

The definition of A215761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215761.P17002037180241038171

`lt[A001222(36*n+11), 2]`
-/

namespace A215761.P17002037180241038171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (36 * n + 11)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A215761.P17002037180241038171

namespace A215761

/-- `lt[A001222(36*n+11), 2]` -/
def P17002037180241038171.Spec : Prop :=
  ∀ n, (P17002037180241038171.a n : ℤ) = A215761 (n + 1)

end A215761

/-! ## A215761.P13911109685927895799

`eq[2, A000005(6*6*n+11)]`
-/

namespace A215761.P13911109685927895799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (6 * (6 * n) + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215761.P13911109685927895799

namespace A215761

/-- `eq[2, A000005(6*6*n+11)]` -/
def P13911109685927895799.Spec : Prop :=
  ∀ n, (P13911109685927895799.a n : ℤ) = A215761 (n + 1)

end A215761

/-! ## A215761.P6232233477645905520

`eq[1, A001222(A017653(A008486(n)))]`
-/

namespace A215761.P6232233477645905520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017653 (A008486 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215761.P6232233477645905520

namespace A215761

/-- `eq[1, A001222(A017653(A008486(n)))]` -/
def P6232233477645905520.Spec : Prop :=
  ∀ n, (P6232233477645905520.a n : ℤ) = A215761 (n + 1)

end A215761

/-! ## A215761.P3863401129526785672

`eq[0, A339896(A017653(3*n))]`
-/

namespace A215761.P3863401129526785672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339896 (A017653 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215761.P3863401129526785672

namespace A215761

/-- `eq[0, A339896(A017653(3*n))]` -/
def P3863401129526785672.Spec : Prop :=
  ∀ n, (P3863401129526785672.a n : ℤ) = A215761 (n + 1)

end A215761

/-! ## A215761.P3697800326789046983

`eq[1, A167020(2*A016777(n))]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A215761

/-- `eq[1, A167020(2*A016777(n))]` -/
def P3697800326789046983.Spec : Prop :=
  ∀ n, (P3697800326789046983.a n : ℤ) = A215761 (n + 1)

theorem P3697800326789046983.correct : P3697800326789046983.Spec := by
  intro n
  simp only [A215761, Nat.add_sub_cancel]

end A215761

/-! ## A215761.P12948304548027827560

`eq[1, A001222(A016969(6*n+1))]`
-/

namespace A215761.P12948304548027827560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016969 (6 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215761.P12948304548027827560

namespace A215761

/-- `eq[1, A001222(A016969(6*n+1))]` -/
def P12948304548027827560.Spec : Prop :=
  ∀ n, (P12948304548027827560.a n : ℤ) = A215761 (n + 1)

end A215761

/-! ## A215761.P16362719939199683087

`eq[1, A231776(A017569(n))]`
-/

namespace A215761.P16362719939199683087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231776 (A017569 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215761.P16362719939199683087

namespace A215761

/-- `eq[1, A231776(A017569(n))]` -/
def P16362719939199683087.Spec : Prop :=
  ∀ n, (P16362719939199683087.a n : ℤ) = A215761 (n + 1)

end A215761

/-! ## A215761.P17896315708217557706

`eq[3, A001222(A098502(A017197(n)))]`
-/

namespace A215761.P17896315708217557706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A098502 (A017197 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215761.P17896315708217557706

namespace A215761

/-- `eq[3, A001222(A098502(A017197(n)))]` -/
def P17896315708217557706.Spec : Prop :=
  ∀ n, (P17896315708217557706.a n : ℤ) = A215761 (n + 1)

end A215761

/-! ## A215761.P13905407159695854557

`eq[2, A212595(3*6*n)]`
-/

namespace A215761.P13905407159695854557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212595 (3 * (6 * n) + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215761.P13905407159695854557

namespace A215761

/-- `eq[2, A212595(3*6*n)]` -/
def P13905407159695854557.Spec : Prop :=
  ∀ n, (P13905407159695854557.a n : ℤ) = A215761 (n + 1)

end A215761

/-! ## A215761.P10364728803860238041

`eq[1, A001222(A001651(A017617(2*n)))]`
-/

namespace A215761.P10364728803860238041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001651 (A017617 (2 * n)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215761.P10364728803860238041

namespace A215761

/-- `eq[1, A001222(A001651(A017617(2*n)))]` -/
def P10364728803860238041.Spec : Prop :=
  ∀ n, (P10364728803860238041.a n : ℤ) = A215761 (n + 1)

end A215761

/-! ## A215761.P9559170051292910822

`lt[A033676(3*(12*n+3)+2), 2]`
-/

namespace A215761.P9559170051292910822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (3 * (12 * n + 3) + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A215761.P9559170051292910822

namespace A215761

/-- `lt[A033676(3*(12*n+3)+2), 2]` -/
def P9559170051292910822.Spec : Prop :=
  ∀ n, (P9559170051292910822.a n : ℤ) = A215761 (n + 1)

end A215761

/-! ## A215761.P9816030239344639120

`A033183(A142103(n+1))`
-/

namespace A215761.P9816030239344639120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A142103 (n + 1)).toNat

end

end A215761.P9816030239344639120

namespace A215761

/-- `A033183(A142103(n+1))` -/
def P9816030239344639120.Spec : Prop :=
  ∀ n, P9816030239344639120.a n = A215761 (n + 1)

end A215761

/-! ## A215761.P15413830786576981531

`eq[2, dr(A014963(A139609(n)+2))]`
-/

namespace A215761.P15413830786576981531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A014963 (A139609 n + 2).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215761.P15413830786576981531

namespace A215761

/-- `eq[2, dr(A014963(A139609(n)+2))]` -/
def P15413830786576981531.Spec : Prop :=
  ∀ n, (P15413830786576981531.a n : ℤ) = A215761 (n + 1)

end A215761

/-!
# A215762: a(n) = smallest prime > a(n-1) + 2(n-1), a(1)=2.

The programs for A215762, the canonical program `A215762.P9255059313311877312` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215762 has offset 1).

The definition of A215762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215762.P9255059313311877312

`A151800(a(n-1)+2*n)` with `a(0)=2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215762

/-- `A151800(a(n-1)+2*n)` -/
def P9255059313311877312.Spec : Prop :=
  ∀ n, P9255059313311877312.a n = A215762 (n + 1)

theorem P9255059313311877312.correct : P9255059313311877312.Spec := by
  intro n
  simp only [A215762, Nat.add_sub_cancel]

end A215762

/-! ## A215762.P7296075532644023119

`record[A151800(a(n-2)+n)]` with `a(0)=2, a(1)=1`
-/

namespace A215762.P7296075532644023119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  A151800 (f1 (n - 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215762.P7296075532644023119

namespace A215762

/-- `record[A151800(a(n-2)+n)]` -/
def P7296075532644023119.Spec : Prop :=
  ∀ n, P7296075532644023119.a n = A215762 (n + 1)

end A215762

/-! ## A215762.P1404565796507049946

`A151800(a(n-1)+n+n)` with `a(0)=2`
-/

namespace A215762.P1404565796507049946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (a (n - 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A215762.P1404565796507049946

namespace A215762

/-- `A151800(a(n-1)+n+n)` -/
def P1404565796507049946.Spec : Prop :=
  ∀ n, P1404565796507049946.a n = A215762 (n + 1)

theorem P1404565796507049946.correct : P1404565796507049946.Spec := by
  intro n
  simp only [A215762, Nat.add_sub_cancel, A215762.P1404565796507049946.a, A215762.P9255059313311877312.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A215762

/-! ## A215762.P13293212693708362998

`A151800(3*n-(n-a(n-1)))` with `a(0)=2`
-/

namespace A215762.P13293212693708362998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 ((3 * n : ℤ) - ((n : ℤ) - a (n - 1))).toNat

end

end A215762.P13293212693708362998

namespace A215762

/-- `A151800(3*n-(n-a(n-1)))` -/
def P13293212693708362998.Spec : Prop :=
  ∀ n, P13293212693708362998.a n = A215762 (n + 1)

end A215762

/-! ## A215762.P6855029267929562619

`A065091(A000720(a(n-1)+2*n))` with `a(0)=2`
-/

namespace A215762.P6855029267929562619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A065091 (A000720 (a (n - 1) + (2 * n : ℤ)).toNat).toNat

end

end A215762.P6855029267929562619

namespace A215762

/-- `A065091(A000720(a(n-1)+2*n))` -/
def P6855029267929562619.Spec : Prop :=
  ∀ n, P6855029267929562619.a n = A215762 (n + 1)

end A215762

/-! ## A215762.P7362551013896299954

`A266620(a(n-1)+2*n)` with `a(0)=2`
-/

namespace A215762.P7362551013896299954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A266620 (a (n - 1) + (2 * n : ℤ)).toNat

end

end A215762.P7362551013896299954

namespace A215762

/-- `A266620(a(n-1)+2*n)` -/
def P7362551013896299954.Spec : Prop :=
  ∀ n, P7362551013896299954.a n = A215762 (n + 1)

end A215762

/-! ## A215762.P10527823827239334213

`A266620(a(n-1)+n+n)` with `a(0)=2`
-/

namespace A215762.P10527823827239334213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A266620 (a (n - 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A215762.P10527823827239334213

namespace A215762

/-- `A266620(a(n-1)+n+n)` -/
def P10527823827239334213.Spec : Prop :=
  ∀ n, P10527823827239334213.a n = A215762 (n + 1)

end A215762

/-! ## A215762.P14736027609357866052

`A007918(Δ[n²]+a(n-1))` with `a(0)=2`
-/

namespace A215762.P14736027609357866052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007918 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1)).toNat

end

end A215762.P14736027609357866052

namespace A215762

/-- `A007918(Δ[n²]+a(n-1))` -/
def P14736027609357866052.Spec : Prop :=
  ∀ n, P14736027609357866052.a n = A215762 (n + 1)

end A215762

/-! ## A215762.P17264398439063006631

`A007918(a(n-1)+2*n+1)` with `a(0)=2`
-/

namespace A215762.P17264398439063006631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007918 (a (n - 1) + (2 * n + 1 : ℤ)).toNat

end

end A215762.P17264398439063006631

namespace A215762

/-- `A007918(a(n-1)+2*n+1)` -/
def P17264398439063006631.Spec : Prop :=
  ∀ n, P17264398439063006631.a n = A215762 (n + 1)

end A215762

/-!
# A215763: Number of undirected labeled graphs on n nodes with exactly 3 cycle graphs as connected components.

The programs for A215763, there is no canonical definition to state claims against.
-/

/-! ## A215763.P9835857931267313683

`A215771(∑[n+3]+6)`
-/

namespace A215763.P9835857931267313683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A215763.P9835857931267313683

/-! ## A215763.P714271249158225589

`record[A215771(A008795(n)+3)]`
-/

namespace A215763.P714271249158225589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215763.P714271249158225589

/-! ## A215763.P7426753891489120642

`record[A215771(A000096(n)+4)]`
-/

namespace A215763.P7426753891489120642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (A000096 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215763.P7426753891489120642

/-! ## A215763.P12875528024428560043

`record[A215771(A000124(n+1)+2)]`
-/

namespace A215763.P12875528024428560043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (A000124 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215763.P12875528024428560043

/-! ## A215763.P9385813220270159205

`record[A215771(A253145(n)+2-n)]`
-/

namespace A215763.P9385813220270159205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (A253145 n + (2 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215763.P9385813220270159205

/-! ## A215763.P9292119351937203256

`record[A215771(Δ[A238806(n+1)]-1)]`
-/

namespace A215763.P9292119351937203256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238806 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (f2 (n + 1) - f2 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215763.P9292119351937203256

/-! ## A215763.P10808700171541591368

`A215771(A167614(n+2))^A019425(2*n)`
-/

namespace A215763.P10808700171541591368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215771 (A167614 (n + 2)).toNat : ℚ) ^ (A019425 (2 * n) : ℤ)

end

end A215763.P10808700171541591368

/-!
# A215764: Number of undirected labeled graphs on n nodes with exactly 4 cycle graphs as connected components.

The programs for A215764, there is no canonical definition to state claims against.
-/

/-! ## A215764.P11606207815823567385

`A215771(A155212(n)+12)`
-/

namespace A215764.P11606207815823567385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (A155212 n + 12).toNat

end

end A215764.P11606207815823567385

/-! ## A215764.P17665260265781295586

`A215771(eq[3, A141169(n)])`
-/

namespace A215764.P17665260265781295586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215764.P17665260265781295586

/-! ## A215764.P14857775472397475955

`A215771(eq[4, A002262(n)])`
-/

namespace A215764.P14857775472397475955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215764.P14857775472397475955

/-! ## A215764.P4875836489173924407

`A215771(eq[4, A258651(n)])`
-/

namespace A215764.P4875836489173924407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215764.P4875836489173924407

/-! ## A215764.P1276598203433462287

`record[A215771(A000124(n)+3)]`
-/

namespace A215764.P1276598203433462287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (A000124 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215764.P1276598203433462287

/-! ## A215764.P2047381421469486552

`record[A215771(A000217(n)+4)]`
-/

namespace A215764.P2047381421469486552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (A000217 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215764.P2047381421469486552

/-! ## A215764.P14633706360140069178

`A215771(A167614(n+3)+1)`
-/

namespace A215764.P14633706360140069178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (A167614 (n + 3) + 1).toNat

end

end A215764.P14633706360140069178

/-! ## A215764.P11246796552934695599

`A215771(A000217(n+4)+4)`
-/

namespace A215764.P11246796552934695599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (A000217 (n + 4) + 4).toNat

end

end A215764.P11246796552934695599

/-! ## A215764.P11860262497637950573

`A215771(eq[5, A002260(n+1)])`
-/

namespace A215764.P11860262497637950573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215764.P11860262497637950573

/-! ## A215764.P10254825458021786896

`record[A215771(Δ[A238806(n+1)])]`
-/

namespace A215764.P10254825458021786896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238806 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215764.P10254825458021786896

/-!
# A215765: Number of undirected labeled graphs on n nodes with exactly 5 cycle graphs as connected components.

The programs for A215765, there is no canonical definition to state claims against.
-/

/-! ## A215765.P6223729320735789041

`A215771(A167499(n+4))`
-/

namespace A215765.P6223729320735789041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (A167499 (n + 4)).toNat

end

end A215765.P6223729320735789041

/-! ## A215765.P10629828627225268766

`A215771(eq[5, A002262(n)])`
-/

namespace A215765.P10629828627225268766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215765.P10629828627225268766

/-! ## A215765.P16543369092185034110

`A215771(eq[5, A130270(n+1)])`
-/

namespace A215765.P16543369092185034110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215765.P16543369092185034110

/-! ## A215765.P7603620642100368783

`A215771(eq[5, A144328(n+1)])`
-/

namespace A215765.P7603620642100368783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215765.P7603620642100368783

/-! ## A215765.P3756147762023134727

`A215771(eq[6, A002260(n+1)])`
-/

namespace A215765.P3756147762023134727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215765.P3756147762023134727

/-!
# A215766: Number of undirected labeled graphs on n nodes with exactly 6 cycle graphs as connected components.

The programs for A215766, there is no canonical definition to state claims against.
-/

/-! ## A215766.P4614358491197579612

`A215771(eq[6, A002262(n)])`
-/

namespace A215766.P4614358491197579612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215766.P4614358491197579612

/-! ## A215766.P2426624255847180245

`A215771(eq[8, A141169(n)])`
-/

namespace A215766.P2426624255847180245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215766.P2426624255847180245

/-! ## A215766.P16451475054929671448

`A215771(eq[6, A144328(n+1)])`
-/

namespace A215766.P16451475054929671448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215766.P16451475054929671448

/-! ## A215766.P3064751898848030921

`A215771(eq[7, A002260(n+1)])`
-/

namespace A215766.P3064751898848030921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215766.P3064751898848030921

/-! ## A215766.P160639886700420886

`A215771(eq[7, A134868(n+1)])`
-/

namespace A215766.P160639886700420886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215766.P160639886700420886

/-!
# A215767: Number of undirected labeled graphs on n nodes with exactly 7 cycle graphs as connected components.

The programs for A215767, there is no canonical definition to state claims against.
-/

/-! ## A215767.P10876870451252553268

`A215771(eq[7, A002262(n)])`
-/

namespace A215767.P10876870451252553268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215767.P10876870451252553268

/-! ## A215767.P3464338134922687906

`A215771(eq[7, A130270(n+1)])`
-/

namespace A215767.P3464338134922687906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215767.P3464338134922687906

/-! ## A215767.P14838383162562162034

`A215771(eq[7, A144328(n+1)])`
-/

namespace A215767.P14838383162562162034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215767.P14838383162562162034

/-! ## A215767.P4526000016120663423

`A215771(eq[8, A002260(n+1)])`
-/

namespace A215767.P4526000016120663423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215767.P4526000016120663423

/-! ## A215767.P6378592495504107537

`A215771(eq[8, A135223(n+1)])`
-/

namespace A215767.P6378592495504107537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215767.P6378592495504107537

/-!
# A215768: Number of undirected labeled graphs on n nodes with exactly 8 cycle graphs as connected components.

The programs for A215768, there is no canonical definition to state claims against.
-/

/-! ## A215768.P10657864573551691713

`A215771(eq[8, A002262(n)])`
-/

namespace A215768.P10657864573551691713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215768.P10657864573551691713

/-! ## A215768.P5752160294430363890

`A215771(eq[8, A130270(n+1)])`
-/

namespace A215768.P5752160294430363890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215768.P5752160294430363890

/-! ## A215768.P13613186922446358638

`A215771(eq[8, A144328(n+1)])`
-/

namespace A215768.P13613186922446358638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215768.P13613186922446358638

/-! ## A215768.P1583936030013383552

`A215771(eq[9, A002260(n+1)])`
-/

namespace A215768.P1583936030013383552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215768.P1583936030013383552

/-! ## A215768.P14482692944432693068

`A215771(A000217(n+9)-(n+1))`
-/

namespace A215768.P14482692944432693068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (A000217 (n + 9) - (n + 1 : ℤ)).toNat

end

end A215768.P14482692944432693068

/-!
# A215769: Number of undirected labeled graphs on n nodes with exactly 9 cycle graphs as connected components.

The programs for A215769, there is no canonical definition to state claims against.
-/

/-! ## A215769.P15430335140684152279

`A215771(eq[9, A002262(n)])`
-/

namespace A215769.P15430335140684152279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215769.P15430335140684152279

/-! ## A215769.P4622445347990433964

`A215771(eq[9, A130270(n+1)])`
-/

namespace A215769.P4622445347990433964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215769.P4622445347990433964

/-! ## A215769.P2173493293691116909

`A215771(eq[9, A144328(n+1)])`
-/

namespace A215769.P2173493293691116909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215769.P2173493293691116909

/-! ## A215769.P323721792539979945

`A215771(eq[10, A002260(n+1)])`
-/

namespace A215769.P323721792539979945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215769.P323721792539979945

/-! ## A215769.P2595122311336500315

`A215771(eq[19, A158405(n+1)])`
-/

namespace A215769.P2595122311336500315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215769.P2595122311336500315

/-!
# A215770: Number of undirected labeled graphs on n nodes with exactly 10 cycle graphs as connected components.

The programs for A215770, there is no canonical definition to state claims against.
-/

/-! ## A215770.P4867336233646844870

`A215771(eq[10, A002262(n)])`
-/

namespace A215770.P4867336233646844870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215770.P4867336233646844870

/-! ## A215770.P5097060137410128747

`A215771(eq[10, log2(A059268(n))])`
-/

namespace A215770.P5097060137410128747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A215770.P5097060137410128747

/-! ## A215770.P1473318245340457487

`A215771(eq[10, A144328(n+1)])`
-/

namespace A215770.P1473318245340457487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215770.P1473318245340457487

/-! ## A215770.P18440234930651606793

`A215771(eq[11, A002260(n+1)])`
-/

namespace A215770.P18440234930651606793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215770.P18440234930651606793

/-! ## A215770.P7546884388274308789

`A215771(eq[11, A134868(n+1)])`
-/

namespace A215770.P7546884388274308789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215770.P7546884388274308789

/-!
# A215771: Number T(n,k) of undirected labeled graphs on n nodes with exactly k cycle graphs as connected components; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A215771, there is no canonical definition to state claims against.
-/

/-! ## A215771.P9411154375584723407

`A116447(A132393(n)+A122848(n))`
-/

namespace A215771.P9411154375584723407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116447 (A132393 n + A122848 n).toNat

end

end A215771.P9411154375584723407

/-! ## A215771.P12838533477030940108

`A293497(A256893(n))`
-/

namespace A215771.P12838533477030940108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293497 (A256893 n).toNat

end

end A215771.P12838533477030940108

/-! ## A215771.P1479147543316282623

`A048993(n)+A000122(A022115(n))`
-/

namespace A215771.P1479147543316282623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n + A000122 (A022115 n).toNat

end

end A215771.P1479147543316282623

/-! ## A215771.P6382901965697421556

`A083915(A000055(n))+A048993(n)`
-/

namespace A215771.P6382901965697421556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083915 (A000055 n).toNat + A048993 n

end

end A215771.P6382901965697421556

/-! ## A215771.P6076993167312945972

`A102683(A022345(n))+A048993(n)`
-/

namespace A215771.P6076993167312945972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A022345 n).toNat + A048993 n

end

end A215771.P6076993167312945972

/-!
# A215772: Number of undirected labeled graphs on n nodes with exactly 2 cycle graphs as connected components.

The programs for A215772, there is no canonical definition to state claims against.
-/

/-! ## A215772.P18435337120484142167

`A215771(∑[n+2]+3)`
-/

namespace A215772.P18435337120484142167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A215772.P18435337120484142167

/-! ## A215772.P11467089661273215957

`record[A215771(A000124(n)+1)]`
-/

namespace A215772.P11467089661273215957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (A000124 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215772.P11467089661273215957

/-! ## A215772.P11763288719417792350

`record[A215771(A000217(n)+2)]`
-/

namespace A215772.P11763288719417792350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (A000217 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215772.P11763288719417792350

/-! ## A215772.P10795119657857087900

`record[A215771(A027689(n)/2)]`
-/

namespace A215772.P10795119657857087900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (SequenceMachineLib.roundAway ((A027689 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215772.P10795119657857087900

/-! ## A215772.P2936770024876207483

`record[A215771(A008795(n+1)+2)]`
-/

namespace A215772.P2936770024876207483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (A008795 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215772.P2936770024876207483

/-! ## A215772.P15277179950537340654

`record[gcd(A215771(n+2), A215771(n))]`
-/

namespace A215772.P15277179950537340654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A215771 (n + 2)) (A215771 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215772.P15277179950537340654

/-! ## A215772.P8440307712397621687

`record[A215771(A026741(A027689(n)))]`
-/

namespace A215772.P8440307712397621687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (A026741 (A027689 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215772.P8440307712397621687

/-!
# A215773: Number of undirected labeled graphs on n+3 nodes with exactly n cycle graphs as connected components.

The programs for A215773, the canonical program `A215773.P10613754822747122833` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215773 has offset 0).

The definition of A215773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215773.P10613754822747122833

`n*(n+1)*(n+2)*(n+3)*(n²+n+4)/48`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A215773

/-- `n*(n+1)*(n+2)*(n+3)*(n²+n+4)/48` -/
def P10613754822747122833.Spec : Prop :=
  ∀ n, P10613754822747122833.a n = (A215773 n : ℚ)

end A215773

/-! ## A215773.P5012957673803801347

`(∑[n]+2)*C(n+3, 4)`
-/

namespace A215773.P5012957673803801347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 2) * Nat.choose (n + 3) 4

end

end A215773.P5012957673803801347

namespace A215773

/-- `(∑[n]+2)*C(n+3, 4)` -/
def P5012957673803801347.Spec : Prop :=
  ∀ n, (P5012957673803801347.a n : ℤ) = A215773 n

end A215773

/-! ## A215773.P11368916928957259005

`n/2*A256859(n+1)`
-/

namespace A215773.P11368916928957259005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A256859 (n + 1) : ℚ)

end

end A215773.P11368916928957259005

namespace A215773

/-- `n/2*A256859(n+1)` -/
def P11368916928957259005.Spec : Prop :=
  ∀ n, P11368916928957259005.a n = (A215773 n : ℚ)

end A215773

/-! ## A215773.P12715329618251025783

`A001297(n)+∑[∑[∑[2*n]]]`
-/

namespace A215773.P12715329618251025783
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001297 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A215773.P12715329618251025783

namespace A215773

/-- `A001297(n)+∑[∑[∑[2*n]]]` -/
def P12715329618251025783.Spec : Prop :=
  ∀ n, P12715329618251025783.a n = A215773 n

end A215773

/-! ## A215773.P6079565189858632069

`C(n+3, 4)+C(n+3, 4)*A000124(n)`
-/

namespace A215773.P6079565189858632069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 4 : ℤ) + (Nat.choose (n + 3) 4 : ℤ) * A000124 n

end

end A215773.P6079565189858632069

namespace A215773

/-- `C(n+3, 4)+C(n+3, 4)*A000124(n)` -/
def P6079565189858632069.Spec : Prop :=
  ∀ n, P6079565189858632069.a n = A215773 n

end A215773

/-! ## A215773.P15385152634867075204

`abs((A145126(n)-1)*A133263(n))`
-/

namespace A215773.P15385152634867075204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A145126 n - 1) * A133263 n|

end

end A215773.P15385152634867075204

namespace A215773

/-- `abs((A145126(n)-1)*A133263(n))` -/
def P15385152634867075204.Spec : Prop :=
  ∀ n, P15385152634867075204.a n = A215773 n

end A215773

/-! ## A215773.P14528479767864623162

`A002415(n+1)+A001297(n)+A000292(n)`
-/

namespace A215773.P14528479767864623162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) + (A001297 n + A000292 n)

end

end A215773.P14528479767864623162

namespace A215773

/-- `A002415(n+1)+A001297(n)+A000292(n)` -/
def P14528479767864623162.Spec : Prop :=
  ∀ n, P14528479767864623162.a n = A215773 n

end A215773

/-! ## A215773.P5136514781450333522

`A000332(n+3)+A000124(n)*A000332(n+3)`
-/

namespace A215773.P5136514781450333522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 3) + A000124 n * A000332 (n + 3)

end

end A215773.P5136514781450333522

namespace A215773

/-- `A000332(n+3)+A000124(n)*A000332(n+3)` -/
def P5136514781450333522.Spec : Prop :=
  ∀ n, P5136514781450333522.a n = A215773 n

end A215773

/-! ## A215773.P11903196910527664108

`A000292(A000096(n))-n*C(n+3, 4)`
-/

namespace A215773.P11903196910527664108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A000096 n).toNat - (n * Nat.choose (n + 3) 4 : ℤ)

end

end A215773.P11903196910527664108

namespace A215773

/-- `A000292(A000096(n))-n*C(n+3, 4)` -/
def P11903196910527664108.Spec : Prop :=
  ∀ n, P11903196910527664108.a n = A215773 n

end A215773

/-! ## A215773.P4550606509335904392

`A215771(∑[n+3]+n+3)`
-/

namespace A215773.P4550606509335904392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A215773.P4550606509335904392

namespace A215773

/-- `A215771(∑[n+3]+n+3)` -/
def P4550606509335904392.Spec : Prop :=
  ∀ n, P4550606509335904392.a n = A215773 n

end A215773

/-!
# A215774: Number of undirected labeled graphs on n+4 nodes with exactly n cycle graphs as connected components.

The programs for A215774, there is no canonical definition to state claims against.
-/

/-! ## A215774.P2265987371684346367

`A215771(∑[n+5]+5)`
-/

namespace A215774.P2265987371684346367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A215774.P2265987371684346367

/-!
# A215776: Second-largest prime factor of the n-th number that is a product of exactly n primes.

The programs for A215776, there is no canonical definition to state claims against.
-/

/-! ## A215776.P594006986726501898

`A087039(floor(A046310(n+1)+acot(n)))`
-/

namespace A215776.P594006986726501898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 ⌊(A046310 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A215776.P594006986726501898

/-! ## A215776.P161400741821257151

`A087039(A046310(n+1)+A000007(n))`
-/

namespace A215776.P161400741821257151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A046310 (n + 1) + A000007 n).toNat

end

end A215776.P161400741821257151

/-! ## A215776.P13063140705743875942

`A087039(A151878(n)+A046310(n+1))`
-/

namespace A215776.P13063140705743875942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A151878 n + A046310 (n + 1)).toNat

end

end A215776.P13063140705743875942

/-! ## A215776.P7785632407120165774

`A087039(A046310(n+1)+A005369(n²))`
-/

namespace A215776.P7785632407120165774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A046310 (n + 1) + A005369 (n ^ 2)).toNat

end

end A215776.P7785632407120165774

/-! ## A215776.P3017113167659991434

`A087039(A046310(n+1)+A000038(n)/2)`
-/

namespace A215776.P3017113167659991434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (SequenceMachineLib.roundAway ((A046310 (n + 1) : ℚ) + (A000038 n : ℚ) / 2)).toNat

end

end A215776.P3017113167659991434

/-! ## A215776.P14628285483876816419

`A087039(a(A000038(n))*A046310(n+1))` with `a(0)=1`
-/

namespace A215776.P14628285483876816419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087039 (a (A000038 n).toNat * A046310 (n + 1)).toNat

end

end A215776.P14628285483876816419

/-! ## A215776.P2801704593407888150

`A087039(A046310(n+1)+val(A000040(n+1), 2))`
-/

namespace A215776.P2801704593407888150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A046310 (n + 1) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)).toNat

end

end A215776.P2801704593407888150

/-! ## A215776.P13087220737494868086

`A087039(A046310(n+1))-A000045(C(2, n+2))`
-/

namespace A215776.P13087220737494868086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A046310 (n + 1)).toNat - A000045 (Nat.choose 2 (n + 2))

end

end A215776.P13087220737494868086

/-! ## A215776.P13012700329281685297

`A001222(a(n-1))*A087039(A046310(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A215776.P13012700329281685297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A001222 (a (n - 1)).toNat * A087039 (A046310 (n + 1)).toNat

end

end A215776.P13012700329281685297

/-! ## A215776.P151745282995346790

`A087039(A046310(n+1))+A008683(A007367(n+1))`
-/

namespace A215776.P151745282995346790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A046310 (n + 1)).toNat + A008683 (A007367 (n + 1)).toNat

end

end A215776.P151745282995346790

/-!
# A215777: Primes of the form 2*k!! + 1.

The programs for A215777, there is no canonical definition to state claims against.
-/

/-! ## A215777.P15178968393276013231

`2*A006882(A215775(n+1))+1`
-/

namespace A215777.P15178968393276013231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006882 (A215775 (n + 1)).toNat + 1

end

end A215777.P15178968393276013231

/-! ## A215777.P11739418622037642809

`p?[n*a(n-2)+1-n]` with `a(0)=3, a(1)=3`
-/

namespace A215777.P11739418622037642809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  (n : ℤ) * f1 (n - 2) + 1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215777.P11739418622037642809

/-! ## A215777.P11472521811223319226

`p?[n*a(n-2)-(n-1)]` with `a(0)=3, a(1)=3`
-/

namespace A215777.P11472521811223319226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  (n : ℤ) * f1 (n - 2) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215777.P11472521811223319226

/-!
# A215778: Natural growth of an aliquot sequence driven by a perfect number 2^(p-1)*((2^p)-1), but starting at 11.

The programs for A215778, there is no canonical definition to state claims against.
-/

/-! ## A215778.P5172680099951388071

`2*A000203(a(n-1))-a(n-1)` with `a(0)=11`
-/

namespace A215778.P5172680099951388071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  2 * A000203 (a (n - 1)).toNat - a (n - 1)

end

end A215778.P5172680099951388071

/-! ## A215778.P4209345921683997305

`A091818(a(n-1))+a(n-1)` with `a(0)=11`
-/

namespace A215778.P4209345921683997305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A091818 (a (n - 1)).toNat + a (n - 1)

end

end A215778.P4209345921683997305

/-! ## A215778.P15947518770764348916

`A074400(a(n-1))-a(n-1)` with `a(0)=11`
-/

namespace A215778.P15947518770764348916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A074400 (a (n - 1)).toNat - a (n - 1)

end

end A215778.P15947518770764348916

/-! ## A215778.P12105930036911905819

`A002659(a(n-1))+1-a(n-1)` with `a(0)=11`
-/

namespace A215778.P12105930036911905819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A002659 (a (n - 1)).toNat + (1 - a (n - 1))

end

end A215778.P12105930036911905819

/-! ## A215778.P16686022086921861843

`A318889(2*a(n-1))` with `a(0)=11`
-/

namespace A215778.P16686022086921861843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A318889 (2 * a (n - 1)).toNat

end

end A215778.P16686022086921861843

/-!
# A215780: Primes of the form 2*k!! - 1.

The programs for A215780, there is no canonical definition to state claims against.
-/

/-! ## A215780.P1435480355735374439

`A128882(A215779(n+1))+A006882(A215779(n+1))`
-/

namespace A215780.P1435480355735374439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128882 (A215779 (n + 1)).toNat + A006882 (A215779 (n + 1)).toNat

end

end A215780.P1435480355735374439

/-!
# A215781: a(n) = ceiling(n*(sqrt(3)-1)).

The programs for A215781, the canonical program `A215781.P8685925691909719972` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215781 has offset 0).

The definition of A215781 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*(sqrt(3)-1))` (program `A215781.P8685925691909719972`, by `A215781.P8685925691909719972.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215781.P8685925691909719972

`ceil(n*(sqrt(3)-1))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A215781

/-- `ceil(n*(sqrt(3)-1))` -/
def P8685925691909719972.Spec : Prop :=
  ∀ n, P8685925691909719972.a n = A215781 n

theorem P8685925691909719972.correct : P8685925691909719972.Spec := by
  intro n
  simp only [A215781]

end A215781

/-! ## A215781.P17283414332463412484

`(floor(n*sqrt(3))+2)%(n+1)`
-/

namespace A215781.P17283414332463412484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋ + 2) (n + 1 : ℤ)

end

end A215781.P17283414332463412484

namespace A215781

/-- `(floor(n*sqrt(3))+2)%(n+1)` -/
def P17283414332463412484.Spec : Prop :=
  ∀ n, P17283414332463412484.a n = A215781 n

end A215781

/-! ## A215781.P6851991747579857788

`floor(n+1-a(a(n-1))/2)` with `a(0)=0, a(1)=1`
-/

namespace A215781.P6851991747579857788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(n + 1 : ℚ) - (a (a (n - 1)).toNat : ℚ) / 2⌋

end

end A215781.P6851991747579857788

namespace A215781

/-- `floor(n+1-a(a(n-1))/2)` -/
def P6851991747579857788.Spec : Prop :=
  ∀ n, P6851991747579857788.a n = A215781 n

end A215781

/-! ## A215781.P16096939763804476993

`floor(n-(a(a(n-1))/2-1))` with `a(0)=0, a(1)=1`
-/

namespace A215781.P16096939763804476993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(n : ℚ) - ((a (a (n - 1)).toNat : ℚ) / 2 - 1)⌋

end

end A215781.P16096939763804476993

namespace A215781

/-- `floor(n-(a(a(n-1))/2-1))` -/
def P16096939763804476993.Spec : Prop :=
  ∀ n, P16096939763804476993.a n = A215781 n

end A215781

/-! ## A215781.P10070806631429933427

`A198081(n)-n`
-/

namespace A215781.P10070806631429933427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 n - (n : ℤ)

end

end A215781.P10070806631429933427

namespace A215781

/-- `A198081(n)-n` -/
def P10070806631429933427.Spec : Prop :=
  ∀ n, P10070806631429933427.a n = A215781 n

end A215781

/-! ## A215781.P3687352852262365536

`n-∑[char[A188069(n+2)]]`
-/

namespace A215781.P3687352852262365536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A215781.P3687352852262365536

namespace A215781

/-- `n-∑[char[A188069(n+2)]]` -/
def P3687352852262365536.Spec : Prop :=
  ∀ n, P3687352852262365536.a n = A215781 n

end A215781

/-! ## A215781.P3012261018080468582

`A188068(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A215781.P3012261018080468582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A188068 n + a (n - 1)

end

end A215781.P3012261018080468582

namespace A215781

/-- `A188068(n)+a(n-1)` -/
def P3012261018080468582.Spec : Prop :=
  ∀ n, P3012261018080468582.a n = A215781 n

end A215781

/-! ## A215781.P12277307991070621012

`a(n-1)+1-A275855(n)` with `a(0)=0`
-/

namespace A215781.P12277307991070621012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A275855 n)

end

end A215781.P12277307991070621012

namespace A215781

/-- `a(n-1)+1-A275855(n)` -/
def P12277307991070621012.Spec : Prop :=
  ∀ n, P12277307991070621012.a n = A215781 n

end A215781

/-! ## A215781.P8503417832201927116

`∑[char[A275855(n+1)+n+1]]`
-/

namespace A215781.P8503417832201927116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (n + 1) + (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215781.P8503417832201927116

namespace A215781

/-- `∑[char[A275855(n+1)+n+1]]` -/
def P8503417832201927116.Spec : Prop :=
  ∀ n, (P8503417832201927116.a n : ℤ) = A215781 n

end A215781

/-! ## A215781.P15154293702661185090

`Δ[n²]-(comp[A054406(2*(n+1))]+1)`
-/

namespace A215781.P15154293702661185090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1 : ℤ)

end

end A215781.P15154293702661185090

namespace A215781

/-- `Δ[n²]-(comp[A054406(2*(n+1))]+1)` -/
def P15154293702661185090.Spec : Prop :=
  ∀ n, P15154293702661185090.a n = A215781 n

end A215781

/-! ## A215781.P11371005123700586858

`A080590(n+1)-A016777(n)`
-/

namespace A215781.P11371005123700586858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (n + 1) - A016777 n

end

end A215781.P11371005123700586858

namespace A215781

/-- `A080590(n+1)-A016777(n)` -/
def P11371005123700586858.Spec : Prop :=
  ∀ n, P11371005123700586858.a n = A215781 n

end A215781

/-! ## A215781.P2456565628952037941

`A188069(n+1)-A008486(n)`
-/

namespace A215781.P2456565628952037941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1) - A008486 n

end

end A215781.P2456565628952037941

namespace A215781

/-- `A188069(n+1)-A008486(n)` -/
def P2456565628952037941.Spec : Prop :=
  ∀ n, P2456565628952037941.a n = A215781 n

end A215781

/-! ## A215781.P17093208074160906814

`A087156(n+1)-A195120(n)`
-/

namespace A215781.P17093208074160906814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) - A195120 n

end

end A215781.P17093208074160906814

namespace A215781

/-- `A087156(n+1)-A195120(n)` -/
def P17093208074160906814.Spec : Prop :=
  ∀ n, P17093208074160906814.a n = A215781 n

end A215781

/-! ## A215781.P6430186500578635884

`A198269(n)-(A022847(n)+n)`
-/

namespace A215781.P6430186500578635884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198269 n - (A022847 n + (n : ℤ))

end

end A215781.P6430186500578635884

namespace A215781

/-- `A198269(n)-(A022847(n)+n)` -/
def P6430186500578635884.Spec : Prop :=
  ∀ n, P6430186500578635884.a n = A215781 n

end A215781

/-! ## A215781.P949102454994558234

`A057427(n)+n-A195120(n)`
-/

namespace A215781.P949102454994558234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ((n : ℤ) - A195120 n)

end

end A215781.P949102454994558234

namespace A215781

/-- `A057427(n)+n-A195120(n)` -/
def P949102454994558234.Spec : Prop :=
  ∀ n, P949102454994558234.a n = A215781 n

end A215781

/-! ## A215781.P8269290494306003509

`A080590(n+1)+n-A016813(n)`
-/

namespace A215781.P8269290494306003509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (n + 1) + ((n : ℤ) - A016813 n)

end

end A215781.P8269290494306003509

namespace A215781

/-- `A080590(n+1)+n-A016813(n)` -/
def P8269290494306003509.Spec : Prop :=
  ∀ n, P8269290494306003509.a n = A215781 n

end A215781

/-! ## A215781.P9566637760263132128

`A188069(n+1)-(A004277(n)+n)`
-/

namespace A215781.P9566637760263132128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1) - (A004277 n + (n : ℤ))

end

end A215781.P9566637760263132128

namespace A215781

/-- `A188069(n+1)-(A004277(n)+n)` -/
def P9566637760263132128.Spec : Prop :=
  ∀ n, P9566637760263132128.a n = A215781 n

end A215781

/-! ## A215781.P2535696144799799425

`A183142(a(n-1)+n)+1` with `a(0)=0`
-/

namespace A215781.P2535696144799799425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A183142 (a (n - 1) + (n : ℤ)).toNat + 1

end

end A215781.P2535696144799799425

namespace A215781

/-- `A183142(a(n-1)+n)+1` -/
def P2535696144799799425.Spec : Prop :=
  ∀ n, P2535696144799799425.a n = A215781 n

end A215781

/-! ## A215781.P15060044028195508463

`A195120(a(n-1)+2*n)` with `a(0)=0`
-/

namespace A215781.P15060044028195508463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A195120 (a (n - 1) + (2 * n : ℤ)).toNat

end

end A215781.P15060044028195508463

namespace A215781

/-- `A195120(a(n-1)+2*n)` -/
def P15060044028195508463.Spec : Prop :=
  ∀ n, P15060044028195508463.a n = A215781 n

end A215781

/-!
# A215782: Odd tribonacci non-divisors.

The programs for A215782, there is no canonical definition to state claims against.
-/

/-! ## A215782.P6695034279567048286

`eq[A019432(n), A046733(n+1)]+1`
-/

namespace A215782.P6695034279567048286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046733 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A215782.P6695034279567048286

/-! ## A215782.P12143221956869781248

`eq[A046733(n+1), A135561(n+1)]+1`
-/

namespace A215782.P12143221956869781248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A215782.P12143221956869781248

/-! ## A215782.P4555403796227412655

`A079097(eq[A019432(n), A046733(n+1)])`
-/

namespace A215782.P4555403796227412655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A215782.P4555403796227412655

/-! ## A215782.P15511718513918863958

`A131738(eq[A019432(n), A046733(n+1)])`
-/

namespace A215782.P15511718513918863958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A215782.P15511718513918863958

/-! ## A215782.P18394563038186588814

`A079097(eq[A046733(n+1), A135561(n+1)])`
-/

namespace A215782.P18394563038186588814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A215782.P18394563038186588814

/-!
# A215784: Number of permutations of 0..floor((n*6-1)/2) on even squares of an n X 6 array such that each row, column, diagonal and (downwards) antidiagonal of even squares is increasing.

The programs for A215784, the canonical program `A215784.P4077106587217208287` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215784 has offset 1).

The definition of A215784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215784.P4077106587217208287

`16*a(n-2)-3*a(n-4)` with `a(0)=1, a(1)=2, a(2)=12, a(3)=29`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A215784

/-- `16*a(n-2)-3*a(n-4)` -/
def P4077106587217208287.Spec : Prop :=
  ∀ n, P4077106587217208287.a n = A215784 (n + 1)

theorem P4077106587217208287.correct : P4077106587217208287.Spec := by
  intro n
  simp only [A215784, Nat.add_sub_cancel]

end A215784

/-! ## A215784.P15190147400746659001

`A215788(A052905(n+3))`
-/

namespace A215784.P15190147400746659001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (A052905 (n + 3)).toNat

end

end A215784.P15190147400746659001

namespace A215784

/-- `A215788(A052905(n+3))` -/
def P15190147400746659001.Spec : Prop :=
  ∀ n, P15190147400746659001.a n = A215784 (n + 1)

end A215784

/-! ## A215784.P14003581369676879528

`A215788(eq[3, A219347(n)])`
-/

namespace A215784.P14003581369676879528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215784.P14003581369676879528

namespace A215784

/-- `A215788(eq[3, A219347(n)])` -/
def P14003581369676879528.Spec : Prop :=
  ∀ n, P14003581369676879528.a n = A215784 (n + 1)

end A215784

/-! ## A215784.P9825332748117494008

`A215788(eq[5, A152157(n)])`
-/

namespace A215784.P9825332748117494008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215784.P9825332748117494008

namespace A215784

/-- `A215788(eq[5, A152157(n)])` -/
def P9825332748117494008.Spec : Prop :=
  ∀ n, P9825332748117494008.a n = A215784 (n + 1)

end A215784

/-! ## A215784.P1869454920943949805

`A215788(eq[5, A193592(n)])`
-/

namespace A215784.P1869454920943949805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215784.P1869454920943949805

namespace A215784

/-- `A215788(eq[5, A193592(n)])` -/
def P1869454920943949805.Spec : Prop :=
  ∀ n, P1869454920943949805.a n = A215784 (n + 1)

end A215784

/-!
# A215785: Number of permutations of 0..floor((n*7-1)/2) on even squares of an n X 7 array such that each row, column, diagonal and (downwards) antidiagonal of even squares is increasing.

The programs for A215785, there is no canonical definition to state claims against.
-/

/-! ## A215785.P6037454433077394154

`A215788(A055999(n+4))`
-/

namespace A215785.P6037454433077394154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (A055999 (n + 4)).toNat

end

end A215785.P6037454433077394154

/-! ## A215785.P18317971746057064221

`A215788(eq[4, A219347(n)])`
-/

namespace A215785.P18317971746057064221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215785.P18317971746057064221

/-! ## A215785.P3983153279929882146

`A215788(eq[6, A193592(n)])`
-/

namespace A215785.P3983153279929882146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215785.P3983153279929882146

/-! ## A215785.P5892050071246139851

`A215788(eq[7, A152157(n)])`
-/

namespace A215785.P5892050071246139851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215785.P5892050071246139851

/-! ## A215785.P4699183924657174515

`A215788(Δ[A023551(n+2)])`
-/

namespace A215785.P4699183924657174515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (f1 (n + 1) - f1 n).toNat

end

end A215785.P4699183924657174515

/-!
# A215786: Number of permutations of 0..floor((n*8-1)/2) on even squares of an nX8 array such that each row, column, diagonal and (downwards) antidiagonal of even squares is increasing.

The programs for A215786, there is no canonical definition to state claims against.
-/

/-! ## A215786.P594869155934884120

`A215788(eq[5, A219347(n)])`
-/

namespace A215786.P594869155934884120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215786.P594869155934884120

/-! ## A215786.P14462693081882424296

`A215788(eq[7, A193592(n)])`
-/

namespace A215786.P14462693081882424296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215786.P14462693081882424296

/-! ## A215786.P758263338024589052

`A215788(A155212(n+4)+1)`
-/

namespace A215786.P758263338024589052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (A155212 (n + 4) + 1).toNat

end

end A215786.P758263338024589052

/-! ## A215786.P286377531517900919

`A215788(A056000(n+4)+3)`
-/

namespace A215786.P286377531517900919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (A056000 (n + 4) + 3).toNat

end

end A215786.P286377531517900919

/-! ## A215786.P13917305927023717496

`A215788(eq[7, A130302(n+1)])`
-/

namespace A215786.P13917305927023717496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215786.P13917305927023717496

/-!
# A215787: Number of permutations of 0..floor((n*9-1)/2) on even squares of an nX9 array such that each row, column, diagonal and (downwards) antidiagonal of even squares is increasing.

The programs for A215787, there is no canonical definition to state claims against.
-/

/-! ## A215787.P15591373008205443614

`A215788(eq[6, A219347(n)])`
-/

namespace A215787.P15591373008205443614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215787.P15591373008205443614

/-! ## A215787.P215611991750696056

`A215788(eq[8, A193592(n)])`
-/

namespace A215787.P215611991750696056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215787.P215611991750696056

/-!
# A215788: T(n,k)=Number of permutations of 0..floor((n*k-1)/2) on even squares of an nXk array such that each row, column, diagonal and (downwards) antidiagonal of even squares is increasing.

The programs for A215788, there is no canonical definition to state claims against.
-/

/-! ## A215788.P4740920508181623358

`A000105(A008284(n+1)^A008835(n+1))`
-/

namespace A215788.P4740920508181623358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (SequenceMachineLib.roundAway ((A008284 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A215788.P4740920508181623358

/-! ## A215788.P18390666293618670126

`A000669(A008284(n+1)^A008835(n+1))`
-/

namespace A215788.P18390666293618670126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000669 (SequenceMachineLib.roundAway ((A008284 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A215788.P18390666293618670126

/-! ## A215788.P2996601183271325237

`A054359(A008284(n+1)^A008835(n+1))`
-/

namespace A215788.P2996601183271325237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054359 (SequenceMachineLib.roundAway ((A008284 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A215788.P2996601183271325237

/-! ## A215788.P4182013568173036945

`A196545(A008284(n+1)^A008835(n+1))`
-/

namespace A215788.P4182013568173036945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196545 (SequenceMachineLib.roundAway ((A008284 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A215788.P4182013568173036945

/-! ## A215788.P2479325982995847615

`A000104(A008284(n+1)%A120487(n+1))`
-/

namespace A215788.P2479325982995847615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000104 (Int.tmod (A008284 (n + 1)) (A120487 (n + 1))).toNat

end

end A215788.P2479325982995847615

/-!
# A215789: Number of permutations of 0..floor((3*n-1)/2) on even squares of an 3*n array such that each row, column, diagonal and (downwards) antidiagonal of even squares is increasing.

The programs for A215789, there is no canonical definition to state claims against.
-/

/-! ## A215789.P10681806827732790117

`A215788(∑[n+2]+4)`
-/

namespace A215789.P10681806827732790117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A215789.P10681806827732790117

/-! ## A215789.P9609256150640810592

`A215788(A167614(n+1))+char[18]`
-/

namespace A215789.P9609256150640810592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A215789.P9609256150640810592

/-! ## A215789.P16226186392781256494

`A215788(A167499(n)+n)+char[15]`
-/

namespace A215789.P16226186392781256494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A215789.P16226186392781256494

/-! ## A215789.P13890625570102709483

`A015198(n)*A215788(A167614(n+1))`
-/

namespace A215789.P13890625570102709483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015198 n * A215788 (A167614 (n + 1)).toNat

end

end A215789.P13890625570102709483

/-! ## A215789.P10744285254217512664

`A016168(n)*A215788(A167614(n+1))`
-/

namespace A215789.P10744285254217512664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016168 n * A215788 (A167614 (n + 1)).toNat

end

end A215789.P10744285254217512664

/-!
# A215790: Number of permutations of 0..floor((4*n-1)/2) on even squares of an 4*n array such that each row, column, diagonal and (downwards) antidiagonal of even squares is increasing.

The programs for A215790, there is no canonical definition to state claims against.
-/

/-! ## A215790.P8829391971037418710

`A215788(∑[n+3]+7)`
-/

namespace A215790.P8829391971037418710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A215790.P8829391971037418710

/-! ## A215790.P11468543150163826007

`A362089(A089407(n))`
-/

namespace A215790.P11468543150163826007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362089 (A089407 n).toNat

end

end A215790.P11468543150163826007

/-! ## A215790.P3779804722976892287

`A323013(A151385(n))`
-/

namespace A215790.P3779804722976892287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323013 (A151385 n).toNat

end

end A215790.P3779804722976892287

/-!
# A215791: Number of permutations of 0..floor((5*n-1)/2) on even squares of an 5*n array such that each row, column, diagonal and (downwards) antidiagonal of even squares is increasing.

The programs for A215791, there is no canonical definition to state claims against.
-/

/-! ## A215791.P415054509539072791

`A215788(A167499(n+3))`
-/

namespace A215791.P415054509539072791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (A167499 (n + 3)).toNat

end

end A215791.P415054509539072791

/-! ## A215791.P13105198088189907480

`A215788(A155212(n)+13)`
-/

namespace A215791.P13105198088189907480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (A155212 n + 13).toNat

end

end A215791.P13105198088189907480

/-! ## A215791.P10352741644847614103

`A215788(A056000(n)+15)`
-/

namespace A215791.P10352741644847614103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (A056000 n + 15).toNat

end

end A215791.P10352741644847614103

/-! ## A215791.P14834324206864695266

`A215788(eq[7, A066657(n)])`
-/

namespace A215791.P14834324206864695266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215791.P14834324206864695266

/-! ## A215791.P12884987764380814716

`A215788(∑[A020705(n)]+11)`
-/

namespace A215791.P12884987764380814716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A215791.P12884987764380814716

/-!
# A215792: Number of permutations of 0..floor((6*n-1)/2) on even squares of an 6*n array such that each row, column, diagonal and (downwards) antidiagonal of even squares is increasing.

The programs for A215792, there is no canonical definition to state claims against.
-/

/-! ## A215792.P14281062773427538911

`A215788(C(n+7, 2)-n)`
-/

namespace A215792.P14281062773427538911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (Nat.choose (n + 7) 2 - n)

end

end A215792.P14281062773427538911

/-! ## A215792.P16153308920032597635

`A215788(A167499(n+4)+1)`
-/

namespace A215792.P16153308920032597635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (A167499 (n + 4) + 1).toNat

end

end A215792.P16153308920032597635

/-! ## A215792.P8162527204142775659

`A215788(A167487(n+4)-1)`
-/

namespace A215792.P8162527204142775659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (A167487 (n + 4) - 1).toNat

end

end A215792.P8162527204142775659

/-! ## A215792.P3166397662652898611

`A215788(A167614(n+4)+3)`
-/

namespace A215792.P3166397662652898611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (A167614 (n + 4) + 3).toNat

end

end A215792.P3166397662652898611

/-! ## A215792.P1974751341889953539

`A215788(A145018(n+6)+2)`
-/

namespace A215792.P1974751341889953539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (A145018 (n + 6) + 2).toNat

end

end A215792.P1974751341889953539

/-!
# A215793: Number of permutations of 0..floor((7*n-1)/2) on even squares of an 7*n array such that each row, column, diagonal and (downwards) antidiagonal of even squares is increasing.

The programs for A215793, there is no canonical definition to state claims against.
-/

/-! ## A215793.P4829285568924115030

`A215788(A167487(n+5))`
-/

namespace A215793.P4829285568924115030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (A167487 (n + 5)).toNat

end

end A215793.P4829285568924115030

/-! ## A215793.P6208323173976771313

`A215788(eq[11, A066657(n)])`
-/

namespace A215793.P6208323173976771313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215793.P6208323173976771313

/-! ## A215793.P13939897228365998086

`A215788(A167614(n+5)+4)`
-/

namespace A215793.P13939897228365998086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (A167614 (n + 5) + 4).toNat

end

end A215793.P13939897228365998086

/-! ## A215793.P12967293413539118131

`A215788(A000124(n+6)+6)`
-/

namespace A215793.P12967293413539118131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (A000124 (n + 6) + 6).toNat

end

end A215793.P12967293413539118131

/-! ## A215793.P17208375931530751303

`A215788(A000217(n+6)+7)`
-/

namespace A215793.P17208375931530751303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215788 (A000217 (n + 6) + 7).toNat

end

end A215793.P17208375931530751303

/-!
# A215796: Number of distinct values taken by 7th derivative of x^x^...^x (with n x's and parentheses inserted in all possible ways) at x=1.

The programs for A215796, there is no canonical definition to state claims against.
-/

/-! ## A215796.P5126100367498540748

`A216368(∑[A124808(n)])`
-/

namespace A215796.P5126100367498540748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216368 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A215796.P5126100367498540748

/-! ## A215796.P8080157349161026041

`A216368(∑[∑[A355825(n+1)]])`
-/

namespace A215796.P8080157349161026041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355825 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216368 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A215796.P8080157349161026041

/-! ## A215796.P9715411916623656766

`A054846(A148833(n))`
-/

namespace A215796.P9715411916623656766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A148833 n).toNat

end

end A215796.P9715411916623656766

/-! ## A215796.P976030457646902045

`A100196(A148927(n))`
-/

namespace A215796.P976030457646902045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A148927 n).toNat

end

end A215796.P976030457646902045

/-! ## A215796.P15069753179483733686

`A054846(A389872(n))`
-/

namespace A215796.P15069753179483733686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A389872 n).toNat

end

end A215796.P15069753179483733686

/-!
# A215798: Numbers k such that 2^k - 1 can be written in the form a^2 + 3*b^2.

The programs for A215798, there is no canonical definition to state claims against.
-/

/-! ## A215798.P15510494831759890513

`∪[A215806(n+1), A215807(n+1)]`
-/

namespace A215798.P15510494831759890513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215798.P15510494831759890513

/-! ## A215798.P12157890058837337601

`A261514(n+3)`
-/

namespace A215798.P12157890058837337601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261514 (n + 3)

end

end A215798.P12157890058837337601

/-! ## A215798.P18111857779574675465

`record[A261514(A185585(n))]`
-/

namespace A215798.P18111857779574675465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261514 (A185585 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215798.P18111857779574675465

/-! ## A215798.P8982842068110783447

`record[A261514(A052938(xor(1, n)))]`
-/

namespace A215798.P8982842068110783447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261514 (A052938 (Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215798.P8982842068110783447

/-! ## A215798.P14480971636892836681

`record[A261514(A052938(A004277(n)))]`
-/

namespace A215798.P14480971636892836681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261514 (A052938 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215798.P14480971636892836681

/-! ## A215798.P4177982092182943462

`record[A261514(A052938(A004442(n)))]`
-/

namespace A215798.P4177982092182943462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261514 (A052938 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215798.P4177982092182943462

/-! ## A215798.P16072656641923645282

`record[A261514(A052938(A007599(n)))]`
-/

namespace A215798.P16072656641923645282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261514 (A052938 (A007599 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215798.P16072656641923645282

/-! ## A215798.P12955509736663877210

`record[A261514(A052938(A007843(n)))]`
-/

namespace A215798.P12955509736663877210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261514 (A052938 (A007843 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215798.P12955509736663877210

/-! ## A215798.P13042897872260423307

`record[A261514(A052938(A008619(n)))]`
-/

namespace A215798.P13042897872260423307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261514 (A052938 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215798.P13042897872260423307

/-! ## A215798.P16358684721325870906

`record[A261514(A052938(A052938(n)))]`
-/

namespace A215798.P16358684721325870906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261514 (A052938 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215798.P16358684721325870906

/-!
# A215799: Prime numbers p such that the Mersenne number 2^p - 1 can be written in the form a^2 + 3*b^2.

The programs for A215799, there is no canonical definition to state claims against.
-/

/-! ## A215799.P1012397497660387553

`p?[A215798(n+1)]`
-/

namespace A215799.P1012397497660387553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215799.P1012397497660387553

/-! ## A215799.P979821638758099954

`filter[A215798(n+1), A010051(#)]`
-/

namespace A215799.P979821638758099954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A215799.P979821638758099954

/-! ## A215799.P2471024769535497857

`filter[A215798(n+1), A080339(#)]`
-/

namespace A215799.P2471024769535497857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A215799.P2471024769535497857

/-! ## A215799.P1677529736341368310

`record[A006530(2*A215798(n+1))]`
-/

namespace A215799.P1677529736341368310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A215798 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215799.P1677529736341368310

/-! ## A215799.P13641158859150787126

`record[A006530(lcm(2, A215798(n+1)))]`
-/

namespace A215799.P13641158859150787126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A215798 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215799.P13641158859150787126

