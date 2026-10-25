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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A256400: Numerators of coefficients of expansion of exp( Sum_{k=0..oo} x^(2^k)/2^k ) in powers of x.

The programs for A256400, there is no canonical definition to state claims against.
-/

/-! ## A256400.P11137529548527394352

`A005388(n)/gcd(A000142(n), A005388(n))`
-/

namespace A256400.P11137529548527394352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005388 n : ℚ) / (Int.gcd (A000142 n) (A005388 n) : ℚ)

end

end A256400.P11137529548527394352

/-! ## A256400.P15826798149546486060

`lcm(A005388(n), A052560(n))/A052560(n)`
-/

namespace A256400.P15826798149546486060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A005388 n) (A052560 n) : ℚ) / (A052560 n : ℚ)

end

end A256400.P15826798149546486060

/-!
# A256402: Denominators of coefficients of expansion of exp(-Sum_{k=0..oo} x^(2^k)/2^k ) in powers of x.

The programs for A256402, there is no canonical definition to state claims against.
-/

/-! ## A256402.P2157353928171114365

`gcd(A000265(A049606(n)), A052747(n))`
-/

namespace A256402.P2157353928171114365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (A049606 n).toNat) (A052747 n)

end

end A256402.P2157353928171114365

/-! ## A256402.P5571482640530349922

`A000265(n!/A088567(n))`
-/

namespace A256402.P5571482640530349922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (A088567 n : ℚ))).toNat

end

end A256402.P5571482640530349922

/-! ## A256402.P4831124523041820432

`A000265(n!/A062420(n+1))`
-/

namespace A256402.P4831124523041820432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (A062420 (n + 1) : ℚ))).toNat

end

end A256402.P4831124523041820432

/-! ## A256402.P3554003986868374856

`A000265(A000142(n)/A088567(n))`
-/

namespace A256402.P3554003986868374856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A000142 n : ℚ) / (A088567 n : ℚ))).toNat

end

end A256402.P3554003986868374856

/-! ## A256402.P7103363724379805386

`A000265(A000142(n)/A062420(n+1))`
-/

namespace A256402.P7103363724379805386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A000142 n : ℚ) / (A062420 (n + 1) : ℚ))).toNat

end

end A256402.P7103363724379805386

/-!
# A256403: Records in A166133.

The programs for A256403, there is no canonical definition to state claims against.
-/

/-! ## A256403.P12267746269790808360

`record[A166133(n+1)]`
-/

namespace A256403.P12267746269790808360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256403.P12267746269790808360

/-! ## A256403.P10247900540256367847

`A166133(A256404(n+1))`
-/

namespace A256403.P10247900540256367847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (A256404 (n + 1)).toNat

end

end A256403.P10247900540256367847

/-! ## A256403.P7314951488144453358

`record[sqrt(A256557(n+1)+1)]`
-/

namespace A256403.P7314951488144453358
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A256557 (n + 1) + 1 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256403.P7314951488144453358

/-! ## A256403.P396010397864615924

`record[∑[A256541(A028310(n))]]`
-/

namespace A256403.P396010397864615924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256541 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256403.P396010397864615924

/-! ## A256403.P7721305094640921792

`A122168(A256404(n+2))`
-/

namespace A256403.P7721305094640921792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122168 (A256404 (n + 2)).toNat

end

end A256403.P7721305094640921792

/-!
# A256404: Positions of records in A166133.

The programs for A256404, there is no canonical definition to state claims against.
-/

/-! ## A256404.P15237954411253503943

`A255833(A256403(n+1))`
-/

namespace A256404.P15237954411253503943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (A256403 (n + 1)).toNat

end

end A256404.P15237954411253503943

/-! ## A256404.P13568644325028771710

`A255833(record[A166133(n+1)])`
-/

namespace A256404.P13568644325028771710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256404.P13568644325028771710

/-! ## A256404.P8491005851968811057

`A255833(record[sqrt(A256557(n+1)+1)])`
-/

namespace A256404.P8491005851968811057
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A256557 (n + 1) + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A256404.P8491005851968811057

/-! ## A256404.P9413818722815566952

`A255833(record[A256541(n)+a(n-1)])` with `a(0)=1`
-/

namespace A256404.P9413818722815566952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A256541 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256404.P9413818722815566952

/-!
# A256405: a(n) = smallest missing number after seeing A166133(n).

The programs for A256405, there is no canonical definition to state claims against.
-/

/-! ## A256405.P8112451115870558948

`A256408(∑[char[A256409(n+1)-1]])`
-/

namespace A256405.P8112451115870558948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256409 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256408 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256405.P8112451115870558948

/-!
# A256406: Numbers n such that for some m, A166133(m)=n, A166133(m+1)=n^2-1, in order of increasing m.

The programs for A256406, there is no canonical definition to state claims against.
-/

/-! ## A256406.P9954233114093111234

`A166133(A256703(n+1))`
-/

namespace A256406.P9954233114093111234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (A256703 (n + 1)).toNat

end

end A256406.P9954233114093111234

/-! ## A256406.P5262487941575179365

`A256564(A256703(n+1)+1)+1`
-/

namespace A256406.P5262487941575179365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256564 (A256703 (n + 1) + 1).toNat + 1

end

end A256406.P5262487941575179365

/-! ## A256406.P5399979600194230689

`A256407(A084489(n+1))+A126869(A160608(n))`
-/

namespace A256406.P5399979600194230689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256407 (A084489 (n + 1)).toNat + A126869 (A160608 n).toNat

end

end A256406.P5399979600194230689

/-! ## A256406.P17538785715135530633

`A256407(A084489(n+1)%A196509(n+1))`
-/

namespace A256406.P17538785715135530633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256407 (Int.tmod (A084489 (n + 1)) (A196509 (n + 1))).toNat

end

end A256406.P17538785715135530633

/-!
# A256407: Numbers n such that for some m, A166133(m)=n, A166133(m+1)=n^2-1, in increasing order.

The programs for A256407, there is no canonical definition to state claims against.
-/

/-! ## A256407.P13930194633127232227

`A256410(n+1)+1`
-/

namespace A256407.P13930194633127232227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256410 (n + 1) + 1

end

end A256407.P13930194633127232227

/-! ## A256407.P3704097738332711762

`2-(A081729(A008587(n))²-A256410(A052938(2*n)))`
-/

namespace A256407.P3704097738332711762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A081729 (A008587 n).toNat ^ 2 - A256410 (A052938 (2 * n)).toNat)

end

end A256407.P3704097738332711762

/-! ## A256407.P17981172845971426615

`∑{d}[A256410(A052938(2*n)), #]`
-/

namespace A256407.P17981172845971426615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256410 (A052938 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A256407.P17981172845971426615

/-! ## A256407.P10306548028629263152

`A016116(2*n)-(2^n-1-A256410(A052938(2*n)))`
-/

namespace A256407.P10306548028629263152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) - ((2 ^ n : ℤ) - 1 - A256410 (A052938 (2 * n)).toNat)

end

end A256407.P10306548028629263152

/-! ## A256407.P13718888573638994938

`A000203(A256410(n+1))`
-/

namespace A256407.P13718888573638994938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A256410 (n + 1)).toNat

end

end A256407.P13718888573638994938

/-! ## A256407.P9573552227658849284

`record[∑{d}[A256410(A137734(n)), #]]`
-/

namespace A256407.P9573552227658849284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256410 (A137734 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256407.P9573552227658849284

/-!
# A256408: List of successive smallest missing numbers in A166133.

The programs for A256408, there is no canonical definition to state claims against.
-/

/-! ## A256408.P13907596159792237776

`A166133(A256409(n+2))`
-/

namespace A256408.P13907596159792237776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (A256409 (n + 2)).toNat

end

end A256408.P13907596159792237776

/-! ## A256408.P17245645547610660728

`A166133(record[A255833(n+2)])`
-/

namespace A256408.P17245645547610660728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256408.P17245645547610660728

/-! ## A256408.P14234953530217777232

`record[A256405(n+1-2%(n+1))]`
-/

namespace A256408.P14234953530217777232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256405 (n + 1 - 2 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256408.P14234953530217777232

/-! ## A256408.P11488360115537812168

`A256405(A256409(n+1))`
-/

namespace A256408.P11488360115537812168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256405 (A256409 (n + 1)).toNat

end

end A256408.P11488360115537812168

/-! ## A256408.P217534200228515101

`A256405(A255833(a(n-1)))` with `a(0)=2`
-/

namespace A256408.P217534200228515101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A256405 (A255833 (a (n - 1)).toNat).toNat

end

end A256408.P217534200228515101

/-! ## A256408.P637561951083502588

`record[A256405(A027750(n+1))]`
-/

namespace A256408.P637561951083502588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256405 (A027750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256408.P637561951083502588

/-!
# A256409: a(n) = index of A256408(n) in A166133.

The programs for A256409, there is no canonical definition to state claims against.
-/

/-! ## A256409.P541767813055411880

`record[A255833(n+1)]`
-/

namespace A256409.P541767813055411880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256409.P541767813055411880

/-! ## A256409.P2107118414195860676

`record[A255833(Δ[n²]-n)]%A025169(n)`
-/

namespace A256409.P2107118414195860676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A025169 n)

end

end A256409.P2107118414195860676

/-! ## A256409.P9138653277158285537

`record[A255833(Δ[n²]-n)]/A000034(2*n)`
-/

namespace A256409.P9138653277158285537
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000034 (2 * n) : ℚ)

end

end A256409.P9138653277158285537

/-! ## A256409.P14775672261414330067

`A255833(A256405(a(n-1)))` with `a(0)=1`
-/

namespace A256409.P14775672261414330067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A255833 (A256405 (a (n - 1)).toNat).toNat

end

end A256409.P14775672261414330067

/-! ## A256409.P12502687567211537163

`A028310(record[A255833(Δ[n²]-n)])`
-/

namespace A256409.P12502687567211537163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256409.P12502687567211537163

/-!
# A256410: Subtract 1 from the terms of A256407.

The programs for A256410, there is no canonical definition to state claims against.
-/

/-! ## A256410.P1699775350814754949

`A256407(n+1)-1`
-/

namespace A256410.P1699775350814754949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256407 (n + 1) - 1

end

end A256410.P1699775350814754949

/-! ## A256410.P13138900212572841518

`abs(A256407(n+1)+A057428(A267873(n)))`
-/

namespace A256410.P13138900212572841518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256407 (n + 1) + A057428 (A267873 n).toNat|

end

end A256410.P13138900212572841518

/-! ## A256410.P9419377461394635050

`abs(A256407(n+1)+A057428(A074279(n+1)))`
-/

namespace A256410.P9419377461394635050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256407 (n + 1) + A057428 (A074279 (n + 1)).toNat|

end

end A256410.P9419377461394635050

/-! ## A256410.P16688111118598207781

`abs(A256407(n+1)+A057428(A190334(n+1)))`
-/

namespace A256410.P16688111118598207781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256407 (n + 1) + A057428 (A190334 (n + 1)).toNat|

end

end A256410.P16688111118598207781

/-! ## A256410.P992961653385518784

`p?[A256407(n+1)+A008683(A256396(n+1))]`
-/

namespace A256410.P992961653385518784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256407 (n + 1) + A008683 (A256396 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256410.P992961653385518784

/-! ## A256410.P8213906781250671330

`A306066(A014963(12*n+6))+A256407(n+1)`
-/

namespace A256410.P8213906781250671330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306066 (A014963 (12 * n + 6)).toNat + A256407 (n + 1)

end

end A256410.P8213906781250671330

/-! ## A256410.P10234629940197918670

`abs(A256407(n+1)+A057428(A256414(n+1)))`
-/

namespace A256410.P10234629940197918670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256407 (n + 1) + A057428 (A256414 (n + 1)).toNat|

end

end A256410.P10234629940197918670

/-! ## A256410.P17332584576294665860

`abs(A256407(n+1)+A057428(A033638(n)))`
-/

namespace A256410.P17332584576294665860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256407 (n + 1) + A057428 (A033638 n).toNat|

end

end A256410.P17332584576294665860

/-! ## A256410.P15875204107584457776

`abs(A256407(n+1)+A057428(A055998(n)+6))`
-/

namespace A256410.P15875204107584457776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256407 (n + 1) + A057428 (A055998 n + 6).toNat|

end

end A256410.P15875204107584457776

/-! ## A256410.P1103242082569809279

`abs(A256407(n+1)+A057428(A026615(n+1)))`
-/

namespace A256410.P1103242082569809279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256407 (n + 1) + A057428 (A026615 (n + 1)).toNat|

end

end A256410.P1103242082569809279

/-! ## A256410.P9034520288834979393

`abs(A256407(n+1)+A057428(A002522(n)))`
-/

namespace A256410.P9034520288834979393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256407 (n + 1) + A057428 (A002522 n).toNat|

end

end A256410.P9034520288834979393

/-!
# A256411: Triangle read by rows: T(n,k) (1 <= k <= n) = number of ascendingly generated semigroups of order n with k generators.

The programs for A256411, there is no canonical definition to state claims against.
-/

/-! ## A256411.P4622149654558402924

`A054503(A123108(n)+A030192(n))`
-/

namespace A256411.P4622149654558402924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (A123108 n + A030192 n).toNat

end

end A256411.P4622149654558402924

/-! ## A256411.P14201875589459287653

`A287731(or(A112611(n), A287759(n)))`
-/

namespace A256411.P14201875589459287653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287731 (Int.lor (A112611 n) (A287759 n)).toNat

end

end A256411.P14201875589459287653

/-!
# A256412: Column 2 of triangle in A256411.

The programs for A256412, there is no canonical definition to state claims against.
-/

/-! ## A256412.P13242054640569949006

`A256411(∑[n+1]+2)`
-/

namespace A256412.P13242054640569949006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256411 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A256412.P13242054640569949006

/-!
# A256413: Number of n-dimensional Bravais lattices.

The programs for A256413, there is no canonical definition to state claims against.
-/

/-! ## A256413.P12104567711725533792

`A271608(5*(3^n-2^n))`
-/

namespace A256413.P12104567711725533792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271608 (5 * ((3 ^ n : ℤ) - (2 ^ n : ℤ))).toNat

end

end A256413.P12104567711725533792

/-! ## A256413.P13901506540211434687

`A390328(A149095(n))`
-/

namespace A256413.P13901506540211434687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390328 (A149095 n).toNat

end

end A256413.P13901506540211434687

/-!
# A256414: Indices of prime terms in A121217.

The programs for A256414, there is no canonical definition to state claims against.
-/

/-! ## A256414.P17789227879385707948

`A256618(p?[comp[n²]])`
-/

namespace A256414.P17789227879385707948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256618 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A256414.P17789227879385707948

/-! ## A256414.P6332984185978819174

`A256618(A000040(n+1))`
-/

namespace A256414.P6332984185978819174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256618 (A000040 (n + 1)).toNat

end

end A256414.P6332984185978819174

/-! ## A256414.P2315935911914180819

`A256618(A008578(n+2))`
-/

namespace A256414.P2315935911914180819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256618 (A008578 (n + 2)).toNat

end

end A256414.P2315935911914180819

/-! ## A256414.P11531233387649586787

`A256618(A182986(n+2))`
-/

namespace A256414.P11531233387649586787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256618 (A182986 (n + 2)).toNat

end

end A256414.P11531233387649586787

/-! ## A256414.P11613105876785202966

`record[A256618(A005117(n+2))]`
-/

namespace A256414.P11613105876785202966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256618 (A005117 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256414.P11613105876785202966

/-! ## A256414.P2375356105950453669

`A256618(record[A006530(n+2)])`
-/

namespace A256414.P2375356105950453669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256414.P2375356105950453669

/-! ## A256414.P10113104418359705773

`A256618(record[A014963(n+2)])`
-/

namespace A256414.P10113104418359705773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256414.P10113104418359705773

/-! ## A256414.P15172633922809983453

`A256618(record[A020639(n+2)])`
-/

namespace A256414.P15172633922809983453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256618 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256414.P15172633922809983453

/-! ## A256414.P9415225775854622758

`record[A256618(n+1)+2-A300832(n+1)]`
-/

namespace A256414.P9415225775854622758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256618 (n + 1) + (2 - A300832 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256414.P9415225775854622758

/-! ## A256414.P2208793359667249259

`A256618(A121216(A256219(n+1)))`
-/

namespace A256414.P2208793359667249259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256618 (A121216 (A256219 (n + 1)).toNat).toNat

end

end A256414.P2208793359667249259

/-!
# A256415: Positive integers with primes p replaced by 2p and also 3p replaced by 2p.

The programs for A256415, there is no canonical definition to state claims against.
-/

/-! ## A256415.P10410718865618941254

`A256419(A256618(n+1))`
-/

namespace A256415.P10410718865618941254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256419 (A256618 (n + 1)).toNat

end

end A256415.P10410718865618941254

/-! ## A256415.P12403575307947738956

`A256417(A064664(n+1))`
-/

namespace A256415.P12403575307947738956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256417 (A064664 (n + 1)).toNat

end

end A256415.P12403575307947738956

/-! ## A256415.P12593604609201586176

`A256417(A064421(n+1)+1)`
-/

namespace A256415.P12593604609201586176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256417 (A064421 (n + 1) + 1).toNat

end

end A256415.P12593604609201586176

/-! ## A256415.P15619177736887174713

`A256417(A255482(n+1)+A255479(n+1))`
-/

namespace A256415.P15619177736887174713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256417 (A255482 (n + 1) + A255479 (n + 1)).toNat

end

end A256415.P15619177736887174713

/-! ## A256415.P5605858543206008918

`A268611(A064421(n+1)+1)+A064664(n+1)`
-/

namespace A256415.P5605858543206008918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268611 (A064421 (n + 1) + 1).toNat + A064664 (n + 1)

end

end A256415.P5605858543206008918

/-! ## A256415.P15710394112236061179

`A256424(A255479(n+1))`
-/

namespace A256415.P15710394112236061179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256424 (A255479 (n + 1)).toNat

end

end A256415.P15710394112236061179

/-! ## A256415.P12425438346475749861

`A256424(A064664(n+1)-A255482(n+1))`
-/

namespace A256415.P12425438346475749861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256424 (A064664 (n + 1) - A255482 (n + 1)).toNat

end

end A256415.P12425438346475749861

/-!
# A256417: The EKG sequence (A064413) smoothed by replacing each prime p with 2p and each thrice-prime 3p also with 2p.

The programs for A256417, there is no canonical definition to state claims against.
-/

/-! ## A256417.P15739875974525991050

`A268611(n+1)+1+n`
-/

namespace A256417.P15739875974525991050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268611 (n + 1) + 1 + (n : ℤ)

end

end A256417.P15739875974525991050

/-! ## A256417.P5637784270395601339

`A256415(Δ[A065057(n)])`
-/

namespace A256417.P5637784270395601339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256415 (f1 (n + 1) - f1 n).toNat

end

end A256417.P5637784270395601339

/-! ## A256417.P11022122685903559690

`A256415(A064413(n+1))`
-/

namespace A256417.P11022122685903559690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256415 (A064413 (n + 1)).toNat

end

end A256417.P11022122685903559690

/-! ## A256417.P6884792819662740248

`A256415(sqrt(A104125(n+1)))`
-/

namespace A256417.P6884792819662740248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256415 (SequenceMachineLib.roundAway (Real.sqrt (A104125 (n + 1) : ℝ))).toNat

end

end A256417.P6884792819662740248

/-! ## A256417.P1574089249606973228

`A256415(A065519(n+1)+1+n)`
-/

namespace A256417.P1574089249606973228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256415 (A065519 (n + 1) + 1 + (n : ℤ)).toNat

end

end A256417.P1574089249606973228

/-! ## A256417.P15566301044578130521

`A256415(A065057(n+1)-A065057(n))`
-/

namespace A256417.P15566301044578130521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256415 (A065057 (n + 1) - A065057 n).toNat

end

end A256417.P15566301044578130521

/-! ## A256417.P5686044601730834947

`A256415(∑[A064426(n+1)]-A064426(n+1)+1)`
-/

namespace A256417.P5686044601730834947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256415 (∑ j ∈ Finset.range (n + 1), f1 j - A064426 (n + 1) + 1).toNat

end

end A256417.P5686044601730834947

/-! ## A256417.P14836683459205260867

`A256419(A256618(A064413(A256618(A121217(n+1)))))`
-/

namespace A256417.P14836683459205260867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256419 (A256618 (A064413 (A256618 (A121217 (n + 1)).toNat).toNat).toNat).toNat

end

end A256417.P14836683459205260867

/-! ## A256417.P1341615508810925917

`A256424(n+1-A255482(A064413(n+1)))`
-/

namespace A256417.P1341615508810925917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256424 ((n + 1 : ℤ) - A255482 (A064413 (n + 1)).toNat).toNat

end

end A256417.P1341615508810925917

/-! ## A256417.P7815303916908959259

`A256424(A255479(A064413(A255582(A255479(n+1)))))`
-/

namespace A256417.P7815303916908959259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256424 (A255479 (A064413 (A255582 (A255479 (n + 1)).toNat).toNat).toNat).toNat

end

end A256417.P7815303916908959259

/-!
# A256418: Congrua (possible solutions to the congruum problem): numbers k such that there are integers x, y and z with k = x^2-y^2 = z^2-x^2.

The programs for A256418, there is no canonical definition to state claims against.
-/

/-! ## A256418.P9765792882848705289

`2*A118903(n+1)`
-/

namespace A256418.P9765792882848705289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118903 (n + 1)

end

end A256418.P9765792882848705289

/-! ## A256418.P9960896404777685493

`4*A009112(n+1)`
-/

namespace A256418.P9960896404777685493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A009112 (n + 1)

end

end A256418.P9960896404777685493

/-! ## A256418.P6572240024622117445

`24*A177887(n+1)`
-/

namespace A256418.P6572240024622117445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A177887 (n + 1)

end

end A256418.P6572240024622117445

/-! ## A256418.P2137894884926517060

`A118903(n+1)²/A009112(n+1)`
-/

namespace A256418.P2137894884926517060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118903 (n + 1) ^ 2 : ℚ) / (A009112 (n + 1) : ℚ)

end

end A256418.P2137894884926517060

/-! ## A256418.P1963199650206071514

`A118903(A000027(n+1))+A118903(n+1)`
-/

namespace A256418.P1963199650206071514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118903 (A000027 (n + 1)).toNat + A118903 (n + 1)

end

end A256418.P1963199650206071514

/-! ## A256418.P8925327307017295503

`record[4*A009111(A032742(n+1))]`
-/

namespace A256418.P8925327307017295503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A009111 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256418.P8925327307017295503

/-! ## A256418.P16455634397006740261

`record[4*A009111(A054576(n+1))]`
-/

namespace A256418.P16455634397006740261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A009111 (A054576 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256418.P16455634397006740261

/-! ## A256418.P10081022407978482443

`A008606(A177887(n+1))`
-/

namespace A256418.P10081022407978482443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 (A177887 (n + 1)).toNat

end

end A256418.P10081022407978482443

/-! ## A256418.P18027163933772151381

`A009112(n+1)+A008458(A009112(n+1)/2)`
-/

namespace A256418.P18027163933772151381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009112 (n + 1) + A008458 (SequenceMachineLib.roundAway ((A009112 (n + 1) : ℚ) / 2)).toNat

end

end A256418.P18027163933772151381

/-! ## A256418.P15504116474776272500

`A008574(A009112(n+1))`
-/

namespace A256418.P15504116474776272500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A009112 (n + 1)).toNat

end

end A256418.P15504116474776272500

/-! ## A256418.P13294511313747431689

`A008458(A118903(n+1)/2)-A118903(n+1)`
-/

namespace A256418.P13294511313747431689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.roundAway ((A118903 (n + 1) : ℚ) / 2)).toNat - A118903 (n + 1)

end

end A256418.P13294511313747431689

/-!
# A256419: A121217 smoothed by replacing, for each prime p, the terms equal to either p or 3p with 2p.

The programs for A256419, there is no canonical definition to state claims against.
-/

/-! ## A256419.P913274582453837953

`A256415(A121217(n+1))`
-/

namespace A256419.P913274582453837953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256415 (A121217 (n + 1)).toNat

end

end A256419.P913274582453837953

/-! ## A256419.P17509399226705482048

`A256424(n+1)-A210714(A210714(n))`
-/

namespace A256419.P17509399226705482048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256424 (n + 1) - A210714 (A210714 n).toNat

end

end A256419.P17509399226705482048

/-! ## A256419.P1931941353134712812

`A256415(A357992(n+1)%A093046(n+1))`
-/

namespace A256419.P1931941353134712812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256415 (Int.tmod (A357992 (n + 1)) (A093046 (n + 1))).toNat

end

end A256419.P1931941353134712812

/-! ## A256419.P10769275827693706252

`A256424(n+1)-A256974(A323846(n+1))`
-/

namespace A256419.P10769275827693706252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256424 (n + 1) - A256974 (A323846 (n + 1)).toNat

end

end A256419.P10769275827693706252

/-! ## A256419.P12175927389626291202

`A256424(n+1)-A332671(A269583(n+1))`
-/

namespace A256419.P12175927389626291202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256424 (n + 1) - A332671 (A269583 (n + 1)).toNat

end

end A256419.P12175927389626291202

/-!
# A256421: Odd numbers and twice primes, sorted.

The programs for A256421, the canonical program `A256421.P15019872365247510242` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256421 has offset 1).

The definition of A256421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256421.P15019872365247510242

`comp[2*comp[p?[comp[n²]]]]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256421

/-- `comp[2*comp[p?[comp[n²]]]]` -/
def P15019872365247510242.Spec : Prop :=
  ∀ n, (P15019872365247510242.a n : ℤ) = A256421 (n + 1)

theorem P15019872365247510242.correct : P15019872365247510242.Spec := by
  intro n
  simp only [A256421, Nat.add_sub_cancel]

end A256421

/-! ## A256421.P7871050041252106566

`comp[A176100(n+1)]`
-/

namespace A256421.P7871050041252106566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A256421.P7871050041252106566

namespace A256421

/-- `comp[A176100(n+1)]` -/
def P7871050041252106566.Spec : Prop :=
  ∀ n, (P7871050041252106566.a n : ℤ) = A256421 (n + 1)

end A256421

/-! ## A256421.P13564992894162373643

`comp[2*comp[A007918(n)]]`
-/

namespace A256421.P13564992894162373643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A256421.P13564992894162373643

namespace A256421

/-- `comp[2*comp[A007918(n)]]` -/
def P13564992894162373643.Spec : Prop :=
  ∀ n, (P13564992894162373643.a n : ℤ) = A256421 (n + 1)

end A256421

/-! ## A256421.P1961288577103480688

`comp[2*comp[A051697(n)]]`
-/

namespace A256421.P1961288577103480688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A256421.P1961288577103480688

namespace A256421

/-- `comp[2*comp[A051697(n)]]` -/
def P1961288577103480688.Spec : Prop :=
  ∀ n, (P1961288577103480688.a n : ℤ) = A256421 (n + 1)

end A256421

/-! ## A256421.P16749030207783679575

`comp[2*comp[A060264(n)]]`
-/

namespace A256421.P16749030207783679575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A256421.P16749030207783679575

namespace A256421

/-- `comp[2*comp[A060264(n)]]` -/
def P16749030207783679575.Spec : Prop :=
  ∀ n, (P16749030207783679575.a n : ℤ) = A256421 (n + 1)

end A256421

/-! ## A256421.P7754649188165055802

`comp[2*comp[A088732(n)]]`
-/

namespace A256421.P7754649188165055802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A256421.P7754649188165055802

namespace A256421

/-- `comp[2*comp[A088732(n)]]` -/
def P7754649188165055802.Spec : Prop :=
  ∀ n, (P7754649188165055802.a n : ℤ) = A256421 (n + 1)

end A256421

/-! ## A256421.P10583658910666491001

`comp[2*comp[A134204(n)]]`
-/

namespace A256421.P10583658910666491001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A256421.P10583658910666491001

namespace A256421

/-- `comp[2*comp[A134204(n)]]` -/
def P10583658910666491001.Spec : Prop :=
  ∀ n, (P10583658910666491001.a n : ℤ) = A256421 (n + 1)

end A256421

/-! ## A256421.P7738996158153570314

`comp[2*comp[A151800(n)]]`
-/

namespace A256421.P7738996158153570314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A256421.P7738996158153570314

namespace A256421

/-- `comp[2*comp[A151800(n)]]` -/
def P7738996158153570314.Spec : Prop :=
  ∀ n, (P7738996158153570314.a n : ℤ) = A256421 (n + 1)

end A256421

/-! ## A256421.P11369070527027656902

`comp[2*comp[A162753(n)]]`
-/

namespace A256421.P11369070527027656902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A256421.P11369070527027656902

namespace A256421

/-- `comp[2*comp[A162753(n)]]` -/
def P11369070527027656902.Spec : Prop :=
  ∀ n, (P11369070527027656902.a n : ℤ) = A256421 (n + 1)

end A256421

/-! ## A256421.P539676565921885676

`comp[2*A141468(n+1)]`
-/

namespace A256421.P539676565921885676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A256421.P539676565921885676

namespace A256421

/-- `comp[2*A141468(n+1)]` -/
def P539676565921885676.Spec : Prop :=
  ∀ n, (P539676565921885676.a n : ℤ) = A256421 (n + 1)

end A256421

/-! ## A256421.P8834026120902650563

`comp[2*lt[A055672(n), 1]]`
-/

namespace A256421.P8834026120902650563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A256421.P8834026120902650563

namespace A256421

/-- `comp[2*lt[A055672(n), 1]]` -/
def P8834026120902650563.Spec : Prop :=
  ∀ n, (P8834026120902650563.a n : ℤ) = A256421 (n + 1)

end A256421

/-! ## A256421.P8239302582420233552

`comp[2*comp[A000040(n+1)]]`
-/

namespace A256421.P8239302582420233552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A256421.P8239302582420233552

namespace A256421

/-- `comp[2*comp[A000040(n+1)]]` -/
def P8239302582420233552.Spec : Prop :=
  ∀ n, (P8239302582420233552.a n : ℤ) = A256421 (n + 1)

end A256421

/-! ## A256421.P16551922467462824516

`comp[2*comp[A000705(n+1)]]`
-/

namespace A256421.P16551922467462824516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000705 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A256421.P16551922467462824516

namespace A256421

/-- `comp[2*comp[A000705(n+1)]]` -/
def P16551922467462824516.Spec : Prop :=
  ∀ n, (P16551922467462824516.a n : ℤ) = A256421 (n + 1)

end A256421

/-! ## A256421.P9313809084351282638

`∪[2*n+1, A001358(n+1)]`
-/

namespace A256421.P9313809084351282638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A256421.P9313809084351282638

namespace A256421

/-- `∪[2*n+1, A001358(n+1)]` -/
def P9313809084351282638.Spec : Prop :=
  ∀ n, (P9313809084351282638.a n : ℤ) = A256421 (n + 1)

end A256421

/-! ## A256421.P5633744752606453397

`∪[2*n+1, A054395(n+1)]`
-/

namespace A256421.P5633744752606453397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A256421.P5633744752606453397

namespace A256421

/-- `∪[2*n+1, A054395(n+1)]` -/
def P5633744752606453397.Spec : Prop :=
  ∀ n, (P5633744752606453397.a n : ℤ) = A256421 (n + 1)

end A256421

/-! ## A256421.P7796025003902571155

`∪[2*n+1, A075862(n+1)]`
-/

namespace A256421.P7796025003902571155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A256421.P7796025003902571155

namespace A256421

/-- `∪[2*n+1, A075862(n+1)]` -/
def P7796025003902571155.Spec : Prop :=
  ∀ n, (P7796025003902571155.a n : ℤ) = A256421 (n + 1)

end A256421

/-! ## A256421.P17416292176882881140

`∪[2*n+1, A091376(n+1)]`
-/

namespace A256421.P17416292176882881140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A256421.P17416292176882881140

namespace A256421

/-- `∪[2*n+1, A091376(n+1)]` -/
def P17416292176882881140.Spec : Prop :=
  ∀ n, (P17416292176882881140.a n : ℤ) = A256421 (n + 1)

end A256421

/-! ## A256421.P15508001975273558918

`∪[2*n+1, A100484(n+1)]`
-/

namespace A256421.P15508001975273558918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A256421.P15508001975273558918

namespace A256421

/-- `∪[2*n+1, A100484(n+1)]` -/
def P15508001975273558918.Spec : Prop :=
  ∀ n, (P15508001975273558918.a n : ℤ) = A256421 (n + 1)

end A256421

/-! ## A256421.P771576075136244055

`∪[2*n+1, A157931(n+1)]`
-/

namespace A256421.P771576075136244055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A256421.P771576075136244055

namespace A256421

/-- `∪[2*n+1, A157931(n+1)]` -/
def P771576075136244055.Spec : Prop :=
  ∀ n, (P771576075136244055.a n : ℤ) = A256421 (n + 1)

end A256421

/-! ## A256421.P14503964612614561852

`∪[2*n+1, A176540(n+1)]`
-/

namespace A256421.P14503964612614561852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A256421.P14503964612614561852

namespace A256421

/-- `∪[2*n+1, A176540(n+1)]` -/
def P14503964612614561852.Spec : Prop :=
  ∀ n, (P14503964612614561852.a n : ℤ) = A256421 (n + 1)

end A256421

/-!
# A256422: Numbers n such that A166133(n) sets a new record and also satisfies A166133(n)=A166133(n-1)^2-1.

The programs for A256422, there is no canonical definition to state claims against.
-/

/-! ## A256422.P5212446175095733509

`A256404(n+16)%A256423(n+1)`
-/

namespace A256422.P5212446175095733509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256404 (n + 16)) (A256423 (n + 1))

end

end A256422.P5212446175095733509

/-! ## A256422.P503144879181654366

`A255833(record[A256406(n+1)])+1`
-/

namespace A256422.P503144879181654366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A256422.P503144879181654366

/-! ## A256422.P2135518169390273902

`A256404(A010054(a(n-1))+n+16)` with `a(0)=5`
-/

namespace A256422.P2135518169390273902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A256404 (A010054 (a (n - 1)).toNat + (n : ℤ) + 16).toNat

end

end A256422.P2135518169390273902

/-! ## A256422.P4025991345381799156

`A256404(n+16)%A071401(A071757(n))`
-/

namespace A256422.P4025991345381799156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256404 (n + 16)) (A071401 (A071757 n).toNat)

end

end A256422.P4025991345381799156

/-!
# A256423: Consider numbers n such that A166133(n) sets a new record and also satisfies A166133(n)=A166133(n-1)^2-1; sequence gives values of A166133(n).

The programs for A256423, there is no canonical definition to state claims against.
-/

/-! ## A256423.P17242979436729947550

`record[A256406(n+1)²-1]`
-/

namespace A256423.P17242979436729947550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256406 (n + 1) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256423.P17242979436729947550

/-! ## A256423.P14028588018038014200

`A164117(2*n+1)+record[A256406(n+1)]²`
-/

namespace A256423.P14028588018038014200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164117 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A256423.P14028588018038014200

/-! ## A256423.P9763764193296864824

`A033999(A005408(n))+record[A256406(n+1)²]`
-/

namespace A256423.P9763764193296864824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256406 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A005408 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256423.P9763764193296864824

/-! ## A256423.P10006780350212246756

`A056594(A016825(n))+record[A256406(n+1)²]`
-/

namespace A256423.P10006780350212246756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256406 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A016825 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256423.P10006780350212246756

/-! ## A256423.P9636171399755821868

`record[A321800(A007814(n+1))+A256406(n+1)²]`
-/

namespace A256423.P9636171399755821868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A007814 (n + 1)).toNat + A256406 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256423.P9636171399755821868

/-! ## A256423.P13712777637870696775

`record[A256406(n+1)²]+A008683(A089628(n+3))`
-/

namespace A256423.P13712777637870696775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256406 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A008683 (A089628 (n + 3)).toNat

end

end A256423.P13712777637870696775

/-! ## A256423.P13888282721549453677

`∩[A089954(n+1), A256403(n+1)]`
-/

namespace A256423.P13888282721549453677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256423.P13888282721549453677

/-! ## A256423.P8466271348790887162

`∩[A134020(n+1), A256403(n+1)]`
-/

namespace A256423.P8466271348790887162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256423.P8466271348790887162

/-!
# A256424: A255582 smoothed by replacing each prime p with 2p and each thrice-prime 3p also with 2p.

The programs for A256424, there is no canonical definition to state claims against.
-/

/-! ## A256424.P1193726186459980739

`A256415(A255582(n+1))`
-/

namespace A256424.P1193726186459980739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256415 (A255582 (n + 1)).toNat

end

end A256424.P1193726186459980739

/-! ## A256424.P15389393931204509642

`A256415(A254077(n+1)-A256974(n))`
-/

namespace A256424.P15389393931204509642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256415 (A254077 (n + 1) - A256974 n).toNat

end

end A256424.P15389393931204509642

/-! ## A256424.P17720693586012203579

`A256415(A254077(n+1)+A134824(n)*A256974(n))`
-/

namespace A256424.P17720693586012203579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256415 (A254077 (n + 1) + A134824 n * A256974 n).toNat

end

end A256424.P17720693586012203579

/-! ## A256424.P16049161641142276006

`A256415(A254077(n+1)+A256974(n)*A260196(n))`
-/

namespace A256424.P16049161641142276006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256415 (A254077 (n + 1) + A256974 n * A260196 n).toNat

end

end A256424.P16049161641142276006

/-! ## A256424.P7181442160290932412

`A256415(A254077(n+1)+A256974(n)/A260196(n))`
-/

namespace A256424.P7181442160290932412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256415 (SequenceMachineLib.roundAway ((A254077 (n + 1) : ℚ) + (A256974 n : ℚ) / (A260196 n : ℚ))).toNat

end

end A256424.P7181442160290932412

/-!
# A256427: Mary Had A Little Lamb (another version).

The programs for A256427, there is no canonical definition to state claims against.
-/

/-! ## A256427.P14526828642266556287

`xor(12, A120441(n+1))%6`
-/

namespace A256427.P14526828642266556287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor 12 (A120441 (n + 1))) 6

end

end A256427.P14526828642266556287

/-!
# A256428: G.f.: x^2*(1-2*x)/(1-8*x+22*x^2-26*x^3+14*x^4-5*x^5+x^6).

The programs for A256428, there is no canonical definition to state claims against.
-/

/-! ## A256428.P14639187578700484019

`A143955(n)+A004526(A001835(n))`
-/

namespace A256428.P14639187578700484019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 n + A004526 (A001835 n).toNat

end

end A256428.P14639187578700484019

/-! ## A256428.P3957200644966127451

`∑[round(A154639(n)/15)]`
-/

namespace A256428.P3957200644966127451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A154639 n : ℚ) / 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256428.P3957200644966127451

/-! ## A256428.P15641370357619573084

`∑[A008651(∑[A234272(n)])]`
-/

namespace A256428.P15641370357619573084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234272 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256428.P15641370357619573084

/-!
# A256429: a(n) is the total number of pentagrams in a variant of pentagram fractal after n iterations.

The programs for A256429, the canonical program `A256429.P3654708320270262664` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256429 has offset 0).

The definition of A256429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256429.P9158856961113672848

`∑[ogf((1+3x-3x^2)/(1-2x+2x^2-5x^3))]`
-/

namespace A256429.P9158856961113672848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -3] [1, -2, 2, -5] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256429.P9158856961113672848

namespace A256429

/-- `∑[ogf((1+3x-3x^2)/(1-2x+2x^2-5x^3))]` -/
def P9158856961113672848.Spec : Prop :=
  ∀ n, P9158856961113672848.a n = A256429 n

end A256429

/-! ## A256429.P3654708320270262664

`3*a(n-1)-4*a(n-2)+7*a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=6, a(2)=11, a(3)=16`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256429

/-- `3*a(n-1)-4*a(n-2)+7*a(n-3)-5*a(n-4)` -/
def P3654708320270262664.Spec : Prop :=
  ∀ n, P3654708320270262664.a n = A256429 n

theorem P3654708320270262664.correct : P3654708320270262664.Spec := by
  intro n
  simp only [A256429]

end A256429

/-!
# A256430: The least positive integer in A055744 divisible by A008578(n).

The programs for A256430, there is no canonical definition to state claims against.
-/

/-! ## A256430.P9669773607470218687

`A008578(n+1)²*A113766(A008578(n+1))`
-/

namespace A256430.P9669773607470218687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) ^ 2 * A113766 (A008578 (n + 1)).toNat

end

end A256430.P9669773607470218687

/-! ## A256430.P4585788556690253784

`A285728(A138420(n+1))`
-/

namespace A256430.P4585788556690253784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285728 (A138420 (n + 1)).toNat

end

end A256430.P4585788556690253784

/-!
# A256432: Characteristic function of octahedral numbers.

The programs for A256432, the canonical program `A256432.P8847654694162281362` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256432 has offset 0).

The definition of A256432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256432.P8847654694162281362

`char[∑[4*C(n, 2)]+n]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256432

/-- `char[∑[4*C(n, 2)]+n]` -/
def P8847654694162281362.Spec : Prop :=
  ∀ n, (P8847654694162281362.a n : ℤ) = A256432 n

theorem P8847654694162281362.correct : P8847654694162281362.Spec := by
  intro n
  simp only [A256432]

end A256432

/-! ## A256432.P13894338296476688126

`char[∑[2*n²]-n²]`
-/

namespace A256432.P13894338296476688126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A256432.P13894338296476688126

namespace A256432

/-- `char[∑[2*n²]-n²]` -/
def P13894338296476688126.Spec : Prop :=
  ∀ n, (P13894338296476688126.a n : ℤ) = A256432 n

end A256432

/-! ## A256432.P7285436503410565467

`char[A005900(n+2)]+C(n, n²)`
-/

namespace A256432.P7285436503410565467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + Nat.choose n (n ^ 2)

end

end A256432.P7285436503410565467

namespace A256432

/-- `char[A005900(n+2)]+C(n, n²)` -/
def P7285436503410565467.Spec : Prop :=
  ∀ n, (P7285436503410565467.a n : ℤ) = A256432 n

end A256432

/-! ## A256432.P14810798832493941590

`A000007(n)+char[∑[∑[4*n]+1]]`
-/

namespace A256432.P14810798832493941590
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A256432.P14810798832493941590

namespace A256432

/-- `A000007(n)+char[∑[∑[4*n]+1]]` -/
def P14810798832493941590.Spec : Prop :=
  ∀ n, P14810798832493941590.a n = A256432 n

end A256432

/-! ## A256432.P17979397569460788926

`or(char[A005900(n)], A000007(n))`
-/

namespace A256432.P17979397569460788926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A000007 n)

end

end A256432.P17979397569460788926

namespace A256432

/-- `or(char[A005900(n)], A000007(n))` -/
def P17979397569460788926.Spec : Prop :=
  ∀ n, P17979397569460788926.a n = A256432 n

end A256432

/-! ## A256432.P18157322324646171020

`ceil(char[A005900(n)]/A006530(n+1))`
-/

namespace A256432.P18157322324646171020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) / (A006530 (n + 1) : ℚ)⌉

end

end A256432.P18157322324646171020

namespace A256432

/-- `ceil(char[A005900(n)]/A006530(n+1))` -/
def P18157322324646171020.Spec : Prop :=
  ∀ n, P18157322324646171020.a n = A256432 n

end A256432

/-! ## A256432.P5513228975594952757

`char[A043641(n+1)]+char[A005900(n)]`
-/

namespace A256432.P5513228975594952757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A256432.P5513228975594952757

namespace A256432

/-- `char[A043641(n+1)]+char[A005900(n)]` -/
def P5513228975594952757.Spec : Prop :=
  ∀ n, (P5513228975594952757.a n : ℤ) = A256432 n

end A256432

/-! ## A256432.P3998417511339686872

`char[A250941(n+1)]+char[A005900(n)]`
-/

namespace A256432.P3998417511339686872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A256432.P3998417511339686872

namespace A256432

/-- `char[A250941(n+1)]+char[A005900(n)]` -/
def P3998417511339686872.Spec : Prop :=
  ∀ n, (P3998417511339686872.a n : ℤ) = A256432 n

end A256432

/-! ## A256432.P12470876059933472871

`A002620(a(n-1))+char[A005900(n)]` with `a(0)=1`
-/

namespace A256432.P12470876059933472871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002620 (a (n - 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A256432.P12470876059933472871

namespace A256432

/-- `A002620(a(n-1))+char[A005900(n)]` -/
def P12470876059933472871.Spec : Prop :=
  ∀ n, P12470876059933472871.a n = A256432 n

end A256432

/-! ## A256432.P2981684551551687654

`A000108(a(n-1))*char[A005900(n)]` with `a(0)=1`
-/

namespace A256432.P2981684551551687654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000108 (a (n - 1)).toNat * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A256432.P2981684551551687654

namespace A256432

/-- `A000108(a(n-1))*char[A005900(n)]` -/
def P2981684551551687654.Spec : Prop :=
  ∀ n, P2981684551551687654.a n = A256432 n

end A256432

/-! ## A256432.P17612096649471985972

`A001222(A101300(n))*char[A005900(n)]`
-/

namespace A256432.P17612096649471985972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A101300 n).toNat * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A256432.P17612096649471985972

namespace A256432

/-- `A001222(A101300(n))*char[A005900(n)]` -/
def P17612096649471985972.Spec : Prop :=
  ∀ n, P17612096649471985972.a n = A256432 n

end A256432

/-! ## A256432.P5425086308497168120

`A014963(4*n+6)*char[A005900(n)]`
-/

namespace A256432.P5425086308497168120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A256432.P5425086308497168120

namespace A256432

/-- `A014963(4*n+6)*char[A005900(n)]` -/
def P5425086308497168120.Spec : Prop :=
  ∀ n, P5425086308497168120.a n = A256432 n

end A256432

/-! ## A256432.P14829553382270126510

`char[A005900(n)]*A334926(n+1)`
-/

namespace A256432.P14829553382270126510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A334926 (n + 1)

end

end A256432.P14829553382270126510

namespace A256432

/-- `char[A005900(n)]*A334926(n+1)` -/
def P14829553382270126510.Spec : Prop :=
  ∀ n, P14829553382270126510.a n = A256432 n

end A256432

/-!
# A256433: Characteristic function of dodecahedral numbers.

The programs for A256433, the canonical program `A256433.P13639057570825030016` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256433 has offset 0).

The definition of A256433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256433.P13639057570825030016

`char[C(3*n, 3)]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256433

/-- `char[C(3*n, 3)]` -/
def P13639057570825030016.Spec : Prop :=
  ∀ n, (P13639057570825030016.a n : ℤ) = A256433 n

theorem P13639057570825030016.correct : P13639057570825030016.Spec := by
  intro n
  simp only [A256433]

end A256433

/-! ## A256433.P6189987587726187079

`char[A006566(n)]`
-/

namespace A256433.P6189987587726187079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006566 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A256433.P6189987587726187079

namespace A256433

/-- `char[A006566(n)]` -/
def P6189987587726187079.Spec : Prop :=
  ∀ n, (P6189987587726187079.a n : ℤ) = A256433 n

end A256433

/-! ## A256433.P17038216156610644200

`char[∑[n]*A128615(n)]`
-/

namespace A256433.P17038216156610644200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A128615 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A256433.P17038216156610644200

namespace A256433

/-- `char[∑[n]*A128615(n)]` -/
def P17038216156610644200.Spec : Prop :=
  ∀ n, (P17038216156610644200.a n : ℤ) = A256433 n

end A256433

/-! ## A256433.P18236860727856409666

`char[∑[n]*A131358(n)]`
-/

namespace A256433.P18236860727856409666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A131358 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A256433.P18236860727856409666

namespace A256433

/-- `char[∑[n]*A131358(n)]` -/
def P18236860727856409666.Spec : Prop :=
  ∀ n, (P18236860727856409666.a n : ℤ) = A256433 n

end A256433

/-! ## A256433.P11292649944970374390

`char[A127774(3*n+1)]`
-/

namespace A256433.P11292649944970374390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127774 (3 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A256433.P11292649944970374390

namespace A256433

/-- `char[A127774(3*n+1)]` -/
def P11292649944970374390.Spec : Prop :=
  ∀ n, (P11292649944970374390.a n : ℤ) = A256433 n

end A256433

/-! ## A256433.P17673789557531473853

`char[n*(A117625(n)-n)]`
-/

namespace A256433.P17673789557531473853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A117625 n - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A256433.P17673789557531473853

namespace A256433

/-- `char[n*(A117625(n)-n)]` -/
def P17673789557531473853.Spec : Prop :=
  ∀ n, (P17673789557531473853.a n : ℤ) = A256433 n

end A256433

/-! ## A256433.P12009799495724059188

`char[(n%3)%2*A000292(n)]`
-/

namespace A256433.P12009799495724059188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 3 % 2 : ℕ) : ℤ) * A000292 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A256433.P12009799495724059188

namespace A256433

/-- `char[(n%3)%2*A000292(n)]` -/
def P12009799495724059188.Spec : Prop :=
  ∀ n, (P12009799495724059188.a n : ℤ) = A256433 n

end A256433

/-! ## A256433.P7742876658355409520

`char[and(A000292(n), A049347(n))]`
-/

namespace A256433.P7742876658355409520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000292 n) (A049347 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A256433.P7742876658355409520

namespace A256433

/-- `char[and(A000292(n), A049347(n))]` -/
def P7742876658355409520.Spec : Prop :=
  ∀ n, (P7742876658355409520.a n : ℤ) = A256433 n

end A256433

/-! ## A256433.P588478154248391241

`and(A023533(n), A026336(n))`
-/

namespace A256433.P588478154248391241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023533 n) (A026336 n)

end

end A256433.P588478154248391241

namespace A256433

/-- `and(A023533(n), A026336(n))` -/
def P588478154248391241.Spec : Prop :=
  ∀ n, P588478154248391241.a n = A256433 n

end A256433

/-! ## A256433.P2298734709877327852

`and(A006365(n*A023533(n)), A023533(n))`
-/

namespace A256433.P2298734709877327852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006365 ((n : ℤ) * A023533 n).toNat) (A023533 n)

end

end A256433.P2298734709877327852

namespace A256433

/-- `and(A006365(n*A023533(n)), A023533(n))` -/
def P2298734709877327852.Spec : Prop :=
  ∀ n, P2298734709877327852.a n = A256433 n

end A256433

/-! ## A256433.P15569706244886606984

`and(A023533(n), A148033(n*A023533(n)))`
-/

namespace A256433.P15569706244886606984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023533 n) (A148033 ((n : ℤ) * A023533 n).toNat)

end

end A256433.P15569706244886606984

namespace A256433

/-- `and(A023533(n), A148033(n*A023533(n)))` -/
def P15569706244886606984.Spec : Prop :=
  ∀ n, P15569706244886606984.a n = A256433 n

end A256433

/-! ## A256433.P3099406764960616095

`and(A006365(n), A023533(n))`
-/

namespace A256433.P3099406764960616095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006365 n) (A023533 n)

end

end A256433.P3099406764960616095

namespace A256433

/-- `and(A006365(n), A023533(n))` -/
def P3099406764960616095.Spec : Prop :=
  ∀ n, P3099406764960616095.a n = A256433 n

end A256433

/-! ## A256433.P13469168620573974655

`and(A023533(n), A148033(n))`
-/

namespace A256433.P13469168620573974655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023533 n) (A148033 n)

end

end A256433.P13469168620573974655

namespace A256433

/-- `and(A023533(n), A148033(n))` -/
def P13469168620573974655.Spec : Prop :=
  ∀ n, P13469168620573974655.a n = A256433 n

end A256433

/-!
# A256434: Characteristic function of icosahedral numbers.

The programs for A256434, the canonical program `A256434.P8536698948202425806` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256434 has offset 0).

The definition of A256434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256434.P8536698948202425806

`char[n*(5*C(n, 2)+1)]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256434

/-- `char[n*(5*C(n, 2)+1)]` -/
def P8536698948202425806.Spec : Prop :=
  ∀ n, (P8536698948202425806.a n : ℤ) = A256434 n

theorem P8536698948202425806.correct : P8536698948202425806.Spec := by
  intro n
  simp only [A256434]

end A256434

/-! ## A256434.P2138209710533496129

`log2(char[(∑[5*n]+1)*(n+1)]+1)^n`
-/

namespace A256434.P2138209710533496129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 1) * (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℝ) ^ n

end

end A256434.P2138209710533496129

namespace A256434

/-- `log2(char[(∑[5*n]+1)*(n+1)]+1)^n` -/
def P2138209710533496129.Spec : Prop :=
  ∀ n, P2138209710533496129.a n = (A256434 n : ℝ)

end A256434

/-! ## A256434.P11633995614854071733

`char[n*(A192136(n)-n)]`
-/

namespace A256434.P11633995614854071733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A192136 n - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A256434.P11633995614854071733

namespace A256434

/-- `char[n*(A192136(n)-n)]` -/
def P11633995614854071733.Spec : Prop :=
  ∀ n, (P11633995614854071733.a n : ℤ) = A256434 n

end A256434

/-! ## A256434.P17524929228185115593

`char[n*(A056105(n)-∑[n])]`
-/

namespace A256434.P17524929228185115593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A056105 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A256434.P17524929228185115593

namespace A256434

/-- `char[n*(A056105(n)-∑[n])]` -/
def P17524929228185115593.Spec : Prop :=
  ∀ n, (P17524929228185115593.a n : ℤ) = A256434 n

end A256434

/-! ## A256434.P8286326375473068729

`char[n*A113497((1-n)²+n)]`
-/

namespace A256434.P8286326375473068729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A113497 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A256434.P8286326375473068729

namespace A256434

/-- `char[n*A113497((1-n)²+n)]` -/
def P8286326375473068729.Spec : Prop :=
  ∀ n, (P8286326375473068729.a n : ℤ) = A256434 n

end A256434

/-! ## A256434.P17247511004434012114

`char[n*A168282((1-n)²+n)]`
-/

namespace A256434.P17247511004434012114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168282 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A256434.P17247511004434012114

namespace A256434

/-- `char[n*A168282((1-n)²+n)]` -/
def P17247511004434012114.Spec : Prop :=
  ∀ n, (P17247511004434012114.a n : ℤ) = A256434 n

end A256434

/-! ## A256434.P2531148660205303435

`char[A015240(n)+n*A034856(n+1)]`
-/

namespace A256434.P2531148660205303435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015240 n + (n : ℤ) * A034856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A256434.P2531148660205303435

namespace A256434

/-- `char[A015240(n)+n*A034856(n+1)]` -/
def P2531148660205303435.Spec : Prop :=
  ∀ n, (P2531148660205303435.a n : ℤ) = A256434 n

end A256434

/-! ## A256434.P5519327401983842386

`char[n*char[A006564(n+1)]]`
-/

namespace A256434.P5519327401983842386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006564 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A256434.P5519327401983842386

namespace A256434

/-- `char[n*char[A006564(n+1)]]` -/
def P5519327401983842386.Spec : Prop :=
  ∀ n, (P5519327401983842386.a n : ℤ) = A256434 n

end A256434

/-! ## A256434.P12011181762864170139

`and(A123272(n+1), A282610(n))`
-/

namespace A256434.P12011181762864170139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123272 (n + 1)) (A282610 n)

end

end A256434.P12011181762864170139

namespace A256434

/-- `and(A123272(n+1), A282610(n))` -/
def P12011181762864170139.Spec : Prop :=
  ∀ n, P12011181762864170139.a n = A256434 n

end A256434

/-! ## A256434.P1598495274116759654

`val(n+2, A182395(n+2))`
-/

namespace A256434.P1598495274116759654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) (A182395 (n + 2)).toNat

end

end A256434.P1598495274116759654

namespace A256434

/-- `val(n+2, A182395(n+2))` -/
def P1598495274116759654.Spec : Prop :=
  ∀ n, (P1598495274116759654.a n : ℤ) = A256434 n

end A256434

/-!
# A256435: First differences of sums of two squares.

The programs for A256435, the canonical program `A256435.P229463995676631497` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256435 has offset 1).

The definition of A256435 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256435.P229463995676631497

`A001481(n+2)-A001481(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A256435

/-- `A001481(n+2)-A001481(n+1)` -/
def P229463995676631497.Spec : Prop :=
  ∀ n, P229463995676631497.a n = A256435 (n + 1)

theorem P229463995676631497.correct : P229463995676631497.Spec := by
  intro n
  simp only [A256435, Nat.add_sub_cancel]

end A256435

/-! ## A256435.P3365751251112539152

`Δ[∪[A000404(n+1), n²]]`
-/

namespace A256435.P3365751251112539152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A256435.P3365751251112539152

namespace A256435

/-- `Δ[∪[A000404(n+1), n²]]` -/
def P3365751251112539152.Spec : Prop :=
  ∀ n, P3365751251112539152.a n = A256435 (n + 1)

end A256435

/-! ## A256435.P15129730596420486724

`Δ[∪[A000415(n+1), n²]]`
-/

namespace A256435.P15129730596420486724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A256435.P15129730596420486724

namespace A256435

/-- `Δ[∪[A000415(n+1), n²]]` -/
def P15129730596420486724.Spec : Prop :=
  ∀ n, P15129730596420486724.a n = A256435 (n + 1)

end A256435

/-! ## A256435.P10804552515246128715

`Δ[A001481(n+1)]`
-/

namespace A256435.P10804552515246128715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256435.P10804552515246128715

namespace A256435

/-- `Δ[A001481(n+1)]` -/
def P10804552515246128715.Spec : Prop :=
  ∀ n, P10804552515246128715.a n = A256435 (n + 1)

theorem P10804552515246128715.correct : P10804552515246128715.Spec := by
  intro n
  simp only [A256435, Nat.add_sub_cancel, A256435.P10804552515246128715.f1, A256435.P10804552515246128715.a, A256435.P229463995676631497.a, SequenceMachineLib.memo_apply]

end A256435

/-! ## A256435.P2523008105842592062

`Δ[A166687(n+1)]`
-/

namespace A256435.P2523008105842592062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256435.P2523008105842592062

namespace A256435

/-- `Δ[A166687(n+1)]` -/
def P2523008105842592062.Spec : Prop :=
  ∀ n, P2523008105842592062.a n = A256435 (n + 1)

theorem P2523008105842592062.correct : P2523008105842592062.Spec := by
  intro n
  simp only [A256435, Nat.add_sub_cancel, A256435.P2523008105842592062.f1, A256435.P2523008105842592062.a, A256435.P229463995676631497.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A166687, A166687.P18219030986989704232.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, A069011, A069011.P9337676359071489470.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A256435

/-! ## A256435.P7476830959077162788

`Δ[floor(A128106(n+1)/2)]`
-/

namespace A256435.P7476830959077162788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A128106 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256435.P7476830959077162788

namespace A256435

/-- `Δ[floor(A128106(n+1)/2)]` -/
def P7476830959077162788.Spec : Prop :=
  ∀ n, P7476830959077162788.a n = A256435 (n + 1)

end A256435

/-! ## A256435.P1935938008080150380

`A166687(n+2)-A166687(n+1)`
-/

namespace A256435.P1935938008080150380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 2) - A166687 (n + 1)

end

end A256435.P1935938008080150380

namespace A256435

/-- `A166687(n+2)-A166687(n+1)` -/
def P1935938008080150380.Spec : Prop :=
  ∀ n, P1935938008080150380.a n = A256435 (n + 1)

theorem P1935938008080150380.correct : P1935938008080150380.Spec := by
  intro n
  simp only [A256435, Nat.add_sub_cancel, A256435.P1935938008080150380.a, A256435.P229463995676631497.a, A001481, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A166687, A166687.P18219030986989704232.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, A069011, A069011.P9337676359071489470.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A256435

/-! ## A256435.P34374186847567352

`Δ[lt[A002828(n), 3]]`
-/

namespace A256435.P34374186847567352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A256435.P34374186847567352

namespace A256435

/-- `Δ[lt[A002828(n), 3]]` -/
def P34374186847567352.Spec : Prop :=
  ∀ n, P34374186847567352.a n = A256435 (n + 1)

end A256435

/-! ## A256435.P10067673622572793154

`Δ[lt[A070176(n), 1]]`
-/

namespace A256435.P10067673622572793154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A256435.P10067673622572793154

namespace A256435

/-- `Δ[lt[A070176(n), 1]]` -/
def P10067673622572793154.Spec : Prop :=
  ∀ n, P10067673622572793154.a n = A256435 (n + 1)

end A256435

/-!
# A256436: Characteristic function of pentatope numbers.

The programs for A256436, the canonical program `A256436.P3816604375055384815` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256436 has offset 0).

The definition of A256436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256436.P3816604375055384815

`char[C(n, 4)]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256436

/-- `char[C(n, 4)]` -/
def P3816604375055384815.Spec : Prop :=
  ∀ n, (P3816604375055384815.a n : ℤ) = A256436 n

theorem P3816604375055384815.correct : P3816604375055384815.Spec := by
  intro n
  simp only [A256436]

end A256436

/-! ## A256436.P9114820922320720178

`char[∑[∑[∑[n]]]]`
-/

namespace A256436.P9114820922320720178
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A256436.P9114820922320720178

namespace A256436

/-- `char[∑[∑[∑[n]]]]` -/
def P9114820922320720178.Spec : Prop :=
  ∀ n, (P9114820922320720178.a n : ℤ) = A256436 n

end A256436

/-! ## A256436.P108257077404885749

`and(1, char[A000332(n)])`
-/

namespace A256436.P108257077404885749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A256436.P108257077404885749

namespace A256436

/-- `and(1, char[A000332(n)])` -/
def P108257077404885749.Spec : Prop :=
  ∀ n, (P108257077404885749.a n : ℤ) = A256436 n

end A256436

/-! ## A256436.P13612437217438969477

`C(3, A200737(n+1))`
-/

namespace A256436.P13612437217438969477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A200737 (n + 1)).toNat

end

end A256436.P13612437217438969477

namespace A256436

/-- `C(3, A200737(n+1))` -/
def P13612437217438969477.Spec : Prop :=
  ∀ n, (P13612437217438969477.a n : ℤ) = A256436 n

end A256436

/-! ## A256436.P968835536115587008

`and(1, char[Δ[A000389(n)]])`
-/

namespace A256436.P968835536115587008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A256436.P968835536115587008

namespace A256436

/-- `and(1, char[Δ[A000389(n)]])` -/
def P968835536115587008.Spec : Prop :=
  ∀ n, (P968835536115587008.a n : ℤ) = A256436 n

end A256436

/-! ## A256436.P7490381399289392129

`and(1, char[Δ[A081284(n)]])`
-/

namespace A256436.P7490381399289392129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081284 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A256436.P7490381399289392129

namespace A256436

/-- `and(1, char[Δ[A081284(n)]])` -/
def P7490381399289392129.Spec : Prop :=
  ∀ n, (P7490381399289392129.a n : ℤ) = A256436 n

end A256436

/-! ## A256436.P15724011802659855166

`ceil(atan(char[A000332(n+1)]))`
-/

namespace A256436.P15724011802659855166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)⌉

end

end A256436.P15724011802659855166

namespace A256436

/-- `ceil(atan(char[A000332(n+1)]))` -/
def P15724011802659855166.Spec : Prop :=
  ∀ n, P15724011802659855166.a n = A256436 n

end A256436

/-! ## A256436.P11528415974788973664

`gcd(n, A002522(n))*char[A000332(n)]`
-/

namespace A256436.P11528415974788973664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A002522 n) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A256436.P11528415974788973664

namespace A256436

/-- `gcd(n, A002522(n))*char[A000332(n)]` -/
def P11528415974788973664.Spec : Prop :=
  ∀ n, (P11528415974788973664.a n : ℤ) = A256436 n

end A256436

/-! ## A256436.P12757308714865867935

`and(1, char[A000389(n+1)-A000389(n)])`
-/

namespace A256436.P12757308714865867935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 1) - A000389 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A256436.P12757308714865867935

namespace A256436

/-- `and(1, char[A000389(n+1)-A000389(n)])` -/
def P12757308714865867935.Spec : Prop :=
  ∀ n, (P12757308714865867935.a n : ℤ) = A256436 n

end A256436

/-! ## A256436.P3068326172249703396

`ceil(char[A000332(n)]/(A005117(n+1)+4))`
-/

namespace A256436.P3068326172249703396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) / (A005117 (n + 1) + 4 : ℚ)⌉

end

end A256436.P3068326172249703396

namespace A256436

/-- `ceil(char[A000332(n)]/(A005117(n+1)+4))` -/
def P3068326172249703396.Spec : Prop :=
  ∀ n, P3068326172249703396.a n = A256436 n

end A256436

/-! ## A256436.P6663297411023746350

`A113052(A023747(n+1))`
-/

namespace A256436.P6663297411023746350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113052 (A023747 (n + 1)).toNat

end

end A256436.P6663297411023746350

namespace A256436

/-- `A113052(A023747(n+1))` -/
def P6663297411023746350.Spec : Prop :=
  ∀ n, P6663297411023746350.a n = A256436 n

end A256436

/-! ## A256436.P986789930357288426

`A261360(n)%2`
-/

namespace A256436.P986789930357288426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261360 n) 2

end

end A256436.P986789930357288426

namespace A256436

/-- `A261360(n)%2` -/
def P986789930357288426.Spec : Prop :=
  ∀ n, P986789930357288426.a n = A256436 n

end A256436

/-! ## A256436.P17469176215844195027

`A000035(A261360(n))`
-/

namespace A256436.P17469176215844195027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A261360 n).toNat

end

end A256436.P17469176215844195027

namespace A256436

/-- `A000035(A261360(n))` -/
def P17469176215844195027.Spec : Prop :=
  ∀ n, P17469176215844195027.a n = A256436 n

end A256436

/-! ## A256436.P4516661020091379010

`and(A002064(n), A261360(n))`
-/

namespace A256436.P4516661020091379010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002064 n) (A261360 n)

end

end A256436.P4516661020091379010

namespace A256436

/-- `and(A002064(n), A261360(n))` -/
def P4516661020091379010.Spec : Prop :=
  ∀ n, P4516661020091379010.a n = A256436 n

end A256436

/-! ## A256436.P17517601767933975050

`and(A006483(n), A261360(n))`
-/

namespace A256436.P17517601767933975050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006483 n) (A261360 n)

end

end A256436.P17517601767933975050

namespace A256436

/-- `and(A006483(n), A261360(n))` -/
def P17517601767933975050.Spec : Prop :=
  ∀ n, P17517601767933975050.a n = A256436 n

end A256436

/-! ## A256436.P11379859582152488528

`and(A027608(n), A261360(n))`
-/

namespace A256436.P11379859582152488528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027608 n) (A261360 n)

end

end A256436.P11379859582152488528

namespace A256436

/-- `and(A027608(n), A261360(n))` -/
def P11379859582152488528.Spec : Prop :=
  ∀ n, P11379859582152488528.a n = A256436 n

end A256436

/-! ## A256436.P11712249048249165570

`and(A048477(n), A261360(n))`
-/

namespace A256436.P11712249048249165570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048477 n) (A261360 n)

end

end A256436.P11712249048249165570

namespace A256436

/-- `and(A048477(n), A261360(n))` -/
def P11712249048249165570.Spec : Prop :=
  ∀ n, P11712249048249165570.a n = A256436 n

end A256436

/-! ## A256436.P4731560710009588957

`and(A048479(n), A261360(n))`
-/

namespace A256436.P4731560710009588957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A261360 n)

end

end A256436.P4731560710009588957

namespace A256436

/-- `and(A048479(n), A261360(n))` -/
def P4731560710009588957.Spec : Prop :=
  ∀ n, P4731560710009588957.a n = A256436 n

end A256436

/-!
# A256437: Nonnegative integers i such that i^2 + reverse(i)^2 is a palindrome.

The programs for A256437, there is no canonical definition to state claims against.
-/

/-! ## A256437.P11276855913665879193

`lt[A118881(n), A251621(n+2)+6]`
-/

namespace A256437.P11276855913665879193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251621 (n + 2) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A256437.P11276855913665879193

/-! ## A256437.P7440071877515006673

`lt[A113581(n), log2(A113581(3*(n+1)))]`
-/

namespace A256437.P7440071877515006673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113581 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A113581 (3 * (n + 1)) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A256437.P7440071877515006673

/-! ## A256437.P6398949251543916412

`lt[A136850(A113581(n)), A089898(2*n+1)]`
-/

namespace A256437.P6398949251543916412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136850 (A113581 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A256437.P6398949251543916412

/-! ## A256437.P15303880041329316658

`lt[A034827(A113581(n)), A113581(3*n+2)]`
-/

namespace A256437.P15303880041329316658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034827 (A113581 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113581 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A256437.P15303880041329316658

/-! ## A256437.P5082888204705903452

`lt[A113581(n), A061775(A095180(n+1))]`
-/

namespace A256437.P5082888204705903452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A095180 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A256437.P5082888204705903452

/-!
# A256438: Numbers m such that sigma(sigma(m-1)) = 2*(m-1).

The programs for A256438, there is no canonical definition to state claims against.
-/

/-! ## A256438.P8193923069760546294

`A019279(n+1)+1`
-/

namespace A256438.P8193923069760546294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019279 (n + 1) + 1

end

end A256438.P8193923069760546294

/-! ## A256438.P6633657341573480512

`A169628(∑[n]+1)`
-/

namespace A256438.P6633657341573480512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169628 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256438.P6633657341573480512

/-! ## A256438.P13794649990405162426

`sqrt(A152921(n+1))+1`
-/

namespace A256438.P13794649990405162426
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A152921 (n + 1) : ℝ) + 1

end

end A256438.P13794649990405162426

/-! ## A256438.P2865749365357456282

`ceil(A239546(n+1)/2)`
-/

namespace A256438.P2865749365357456282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A239546 (n + 1) : ℚ) / 2⌉

end

end A256438.P2865749365357456282

/-! ## A256438.P3863963813967395723

`2*A134708(n+1)+1`
-/

namespace A256438.P3863963813967395723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134708 (n + 1) + 1

end

end A256438.P3863963813967395723

/-!
# A256439: Numbers k such that phi(k-1)+1 divides sigma(k).

The programs for A256439, there is no canonical definition to state claims against.
-/

/-! ## A256439.P6897456453721209871

`A015775(n+1)+1`
-/

namespace A256439.P6897456453721209871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015775 (n + 1) + 1

end

end A256439.P6897456453721209871

/-! ## A256439.P7446700573106568563

`A020725(A015775(n+1))`
-/

namespace A256439.P7446700573106568563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A015775 (n + 1)).toNat

end

end A256439.P7446700573106568563

/-!
# A256440: Regular triangle where the n-th row lists the integers k between 1 and n ordered by increasing value of sigma(k)/k where sigma is the sum of divisors, A000203.

The programs for A256440, there is no canonical definition to state claims against.
-/

/-! ## A256440.P2823696782015165756

`gcd(A036493(n), A307081(n+1))`
-/

namespace A256440.P2823696782015165756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036493 n) (A307081 (n + 1))

end

end A256440.P2823696782015165756

/-! ## A256440.P6255379377151712816

`A307081(or(n+1, A058348(n)))`
-/

namespace A256440.P6255379377151712816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307081 (Int.lor (n + 1 : ℤ) (A058348 n)).toNat

end

end A256440.P6255379377151712816

/-! ## A256440.P11054986562768173798

`A307081(and(1, A326392(n+1))+n)`
-/

namespace A256440.P11054986562768173798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307081 (Int.land 1 (A326392 (n + 1)) + (n : ℤ)).toNat

end

end A256440.P11054986562768173798

/-! ## A256440.P1753055580262713403

`A307081(n+1)+A015161(3*n+1)`
-/

namespace A256440.P1753055580262713403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307081 (n + 1) + A015161 (3 * n + 1)

end

end A256440.P1753055580262713403

/-! ## A256440.P10130633180400770621

`A308097(2*n+5)+A307081(n+1)`
-/

namespace A256440.P10130633180400770621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308097 (2 * n + 5) + A307081 (n + 1)

end

end A256440.P10130633180400770621

/-!
# A256441: Binary representation of base-(i-1) expansion of -n: replace i-1 with 2 in base-(i-1) expansion of -n.

The programs for A256441, there is no canonical definition to state claims against.
-/

/-! ## A256441.P1415540895442018924

`A066321(4*n)/16`
-/

namespace A256441.P1415540895442018924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066321 (4 * n) : ℚ) / 16

end

end A256441.P1415540895442018924

/-! ## A256441.P4679897508926228740

`A340669(A066321(n))`
-/

namespace A256441.P4679897508926228740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340669 (A066321 n).toNat

end

end A256441.P4679897508926228740

/-!
# A256442: Denominators of sqrt(2) * Integral_{x=0..sqrt(1/3)} 1/(1-x^2)^(n+3/2) dx.

The programs for A256442, there is no canonical definition to state claims against.
-/

/-! ## A256442.P6485101868198411723

`2^n*A269950(∑[n])`
-/

namespace A256442.P6485101868198411723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A269950 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256442.P6485101868198411723

/-! ## A256442.P5380399841388500844

`lcm(∏{p}[A002457(n)+1, #]-1, 2^n)`
-/

namespace A256442.P5380399841388500844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - 1) (2 ^ n : ℤ)

end

end A256442.P5380399841388500844

/-! ## A256442.P16580096989128818638

`record[A140648(n)]*A001803(n)`
-/

namespace A256442.P16580096989128818638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001803 n

end

end A256442.P16580096989128818638

/-! ## A256442.P2616224465225230435

`2^n*A001803(A029966(n+1))`
-/

namespace A256442.P2616224465225230435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001803 (A029966 (n + 1)).toNat

end

end A256442.P2616224465225230435

/-! ## A256442.P1624385420635265301

`n!*C(2*n, n)*Δ[n²]/A335115(A160624(n))`
-/

namespace A256442.P1624385420635265301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n * Nat.choose (2 * n) n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / (A335115 (A160624 n).toNat : ℚ)

end

end A256442.P1624385420635265301

/-!
# A256444: Numbers k such that sigma(k) = 2*(phi(k-1)+1).

The programs for A256444, there is no canonical definition to state claims against.
-/

/-! ## A256444.P12499222054416090423

`A256439(A048329(n)+1)`
-/

namespace A256444.P12499222054416090423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256439 (A048329 n + 1).toNat

end

end A256444.P12499222054416090423

/-! ## A256444.P17059492786803770368

`A256439(A156301(n)+A047749(n))`
-/

namespace A256444.P17059492786803770368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256439 (A156301 n + A047749 n).toNat

end

end A256444.P17059492786803770368

/-! ## A256444.P17549322576319194191

`A256439(A344741(n)+A185617(n+1))`
-/

namespace A256444.P17549322576319194191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256439 (A344741 n + A185617 (n + 1)).toNat

end

end A256444.P17549322576319194191

/-!
# A256446: First differences of A250477: a(n) = A250477(n+1) - A250477(n).

The programs for A256446, the canonical program `A256446.P17907843069056531532` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256446 has offset 1).

The definition of A256446 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250477, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256446.P15861483687790514530

`A256447(n+2)+A256448(n+1)`
-/

namespace A256446.P15861483687790514530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256447 (n + 2) + A256448 (n + 1)

end

end A256446.P15861483687790514530

namespace A256446

/-- `A256447(n+2)+A256448(n+1)` -/
def P15861483687790514530.Spec : Prop :=
  ∀ n, P15861483687790514530.a n = A256446 (n + 1)

theorem P15861483687790514530.correct : P15861483687790514530.Spec := by
  intro n
  simp only [A256446, Nat.add_sub_cancel, A256446.P15861483687790514530.a, A256446.P17907843069056531532.a, A250477, A250477.P16411795154775873264.a, A256447, A256447.P10526496064396814310.a, A256448, A256448.P8888948745584736931.a, A120941, A120941.P1519152944059217125.a, A250474, A250474.P15580657759443600580.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250473, A250473.P15728952414264512561.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256446

/-! ## A256446.P17907843069056531532

`A250477(n+2)-A250477(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A256446

/-- `A250477(n+2)-A250477(n+1)` -/
def P17907843069056531532.Spec : Prop :=
  ∀ n, P17907843069056531532.a n = A256446 (n + 1)

theorem P17907843069056531532.correct : P17907843069056531532.Spec := by
  intro n
  simp only [A256446, Nat.add_sub_cancel]

end A256446

/-! ## A256446.P17403423431749199925

`Δ[A120941(n+1)]`
-/

namespace A256446.P17403423431749199925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256446.P17403423431749199925

namespace A256446

/-- `Δ[A120941(n+1)]` -/
def P17403423431749199925.Spec : Prop :=
  ∀ n, P17403423431749199925.a n = A256446 (n + 1)

theorem P17403423431749199925.correct : P17403423431749199925.Spec := by
  intro n
  simp only [A256446, Nat.add_sub_cancel, A256446.P17403423431749199925.f1, A256446.P17403423431749199925.a, A256446.P17907843069056531532.a, A120941, A120941.P1519152944059217125.a, A250477, A250477.P16411795154775873264.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256446

/-! ## A256446.P11951692978873788637

`A120941(n+2)-A120941(n+1)`
-/

namespace A256446.P11951692978873788637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120941 (n + 2) - A120941 (n + 1)

end

end A256446.P11951692978873788637

namespace A256446

/-- `A120941(n+2)-A120941(n+1)` -/
def P11951692978873788637.Spec : Prop :=
  ∀ n, P11951692978873788637.a n = A256446 (n + 1)

theorem P11951692978873788637.correct : P11951692978873788637.Spec := by
  intro n
  simp only [A256446, Nat.add_sub_cancel, A256446.P11951692978873788637.a, A256446.P17907843069056531532.a, A120941, A120941.P1519152944059217125.a, A250477, A250477.P16411795154775873264.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256446

/-! ## A256446.P11118865081753855045

`Δ[A256468(n+1)+A054272(n+1)]`
-/

namespace A256446.P11118865081753855045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256468 (n + 1) + A054272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256446.P11118865081753855045

namespace A256446

/-- `Δ[A256468(n+1)+A054272(n+1)]` -/
def P11118865081753855045.Spec : Prop :=
  ∀ n, P11118865081753855045.a n = A256446 (n + 1)

theorem P11118865081753855045.correct : P11118865081753855045.Spec := by
  intro n
  simp only [A256446, Nat.add_sub_cancel, A256446.P11118865081753855045.f1, A256446.P11118865081753855045.a, A256446.P17907843069056531532.a, A054272, A054272.P16500536369367462355.a, A250477, A250477.P16411795154775873264.a, A256468, A256468.P15833489412511418299.a, A120941, A120941.P1519152944059217125.a, A250474, A250474.P15580657759443600580.a, A256447, A256447.P10526496064396814310.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250473, A250473.P15728952414264512561.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256446

/-! ## A256446.P286513019989959508

`A251723(n+1)+A256468(n+2)-A256468(n+1)`
-/

namespace A256446.P286513019989959508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (n + 1) + (A256468 (n + 2) - A256468 (n + 1))

end

end A256446.P286513019989959508

namespace A256446

/-- `A251723(n+1)+A256468(n+2)-A256468(n+1)` -/
def P286513019989959508.Spec : Prop :=
  ∀ n, P286513019989959508.a n = A256446 (n + 1)

theorem P286513019989959508.correct : P286513019989959508.Spec := by
  intro n
  simp only [A256446, Nat.add_sub_cancel, A256446.P286513019989959508.a, A256446.P17907843069056531532.a, A250477, A250477.P16411795154775873264.a, A251723, A251723.P8283630235415226138.a, A256468, A256468.P15833489412511418299.a, A054272, A054272.P16500536369367462355.a, A120941, A120941.P1519152944059217125.a, A256447, A256447.P10526496064396814310.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250474, A250474.P15580657759443600580.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A250473, A250473.P15728952414264512561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256446

/-! ## A256446.P5039310590405218058

`A256448(n+1)+A251723(n+2)-A256448(n+2)`
-/

namespace A256446.P5039310590405218058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256448 (n + 1) + (A251723 (n + 2) - A256448 (n + 2))

end

end A256446.P5039310590405218058

namespace A256446

/-- `A256448(n+1)+A251723(n+2)-A256448(n+2)` -/
def P5039310590405218058.Spec : Prop :=
  ∀ n, P5039310590405218058.a n = A256446 (n + 1)

theorem P5039310590405218058.correct : P5039310590405218058.Spec := by
  intro n
  simp only [A256446, Nat.add_sub_cancel, A256446.P5039310590405218058.a, A256446.P17907843069056531532.a, A250477, A250477.P16411795154775873264.a, A251723, A251723.P8283630235415226138.a, A256448, A256448.P8888948745584736931.a, A054272, A054272.P16500536369367462355.a, A120941, A120941.P1519152944059217125.a, A250474, A250474.P15580657759443600580.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250473, A250473.P15728952414264512561.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256446

/-! ## A256446.P9024245654107496921

`A256469(n+1)+A251723(n+2)-A256469(n+2)`
-/

namespace A256446.P9024245654107496921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256469 (n + 1) + (A251723 (n + 2) - A256469 (n + 2))

end

end A256446.P9024245654107496921

namespace A256446

/-- `A256469(n+1)+A251723(n+2)-A256469(n+2)` -/
def P9024245654107496921.Spec : Prop :=
  ∀ n, P9024245654107496921.a n = A256446 (n + 1)

theorem P9024245654107496921.correct : P9024245654107496921.Spec := by
  intro n
  simp only [A256446, Nat.add_sub_cancel, A256446.P9024245654107496921.a, A256446.P17907843069056531532.a, A250477, A250477.P16411795154775873264.a, A251723, A251723.P8283630235415226138.a, A256469, A256469.P956244140118081997.a, A054272, A054272.P16500536369367462355.a, A120941, A120941.P1519152944059217125.a, A256448, A256448.P8888948745584736931.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250474, A250474.P15580657759443600580.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A250473, A250473.P15728952414264512561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256446

/-! ## A256446.P10277731371027239503

`A256448(n+1)+A256449(n+2)+A256448(n+2)`
-/

namespace A256446.P10277731371027239503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256448 (n + 1) + (A256449 (n + 2) + A256448 (n + 2))

end

end A256446.P10277731371027239503

namespace A256446

/-- `A256448(n+1)+A256449(n+2)+A256448(n+2)` -/
def P10277731371027239503.Spec : Prop :=
  ∀ n, P10277731371027239503.a n = A256446 (n + 1)

theorem P10277731371027239503.correct : P10277731371027239503.Spec := by
  intro n
  simp only [A256446, Nat.add_sub_cancel, A256446.P10277731371027239503.a, A256446.P17907843069056531532.a, A250477, A250477.P16411795154775873264.a, A256448, A256448.P8888948745584736931.a, A256449, A256449.P3394376339508603245.a, A120941, A120941.P1519152944059217125.a, A250474, A250474.P15580657759443600580.a, A256447, A256447.P10526496064396814310.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250473, A250473.P15728952414264512561.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256446

/-! ## A256446.P9548448096310181761

`A050216(n+1)+A256468(n+2)-A256447(n+1)`
-/

namespace A256446.P9548448096310181761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (n + 1) + (A256468 (n + 2) - A256447 (n + 1))

end

end A256446.P9548448096310181761

namespace A256446

/-- `A050216(n+1)+A256468(n+2)-A256447(n+1)` -/
def P9548448096310181761.Spec : Prop :=
  ∀ n, P9548448096310181761.a n = A256446 (n + 1)

end A256446

/-! ## A256446.P8036658224757968587

`A251723(n+1)+A256447(n+2)-A256447(n+1)`
-/

namespace A256446.P8036658224757968587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (n + 1) + (A256447 (n + 2) - A256447 (n + 1))

end

end A256446.P8036658224757968587

namespace A256446

/-- `A251723(n+1)+A256447(n+2)-A256447(n+1)` -/
def P8036658224757968587.Spec : Prop :=
  ∀ n, P8036658224757968587.a n = A256446 (n + 1)

theorem P8036658224757968587.correct : P8036658224757968587.Spec := by
  intro n
  simp only [A256446, Nat.add_sub_cancel, A256446.P8036658224757968587.a, A256446.P17907843069056531532.a, A250477, A250477.P16411795154775873264.a, A251723, A251723.P8283630235415226138.a, A256447, A256447.P10526496064396814310.a, A054272, A054272.P16500536369367462355.a, A120941, A120941.P1519152944059217125.a, A250474, A250474.P15580657759443600580.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250473, A250473.P15728952414264512561.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256446

/-! ## A256446.P13641735500995146884

`A256447(n+1)+A256447(n+2)-A256449(n+1)`
-/

namespace A256446.P13641735500995146884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256447 (n + 1) + (A256447 (n + 2) - A256449 (n + 1))

end

end A256446.P13641735500995146884

namespace A256446

/-- `A256447(n+1)+A256447(n+2)-A256449(n+1)` -/
def P13641735500995146884.Spec : Prop :=
  ∀ n, P13641735500995146884.a n = A256446 (n + 1)

theorem P13641735500995146884.correct : P13641735500995146884.Spec := by
  intro n
  simp only [A256446, Nat.add_sub_cancel, A256446.P13641735500995146884.a, A256446.P17907843069056531532.a, A250477, A250477.P16411795154775873264.a, A256447, A256447.P10526496064396814310.a, A256449, A256449.P3394376339508603245.a, A120941, A120941.P1519152944059217125.a, A250474, A250474.P15580657759443600580.a, A256448, A256448.P8888948745584736931.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250473, A250473.P15728952414264512561.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256446

/-! ## A256446.P10105303124599046610

`Δ[A250477(n+1)]`
-/

namespace A256446.P10105303124599046610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256446.P10105303124599046610

namespace A256446

/-- `Δ[A250477(n+1)]` -/
def P10105303124599046610.Spec : Prop :=
  ∀ n, P10105303124599046610.a n = A256446 (n + 1)

theorem P10105303124599046610.correct : P10105303124599046610.Spec := by
  intro n
  simp only [A256446, Nat.add_sub_cancel, A256446.P10105303124599046610.f1, A256446.P10105303124599046610.a, A256446.P17907843069056531532.a, SequenceMachineLib.memo_apply]

end A256446

/-! ## A256446.P13644694209874019183

`A275219(n+1)-1`
-/

namespace A256446.P13644694209874019183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275219 (n + 1) - 1

end

end A256446.P13644694209874019183

namespace A256446

/-- `A275219(n+1)-1` -/
def P13644694209874019183.Spec : Prop :=
  ∀ n, P13644694209874019183.a n = A256446 (n + 1)

theorem P13644694209874019183.correct : P13644694209874019183.Spec := by
  intro n
  simp only [A256446, Nat.add_sub_cancel, A256446.P13644694209874019183.a, A256446.P17907843069056531532.a, A250477, A250477.P16411795154775873264.a, A275219, A275219.P2439531357343426924.a, A120941, A120941.P1519152944059217125.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256446

/-! ## A256446.P5001767703024958693

`A023443(A275219(n+1))`
-/

namespace A256446.P5001767703024958693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A275219 (n + 1)).toNat

end

end A256446.P5001767703024958693

namespace A256446

/-- `A023443(A275219(n+1))` -/
def P5001767703024958693.Spec : Prop :=
  ∀ n, P5001767703024958693.a n = A256446 (n + 1)

end A256446

/-!
# A256447: Number of integers in range (prime(n)^2)+1 .. (prime(n)*prime(n+1)) whose smallest prime factor is at least prime(n): a(n) = A250477(n) - A250474(n).

The programs for A256447, the canonical program `A256447.P10526496064396814310` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256447 has offset 1).

The definition of A256447 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250477, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256447.P16830025409778140777

`A256468(n+1)+1`
-/

namespace A256447.P16830025409778140777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256468 (n + 1) + 1

end

end A256447.P16830025409778140777

namespace A256447

/-- `A256468(n+1)+1` -/
def P16830025409778140777.Spec : Prop :=
  ∀ n, P16830025409778140777.a n = A256447 (n + 1)

theorem P16830025409778140777.correct : P16830025409778140777.Spec := by
  intro n
  simp only [A256447, Nat.add_sub_cancel, A256447.P16830025409778140777.a, A256447.P10526496064396814310.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256468, A256468.P15833489412511418299.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256447

/-! ## A256447.P9276573570606610553

`A256448(n+1)+A256449(n+1)`
-/

namespace A256447.P9276573570606610553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256448 (n + 1) + A256449 (n + 1)

end

end A256447.P9276573570606610553

namespace A256447

/-- `A256448(n+1)+A256449(n+1)` -/
def P9276573570606610553.Spec : Prop :=
  ∀ n, P9276573570606610553.a n = A256447 (n + 1)

theorem P9276573570606610553.correct : P9276573570606610553.Spec := by
  intro n
  simp only [A256447, Nat.add_sub_cancel, A256447.P9276573570606610553.a, A256447.P10526496064396814310.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256448, A256448.P8888948745584736931.a, A256449, A256449.P3394376339508603245.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256447

/-! ## A256447.P2009827781514215253

`A251723(n+1)-A256448(n+1)`
-/

namespace A256447.P2009827781514215253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (n + 1) - A256448 (n + 1)

end

end A256447.P2009827781514215253

namespace A256447

/-- `A251723(n+1)-A256448(n+1)` -/
def P2009827781514215253.Spec : Prop :=
  ∀ n, P2009827781514215253.a n = A256447 (n + 1)

theorem P2009827781514215253.correct : P2009827781514215253.Spec := by
  intro n
  simp only [A256447, Nat.add_sub_cancel, A256447.P2009827781514215253.a, A256447.P10526496064396814310.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A251723, A251723.P8283630235415226138.a, A256448, A256448.P8888948745584736931.a, A054272, A054272.P16500536369367462355.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256447

/-! ## A256447.P10526496064396814310

`A250477(n+1)-A250474(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A256447

/-- `A250477(n+1)-A250474(n+1)` -/
def P10526496064396814310.Spec : Prop :=
  ∀ n, P10526496064396814310.a n = A256447 (n + 1)

theorem P10526496064396814310.correct : P10526496064396814310.Spec := by
  intro n
  simp only [A256447, Nat.add_sub_cancel]

end A256447

/-! ## A256447.P17834021528622011348

`A120941(n+1)+1-A054272(n+1)`
-/

namespace A256447.P17834021528622011348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120941 (n + 1) + (1 - A054272 (n + 1))

end

end A256447.P17834021528622011348

namespace A256447

/-- `A120941(n+1)+1-A054272(n+1)` -/
def P17834021528622011348.Spec : Prop :=
  ∀ n, P17834021528622011348.a n = A256447 (n + 1)

theorem P17834021528622011348.correct : P17834021528622011348.Spec := by
  intro n
  simp only [A256447, Nat.add_sub_cancel, A256447.P17834021528622011348.a, A256447.P10526496064396814310.a, A054272, A054272.P16500536369367462355.a, A120941, A120941.P1519152944059217125.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250473, A250473.P15728952414264512561.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256447

/-! ## A256447.P4214054728093871761

`A256469(n+1)+1-A256470(n+1)`
-/

namespace A256447.P4214054728093871761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256469 (n + 1) + (1 - A256470 (n + 1))

end

end A256447.P4214054728093871761

namespace A256447

/-- `A256469(n+1)+1-A256470(n+1)` -/
def P4214054728093871761.Spec : Prop :=
  ∀ n, P4214054728093871761.a n = A256447 (n + 1)

theorem P4214054728093871761.correct : P4214054728093871761.Spec := by
  intro n
  simp only [A256447, Nat.add_sub_cancel, A256447.P4214054728093871761.a, A256447.P10526496064396814310.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256469, A256469.P956244140118081997.a, A256470, A256470.P3494554339232187623.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A256448, A256448.P8888948745584736931.a, A256468, A256468.P15833489412511418299.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256447

/-! ## A256447.P7109797310305386639

`A251723(n+1)+2-A256469(n+1)`
-/

namespace A256447.P7109797310305386639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (n + 1) + (2 - A256469 (n + 1))

end

end A256447.P7109797310305386639

namespace A256447

/-- `A251723(n+1)+2-A256469(n+1)` -/
def P7109797310305386639.Spec : Prop :=
  ∀ n, P7109797310305386639.a n = A256447 (n + 1)

theorem P7109797310305386639.correct : P7109797310305386639.Spec := by
  intro n
  simp only [A256447, Nat.add_sub_cancel, A256447.P7109797310305386639.a, A256447.P10526496064396814310.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A251723, A251723.P8283630235415226138.a, A256469, A256469.P956244140118081997.a, A054272, A054272.P16500536369367462355.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A256448, A256448.P8888948745584736931.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256447

/-! ## A256447.P17093782133039922710

`A256449(n+1)+A256469(n+1)-2`
-/

namespace A256447.P17093782133039922710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256449 (n + 1) + (A256469 (n + 1) - 2)

end

end A256447.P17093782133039922710

namespace A256447

/-- `A256449(n+1)+A256469(n+1)-2` -/
def P17093782133039922710.Spec : Prop :=
  ∀ n, P17093782133039922710.a n = A256447 (n + 1)

theorem P17093782133039922710.correct : P17093782133039922710.Spec := by
  intro n
  simp only [A256447, Nat.add_sub_cancel, A256447.P17093782133039922710.a, A256447.P10526496064396814310.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256449, A256449.P3394376339508603245.a, A256469, A256469.P956244140118081997.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A256448, A256448.P8888948745584736931.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256447

/-! ## A256447.P4072417861168950819

`(A256449(n+1)+A251723(n+1))/2`
-/

namespace A256447.P4072417861168950819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256449 (n + 1) + A251723 (n + 1) : ℚ) / 2

end

end A256447.P4072417861168950819

namespace A256447

/-- `(A256449(n+1)+A251723(n+1))/2` -/
def P4072417861168950819.Spec : Prop :=
  ∀ n, P4072417861168950819.a n = (A256447 (n + 1) : ℚ)

theorem P4072417861168950819.correct : P4072417861168950819.Spec := by
  intro n
  simp only [A256447, Nat.add_sub_cancel, A256447.P4072417861168950819.a, A256447.P10526496064396814310.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A251723, A251723.P8283630235415226138.a, A256449, A256449.P3394376339508603245.a, A054272, A054272.P16500536369367462355.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A256448, A256448.P8888948745584736931.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256447

/-! ## A256447.P5517815101762336321

`A054272(n+2)-(A256448(n+1)+A054272(n+1))`
-/

namespace A256447.P5517815101762336321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054272 (n + 2) - (A256448 (n + 1) + A054272 (n + 1))

end

end A256447.P5517815101762336321

namespace A256447

/-- `A054272(n+2)-(A256448(n+1)+A054272(n+1))` -/
def P5517815101762336321.Spec : Prop :=
  ∀ n, P5517815101762336321.a n = A256447 (n + 1)

theorem P5517815101762336321.correct : P5517815101762336321.Spec := by
  intro n
  simp only [A256447, Nat.add_sub_cancel, A256447.P5517815101762336321.a, A256447.P10526496064396814310.a, A054272, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256448, A256448.P8888948745584736931.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256447

/-! ## A256447.P13212243330193251205

`A250473(n+2)-(A256448(n+1)+A250473(n+1))`
-/

namespace A256447.P13212243330193251205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 2) - (A256448 (n + 1) + A250473 (n + 1))

end

end A256447.P13212243330193251205

namespace A256447

/-- `A250473(n+2)-(A256448(n+1)+A250473(n+1))` -/
def P13212243330193251205.Spec : Prop :=
  ∀ n, P13212243330193251205.a n = A256447 (n + 1)

theorem P13212243330193251205.correct : P13212243330193251205.Spec := by
  intro n
  simp only [A256447, Nat.add_sub_cancel, A256447.P13212243330193251205.a, A256447.P10526496064396814310.a, A250473, A250473.P15728952414264512561.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256448, A256448.P8888948745584736931.a, A000879, A000879.P11642258310759995278.a, A120941, A120941.P1519152944059217125.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256447

/-! ## A256447.P679638045324280542

`A250474(n+2)-(A256448(n+1)+A250474(n+1))`
-/

namespace A256447.P679638045324280542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 2) - (A256448 (n + 1) + A250474 (n + 1))

end

end A256447.P679638045324280542

namespace A256447

/-- `A250474(n+2)-(A256448(n+1)+A250474(n+1))` -/
def P679638045324280542.Spec : Prop :=
  ∀ n, P679638045324280542.a n = A256447 (n + 1)

theorem P679638045324280542.correct : P679638045324280542.Spec := by
  intro n
  simp only [A256447, Nat.add_sub_cancel, A256447.P679638045324280542.a, A256447.P10526496064396814310.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256448, A256448.P8888948745584736931.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256447

/-! ## A256447.P12271902707423489053

`A250477(n+1)-(A250473(n+1)+1)`
-/

namespace A256447.P12271902707423489053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250477 (n + 1) - (A250473 (n + 1) + 1)

end

end A256447.P12271902707423489053

namespace A256447

/-- `A250477(n+1)-(A250473(n+1)+1)` -/
def P12271902707423489053.Spec : Prop :=
  ∀ n, P12271902707423489053.a n = A256447 (n + 1)

end A256447

/-! ## A256447.P12628524068258878039

`A250477(n+1)-(A054272(n+1)+2)`
-/

namespace A256447.P12628524068258878039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250477 (n + 1) - (A054272 (n + 1) + 2)

end

end A256447.P12628524068258878039

namespace A256447

/-- `A250477(n+1)-(A054272(n+1)+2)` -/
def P12628524068258878039.Spec : Prop :=
  ∀ n, P12628524068258878039.a n = A256447 (n + 1)

theorem P12628524068258878039.correct : P12628524068258878039.Spec := by
  intro n
  simp only [A256447, Nat.add_sub_cancel, A256447.P12628524068258878039.a, A256447.P10526496064396814310.a, A054272, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256447

/-! ## A256447.P16214878127509696958

`A250477(A189671(3*(n+1)))%A250474(n+1)`
-/

namespace A256447.P16214878127509696958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250477 (A189671 (3 * (n + 1))).toNat) (A250474 (n + 1))

end

end A256447.P16214878127509696958

namespace A256447

/-- `A250477(A189671(3*(n+1)))%A250474(n+1)` -/
def P16214878127509696958.Spec : Prop :=
  ∀ n, P16214878127509696958.a n = A256447 (n + 1)

end A256447

/-! ## A256447.P18021811097591719089

`A120941(n+1)-A079047(n+1)`
-/

namespace A256447.P18021811097591719089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120941 (n + 1) - A079047 (n + 1)

end

end A256447.P18021811097591719089

namespace A256447

/-- `A120941(n+1)-A079047(n+1)` -/
def P18021811097591719089.Spec : Prop :=
  ∀ n, P18021811097591719089.a n = A256447 (n + 1)

end A256447

/-! ## A256447.P15865423630023004842

`A020725(A256468(n+1))`
-/

namespace A256447.P15865423630023004842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A256468 (n + 1)).toNat

end

end A256447.P15865423630023004842

namespace A256447

/-- `A020725(A256468(n+1))` -/
def P15865423630023004842.Spec : Prop :=
  ∀ n, P15865423630023004842.a n = A256447 (n + 1)

end A256447

/-! ## A256447.P18170857054268307264

`A078898(A256449(n+1)+A251723(n+1))`
-/

namespace A256447.P18170857054268307264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A256449 (n + 1) + A251723 (n + 1)).toNat

end

end A256447.P18170857054268307264

namespace A256447

/-- `A078898(A256449(n+1)+A251723(n+1))` -/
def P18170857054268307264.Spec : Prop :=
  ∀ n, P18170857054268307264.a n = A256447 (n + 1)

end A256447

/-!
# A256448: a(n) = A250474(n+1) - A250477(n).

The programs for A256448, the canonical program `A256448.P8888948745584736931` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256448 has offset 1).

The definition of A256448 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250477, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256448.P10775232677063378963

`A256469(n+1)-2`
-/

namespace A256448.P10775232677063378963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256469 (n + 1) - 2

end

end A256448.P10775232677063378963

namespace A256448

/-- `A256469(n+1)-2` -/
def P10775232677063378963.Spec : Prop :=
  ∀ n, P10775232677063378963.a n = A256448 (n + 1)

theorem P10775232677063378963.correct : P10775232677063378963.Spec := by
  intro n
  simp only [A256448, Nat.add_sub_cancel, A256448.P10775232677063378963.a, A256448.P8888948745584736931.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256469, A256469.P956244140118081997.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256448

/-! ## A256448.P3922706612048223559

`A251723(n+1)-A256447(n+1)`
-/

namespace A256448.P3922706612048223559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (n + 1) - A256447 (n + 1)

end

end A256448.P3922706612048223559

namespace A256448

/-- `A251723(n+1)-A256447(n+1)` -/
def P3922706612048223559.Spec : Prop :=
  ∀ n, P3922706612048223559.a n = A256448 (n + 1)

theorem P3922706612048223559.correct : P3922706612048223559.Spec := by
  intro n
  simp only [A256448, Nat.add_sub_cancel, A256448.P3922706612048223559.a, A256448.P8888948745584736931.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A251723, A251723.P8283630235415226138.a, A256447, A256447.P10526496064396814310.a, A054272, A054272.P16500536369367462355.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256448

/-! ## A256448.P16394936196988902451

`A256447(n+1)-A256449(n+1)`
-/

namespace A256448.P16394936196988902451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256447 (n + 1) - A256449 (n + 1)

end

end A256448.P16394936196988902451

namespace A256448

/-- `A256447(n+1)-A256449(n+1)` -/
def P16394936196988902451.Spec : Prop :=
  ∀ n, P16394936196988902451.a n = A256448 (n + 1)

theorem P16394936196988902451.correct : P16394936196988902451.Spec := by
  intro n
  simp only [A256448, Nat.add_sub_cancel, A256448.P16394936196988902451.a, A256448.P8888948745584736931.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256447, A256447.P10526496064396814310.a, A256449, A256449.P3394376339508603245.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256448

/-! ## A256448.P1588122985273932560

`A256446(n+1)-A256447(n+2)`
-/

namespace A256448.P1588122985273932560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256446 (n + 1) - A256447 (n + 2)

end

end A256448.P1588122985273932560

namespace A256448

/-- `A256446(n+1)-A256447(n+2)` -/
def P1588122985273932560.Spec : Prop :=
  ∀ n, P1588122985273932560.a n = A256448 (n + 1)

theorem P1588122985273932560.correct : P1588122985273932560.Spec := by
  intro n
  simp only [A256448, Nat.add_sub_cancel, A256448.P1588122985273932560.a, A256448.P8888948745584736931.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256446, A256446.P17907843069056531532.a, A256447, A256447.P10526496064396814310.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256448

/-! ## A256448.P8888948745584736931

`A250474(n+2)-A250477(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A256448

/-- `A250474(n+2)-A250477(n+1)` -/
def P8888948745584736931.Spec : Prop :=
  ∀ n, P8888948745584736931.a n = A256448 (n + 1)

theorem P8888948745584736931.correct : P8888948745584736931.Spec := by
  intro n
  simp only [A256448, Nat.add_sub_cancel]

end A256448

/-! ## A256448.P71952416611123996

`A251723(n+1)-(A256468(n+1)+1)`
-/

namespace A256448.P71952416611123996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (n + 1) - (A256468 (n + 1) + 1)

end

end A256448.P71952416611123996

namespace A256448

/-- `A251723(n+1)-(A256468(n+1)+1)` -/
def P71952416611123996.Spec : Prop :=
  ∀ n, P71952416611123996.a n = A256448 (n + 1)

theorem P71952416611123996.correct : P71952416611123996.Spec := by
  intro n
  simp only [A256448, Nat.add_sub_cancel, A256448.P71952416611123996.a, A256448.P8888948745584736931.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A251723, A251723.P8283630235415226138.a, A256468, A256468.P15833489412511418299.a, A054272, A054272.P16500536369367462355.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A256447, A256447.P10526496064396814310.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256448

/-! ## A256448.P6615455979526720431

`A256468(n+1)+A256470(n+1)-2`
-/

namespace A256448.P6615455979526720431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256468 (n + 1) + (A256470 (n + 1) - 2)

end

end A256448.P6615455979526720431

namespace A256448

/-- `A256468(n+1)+A256470(n+1)-2` -/
def P6615455979526720431.Spec : Prop :=
  ∀ n, P6615455979526720431.a n = A256448 (n + 1)

theorem P6615455979526720431.correct : P6615455979526720431.Spec := by
  intro n
  simp only [A256448, Nat.add_sub_cancel, A256448.P6615455979526720431.a, A256448.P8888948745584736931.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256468, A256468.P15833489412511418299.a, A256470, A256470.P3494554339232187623.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A256447, A256447.P10526496064396814310.a, A256469, A256469.P956244140118081997.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256448

/-! ## A256448.P16956001186086774598

`Δ[A054272(n+1)]-(A256468(n+1)+1)`
-/

namespace A256448.P16956001186086774598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A256468 (n + 1) + 1)

end

end A256448.P16956001186086774598

namespace A256448

/-- `Δ[A054272(n+1)]-(A256468(n+1)+1)` -/
def P16956001186086774598.Spec : Prop :=
  ∀ n, P16956001186086774598.a n = A256448 (n + 1)

theorem P16956001186086774598.correct : P16956001186086774598.Spec := by
  intro n
  simp only [A256448, Nat.add_sub_cancel, A256448.P16956001186086774598.f1, A256448.P16956001186086774598.a, A256448.P8888948745584736931.a, A054272, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256468, A256468.P15833489412511418299.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A256447, A256447.P10526496064396814310.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256448

/-! ## A256448.P17929663301053038174

`(A251723(n+1)-A256449(n+1))/2`
-/

namespace A256448.P17929663301053038174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251723 (n + 1) - A256449 (n + 1) : ℚ) / 2

end

end A256448.P17929663301053038174

namespace A256448

/-- `(A251723(n+1)-A256449(n+1))/2` -/
def P17929663301053038174.Spec : Prop :=
  ∀ n, P17929663301053038174.a n = (A256448 (n + 1) : ℚ)

theorem P17929663301053038174.correct : P17929663301053038174.Spec := by
  intro n
  simp only [A256448, Nat.add_sub_cancel, A256448.P17929663301053038174.a, A256448.P8888948745584736931.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A251723, A251723.P8283630235415226138.a, A256449, A256449.P3394376339508603245.a, A054272, A054272.P16500536369367462355.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A256447, A256447.P10526496064396814310.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256448

/-! ## A256448.P13094066379267844319

`A054272(n+2)-(A256447(n+1)+A054272(n+1))`
-/

namespace A256448.P13094066379267844319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054272 (n + 2) - (A256447 (n + 1) + A054272 (n + 1))

end

end A256448.P13094066379267844319

namespace A256448

/-- `A054272(n+2)-(A256447(n+1)+A054272(n+1))` -/
def P13094066379267844319.Spec : Prop :=
  ∀ n, P13094066379267844319.a n = A256448 (n + 1)

theorem P13094066379267844319.correct : P13094066379267844319.Spec := by
  intro n
  simp only [A256448, Nat.add_sub_cancel, A256448.P13094066379267844319.a, A256448.P8888948745584736931.a, A054272, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256447, A256447.P10526496064396814310.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256448

/-! ## A256448.P14283552221926352816

`A250473(n+2)-(A256447(n+1)+A250473(n+1))`
-/

namespace A256448.P14283552221926352816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 2) - (A256447 (n + 1) + A250473 (n + 1))

end

end A256448.P14283552221926352816

namespace A256448

/-- `A250473(n+2)-(A256447(n+1)+A250473(n+1))` -/
def P14283552221926352816.Spec : Prop :=
  ∀ n, P14283552221926352816.a n = A256448 (n + 1)

theorem P14283552221926352816.correct : P14283552221926352816.Spec := by
  intro n
  simp only [A256448, Nat.add_sub_cancel, A256448.P14283552221926352816.a, A256448.P8888948745584736931.a, A250473, A250473.P15728952414264512561.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256447, A256447.P10526496064396814310.a, A000879, A000879.P11642258310759995278.a, A120941, A120941.P1519152944059217125.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256448

/-! ## A256448.P3097650238879712527

`A250474(n+2)-(A256447(n+1)+A250474(n+1))`
-/

namespace A256448.P3097650238879712527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 2) - (A256447 (n + 1) + A250474 (n + 1))

end

end A256448.P3097650238879712527

namespace A256448

/-- `A250474(n+2)-(A256447(n+1)+A250474(n+1))` -/
def P3097650238879712527.Spec : Prop :=
  ∀ n, P3097650238879712527.a n = A256448 (n + 1)

theorem P3097650238879712527.correct : P3097650238879712527.Spec := by
  intro n
  simp only [A256448, Nat.add_sub_cancel, A256448.P3097650238879712527.a, A256448.P8888948745584736931.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256447, A256447.P10526496064396814310.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256448

/-! ## A256448.P14104026816493601258

`A250477(n+2)-(A256447(n+2)+A250477(n+1))`
-/

namespace A256448.P14104026816493601258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250477 (n + 2) - (A256447 (n + 2) + A250477 (n + 1))

end

end A256448.P14104026816493601258

namespace A256448

/-- `A250477(n+2)-(A256447(n+2)+A250477(n+1))` -/
def P14104026816493601258.Spec : Prop :=
  ∀ n, P14104026816493601258.a n = A256448 (n + 1)

theorem P14104026816493601258.correct : P14104026816493601258.Spec := by
  intro n
  simp only [A256448, Nat.add_sub_cancel, A256448.P14104026816493601258.a, A256448.P8888948745584736931.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256447, A256447.P10526496064396814310.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256448

/-! ## A256448.P18431844101771262063

`A079047(n+2)-A120941(n+1)`
-/

namespace A256448.P18431844101771262063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079047 (n + 2) - A120941 (n + 1)

end

end A256448.P18431844101771262063

namespace A256448

/-- `A079047(n+2)-A120941(n+1)` -/
def P18431844101771262063.Spec : Prop :=
  ∀ n, P18431844101771262063.a n = A256448 (n + 1)

end A256448

/-! ## A256448.P12010456731338618091

`A023444(A256469(n+1))`
-/

namespace A256448.P12010456731338618091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A256469 (n + 1)).toNat

end

end A256448.P12010456731338618091

namespace A256448

/-- `A023444(A256469(n+1))` -/
def P12010456731338618091.Spec : Prop :=
  ∀ n, P12010456731338618091.a n = A256448 (n + 1)

end A256448

/-! ## A256448.P4937418077470968069

`A251723(n+1)-A078898(A256449(n+1)+A251723(n+1))`
-/

namespace A256448.P4937418077470968069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (n + 1) - A078898 (A256449 (n + 1) + A251723 (n + 1)).toNat

end

end A256448.P4937418077470968069

namespace A256448

/-- `A251723(n+1)-A078898(A256449(n+1)+A251723(n+1))` -/
def P4937418077470968069.Spec : Prop :=
  ∀ n, P4937418077470968069.a n = A256448 (n + 1)

end A256448

/-!
# A256449: a(n) = A256447(n) - A256448(n).

The programs for A256449, the canonical program `A256449.P3394376339508603245` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256449 has offset 1).

The definition of A256449 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256447, A256448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256449.P12931789782410596322

`3-A256470(n+1)`
-/

namespace A256449.P12931789782410596322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A256470 (n + 1)

end

end A256449.P12931789782410596322

namespace A256449

/-- `3-A256470(n+1)` -/
def P12931789782410596322.Spec : Prop :=
  ∀ n, P12931789782410596322.a n = A256449 (n + 1)

theorem P12931789782410596322.correct : P12931789782410596322.Spec := by
  intro n
  simp only [A256449, Nat.add_sub_cancel, A256449.P12931789782410596322.a, A256449.P3394376339508603245.a, A256447, A256447.P10526496064396814310.a, A256448, A256448.P8888948745584736931.a, A256470, A256470.P3494554339232187623.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256468, A256468.P15833489412511418299.a, A256469, A256469.P956244140118081997.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256449

/-! ## A256449.P3394376339508603245

`A256447(n+1)-A256448(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A256449

/-- `A256447(n+1)-A256448(n+1)` -/
def P3394376339508603245.Spec : Prop :=
  ∀ n, P3394376339508603245.a n = A256449 (n + 1)

theorem P3394376339508603245.correct : P3394376339508603245.Spec := by
  intro n
  simp only [A256449, Nat.add_sub_cancel]

end A256449

/-! ## A256449.P12899753197909458766

`2*A250477(n+1)-A250474(n+1)-A250474(n+2)`
-/

namespace A256449.P12899753197909458766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A250477 (n + 1) - A250474 (n + 1) - A250474 (n + 2)

end

end A256449.P12899753197909458766

namespace A256449

/-- `2*A250477(n+1)-A250474(n+1)-A250474(n+2)` -/
def P12899753197909458766.Spec : Prop :=
  ∀ n, P12899753197909458766.a n = A256449 (n + 1)

theorem P12899753197909458766.correct : P12899753197909458766.Spec := by
  intro n
  simp only [A256449, Nat.add_sub_cancel, A256449.P12899753197909458766.a, A256449.P3394376339508603245.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256447, A256447.P10526496064396814310.a, A256448, A256448.P8888948745584736931.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256449

/-! ## A256449.P13083007688651030327

`A251723(n+1)-2*A256448(n+1)`
-/

namespace A256449.P13083007688651030327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (n + 1) - 2 * A256448 (n + 1)

end

end A256449.P13083007688651030327

namespace A256449

/-- `A251723(n+1)-2*A256448(n+1)` -/
def P13083007688651030327.Spec : Prop :=
  ∀ n, P13083007688651030327.a n = A256449 (n + 1)

theorem P13083007688651030327.correct : P13083007688651030327.Spec := by
  intro n
  simp only [A256449, Nat.add_sub_cancel, A256449.P13083007688651030327.a, A256449.P3394376339508603245.a, A251723, A251723.P8283630235415226138.a, A256447, A256447.P10526496064396814310.a, A256448, A256448.P8888948745584736931.a, A054272, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256449

/-! ## A256449.P17133195513488194661

`A256447(n+1)+2-A256469(n+1)`
-/

namespace A256449.P17133195513488194661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256447 (n + 1) + (2 - A256469 (n + 1))

end

end A256449.P17133195513488194661

namespace A256449

/-- `A256447(n+1)+2-A256469(n+1)` -/
def P17133195513488194661.Spec : Prop :=
  ∀ n, P17133195513488194661.a n = A256449 (n + 1)

theorem P17133195513488194661.correct : P17133195513488194661.Spec := by
  intro n
  simp only [A256449, Nat.add_sub_cancel, A256449.P17133195513488194661.a, A256449.P3394376339508603245.a, A256447, A256447.P10526496064396814310.a, A256448, A256448.P8888948745584736931.a, A256469, A256469.P956244140118081997.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256449

/-! ## A256449.P7679781817785266809

`2*A256447(n+1)-A251723(n+1)`
-/

namespace A256449.P7679781817785266809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256447 (n + 1) - A251723 (n + 1)

end

end A256449.P7679781817785266809

namespace A256449

/-- `2*A256447(n+1)-A251723(n+1)` -/
def P7679781817785266809.Spec : Prop :=
  ∀ n, P7679781817785266809.a n = A256449 (n + 1)

theorem P7679781817785266809.correct : P7679781817785266809.Spec := by
  intro n
  simp only [A256449, Nat.add_sub_cancel, A256449.P7679781817785266809.a, A256449.P3394376339508603245.a, A251723, A251723.P8283630235415226138.a, A256447, A256447.P10526496064396814310.a, A256448, A256448.P8888948745584736931.a, A054272, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256449

/-! ## A256449.P18420896167570571435

`A256447(n+1)+A256447(n+2)-A256446(n+1)`
-/

namespace A256449.P18420896167570571435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256447 (n + 1) + (A256447 (n + 2) - A256446 (n + 1))

end

end A256449.P18420896167570571435

namespace A256449

/-- `A256447(n+1)+A256447(n+2)-A256446(n+1)` -/
def P18420896167570571435.Spec : Prop :=
  ∀ n, P18420896167570571435.a n = A256449 (n + 1)

theorem P18420896167570571435.correct : P18420896167570571435.Spec := by
  intro n
  simp only [A256449, Nat.add_sub_cancel, A256449.P18420896167570571435.a, A256449.P3394376339508603245.a, A256446, A256446.P17907843069056531532.a, A256447, A256447.P10526496064396814310.a, A256448, A256448.P8888948745584736931.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256449

/-! ## A256449.P9548097575075715580

`A250477(n+1)-(A256448(n+1)+A250474(n+1))`
-/

namespace A256449.P9548097575075715580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250477 (n + 1) - (A256448 (n + 1) + A250474 (n + 1))

end

end A256449.P9548097575075715580

namespace A256449

/-- `A250477(n+1)-(A256448(n+1)+A250474(n+1))` -/
def P9548097575075715580.Spec : Prop :=
  ∀ n, P9548097575075715580.a n = A256449 (n + 1)

theorem P9548097575075715580.correct : P9548097575075715580.Spec := by
  intro n
  simp only [A256449, Nat.add_sub_cancel, A256449.P9548097575075715580.a, A256449.P3394376339508603245.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256447, A256447.P10526496064396814310.a, A256448, A256448.P8888948745584736931.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256449

/-! ## A256449.P17770955602565137029

`A250477(n+1)+A256447(n+1)-A250474(n+2)`
-/

namespace A256449.P17770955602565137029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250477 (n + 1) + (A256447 (n + 1) - A250474 (n + 2))

end

end A256449.P17770955602565137029

namespace A256449

/-- `A250477(n+1)+A256447(n+1)-A250474(n+2)` -/
def P17770955602565137029.Spec : Prop :=
  ∀ n, P17770955602565137029.a n = A256449 (n + 1)

theorem P17770955602565137029.correct : P17770955602565137029.Spec := by
  intro n
  simp only [A256449, Nat.add_sub_cancel, A256449.P17770955602565137029.a, A256449.P3394376339508603245.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256447, A256447.P10526496064396814310.a, A256448, A256448.P8888948745584736931.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256449

/-!
# A256450: Numbers that have at least one 1-digit in their factorial base representation (A007623).

The programs for A256450, the canonical program `A256450.P2961887337842134831` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256450 has offset 0).

The definition of A256450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9360 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256450.P668948764790272781

`comp[A255411(n)]`
-/

namespace A256450.P668948764790272781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A256450.P668948764790272781

namespace A256450

/-- `comp[A255411(n)]` -/
def P668948764790272781.Spec : Prop :=
  ∀ n, (P668948764790272781.a n : ℤ) = A256450 n

end A256450

/-! ## A256450.P2774990669550406950

`lt[0, A275736(n)]`
-/

namespace A256450.P2774990669550406950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275736 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A256450.P2774990669550406950

namespace A256450

/-- `lt[0, A275736(n)]` -/
def P2774990669550406950.Spec : Prop :=
  ∀ n, (P2774990669550406950.a n : ℤ) = A256450 n

end A256450

/-! ## A256450.P2268686433975955759

`lt[1, A275732(n)]`
-/

namespace A256450.P2268686433975955759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275732 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A256450.P2268686433975955759

namespace A256450

/-- `lt[1, A275732(n)]` -/
def P2268686433975955759.Spec : Prop :=
  ∀ n, (P2268686433975955759.a n : ℤ) = A256450 n

end A256450

/-! ## A256450.P1809330969886788659

`eq[2, gcd(2, A275735(n))]`
-/

namespace A256450.P1809330969886788659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A275735 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256450.P1809330969886788659

namespace A256450

/-- `eq[2, gcd(2, A275735(n))]` -/
def P1809330969886788659.Spec : Prop :=
  ∀ n, (P1809330969886788659.a n : ℤ) = A256450 n

end A256450

/-! ## A256450.P402466341040018567

`comp[eq[2, A275732(n+1)]]`
-/

namespace A256450.P402466341040018567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275732 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A256450.P402466341040018567

namespace A256450

/-- `comp[eq[2, A275732(n+1)]]` -/
def P402466341040018567.Spec : Prop :=
  ∀ n, (P402466341040018567.a n : ℤ) = A256450 n

end A256450

/-! ## A256450.P7467355480287912111

`A273670(n)-A275840(n)`
-/

namespace A256450.P7467355480287912111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 n - A275840 n

end

end A256450.P7467355480287912111

namespace A256450

/-- `A273670(n)-A275840(n)` -/
def P7467355480287912111.Spec : Prop :=
  ∀ n, P7467355480287912111.a n = A256450 n

theorem P7467355480287912111.correct : P7467355480287912111.Spec := by
  intro n
  simp only [A256450, Nat.add_sub_cancel, A256450.P7467355480287912111.a, A256450.P2961887337842134831.f1, A256450.P2961887337842134831.f2, A256450.P2961887337842134831.a, A257511, A257511.P4810453012359406512.a, A273670, A273670.P14908057013433481843.f1, A273670.P14908057013433481843.a, A275840, A275840.P13098094200477927866.a, A153880, A153880.P3482003210963129646.f1, A153880.P3482003210963129646.a, A257687, A257687.P7012285749589745258.a, A265333, A265333.P11142459361382241526.a, A004526, A004526.P10084182425416171735.a, A073575, A073575.P12510821698240124249.f1, A073575.P12510821698240124249.a, A084558, A084558.P8374569854218058976.a, A012245, A012245.P11587607485183547821.a, A090529, A090529.P4680555822996673914.f1, A090529.P4680555822996673914.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256450

/-! ## A256450.P3683547912924739855

`comp[A276340(n)+A276339(n)]`
-/

namespace A256450.P3683547912924739855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276340 n + A276339 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A256450.P3683547912924739855

namespace A256450

/-- `comp[A276340(n)+A276339(n)]` -/
def P3683547912924739855.Spec : Prop :=
  ∀ n, (P3683547912924739855.a n : ℤ) = A256450 n

end A256450

/-! ## A256450.P2232749425227786035

`lt[0, A257081(n)]`
-/

namespace A256450.P2232749425227786035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A256450.P2232749425227786035

namespace A256450

/-- `lt[0, A257081(n)]` -/
def P2232749425227786035.Spec : Prop :=
  ∀ n, (P2232749425227786035.a n : ℤ) = A256450 n

end A256450

/-! ## A256450.P2961887337842134831

`lt[0, A257511(n)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A256450

/-- `lt[0, A257511(n)]` -/
def P2961887337842134831.Spec : Prop :=
  ∀ n, (P2961887337842134831.a n : ℤ) = A256450 n

theorem P2961887337842134831.correct : P2961887337842134831.Spec := by
  intro n
  simp only [A256450]

end A256450

/-! ## A256450.P4908410873524750725

`lt[0, A257680(n)]`
-/

namespace A256450.P4908410873524750725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A256450.P4908410873524750725

namespace A256450

/-- `lt[0, A257680(n)]` -/
def P4908410873524750725.Spec : Prop :=
  ∀ n, (P4908410873524750725.a n : ℤ) = A256450 n

end A256450

/-! ## A256450.P10282819607967592081

`lt[1, A257079(n)]`
-/

namespace A256450.P10282819607967592081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A256450.P10282819607967592081

namespace A256450

/-- `lt[1, A257079(n)]` -/
def P10282819607967592081.Spec : Prop :=
  ∀ n, (P10282819607967592081.a n : ℤ) = A256450 n

end A256450

/-! ## A256450.P4209935456989293431

`lt[n, A257080(n)]`
-/

namespace A256450.P4209935456989293431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257080 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A256450.P4209935456989293431

namespace A256450

/-- `lt[n, A257080(n)]` -/
def P4209935456989293431.Spec : Prop :=
  ∀ n, (P4209935456989293431.a n : ℤ) = A256450 n

end A256450

/-! ## A256450.P10584272300329525980

`lt[n*A257685(n), n]`
-/

namespace A256450.P10584272300329525980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A257685 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A256450.P10584272300329525980

namespace A256450

/-- `lt[n*A257685(n), n]` -/
def P10584272300329525980.Spec : Prop :=
  ∀ n, (P10584272300329525980.a n : ℤ) = A256450 n

end A256450

/-! ## A256450.P15501878302484482855

`lt[A257685(n+1), 1]+1`
-/

namespace A256450.P15501878302484482855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257685 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A256450.P15501878302484482855

namespace A256450

/-- `lt[A257685(n+1), 1]+1` -/
def P15501878302484482855.Spec : Prop :=
  ∀ n, (P15501878302484482855.a n : ℤ) = A256450 n

end A256450

/-! ## A256450.P6399685337223768256

`lt[n, A276958(n+1)]+1`
-/

namespace A256450.P6399685337223768256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276958 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A256450.P6399685337223768256

namespace A256450

/-- `lt[n, A276958(n+1)]+1` -/
def P6399685337223768256.Spec : Prop :=
  ∀ n, (P6399685337223768256.a n : ℤ) = A256450 n

end A256450

/-! ## A256450.P9613555294124236716

`filter[n+1, A257680(#)]`
-/

namespace A256450.P9613555294124236716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257680 (f1 j) = 1) n)

end

end A256450.P9613555294124236716

namespace A256450

/-- `filter[n+1, A257680(#)]` -/
def P9613555294124236716.Spec : Prop :=
  ∀ n, (P9613555294124236716.a n : ℤ) = A256450 n

end A256450

/-! ## A256450.P7316935312970344612

`eq[A000038(n), A257685(n)]`
-/

namespace A256450.P7316935312970344612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257685 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256450.P7316935312970344612

namespace A256450

/-- `eq[A000038(n), A257685(n)]` -/
def P7316935312970344612.Spec : Prop :=
  ∀ n, (P7316935312970344612.a n : ℤ) = A256450 n

end A256450

/-! ## A256450.P11668499173295809417

`eq[A000007(n), A257685(n)]`
-/

namespace A256450.P11668499173295809417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257685 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256450.P11668499173295809417

namespace A256450

/-- `eq[A000007(n), A257685(n)]` -/
def P11668499173295809417.Spec : Prop :=
  ∀ n, (P11668499173295809417.a n : ℤ) = A256450 n

end A256450

/-!
# A256451: Numbers k such that 10^k + prime(k) is prime.

The programs for A256451, there is no canonical definition to state claims against.
-/

/-! ## A256451.P16909836057014230352

`A192065(n)*A291762(A102897(n))`
-/

namespace A256451.P16909836057014230352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192065 n * A291762 (A102897 n).toNat

end

end A256451.P16909836057014230352

/-!
# A256452: Number of integer solutions to n^2 = x^2 + y^2 with x>0, y>=0.

The programs for A256452, the canonical program `A256452.P9976460767317744789` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256452 has offset 1).

The definition of A256452 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046080, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256452.P9976460767317744789

`1+2*A046080(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A256452

/-- `1+2*A046080(n+1)` -/
def P9976460767317744789.Spec : Prop :=
  ∀ n, P9976460767317744789.a n = A256452 (n + 1)

theorem P9976460767317744789.correct : P9976460767317744789.Spec := by
  intro n
  simp only [A256452, Nat.add_sub_cancel]

end A256452

/-! ## A256452.P15665331480220666061

`A046109(n+1)/4`
-/

namespace A256452.P15665331480220666061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046109 (n + 1) : ℚ) / 4

end

end A256452.P15665331480220666061

namespace A256452

/-- `A046109(n+1)/4` -/
def P15665331480220666061.Spec : Prop :=
  ∀ n, P15665331480220666061.a n = (A256452 (n + 1) : ℚ)

end A256452

/-! ## A256452.P11835124606267371966

`A002654((n+1)²)`
-/

namespace A256452.P11835124606267371966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 ((n + 1) ^ 2)

end

end A256452.P11835124606267371966

namespace A256452

/-- `A002654((n+1)²)` -/
def P11835124606267371966.Spec : Prop :=
  ∀ n, P11835124606267371966.a n = A256452 (n + 1)

end A256452

/-! ## A256452.P4097591753903081995

`∑{d}[n+1, A350872(#)]`
-/

namespace A256452.P4097591753903081995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A350872 d

end

end A256452.P4097591753903081995

namespace A256452

/-- `∑{d}[n+1, A350872(#)]` -/
def P4097591753903081995.Spec : Prop :=
  ∀ n, P4097591753903081995.a n = A256452 (n + 1)

end A256452

/-! ## A256452.P4338701952417784647

`A005408(A046080(n+1))`
-/

namespace A256452.P4338701952417784647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A046080 (n + 1)).toNat

end

end A256452.P4338701952417784647

namespace A256452

/-- `A005408(A046080(n+1))` -/
def P4338701952417784647.Spec : Prop :=
  ∀ n, P4338701952417784647.a n = A256452 (n + 1)

end A256452

/-! ## A256452.P11062437861412205349

`A048691(A170818(n+1))`
-/

namespace A256452.P11062437861412205349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A170818 (n + 1)).toNat

end

end A256452.P11062437861412205349

namespace A256452

/-- `A048691(A170818(n+1))` -/
def P11062437861412205349.Spec : Prop :=
  ∀ n, P11062437861412205349.a n = A256452 (n + 1)

end A256452

/-! ## A256452.P8757320500798082808

`A275367(A072436(n+1))`
-/

namespace A256452.P8757320500798082808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275367 (A072436 (n + 1)).toNat

end

end A256452.P8757320500798082808

namespace A256452

/-- `A275367(A072436(n+1))` -/
def P8757320500798082808.Spec : Prop :=
  ∀ n, P8757320500798082808.a n = A256452 (n + 1)

end A256452

/-! ## A256452.P4061352168588044151

`A000005(A286361(n+1)²)`
-/

namespace A256452.P4061352168588044151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A286361 (n + 1) ^ 2).toNat

end

end A256452.P4061352168588044151

namespace A256452

/-- `A000005(A286361(n+1)²)` -/
def P4061352168588044151.Spec : Prop :=
  ∀ n, P4061352168588044151.a n = A256452 (n + 1)

end A256452

/-! ## A256452.P7288182069489088779

`∑{d}[A000265(n+1), A000089(#)]`
-/

namespace A256452.P7288182069489088779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000089 d

end

end A256452.P7288182069489088779

namespace A256452

/-- `∑{d}[A000265(n+1), A000089(#)]` -/
def P7288182069489088779.Spec : Prop :=
  ∀ n, P7288182069489088779.a n = A256452 (n + 1)

end A256452

/-! ## A256452.P13755841026515288157

`∑{d}[n+1, A000089(#)*A035263((n+1)/#)]`
-/

namespace A256452.P13755841026515288157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000089 d * A035263 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A256452.P13755841026515288157

namespace A256452

/-- `∑{d}[n+1, A000089(#)*A035263((n+1)/#)]` -/
def P13755841026515288157.Spec : Prop :=
  ∀ n, P13755841026515288157.a n = A256452 (n + 1)

end A256452

/-! ## A256452.P11907555239449755083

`∑{d}[n+1, A034444(#)*A209615((n+1)/#)]`
-/

namespace A256452.P11907555239449755083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A209615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A256452.P11907555239449755083

namespace A256452

/-- `∑{d}[n+1, A034444(#)*A209615((n+1)/#)]` -/
def P11907555239449755083.Spec : Prop :=
  ∀ n, P11907555239449755083.a n = A256452 (n + 1)

end A256452

/-! ## A256452.P11193386484709388789

`∑{d}[n+1, A001227(#)*A318608((n+1)/#)]`
-/

namespace A256452.P11193386484709388789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A318608 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A256452.P11193386484709388789

namespace A256452

/-- `∑{d}[n+1, A001227(#)*A318608((n+1)/#)]` -/
def P11193386484709388789.Spec : Prop :=
  ∀ n, P11193386484709388789.a n = A256452 (n + 1)

end A256452

/-! ## A256452.P4441073174472262234

`∑{d}[n+1, A002654(#)*A323239((n+1)/#)]`
-/

namespace A256452.P4441073174472262234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A323239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A256452.P4441073174472262234

namespace A256452

/-- `∑{d}[n+1, A002654(#)*A323239((n+1)/#)]` -/
def P4441073174472262234.Spec : Prop :=
  ∀ n, P4441073174472262234.a n = A256452 (n + 1)

end A256452

/-! ## A256452.P3932361914137316058

`∑{d}[n+1, A008966(#)*A338690((n+1)/#)]`
-/

namespace A256452.P3932361914137316058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A338690 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A256452.P3932361914137316058

namespace A256452

/-- `∑{d}[n+1, A008966(#)*A338690((n+1)/#)]` -/
def P3932361914137316058.Spec : Prop :=
  ∀ n, P3932361914137316058.a n = A256452 (n + 1)

end A256452

/-! ## A256452.P9886192641724546800

`∑{d}[n+1, A078644(#)*A275966((n+1)/#)]`
-/

namespace A256452.P9886192641724546800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078644 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A256452.P9886192641724546800

namespace A256452

/-- `∑{d}[n+1, A078644(#)*A275966((n+1)/#)]` -/
def P9886192641724546800.Spec : Prop :=
  ∀ n, P9886192641724546800.a n = A256452 (n + 1)

end A256452

/-! ## A256452.P5948811022818046215

`∑{d}[n+1, A008442(#)*A353627((n+1)/#)]`
-/

namespace A256452.P5948811022818046215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008442 d * A353627 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A256452.P5948811022818046215

namespace A256452

/-- `∑{d}[n+1, A008442(#)*A353627((n+1)/#)]` -/
def P5948811022818046215.Spec : Prop :=
  ∀ n, P5948811022818046215.a n = A256452 (n + 1)

end A256452

/-! ## A256452.P10075802583500567291

`∑{d}[n+1, A035184(#)*A359155((n+1)/#)]`
-/

namespace A256452.P10075802583500567291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035184 d * A359155 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A256452.P10075802583500567291

namespace A256452

/-- `∑{d}[n+1, A035184(#)*A359155((n+1)/#)]` -/
def P10075802583500567291.Spec : Prop :=
  ∀ n, P10075802583500567291.a n = A256452 (n + 1)

end A256452

/-! ## A256452.P18370841455626091675

`∑{d}[n+1, A091379(#)*A309873((n+1)/#)]`
-/

namespace A256452.P18370841455626091675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091379 d * A309873 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A256452.P18370841455626091675

namespace A256452

/-- `∑{d}[n+1, A091379(#)*A309873((n+1)/#)]` -/
def P18370841455626091675.Spec : Prop :=
  ∀ n, P18370841455626091675.a n = A256452 (n + 1)

end A256452

/-! ## A256452.P2808954226009212531

`∑{d}[n+1, A035154(#)*A373154((n+1)/#)]`
-/

namespace A256452.P2808954226009212531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035154 d * A373154 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A256452.P2808954226009212531

namespace A256452

/-- `∑{d}[n+1, A035154(#)*A373154((n+1)/#)]` -/
def P2808954226009212531.Spec : Prop :=
  ∀ n, P2808954226009212531.a n = A256452 (n + 1)

end A256452

/-! ## A256452.P6620497139466270069

`∑{d}[n+1, A112299(#)*A365207((n+1)/#)]`
-/

namespace A256452.P6620497139466270069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112299 d * A365207 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A256452.P6620497139466270069

namespace A256452

/-- `∑{d}[n+1, A112299(#)*A365207((n+1)/#)]` -/
def P6620497139466270069.Spec : Prop :=
  ∀ n, P6620497139466270069.a n = A256452 (n + 1)

end A256452

/-!
# A256454: a(n) = smallest prime(j) > a(n-1) such that prime(j+1) - prime(j) = 2n, a(0) = 2.

The programs for A256454, there is no canonical definition to state claims against.
-/

/-! ## A256454.P10570443008522800267

`A253899(n)-floor(2/acot(n))`
-/

namespace A256454.P10570443008522800267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253899 n - ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A256454.P10570443008522800267

/-! ## A256454.P9402946145923943561

`A253899(n)-A004277(n)`
-/

namespace A256454.P9402946145923943561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253899 n - A004277 n

end

end A256454.P9402946145923943561

/-! ## A256454.P6325124633070346094

`A253899(n)-record[A005131(n)]`
-/

namespace A256454.P6325124633070346094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253899 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256454.P6325124633070346094

/-! ## A256454.P8838976020788902663

`A253899(n)-record[A124625(n)]`
-/

namespace A256454.P8838976020788902663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253899 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256454.P8838976020788902663

/-! ## A256454.P2573232575364821876

`A253899(n)-A004275(n+1)`
-/

namespace A256454.P2573232575364821876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253899 n - A004275 (n + 1)

end

end A256454.P2573232575364821876

/-! ## A256454.P8672914775659760162

`A253899(n)-(A004273(n)+1)`
-/

namespace A256454.P8672914775659760162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253899 n - (A004273 n + 1)

end

end A256454.P8672914775659760162

/-! ## A256454.P9650242167855783882

`A253899(n)-A028310(2*n)`
-/

namespace A256454.P9650242167855783882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253899 n - A028310 (2 * n)

end

end A256454.P9650242167855783882

/-! ## A256454.P1209456197788567308

`A253899(n)+n-A008486(n)`
-/

namespace A256454.P1209456197788567308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253899 n + ((n : ℤ) - A008486 n)

end

end A256454.P1209456197788567308

/-! ## A256454.P12195069181896241287

`A253899(n)-(A028310(n)+n)`
-/

namespace A256454.P12195069181896241287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253899 n - (A028310 n + (n : ℤ))

end

end A256454.P12195069181896241287

/-! ## A256454.P3470551713659038783

`A253899(n)-A065190(2*n+1)`
-/

namespace A256454.P3470551713659038783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253899 n - A065190 (2 * n + 1)

end

end A256454.P3470551713659038783

/-! ## A256454.P8306363164912829566

`A253899(n)-A004396(A008486(n))`
-/

namespace A256454.P8306363164912829566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253899 n - A004396 (A008486 n).toNat

end

end A256454.P8306363164912829566

/-! ## A256454.P26963925878742758

`A253899(n)-A004525(A008574(n))`
-/

namespace A256454.P26963925878742758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253899 n - A004525 (A008574 n).toNat

end

end A256454.P26963925878742758

/-! ## A256454.P7981149205155778795

`A253899(n)-A065033(A008586(n))`
-/

namespace A256454.P7981149205155778795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253899 n - A065033 (A008586 n).toNat

end

end A256454.P7981149205155778795

/-! ## A256454.P13225730824501403402

`A253899(n)-A004442(record[A131738(n)])`
-/

namespace A256454.P13225730824501403402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253899 n - A004442 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256454.P13225730824501403402

/-! ## A256454.P18216522582617143718

`A253899(n)-A004442(A131738(2*n))`
-/

namespace A256454.P18216522582617143718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253899 n - A004442 (A131738 (2 * n)).toNat

end

end A256454.P18216522582617143718

/-! ## A256454.P4088863326394978833

`A253899(n)-A253146(A000124(n))`
-/

namespace A256454.P4088863326394978833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253899 n - A253146 (A000124 n).toNat

end

end A256454.P4088863326394978833

/-!
# A256455: Numbers that appear at least once in a Pythagorean triple (a, b, b+1).

The programs for A256455, the canonical program `A256455.P18138939821085766421` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256455 has offset 1).

The definition of A256455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256455.P14067299679730288392

`comp[2*floor(sqrt(n)+n)]+2`
-/

namespace A256455.P14067299679730288392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.sqrt (n : ℝ) + (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A256455.P14067299679730288392

namespace A256455

/-- `comp[2*floor(sqrt(n)+n)]+2` -/
def P14067299679730288392.Spec : Prop :=
  ∀ n, (P14067299679730288392.a n : ℤ) = A256455 (n + 1)

end A256455

/-! ## A256455.P14301681783388984916

`∪[2*n+3, ∑[4*(n+1)]]`
-/

namespace A256455.P14301681783388984916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A256455.P14301681783388984916

namespace A256455

/-- `∪[2*n+3, ∑[4*(n+1)]]` -/
def P14301681783388984916.Spec : Prop :=
  ∀ n, (P14301681783388984916.a n : ℤ) = A256455 (n + 1)

end A256455

/-! ## A256455.P3765431217933058919

`or(a(n-1)+1, char[comp[n²-3]])` with `a(0)=3`
-/

namespace A256455.P3765431217933058919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lor (a (n - 1) + 1) (if ∃ j, f1 j = n then 1 else 0)

end

end A256455.P3765431217933058919

namespace A256455

/-- `or(a(n-1)+1, char[comp[n²-3]])` -/
def P3765431217933058919.Spec : Prop :=
  ∀ n, (P3765431217933058919.a n : ℤ) = A256455 (n + 1)

end A256455

/-! ## A256455.P16946164391265016318

`lt[((n+1)/2^val(n+1, 2))%((floor(sqrt(2*n))+1)²-n), n]`
-/

namespace A256455.P16946164391265016318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (((Nat.sqrt (2 * n) + 1) ^ 2 : ℤ) - (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A256455.P16946164391265016318

namespace A256455

/-- `lt[((n+1)/2^val(n+1, 2))%((floor(sqrt(2*n))+1)²-n), n]` -/
def P16946164391265016318.Spec : Prop :=
  ∀ n, (P16946164391265016318.a n : ℤ) = A256455 (n + 1)

end A256455

/-! ## A256455.P11245728657999994177

`eq[1, (n-A000005(2*n+1))%2]`
-/

namespace A256455.P11245728657999994177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A000005 (2 * n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256455.P11245728657999994177

namespace A256455

/-- `eq[1, (n-A000005(2*n+1))%2]` -/
def P11245728657999994177.Spec : Prop :=
  ∀ n, (P11245728657999994177.a n : ℤ) = A256455 (n + 1)

end A256455

/-! ## A256455.P18138939821085766421

`eq[1, (A000203(2*n+1)-(n+4))%2]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A256455

/-- `eq[1, (A000203(2*n+1)-(n+4))%2]` -/
def P18138939821085766421.Spec : Prop :=
  ∀ n, (P18138939821085766421.a n : ℤ) = A256455 (n + 1)

theorem P18138939821085766421.correct : P18138939821085766421.Spec := by
  intro n
  simp only [A256455, Nat.add_sub_cancel]

end A256455

/-! ## A256455.P6218695623508599128

`eq[A003982(n), A292262(n)]`
-/

namespace A256455.P6218695623508599128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292262 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256455.P6218695623508599128

namespace A256455

/-- `eq[A003982(n), A292262(n)]` -/
def P6218695623508599128.Spec : Prop :=
  ∀ n, (P6218695623508599128.a n : ℤ) = A256455 (n + 1)

end A256455

/-! ## A256455.P18167861839995685681

`lt[exp(A185917(n+1)), n^(n%2)]`
-/

namespace A256455.P18167861839995685681
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A185917 (n + 1) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A256455.P18167861839995685681

namespace A256455

/-- `lt[exp(A185917(n+1)), n^(n%2)]` -/
def P18167861839995685681.Spec : Prop :=
  ∀ n, (P18167861839995685681.a n : ℤ) = A256455 (n + 1)

end A256455

/-! ## A256455.P7362865082088439321

`eq[A003982(n), A296066(n+1)]`
-/

namespace A256455.P7362865082088439321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296066 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256455.P7362865082088439321

namespace A256455

/-- `eq[A003982(n), A296066(n+1)]` -/
def P7362865082088439321.Spec : Prop :=
  ∀ n, (P7362865082088439321.a n : ℤ) = A256455 (n + 1)

end A256455

/-! ## A256455.P12392873960218033318

`lt[A027642(n)*A285722(n+1), n]`
-/

namespace A256455.P12392873960218033318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n * A285722 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A256455.P12392873960218033318

namespace A256455

/-- `lt[A027642(n)*A285722(n+1), n]` -/
def P12392873960218033318.Spec : Prop :=
  ∀ n, (P12392873960218033318.a n : ℤ) = A256455 (n + 1)

end A256455

/-! ## A256455.P17107111941762038899

`comp[C(comp[2*n+3], 1-char[n*(n+3)+3])]`
-/

namespace A256455.P17107111941762038899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3) + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) (1 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A256455.P17107111941762038899

namespace A256455

/-- `comp[C(comp[2*n+3], 1-char[n*(n+3)+3])]` -/
def P17107111941762038899.Spec : Prop :=
  ∀ n, (P17107111941762038899.a n : ℤ) = A256455 (n + 1)

end A256455

/-!
# A256456: Number of simple 2n-gons with only right angles, disregarding edge lengths.

The programs for A256456, there is no canonical definition to state claims against.
-/

/-! ## A256456.P15369112456205972618

`A052307(A090288(n))%A000079(n)²`
-/

namespace A256456.P15369112456205972618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052307 (A090288 n).toNat) (A000079 n ^ 2)

end

end A256456.P15369112456205972618

/-! ## A256456.P16241859243954229132

`A052307(A051890(n+2))%A000079(n)²`
-/

namespace A256456.P16241859243954229132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052307 (A051890 (n + 2)).toNat) (A000079 n ^ 2)

end

end A256456.P16241859243954229132

/-! ## A256456.P17182947558156320155

`char[A103889(n+1)]*A052307(A090288(n))`
-/

namespace A256456.P17182947558156320155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A052307 (A090288 n).toNat

end

end A256456.P17182947558156320155

/-! ## A256456.P17962213527110820633

`A052307(A090288(n))-A169803(A001844(n))`
-/

namespace A256456.P17962213527110820633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A090288 n).toNat - A169803 (A001844 n).toNat

end

end A256456.P17962213527110820633

/-! ## A256456.P16164939746404238519

`A052307(A051890(n+2))%A005649(n)`
-/

namespace A256456.P16164939746404238519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052307 (A051890 (n + 2)).toNat) (A005649 n)

end

end A256456.P16164939746404238519

/-!
# A256457: Irregular table by rows: row n lists all prime numbers that can be obtained by permuting the digits of n (including duplicates if n has repeated digits and ignoring leading 0's).

The programs for A256457, there is no canonical definition to state claims against.
-/

/-! ## A256457.P8661072872762340314

`A268101(A351715(n+1))`
-/

namespace A256457.P8661072872762340314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268101 (A351715 (n + 1)).toNat

end

end A256457.P8661072872762340314

/-! ## A256457.P4030447366385054434

`p?[or(A175415(n+1), A175417(n))]`
-/

namespace A256457.P4030447366385054434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A175415 (n + 1)) (A175417 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256457.P4030447366385054434

/-! ## A256457.P1595040122322845496

`A046484(n+1)%A046463(n+1)`
-/

namespace A256457.P1595040122322845496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046484 (n + 1)) (A046463 (n + 1))

end

end A256457.P1595040122322845496

/-! ## A256457.P11858269856419484391

`A175944(A250120(n)+A065975(n))`
-/

namespace A256457.P11858269856419484391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175944 (A250120 n + A065975 n).toNat

end

end A256457.P11858269856419484391

/-!
# A256462: Double sum of the product of two binomials with even arguments.

The programs for A256462, the canonical program `A256462.P1744097057234964275` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256462 has offset 0).

The definition of A256462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256462.P1744097057234964275

`A056220(n+1)*A000108(2*n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A256462

/-- `A056220(n+1)*A000108(2*n)` -/
def P1744097057234964275.Spec : Prop :=
  ∀ n, P1744097057234964275.a n = A256462 n

theorem P1744097057234964275.correct : P1744097057234964275.Spec := by
  intro n
  simp only [A256462]

end A256462

/-! ## A256462.P707316174210487490

`A000108(2*n)*A047838(2*(n+1))`
-/

namespace A256462.P707316174210487490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (2 * n) * A047838 (2 * (n + 1))

end

end A256462.P707316174210487490

namespace A256462

/-- `A000108(2*n)*A047838(2*(n+1))` -/
def P707316174210487490.Spec : Prop :=
  ∀ n, P707316174210487490.a n = A256462 n

end A256462

/-! ## A256462.P15178638191075890097

`A000108(2*n)*A074148(2*n+1)`
-/

namespace A256462.P15178638191075890097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (2 * n) * A074148 (2 * n + 1)

end

end A256462.P15178638191075890097

namespace A256462

/-- `A000108(2*n)*A074148(2*n+1)` -/
def P15178638191075890097.Spec : Prop :=
  ∀ n, P15178638191075890097.a n = A256462 n

end A256462

/-! ## A256462.P9718977857134598362

`A001700(2*n)+n*A001791(2*n)`
-/

namespace A256462.P9718977857134598362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (2 * n) + (n : ℤ) * A001791 (2 * n)

end

end A256462.P9718977857134598362

namespace A256462

/-- `A001700(2*n)+n*A001791(2*n)` -/
def P9718977857134598362.Spec : Prop :=
  ∀ n, P9718977857134598362.a n = A256462 n

end A256462

/-! ## A256462.P4312916909192282210

`(A037965(2*n+1)+A001700(2*n))/2`
-/

namespace A256462.P4312916909192282210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037965 (2 * n + 1) + A001700 (2 * n) : ℚ) / 2

end

end A256462.P4312916909192282210

namespace A256462

/-- `(A037965(2*n+1)+A001700(2*n))/2` -/
def P4312916909192282210.Spec : Prop :=
  ∀ n, P4312916909192282210.a n = (A256462 n : ℚ)

end A256462

/-! ## A256462.P18227286898057780265

`(A110609(2*n)+A000984(2*n+1))/2`
-/

namespace A256462.P18227286898057780265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110609 (2 * n) + A000984 (2 * n + 1) : ℚ) / 2

end

end A256462.P18227286898057780265

namespace A256462

/-- `(A110609(2*n)+A000984(2*n+1))/2` -/
def P18227286898057780265.Spec : Prop :=
  ∀ n, P18227286898057780265.a n = (A256462 n : ℚ)

end A256462

/-! ## A256462.P1397466583321737754

`A088218(2*n+1)+n*A001791(2*n)`
-/

namespace A256462.P1397466583321737754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (2 * n + 1) + (n : ℤ) * A001791 (2 * n)

end

end A256462.P1397466583321737754

namespace A256462

/-- `A088218(2*n+1)+n*A001791(2*n)` -/
def P1397466583321737754.Spec : Prop :=
  ∀ n, P1397466583321737754.a n = A256462 n

end A256462

/-! ## A256462.P6478487731625735658

`(A000217(2*n+1)+n)*A120588(2*n+1)`
-/

namespace A256462.P6478487731625735658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (2 * n + 1) + (n : ℤ)) * A120588 (2 * n + 1)

end

end A256462.P6478487731625735658

namespace A256462

/-- `(A000217(2*n+1)+n)*A120588(2*n+1)` -/
def P6478487731625735658.Spec : Prop :=
  ∀ n, P6478487731625735658.a n = A256462 n

end A256462

/-! ## A256462.P13769369116083207666

`(A034856(2*n+1)-n)*A120588(2*n+1)`
-/

namespace A256462.P13769369116083207666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034856 (2 * n + 1) - (n : ℤ)) * A120588 (2 * n + 1)

end

end A256462.P13769369116083207666

namespace A256462

/-- `(A034856(2*n+1)-n)*A120588(2*n+1)` -/
def P13769369116083207666.Spec : Prop :=
  ∀ n, P13769369116083207666.a n = A256462 n

end A256462

/-! ## A256462.P14419040062173468577

`A349427(2*n+1)/(2*n+1)`
-/

namespace A256462.P14419040062173468577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349427 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A256462.P14419040062173468577

namespace A256462

/-- `A349427(2*n+1)/(2*n+1)` -/
def P14419040062173468577.Spec : Prop :=
  ∀ n, P14419040062173468577.a n = (A256462 n : ℚ)

end A256462

/-!
# A256465: Number of points in a circle of squared radius n, points on the circle counted half.

The programs for A256465, the canonical program `A256465.P12543537309397973393` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256465 has offset 1).

The definition of A256465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256465.P13497927970212130021

`A057655(n+1)-A004018(n+1)/2`
-/

namespace A256465.P13497927970212130021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057655 (n + 1) : ℚ) - (A004018 (n + 1) : ℚ) / 2

end

end A256465.P13497927970212130021

namespace A256465

/-- `A057655(n+1)-A004018(n+1)/2` -/
def P13497927970212130021.Spec : Prop :=
  ∀ n, P13497927970212130021.a n = (A256465 (n + 1) : ℚ)

end A256465

/-! ## A256465.P12543537309397973393

`A105673(n+1)+A057655(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A256465

/-- `A105673(n+1)+A057655(n)` -/
def P12543537309397973393.Spec : Prop :=
  ∀ n, P12543537309397973393.a n = A256465 (n + 1)

theorem P12543537309397973393.correct : P12543537309397973393.Spec := by
  intro n
  simp only [A256465, Nat.add_sub_cancel]

end A256465

/-! ## A256465.P16814108045211185802

`A105673(n+1)+∑[A004018(n)]`
-/

namespace A256465.P16814108045211185802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105673 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256465.P16814108045211185802

namespace A256465

/-- `A105673(n+1)+∑[A004018(n)]` -/
def P16814108045211185802.Spec : Prop :=
  ∀ n, P16814108045211185802.a n = A256465 (n + 1)

end A256465

/-! ## A256465.P11405410523591813624

`A105673(n+1)+A014198(n)+1`
-/

namespace A256465.P11405410523591813624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105673 (n + 1) + (A014198 n + 1)

end

end A256465.P11405410523591813624

namespace A256465

/-- `A105673(n+1)+A014198(n)+1` -/
def P11405410523591813624.Spec : Prop :=
  ∀ n, P11405410523591813624.a n = A256465 (n + 1)

end A256465

/-! ## A256465.P6268345535504784171

`A057655(n)+2*A002654(n+1)`
-/

namespace A256465.P6268345535504784171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 n + 2 * A002654 (n + 1)

end

end A256465.P6268345535504784171

namespace A256465

/-- `A057655(n)+2*A002654(n+1)` -/
def P6268345535504784171.Spec : Prop :=
  ∀ n, P6268345535504784171.a n = A256465 (n + 1)

theorem P6268345535504784171.correct : P6268345535504784171.Spec := by
  intro n
  simp only [A256465, Nat.add_sub_cancel, A256465.P6268345535504784171.a, A256465.P12543537309397973393.a, A002654, A002654.P11574922253888480122.a, A057655, A057655.P8142405424443184292.a, A105673, A105673.P14538287794614071707.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A014198, A014198.P2354480518814049901.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256465

/-! ## A256465.P12492114111029771453

`A105673(n+1)+∑[abs(A104794(n))]`
-/

namespace A256465.P12492114111029771453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104794 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105673 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256465.P12492114111029771453

namespace A256465

/-- `A105673(n+1)+∑[abs(A104794(n))]` -/
def P12492114111029771453.Spec : Prop :=
  ∀ n, P12492114111029771453.a n = A256465 (n + 1)

end A256465

/-! ## A256465.P2103559847654436618

`A014198(n)+A005408(Δ[A014200(n)])`
-/

namespace A256465.P2103559847654436618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 n + A005408 (f1 (n + 1) - f1 n).toNat

end

end A256465.P2103559847654436618

namespace A256465

/-- `A014198(n)+A005408(Δ[A014200(n)])` -/
def P2103559847654436618.Spec : Prop :=
  ∀ n, P2103559847654436618.a n = A256465 (n + 1)

end A256465

/-! ## A256465.P10289950363020136283

`A014198(n)+A008619(Δ[A014198(n)])`
-/

namespace A256465.P10289950363020136283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 n + A008619 (f1 (n + 1) - f1 n).toNat

end

end A256465.P10289950363020136283

namespace A256465

/-- `A014198(n)+A008619(Δ[A014198(n)])` -/
def P10289950363020136283.Spec : Prop :=
  ∀ n, P10289950363020136283.a n = A256465 (n + 1)

end A256465

/-! ## A256465.P17709929767152918826

`(A057655(n+1)+A057655(n))/2`
-/

namespace A256465.P17709929767152918826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057655 (n + 1) + A057655 n : ℚ) / 2

end

end A256465.P17709929767152918826

namespace A256465

/-- `(A057655(n+1)+A057655(n))/2` -/
def P17709929767152918826.Spec : Prop :=
  ∀ n, P17709929767152918826.a n = (A256465 (n + 1) : ℚ)

end A256465

/-! ## A256465.P12811986909993461110

`A105673(n+1)+∑[A104794(2*n)]`
-/

namespace A256465.P12811986909993461110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105673 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256465.P12811986909993461110

namespace A256465

/-- `A105673(n+1)+∑[A104794(2*n)]` -/
def P12811986909993461110.Spec : Prop :=
  ∀ n, P12811986909993461110.a n = A256465 (n + 1)

end A256465

/-! ## A256465.P14958965065561434786

`A105673(n+1)+∑[A004531(4*n)]`
-/

namespace A256465.P14958965065561434786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105673 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256465.P14958965065561434786

namespace A256465

/-- `A105673(n+1)+∑[A004531(4*n)]` -/
def P14958965065561434786.Spec : Prop :=
  ∀ n, P14958965065561434786.a n = A256465 (n + 1)

end A256465

/-!
# A256468: Number of primes between prime(n)^2 and prime(n)*prime(n+1).

The programs for A256468, the canonical program `A256468.P15833489412511418299` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256468 has offset 1).

The definition of A256468 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256447, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256468.P11783029992225918799

`A050216(n+1)-A256469(n+1)`
-/

namespace A256468.P11783029992225918799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (n + 1) - A256469 (n + 1)

end

end A256468.P11783029992225918799

namespace A256468

/-- `A050216(n+1)-A256469(n+1)` -/
def P11783029992225918799.Spec : Prop :=
  ∀ n, P11783029992225918799.a n = A256468 (n + 1)

end A256468

/-! ## A256468.P8042365824297232264

`A256469(n+1)-A256470(n+1)`
-/

namespace A256468.P8042365824297232264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256469 (n + 1) - A256470 (n + 1)

end

end A256468.P8042365824297232264

namespace A256468

/-- `A256469(n+1)-A256470(n+1)` -/
def P8042365824297232264.Spec : Prop :=
  ∀ n, P8042365824297232264.a n = A256468 (n + 1)

theorem P8042365824297232264.correct : P8042365824297232264.Spec := by
  intro n
  simp only [A256468, Nat.add_sub_cancel, A256468.P8042365824297232264.a, A256468.P15833489412511418299.a, A256447, A256447.P10526496064396814310.a, A256469, A256469.P956244140118081997.a, A256470, A256470.P3494554339232187623.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256448, A256448.P8888948745584736931.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256468

/-! ## A256468.P15833489412511418299

`A256447(n+1)-1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A256468

/-- `A256447(n+1)-1` -/
def P15833489412511418299.Spec : Prop :=
  ∀ n, P15833489412511418299.a n = A256468 (n + 1)

theorem P15833489412511418299.correct : P15833489412511418299.Spec := by
  intro n
  simp only [A256468, Nat.add_sub_cancel]

end A256468

/-! ## A256468.P2004322241314173642

`A000879(n+2)-(A256469(n+1)+A000879(n+1))`
-/

namespace A256468.P2004322241314173642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 2) - (A256469 (n + 1) + A000879 (n + 1))

end

end A256468.P2004322241314173642

namespace A256468

/-- `A000879(n+2)-(A256469(n+1)+A000879(n+1))` -/
def P2004322241314173642.Spec : Prop :=
  ∀ n, P2004322241314173642.a n = A256468 (n + 1)

theorem P2004322241314173642.correct : P2004322241314173642.Spec := by
  intro n
  simp only [A256468, Nat.add_sub_cancel, A256468.P2004322241314173642.a, A256468.P15833489412511418299.a, A000879, A000879.P11642258310759995278.a, A256447, A256447.P10526496064396814310.a, A256469, A256469.P956244140118081997.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256448, A256448.P8888948745584736931.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256468

/-! ## A256468.P7540331756762071512

`A251723(n+1)+1-A256469(n+1)`
-/

namespace A256468.P7540331756762071512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (n + 1) + (1 - A256469 (n + 1))

end

end A256468.P7540331756762071512

namespace A256468

/-- `A251723(n+1)+1-A256469(n+1)` -/
def P7540331756762071512.Spec : Prop :=
  ∀ n, P7540331756762071512.a n = A256468 (n + 1)

theorem P7540331756762071512.correct : P7540331756762071512.Spec := by
  intro n
  simp only [A256468, Nat.add_sub_cancel, A256468.P7540331756762071512.a, A256468.P15833489412511418299.a, A251723, A251723.P8283630235415226138.a, A256447, A256447.P10526496064396814310.a, A256469, A256469.P956244140118081997.a, A054272, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256448, A256448.P8888948745584736931.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256468

/-! ## A256468.P13026336244034308728

`A120941(n+1)-A054272(n+1)`
-/

namespace A256468.P13026336244034308728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120941 (n + 1) - A054272 (n + 1)

end

end A256468.P13026336244034308728

namespace A256468

/-- `A120941(n+1)-A054272(n+1)` -/
def P13026336244034308728.Spec : Prop :=
  ∀ n, P13026336244034308728.a n = A256468 (n + 1)

theorem P13026336244034308728.correct : P13026336244034308728.Spec := by
  intro n
  simp only [A256468, Nat.add_sub_cancel, A256468.P13026336244034308728.a, A256468.P15833489412511418299.a, A054272, A054272.P16500536369367462355.a, A120941, A120941.P1519152944059217125.a, A256447, A256447.P10526496064396814310.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A250473, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256468

/-! ## A256468.P5252794094110012410

`A251723(n+1)-(A256448(n+1)+1)`
-/

namespace A256468.P5252794094110012410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (n + 1) - (A256448 (n + 1) + 1)

end

end A256468.P5252794094110012410

namespace A256468

/-- `A251723(n+1)-(A256448(n+1)+1)` -/
def P5252794094110012410.Spec : Prop :=
  ∀ n, P5252794094110012410.a n = A256468 (n + 1)

theorem P5252794094110012410.correct : P5252794094110012410.Spec := by
  intro n
  simp only [A256468, Nat.add_sub_cancel, A256468.P5252794094110012410.a, A256468.P15833489412511418299.a, A251723, A251723.P8283630235415226138.a, A256447, A256447.P10526496064396814310.a, A256448, A256448.P8888948745584736931.a, A054272, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256468

/-! ## A256468.P11414155323670353060

`A256448(n+1)+2-A256470(n+1)`
-/

namespace A256468.P11414155323670353060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256448 (n + 1) + (2 - A256470 (n + 1))

end

end A256468.P11414155323670353060

namespace A256468

/-- `A256448(n+1)+2-A256470(n+1)` -/
def P11414155323670353060.Spec : Prop :=
  ∀ n, P11414155323670353060.a n = A256468 (n + 1)

theorem P11414155323670353060.correct : P11414155323670353060.Spec := by
  intro n
  simp only [A256468, Nat.add_sub_cancel, A256468.P11414155323670353060.a, A256468.P15833489412511418299.a, A256447, A256447.P10526496064396814310.a, A256448, A256448.P8888948745584736931.a, A256470, A256470.P3494554339232187623.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256469, A256469.P956244140118081997.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256468

/-! ## A256468.P3272525393791038659

`A054272(n+2)-(A256448(n+1)+A250473(n+1))`
-/

namespace A256468.P3272525393791038659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054272 (n + 2) - (A256448 (n + 1) + A250473 (n + 1))

end

end A256468.P3272525393791038659

namespace A256468

/-- `A054272(n+2)-(A256448(n+1)+A250473(n+1))` -/
def P3272525393791038659.Spec : Prop :=
  ∀ n, P3272525393791038659.a n = A256468 (n + 1)

theorem P3272525393791038659.correct : P3272525393791038659.Spec := by
  intro n
  simp only [A256468, Nat.add_sub_cancel, A256468.P3272525393791038659.a, A256468.P15833489412511418299.a, A054272, A054272.P16500536369367462355.a, A250473, A250473.P15728952414264512561.a, A256447, A256447.P10526496064396814310.a, A256448, A256448.P8888948745584736931.a, A000879, A000879.P11642258310759995278.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A120941, A120941.P1519152944059217125.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256468

/-! ## A256468.P10210154302578647312

`A250473(n+2)-(A256448(n+1)+A250474(n+1))`
-/

namespace A256468.P10210154302578647312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 2) - (A256448 (n + 1) + A250474 (n + 1))

end

end A256468.P10210154302578647312

namespace A256468

/-- `A250473(n+2)-(A256448(n+1)+A250474(n+1))` -/
def P10210154302578647312.Spec : Prop :=
  ∀ n, P10210154302578647312.a n = A256468 (n + 1)

theorem P10210154302578647312.correct : P10210154302578647312.Spec := by
  intro n
  simp only [A256468, Nat.add_sub_cancel, A256468.P10210154302578647312.a, A256468.P15833489412511418299.a, A250473, A250473.P15728952414264512561.a, A250474, A250474.P15580657759443600580.a, A256447, A256447.P10526496064396814310.a, A256448, A256448.P8888948745584736931.a, A000879, A000879.P11642258310759995278.a, A250477, A250477.P16411795154775873264.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A120941, A120941.P1519152944059217125.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256468

/-! ## A256468.P5130107081366601759

`A256448(n+1)+A256449(n+1)-1`
-/

namespace A256468.P5130107081366601759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256448 (n + 1) + (A256449 (n + 1) - 1)

end

end A256468.P5130107081366601759

namespace A256468

/-- `A256448(n+1)+A256449(n+1)-1` -/
def P5130107081366601759.Spec : Prop :=
  ∀ n, P5130107081366601759.a n = A256468 (n + 1)

theorem P5130107081366601759.correct : P5130107081366601759.Spec := by
  intro n
  simp only [A256468, Nat.add_sub_cancel, A256468.P5130107081366601759.a, A256468.P15833489412511418299.a, A256447, A256447.P10526496064396814310.a, A256448, A256448.P8888948745584736931.a, A256449, A256449.P3394376339508603245.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256468

/-! ## A256468.P627316989754275794

`A250477(n+1)-(A250474(n+1)+1)`
-/

namespace A256468.P627316989754275794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250477 (n + 1) - (A250474 (n + 1) + 1)

end

end A256468.P627316989754275794

namespace A256468

/-- `A250477(n+1)-(A250474(n+1)+1)` -/
def P627316989754275794.Spec : Prop :=
  ∀ n, P627316989754275794.a n = A256468 (n + 1)

theorem P627316989754275794.correct : P627316989754275794.Spec := by
  intro n
  simp only [A256468, Nat.add_sub_cancel, A256468.P627316989754275794.a, A256468.P15833489412511418299.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256447, A256447.P10526496064396814310.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256468

/-! ## A256468.P16794089499981502821

`A250477(n+1)-(A250473(n+1)+2)`
-/

namespace A256468.P16794089499981502821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250477 (n + 1) - (A250473 (n + 1) + 2)

end

end A256468.P16794089499981502821

namespace A256468

/-- `A250477(n+1)-(A250473(n+1)+2)` -/
def P16794089499981502821.Spec : Prop :=
  ∀ n, P16794089499981502821.a n = A256468 (n + 1)

theorem P16794089499981502821.correct : P16794089499981502821.Spec := by
  intro n
  simp only [A256468, Nat.add_sub_cancel, A256468.P16794089499981502821.a, A256468.P15833489412511418299.a, A250473, A250473.P15728952414264512561.a, A250477, A250477.P16411795154775873264.a, A256447, A256447.P10526496064396814310.a, A000879, A000879.P11642258310759995278.a, A120941, A120941.P1519152944059217125.a, A250474, A250474.P15580657759443600580.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256468

/-! ## A256468.P4653020149484199322

`A120941(n+1)-(A079047(n+1)+1)`
-/

namespace A256468.P4653020149484199322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120941 (n + 1) - (A079047 (n + 1) + 1)

end

end A256468.P4653020149484199322

namespace A256468

/-- `A120941(n+1)-(A079047(n+1)+1)` -/
def P4653020149484199322.Spec : Prop :=
  ∀ n, P4653020149484199322.a n = A256468 (n + 1)

end A256468

/-! ## A256468.P14668514329552749302

`A023443(A256447(n+1))`
-/

namespace A256468.P14668514329552749302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A256447 (n + 1)).toNat

end

end A256468.P14668514329552749302

namespace A256468

/-- `A023443(A256447(n+1))` -/
def P14668514329552749302.Spec : Prop :=
  ∀ n, P14668514329552749302.a n = A256468 (n + 1)

end A256468

/-! ## A256468.P13112380213328680962

`A078898(A256449(n+1)+A251723(n+1))-1`
-/

namespace A256468.P13112380213328680962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A256449 (n + 1) + A251723 (n + 1)).toNat - 1

end

end A256468.P13112380213328680962

namespace A256468

/-- `A078898(A256449(n+1)+A251723(n+1))-1` -/
def P13112380213328680962.Spec : Prop :=
  ∀ n, P13112380213328680962.a n = A256468 (n + 1)

end A256468

/-!
# A256469: Number of primes between prime(n)*prime(n+1) and prime(n+1)^2.

The programs for A256469, the canonical program `A256469.P956244140118081997` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256469 has offset 1).

The definition of A256469 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256469.P11848830060929427768

`A256468(n+1)+A256470(n+1)`
-/

namespace A256469.P11848830060929427768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256468 (n + 1) + A256470 (n + 1)

end

end A256469.P11848830060929427768

namespace A256469

/-- `A256468(n+1)+A256470(n+1)` -/
def P11848830060929427768.Spec : Prop :=
  ∀ n, P11848830060929427768.a n = A256469 (n + 1)

theorem P11848830060929427768.correct : P11848830060929427768.Spec := by
  intro n
  simp only [A256469, Nat.add_sub_cancel, A256469.P11848830060929427768.a, A256469.P956244140118081997.a, A256448, A256448.P8888948745584736931.a, A256468, A256468.P15833489412511418299.a, A256470, A256470.P3494554339232187623.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256447, A256447.P10526496064396814310.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256469

/-! ## A256469.P17517328389692203484

`A050216(n+1)-A256468(n+1)`
-/

namespace A256469.P17517328389692203484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (n + 1) - A256468 (n + 1)

end

end A256469.P17517328389692203484

namespace A256469

/-- `A050216(n+1)-A256468(n+1)` -/
def P17517328389692203484.Spec : Prop :=
  ∀ n, P17517328389692203484.a n = A256469 (n + 1)

end A256469

/-! ## A256469.P956244140118081997

`A256448(n+1)+2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A256469

/-- `A256448(n+1)+2` -/
def P956244140118081997.Spec : Prop :=
  ∀ n, P956244140118081997.a n = A256469 (n + 1)

theorem P956244140118081997.correct : P956244140118081997.Spec := by
  intro n
  simp only [A256469, Nat.add_sub_cancel]

end A256469

/-! ## A256469.P4455488198235288442

`A000879(n+2)-(A256468(n+1)+A000879(n+1))`
-/

namespace A256469.P4455488198235288442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 2) - (A256468 (n + 1) + A000879 (n + 1))

end

end A256469.P4455488198235288442

namespace A256469

/-- `A000879(n+2)-(A256468(n+1)+A000879(n+1))` -/
def P4455488198235288442.Spec : Prop :=
  ∀ n, P4455488198235288442.a n = A256469 (n + 1)

theorem P4455488198235288442.correct : P4455488198235288442.Spec := by
  intro n
  simp only [A256469, Nat.add_sub_cancel, A256469.P4455488198235288442.a, A256469.P956244140118081997.a, A000879, A000879.P11642258310759995278.a, A256448, A256448.P8888948745584736931.a, A256468, A256468.P15833489412511418299.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256447, A256447.P10526496064396814310.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256469

/-! ## A256469.P8550109377380000836

`A251723(n+1)+1-A256468(n+1)`
-/

namespace A256469.P8550109377380000836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (n + 1) + (1 - A256468 (n + 1))

end

end A256469.P8550109377380000836

namespace A256469

/-- `A251723(n+1)+1-A256468(n+1)` -/
def P8550109377380000836.Spec : Prop :=
  ∀ n, P8550109377380000836.a n = A256469 (n + 1)

theorem P8550109377380000836.correct : P8550109377380000836.Spec := by
  intro n
  simp only [A256469, Nat.add_sub_cancel, A256469.P8550109377380000836.a, A256469.P956244140118081997.a, A251723, A251723.P8283630235415226138.a, A256448, A256448.P8888948745584736931.a, A256468, A256468.P15833489412511418299.a, A054272, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256447, A256447.P10526496064396814310.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256469

/-! ## A256469.P11994600115283879065

`Δ[A054272(n+1)]+1-A256468(n+1)`
-/

namespace A256469.P11994600115283879065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A256468 (n + 1))

end

end A256469.P11994600115283879065

namespace A256469

/-- `Δ[A054272(n+1)]+1-A256468(n+1)` -/
def P11994600115283879065.Spec : Prop :=
  ∀ n, P11994600115283879065.a n = A256469 (n + 1)

theorem P11994600115283879065.correct : P11994600115283879065.Spec := by
  intro n
  simp only [A256469, Nat.add_sub_cancel, A256469.P11994600115283879065.f1, A256469.P11994600115283879065.a, A256469.P956244140118081997.a, A054272, A054272.P16500536369367462355.a, A256448, A256448.P8888948745584736931.a, A256468, A256468.P15833489412511418299.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256447, A256447.P10526496064396814310.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256469

/-! ## A256469.P7810955903446889374

`A251723(n+1)+2-A256447(n+1)`
-/

namespace A256469.P7810955903446889374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (n + 1) + (2 - A256447 (n + 1))

end

end A256469.P7810955903446889374

namespace A256469

/-- `A251723(n+1)+2-A256447(n+1)` -/
def P7810955903446889374.Spec : Prop :=
  ∀ n, P7810955903446889374.a n = A256469 (n + 1)

theorem P7810955903446889374.correct : P7810955903446889374.Spec := by
  intro n
  simp only [A256469, Nat.add_sub_cancel, A256469.P7810955903446889374.a, A256469.P956244140118081997.a, A251723, A251723.P8283630235415226138.a, A256447, A256447.P10526496064396814310.a, A256448, A256448.P8888948745584736931.a, A054272, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256469

/-! ## A256469.P1078275866902997674

`A256447(n+1)+2-A256449(n+1)`
-/

namespace A256469.P1078275866902997674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256447 (n + 1) + (2 - A256449 (n + 1))

end

end A256469.P1078275866902997674

namespace A256469

/-- `A256447(n+1)+2-A256449(n+1)` -/
def P1078275866902997674.Spec : Prop :=
  ∀ n, P1078275866902997674.a n = A256469 (n + 1)

theorem P1078275866902997674.correct : P1078275866902997674.Spec := by
  intro n
  simp only [A256469, Nat.add_sub_cancel, A256469.P1078275866902997674.a, A256469.P956244140118081997.a, A256447, A256447.P10526496064396814310.a, A256448, A256448.P8888948745584736931.a, A256449, A256449.P3394376339508603245.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256469

/-! ## A256469.P1298122629526758300

`A250474(n+2)-(A256447(n+1)+A054272(n+1))`
-/

namespace A256469.P1298122629526758300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 2) - (A256447 (n + 1) + A054272 (n + 1))

end

end A256469.P1298122629526758300

namespace A256469

/-- `A250474(n+2)-(A256447(n+1)+A054272(n+1))` -/
def P1298122629526758300.Spec : Prop :=
  ∀ n, P1298122629526758300.a n = A256469 (n + 1)

theorem P1298122629526758300.correct : P1298122629526758300.Spec := by
  intro n
  simp only [A256469, Nat.add_sub_cancel, A256469.P1298122629526758300.a, A256469.P956244140118081997.a, A054272, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, A256447, A256447.P10526496064396814310.a, A256448, A256448.P8888948745584736931.a, A250473, A250473.P15728952414264512561.a, A250477, A250477.P16411795154775873264.a, A000879, A000879.P11642258310759995278.a, A120941, A120941.P1519152944059217125.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256469

/-! ## A256469.P7240041932141508931

`A250477(n+1)-(A256449(n+1)+A054272(n+1))`
-/

namespace A256469.P7240041932141508931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250477 (n + 1) - (A256449 (n + 1) + A054272 (n + 1))

end

end A256469.P7240041932141508931

namespace A256469

/-- `A250477(n+1)-(A256449(n+1)+A054272(n+1))` -/
def P7240041932141508931.Spec : Prop :=
  ∀ n, P7240041932141508931.a n = A256469 (n + 1)

theorem P7240041932141508931.correct : P7240041932141508931.Spec := by
  intro n
  simp only [A256469, Nat.add_sub_cancel, A256469.P7240041932141508931.a, A256469.P956244140118081997.a, A054272, A054272.P16500536369367462355.a, A250477, A250477.P16411795154775873264.a, A256448, A256448.P8888948745584736931.a, A256449, A256449.P3394376339508603245.a, A120941, A120941.P1519152944059217125.a, A250474, A250474.P15580657759443600580.a, A256447, A256447.P10526496064396814310.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250473, A250473.P15728952414264512561.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256469

/-!
# A256470: a(n) = A256469(n) - A256468(n).

The programs for A256470, the canonical program `A256470.P3494554339232187623` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256470 has offset 1).

The definition of A256470 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256468, A256469, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256470.P3494554339232187623

`A256469(n+1)-A256468(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A256470

/-- `A256469(n+1)-A256468(n+1)` -/
def P3494554339232187623.Spec : Prop :=
  ∀ n, P3494554339232187623.a n = A256470 (n + 1)

theorem P3494554339232187623.correct : P3494554339232187623.Spec := by
  intro n
  simp only [A256470, Nat.add_sub_cancel]

end A256470

/-! ## A256470.P7650797158918025039

`3-A256449(n+1)`
-/

namespace A256470.P7650797158918025039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A256449 (n + 1)

end

end A256470.P7650797158918025039

namespace A256470

/-- `3-A256449(n+1)` -/
def P7650797158918025039.Spec : Prop :=
  ∀ n, P7650797158918025039.a n = A256470 (n + 1)

theorem P7650797158918025039.correct : P7650797158918025039.Spec := by
  intro n
  simp only [A256470, Nat.add_sub_cancel, A256470.P7650797158918025039.a, A256470.P3494554339232187623.a, A256449, A256449.P3394376339508603245.a, A256468, A256468.P15833489412511418299.a, A256469, A256469.P956244140118081997.a, A256447, A256447.P10526496064396814310.a, A256448, A256448.P8888948745584736931.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A256470

/-! ## A256470.P15587962553317532325

`A050216(n+1)-2*A256468(n+1)`
-/

namespace A256470.P15587962553317532325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (n + 1) - 2 * A256468 (n + 1)

end

end A256470.P15587962553317532325

namespace A256470

/-- `A050216(n+1)-2*A256468(n+1)` -/
def P15587962553317532325.Spec : Prop :=
  ∀ n, P15587962553317532325.a n = A256470 (n + 1)

end A256470

/-! ## A256470.P14094097724035796345

`A256469(n+1)+A256469(n+1)-A050216(n+1)`
-/

namespace A256470.P14094097724035796345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256469 (n + 1) + (A256469 (n + 1) - A050216 (n + 1))

end

end A256470.P14094097724035796345

namespace A256470

/-- `A256469(n+1)+A256469(n+1)-A050216(n+1)` -/
def P14094097724035796345.Spec : Prop :=
  ∀ n, P14094097724035796345.a n = A256470 (n + 1)

end A256470

/-! ## A256470.P6198815970472118778

`A256469(n+1)+1-A256447(n+1)`
-/

namespace A256470.P6198815970472118778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256469 (n + 1) + (1 - A256447 (n + 1))

end

end A256470.P6198815970472118778

namespace A256470

/-- `A256469(n+1)+1-A256447(n+1)` -/
def P6198815970472118778.Spec : Prop :=
  ∀ n, P6198815970472118778.a n = A256470 (n + 1)

theorem P6198815970472118778.correct : P6198815970472118778.Spec := by
  intro n
  simp only [A256470, Nat.add_sub_cancel, A256470.P6198815970472118778.a, A256470.P3494554339232187623.a, A256447, A256447.P10526496064396814310.a, A256468, A256468.P15833489412511418299.a, A256469, A256469.P956244140118081997.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256448, A256448.P8888948745584736931.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A256470

/-!
# A256471: Numbers n for which there is an equal number of primes in range [prime(n)^2, prime(n)*prime(n+1)] as there are primes in range [prime(n)*prime(n+1), prime(n+1)^2].

The programs for A256471, there is no canonical definition to state claims against.
-/

/-! ## A256471.P17201906536353571724

`lt[A256470(n+1)², 1]+1`
-/

namespace A256471.P17201906536353571724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256470 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A256471.P17201906536353571724

/-! ## A256471.P13580794680725099896

`A000720(A256472(n+1))`
-/

namespace A256471.P13580794680725099896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A256472 (n + 1)).toNat

end

end A256471.P13580794680725099896

/-! ## A256471.P603045055854375726

`A329622(A256473(n+1))`
-/

namespace A256471.P603045055854375726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329622 (A256473 (n + 1)).toNat

end

end A256471.P603045055854375726

/-! ## A256471.P3012989469960523857

`A061395(p?[A256472(n+1)])`
-/

namespace A256471.P3012989469960523857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A256471.P3012989469960523857

/-! ## A256471.P1328090966129198742

`A066328(p?[A256472(n+1)])`
-/

namespace A256471.P1328090966129198742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A256471.P1328090966129198742

/-!
# A256472: Primes p for which there are exactly as many primes in the range [p^2, p*nextprime(p)] as there are in the range [p*nextprime(p), nextprime(p)^2], where nextprime(p) gives the next prime after prime p.

The programs for A256472, there is no canonical definition to state claims against.
-/

/-! ## A256472.P13577287829371099532

`A000040(A256471(n+1))`
-/

namespace A256472.P13577287829371099532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A256471 (n + 1)).toNat

end

end A256472.P13577287829371099532

/-! ## A256472.P1227234718454060109

`A008578(A256471(n+1)+1)`
-/

namespace A256472.P1227234718454060109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A256471 (n + 1) + 1).toNat

end

end A256472.P1227234718454060109

/-! ## A256472.P2977011157654921010

`A182986(A256471(n+1)+1)`
-/

namespace A256472.P2977011157654921010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A256471 (n + 1) + 1).toNat

end

end A256472.P2977011157654921010

/-! ## A256472.P11411935557931238659

`A158611(A256471(n+1)+2)`
-/

namespace A256472.P11411935557931238659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A256471 (n + 1) + 2).toNat

end

end A256472.P11411935557931238659

/-!
# A256473: Odd primes p for which there are exactly as many primes in the range [prevprime(p)^2, prevprime(p)*p] as there are in the range [prevprime(p)*p, p^2], where prevprime(p) gives the previous prime before prime p.

The programs for A256473, there is no canonical definition to state claims against.
-/

/-! ## A256473.P4917575084936491180

`A065091(A256471(n+1))`
-/

namespace A256473.P4917575084936491180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A256471 (n + 1)).toNat

end

end A256473.P4917575084936491180

/-! ## A256473.P16033671682120806860

`A000040(1+A256471(n+1))`
-/

namespace A256473.P16033671682120806860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + A256471 (n + 1)).toNat

end

end A256473.P16033671682120806860

/-! ## A256473.P3312100719925918911

`A151800(A256472(n+1))`
-/

namespace A256473.P3312100719925918911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A256472 (n + 1)).toNat

end

end A256473.P3312100719925918911

/-! ## A256473.P7056311002418425706

`A006005(A256471(n+1)+1)`
-/

namespace A256473.P7056311002418425706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A256471 (n + 1) + 1).toNat

end

end A256473.P7056311002418425706

/-! ## A256473.P8061639399221914284

`A318871(A256471(n+1)+1)`
-/

namespace A256473.P8061639399221914284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318871 (A256471 (n + 1) + 1).toNat

end

end A256473.P8061639399221914284

/-!
# A256474: Numbers n for which there are at least as many primes in the range [prime(n)*prime(n+1), prime(n+1)^2] as in the range [prime(n)^2, prime(n)*prime(n+1)].

The programs for A256474, the canonical program `A256474.P13380877668592853499` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256474 has offset 1).

The definition of A256474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1775 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256474.P16425524699199351865

`A000720(A256484(n+1))`
-/

namespace A256474.P16425524699199351865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A256484 (n + 1)).toNat

end

end A256474.P16425524699199351865

namespace A256474

/-- `A000720(A256484(n+1))` -/
def P16425524699199351865.Spec : Prop :=
  ∀ n, P16425524699199351865.a n = A256474 (n + 1)

end A256474

/-! ## A256474.P13168063428994953006

`∪[A256471(n+1), A256476(n+1)]`
-/

namespace A256474.P13168063428994953006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A256474.P13168063428994953006

namespace A256474

/-- `∪[A256471(n+1), A256476(n+1)]` -/
def P13168063428994953006.Spec : Prop :=
  ∀ n, (P13168063428994953006.a n : ℤ) = A256474 (n + 1)

end A256474

/-! ## A256474.P13380877668592853499

`eq[0, char[n*char[A256475(n+1)]]]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A256474

/-- `eq[0, char[n*char[A256475(n+1)]]]` -/
def P13380877668592853499.Spec : Prop :=
  ∀ n, (P13380877668592853499.a n : ℤ) = A256474 (n + 1)

theorem P13380877668592853499.correct : P13380877668592853499.Spec := by
  intro n
  simp only [A256474, Nat.add_sub_cancel]

end A256474

/-! ## A256474.P17922940608468224299

`A316524(∩[A000040(n+1), A256484(n+1)])`
-/

namespace A256474.P17922940608468224299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256484 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A256474.P17922940608468224299

namespace A256474

/-- `A316524(∩[A000040(n+1), A256484(n+1)])` -/
def P17922940608468224299.Spec : Prop :=
  ∀ n, P17922940608468224299.a n = A256474 (n + 1)

end A256474

/-! ## A256474.P17403081267488318895

`A003963(p?[A256484(n+1)])`
-/

namespace A256474.P17403081267488318895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A256474.P17403081267488318895

namespace A256474

/-- `A003963(p?[A256484(n+1)])` -/
def P17403081267488318895.Spec : Prop :=
  ∀ n, P17403081267488318895.a n = A256474 (n + 1)

end A256474

/-! ## A256474.P18132903538870081835

`A036234(A256484(n+1)-1)`
-/

namespace A256474.P18132903538870081835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A256484 (n + 1) - 1).toNat

end

end A256474.P18132903538870081835

namespace A256474

/-- `A036234(A256484(n+1)-1)` -/
def P18132903538870081835.Spec : Prop :=
  ∀ n, P18132903538870081835.a n = A256474 (n + 1)

end A256474

/-! ## A256474.P5797151081572615097

`A003963(2*A256484(n+1))`
-/

namespace A256474.P5797151081572615097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A256484 (n + 1)).toNat

end

end A256474.P5797151081572615097

namespace A256474

/-- `A003963(2*A256484(n+1))` -/
def P5797151081572615097.Spec : Prop :=
  ∀ n, P5797151081572615097.a n = A256474 (n + 1)

end A256474

/-!
# A256475: Numbers n for which there are more primes in range [prime(n)^2, prime(n)*prime(n+1)] than in range [prime(n)*prime(n+1), prime(n+1)^2].

The programs for A256475, the canonical program `A256475.P15851941031067490214` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256475 has offset 1).

The definition of A256475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3084 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256475.P15851941031067490214

`lt[A256470(n+1), 0]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A256475

/-- `lt[A256470(n+1), 0]+1` -/
def P15851941031067490214.Spec : Prop :=
  ∀ n, (P15851941031067490214.a n : ℤ) = A256475 (n + 1)

theorem P15851941031067490214.correct : P15851941031067490214.Spec := by
  intro n
  simp only [A256475, Nat.add_sub_cancel]

end A256475

/-! ## A256475.P6482297625943348648

`A000720(A256485(n+1))`
-/

namespace A256475.P6482297625943348648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A256485 (n + 1)).toNat

end

end A256475.P6482297625943348648

namespace A256475

/-- `A000720(A256485(n+1))` -/
def P6482297625943348648.Spec : Prop :=
  ∀ n, P6482297625943348648.a n = A256475 (n + 1)

end A256475

/-! ## A256475.P17916311824505110083

`A066328(A256485(C(n%2, 2)+n+1))`
-/

namespace A256475.P17916311824505110083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A256485 (Nat.choose (n % 2) 2 + (n + 1))).toNat

end

end A256475.P17916311824505110083

namespace A256475

/-- `A066328(A256485(C(n%2, 2)+n+1))` -/
def P17916311824505110083.Spec : Prop :=
  ∀ n, P17916311824505110083.a n = A256475 (n + 1)

end A256475

/-! ## A256475.P18185776092650898684

`A066328(A256485(n+1))%A141999(n+1)`
-/

namespace A256475.P18185776092650898684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066328 (A256485 (n + 1)).toNat) (A141999 (n + 1))

end

end A256475.P18185776092650898684

namespace A256475

/-- `A066328(A256485(n+1))%A141999(n+1)` -/
def P18185776092650898684.Spec : Prop :=
  ∀ n, P18185776092650898684.a n = A256475 (n + 1)

end A256475

/-! ## A256475.P17184017672968045434

`A066328(∩[A000040(n+1), A256485(n+1)])`
-/

namespace A256475.P17184017672968045434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256485 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A256475.P17184017672968045434

namespace A256475

/-- `A066328(∩[A000040(n+1), A256485(n+1)])` -/
def P17184017672968045434.Spec : Prop :=
  ∀ n, P17184017672968045434.a n = A256475 (n + 1)

end A256475

/-! ## A256475.P12820520750034975807

`A049084(p?[A256485(n+1)])`
-/

namespace A256475.P12820520750034975807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A256475.P12820520750034975807

namespace A256475

/-- `A049084(p?[A256485(n+1)])` -/
def P12820520750034975807.Spec : Prop :=
  ∀ n, P12820520750034975807.a n = A256475 (n + 1)

end A256475

/-! ## A256475.P6337975373933234942

`A049084(lcm(A256485(n+1), A309873(n+1)))`
-/

namespace A256475.P6337975373933234942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.lcm (A256485 (n + 1)) (A309873 (n + 1)))

end

end A256475.P6337975373933234942

namespace A256475

/-- `A049084(lcm(A256485(n+1), A309873(n+1)))` -/
def P6337975373933234942.Spec : Prop :=
  ∀ n, P6337975373933234942.a n = A256475 (n + 1)

end A256475

/-! ## A256475.P4015255461481229172

`A034460(A045344(n+1))*A049084(A256485(n+1))`
-/

namespace A256475.P4015255461481229172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (A045344 (n + 1)).toNat * A049084 (A256485 (n + 1)).toNat

end

end A256475.P4015255461481229172

namespace A256475

/-- `A034460(A045344(n+1))*A049084(A256485(n+1))` -/
def P4015255461481229172.Spec : Prop :=
  ∀ n, P4015255461481229172.a n = A256475 (n + 1)

end A256475

/-! ## A256475.P9183777426041121217

`A049084(A256485(n+1))*A309873(A035247(n+1))`
-/

namespace A256475.P9183777426041121217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A256485 (n + 1)).toNat * A309873 (A035247 (n + 1)).toNat

end

end A256475.P9183777426041121217

namespace A256475

/-- `A049084(A256485(n+1))*A309873(A035247(n+1))` -/
def P9183777426041121217.Spec : Prop :=
  ∀ n, P9183777426041121217.a n = A256475 (n + 1)

end A256475

/-! ## A256475.P9030444333166875955

`A049084(A256485(n+1))*A309873(A035270(n+1))`
-/

namespace A256475.P9030444333166875955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A256485 (n + 1)).toNat * A309873 (A035270 (n + 1)).toNat

end

end A256475.P9030444333166875955

namespace A256475

/-- `A049084(A256485(n+1))*A309873(A035270(n+1))` -/
def P9030444333166875955.Spec : Prop :=
  ∀ n, P9030444333166875955.a n = A256475 (n + 1)

end A256475

/-! ## A256475.P10264770865129310093

`A056239(2*A256485(n+1))-1`
-/

namespace A256475.P10264770865129310093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A256485 (n + 1)).toNat - 1

end

end A256475.P10264770865129310093

namespace A256475

/-- `A056239(2*A256485(n+1))-1` -/
def P10264770865129310093.Spec : Prop :=
  ∀ n, P10264770865129310093.a n = A256475 (n + 1)

end A256475

/-!
# A256476: Numbers n for which there are more primes in range [prime(n)*prime(n+1), prime(n+1)^2] than in range [prime(n)^2, prime(n)*prime(n+1)].

The programs for A256476, the canonical program `A256476.P1071483563112911407` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256476 has offset 1).

The definition of A256476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3413 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256476.P1071483563112911407

`lt[0, A256470(n+1)]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A256476

/-- `lt[0, A256470(n+1)]+1` -/
def P1071483563112911407.Spec : Prop :=
  ∀ n, (P1071483563112911407.a n : ℤ) = A256476 (n + 1)

theorem P1071483563112911407.correct : P1071483563112911407.Spec := by
  intro n
  simp only [A256476, Nat.add_sub_cancel]

end A256476

/-! ## A256476.P12289754076984107305

`eq[floor(1/(n+1)), char[A256477(n+1)]]`
-/

namespace A256476.P12289754076984107305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256477 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A256476.P12289754076984107305

namespace A256476

/-- `eq[floor(1/(n+1)), char[A256477(n+1)]]` -/
def P12289754076984107305.Spec : Prop :=
  ∀ n, (P12289754076984107305.a n : ℤ) = A256476 (n + 1)

end A256476

/-! ## A256476.P9048797455166655686

`lt[A256449(n+1), 3]+1`
-/

namespace A256476.P9048797455166655686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256449 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A256476.P9048797455166655686

namespace A256476

/-- `lt[A256449(n+1), 3]+1` -/
def P9048797455166655686.Spec : Prop :=
  ∀ n, (P9048797455166655686.a n : ℤ) = A256476 (n + 1)

end A256476

/-! ## A256476.P14621457653883322741

`lt[A256449(A028310(n)), 3]`
-/

namespace A256476.P14621457653883322741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256449 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A256476.P14621457653883322741

namespace A256476

/-- `lt[A256449(A028310(n)), 3]` -/
def P14621457653883322741.Spec : Prop :=
  ∀ n, (P14621457653883322741.a n : ℤ) = A256476 (n + 1)

end A256476

/-! ## A256476.P7816980627284565891

`eq[A341281(A000005(n+1)), A341334(3*n+1)]`
-/

namespace A256476.P7816980627284565891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341281 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341334 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256476.P7816980627284565891

namespace A256476

/-- `eq[A341281(A000005(n+1)), A341334(3*n+1)]` -/
def P7816980627284565891.Spec : Prop :=
  ∀ n, (P7816980627284565891.a n : ℤ) = A256476 (n + 1)

end A256476

/-!
# A256477: Numbers n for which the number of primes in the range [prime(n)*prime(n+1), prime(n+1)^2] is less than or equal to the number of primes in the range [prime(n)^2, prime(n)*prime(n+1)].

The programs for A256477, the canonical program `A256477.P10380906130391129273` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256477 has offset 1).

The definition of A256477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256477.P10380906130391129273

`lt[A256470(n+1), 1]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A256477

/-- `lt[A256470(n+1), 1]+1` -/
def P10380906130391129273.Spec : Prop :=
  ∀ n, (P10380906130391129273.a n : ℤ) = A256477 (n + 1)

theorem P10380906130391129273.correct : P10380906130391129273.Spec := by
  intro n
  simp only [A256477, Nat.add_sub_cancel]

end A256477

/-! ## A256477.P2511649960753042059

`eq[char[A256476(n+1)], A000007(n)]`
-/

namespace A256477.P2511649960753042059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256476 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A256477.P2511649960753042059

namespace A256477

/-- `eq[char[A256476(n+1)], A000007(n)]` -/
def P2511649960753042059.Spec : Prop :=
  ∀ n, (P2511649960753042059.a n : ℤ) = A256477 (n + 1)

end A256477

/-! ## A256477.P14209636632171018313

`eq[char[A256476(n+1)], A000038(n)]`
-/

namespace A256477.P14209636632171018313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256476 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A256477.P14209636632171018313

namespace A256477

/-- `eq[char[A256476(n+1)], A000038(n)]` -/
def P14209636632171018313.Spec : Prop :=
  ∀ n, (P14209636632171018313.a n : ℤ) = A256477 (n + 1)

end A256477

/-! ## A256477.P12122419525287591045

`eq[A028310(n)-n, char[A256476(n+1)]]`
-/

namespace A256477.P12122419525287591045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256476 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A256477.P12122419525287591045

namespace A256477

/-- `eq[A028310(n)-n, char[A256476(n+1)]]` -/
def P12122419525287591045.Spec : Prop :=
  ∀ n, (P12122419525287591045.a n : ℤ) = A256477 (n + 1)

end A256477

/-! ## A256477.P16380254229735995502

`eq[char[A256476(n+1)], A010051(2*(n+1))]`
-/

namespace A256477.P16380254229735995502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256476 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A256477.P16380254229735995502

namespace A256477

/-- `eq[char[A256476(n+1)], A010051(2*(n+1))]` -/
def P16380254229735995502.Spec : Prop :=
  ∀ n, (P16380254229735995502.a n : ℤ) = A256477 (n + 1)

end A256477

/-! ## A256477.P3053893225463617228

`eq[A008486(n)-3*n, char[A256476(n+1)]]`
-/

namespace A256477.P3053893225463617228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - (3 * n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256476 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A256477.P3053893225463617228

namespace A256477

/-- `eq[A008486(n)-3*n, char[A256476(n+1)]]` -/
def P3053893225463617228.Spec : Prop :=
  ∀ n, (P3053893225463617228.a n : ℤ) = A256477 (n + 1)

end A256477

/-! ## A256477.P15935559113934497940

`∪[A256471(n+1), A256475(n+1)]`
-/

namespace A256477.P15935559113934497940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A256477.P15935559113934497940

namespace A256477

/-- `∪[A256471(n+1), A256475(n+1)]` -/
def P15935559113934497940.Spec : Prop :=
  ∀ n, (P15935559113934497940.a n : ℤ) = A256477 (n + 1)

end A256477

/-! ## A256477.P13448738392664418190

`lt[2, A256449(n+1)]+1`
-/

namespace A256477.P13448738392664418190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256449 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A256477.P13448738392664418190

namespace A256477

/-- `lt[2, A256449(n+1)]+1` -/
def P13448738392664418190.Spec : Prop :=
  ∀ n, (P13448738392664418190.a n : ℤ) = A256477 (n + 1)

end A256477

/-!
# A256478: a(0) = 0; and for n >= 1, if A079559(n) = 1, then a(n) = 1 + a(A213714(n)-1), otherwise a(n) = a(A234017(n)).

The programs for A256478, there is no canonical definition to state claims against.
-/

/-! ## A256478.P5967076877451650190

`A000120(A233277(n))`
-/

namespace A256478.P5967076877451650190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A233277 n).toNat

end

end A256478.P5967076877451650190

/-! ## A256478.P14137419946717178616

`A290251(A233275(n))`
-/

namespace A256478.P14137419946717178616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A233275 n).toNat

end

end A256478.P14137419946717178616

/-! ## A256478.P6130090345891895964

`A070941(n)-A257249(n)`
-/

namespace A256478.P6130090345891895964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n - A257249 n

end

end A256478.P6130090345891895964

/-! ## A256478.P16568099967326852934

`A070939(2^ceil(log2(n+1)))-A257249(n)`
-/

namespace A256478.P16568099967326852934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat - A257249 n

end

end A256478.P16568099967326852934

/-! ## A256478.P8695568242971871129

`A257248(A005187(n+1))`
-/

namespace A256478.P8695568242971871129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257248 (A005187 (n + 1)).toNat

end

end A256478.P8695568242971871129

/-! ## A256478.P17506926823939938619

`A257248(lt[0, A213714(n)])`
-/

namespace A256478.P17506926823939938619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A256478.P17506926823939938619

/-! ## A256478.P18343119092108701288

`A257248(A011371(2*(n+1)))`
-/

namespace A256478.P18343119092108701288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257248 (A011371 (2 * (n + 1))).toNat

end

end A256478.P18343119092108701288

/-! ## A256478.P11503087838724073532

`A257248(A011371(n+1)+n+1)`
-/

namespace A256478.P11503087838724073532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257248 (A011371 (n + 1) + (n + 1 : ℤ)).toNat

end

end A256478.P11503087838724073532

/-! ## A256478.P1241221218576936740

`A257248(∑[A255559(A233276(n+1))])`
-/

namespace A256478.P1241221218576936740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255559 (A233276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257248 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A256478.P1241221218576936740

/-! ## A256478.P4732104286183062452

`A257248(A020965(n+1)-A155689(n+1))`
-/

namespace A256478.P4732104286183062452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257248 (A020965 (n + 1) - A155689 (n + 1)).toNat

end

end A256478.P4732104286183062452

/-! ## A256478.P7273968483357301663

`A080791(2*A233275(n))`
-/

namespace A256478.P7273968483357301663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (2 * A233275 n).toNat

end

end A256478.P7273968483357301663

/-! ## A256478.P13769979116622378406

`A080791(A233275(n)+A233275(n))`
-/

namespace A256478.P13769979116622378406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A233275 n + A233275 n).toNat

end

end A256478.P13769979116622378406

/-! ## A256478.P13800366623553360165

`A257248(comp[A233278(2*n)])`
-/

namespace A256478.P13800366623553360165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233278 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257248 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A256478.P13800366623553360165

/-! ## A256478.P12546755109109759887

`A257248(lt[1, A213724(n)])`
-/

namespace A256478.P12546755109109759887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A256478.P12546755109109759887

/-!
# A256479: a(1) = 0, and for n > 1, if A079559(n) = 0, then a(n) = 1 + a(A234017(n)), otherwise a(n) = a(A213714(n)-1).

The programs for A256479, there is no canonical definition to state claims against.
-/

/-! ## A256479.P15141404012295730208

`A070939(n+1)-A256478(n+1)`
-/

namespace A256479.P15141404012295730208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A256478 (n + 1)

end

end A256479.P15141404012295730208

/-! ## A256479.P14026097895396417405

`A257249(n+1)-1`
-/

namespace A256479.P14026097895396417405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257249 (n + 1) - 1

end

end A256479.P14026097895396417405

/-! ## A256479.P1926167286844260226

`A080791(A233277(n+1))`
-/

namespace A256479.P1926167286844260226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A233277 (n + 1)).toNat

end

end A256479.P1926167286844260226

/-! ## A256479.P15206251666312351921

`A000120(A233275(n+1))-1`
-/

namespace A256479.P15206251666312351921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A233275 (n + 1)).toNat - 1

end

end A256479.P15206251666312351921

/-! ## A256479.P18395567642241700780

`A070941(n+1)-(A256478(n+1)+1)`
-/

namespace A256479.P18395567642241700780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (n + 1) - (A256478 (n + 1) + 1)

end

end A256479.P18395567642241700780

/-! ## A256479.P14685715843514480948

`floor(log2(n+1))-A257248(n+1)`
-/

namespace A256479.P14685715843514480948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (n + 1) : ℤ) - A257248 (n + 1)

end

end A256479.P14685715843514480948

/-! ## A256479.P1197053822185735840

`A267109(A276346(n+1))`
-/

namespace A256479.P1197053822185735840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267109 (A276346 (n + 1)).toNat

end

end A256479.P1197053822185735840

/-! ## A256479.P2572115445845842759

`A267108(A276344(n+1))-1`
-/

namespace A256479.P2572115445845842759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267108 (A276344 (n + 1)).toNat - 1

end

end A256479.P2572115445845842759

/-! ## A256479.P6699403164207314096

`A257248(A233278(A233275(n+1)))`
-/

namespace A256479.P6699403164207314096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257248 (A233278 (A233275 (n + 1)).toNat).toNat

end

end A256479.P6699403164207314096

/-! ## A256479.P1259151881499555036

`A070939(n+1)-A000120(A233277(n+1))`
-/

namespace A256479.P1259151881499555036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A000120 (A233277 (n + 1)).toNat

end

end A256479.P1259151881499555036

/-! ## A256479.P9605378498378381962

`A001222(A286580(n+1)/2)`
-/

namespace A256479.P9605378498378381962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A286580 (n + 1) : ℚ) / 2)).toNat

end

end A256479.P9605378498378381962

/-! ## A256479.P18149145375802553372

`A252736(A286580(n+1))`
-/

namespace A256479.P18149145375802553372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A286580 (n + 1)).toNat

end

end A256479.P18149145375802553372

/-!
# A256482: a(n) = A254100(n) - A003309(n+1).

The programs for A256482, there is no canonical definition to state claims against.
-/

/-! ## A256482.P3357722933440999245

`2*A256483(n+1)`
-/

namespace A256482.P3357722933440999245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256483 (n + 1)

end

end A256482.P3357722933440999245

/-! ## A256482.P2486599443522228239

`A254100(n+1)-A003309(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256482.P2486599443522228239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254100 (n + 1) - A003309 (n + 2)

end

end A256482.P2486599443522228239

/-! ## A256482.P17579072015436189347

`A276607(n)+a(n-1)` with `a(0)=2`
-/

namespace A256482.P17579072015436189347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A276607 n + a (n - 1)

end

end A256482.P17579072015436189347

/-! ## A256482.P16883831607823027151

`a(n-1)+2*A276608(n)` with `a(0)=2`
-/

namespace A256482.P16883831607823027151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 * A276608 n

end

end A256482.P16883831607823027151

/-! ## A256482.P4306844206739964951

`A254100(n+1)-(A256486(n+2)+A000959(n+2))`
-/

namespace A256482.P4306844206739964951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254100 (n + 1) - (A256486 (n + 2) + A000959 (n + 2))

end

end A256482.P4306844206739964951

/-! ## A256482.P16576317154548013722

`A219178(n+1)+A256487(n+1)-A003309(n+2)`
-/

namespace A256482.P16576317154548013722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219178 (n + 1) + (A256487 (n + 1) - A003309 (n + 2))

end

end A256482.P16576317154548013722

/-! ## A256482.P683499794995822730

`A004277(A256483(n+1))`
-/

namespace A256482.P683499794995822730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A256483 (n + 1)).toNat

end

end A256482.P683499794995822730

/-! ## A256482.P9205472192869012132

`A257257(∑[n+1])`
-/

namespace A256482.P9205472192869012132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257257 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256482.P9205472192869012132

/-! ## A256482.P12433147887915226390

`2*A257258(∑[n+1])`
-/

namespace A256482.P12433147887915226390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257258 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256482.P12433147887915226390

/-! ## A256482.P15936710992720105152

`record[2*A257258(n+1)/A193592(n)]`
-/

namespace A256482.P15936710992720105152
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A257258 (n + 1) : ℚ) / (A193592 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256482.P15936710992720105152

/-! ## A256482.P7891027002485353859

`record[2*A257258(n+1)/(A002024(n+1)-A002262(n))]`
-/

namespace A256482.P7891027002485353859
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A257258 (n + 1) : ℚ) / (A002024 (n + 1) - A002262 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256482.P7891027002485353859

/-! ## A256482.P8800878142887634204

`A255407(A256483(n+1)+A256483(n+1))`
-/

namespace A256482.P8800878142887634204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A256483 (n + 1) + A256483 (n + 1)).toNat

end

end A256482.P8800878142887634204

/-!
# A256483: a(n) = A256482(n)/2 = (A254100(n) - A003309(n+1)) / 2.

The programs for A256483, there is no canonical definition to state claims against.
-/

/-! ## A256483.P3549065764148140989

`A256482(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256483.P3549065764148140989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256482 (n + 1) : ℚ) / 2

end

end A256483.P3549065764148140989

/-! ## A256483.P8339164168045872807

`(A254100(n+1)-A003309(n+2))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256483.P8339164168045872807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254100 (n + 1) - A003309 (n + 2) : ℚ) / 2

end

end A256483.P8339164168045872807

/-! ## A256483.P4125734253772422664

`A276608(n)+a(n-1)` with `a(0)=1`
-/

namespace A256483.P4125734253772422664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A276608 n + a (n - 1)

end

end A256483.P4125734253772422664

/-! ## A256483.P15750669155158125679

`∑[A276608(n+1)]+1-A276608(n+1)`
-/

namespace A256483.P15750669155158125679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A276608 (n + 1))

end

end A256483.P15750669155158125679

/-! ## A256483.P6755505779250482588

`A014682(A256482(n+1))`
-/

namespace A256483.P6755505779250482588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A256482 (n + 1)).toNat

end

end A256483.P6755505779250482588

/-! ## A256483.P8453453560014146974

`A257258(∑[n+1])`
-/

namespace A256483.P8453453560014146974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257258 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256483.P8453453560014146974

/-! ## A256483.P3437525526916780128

`A257257(∑[n+1])/2`
-/

namespace A256483.P3437525526916780128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257257 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A256483.P3437525526916780128

/-! ## A256483.P11345931774156454382

`record[A257258(A193592(n)+n)]`
-/

namespace A256483.P11345931774156454382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257258 (A193592 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256483.P11345931774156454382

/-! ## A256483.P5595423952155241826

`record[A257258(n+1)/(A002024(n+1)-A002262(n))]`
-/

namespace A256483.P5595423952155241826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257258 (n + 1) : ℚ) / (A002024 (n + 1) - A002262 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256483.P5595423952155241826

/-! ## A256483.P2366623782341926300

`A260739(A254100(n+1)-A003309(n+2))`
-/

namespace A256483.P2366623782341926300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A254100 (n + 1) - A003309 (n + 2)).toNat

end

end A256483.P2366623782341926300

/-! ## A256483.P11369874329392825548

`A001281(A256482(n+1)+2)-1`
-/

namespace A256483.P11369874329392825548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A256482 (n + 1) + 2).toNat - 1

end

end A256483.P11369874329392825548

/-! ## A256483.P9883154048405156936

`A004525(A256482(n+1)+2)-1`
-/

namespace A256483.P9883154048405156936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A256482 (n + 1) + 2).toNat - 1

end

end A256483.P9883154048405156936

/-! ## A256483.P6403330010658908898

`A078898(A254100(n+1)-A003309(n+2))`
-/

namespace A256483.P6403330010658908898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A254100 (n + 1) - A003309 (n + 2)).toNat

end

end A256483.P6403330010658908898

/-!
# A256484: Primes p for which there are at least as many primes in the range [p*nextprime(p), nextprime(p)^2] as in the range [p^2, p*nextprime(p)], where nextprime(p) gives the next prime after prime p.

The programs for A256484, the canonical program `A256484.P885802290259696111` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256484 has offset 1).

The definition of A256484 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256474, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256484.P885802290259696111

`A000040(A256474(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A256484

/-- `A000040(A256474(n+1))` -/
def P885802290259696111.Spec : Prop :=
  ∀ n, P885802290259696111.a n = A256484 (n + 1)

theorem P885802290259696111.correct : P885802290259696111.Spec := by
  intro n
  simp only [A256484, Nat.add_sub_cancel]

end A256484

/-! ## A256484.P16826239958873950950

`A008578(A256474(n+1)+1)`
-/

namespace A256484.P16826239958873950950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A256474 (n + 1) + 1).toNat

end

end A256484.P16826239958873950950

namespace A256484

/-- `A008578(A256474(n+1)+1)` -/
def P16826239958873950950.Spec : Prop :=
  ∀ n, P16826239958873950950.a n = A256484 (n + 1)

end A256484

/-! ## A256484.P15638747979698449492

`A182986(A256474(n+1)+1)`
-/

namespace A256484.P15638747979698449492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A256474 (n + 1) + 1).toNat

end

end A256484.P15638747979698449492

namespace A256484

/-- `A182986(A256474(n+1)+1)` -/
def P15638747979698449492.Spec : Prop :=
  ∀ n, P15638747979698449492.a n = A256484 (n + 1)

end A256484

/-! ## A256484.P2362760956736227789

`A049240(3*n+2)+A006093(A256474(n+1))`
-/

namespace A256484.P2362760956736227789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (3 * n + 2) + A006093 (A256474 (n + 1)).toNat

end

end A256484.P2362760956736227789

namespace A256484

/-- `A049240(3*n+2)+A006093(A256474(n+1))` -/
def P2362760956736227789.Spec : Prop :=
  ∀ n, P2362760956736227789.a n = A256484 (n + 1)

end A256484

/-! ## A256484.P6952568191701795696

`A207790(2*A256474(n+1))`
-/

namespace A256484.P6952568191701795696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A256474 (n + 1)).toNat

end

end A256484.P6952568191701795696

namespace A256484

/-- `A207790(2*A256474(n+1))` -/
def P6952568191701795696.Spec : Prop :=
  ∀ n, P6952568191701795696.a n = A256484 (n + 1)

end A256484

/-!
# A256485: Primes p for which there are more primes in range [p^2, p*nextprime(p)] than in range [p*nextprime(p), nextprime(p)^2], where nextprime(p) gives the next prime after prime p.

The programs for A256485, the canonical program `A256485.P4262027372849268944` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256485 has offset 1).

The definition of A256485 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256475, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256485.P4262027372849268944

`A000040(A256475(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A256485

/-- `A000040(A256475(n+1))` -/
def P4262027372849268944.Spec : Prop :=
  ∀ n, P4262027372849268944.a n = A256485 (n + 1)

theorem P4262027372849268944.correct : P4262027372849268944.Spec := by
  intro n
  simp only [A256485, Nat.add_sub_cancel]

end A256485

/-! ## A256485.P3924106332066838866

`A008578(A256475(n+1)+1)`
-/

namespace A256485.P3924106332066838866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A256475 (n + 1) + 1).toNat

end

end A256485.P3924106332066838866

namespace A256485

/-- `A008578(A256475(n+1)+1)` -/
def P3924106332066838866.Spec : Prop :=
  ∀ n, P3924106332066838866.a n = A256485 (n + 1)

end A256485

/-! ## A256485.P14043089230874239570

`A045344(A256475(n+1)-1)`
-/

namespace A256485.P14043089230874239570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A256475 (n + 1) - 1).toNat

end

end A256485.P14043089230874239570

namespace A256485

/-- `A045344(A256475(n+1)-1)` -/
def P14043089230874239570.Spec : Prop :=
  ∀ n, P14043089230874239570.a n = A256485 (n + 1)

end A256485

/-! ## A256485.P5613171395263870737

`A065091(A256475(n+1)-1)`
-/

namespace A256485.P5613171395263870737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A256475 (n + 1) - 1).toNat

end

end A256485.P5613171395263870737

namespace A256485

/-- `A065091(A256475(n+1)-1)` -/
def P5613171395263870737.Spec : Prop :=
  ∀ n, P5613171395263870737.a n = A256485 (n + 1)

end A256485

/-! ## A256485.P16313900632338838916

`A157996(A256475(n+1)-5)`
-/

namespace A256485.P16313900632338838916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (A256475 (n + 1) - 5).toNat

end

end A256485.P16313900632338838916

namespace A256485

/-- `A157996(A256475(n+1)-5)` -/
def P16313900632338838916.Spec : Prop :=
  ∀ n, P16313900632338838916.a n = A256485 (n + 1)

end A256485

/-! ## A256485.P10184077917340957438

`A073846(2*A256475(n+1))`
-/

namespace A256485.P10184077917340957438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A256475 (n + 1)).toNat

end

end A256485.P10184077917340957438

namespace A256485

/-- `A073846(2*A256475(n+1))` -/
def P10184077917340957438.Spec : Prop :=
  ∀ n, P10184077917340957438.a n = A256485 (n + 1)

end A256485

/-! ## A256485.P1949773575211546371

`A207790(2*A256475(n+1))`
-/

namespace A256485.P1949773575211546371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A256475 (n + 1)).toNat

end

end A256485.P1949773575211546371

namespace A256485

/-- `A207790(2*A256475(n+1))` -/
def P1949773575211546371.Spec : Prop :=
  ∀ n, P1949773575211546371.a n = A256485 (n + 1)

end A256485

/-!
# A256486: Difference between n-th Ludic and n-th Lucky number: a(n) = A003309(n) - A000959(n).

The programs for A256486, there is no canonical definition to state claims against.
-/

/-! ## A256486.P13864761520225504108

`A003309(n+1)-A000959(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256486.P13864761520225504108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1) - A000959 (n + 1)

end

end A256486.P13864761520225504108

/-! ## A256486.P12744502551079151806

`A237056(2*n+1)-A000959(n+1)`
-/

namespace A256486.P12744502551079151806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237056 (2 * n + 1) - A000959 (n + 1)

end

end A256486.P12744502551079151806

/-! ## A256486.P15975758901864943180

`lt[A302037(n+1)², 3]+1-A000959(n+1)`
-/

namespace A256486.P15975758901864943180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ) - A000959 (n + 1)

end

end A256486.P15975758901864943180

/-! ## A256486.P16243251665010784574

`A003309(n+1)-(A032600(n+1)+A000040(n+1))`
-/

namespace A256486.P16243251665010784574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1) - (A032600 (n + 1) + A000040 (n + 1))

end

end A256486.P16243251665010784574

/-! ## A256486.P17593796871629263069

`A008578(n+1)+A255324(n+1)-A000959(n+1)`
-/

namespace A256486.P17593796871629263069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (A255324 (n + 1) - A000959 (n + 1))

end

end A256486.P17593796871629263069

/-! ## A256486.P9794267438413647971

`A003309(n+1)-(A032600(n+1)+A008578(n+2))`
-/

namespace A256486.P9794267438413647971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1) - (A032600 (n + 1) + A008578 (n + 2))

end

end A256486.P9794267438413647971

/-! ## A256486.P18365743519989288191

`A003309(n+1)-A032599(n+1)/A032598(n+1)`
-/

namespace A256486.P18365743519989288191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003309 (n + 1) : ℚ) - (A032599 (n + 1) : ℚ) / (A032598 (n + 1) : ℚ)

end

end A256486.P18365743519989288191

/-! ## A256486.P6332818364003574757

`A255407(A008578(n+1))-A000959(n+1)`
-/

namespace A256486.P6332818364003574757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A008578 (n + 1)).toNat - A000959 (n + 1)

end

end A256486.P6332818364003574757

/-! ## A256486.P12670280750551529086

`A255407(record[A064989(n+1)])-A000959(n+1)`
-/

namespace A256486.P12670280750551529086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A000959 (n + 1)

end

end A256486.P12670280750551529086

/-! ## A256486.P11099870477649238108

`record[A255407(n+1)/A032742(n+1)]-A000959(n+1)`
-/

namespace A256486.P11099870477649238108
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255407 (n + 1) : ℚ) / (A032742 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A000959 (n + 1) : ℚ)

end

end A256486.P11099870477649238108

/-! ## A256486.P8380449382195753653

`lt[A260739(n+1)², 3]+1-A000959(n+1)`
-/

namespace A256486.P8380449382195753653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ) - A000959 (n + 1)

end

end A256486.P8380449382195753653

/-! ## A256486.P17558511893063076442

`record[A272565(n+1)]-A000959(n+1)`
-/

namespace A256486.P17558511893063076442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000959 (n + 1)

end

end A256486.P17558511893063076442

/-! ## A256486.P16429508962406720353

`record[A276440(n+1)]-A000959(n+1)`
-/

namespace A256486.P16429508962406720353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000959 (n + 1)

end

end A256486.P16429508962406720353

/-! ## A256486.P8824118866573334285

`record[(n+1)*A192490(n+1)]-A000959(n+1)`
-/

namespace A256486.P8824118866573334285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A192490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000959 (n + 1)

end

end A256486.P8824118866573334285

/-! ## A256486.P12384133807963741246

`A003309(n+1)+A257256(n+1)-A219178(n+1)`
-/

namespace A256486.P12384133807963741246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1) + (A257256 (n + 1) - A219178 (n + 1))

end

end A256486.P12384133807963741246

/-!
# A256487: a(n) = A254100(n) - A219178(n).

The programs for A256487, there is no canonical definition to state claims against.
-/

/-! ## A256487.P1025814036451298622

`A254100(n+1)-A219178(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256487.P1025814036451298622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254100 (n + 1) - A219178 (n + 1)

end

end A256487.P1025814036451298622

/-! ## A256487.P17831080902878830299

`2*A256488(n+1)`
-/

namespace A256487.P17831080902878830299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256488 (n + 1)

end

end A256487.P17831080902878830299

/-! ## A256487.P15355218437498332282

`A256488(C(n+1, n))+A256488(n+1)`
-/

namespace A256487.P15355218437498332282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256488 (Nat.choose (n + 1) n) + A256488 (n + 1)

end

end A256487.P15355218437498332282

/-! ## A256487.P1228169433424648560

`A256488(A000027(n+1))+A256488(n+1)`
-/

namespace A256487.P1228169433424648560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256488 (A000027 (n + 1)).toNat + A256488 (n + 1)

end

end A256487.P1228169433424648560

/-! ## A256487.P12226464446012653775

`A005843(A256488(n+1))`
-/

namespace A256487.P12226464446012653775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A256488 (n + 1)).toNat

end

end A256487.P12226464446012653775

/-! ## A256487.P13855797633553395792

`A256482(n+1)+A003309(n+2)-A219178(n+1)`
-/

namespace A256487.P13855797633553395792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256482 (n + 1) + (A003309 (n + 2) - A219178 (n + 1))

end

end A256487.P13855797633553395792

/-! ## A256487.P8046967214397010507

`A255129(C(n+2, 2)+3)-A219178(n+1)`
-/

namespace A256487.P8046967214397010507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255129 (Nat.choose (n + 2) 2 + 3) - A219178 (n + 1)

end

end A256487.P8046967214397010507

/-! ## A256487.P12300624812839852064

`A254100(n+1)-A255543(∑[n+1])`
-/

namespace A256487.P12300624812839852064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254100 (n + 1) - A255543 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256487.P12300624812839852064

/-! ## A256487.P4706560474068174260

`A254100(n+1)-A255545(∑[n+2])`
-/

namespace A256487.P4706560474068174260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254100 (n + 1) - A255545 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A256487.P4706560474068174260

/-!
# A256488: a(n) = A256487(n)/2 = (A254100(n) - A219178(n))/2.

The programs for A256488, there is no canonical definition to state claims against.
-/

/-! ## A256488.P9069022953397820421

`A256487(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256488.P9069022953397820421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256487 (n + 1) : ℚ) / 2

end

end A256488.P9069022953397820421

/-! ## A256488.P15518138577149731360

`(A254100(n+1)-A219178(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256488.P15518138577149731360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254100 (n + 1) - A219178 (n + 1) : ℚ) / 2

end

end A256488.P15518138577149731360

/-! ## A256488.P2851233135384429570

`A014682(A256487(n+1))`
-/

namespace A256488.P2851233135384429570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A256487 (n + 1)).toNat

end

end A256488.P2851233135384429570

/-! ## A256488.P4084075344643672612

`A249122(A256487(n+1)+1)`
-/

namespace A256488.P4084075344643672612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A256487 (n + 1) + 1).toNat

end

end A256488.P4084075344643672612

/-! ## A256488.P6273953942073645750

`A001281(A256487(n+1)+2)-1`
-/

namespace A256488.P6273953942073645750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A256487 (n + 1) + 2).toNat - 1

end

end A256488.P6273953942073645750

/-! ## A256488.P14639338248273891503

`A026741(A254100(n+1)-A219178(n+1))`
-/

namespace A256488.P14639338248273891503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A254100 (n + 1) - A219178 (n + 1)).toNat

end

end A256488.P14639338248273891503

/-! ## A256488.P13999422908358953978

`A078898(A254100(n+1)-A219178(n+1))`
-/

namespace A256488.P13999422908358953978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A254100 (n + 1) - A219178 (n + 1)).toNat

end

end A256488.P13999422908358953978

/-! ## A256488.P8516587776410271203

`A008611(A006368(A256487(n+1))+1)`
-/

namespace A256488.P8516587776410271203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A006368 (A256487 (n + 1)).toNat + 1).toNat

end

end A256488.P8516587776410271203

/-! ## A256488.P10750115045705145174

`A026741(A255129(C(n+2, 2)+3)-A219178(n+1))`
-/

namespace A256488.P10750115045705145174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A255129 (Nat.choose (n + 2) 2 + 3) - A219178 (n + 1)).toNat

end

end A256488.P10750115045705145174

/-! ## A256488.P12729800021595443113

`A008615(3*A256487(n+1))`
-/

namespace A256488.P12729800021595443113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A256487 (n + 1)).toNat

end

end A256488.P12729800021595443113

/-!
# A256489: First differences of A257509: a(n) = A257509(n+1) - A257509(n).

The programs for A256489, there is no canonical definition to state claims against.
-/

/-! ## A256489.P14781224639304782759

`A257509(n+2)-A257509(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256489.P14781224639304782759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257509 (n + 2) - A257509 (n + 1)

end

end A256489.P14781224639304782759

/-! ## A256489.P3587028658187835866

`Δ[A257509(n+1)]`
-/

namespace A256489.P3587028658187835866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256489.P3587028658187835866

/-! ## A256489.P12534164641563846683

`Δ[record[A257509(A141256(n))]]`
-/

namespace A256489.P12534164641563846683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257509 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256489.P12534164641563846683

/-! ## A256489.P15717482407858349992

`Δ[lt[1, A257265(n)]]`
-/

namespace A256489.P15717482407858349992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257265 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A256489.P15717482407858349992

/-! ## A256489.P18431661285136563902

`Δ[record[(n+1)*(A257265(n+1)-1)]]`
-/

namespace A256489.P18431661285136563902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A257265 (n + 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256489.P18431661285136563902

/-!
# A256490: First differences of A257512: a(n) = A257512(n+1) - A257512(n).

The programs for A256490, the canonical program `A256490.P2374671944261723846` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256490 has offset 1).

The definition of A256490 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257512, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A256490.P2374671944261723846

`A257512(n+2)-A257512(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A256490

/-- `A257512(n+2)-A257512(n+1)` -/
def P2374671944261723846.Spec : Prop :=
  ∀ n, P2374671944261723846.a n = A256490 (n + 1)

theorem P2374671944261723846.correct : P2374671944261723846.Spec := by
  intro n
  simp only [A256490, Nat.add_sub_cancel]

end A256490

/-! ## A256490.P10709013166911825758

`Δ[A257512(n+1)]`
-/

namespace A256490.P10709013166911825758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256490.P10709013166911825758

namespace A256490

/-- `Δ[A257512(n+1)]` -/
def P10709013166911825758.Spec : Prop :=
  ∀ n, P10709013166911825758.a n = A256490 (n + 1)

theorem P10709013166911825758.correct : P10709013166911825758.Spec := by
  intro n
  simp only [A256490, Nat.add_sub_cancel, A256490.P10709013166911825758.f1, A256490.P10709013166911825758.a, A256490.P2374671944261723846.a, SequenceMachineLib.memo_apply]

end A256490

/-! ## A256490.P8054825144406666854

`A257512(A289439(2*(n+2)))%A257512(n+1)`
-/

namespace A256490.P8054825144406666854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257512 (A289439 (2 * (n + 2))).toNat) (A257512 (n + 1))

end

end A256490.P8054825144406666854

namespace A256490

/-- `A257512(A289439(2*(n+2)))%A257512(n+1)` -/
def P8054825144406666854.Spec : Prop :=
  ∀ n, P8054825144406666854.a n = A256490 (n + 1)

end A256490

/-! ## A256490.P5724778673177420006

`Δ[A257507(A055938(2*(n+1)))]`
-/

namespace A256490.P5724778673177420006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257507 (A055938 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256490.P5724778673177420006

namespace A256490

/-- `Δ[A257507(A055938(2*(n+1)))]` -/
def P5724778673177420006.Spec : Prop :=
  ∀ n, P5724778673177420006.a n = A256490 (n + 1)

theorem P5724778673177420006.correct : P5724778673177420006.Spec := by
  intro n
  simp only [A256490, Nat.add_sub_cancel, A256490.P5724778673177420006.f1, A256490.P5724778673177420006.a, A256490.P2374671944261723846.a, A055938, A055938.P11436454756649086681.a, A257507, A257507.P15201907181584584602.a, A257512, A257512.P6741828352315066934.a, A011371, A011371.P8892659874704383252.a, A045412, A045412.P17699345519846233104.f1, A045412.P17699345519846233104.a, A079559, A079559.P6833565121082423031.a, A043545, A043545.P6199121594405564387.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A256490

/-! ## A256490.P3002015848565394207

`Δ[eq[2, A213725(n)]]`
-/

namespace A256490.P3002015848565394207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A256490.P3002015848565394207

namespace A256490

/-- `Δ[eq[2, A213725(n)]]` -/
def P3002015848565394207.Spec : Prop :=
  ∀ n, P3002015848565394207.a n = A256490 (n + 1)

end A256490

/-! ## A256490.P14660805056474197592

`Δ[eq[3, A213727(n)]]`
-/

namespace A256490.P14660805056474197592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A256490.P14660805056474197592

namespace A256490

/-- `Δ[eq[3, A213727(n)]]` -/
def P14660805056474197592.Spec : Prop :=
  ∀ n, P14660805056474197592.a n = A256490 (n + 1)

end A256490

/-! ## A256490.P16897175722060088448

`Δ[A005187(A136767(n+1))]`
-/

namespace A256490.P16897175722060088448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A136767 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256490.P16897175722060088448

namespace A256490

/-- `Δ[A005187(A136767(n+1))]` -/
def P16897175722060088448.Spec : Prop :=
  ∀ n, P16897175722060088448.a n = A256490 (n + 1)

end A256490

/-!
# A256491: a(n) = prime(prime(n) + n - 2).

The programs for A256491, the canonical program `A256491.P3996259377148393977` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256491 has offset 1).

The definition of A256491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256491.P3996259377148393977

`A084792(A006093(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A256491

/-- `A084792(A006093(n+1))` -/
def P3996259377148393977.Spec : Prop :=
  ∀ n, P3996259377148393977.a n = A256491 (n + 1)

theorem P3996259377148393977.correct : P3996259377148393977.Spec := by
  intro n
  simp only [A256491, Nat.add_sub_cancel]

end A256491

/-! ## A256491.P27606321455427588

`A084792(A000040(n+1)-1)`
-/

namespace A256491.P27606321455427588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084792 (A000040 (n + 1) - 1).toNat

end

end A256491.P27606321455427588

namespace A256491

/-- `A084792(A000040(n+1)-1)` -/
def P27606321455427588.Spec : Prop :=
  ∀ n, P27606321455427588.a n = A256491 (n + 1)

end A256491

/-! ## A256491.P18315142114715691027

`A008578(p?[abs(xor(n, -2))]+n)`
-/

namespace A256491.P18315142114715691027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ)).toNat

end

end A256491.P18315142114715691027

namespace A256491

/-- `A008578(p?[abs(xor(n, -2))]+n)` -/
def P18315142114715691027.Spec : Prop :=
  ∀ n, P18315142114715691027.a n = A256491 (n + 1)

end A256491

/-! ## A256491.P14939958721726269858

`A182986(p?[abs(xor(n, -2))]+n)`
-/

namespace A256491.P14939958721726269858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ)).toNat

end

end A256491.P14939958721726269858

namespace A256491

/-- `A182986(p?[abs(xor(n, -2))]+n)` -/
def P14939958721726269858.Spec : Prop :=
  ∀ n, P14939958721726269858.a n = A256491 (n + 1)

end A256491

/-! ## A256491.P8229694487537015734

`A008578(p?[xor(1, n)+1]+n)`
-/

namespace A256491.P8229694487537015734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + n)

end

end A256491.P8229694487537015734

namespace A256491

/-- `A008578(p?[xor(1, n)+1]+n)` -/
def P8229694487537015734.Spec : Prop :=
  ∀ n, P8229694487537015734.a n = A256491 (n + 1)

end A256491

/-! ## A256491.P7230466809120960862

`A182986(p?[xor(1, n)+1]+n)`
-/

namespace A256491.P7230466809120960862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + n)

end

end A256491.P7230466809120960862

namespace A256491

/-- `A182986(p?[xor(1, n)+1]+n)` -/
def P7230466809120960862.Spec : Prop :=
  ∀ n, P7230466809120960862.a n = A256491 (n + 1)

end A256491

/-! ## A256491.P12285956403680433591

`A008578(p?[n%3+n]+n)`
-/

namespace A256491.P12285956403680433591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + n)

end

end A256491.P12285956403680433591

namespace A256491

/-- `A008578(p?[n%3+n]+n)` -/
def P12285956403680433591.Spec : Prop :=
  ∀ n, P12285956403680433591.a n = A256491 (n + 1)

end A256491

/-! ## A256491.P17725912439195610675

`A008578(p?[round(sqrt(n)+n)]+n)`
-/

namespace A256491.P17725912439195610675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ)).toNat

end

end A256491.P17725912439195610675

namespace A256491

/-- `A008578(p?[round(sqrt(n)+n)]+n)` -/
def P17725912439195610675.Spec : Prop :=
  ∀ n, P17725912439195610675.a n = A256491 (n + 1)

end A256491

/-! ## A256491.P11296372660735813679

`A182986(p?[round(sqrt(n)+n)]+n)`
-/

namespace A256491.P11296372660735813679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ)).toNat

end

end A256491.P11296372660735813679

namespace A256491

/-- `A182986(p?[round(sqrt(n)+n)]+n)` -/
def P11296372660735813679.Spec : Prop :=
  ∀ n, P11296372660735813679.a n = A256491 (n + 1)

end A256491

/-! ## A256491.P1198845173932195132

`A000040(p?[abs(xor(n, -2))]-1+n)`
-/

namespace A256491.P1198845173932195132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 + (n : ℤ)).toNat

end

end A256491.P1198845173932195132

namespace A256491

/-- `A000040(p?[abs(xor(n, -2))]-1+n)` -/
def P1198845173932195132.Spec : Prop :=
  ∀ n, P1198845173932195132.a n = A256491 (n + 1)

end A256491

/-! ## A256491.P10776806712079978730

`A000040(n-(1-p?[abs(xor(n, -2))]))`
-/

namespace A256491.P10776806712079978730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n : ℤ) - (1 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A256491.P10776806712079978730

namespace A256491

/-- `A000040(n-(1-p?[abs(xor(n, -2))]))` -/
def P10776806712079978730.Spec : Prop :=
  ∀ n, P10776806712079978730.a n = A256491 (n + 1)

end A256491

/-! ## A256491.P957343197878622624

`A008578(A095116(n+1))`
-/

namespace A256491.P957343197878622624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A095116 (n + 1)).toNat

end

end A256491.P957343197878622624

namespace A256491

/-- `A008578(A095116(n+1))` -/
def P957343197878622624.Spec : Prop :=
  ∀ n, P957343197878622624.a n = A256491 (n + 1)

end A256491

/-! ## A256491.P13601836438264668392

`A008578(Δ[A007504(n)]+n)`
-/

namespace A256491.P13601836438264668392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A256491.P13601836438264668392

namespace A256491

/-- `A008578(Δ[A007504(n)]+n)` -/
def P13601836438264668392.Spec : Prop :=
  ∀ n, P13601836438264668392.a n = A256491 (n + 1)

end A256491

/-! ## A256491.P7278035140021292089

`A182986(Δ[A007504(n)]+n)`
-/

namespace A256491.P7278035140021292089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A256491.P7278035140021292089

namespace A256491

/-- `A182986(Δ[A007504(n)]+n)` -/
def P7278035140021292089.Spec : Prop :=
  ∀ n, P7278035140021292089.a n = A256491 (n + 1)

end A256491

/-! ## A256491.P16913274757517327831

`A000040(record[A037225(n)]+n)`
-/

namespace A256491.P16913274757517327831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)).toNat

end

end A256491.P16913274757517327831

namespace A256491

/-- `A000040(record[A037225(n)]+n)` -/
def P16913274757517327831.Spec : Prop :=
  ∀ n, P16913274757517327831.a n = A256491 (n + 1)

end A256491

/-! ## A256491.P9291075289320083620

`A008578(record[A162753(n)]+n)`
-/

namespace A256491.P9291075289320083620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)).toNat

end

end A256491.P9291075289320083620

namespace A256491

/-- `A008578(record[A162753(n)]+n)` -/
def P9291075289320083620.Spec : Prop :=
  ∀ n, P9291075289320083620.a n = A256491 (n + 1)

end A256491

/-! ## A256491.P9537024049877513008

`A008578(A014688(n+1)-1)`
-/

namespace A256491.P9537024049877513008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A014688 (n + 1) - 1).toNat

end

end A256491.P9537024049877513008

namespace A256491

/-- `A008578(A014688(n+1)-1)` -/
def P9537024049877513008.Spec : Prop :=
  ∀ n, P9537024049877513008.a n = A256491 (n + 1)

end A256491

/-! ## A256491.P1848591931710645259

`A000040(A095116(n+1)-1)`
-/

namespace A256491.P1848591931710645259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A095116 (n + 1) - 1).toNat

end

end A256491.P1848591931710645259

namespace A256491

/-- `A000040(A095116(n+1)-1)` -/
def P1848591931710645259.Spec : Prop :=
  ∀ n, P1848591931710645259.a n = A256491 (n + 1)

end A256491

/-! ## A256491.P4197380016072469064

`A000040(A014688(n+1)-2)`
-/

namespace A256491.P4197380016072469064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014688 (n + 1) - 2).toNat

end

end A256491.P4197380016072469064

namespace A256491

/-- `A000040(A014688(n+1)-2)` -/
def P4197380016072469064.Spec : Prop :=
  ∀ n, P4197380016072469064.a n = A256491 (n + 1)

end A256491

/-! ## A256491.P1482706914250632579

`A008578(A167136(n+2)-1)`
-/

namespace A256491.P1482706914250632579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A167136 (n + 2) - 1).toNat

end

end A256491.P1482706914250632579

namespace A256491

/-- `A008578(A167136(n+2)-1)` -/
def P1482706914250632579.Spec : Prop :=
  ∀ n, P1482706914250632579.a n = A256491 (n + 1)

end A256491

/-!
# A256493: Number of factorizations of m^3 into at most 3 factors, where m is a product of exactly n distinct primes.

The programs for A256493, the canonical program `A256493.P6429742674736187893` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256493 has offset 0).

The definition of A256493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256493.P6429742674736187893

`(10^n+3*2^n+2)/6`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256493

/-- `(10^n+3*2^n+2)/6` -/
def P6429742674736187893.Spec : Prop :=
  ∀ n, P6429742674736187893.a n = (A256493 n : ℚ)

end A256493

/-! ## A256493.P12564168642533285406

`∑[10*a(n-1)-2^n]` with `a(0)=1, a(1)=2`
-/

namespace A256493.P12564168642533285406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  10 * f1 (n - 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256493.P12564168642533285406

namespace A256493

/-- `∑[10*a(n-1)-2^n]` -/
def P12564168642533285406.Spec : Prop :=
  ∀ n, P12564168642533285406.a n = A256493 n

end A256493

/-! ## A256493.P5515922024051169834

`2*(5*a(n-1)-2^n)-3` with `a(0)=1`
-/

namespace A256493.P5515922024051169834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (5 * a (n - 1) - (2 ^ n : ℤ)) - 3

end

end A256493.P5515922024051169834

namespace A256493

/-- `2*(5*a(n-1)-2^n)-3` -/
def P5515922024051169834.Spec : Prop :=
  ∀ n, P5515922024051169834.a n = A256493 n

end A256493

/-! ## A256493.P9800716577962569348

`2^(n-1)+A093137(n)/2`
-/

namespace A256493.P9800716577962569348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (A093137 n : ℚ) / 2

end

end A256493.P9800716577962569348

namespace A256493

/-- `2^(n-1)+A093137(n)/2` -/
def P9800716577962569348.Spec : Prop :=
  ∀ n, P9800716577962569348.a n = (A256493 n : ℚ)

end A256493

/-! ## A256493.P6176041407854197931

`∑[A011782(n)*A294566(A004277(n))]`
-/

namespace A256493.P6176041407854197931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A294566 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256493.P6176041407854197931

namespace A256493

/-- `∑[A011782(n)*A294566(A004277(n))]` -/
def P6176041407854197931.Spec : Prop :=
  ∀ n, P6176041407854197931.a n = A256493 n

end A256493

/-!
# A256494: Expansion of -x^2*(x^3+x-1) / ((x-1)*(x+1)*(2*x-1)*(x^2+1)).

The programs for A256494, the canonical program `A256494.P2666755602686015882` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256494 has offset 1).

The definition of A256494 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^2-x^4)/(1-2x-x^4+2x^5))` (program `A256494.P2666755602686015882`, by `A256494.P2666755602686015882.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A256494.P2666755602686015882

`ogf((x-x^2-x^4)/(1-2x-x^4+2x^5))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256494

/-- `ogf((x-x^2-x^4)/(1-2x-x^4+2x^5))` -/
def P2666755602686015882.Spec : Prop :=
  ∀ n, P2666755602686015882.a n = A256494 (n + 1)

theorem P2666755602686015882.correct : P2666755602686015882.Spec := by
  intro n
  simp only [A256494, Nat.add_sub_cancel]

end A256494

/-! ## A256494.P8084410411323471806

`2*a(n-1)+a(n-4)-2*a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3`
-/

namespace A256494.P8084410411323471806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2, 3] fun n a =>
  2 * a (n - 1) + a (n - 4) - 2 * a (n - 5)

end

end A256494.P8084410411323471806

namespace A256494

/-- `2*a(n-1)+a(n-4)-2*a(n-5)` -/
def P8084410411323471806.Spec : Prop :=
  ∀ n, P8084410411323471806.a n = A256494 (n + 1)

end A256494

/-! ## A256494.P14049084945704766429

`2*a(n-1)-A008683(gcd(n+1, n-3))` with `a(0)=0`
-/

namespace A256494.P14049084945704766429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) - A008683 (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 3))

end

end A256494.P14049084945704766429

namespace A256494

/-- `2*a(n-1)-A008683(gcd(n+1, n-3))` -/
def P14049084945704766429.Spec : Prop :=
  ∀ n, P14049084945704766429.a n = A256494 (n + 1)

end A256494

/-! ## A256494.P3880092168557203696

`A118406(n)-A177704(n)`
-/

namespace A256494.P3880092168557203696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118406 n - A177704 n

end

end A256494.P3880092168557203696

namespace A256494

/-- `A118406(n)-A177704(n)` -/
def P3880092168557203696.Spec : Prop :=
  ∀ n, P3880092168557203696.a n = A256494 (n + 1)

end A256494

/-! ## A256494.P674430465846067592

`round((2^n+1)/5)`
-/

namespace A256494.P674430465846067592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n + 1 : ℚ) / 5)

end

end A256494.P674430465846067592

namespace A256494

/-- `round((2^n+1)/5)` -/
def P674430465846067592.Spec : Prop :=
  ∀ n, P674430465846067592.a n = A256494 (n + 1)

end A256494

/-! ## A256494.P14821208992694292232

`ceil(or(n, 2^n-2)/5)`
-/

namespace A256494.P14821208992694292232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor (n : ℤ) ((2 ^ n : ℤ) - 2) : ℚ) / 5⌉

end

end A256494.P14821208992694292232

namespace A256494

/-- `ceil(or(n, 2^n-2)/5)` -/
def P14821208992694292232.Spec : Prop :=
  ∀ n, P14821208992694292232.a n = A256494 (n + 1)

end A256494

/-! ## A256494.P5593503263492273075

`floor(A062709(n)/5)`
-/

namespace A256494.P5593503263492273075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062709 n : ℚ) / 5⌋

end

end A256494.P5593503263492273075

namespace A256494

/-- `floor(A062709(n)/5)` -/
def P5593503263492273075.Spec : Prop :=
  ∀ n, P5593503263492273075.a n = A256494 (n + 1)

end A256494

/-! ## A256494.P11512618818772602667

`ceil(A000225(n)/5)`
-/

namespace A256494.P11512618818772602667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000225 n : ℚ) / 5⌉

end

end A256494.P11512618818772602667

namespace A256494

/-- `ceil(A000225(n)/5)` -/
def P11512618818772602667.Spec : Prop :=
  ∀ n, P11512618818772602667.a n = A256494 (n + 1)

end A256494

/-! ## A256494.P11485881111826322990

`ceil(A135440(n)/5)`
-/

namespace A256494.P11485881111826322990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135440 n : ℚ) / 5⌉

end

end A256494.P11485881111826322990

namespace A256494

/-- `ceil(A135440(n)/5)` -/
def P11485881111826322990.Spec : Prop :=
  ∀ n, P11485881111826322990.a n = A256494 (n + 1)

end A256494

/-! ## A256494.P18277762222883004285

`ceil((A000079(n)-1)/5)`
-/

namespace A256494.P18277762222883004285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000079 n - 1 : ℚ) / 5⌉

end

end A256494.P18277762222883004285

namespace A256494

/-- `ceil((A000079(n)-1)/5)` -/
def P18277762222883004285.Spec : Prop :=
  ∀ n, P18277762222883004285.a n = A256494 (n + 1)

end A256494

/-! ## A256494.P12490689417235479548

`A173009(n+1)-A178452(n+1)`
-/

namespace A256494.P12490689417235479548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173009 (n + 1) - A178452 (n + 1)

end

end A256494.P12490689417235479548

namespace A256494

/-- `A173009(n+1)-A178452(n+1)` -/
def P12490689417235479548.Spec : Prop :=
  ∀ n, P12490689417235479548.a n = A256494 (n + 1)

end A256494

/-! ## A256494.P5344749418822495075

`ceil(A101622(n)/10)`
-/

namespace A256494.P5344749418822495075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A101622 n : ℚ) / 10⌉

end

end A256494.P5344749418822495075

namespace A256494

/-- `ceil(A101622(n)/10)` -/
def P5344749418822495075.Spec : Prop :=
  ∀ n, P5344749418822495075.a n = A256494 (n + 1)

end A256494

/-! ## A256494.P4280994610913163017

`A265381(n)-A084170(n)`
-/

namespace A256494.P4280994610913163017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265381 n - A084170 n

end

end A256494.P4280994610913163017

namespace A256494

/-- `A265381(n)-A084170(n)` -/
def P4280994610913163017.Spec : Prop :=
  ∀ n, P4280994610913163017.a n = A256494 (n + 1)

end A256494

/-! ## A256494.P5565628377614435356

`ceil(A066524(n)/(A008574(n)+n))`
-/

namespace A256494.P5565628377614435356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A066524 n : ℚ) / (A008574 n + (n : ℤ) : ℚ)⌉

end

end A256494.P5565628377614435356

namespace A256494

/-- `ceil(A066524(n)/(A008574(n)+n))` -/
def P5565628377614435356.Spec : Prop :=
  ∀ n, P5565628377614435356.a n = A256494 (n + 1)

end A256494

/-!
# A256495: Palindromes i such that 2*i^2 is a palindrome.

The programs for A256495, there is no canonical definition to state claims against.
-/

/-! ## A256495.P1810599164013428297

`∩[A002778(n+1), A136810(n+1)]`
-/

namespace A256495.P1810599164013428297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256495.P1810599164013428297

/-! ## A256495.P13870179451730966750

`∩[A057135(n+1), A136810(n+1)]`
-/

namespace A256495.P13870179451730966750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256495.P13870179451730966750

/-! ## A256495.P7053541744881429598

`∩[A128921(n+1), A136810(n+1)]`
-/

namespace A256495.P7053541744881429598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256495.P7053541744881429598

/-! ## A256495.P9163383294408485877

`∩[A169683(n), A263611(n+1)]`
-/

namespace A256495.P9163383294408485877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256495.P9163383294408485877

/-! ## A256495.P10444887350730610848

`∩[A263611(n+1), A265747(n)]`
-/

namespace A256495.P10444887350730610848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256495.P10444887350730610848

/-!
# A256496: a(n) = 15(n mod 2) + 10(n mod 3) + 6(n mod 5).

The programs for A256496, the canonical program `A256496.P5404460218324418571` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256496 has offset 1).

The definition of A256496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256496.P5404460218324418571

`15*(n+1)%2+10*(n+1)%3+6*(n+1)%5`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A256496

/-- `15*(n+1)%2+10*(n+1)%3+6*(n+1)%5` -/
def P5404460218324418571.Spec : Prop :=
  ∀ n, (P5404460218324418571.a n : ℤ) = A256496 (n + 1)

theorem P5404460218324418571.correct : P5404460218324418571.Spec := by
  intro n
  simp only [A256496, Nat.add_sub_cancel]

end A256496

/-!
# A256497: Triangle read by rows, sums of 2 distinct nonzero cubes: T(n,k) = (n+1)^3+k^3, 1 <= k <= n.

The programs for A256497, the canonical program `A256497.P9840506865510281733` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256497 has offset 1).

The definition of A256497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256497.P249854497651036322

`A256560(n+2)-A055096(n+2)`
-/

namespace A256497.P249854497651036322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256560 (n + 2) - A055096 (n + 2)

end

end A256497.P249854497651036322

namespace A256497

/-- `A256560(n+2)-A055096(n+2)` -/
def P249854497651036322.Spec : Prop :=
  ∀ n, P249854497651036322.a n = A256497 (n + 1)

theorem P249854497651036322.correct : P249854497651036322.Spec := by
  intro n
  simp only [A256497, Nat.add_sub_cancel, A256497.P249854497651036322.a, A256497.P9840506865510281733.a, A000578, A000578.P12162961755414704816.a, A003057, A003057.P16308936517940939054.a, A055096, A055096.P12036012889937996553.a, A133820, A133820.P16676047363186325377.a, A256560, A256560.P10189218502537202963.a, A001283, A001283.P9612674106324682864.a, A002260, A002260.P769748059679640451.a, A003991, A003991.P14084851459366035567.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A108872, A108872.P7491610889121363756.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A256497

/-! ## A256497.P9840506865510281733

`A133820(n+1)+A000578(A003057(n+2))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A256497

/-- `A133820(n+1)+A000578(A003057(n+2))` -/
def P9840506865510281733.Spec : Prop :=
  ∀ n, P9840506865510281733.a n = A256497 (n + 1)

theorem P9840506865510281733.correct : P9840506865510281733.Spec := by
  intro n
  simp only [A256497, Nat.add_sub_cancel]

end A256497

/-! ## A256497.P6653585467488330706

`A000578(A002260(n+1))+A000578(A003057(n+2))`
-/

namespace A256497.P6653585467488330706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A002260 (n + 1)).toNat + A000578 (A003057 (n + 2)).toNat

end

end A256497.P6653585467488330706

namespace A256497

/-- `A000578(A002260(n+1))+A000578(A003057(n+2))` -/
def P6653585467488330706.Spec : Prop :=
  ∀ n, P6653585467488330706.a n = A256497 (n + 1)

end A256497

/-! ## A256497.P12874586970234065486

`A256560(n+2)-A070216(A014132(n+1))`
-/

namespace A256497.P12874586970234065486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256560 (n + 2) - A070216 (A014132 (n + 1)).toNat

end

end A256497.P12874586970234065486

namespace A256497

/-- `A256560(n+2)-A070216(A014132(n+1))` -/
def P12874586970234065486.Spec : Prop :=
  ∀ n, P12874586970234065486.a n = A256497 (n + 1)

end A256497

/-! ## A256497.P7957100716267144701

`A105125(eq[2, A154325(n)])`
-/

namespace A256497.P7957100716267144701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256497.P7957100716267144701

namespace A256497

/-- `A105125(eq[2, A154325(n)])` -/
def P7957100716267144701.Spec : Prop :=
  ∀ n, P7957100716267144701.a n = A256497 (n + 1)

end A256497

/-! ## A256497.P10417560314614298510

`A133820(n+1)+A000093(A140978(n+1))`
-/

namespace A256497.P10417560314614298510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133820 (n + 1) + A000093 (A140978 (n + 1)).toNat

end

end A256497.P10417560314614298510

namespace A256497

/-- `A133820(n+1)+A000093(A140978(n+1))` -/
def P10417560314614298510.Spec : Prop :=
  ∀ n, P10417560314614298510.a n = A256497 (n + 1)

end A256497

/-! ## A256497.P9698306340151893837

`A133820(2*A140978(n+1))+A133820(n+1)`
-/

namespace A256497.P9698306340151893837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133820 (2 * A140978 (n + 1)).toNat + A133820 (n + 1)

end

end A256497.P9698306340151893837

namespace A256497

/-- `A133820(2*A140978(n+1))+A133820(n+1)` -/
def P9698306340151893837.Spec : Prop :=
  ∀ n, P9698306340151893837.a n = A256497 (n + 1)

end A256497

/-! ## A256497.P15757299295385889008

`A384816(A339116(n+2))`
-/

namespace A256497.P15757299295385889008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384816 (A339116 (n + 2)).toNat

end

end A256497.P15757299295385889008

namespace A256497

/-- `A384816(A339116(n+2))` -/
def P15757299295385889008.Spec : Prop :=
  ∀ n, P15757299295385889008.a n = A256497 (n + 1)

end A256497

/-! ## A256497.P3172189236664819302

`A371629(A018900(n+1))`
-/

namespace A256497.P3172189236664819302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371629 (A018900 (n + 1)).toNat

end

end A256497.P3172189236664819302

namespace A256497

/-- `A371629(A018900(n+1))` -/
def P3172189236664819302.Spec : Prop :=
  ∀ n, P3172189236664819302.a n = A256497 (n + 1)

end A256497

/-!
# A256499: Primes in the 9th-order Fibonacci numbers A127193.

The programs for A256499, there is no canonical definition to state claims against.
-/

/-! ## A256499.P10883064572056345219

`A127193(A256498(n+1))`
-/

namespace A256499.P10883064572056345219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127193 (A256498 (n + 1)).toNat

end

end A256499.P10883064572056345219

