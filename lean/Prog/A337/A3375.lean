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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

/-!
# A337500: a(n) is the number of ballot sequences of length n tied or won by at most 3 votes.

The programs for A337500, there is no canonical definition to state claims against.
-/

/-! ## A337500.P9105605994301251459

`record[A207974(round(n²/8))]`
-/

namespace A337500.P9105605994301251459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207974 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337500.P9105605994301251459

/-! ## A337500.P3927295532569351315

`Δ[A210977(n)]*A208355(n)`
-/

namespace A337500.P3927295532569351315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A208355 n

end

end A337500.P3927295532569351315

/-! ## A337500.P16995704704001494121

`2*A026010(n)-A337499(n)`
-/

namespace A337500.P16995704704001494121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026010 n - A337499 n

end

end A337500.P16995704704001494121

/-! ## A337500.P7876102052638065802

`record[A274292(lt[A065600(n+1), 2])]`
-/

namespace A337500.P7876102052638065802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274292 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337500.P7876102052638065802

/-! ## A337500.P283177155224508852

`Δ[A063886(n+2)-A100066(n)]`
-/

namespace A337500.P283177155224508852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (n + 2) - A100066 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337500.P283177155224508852

/-!
# A337501: Minimum number of painted cells in an n X n grid to avoid unpainted trominoes.

The programs for A337501, there is no canonical definition to state claims against.
-/

/-! ## A337501.P17387928262829535800

`floor((n+1)*∑[n%2+1]/3)`
-/

namespace A337501.P17387928262829535800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 3⌋

end

end A337501.P17387928262829535800

/-! ## A337501.P898601603147379447

`round((ϕ-∑[or(1-n, -2)])*n/3)`
-/

namespace A337501.P898601603147379447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - (n : ℤ)) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.goldenRatio - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)) * ((n : ℚ) / 3 : ℝ))

end

end A337501.P898601603147379447

/-! ## A337501.P10751436926886283340

`floor((n+1)*∑[3-a(n-1)]/3)` with `a(0)=1`
-/

namespace A337501.P10751436926886283340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3)⌋

end

end A337501.P10751436926886283340

/-! ## A337501.P1627158783971825216

`floor(∑[∑[9*n-2]+3]/(2*comp[3*n]))`
-/

namespace A337501.P1627158783971825216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (2 * SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℚ)⌋

end

end A337501.P1627158783971825216

/-! ## A337501.P5042104096188548280

`Δ[round(((n+4)^3+3*(n+4)²-9*(n+4)*(n+4)%2)/144)]+∑[∑{digits}[n, #]]`
-/

namespace A337501.P5042104096188548280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 4) ^ 3 + 3 * (n + 4) ^ 2 : ℤ) - ((9 * ((n + 4) * ((n + 4) % 2)) : ℕ) : ℤ) : ℚ) / 144)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A337501.P5042104096188548280

/-!
# A337502: Minimum number of painted cells in an n X n grid to avoid unpainted tetrominoes.

The programs for A337502, there is no canonical definition to state claims against.
-/

/-! ## A337502.P15599831675838142457

`char[5]+∑[n]-floor(n/4)`
-/

namespace A337502.P15599831675838142457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ⌊(n : ℚ) / 4⌋)

end

end A337502.P15599831675838142457

/-! ## A337502.P12550904634958128667

`or(∑[n]-floor(n/4), char[5])`
-/

namespace A337502.P12550904634958128667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(n : ℚ) / 4⌋) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A337502.P12550904634958128667

/-! ## A337502.P4898405682599656972

`xor(∑[n]-floor(n/4), char[5])`
-/

namespace A337502.P4898405682599656972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(n : ℚ) / 4⌋) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A337502.P4898405682599656972

/-! ## A337502.P9193082334856064875

`∑[ceil((∑{d}[n+1, #]-1+n)/3)]`
-/

namespace A337502.P9193082334856064875
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - 1 + (n : ℤ) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337502.P9193082334856064875

/-! ## A337502.P316285260582622380

`ogf((x+2x^2+3x^3+3x^4+6x^5+5x^6+7x^7+7x^8+9x^9)/(1-x))`
-/

namespace A337502.P316285260582622380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 3, 3, 6, 5, 7, 7, 9] [1, -1] n

end

end A337502.P316285260582622380

/-!
# A337503: Minimum number of painted cells in an n X n grid to avoid unpainted pentominoes.

The programs for A337503, there is no canonical definition to state claims against.
-/

/-! ## A337503.P696685994838329848

`A316141(A151040(n))`
-/

namespace A337503.P696685994838329848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316141 (A151040 n).toNat

end

end A337503.P696685994838329848

/-!
# A337504: Number of compositions of 2*n with n maximal anti-runs.

The programs for A337504, there is no canonical definition to state claims against.
-/

/-! ## A337504.P8162008348357619387

`A106356(A004277(n²))`
-/

namespace A337504.P8162008348357619387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (A004277 (n ^ 2)).toNat

end

end A337504.P8162008348357619387

/-! ## A337504.P16878893917549140371

`A106356(2*A253909(n))`
-/

namespace A337504.P16878893917549140371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (2 * A253909 n).toNat

end

end A337504.P16878893917549140371

/-! ## A337504.P12546720466121944059

`A106356(A028310(2*n²))`
-/

namespace A337504.P12546720466121944059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (A028310 (2 * n ^ 2)).toNat

end

end A337504.P12546720466121944059

/-! ## A337504.P17673233335043770939

`A106356(A253909(n)+n²)`
-/

namespace A337504.P17673233335043770939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (A253909 n + (n ^ 2 : ℤ)).toNat

end

end A337504.P17673233335043770939

/-! ## A337504.P13001326706988184397

`A106356(n²+A028310(n²))`
-/

namespace A337504.P13001326706988184397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 ((n ^ 2 : ℤ) + A028310 (n ^ 2)).toNat

end

end A337504.P13001326706988184397

/-! ## A337504.P2133218934237225061

`A106356(A060000(A058331(n)))`
-/

namespace A337504.P2133218934237225061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (A060000 (A058331 n).toNat).toNat

end

end A337504.P2133218934237225061

/-! ## A337504.P16899024790933969821

`A106356(A005843(A028310(n)^2))`
-/

namespace A337504.P16899024790933969821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (A005843 (A028310 n ^ 2).toNat).toNat

end

end A337504.P16899024790933969821

/-! ## A337504.P14948266288693971389

`A106356(A058331(n)-A057427(n))`
-/

namespace A337504.P14948266288693971389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (A058331 n - A057427 n).toNat

end

end A337504.P14948266288693971389

/-! ## A337504.P14514537595700061548

`A106356(A028310(2*n)*A028310(n))`
-/

namespace A337504.P14514537595700061548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (A028310 (2 * n) * A028310 n).toNat

end

end A337504.P14514537595700061548

/-! ## A337504.P15706080160842343157

`A106356((A004277(n)-n)*A004277(n))`
-/

namespace A337504.P15706080160842343157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 ((A004277 n - (n : ℤ)) * A004277 n).toNat

end

end A337504.P15706080160842343157

/-!
# A337505: Number of sequences of length 2*n covering an initial interval of positive integers and splitting into n maximal anti-runs.

The programs for A337505, there is no canonical definition to state claims against.
-/

/-! ## A337505.P10022634711297967091

`A005649(n)*A088218(n)`
-/

namespace A337505.P10022634711297967091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005649 n * A088218 n

end

end A337505.P10022634711297967091

/-! ## A337505.P18333801060977985223

`record[A337506(n)]*A088218(n)`
-/

namespace A337505.P18333801060977985223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A088218 n

end

end A337505.P18333801060977985223

/-! ## A337505.P7688658459970357484

`A088218(n)*A327868(2*n)`
-/

namespace A337505.P7688658459970357484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n * A327868 (2 * n)

end

end A337505.P7688658459970357484

/-! ## A337505.P8022379322124426997

`A337506(∑[4*n])`
-/

namespace A337505.P8022379322124426997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337506 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337505.P8022379322124426997

/-! ## A337505.P16100674926747189616

`record[A337506(n*A008619(n))]`
-/

namespace A337505.P16100674926747189616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337506 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337505.P16100674926747189616

/-!
# A337506: Triangle read by rows where T(n,k) is the number of length-n sequences covering an initial interval of positive integers with k maximal anti-runs.

The programs for A337506, there is no canonical definition to state claims against.
-/

/-! ## A337506.P9261739808759608971

`A005649(A025581(n))*A097805(n)`
-/

namespace A337506.P9261739808759608971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005649 (A025581 n).toNat * A097805 n

end

end A337506.P9261739808759608971

/-! ## A337506.P4430302159431684542

`A335461(A254667(A038722(n+1)))`
-/

namespace A337506.P4430302159431684542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335461 (A254667 (A038722 (n + 1)).toNat).toNat

end

end A337506.P4430302159431684542

/-! ## A337506.P6957810704420292085

`A335461(A061579(n)+A057427(n))`
-/

namespace A337506.P6957810704420292085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335461 (A061579 n + A057427 n).toNat

end

end A337506.P6957810704420292085

/-! ## A337506.P10019523033976382039

`A335461(A061579(n)-A057428(n))`
-/

namespace A337506.P10019523033976382039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335461 (A061579 n - A057428 n).toNat

end

end A337506.P10019523033976382039

/-! ## A337506.P6093668295608336825

`A335461(A061579(n)+A057428(n)²)`
-/

namespace A337506.P6093668295608336825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335461 (A061579 n + A057428 n ^ 2).toNat

end

end A337506.P6093668295608336825

/-! ## A337506.P18174964199095360051

`A335461(A057428(n)+A061579(n)+2)`
-/

namespace A337506.P18174964199095360051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335461 (A057428 n + (A061579 n + 2)).toNat

end

end A337506.P18174964199095360051

/-! ## A337506.P596851915900079087

`A335461(2-(A057427(n)-A061579(n)))`
-/

namespace A337506.P596851915900079087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335461 (2 - (A057427 n - A061579 n)).toNat

end

end A337506.P596851915900079087

/-! ## A337506.P8219483358606179416

`A335461(A038722(n+2)+1)`
-/

namespace A337506.P8219483358606179416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335461 (A038722 (n + 2) + 1).toNat

end

end A337506.P8219483358606179416

/-! ## A337506.P2302751116064721897

`A335461(A061579(n+1)+2)`
-/

namespace A337506.P2302751116064721897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335461 (A061579 (n + 1) + 2).toNat

end

end A337506.P2302751116064721897

/-!
# A337507: Number of length-n sequences covering an initial interval of positive integers with exactly two maximal anti-runs, or with one pair of adjacent equal parts.

The programs for A337507, there is no canonical definition to state claims against.
-/

/-! ## A337507.P5196537619275832936

`A337506(A133263(n))`
-/

namespace A337507.P5196537619275832936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337506 (A133263 n).toNat

end

end A337507.P5196537619275832936

/-! ## A337507.P11987041796586969302

`A337506(A238531(n+1))`
-/

namespace A337507.P11987041796586969302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337506 (A238531 (n + 1)).toNat

end

end A337507.P11987041796586969302

/-! ## A337507.P5133297530031168313

`A337506(A134869(n+1)-n)`
-/

namespace A337507.P5133297530031168313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337506 (A134869 (n + 1) - (n : ℤ)).toNat

end

end A337507.P5133297530031168313

/-! ## A337507.P1262963724867695032

`A335461(A038722(A133263(n)+1))`
-/

namespace A337507.P1262963724867695032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335461 (A038722 (A133263 n + 1).toNat).toNat

end

end A337507.P1262963724867695032

/-!
# A337508: Primes such that neither the left half nor the right half of the prime is prime.

The programs for A337508, there is no canonical definition to state claims against.
-/

/-! ## A337508.P9702821842169084710

`∩[A112082(n+1), A154386(n+1)]`
-/

namespace A337508.P9702821842169084710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337508.P9702821842169084710

/-!
# A337509: Number of partitions of n into two distinct parts (s,t), such that (t-s) | n, and where n/(t-s) <= s < t.

The programs for A337509, there is no canonical definition to state claims against.
-/

/-! ## A337509.P7702091722513189820

`round(log(cosh(∑{d}[n+1, (n-#)%2]+1)))`
-/

namespace A337509.P7702091722513189820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.cosh ((∑ d ∈ Nat.divisors (f1 n), Int.tmod ((n : ℤ) - (d : ℤ)) 2 + 1 : ℤ) : ℝ)))

end

end A337509.P7702091722513189820

/-! ## A337509.P17191085811306212292

`(∑{d}[n+1, (#+n)%2]-2)%(C(n, 2)+1)`
-/

namespace A337509.P17191085811306212292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ d ∈ Nat.divisors (f1 n), (d + n) % 2 : ℕ) : ℤ) - 2) (Nat.choose n 2 + 1 : ℤ)

end

end A337509.P17191085811306212292

/-! ## A337509.P13813135670088976

`A070824(gcd(n+1, ∑[n]))`
-/

namespace A337509.P13813135670088976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A337509.P13813135670088976

/-! ## A337509.P10779305682235017186

`A070824(lcm(2, n+1)/2)`
-/

namespace A337509.P10779305682235017186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat

end

end A337509.P10779305682235017186

/-! ## A337509.P8260510670499230920

`A070824((n+1)/(n%2+1))`
-/

namespace A337509.P8260510670499230920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n % 2 + 1 : ℕ) : ℚ))).toNat

end

end A337509.P8260510670499230920

/-! ## A337509.P18199002260007166741

`A131242(∑{d}[n+1, (#+n)%2]+7)`
-/

namespace A337509.P18199002260007166741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131242 (∑ d ∈ Nat.divisors (f1 n), (d + n) % 2 + 7)

end

end A337509.P18199002260007166741

/-! ## A337509.P2039587653470649455

`(A320111(n+1)-2)%round(1/acot(n))`
-/

namespace A337509.P2039587653470649455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320111 (n + 1) - 2) (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)))

end

end A337509.P2039587653470649455

/-! ## A337509.P15595940881007802379

`A070824(Δ[A001318(n)])`
-/

namespace A337509.P15595940881007802379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (f1 (n + 1) - f1 n).toNat

end

end A337509.P15595940881007802379

/-! ## A337509.P14432736717554115137

`A070824(A026741(n+1))`
-/

namespace A337509.P14432736717554115137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A026741 (n + 1)).toNat

end

end A337509.P14432736717554115137

/-! ## A337509.P16407129495600509685

`A070824(A252463(n+1))`
-/

namespace A337509.P16407129495600509685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A252463 (n + 1)).toNat

end

end A337509.P16407129495600509685

/-!
# A337510: a(n) = Sum_{k=0..n} T(n,k) where T(n,k) = (T(n-1, k-1) + T(n-1,k))^2.

The programs for A337510, there is no canonical definition to state claims against.
-/

/-! ## A337510.P1317661135660485951

`A327563(n+2)/2`
-/

namespace A337510.P1317661135660485951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327563 (n + 2) : ℚ) / 2

end

end A337510.P1317661135660485951

/-!
# A337511: A333663(n) is the a(n)-th term in A333663 with its leading digit.

The programs for A337511, there is no canonical definition to state claims against.
-/

/-! ## A337511.P5062809136618521918

`A053610(or(A035039(n), A220579(n+1)))`
-/

namespace A337511.P5062809136618521918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053610 (Int.lor (A035039 n) (A220579 (n + 1))).toNat

end

end A337511.P5062809136618521918

/-! ## A337511.P4613175752237133837

`A023416(A292554(n)+A029470(n+1))`
-/

namespace A337511.P4613175752237133837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A292554 n + A029470 (n + 1)).toNat

end

end A337511.P4613175752237133837

/-! ## A337511.P15943777634577886429

`A001222(A338720(n+1)+A038990(n))`
-/

namespace A337511.P15943777634577886429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A338720 (n + 1) + A038990 n).toNat

end

end A337511.P15943777634577886429

/-! ## A337511.P17079400140340551853

`A001222(xor(A296239(n), A297901(n+1)))`
-/

namespace A337511.P17079400140340551853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor (A296239 n) (A297901 (n + 1))).toNat

end

end A337511.P17079400140340551853

/-! ## A337511.P14808449709173795285

`A353849(2*(n+2))+A353849(A333149(n))`
-/

namespace A337511.P14808449709173795285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (2 * (n + 2)) + A353849 (A333149 n).toNat

end

end A337511.P14808449709173795285

/-!
# A337516: Number of distinct resistances that can be produced using n unit resistors in series, parallel, bridge or fork configurations.

The programs for A337516, there is no canonical definition to state claims against.
-/

/-! ## A337516.P16203937757873469801

`A051775(n)+A030530(A003480(n))`
-/

namespace A337516.P16203937757873469801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 n + A030530 (A003480 n).toNat

end

end A337516.P16203937757873469801

/-! ## A337516.P8344266892926929708

`or(A002265(n), A039708(A085281(n)))`
-/

namespace A337516.P8344266892926929708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002265 n) (A039708 (A085281 n).toNat)

end

end A337516.P8344266892926929708

/-! ## A337516.P9564160498730191604

`or(A008679(n), A039708(A085281(n)))`
-/

namespace A337516.P9564160498730191604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008679 n) (A039708 (A085281 n).toNat)

end

end A337516.P9564160498730191604

/-! ## A337516.P10050282334218398665

`or(A029347(n), A039708(A085281(n)))`
-/

namespace A337516.P10050282334218398665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029347 n) (A039708 (A085281 n).toNat)

end

end A337516.P10050282334218398665

/-!
# A337517: a(n) is the number of distinct resistances that can be produced from a circuit with exactly n unit resistors.

The programs for A337517, there is no canonical definition to state claims against.
-/

/-! ## A337517.P4311340925870746426

`A340920(n)+A164993(A309863(n))`
-/

namespace A337517.P4311340925870746426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340920 n + A164993 (A309863 n).toNat

end

end A337517.P4311340925870746426

/-! ## A337517.P124028507059906031

`A340920(gcd(11, C(9, n))+n-1)`
-/

namespace A337517.P124028507059906031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340920 (Nat.gcd 11 (Nat.choose 9 n) + n - 1)

end

end A337517.P124028507059906031

/-! ## A337517.P5489321432813785146

`A340920(A002998(n))`
-/

namespace A337517.P5489321432813785146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340920 (A002998 n).toNat

end

end A337517.P5489321432813785146

/-! ## A337517.P2821010220544445284

`A340920(A051022(n))`
-/

namespace A337517.P2821010220544445284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340920 (A051022 n).toNat

end

end A337517.P2821010220544445284

/-! ## A337517.P17542637084378624266

`A340920(A056142(n))`
-/

namespace A337517.P17542637084378624266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340920 (A056142 n).toNat

end

end A337517.P17542637084378624266

/-!
# A337518: Number of non-isomorphic graphs on n unlabeled nodes modulo 3.

The programs for A337518, there is no canonical definition to state claims against.
-/

/-! ## A337518.P15783797995546508267

`A000088(n)%3`
-/

namespace A337518.P15783797995546508267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000088 n) 3

end

end A337518.P15783797995546508267

/-! ## A337518.P6636535980477751077

`∑[A002494(n)]%3`
-/

namespace A337518.P6636535980477751077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A337518.P6636535980477751077

/-! ## A337518.P16974785526540725517

`A361404(∑[n])%3`
-/

namespace A337518.P16974785526540725517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361404 (∑ j ∈ Finset.range (n + 1), f1 j)) 3

end

end A337518.P16974785526540725517

/-! ## A337518.P10916115669976360818

`(A001349(n)+A000719(n))%3`
-/

namespace A337518.P10916115669976360818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001349 n + A000719 n) 3

end

end A337518.P10916115669976360818

/-! ## A337518.P10381421959218240986

`(A304311(∑[n])+A000719(n))%3`
-/

namespace A337518.P10381421959218240986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304311 (∑ j ∈ Finset.range (n + 1), f1 j) + A000719 n) 3

end

end A337518.P10381421959218240986

/-!
# A337519: Length of the shortest walk in an n X n grid graph that starts in one corner and visits every edge.

The programs for A337519, the canonical program `A337519.P10508685295227558400` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337519 has offset 2).

The definition of A337519 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337519.P10508685295227558400

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=4, a(1)=15, a(2)=28, a(3)=47`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A337519

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P10508685295227558400.Spec : Prop :=
  ∀ n, P10508685295227558400.a n = A337519 (n + 2)

theorem P10508685295227558400.correct : P10508685295227558400.Spec := by
  intro n
  simp only [A337519, Nat.add_sub_cancel]

end A337519

/-! ## A337519.P916907422933868236

`∑[record[xor(5, n+3)-2]]`
-/

namespace A337519.P916907422933868236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 5 (n + 3) : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337519.P916907422933868236

namespace A337519

/-- `∑[record[xor(5, n+3)-2]]` -/
def P916907422933868236.Spec : Prop :=
  ∀ n, P916907422933868236.a n = A337519 (n + 2)

end A337519

/-! ## A337519.P2516101195337617486

`∑[record[5-xor(5, 4-n)]]`
-/

namespace A337519.P2516101195337617486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - Int.xor 5 (4 - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337519.P2516101195337617486

namespace A337519

/-- `∑[record[5-xor(5, 4-n)]]` -/
def P2516101195337617486.Spec : Prop :=
  ∀ n, P2516101195337617486.a n = A337519 (n + 2)

end A337519

/-! ## A337519.P3213475757307107485

`∑[a(n-2)+8]` with `a(0)=4, a(1)=11, a(2)=13`
-/

namespace A337519.P3213475757307107485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 11, 13] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337519.P3213475757307107485

namespace A337519

/-- `∑[a(n-2)+8]` -/
def P3213475757307107485.Spec : Prop :=
  ∀ n, (P3213475757307107485.a n : ℤ) = A337519 (n + 2)

end A337519

/-! ## A337519.P16872265682724930717

`∑[∑[8-a(n-1)]]` with `a(0)=4, a(1)=7, a(2)=2`
-/

namespace A337519.P16872265682724930717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 7, 2] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337519.P16872265682724930717

namespace A337519

/-- `∑[∑[8-a(n-1)]]` -/
def P16872265682724930717.Spec : Prop :=
  ∀ n, P16872265682724930717.a n = A337519 (n + 2)

end A337519

/-! ## A337519.P697385767571363728

`a(n-2)+8*(n+1)` with `a(0)=4, a(1)=15`
-/

namespace A337519.P697385767571363728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 15] fun n a =>
  a (n - 2) + 8 * (n + 1)

end

end A337519.P697385767571363728

namespace A337519

/-- `a(n-2)+8*(n+1)` -/
def P697385767571363728.Spec : Prop :=
  ∀ n, (P697385767571363728.a n : ℤ) = A337519 (n + 2)

end A337519

/-! ## A337519.P10463192606136861713

`2*(n+1)*(n+3)-gcd(2, n)`
-/

namespace A337519.P10463192606136861713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((n + 1) * (n + 3)) : ℤ) - (Nat.gcd 2 n : ℤ)

end

end A337519.P10463192606136861713

namespace A337519

/-- `2*(n+1)*(n+3)-gcd(2, n)` -/
def P10463192606136861713.Spec : Prop :=
  ∀ n, P10463192606136861713.a n = A337519 (n + 2)

end A337519

/-! ## A337519.P8616856921134318240

`2*(n+2)²-3-char[2*n]`
-/

namespace A337519.P8616856921134318240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) ^ 2 : ℤ) - 3 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A337519.P8616856921134318240

namespace A337519

/-- `2*(n+2)²-3-char[2*n]` -/
def P8616856921134318240.Spec : Prop :=
  ∀ n, P8616856921134318240.a n = A337519 (n + 2)

end A337519

/-! ## A337519.P711502264772274091

`xor(A059841(n), A268581(n))`
-/

namespace A337519.P711502264772274091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059841 n) (A268581 n)

end

end A337519.P711502264772274091

namespace A337519

/-- `xor(A059841(n), A268581(n))` -/
def P711502264772274091.Spec : Prop :=
  ∀ n, P711502264772274091.a n = A337519 (n + 2)

end A337519

/-! ## A337519.P3026942201931318905

`∑[A087445(n+2)-A004275(n+1)]`
-/

namespace A337519.P3026942201931318905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (n + 2) - A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337519.P3026942201931318905

namespace A337519

/-- `∑[A087445(n+2)-A004275(n+1)]` -/
def P3026942201931318905.Spec : Prop :=
  ∀ n, P3026942201931318905.a n = A337519 (n + 2)

end A337519

/-! ## A337519.P5694787105490097604

`∑[or(A069859(2*(n+2)), A069908(2*n+3))]`
-/

namespace A337519.P5694787105490097604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069859 (2 * (n + 2))) (A069908 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337519.P5694787105490097604

namespace A337519

/-- `∑[or(A069859(2*(n+2)), A069908(2*n+3))]` -/
def P5694787105490097604.Spec : Prop :=
  ∀ n, P5694787105490097604.a n = A337519 (n + 2)

end A337519

/-! ## A337519.P14751749042986703372

`∑[lt[A313627(n), A313658(n)]]`
-/

namespace A337519.P14751749042986703372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313627 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313658 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337519.P14751749042986703372

namespace A337519

/-- `∑[lt[A313627(n), A313658(n)]]` -/
def P14751749042986703372.Spec : Prop :=
  ∀ n, (P14751749042986703372.a n : ℤ) = A337519 (n + 2)

end A337519

/-! ## A337519.P7221559986469790197

`A047535(A074148(n+1))`
-/

namespace A337519.P7221559986469790197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047535 (A074148 (n + 1)).toNat

end

end A337519.P7221559986469790197

namespace A337519

/-- `A047535(A074148(n+1))` -/
def P7221559986469790197.Spec : Prop :=
  ∀ n, P7221559986469790197.a n = A337519 (n + 2)

end A337519

/-!
# A337520: Number of set partitions of [4n] into 4-element subsets {i, i+k, i+2k, i+3k} with 1<=k<=n.

The programs for A337520, there is no canonical definition to state claims against.
-/

/-! ## A337520.P723183040390857667

`A204814(A003319(n))+A104442(n)`
-/

namespace A337520.P723183040390857667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204814 (A003319 n).toNat + A104442 n

end

end A337520.P723183040390857667

/-! ## A337520.P7799343770609531993

`A369165(A279572(n))+A203254(n)`
-/

namespace A337520.P7799343770609531993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369165 (A279572 n).toNat + A203254 n

end

end A337520.P7799343770609531993

/-! ## A337520.P12961392911179696966

`A143560(n)-A071842(A143561(n))`
-/

namespace A337520.P12961392911179696966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143560 n - A071842 (A143561 n).toNat

end

end A337520.P12961392911179696966

/-!
# A337521: a(n) = L(n)*a(n-1) + a(n-2) with a(0) = a(1) = 1 and L(n) the Lucas numbers A000032.

The programs for A337521, there is no canonical definition to state claims against.
-/

/-! ## A337521.P7722090093215218495

`a(n-2)+a(n-1)*A000032(n)` with `a(0)=1, a(1)=1`
-/

namespace A337521.P7722090093215218495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A000032 n

end

end A337521.P7722090093215218495

/-! ## A337521.P15464431488996955835

`A004526(A000660(n)+xor(1, n^(n+1))/(n+1))`
-/

namespace A337521.P15464431488996955835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A000660 n : ℚ) + (Nat.xor 1 (n ^ (n + 1)) : ℚ) / (n + 1 : ℚ))).toNat

end

end A337521.P15464431488996955835

/-!
# A337522: Number of permutations of length n that are sorted to the identity by a consecutive-312-avoiding-stack followed by a classical-21-avoiding stack.

The programs for A337522, there is no canonical definition to state claims against.
-/

/-! ## A337522.P17344607749884696025

`A046682(n)+A002265(A272687(n))`
-/

namespace A337522.P17344607749884696025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 n + A002265 (A272687 n).toNat

end

end A337522.P17344607749884696025

/-! ## A337522.P10896884566232126827

`A110655(A272687(n)+A000217(n))`
-/

namespace A337522.P10896884566232126827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A272687 n + A000217 n).toNat

end

end A337522.P10896884566232126827

/-! ## A337522.P7361119802445193206

`A279553(n)+A054908(A086905(n))`
-/

namespace A337522.P7361119802445193206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279553 n + A054908 (A086905 n).toNat

end

end A337522.P7361119802445193206

/-! ## A337522.P2359322777925036194

`A279553(n)+A035051(A165655(n))`
-/

namespace A337522.P2359322777925036194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279553 n + A035051 (A165655 n).toNat

end

end A337522.P2359322777925036194

/-!
# A337523: Numbers of the form ab such that uphi(ab) = a*b where ab is the concatenation of a and b.

The programs for A337523, there is no canonical definition to state claims against.
-/

/-! ## A337523.P16019469219938656410

`eq[A047994(A028310(n)), A257850(n)]`
-/

namespace A337523.P16019469219938656410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257850 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337523.P16019469219938656410

/-!
# A337524: a(n) = d(n) * (d(n) - 1), where d is the number of divisors of n (A000005).

The programs for A337524, the canonical program `A337524.P2006209600140358026` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337524 has offset 1).

The definition of A337524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337524.P2006209600140358026

`2*C(∏{e}[n+1, #+1], 2)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A337524

/-- `2*C(∏{e}[n+1, #+1], 2)` -/
def P2006209600140358026.Spec : Prop :=
  ∀ n, (P2006209600140358026.a n : ℤ) = A337524 (n + 1)

theorem P2006209600140358026.correct : P2006209600140358026.Spec := by
  intro n
  simp only [A337524, Nat.add_sub_cancel]

end A337524

/-! ## A337524.P16953501756709982054

`2*C(∑{d}[n+1, gcd(n, #)], 2)`
-/

namespace A337524.P16953501756709982054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d) 2

end

end A337524.P16953501756709982054

namespace A337524

/-- `2*C(∑{d}[n+1, gcd(n, #)], 2)` -/
def P16953501756709982054.Spec : Prop :=
  ∀ n, (P16953501756709982054.a n : ℤ) = A337524 (n + 1)

end A337524

/-! ## A337524.P4407810412577220556

`2*C(∑{d}[n+1, ceil(acot(#))], 2)`
-/

namespace A337524.P4407810412577220556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉).toNat 2

end

end A337524.P4407810412577220556

namespace A337524

/-- `2*C(∑{d}[n+1, ceil(acot(#))], 2)` -/
def P4407810412577220556.Spec : Prop :=
  ∀ n, (P4407810412577220556.a n : ℤ) = A337524 (n + 1)

end A337524

/-! ## A337524.P10295770025613130840

`floor((∑{d}[n+1, ceil(atan(#))]/2)²)`
-/

namespace A337524.P10295770025613130840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ d ∈ Nat.divisors (f1 n), ⌈Real.arctan (d : ℝ)⌉ : ℤ) : ℚ) / 2) ^ 2⌋

end

end A337524.P10295770025613130840

namespace A337524

/-- `floor((∑{d}[n+1, ceil(atan(#))]/2)²)` -/
def P10295770025613130840.Spec : Prop :=
  ∀ n, P10295770025613130840.a n = A337524 (n + 1)

end A337524

/-! ## A337524.P11367458066902524772

`round((∑{d}[n+1, ceil(atan(#))]/2)²)`
-/

namespace A337524.P11367458066902524772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ d ∈ Nat.divisors (f1 n), ⌈Real.arctan (d : ℝ)⌉ : ℤ) : ℚ) / 2) ^ 2)

end

end A337524.P11367458066902524772

namespace A337524

/-- `round((∑{d}[n+1, ceil(atan(#))]/2)²)` -/
def P11367458066902524772.Spec : Prop :=
  ∀ n, P11367458066902524772.a n = A337524 (n + 1)

end A337524

/-! ## A337524.P14779419194891698321

`2*A066446(n+1)`
-/

namespace A337524.P14779419194891698321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066446 (n + 1)

end

end A337524.P14779419194891698321

namespace A337524

/-- `2*A066446(n+1)` -/
def P14779419194891698321.Spec : Prop :=
  ∀ n, P14779419194891698321.a n = A337524 (n + 1)

end A337524

/-! ## A337524.P14483968120304054931

`2*C(Δ[A006218(n)], 2)`
-/

namespace A337524.P14483968120304054931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A337524.P14483968120304054931

namespace A337524

/-- `2*C(Δ[A006218(n)], 2)` -/
def P14483968120304054931.Spec : Prop :=
  ∀ n, (P14483968120304054931.a n : ℤ) = A337524 (n + 1)

end A337524

/-! ## A337524.P174827874375612697

`2*C(A000005(n+1), 2)`
-/

namespace A337524.P174827874375612697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A000005 (n + 1)).toNat 2

end

end A337524.P174827874375612697

namespace A337524

/-- `2*C(A000005(n+1), 2)` -/
def P174827874375612697.Spec : Prop :=
  ∀ n, (P174827874375612697.a n : ℤ) = A337524 (n + 1)

end A337524

/-! ## A337524.P1569137740732207836

`floor((A114003(n+1)/2)²)`
-/

namespace A337524.P1569137740732207836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A114003 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A337524.P1569137740732207836

namespace A337524

/-- `floor((A114003(n+1)/2)²)` -/
def P1569137740732207836.Spec : Prop :=
  ∀ n, P1569137740732207836.a n = A337524 (n + 1)

end A337524

/-! ## A337524.P7770620424355463876

`A002378(A032741(n+1))`
-/

namespace A337524.P7770620424355463876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A032741 (n + 1)).toNat

end

end A337524.P7770620424355463876

namespace A337524

/-- `A002378(A032741(n+1))` -/
def P7770620424355463876.Spec : Prop :=
  ∀ n, P7770620424355463876.a n = A337524 (n + 1)

end A337524

/-! ## A337524.P17619658919325814880

`A028391(A035116(n+1))`
-/

namespace A337524.P17619658919325814880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A035116 (n + 1)).toNat

end

end A337524.P17619658919325814880

namespace A337524

/-- `A028391(A035116(n+1))` -/
def P17619658919325814880.Spec : Prop :=
  ∀ n, P17619658919325814880.a n = A337524 (n + 1)

end A337524

/-! ## A337524.P3618813371579344874

`A005843(A066446(n+1))`
-/

namespace A337524.P3618813371579344874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A066446 (n + 1)).toNat

end

end A337524.P3618813371579344874

namespace A337524

/-- `A005843(A066446(n+1))` -/
def P3618813371579344874.Spec : Prop :=
  ∀ n, P3618813371579344874.a n = A337524 (n + 1)

end A337524

/-! ## A337524.P11857667943505471529

`A002620(A114003(n+1))`
-/

namespace A337524.P11857667943505471529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A114003 (n + 1)).toNat

end

end A337524.P11857667943505471529

namespace A337524

/-- `A002620(A114003(n+1))` -/
def P11857667943505471529.Spec : Prop :=
  ∀ n, P11857667943505471529.a n = A337524 (n + 1)

end A337524

/-! ## A337524.P11618622684622900110

`A110660(A086369(n+1))`
-/

namespace A337524.P11618622684622900110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 (A086369 (n + 1)).toNat

end

end A337524.P11618622684622900110

namespace A337524

/-- `A110660(A086369(n+1))` -/
def P11618622684622900110.Spec : Prop :=
  ∀ n, P11618622684622900110.a n = A337524 (n + 1)

end A337524

/-! ## A337524.P10747307890408875487

`A193422(A131089(n+1))`
-/

namespace A337524.P10747307890408875487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193422 (A131089 (n + 1)).toNat

end

end A337524.P10747307890408875487

namespace A337524

/-- `A193422(A131089(n+1))` -/
def P10747307890408875487.Spec : Prop :=
  ∀ n, P10747307890408875487.a n = A337524 (n + 1)

end A337524

/-! ## A337524.P1018440142616510476

`A296141(A145154(n+1))`
-/

namespace A337524.P1018440142616510476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296141 (A145154 (n + 1)).toNat

end

end A337524.P1018440142616510476

namespace A337524

/-- `A296141(A145154(n+1))` -/
def P1018440142616510476.Spec : Prop :=
  ∀ n, P1018440142616510476.a n = A337524 (n + 1)

end A337524

/-! ## A337524.P7242397828672302233

`A028391(A000005(n+1)²)`
-/

namespace A337524.P7242397828672302233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A000005 (n + 1) ^ 2).toNat

end

end A337524.P7242397828672302233

namespace A337524

/-- `A028391(A000005(n+1)²)` -/
def P7242397828672302233.Spec : Prop :=
  ∀ n, P7242397828672302233.a n = A337524 (n + 1)

end A337524

/-! ## A337524.P14403318649604735094

`A056847(A000005(n+1)²)`
-/

namespace A337524.P14403318649604735094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A000005 (n + 1) ^ 2).toNat

end

end A337524.P14403318649604735094

namespace A337524

/-- `A056847(A000005(n+1)²)` -/
def P14403318649604735094.Spec : Prop :=
  ∀ n, P14403318649604735094.a n = A337524 (n + 1)

end A337524

/-! ## A337524.P7706037018596504176

`A206224(A000005(n+1)²)`
-/

namespace A337524.P7706037018596504176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206224 (A000005 (n + 1) ^ 2).toNat

end

end A337524.P7706037018596504176

namespace A337524

/-- `A206224(A000005(n+1)²)` -/
def P7706037018596504176.Spec : Prop :=
  ∀ n, P7706037018596504176.a n = A337524 (n + 1)

end A337524

/-! ## A337524.P15680628190858384848

`A002378(A000005(n+1)-1)`
-/

namespace A337524.P15680628190858384848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A000005 (n + 1) - 1).toNat

end

end A337524.P15680628190858384848

namespace A337524

/-- `A002378(A000005(n+1)-1)` -/
def P15680628190858384848.Spec : Prop :=
  ∀ n, P15680628190858384848.a n = A337524 (n + 1)

end A337524

/-!
# A337525: a(n) = Sum_{d1|n, d2|n, d1

The programs for A337525, there is no canonical definition to state claims against.
-/

/-! ## A337525.P17676224151782149589

`A324912(A007956(n+1))%A002033(n)`
-/

namespace A337525.P17676224151782149589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324912 (A007956 (n + 1)).toNat) (A002033 n)

end

end A337525.P17676224151782149589

/-! ## A337525.P16305135621105251568

`A324912(A066729(n+1))%A002033(n)`
-/

namespace A337525.P16305135621105251568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324912 (A066729 (n + 1)).toNat) (A002033 n)

end

end A337525.P16305135621105251568

/-! ## A337525.P14870793843488758795

`A051903(A007956(n+1))*A318809(n+1)`
-/

namespace A337525.P14870793843488758795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A007956 (n + 1)).toNat * A318809 (n + 1)

end

end A337525.P14870793843488758795

/-! ## A337525.P14826643044860110236

`A001221(A151714(n))*A051903(A007956(n+1))`
-/

namespace A337525.P14826643044860110236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A151714 n).toNat * A051903 (A007956 (n + 1)).toNat

end

end A337525.P14826643044860110236

/-! ## A337525.P6711662514827044831

`A008619(A281456(n))*A051903(A007956(n+1))`
-/

namespace A337525.P6711662514827044831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A281456 n).toNat * A051903 (A007956 (n + 1)).toNat

end

end A337525.P6711662514827044831

/-!
# A337526: Number of length n permutations that are sorted to the identity by a consecutive-213-avoiding stack followed by a classical-21-avoiding stack.

The programs for A337526, there is no canonical definition to state claims against.
-/

/-! ## A337526.P7210775880431893346

`A306353(A150165(n))`
-/

namespace A337526.P7210775880431893346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306353 (A150165 n).toNat

end

end A337526.P7210775880431893346

/-! ## A337526.P4518029914850755694

`A149952(n)+Δ[A263822(n+1)]`
-/

namespace A337526.P4518029914850755694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149952 n + (f1 (n + 1) - f1 n)

end

end A337526.P4518029914850755694

/-! ## A337526.P17322133154952286402

`A367639(n)-A337531(A337500(n))`
-/

namespace A337526.P17322133154952286402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367639 n - A337531 (A337500 n).toNat

end

end A337526.P17322133154952286402

/-!
# A337529: Numbers that are the sum of two of their cubed divisors (not necessarily distinct).

The programs for A337529, there is no canonical definition to state claims against.
-/

/-! ## A337529.P4820716037940545404

`eq[A128545(A219347(n)), A280618(n)]`
-/

namespace A337529.P4820716037940545404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128545 (A219347 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337529.P4820716037940545404

/-! ## A337529.P12649282753037958403

`eq[A280618(n), A304328(A008574(n))]`
-/

namespace A337529.P12649282753037958403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304328 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337529.P12649282753037958403

/-!
# A337530: Number of ways that the divisors of 2n can be written as the sum of the squares of two other divisors of 2n (not necessarily distinct).

The programs for A337530, there is no canonical definition to state claims against.
-/

/-! ## A337530.P17105764022944226082

`A001221(A208445(n+4)+A002033(n))`
-/

namespace A337530.P17105764022944226082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A208445 (n + 4) + A002033 n).toNat

end

end A337530.P17105764022944226082

/-! ## A337530.P7699035384375385521

`A185102(lcm(A059885(n+1), A059888(n+1)))`
-/

namespace A337530.P7699035384375385521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185102 (Int.lcm (A059885 (n + 1)) (A059888 (n + 1)))

end

end A337530.P7699035384375385521

/-!
# A337531: Number of ways that the divisors of 2n can be written as unordered sums of two other prime divisors of 2n (not necessarily distinct).

The programs for A337531, there is no canonical definition to state claims against.
-/

/-! ## A337531.P10840340348544209569

`A322358((n+1)^A001221(n+1))+A001221(n+1)`
-/

namespace A337531.P10840340348544209569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322358 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A001221 (n + 1) : ℤ))).toNat + A001221 (n + 1)

end

end A337531.P10840340348544209569

/-! ## A337531.P6489318791940230131

`A316556(n+1)-A099104(A326707(n+1))`
-/

namespace A337531.P6489318791940230131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316556 (n + 1) - A099104 (A326707 (n + 1)).toNat

end

end A337531.P6489318791940230131

/-! ## A337531.P4556664208600643244

`A322358((n+1)^3)+A001221(n+1)`
-/

namespace A337531.P4556664208600643244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322358 ((n + 1) ^ 3) + A001221 (n + 1)

end

end A337531.P4556664208600643244

/-! ## A337531.P12557856481073808241

`A122840(A005709(n))+A001221(n+1)`
-/

namespace A337531.P12557856481073808241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A005709 n).toNat + A001221 (n + 1)

end

end A337531.P12557856481073808241

/-! ## A337531.P15001863803037904671

`A324088(A009223(n+1))+∑{p}[n+1, gcd(n, #)]`
-/

namespace A337531.P15001863803037904671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324088 (A009223 (n + 1)).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)

end

end A337531.P15001863803037904671

/-!
# A337532: a(n) = Sum_{d1|n, d2|n, d1<=d2} [(d1 mod 2) = (d2 mod 2)], where [ ] is the Iverson bracket.

The programs for A337532, the canonical program `A337532.P17091941672721247953` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337532 has offset 1).

The definition of A337532 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000265, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337532.P17091941672721247953

`A000217(A000005(A000265(n+1)))+A000217(A000005(A000265(n+1))*A007814(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A337532

/-- `A000217(A000005(A000265(n+1)))+A000217(A000005(A000265(n+1))*A007814(n+1))` -/
def P17091941672721247953.Spec : Prop :=
  ∀ n, P17091941672721247953.a n = A337532 (n + 1)

theorem P17091941672721247953.correct : P17091941672721247953.Spec := by
  intro n
  simp only [A337532, Nat.add_sub_cancel]

end A337532

/-! ## A337532.P2496507582063867673

`∑{d}[n+1, A046079(#)+1]`
-/

namespace A337532.P2496507582063867673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A046079 d + 1)

end

end A337532.P2496507582063867673

namespace A337532

/-- `∑{d}[n+1, A046079(#)+1]` -/
def P2496507582063867673.Spec : Prop :=
  ∀ n, P2496507582063867673.a n = A337532 (n + 1)

end A337532

/-! ## A337532.P8006131873180010849

`∑{d}[n+1, A176835(2*#)]`
-/

namespace A337532.P8006131873180010849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A176835 (2 * d)

end

end A337532.P8006131873180010849

namespace A337532

/-- `∑{d}[n+1, A176835(2*#)]` -/
def P8006131873180010849.Spec : Prop :=
  ∀ n, P8006131873180010849.a n = A337532 (n + 1)

end A337532

/-! ## A337532.P17330010935805027968

`A241534(n+1)+A000005(n+1)`
-/

namespace A337532.P17330010935805027968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241534 (n + 1) + A000005 (n + 1)

end

end A337532.P17330010935805027968

namespace A337532

/-- `A241534(n+1)+A000005(n+1)` -/
def P17330010935805027968.Spec : Prop :=
  ∀ n, P17330010935805027968.a n = A337532 (n + 1)

end A337532

/-! ## A337532.P17220784538258713016

`∑{d}[n+1, A068068(#)*A353236((n+1)/#)]`
-/

namespace A337532.P17220784538258713016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068068 d * A353236 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337532.P17220784538258713016

namespace A337532

/-- `∑{d}[n+1, A068068(#)*A353236((n+1)/#)]` -/
def P17220784538258713016.Spec : Prop :=
  ∀ n, P17220784538258713016.a n = A337532 (n + 1)

end A337532

/-! ## A337532.P2036615813611809847

`A006218(n+1)+A241534(n+1)-A006218(n)`
-/

namespace A337532.P2036615813611809847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) + (A241534 (n + 1) - A006218 n)

end

end A337532.P2036615813611809847

namespace A337532

/-- `A006218(n+1)+A241534(n+1)-A006218(n)` -/
def P2036615813611809847.Spec : Prop :=
  ∀ n, P2036615813611809847.a n = A337532 (n + 1)

end A337532

/-! ## A337532.P960867588157050238

`A054519(n+1)+A241534(n+1)-A054519(n)`
-/

namespace A337532.P960867588157050238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (n + 1) + (A241534 (n + 1) - A054519 n)

end

end A337532.P960867588157050238

namespace A337532

/-- `A054519(n+1)+A241534(n+1)-A054519(n)` -/
def P960867588157050238.Spec : Prop :=
  ∀ n, P960867588157050238.a n = A337532 (n + 1)

end A337532

/-! ## A337532.P10686639750790015563

`A000217(A001227(n+1))+A000217(A183063(n+1))`
-/

namespace A337532.P10686639750790015563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A001227 (n + 1)).toNat + A000217 (A183063 (n + 1)).toNat

end

end A337532.P10686639750790015563

namespace A337532

/-- `A000217(A001227(n+1))+A000217(A183063(n+1))` -/
def P10686639750790015563.Spec : Prop :=
  ∀ n, P10686639750790015563.a n = A337532 (n + 1)

end A337532

/-! ## A337532.P17972599850328330272

`∑{d}[n+1, A115878(2*#)+1]`
-/

namespace A337532.P17972599850328330272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A115878 (2 * d) + 1)

end

end A337532.P17972599850328330272

namespace A337532

/-- `∑{d}[n+1, A115878(2*#)+1]` -/
def P17972599850328330272.Spec : Prop :=
  ∀ n, P17972599850328330272.a n = A337532 (n + 1)

end A337532

/-! ## A337532.P14419715001874211163

`A000217(A299480(2*n+1))+A000217(A299480(2*(n+1)))`
-/

namespace A337532.P14419715001874211163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A299480 (2 * n + 1)).toNat + A000217 (A299480 (2 * (n + 1))).toNat

end

end A337532.P14419715001874211163

namespace A337532

/-- `A000217(A299480(2*n+1))+A000217(A299480(2*(n+1)))` -/
def P14419715001874211163.Spec : Prop :=
  ∀ n, P14419715001874211163.a n = A337532 (n + 1)

end A337532

/-! ## A337532.P7198580290519393629

`∑{d}[n+1, A100073(#²)+1]`
-/

namespace A337532.P7198580290519393629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A100073 (d ^ 2) + 1)

end

end A337532.P7198580290519393629

namespace A337532

/-- `∑{d}[n+1, A100073(#²)+1]` -/
def P7198580290519393629.Spec : Prop :=
  ∀ n, P7198580290519393629.a n = A337532 (n + 1)

end A337532

/-!
# A337533: 1 together with nonsquares whose square part's square root is in the sequence.

The programs for A337533, the canonical program `A337533.P10810606155643184911` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337533 has offset 1).

The definition of A337533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9490 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337533.P10810606155643184911

`filter[A164514(n+1), A380458(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A337533

/-- `filter[A164514(n+1), A380458(#)]` -/
def P10810606155643184911.Spec : Prop :=
  ∀ n, P10810606155643184911.a n = A337533 (n + 1)

theorem P10810606155643184911.correct : P10810606155643184911.Spec := by
  intro n
  simp only [A337533, Nat.add_sub_cancel]

end A337533

/-! ## A337533.P9254148871179450173

`filter[A213367(n+1), A380458(#)]`
-/

namespace A337533.P9254148871179450173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380458 (f1 j).toNat = 1) n)

end

end A337533.P9254148871179450173

namespace A337533

/-- `filter[A213367(n+1), A380458(#)]` -/
def P9254148871179450173.Spec : Prop :=
  ∀ n, P9254148871179450173.a n = A337533 (n + 1)

end A337533

/-! ## A337533.P8427357674477700851

`filter[n+1, A380458(#)]`
-/

namespace A337533.P8427357674477700851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380458 (f1 j) = 1) n)

end

end A337533.P8427357674477700851

namespace A337533

/-- `filter[n+1, A380458(#)]` -/
def P8427357674477700851.Spec : Prop :=
  ∀ n, (P8427357674477700851.a n : ℤ) = A337533 (n + 1)

end A337533

/-! ## A337533.P5402089987563002519

`eq[1, 2-A249151(A267116(n+1))]+1`
-/

namespace A337533.P5402089987563002519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A249151 (A267116 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337533.P5402089987563002519

namespace A337533

/-- `eq[1, 2-A249151(A267116(n+1))]+1` -/
def P5402089987563002519.Spec : Prop :=
  ∀ n, (P5402089987563002519.a n : ℤ) = A337533 (n + 1)

end A337533

/-! ## A337533.P7200300743355412088

`filter[A175084(n+1), A307430(#)]`
-/

namespace A337533.P7200300743355412088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A337533.P7200300743355412088

namespace A337533

/-- `filter[A175084(n+1), A307430(#)]` -/
def P7200300743355412088.Spec : Prop :=
  ∀ n, P7200300743355412088.a n = A337533 (n + 1)

end A337533

/-! ## A337533.P3535517959036172723

`∩[A046100(n+1), A175084(n+1)]`
-/

namespace A337533.P3535517959036172723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337533.P3535517959036172723

namespace A337533

/-- `∩[A046100(n+1), A175084(n+1)]` -/
def P3535517959036172723.Spec : Prop :=
  ∀ n, (P3535517959036172723.a n : ℤ) = A337533 (n + 1)

end A337533

/-! ## A337533.P15736723196595776179

`∩[A023809(n+1), A175084(n+1)]`
-/

namespace A337533.P15736723196595776179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337533.P15736723196595776179

namespace A337533

/-- `∩[A023809(n+1), A175084(n+1)]` -/
def P15736723196595776179.Spec : Prop :=
  ∀ n, (P15736723196595776179.a n : ℤ) = A337533 (n + 1)

end A337533

/-! ## A337533.P1577592860839698419

`∩[A115063(n+1), A175084(n+1)]`
-/

namespace A337533.P1577592860839698419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337533.P1577592860839698419

namespace A337533

/-- `∩[A115063(n+1), A175084(n+1)]` -/
def P1577592860839698419.Spec : Prop :=
  ∀ n, (P1577592860839698419.a n : ℤ) = A337533 (n + 1)

end A337533

/-!
# A337534: Nontrivial squares together with nonsquares whose square part's square root is in the sequence.

The programs for A337534, there is no canonical definition to state claims against.
-/

/-! ## A337534.P15853959377372644655

`eq[1, A005087(A267116(n+1)+1)]+1`
-/

namespace A337534.P15853959377372644655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A267116 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337534.P15853959377372644655

/-! ## A337534.P5811297663698542002

`lt[A000035(A104725(n)), A056926(n)]`
-/

namespace A337534.P5811297663698542002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A104725 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337534.P5811297663698542002

/-! ## A337534.P15786252182186935310

`lt[A118664(n+1), A118658(A007814(n+1))]+1`
-/

namespace A337534.P15786252182186935310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (A007814 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A337534.P15786252182186935310

/-! ## A337534.P1297715671770518898

`lt[A130753(n+1), A007400((A000188(n+1)²+1)²+1)]+1`
-/

namespace A337534.P1297715671770518898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007400 ((A000188 (n + 1) ^ 2 + 1) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A337534.P1297715671770518898

/-! ## A337534.P13328969053125904141

`∩[A039200(n+1), A104020(n+1)]`
-/

namespace A337534.P13328969053125904141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337534.P13328969053125904141

/-!
# A337536: Numbers k for which there are only 2 bases b (2 and k+1) where the digits of k contain the digit b-1.

The programs for A337536, there is no canonical definition to state claims against.
-/

/-! ## A337536.P10882254877648622109

`eq[2, A337496(n)]`
-/

namespace A337536.P10882254877648622109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337496 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337536.P10882254877648622109

/-! ## A337536.P17915420128713808285

`record[A337535(n+2)-1]`
-/

namespace A337536.P17915420128713808285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337535 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337536.P17915420128713808285

/-! ## A337536.P7687135553819212466

`eq[2, A338295(A028310(n))]`
-/

namespace A337536.P7687135553819212466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338295 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337536.P7687135553819212466

/-! ## A337536.P12452413115691180737

`record[A233583(A337535(n+1))]`
-/

namespace A337536.P12452413115691180737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A337535 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337536.P12452413115691180737

/-!
# A337537: Period of orbit of Post's tag system ({0,1},{(0,0101100),(1,11000111100000)},10,(1+0^9)^n).

The programs for A337537, there is no canonical definition to state claims against.
-/

/-! ## A337537.P10629262629353562529

`7*A040484(A303284(n))`
-/

namespace A337537.P10629262629353562529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A040484 (A303284 n).toNat

end

end A337537.P10629262629353562529

/-! ## A337537.P2454419283353419174

`A245092(7^A355567(n))`
-/

namespace A337537.P2454419283353419174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A355567 n : ℤ))).toNat

end

end A337537.P2454419283353419174

/-! ## A337537.P13175938982527268041

`A137995(A046640(n+1)²)`
-/

namespace A337537.P13175938982527268041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137995 (A046640 (n + 1) ^ 2).toNat

end

end A337537.P13175938982527268041

/-! ## A337537.P13045887428617840626

`A336494(4^A045763(n+1))`
-/

namespace A337537.P13045887428617840626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336494 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A045763 (n + 1) : ℤ))).toNat

end

end A337537.P13045887428617840626

/-! ## A337537.P11243230583848532000

`A152993(20^A046640(n+1))`
-/

namespace A337537.P11243230583848532000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152993 (SequenceMachineLib.roundAway ((20 : ℚ) ^ (A046640 (n + 1) : ℤ))).toNat

end

end A337537.P11243230583848532000

/-!
# A337538: a(n) is the least k such that A003961(k*A071395(n)) is abundant.

The programs for A337538, there is no canonical definition to state claims against.
-/

/-! ## A337538.P888468663815063713

`A337469(n+1)/A071395(n+1)`
-/

namespace A337538.P888468663815063713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337469 (n + 1) : ℚ) / (A071395 (n + 1) : ℚ)

end

end A337538.P888468663815063713

/-! ## A337538.P9693068617235816939

`A337469(n+1)/∩[A006039(n+1), A091191(n+1)]`
-/

namespace A337538.P9693068617235816939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337469 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ)

end

end A337538.P9693068617235816939

/-! ## A337538.P13401436302331326444

`A337469(n+1)/∩[A006039(n+1), A181487(n+1)]`
-/

namespace A337538.P13401436302331326444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181487 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337469 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ)

end

end A337538.P13401436302331326444

/-! ## A337538.P15204610650733468659

`A337469(n+1)/∩[A006039(n+1), A198471(n+1)]`
-/

namespace A337538.P15204610650733468659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198471 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337469 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ)

end

end A337538.P15204610650733468659

/-!
# A337539: Number of primitive non-deficient numbers (A006039) dividing A337479(n).

The programs for A337539, there is no canonical definition to state claims against.
-/

/-! ## A337539.P10127256470342290372

`A337690(A337479(n+1))`
-/

namespace A337539.P10127256470342290372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (A337479 (n + 1)).toNat

end

end A337539.P10127256470342290372

/-! ## A337539.P2687104859054267969

`∑{d}[A337479(n+1), A341619(#)]`
-/

namespace A337539.P2687104859054267969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A341619 d

end

end A337539.P2687104859054267969

/-! ## A337539.P1063740310044199454

`A337690(∩[A265712(n+1), A342669(n+1)])`
-/

namespace A337539.P1063740310044199454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342669 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A337539.P1063740310044199454

/-! ## A337539.P9898728844031303740

`A337690(∩[A337386(n+1), A342669(n+1)])`
-/

namespace A337539.P9898728844031303740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342669 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A337539.P9898728844031303740

/-! ## A337539.P392645030855411802

`A053238(xor(A139250(n), A286744(3*n)))`
-/

namespace A337539.P392645030855411802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053238 (Int.xor (A139250 n) (A286744 (3 * n))).toNat

end

end A337539.P392645030855411802

/-!
# A337541: Number of divisors d of n for which sigma(A003961(d)) >= 2*sigma(d), where sigma is the sum of divisors, and A003961(x) shifts the prime factorization of x one step towards larger primes.

The programs for A337541, there is no canonical definition to state claims against.
-/

/-! ## A337541.P10965314176975218884

`A337542(n+1)+A337383(n+1)`
-/

namespace A337541.P10965314176975218884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337542 (n + 1) + A337383 (n + 1)

end

end A337541.P10965314176975218884

/-! ## A337541.P17837297553838608846

`∑{d}[n+1, A337383(#)]`
-/

namespace A337541.P17837297553838608846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A337383 d

end

end A337541.P17837297553838608846

/-! ## A337541.P1129711161726283449

`A318735(A373679(n+1))%A001055(n+1)`
-/

namespace A337541.P1129711161726283449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318735 (A373679 (n + 1)).toNat) (A001055 (n + 1))

end

end A337541.P1129711161726283449

/-! ## A337541.P16306311698753012495

`A334100(A245092(3*n+2))%A318559(n+1)`
-/

namespace A337541.P16306311698753012495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334100 (A245092 (3 * n + 2)).toNat) (A318559 (n + 1))

end

end A337541.P16306311698753012495

/-! ## A337541.P9291416789181803800

`A319652(A000045(n))%A343652(n+1)`
-/

namespace A337541.P9291416789181803800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319652 (A000045 n).toNat) (A343652 (n + 1))

end

end A337541.P9291416789181803800

/-!
# A337542: Number of proper divisors d of n for which sigma(A003961(d)) >= 2*sigma(d), where sigma is the sum of divisors, and A003961(x) shifts the prime factorization of x one step towards larger primes.

The programs for A337542, there is no canonical definition to state claims against.
-/

/-! ## A337542.P1150657566159342425

`A337541(n+1)-A337383(n+1)`
-/

namespace A337542.P1150657566159342425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337541 (n + 1) - A337383 (n + 1)

end

end A337542.P1150657566159342425

/-! ## A337542.P11097313100243974798

`A028310(A337541(n+1))-1`
-/

namespace A337542.P11097313100243974798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A337541 (n + 1)).toNat - 1

end

end A337542.P11097313100243974798

/-! ## A337542.P15903020820741918920

`A140106(2*A337541(n+1)+1)`
-/

namespace A337542.P15903020820741918920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A337541 (n + 1) + 1).toNat

end

end A337542.P15903020820741918920

/-! ## A337542.P15141336621326637394

`A233583(A337541(n+1)+2)-2`
-/

namespace A337542.P15141336621326637394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A337541 (n + 1) + 2).toNat - 2

end

end A337542.P15141336621326637394

/-! ## A337542.P7482272811079552309

`floor(A014681(2*A337541(n+1))/2)`
-/

namespace A337542.P7482272811079552309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014681 (2 * A337541 (n + 1)).toNat : ℚ) / 2⌋

end

end A337542.P7482272811079552309

/-! ## A337542.P2049055171739489090

`∑{d}[n+1, A157658(#)*A337541((n+1)/#)]`
-/

namespace A337542.P2049055171739489090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A337541 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337542.P2049055171739489090

/-! ## A337542.P7151449410477632987

`A140106(A337541(n+1)+A337541(n+1)+1)`
-/

namespace A337542.P7151449410477632987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A337541 (n + 1) + (A337541 (n + 1) + 1)).toNat

end

end A337542.P7151449410477632987

/-! ## A337542.P12607800196584744658

`A337541(n+1)-ceil(A337541(n+1)/A252463(n+1))`
-/

namespace A337542.P12607800196584744658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337541 (n + 1) - ⌈(A337541 (n + 1) : ℚ) / (A252463 (n + 1) : ℚ)⌉

end

end A337542.P12607800196584744658

/-! ## A337542.P84772514106646487

`A337541(n+1)-ceil(A337541(n+1)/A000032(n))`
-/

namespace A337542.P84772514106646487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337541 (n + 1) - ⌈(A337541 (n + 1) : ℚ) / (A000032 n : ℚ)⌉

end

end A337542.P84772514106646487

/-! ## A337542.P16274558090199021277

`A337541(3^A337541(n+1))`
-/

namespace A337542.P16274558090199021277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337541 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A337541 (n + 1) : ℤ))).toNat

end

end A337542.P16274558090199021277

/-!
# A337543: Primitive terms of A337381: Numbers that are in A337381, but that have no proper divisor in A337381.

The programs for A337543, there is no canonical definition to state claims against.
-/

/-! ## A337543.P374101230968943180

`eq[1, A337541(n+1)]+1`
-/

namespace A337543.P374101230968943180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337543.P374101230968943180

/-! ## A337543.P4607095421443373084

`record[A337381(n+1)/A337541(A337381(n+1))]`
-/

namespace A337543.P4607095421443373084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337381 (n + 1) : ℚ) / (A337541 (A337381 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337543.P4607095421443373084

/-! ## A337543.P9954548736299993985

`eq[1, A337541(A028310(n))]`
-/

namespace A337543.P9954548736299993985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337541 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337543.P9954548736299993985

/-! ## A337543.P6541703158898816679

`A020725(eq[1, A337541(n+1)])`
-/

namespace A337543.P6541703158898816679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A337543.P6541703158898816679

/-! ## A337543.P8669705439144739767

`A061767(eq[1, A337541(n+1)])`
-/

namespace A337543.P8669705439144739767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A337543.P8669705439144739767

/-! ## A337543.P7240242857691481435

`eq[1, A337541(A008619(A004273(n)))]`
-/

namespace A337543.P7240242857691481435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337541 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337543.P7240242857691481435

/-! ## A337543.P2154788004801966553

`eq[1, A337541(A233583(n+1))]`
-/

namespace A337543.P2154788004801966553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337541 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337543.P2154788004801966553

/-!
# A337544: a(n) = 2*phi(A003961(n)) - A003961(n).

The programs for A337544, the canonical program `A337544.P5163931662960534329` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337544 has offset 1).

The definition of A337544 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A003972, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337544.P5163931662960534329

`2*A003972(n+1)-A003961(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A337544

/-- `2*A003972(n+1)-A003961(n+1)` -/
def P5163931662960534329.Spec : Prop :=
  ∀ n, P5163931662960534329.a n = A337544 (n + 1)

theorem P5163931662960534329.correct : P5163931662960534329.Spec := by
  intro n
  simp only [A337544, Nat.add_sub_cancel]

end A337544

/-! ## A337544.P6125347915326249836

`A083254(A003961(n+1))`
-/

namespace A337544.P6125347915326249836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (A003961 (n + 1)).toNat

end

end A337544.P6125347915326249836

namespace A337544

/-- `A083254(A003961(n+1))` -/
def P6125347915326249836.Spec : Prop :=
  ∀ n, P6125347915326249836.a n = A337544 (n + 1)

end A337544

/-! ## A337544.P996450738651851775

`2*A337549(n+1)-A252748(n+1)`
-/

namespace A337544.P996450738651851775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A337549 (n + 1) - A252748 (n + 1)

end

end A337544.P996450738651851775

namespace A337544

/-- `2*A337549(n+1)-A252748(n+1)` -/
def P996450738651851775.Spec : Prop :=
  ∀ n, P996450738651851775.a n = A337544 (n + 1)

end A337544

/-! ## A337544.P13869524113651263648

`∑{d}[n+1, A003972(#)*A153881((n+1)/#)]`
-/

namespace A337544.P13869524113651263648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 d * A153881 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337544.P13869524113651263648

namespace A337544

/-- `∑{d}[n+1, A003972(#)*A153881((n+1)/#)]` -/
def P13869524113651263648.Spec : Prop :=
  ∀ n, P13869524113651263648.a n = A337544 (n + 1)

end A337544

/-! ## A337544.P5979812795268240707

`∑{d}[n+1, A008683(#)*A344587((n+1)/#)]`
-/

namespace A337544.P5979812795268240707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A344587 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337544.P5979812795268240707

namespace A337544

/-- `∑{d}[n+1, A008683(#)*A344587((n+1)/#)]` -/
def P5979812795268240707.Spec : Prop :=
  ∀ n, P5979812795268240707.a n = A337544 (n + 1)

end A337544

/-! ## A337544.P15697213737553632756

`∑{d}[n+1, A003961(#)*A378225((n+1)/#)]`
-/

namespace A337544.P15697213737553632756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003961 d * A378225 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337544.P15697213737553632756

namespace A337544

/-- `∑{d}[n+1, A003961(#)*A378225((n+1)/#)]` -/
def P15697213737553632756.Spec : Prop :=
  ∀ n, P15697213737553632756.a n = A337544 (n + 1)

end A337544

/-! ## A337544.P6879888279594574467

`∑{d}[n+1, A003973(#)*A378219((n+1)/#)]`
-/

namespace A337544.P6879888279594574467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003973 d * A378219 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337544.P6879888279594574467

namespace A337544

/-- `∑{d}[n+1, A003973(#)*A378219((n+1)/#)]` -/
def P6879888279594574467.Spec : Prop :=
  ∀ n, P6879888279594574467.a n = A337544 (n + 1)

end A337544

/-! ## A337544.P14515439836823422194

`∑{d}[n+1, A033879(#)*A378606((n+1)/#)]`
-/

namespace A337544.P14515439836823422194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033879 d * A378606 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337544.P14515439836823422194

namespace A337544

/-- `∑{d}[n+1, A033879(#)*A378606((n+1)/#)]` -/
def P14515439836823422194.Spec : Prop :=
  ∀ n, P14515439836823422194.a n = A337544 (n + 1)

end A337544

/-! ## A337544.P6535831380085321976

`∑{d}[n+1, A083254(#)*A349387((n+1)/#)]`
-/

namespace A337544.P6535831380085321976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A083254 d * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337544.P6535831380085321976

namespace A337544

/-- `∑{d}[n+1, A083254(#)*A349387((n+1)/#)]` -/
def P6535831380085321976.Spec : Prop :=
  ∀ n, P6535831380085321976.a n = A337544 (n + 1)

end A337544

/-! ## A337544.P18281941756702073618

`∑{d}[n+1, A347136(#)*A378211((n+1)/#)]`
-/

namespace A337544.P18281941756702073618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347136 d * A378211 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337544.P18281941756702073618

namespace A337544

/-- `∑{d}[n+1, A347136(#)*A378211((n+1)/#)]` -/
def P18281941756702073618.Spec : Prop :=
  ∀ n, P18281941756702073618.a n = A337544 (n + 1)

end A337544

/-! ## A337544.P5487212356373318625

`∑{d}[n+1, A347137(#)*A378217((n+1)/#)]`
-/

namespace A337544.P5487212356373318625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347137 d * A378217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337544.P5487212356373318625

namespace A337544

/-- `∑{d}[n+1, A347137(#)*A378217((n+1)/#)]` -/
def P5487212356373318625.Spec : Prop :=
  ∀ n, P5487212356373318625.a n = A337544 (n + 1)

end A337544

/-! ## A337544.P17927647802745520381

`A003972(n+1)+A337549(n+1)-A336853(n+1)`
-/

namespace A337544.P17927647802745520381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (n + 1) + (A337549 (n + 1) - A336853 (n + 1))

end

end A337544.P17927647802745520381

namespace A337544

/-- `A003972(n+1)+A337549(n+1)-A336853(n+1)` -/
def P17927647802745520381.Spec : Prop :=
  ∀ n, P17927647802745520381.a n = A337544 (n + 1)

end A337544

/-! ## A337544.P15266527602693638296

`A378987(A048673(n+1))`
-/

namespace A337544.P15266527602693638296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378987 (A048673 (n + 1)).toNat

end

end A337544.P15266527602693638296

namespace A337544

/-- `A378987(A048673(n+1))` -/
def P15266527602693638296.Spec : Prop :=
  ∀ n, P15266527602693638296.a n = A337544 (n + 1)

end A337544

/-! ## A337544.P1202283929941709844

`A378987(A108228(n+1)+1)`
-/

namespace A337544.P1202283929941709844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378987 (A108228 (n + 1) + 1).toNat

end

end A337544.P1202283929941709844

namespace A337544

/-- `A378987(A108228(n+1)+1)` -/
def P1202283929941709844.Spec : Prop :=
  ∀ n, P1202283929941709844.a n = A337544 (n + 1)

end A337544

/-! ## A337544.P14148437863627136963

`A000010(4*A003961(n+1))-A003961(n+1)`
-/

namespace A337544.P14148437863627136963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (4 * A003961 (n + 1)).toNat - A003961 (n + 1)

end

end A337544.P14148437863627136963

namespace A337544

/-- `A000010(4*A003961(n+1))-A003961(n+1)` -/
def P14148437863627136963.Spec : Prop :=
  ∀ n, P14148437863627136963.a n = A337544 (n + 1)

end A337544

/-! ## A337544.P3097303394807689026

`A004277(A003972(n+1))-(A253885(n)+1)`
-/

namespace A337544.P3097303394807689026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A003972 (n + 1)).toNat - (A253885 n + 1)

end

end A337544.P3097303394807689026

namespace A337544

/-- `A004277(A003972(n+1))-(A253885(n)+1)` -/
def P3097303394807689026.Spec : Prop :=
  ∀ n, P3097303394807689026.a n = A337544 (n + 1)

end A337544

/-! ## A337544.P18182449182270227938

`A004277(A003972(n+1))+1-A243501(n+1)`
-/

namespace A337544.P18182449182270227938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A003972 (n + 1)).toNat + (1 - A243501 (n + 1))

end

end A337544.P18182449182270227938

namespace A337544

/-- `A004277(A003972(n+1))+1-A243501(n+1)` -/
def P18182449182270227938.Spec : Prop :=
  ∀ n, P18182449182270227938.a n = A337544 (n + 1)

end A337544

/-! ## A337544.P13532620164160983597

`A004277(A003972(n+1))-(2*A048673(n+1)-1)`
-/

namespace A337544.P13532620164160983597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A003972 (n + 1)).toNat - (2 * A048673 (n + 1) - 1)

end

end A337544.P13532620164160983597

namespace A337544

/-- `A004277(A003972(n+1))-(2*A048673(n+1)-1)` -/
def P13532620164160983597.Spec : Prop :=
  ∀ n, P13532620164160983597.a n = A337544 (n + 1)

end A337544

/-! ## A337544.P9400331170971714283

`A004277(A003972(n+1))-A191002(n+1)/(n+1)`
-/

namespace A337544.P9400331170971714283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A003972 (n + 1)).toNat : ℚ) - (A191002 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A337544.P9400331170971714283

namespace A337544

/-- `A004277(A003972(n+1))-A191002(n+1)/(n+1)` -/
def P9400331170971714283.Spec : Prop :=
  ∀ n, P9400331170971714283.a n = (A337544 (n + 1) : ℚ)

end A337544

/-! ## A337544.P617993780385188134

`A004277(A003972(n+1))-A280702(n+1)*A280703(n+1)`
-/

namespace A337544.P617993780385188134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A003972 (n + 1)).toNat - A280702 (n + 1) * A280703 (n + 1)

end

end A337544.P617993780385188134

namespace A337544

/-- `A004277(A003972(n+1))-A280702(n+1)*A280703(n+1)` -/
def P617993780385188134.Spec : Prop :=
  ∀ n, P617993780385188134.a n = A337544 (n + 1)

end A337544

/-!
# A337546: A binary sequence defined as follows: a(1)=0; thereafter choose a(n) so as to minimize the number of final consecutive repeated words, and if there is a choice, minimize the length of the repeated word.

The programs for A337546, there is no canonical definition to state claims against.
-/

/-! ## A337546.P4592562566485695155

`(1-Δ[A339975(n)])/2`
-/

namespace A337546.P4592562566485695155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A337546.P4592562566485695155

/-! ## A337546.P2251010853506538718

`A201637(Δ[A339975(n)]+1)`
-/

namespace A337546.P2251010853506538718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 (f1 (n + 1) - f1 n + 1).toNat

end

end A337546.P2251010853506538718

/-! ## A337546.P11671079824993419010

`A030190(1-Δ[A339975(n)])`
-/

namespace A337546.P11671079824993419010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A337546.P11671079824993419010

/-! ## A337546.P4728961461911987855

`A030190(Δ[A339975(n)]+2)`
-/

namespace A337546.P4728961461911987855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (f1 (n + 1) - f1 n + 2).toNat

end

end A337546.P4728961461911987855

/-! ## A337546.P14020430684602239422

`A102122(1-Δ[A339975(n)])`
-/

namespace A337546.P14020430684602239422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102122 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A337546.P14020430684602239422

/-! ## A337546.P5793071473846109636

`A123594(Δ[A339975(n)]+2)`
-/

namespace A337546.P5793071473846109636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (f1 (n + 1) - f1 n + 2).toNat

end

end A337546.P5793071473846109636

/-! ## A337546.P11597951234482576477

`A130472(1-Δ[A339975(n)])`
-/

namespace A337546.P11597951234482576477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A337546.P11597951234482576477

/-! ## A337546.P4323551253525382467

`A143587(Δ[A339975(n)]+2)`
-/

namespace A337546.P4323551253525382467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143587 (f1 (n + 1) - f1 n + 2).toNat

end

end A337546.P4323551253525382467

/-! ## A337546.P13787869398801242621

`A277193(1-Δ[A339975(n)])`
-/

namespace A337546.P13787869398801242621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A337546.P13787869398801242621

/-! ## A337546.P8618357953857189804

`A288733(Δ[A339975(n)]+2)`
-/

namespace A337546.P8618357953857189804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288733 (f1 (n + 1) - f1 n + 2).toNat

end

end A337546.P8618357953857189804

/-! ## A337546.P4505476158424141845

`A096008(2-Δ[A339975(n)])`
-/

namespace A337546.P4505476158424141845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096008 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A337546.P4505476158424141845

/-! ## A337546.P7115337339057202820

`A001057(1-Δ[A339975(n)])²`
-/

namespace A337546.P7115337339057202820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (1 - (f1 (n + 1) - f1 n)).toNat ^ 2

end

end A337546.P7115337339057202820

/-! ## A337546.P10847757286384795697

`A001057(Δ[A339975(n)]+3)+2`
-/

namespace A337546.P10847757286384795697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f1 (n + 1) - f1 n + 3).toNat + 2

end

end A337546.P10847757286384795697

/-! ## A337546.P15753779491244398489

`2-A097794(3-Δ[A339975(n)])`
-/

namespace A337546.P15753779491244398489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A097794 (3 - (f1 (n + 1) - f1 n)).toNat

end

end A337546.P15753779491244398489

/-! ## A337546.P8007585139581073640

`A004304(Δ[A339975(n)]+1)%2`
-/

namespace A337546.P8007585139581073640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004304 (f1 (n + 1) - f1 n + 1).toNat) 2

end

end A337546.P8007585139581073640

/-! ## A337546.P13444086249479816814

`A059268(Δ[A339975(n)]+1)%2`
-/

namespace A337546.P13444086249479816814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059268 (f1 (n + 1) - f1 n + 1).toNat) 2

end

end A337546.P13444086249479816814

/-! ## A337546.P14855496256870457992

`A000010(Δ[A339975(n)]+2)%2`
-/

namespace A337546.P14855496256870457992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (f1 (n + 1) - f1 n + 2).toNat) 2

end

end A337546.P14855496256870457992

/-! ## A337546.P9111187936396878765

`∑{d}[Δ[A339975(n)]-1, A317839(#)]`
-/

namespace A337546.P9111187936396878765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A317839 d

end

end A337546.P9111187936396878765

/-! ## A337546.P15571661666709275661

`char[lt[A339975(n+1), A339975(n)]]`
-/

namespace A337546.P15571661666709275661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A337546.P15571661666709275661

/-! ## A337546.P10635887119371839732

`A006257(A339975(n)+1-A339975(n+1))`
-/

namespace A337546.P10635887119371839732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A339975 n + (1 - A339975 (n + 1))).toNat

end

end A337546.P10635887119371839732

/-!
# A337547: Number of compositions (ordered partitions) of n into distinct parts congruent to 1 mod 3.

The programs for A337547, there is no canonical definition to state claims against.
-/

/-! ## A337547.P4608401252246647988

`A369055(A239228(n+1)+A086224(n))`
-/

namespace A337547.P4608401252246647988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369055 (A239228 (n + 1) + A086224 n).toNat

end

end A337547.P4608401252246647988

/-! ## A337547.P6603479840450145832

`A316723(eq[A004013(n), A058343(n)])`
-/

namespace A337547.P6603479840450145832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A337547.P6603479840450145832

/-! ## A337547.P16001181311628765174

`A325466(A347448(n)+A345164(n+1))`
-/

namespace A337547.P16001181311628765174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325466 (A347448 n + A345164 (n + 1)).toNat

end

end A337547.P16001181311628765174

/-!
# A337548: Number of compositions (ordered partitions) of n into distinct parts congruent to 2 mod 3.

The programs for A337548, there is no canonical definition to state claims against.
-/

/-! ## A337548.P577905723008631844

`A339060(A048103(n+1)%A108054(2*n+1))`
-/

namespace A337548.P577905723008631844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339060 (Int.tmod (A048103 (n + 1)) (A108054 (2 * n + 1))).toNat

end

end A337548.P577905723008631844

/-! ## A337548.P15769379356182034637

`A029374(∑[3*n]%A253723(2*(n+1)))`
-/

namespace A337548.P15769379356182034637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029374 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A253723 (2 * (n + 1)))).toNat

end

end A337548.P15769379356182034637

/-! ## A337548.P13015134638835023126

`A088904(A216817(A064895(n)+n))`
-/

namespace A337548.P13015134638835023126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088904 (A216817 (A064895 n + (n : ℤ)).toNat).toNat

end

end A337548.P13015134638835023126

/-! ## A337548.P7911443391319356286

`and(A035612(A094373(n)), A328881(n))`
-/

namespace A337548.P7911443391319356286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035612 (A094373 n).toNat) (A328881 n)

end

end A337548.P7911443391319356286

/-! ## A337548.P13841480747861356980

`and(A263131(A002662(n)), A292746(n))`
-/

namespace A337548.P13841480747861356980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A263131 (A002662 n).toNat) (A292746 n)

end

end A337548.P13841480747861356980

/-!
# A337549: a(n) = A003972(n) - n.

The programs for A337549, the canonical program `A337549.P3151164375738502961` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337549 has offset 1).

The definition of A337549 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003972, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337549.P3151164375738502961

`A003972(n+1)-(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A337549

/-- `A003972(n+1)-(n+1)` -/
def P3151164375738502961.Spec : Prop :=
  ∀ n, P3151164375738502961.a n = A337549 (n + 1)

theorem P3151164375738502961.correct : P3151164375738502961.Spec := by
  intro n
  simp only [A337549, Nat.add_sub_cancel]

end A337549

/-! ## A337549.P11876092583709874873

`∑{d}[n+1, A346249(#)]`
-/

namespace A337549.P11876092583709874873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346249 d

end

end A337549.P11876092583709874873

namespace A337549

/-- `∑{d}[n+1, A346249(#)]` -/
def P11876092583709874873.Spec : Prop :=
  ∀ n, P11876092583709874873.a n = A337549 (n + 1)

end A337549

/-! ## A337549.P7931552340198585498

`1-A377985(n+1)+n`
-/

namespace A337549.P7931552340198585498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A377985 (n + 1) + (n : ℤ)

end

end A337549.P7931552340198585498

namespace A337549

/-- `1-A377985(n+1)+n` -/
def P7931552340198585498.Spec : Prop :=
  ∀ n, P7931552340198585498.a n = A337549 (n + 1)

end A337549

/-! ## A337549.P15598924685403800513

`A353789(n+1)/(n+1)-(n+1)`
-/

namespace A337549.P15598924685403800513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353789 (n + 1) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ)

end

end A337549.P15598924685403800513

namespace A337549

/-- `A353789(n+1)/(n+1)-(n+1)` -/
def P15598924685403800513.Spec : Prop :=
  ∀ n, P15598924685403800513.a n = (A337549 (n + 1) : ℚ)

end A337549

/-! ## A337549.P5500562951687174806

`A349754(n+1)+A083254(n+1)`
-/

namespace A337549.P5500562951687174806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349754 (n + 1) + A083254 (n + 1)

end

end A337549.P5500562951687174806

namespace A337549

/-- `A349754(n+1)+A083254(n+1)` -/
def P5500562951687174806.Spec : Prop :=
  ∀ n, P5500562951687174806.a n = A337549 (n + 1)

end A337549

/-! ## A337549.P3977815793413961223

`A347100(n+1)-A051953(n+1)`
-/

namespace A337549.P3977815793413961223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347100 (n + 1) - A051953 (n + 1)

end

end A337549.P3977815793413961223

namespace A337549

/-- `A347100(n+1)-A051953(n+1)` -/
def P3977815793413961223.Spec : Prop :=
  ∀ n, P3977815793413961223.a n = A337549 (n + 1)

end A337549

/-! ## A337549.P4999529590105847556

`∑{d}[n+1, A008683(#)*A286385((n+1)/#)]`
-/

namespace A337549.P4999529590105847556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A286385 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337549.P4999529590105847556

namespace A337549

/-- `∑{d}[n+1, A008683(#)*A286385((n+1)/#)]` -/
def P4999529590105847556.Spec : Prop :=
  ∀ n, P4999529590105847556.a n = A337549 (n + 1)

end A337549

/-! ## A337549.P6851917924559085638

`A000010(n+1)+A349754(n+1)-A051953(n+1)`
-/

namespace A337549.P6851917924559085638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A349754 (n + 1) - A051953 (n + 1))

end

end A337549.P6851917924559085638

namespace A337549

/-- `A000010(n+1)+A349754(n+1)-A051953(n+1)` -/
def P6851917924559085638.Spec : Prop :=
  ∀ n, P6851917924559085638.a n = A337549 (n + 1)

end A337549

/-! ## A337549.P7641143494217180031

`A000010(A003961(n+1))-(n+1)`
-/

namespace A337549.P7641143494217180031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003961 (n + 1)).toNat - (n + 1 : ℤ)

end

end A337549.P7641143494217180031

namespace A337549

/-- `A000010(A003961(n+1))-(n+1)` -/
def P7641143494217180031.Spec : Prop :=
  ∀ n, P7641143494217180031.a n = A337549 (n + 1)

end A337549

/-! ## A337549.P3838464388200183506

`A000010(A045965(n+1))-(n+1)`
-/

namespace A337549.P3838464388200183506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A045965 (n + 1)).toNat - (n + 1 : ℤ)

end

end A337549.P3838464388200183506

namespace A337549

/-- `A000010(A045965(n+1))-(n+1)` -/
def P3838464388200183506.Spec : Prop :=
  ∀ n, P3838464388200183506.a n = A337549 (n + 1)

end A337549

/-! ## A337549.P553088727616679636

`A000010(A253885(n)+1)-(n+1)`
-/

namespace A337549.P553088727616679636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A253885 n + 1).toNat - (n + 1 : ℤ)

end

end A337549.P553088727616679636

namespace A337549

/-- `A000010(A253885(n)+1)-(n+1)` -/
def P553088727616679636.Spec : Prop :=
  ∀ n, P553088727616679636.a n = A337549 (n + 1)

end A337549

/-! ## A337549.P7773867381350888289

`A000010(2*A048673(n+1)-1)-(n+1)`
-/

namespace A337549.P7773867381350888289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A048673 (n + 1) - 1).toNat - (n + 1 : ℤ)

end

end A337549.P7773867381350888289

namespace A337549

/-- `A000010(2*A048673(n+1)-1)-(n+1)` -/
def P7773867381350888289.Spec : Prop :=
  ∀ n, P7773867381350888289.a n = A337549 (n + 1)

end A337549

/-! ## A337549.P12825195628362941268

`A000010(round(A246676(4*n+2)/3))-(n+1)`
-/

namespace A337549.P12825195628362941268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A246676 (4 * n + 2) : ℚ) / 3)).toNat - (n + 1 : ℤ)

end

end A337549.P12825195628362941268

namespace A337549

/-- `A000010(round(A246676(4*n+2)/3))-(n+1)` -/
def P12825195628362941268.Spec : Prop :=
  ∀ n, P12825195628362941268.a n = A337549 (n + 1)

end A337549

/-! ## A337549.P15291836437525786134

`A000010(A297166(2*(n+1)))-(n+1)`
-/

namespace A337549.P15291836437525786134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A297166 (2 * (n + 1))).toNat - (n + 1 : ℤ)

end

end A337549.P15291836437525786134

namespace A337549

/-- `A000010(A297166(2*(n+1)))-(n+1)` -/
def P15291836437525786134.Spec : Prop :=
  ∀ n, P15291836437525786134.a n = A337549 (n + 1)

end A337549

/-! ## A337549.P2865307892621833916

`A353748(A003961(n+1))`
-/

namespace A337549.P2865307892621833916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353748 (A003961 (n + 1)).toNat

end

end A337549.P2865307892621833916

namespace A337549

/-- `A353748(A003961(n+1))` -/
def P2865307892621833916.Spec : Prop :=
  ∀ n, P2865307892621833916.a n = A337549 (n + 1)

end A337549

/-! ## A337549.P7765731250274911274

`A353748(A045965(n+1))`
-/

namespace A337549.P7765731250274911274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353748 (A045965 (n + 1)).toNat

end

end A337549.P7765731250274911274

namespace A337549

/-- `A353748(A045965(n+1))` -/
def P7765731250274911274.Spec : Prop :=
  ∀ n, P7765731250274911274.a n = A337549 (n + 1)

end A337549

/-! ## A337549.P8030290560772084660

`A336853(n+1)-A051953(A003961(n+1))`
-/

namespace A337549.P8030290560772084660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1) - A051953 (A003961 (n + 1)).toNat

end

end A337549.P8030290560772084660

namespace A337549

/-- `A336853(n+1)-A051953(A003961(n+1))` -/
def P8030290560772084660.Spec : Prop :=
  ∀ n, P8030290560772084660.a n = A337549 (n + 1)

end A337549

/-! ## A337549.P13760084178058205457

`A000010(A097246((n+1)²))-(n+1)`
-/

namespace A337549.P13760084178058205457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A097246 ((n + 1) ^ 2)).toNat - (n + 1 : ℤ)

end

end A337549.P13760084178058205457

namespace A337549

/-- `A000010(A097246((n+1)²))-(n+1)` -/
def P13760084178058205457.Spec : Prop :=
  ∀ n, P13760084178058205457.a n = A337549 (n + 1)

end A337549

/-!
# A337550: Number of closed-loop self-avoiding paths of length 4n on a 2D square lattice where no step can be in the same direction as the previous step.

The programs for A337550, there is no canonical definition to state claims against.
-/

/-! ## A337550.P16795378479001334559

`8*(n+1)*A006782(n+1)`
-/

namespace A337550.P16795378479001334559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * ((n + 1 : ℤ) * A006782 (n + 1))

end

end A337550.P16795378479001334559

/-! ## A337550.P206906425619780745

`(A004771(n)+1)*A006782(n+1)`
-/

namespace A337550.P206906425619780745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004771 n + 1) * A006782 (n + 1)

end

end A337550.P206906425619780745

/-! ## A337550.P5630607250105597928

`A006782(n+1)*A008590(n+1)`
-/

namespace A337550.P5630607250105597928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006782 (n + 1) * A008590 (n + 1)

end

end A337550.P5630607250105597928

/-! ## A337550.P17805444574540437368

`A006782(n+1)*A022144(n+1)`
-/

namespace A337550.P17805444574540437368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006782 (n + 1) * A022144 (n + 1)

end

end A337550.P17805444574540437368

/-! ## A337550.P3454116413954514358

`8*A006782(n+1)*A348553(n)`
-/

namespace A337550.P3454116413954514358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A006782 (n + 1) * A348553 n)

end

end A337550.P3454116413954514358

/-!
# A337551: Diagonal of A304320.

The programs for A337551, there is no canonical definition to state claims against.
-/

/-! ## A337551.P15000588419603685949

`A304320(A001105(n)+1)`
-/

namespace A337551.P15000588419603685949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304320 (A001105 n + 1).toNat

end

end A337551.P15000588419603685949

/-! ## A337551.P9807701552782713768

`A304320(A002522(n)+n²)`
-/

namespace A337551.P9807701552782713768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304320 (A002522 n + (n ^ 2 : ℤ)).toNat

end

end A337551.P9807701552782713768

/-!
# A337552: a(0) = 1; a(n) = Sum_{k=1..n} binomial(n,k) * (3*k-2) * a(n-k).

The programs for A337552, there is no canonical definition to state claims against.
-/

/-! ## A337552.P10658196339984623350

`A101483(n)+A004526(A137972(n))`
-/

namespace A337552.P10658196339984623350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101483 n + A004526 (A137972 n).toNat

end

end A337552.P10658196339984623350

/-! ## A337552.P9806041358607053747

`A007947(A296660(n))-A052852(n)`
-/

namespace A337552.P9806041358607053747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A296660 n).toNat - A052852 n

end

end A337552.P9806041358607053747

/-!
# A337553: a(0) = 1; a(n) = Sum_{k=1..n} binomial(n,k) * (4*k-3) * a(n-k).

The programs for A337553, there is no canonical definition to state claims against.
-/

/-! ## A337553.P4780159202910654481

`A130398(∏[eq[n, ∏{d}[n, #]]]-n)`
-/

namespace A337553.P4780159202910654481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130398 (∏ j ∈ Finset.range (n + 1), f1 j - n)

end

end A337553.P4780159202910654481

/-!
# A337554: a(0) = 1; a(n) = Sum_{k=1..n} binomial(n,k) * (5*k-4) * a(n-k).

The programs for A337554, there is no canonical definition to state claims against.
-/

/-! ## A337554.P10571216258010278301

`A345958(A000248(n))-(n%2)^n`
-/

namespace A337554.P10571216258010278301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345958 (A000248 n).toNat - (((n % 2) ^ n : ℕ) : ℤ)

end

end A337554.P10571216258010278301

/-!
# A337555: a(0) = 1; a(n) = (1/2) * Sum_{k=1..n} binomial(n,k) * (3^k-1) * a(n-k).

The programs for A337555, there is no canonical definition to state claims against.
-/

/-! ## A337555.P6380743395476172012

`A347663(∑[floor(3/2*n²)+1])`
-/

namespace A337555.P6380743395476172012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (n ^ 2 : ℚ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347663 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337555.P6380743395476172012

/-!
# A337556: a(0) = 1; a(n) = (1/3) * Sum_{k=1..n} binomial(n,k) * (4^k-1) * a(n-k).

The programs for A337556, there is no canonical definition to state claims against.
-/

/-! ## A337556.P17919638335147053859

`A003602(A105616(n))`
-/

namespace A337556.P17919638335147053859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A105616 n).toNat

end

end A337556.P17919638335147053859

/-!
# A337558: E.g.f. A(x) satisfies: A(x) = Sum_{n>=0} (n+1 - A(x))^n * x^n/n!.

The programs for A337558, there is no canonical definition to state claims against.
-/

/-! ## A337558.P697126295693367552

`A195177(A323230(n)²)`
-/

namespace A337558.P697126295693367552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A323230 n ^ 2).toNat

end

end A337558.P697126295693367552

/-! ## A337558.P15778247436172207123

`∑[A011371(A014500(n))]+1`
-/

namespace A337558.P15778247436172207123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A014500 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A337558.P15778247436172207123

/-!
# A337559: Number of length three 1..n vectors that contain their harmonic mean.

The programs for A337559, there is no canonical definition to state claims against.
-/

/-! ## A337559.P217444765958281857

`∑[12*A270417(n+1)+1]`
-/

namespace A337559.P217444765958281857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A270417 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337559.P217444765958281857

/-! ## A337559.P9940212478168725608

`∑[A017533(A270417(n+1))]`
-/

namespace A337559.P9940212478168725608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (A270417 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337559.P9940212478168725608

/-! ## A337559.P12842564541746260178

`∑[A016813(3*A270417(n+1))]`
-/

namespace A337559.P12842564541746260178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (3 * A270417 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337559.P12842564541746260178

/-! ## A337559.P12489193346914964219

`∑[A016777(4*A270417(n+1))]`
-/

namespace A337559.P12489193346914964219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (4 * A270417 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337559.P12489193346914964219

/-! ## A337559.P18244671146317557162

`∑[A005408(6*A270417(n+1))]`
-/

namespace A337559.P18244671146317557162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (6 * A270417 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337559.P18244671146317557162

/-! ## A337559.P4996857804170970541

`∑[A004442(12*A270417(n+1))]`
-/

namespace A337559.P4996857804170970541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (12 * A270417 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337559.P4996857804170970541

/-!
# A337560: Number of length four 1..n vectors that contain their harmonic mean.

The programs for A337560, there is no canonical definition to state claims against.
-/

/-! ## A337560.P15134512388448732321

`∑[A342670(3^n)²]`
-/

namespace A337560.P15134512388448732321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (3 ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337560.P15134512388448732321

/-! ## A337560.P17887314511452419601

`∑[A351544(A005030(n))²]`
-/

namespace A337560.P17887314511452419601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351544 (A005030 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337560.P17887314511452419601

/-! ## A337560.P6255790659498363998

`∑[A322356(A093129(n))²]`
-/

namespace A337560.P6255790659498363998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322356 (A093129 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337560.P6255790659498363998

/-! ## A337560.P14673214000319974812

`∑[A086892(A032555(n+1))²]`
-/

namespace A337560.P14673214000319974812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086892 (A032555 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337560.P14673214000319974812

/-! ## A337560.P12450047964589054186

`∑[A086892(A032559(n+1))²]`
-/

namespace A337560.P12450047964589054186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086892 (A032559 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337560.P12450047964589054186

/-!
# A337561: Number of pairwise coprime strict compositions of n, where a singleton is not considered coprime unless it is (1).

The programs for A337561, there is no canonical definition to state claims against.
-/

/-! ## A337561.P7129515074269963705

`A337562(n)-A157928(n)`
-/

namespace A337561.P7129515074269963705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337562 n - A157928 n

end

end A337561.P7129515074269963705

/-! ## A337561.P10009178500194943376

`A337562(n)-floor(A042965(n+1)/(n+1))`
-/

namespace A337561.P10009178500194943376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337562 n - ⌊(A042965 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A337561.P10009178500194943376

/-! ## A337561.P556079997854678558

`A337562(n)-A057427(n-A057427(n))`
-/

namespace A337561.P556079997854678558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337562 n - A057427 ((n : ℤ) - A057427 n).toNat

end

end A337561.P556079997854678558

/-! ## A337561.P11029710858930655673

`A337562(n)-A014933(∏{e}[n, A055967(#)])`
-/

namespace A337561.P11029710858930655673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337562 n - A014933 (∏ p ∈ Nat.primeFactors (f1 n), A055967 (Nat.factorization (f1 n) p)).toNat

end

end A337561.P11029710858930655673

/-! ## A337561.P1252484395622587822

`A337462(n)+A337562(n)-A101268(n)`
-/

namespace A337561.P1252484395622587822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337462 n + (A337562 n - A101268 n)

end

end A337561.P1252484395622587822

/-! ## A337561.P13530269093040073656

`A337562(n)-A049240(A238531(n))`
-/

namespace A337561.P13530269093040073656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337562 n - A049240 (A238531 n).toNat

end

end A337561.P13530269093040073656

/-! ## A337561.P16473530342868927463

`A337562(n)-and(1, A274230(n))`
-/

namespace A337561.P16473530342868927463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337562 n - Int.land 1 (A274230 n)

end

end A337561.P16473530342868927463

/-! ## A337561.P3619427195870220492

`and(A131051(n+1), A337562(n))`
-/

namespace A337561.P3619427195870220492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131051 (n + 1)) (A337562 n)

end

end A337561.P3619427195870220492

/-! ## A337561.P344340395561596771

`and(A047860(n), A337562(n))`
-/

namespace A337561.P344340395561596771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047860 n) (A337562 n)

end

end A337561.P344340395561596771

/-!
# A337562: Number of pairwise coprime strict compositions of n, where a singleton is always considered coprime.

The programs for A337562, there is no canonical definition to state claims against.
-/

/-! ## A337562.P184920054324644590

`or(1, A337561(n))`
-/

namespace A337562.P184920054324644590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A337561 n)

end

end A337562.P184920054324644590

/-! ## A337562.P1140700356028943228

`A337561(n)+A157928(n)`
-/

namespace A337562.P1140700356028943228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337561 n + A157928 n

end

end A337562.P1140700356028943228

/-! ## A337562.P5692308944487349061

`A337561(n)+A000035(A019426(n))`
-/

namespace A337562.P5692308944487349061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337561 n + A000035 (A019426 n).toNat

end

end A337562.P5692308944487349061

/-! ## A337562.P10985401014181187381

`A337561(n)+A057427(A057358(n))`
-/

namespace A337562.P10985401014181187381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337561 n + A057427 (A057358 n).toNat

end

end A337562.P10985401014181187381

/-! ## A337562.P17794435295757302678

`A337561(n)+A057427(A060143(n))`
-/

namespace A337562.P17794435295757302678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337561 n + A057427 (A060143 n).toNat

end

end A337562.P17794435295757302678

/-! ## A337562.P1942365049276776093

`A337561(n)+A059841(A000010(n+1))`
-/

namespace A337562.P1942365049276776093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337561 n + A059841 (A000010 (n + 1)).toNat

end

end A337562.P1942365049276776093

/-! ## A337562.P13399139542849951323

`A337561(n)+A034460(A060594(n+1))`
-/

namespace A337562.P13399139542849951323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337561 n + A034460 (A060594 (n + 1)).toNat

end

end A337562.P13399139542849951323

/-! ## A337562.P4904283919499257786

`A337561(n)+A057427(n-A057427(n))`
-/

namespace A337562.P4904283919499257786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337561 n + A057427 ((n : ℤ) - A057427 n).toNat

end

end A337562.P4904283919499257786

/-! ## A337562.P10653544445724473238

`A337561(n)%A265826(n)+1`
-/

namespace A337562.P10653544445724473238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337561 n) (A265826 n) + 1

end

end A337562.P10653544445724473238

/-! ## A337562.P9788103037958873066

`A337561(n)+A231642(A008805(n))`
-/

namespace A337562.P9788103037958873066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337561 n + A231642 (A008805 n).toNat

end

end A337562.P9788103037958873066

/-!
# A337563: Number of pairwise coprime unordered triples of positive integers > 1 summing to n.

The programs for A337563, there is no canonical definition to state claims against.
-/

/-! ## A337563.P3229662131145822112

`∑{e}[A002294(A212217(n)), #]`
-/

namespace A337563.P3229662131145822112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 (A212217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A337563.P3229662131145822112

/-! ## A337563.P14719260751004596528

`A322850(A212217(n)^A008616(n))`
-/

namespace A337563.P14719260751004596528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322850 (SequenceMachineLib.roundAway ((A212217 n : ℚ) ^ (A008616 n : ℤ))).toNat

end

end A337563.P14719260751004596528

/-!
# A337564: Number of sequences of length 2*n covering an initial interval of positive integers and splitting into n maximal runs.

The programs for A337564, there is no canonical definition to state claims against.
-/

/-! ## A337564.P2439319830153622443

`A088218(n)*A327868(A004275(n))`
-/

namespace A337564.P2439319830153622443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n * A327868 (A004275 n).toNat

end

end A337564.P2439319830153622443

/-! ## A337564.P4101218475572286958

`A276922(2*n²)`
-/

namespace A337564.P4101218475572286958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (2 * n ^ 2)

end

end A337564.P4101218475572286958

/-! ## A337564.P11458107196421528838

`A335461(∑[4*n])`
-/

namespace A337564.P11458107196421528838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335461 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337564.P11458107196421528838

/-! ## A337564.P5458740307445341412

`A337506(A103517(n)+A056220(n))`
-/

namespace A337564.P5458740307445341412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337506 (A103517 n + A056220 n).toNat

end

end A337564.P5458740307445341412

/-! ## A337564.P15520252926489189762

`A337506(A059993(n)-A008574(n))`
-/

namespace A337564.P15520252926489189762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337506 (A059993 n - A008574 n).toNat

end

end A337564.P15520252926489189762

/-!
# A337565: Irregular triangle read by rows where row k is the sequence of maximal anti-run lengths in the k-th composition in standard order.

The programs for A337565, there is no canonical definition to state claims against.
-/

/-! ## A337565.P11562586854101559169

`A322871(lcm(A052905(n), A280699(n+1)))`
-/

namespace A337565.P11562586854101559169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322871 (Int.lcm (A052905 n) (A280699 (n + 1)))

end

end A337565.P11562586854101559169

/-! ## A337565.P1940601198386530664

`A051903(A212165(A000330(n+6))+A051903(n+5))`
-/

namespace A337565.P1940601198386530664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A212165 (A000330 (n + 6)).toNat + A051903 (n + 5)).toNat

end

end A337565.P1940601198386530664

/-! ## A337565.P2821773077619186730

`A101211(A144287(n+3)+A101211(3*(n+1)))`
-/

namespace A337565.P2821773077619186730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101211 (A144287 (n + 3) + A101211 (3 * (n + 1))).toNat

end

end A337565.P2821773077619186730

/-! ## A337565.P4148412476245017776

`A025465(A007955(n+1))+A055641(n+4)+1`
-/

namespace A337565.P4148412476245017776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A007955 (n + 1)).toNat + (A055641 (n + 4) + 1)

end

end A337565.P4148412476245017776

/-! ## A337565.P10533634980138270288

`gcd(A001687(2*n+1), A119145(A333219(n+1)))`
-/

namespace A337565.P10533634980138270288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001687 (2 * n + 1)) (A119145 (A333219 (n + 1)).toNat)

end

end A337565.P10533634980138270288

/-!
# A337566: a(n) is the number of possible decompositions of the polynomial n * (x + x^2 + ... + x^q), where q > 1, into a sum of k polynomials, not necessarily all different; each of these polynomials is to be of the form b_1 * x + b_2 * x^2 + ... + b_q * x^q where each b_i is one of the numbers 1, 2, 3, ..., q and no two b_i are equal.

The programs for A337566, the canonical program `A337566.P6888231606772076674` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337566 has offset 1).

The definition of A337566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337566.P6888231606772076674

`∏{e}[abs(1-n)+n+3, #+1]-3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A337566

/-- `∏{e}[abs(1-n)+n+3, #+1]-3` -/
def P6888231606772076674.Spec : Prop :=
  ∀ n, P6888231606772076674.a n = A337566 (n + 1)

theorem P6888231606772076674.correct : P6888231606772076674.Spec := by
  intro n
  simp only [A337566, Nat.add_sub_cancel]

end A337566

/-! ## A337566.P9289371637949061860

`A000005(abs(1-2*n)+3)-3`
-/

namespace A337566.P9289371637949061860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (2 * n : ℤ)| + 3).toNat - 3

end

end A337566.P9289371637949061860

namespace A337566

/-- `A000005(abs(1-2*n)+3)-3` -/
def P9289371637949061860.Spec : Prop :=
  ∀ n, P9289371637949061860.a n = A337566 (n + 1)

end A337566

/-! ## A337566.P9700100881379076704

`(A000005(2*(n+1))-3)%(n+1)`
-/

namespace A337566.P9700100881379076704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (2 * (n + 1)) - 3) (n + 1 : ℤ)

end

end A337566.P9700100881379076704

namespace A337566

/-- `(A000005(2*(n+1))-3)%(n+1)` -/
def P9700100881379076704.Spec : Prop :=
  ∀ n, P9700100881379076704.a n = A337566 (n + 1)

end A337566

/-! ## A337566.P5389807922800387514

`abs(3-A000005(abs(1-n)+n+3))`
-/

namespace A337566.P5389807922800387514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 - A000005 (|1 - (n : ℤ)| + (n + 3 : ℤ)).toNat)|

end

end A337566.P5389807922800387514

namespace A337566

/-- `abs(3-A000005(abs(1-n)+n+3))` -/
def P5389807922800387514.Spec : Prop :=
  ∀ n, P5389807922800387514.a n = A337566 (n + 1)

end A337566

/-! ## A337566.P13178626446911560764

`Δ[A325459(n)+A248517(n)]`
-/

namespace A337566.P13178626446911560764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n + A248517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A337566.P13178626446911560764

namespace A337566

/-- `Δ[A325459(n)+A248517(n)]` -/
def P13178626446911560764.Spec : Prop :=
  ∀ n, P13178626446911560764.a n = A337566 (n + 1)

end A337566

/-! ## A337566.P15567293560815847857

`A244325(A111150(n+1)-1)`
-/

namespace A337566.P15567293560815847857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244325 (A111150 (n + 1) - 1).toNat

end

end A337566.P15567293560815847857

namespace A337566

/-- `A244325(A111150(n+1)-1)` -/
def P15567293560815847857.Spec : Prop :=
  ∀ n, P15567293560815847857.a n = A337566 (n + 1)

end A337566

/-! ## A337566.P14525494768683470729

`A069930(n+1)+A057428(n)`
-/

namespace A337566.P14525494768683470729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069930 (n + 1) + A057428 n

end

end A337566.P14525494768683470729

namespace A337566

/-- `A069930(n+1)+A057428(n)` -/
def P14525494768683470729.Spec : Prop :=
  ∀ n, P14525494768683470729.a n = A337566 (n + 1)

end A337566

/-! ## A337566.P13384222726834265509

`A069930(n+1)-A057427(n)`
-/

namespace A337566.P13384222726834265509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069930 (n + 1) - A057427 n

end

end A337566.P13384222726834265509

namespace A337566

/-- `A069930(n+1)-A057427(n)` -/
def P13384222726834265509.Spec : Prop :=
  ∀ n, P13384222726834265509.a n = A337566 (n + 1)

end A337566

/-! ## A337566.P15792634190592075330

`A049615(A066446(2*(n+1))+1)`
-/

namespace A337566.P15792634190592075330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049615 (A066446 (2 * (n + 1)) + 1).toNat

end

end A337566.P15792634190592075330

namespace A337566

/-- `A049615(A066446(2*(n+1))+1)` -/
def P15792634190592075330.Spec : Prop :=
  ∀ n, P15792634190592075330.a n = A337566 (n + 1)

end A337566

/-! ## A337566.P199994883388748286

`A289207(A000005(2*(n+1))-1)`
-/

namespace A337566.P199994883388748286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A000005 (2 * (n + 1)) - 1).toNat

end

end A337566.P199994883388748286

namespace A337566

/-- `A289207(A000005(2*(n+1))-1)` -/
def P199994883388748286.Spec : Prop :=
  ∀ n, P199994883388748286.a n = A337566 (n + 1)

end A337566

/-! ## A337566.P8051575506630762102

`A111775(n+1)+A023645(n+1)`
-/

namespace A337566.P8051575506630762102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (n + 1) + A023645 (n + 1)

end

end A337566.P8051575506630762102

namespace A337566

/-- `A111775(n+1)+A023645(n+1)` -/
def P8051575506630762102.Spec : Prop :=
  ∀ n, P8051575506630762102.a n = A337566 (n + 1)

end A337566

/-! ## A337566.P18418739218448721402

`A070824(n+1)+A069283(n+1)`
-/

namespace A337566.P18418739218448721402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) + A069283 (n + 1)

end

end A337566.P18418739218448721402

namespace A337566

/-- `A070824(n+1)+A069283(n+1)` -/
def P18418739218448721402.Spec : Prop :=
  ∀ n, P18418739218448721402.a n = A337566 (n + 1)

end A337566

/-! ## A337566.P5862801409451018309

`A334239(n+1)+A005087(n+1)`
-/

namespace A337566.P5862801409451018309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334239 (n + 1) + A005087 (n + 1)

end

end A337566.P5862801409451018309

namespace A337566

/-- `A334239(n+1)+A005087(n+1)` -/
def P5862801409451018309.Spec : Prop :=
  ∀ n, P5862801409451018309.a n = A337566 (n + 1)

end A337566

/-! ## A337566.P18130478016892216608

`A099777(n+1)-A157532(n+1)`
-/

namespace A337566.P18130478016892216608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) - A157532 (n + 1)

end

end A337566.P18130478016892216608

namespace A337566

/-- `A099777(n+1)-A157532(n+1)` -/
def P18130478016892216608.Spec : Prop :=
  ∀ n, P18130478016892216608.a n = A337566 (n + 1)

end A337566

/-! ## A337566.P4160638083974253992

`A066660(n+1)-A040001(2*n)`
-/

namespace A337566.P4160638083974253992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066660 (n + 1) - A040001 (2 * n)

end

end A337566.P4160638083974253992

namespace A337566

/-- `A066660(n+1)-A040001(2*n)` -/
def P4160638083974253992.Spec : Prop :=
  ∀ n, P4160638083974253992.a n = A337566 (n + 1)

end A337566

/-! ## A337566.P8554977217112859085

`A259361((2-A000005(2*(n+1)))²)`
-/

namespace A337566.P8554977217112859085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 ((2 - A000005 (2 * (n + 1))) ^ 2).toNat

end

end A337566.P8554977217112859085

namespace A337566

/-- `A259361((2-A000005(2*(n+1)))²)` -/
def P8554977217112859085.Spec : Prop :=
  ∀ n, P8554977217112859085.a n = A337566 (n + 1)

end A337566

/-! ## A337566.P10394464503616216993

`A337108((2-A000005(2*(n+1)))²)`
-/

namespace A337566.P10394464503616216993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337108 ((2 - A000005 (2 * (n + 1))) ^ 2).toNat

end

end A337566.P10394464503616216993

namespace A337566

/-- `A337108((2-A000005(2*(n+1)))²)` -/
def P10394464503616216993.Spec : Prop :=
  ∀ n, P10394464503616216993.a n = A337566 (n + 1)

end A337566

/-! ## A337566.P452556067111764441

`A001227(n+1)+A070824(n+1)-1`
-/

namespace A337566.P452556067111764441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (A070824 (n + 1) - 1)

end

end A337566.P452556067111764441

namespace A337566

/-- `A001227(n+1)+A070824(n+1)-1` -/
def P452556067111764441.Spec : Prop :=
  ∀ n, P452556067111764441.a n = A337566 (n + 1)

end A337566

/-! ## A337566.P16100759111820329052

`A076984(n+1)+A111775(n+1)-1`
-/

namespace A337566.P16100759111820329052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (n + 1) + (A111775 (n + 1) - 1)

end

end A337566.P16100759111820329052

namespace A337566

/-- `A076984(n+1)+A111775(n+1)-1` -/
def P16100759111820329052.Spec : Prop :=
  ∀ n, P16100759111820329052.a n = A337566 (n + 1)

end A337566

/-!
# A337567: Let a(0) = 1, k(0) = 1. For n >= 1; if a(n-1) + k(n-1) is a prime, then a(n) = a(n-1) + k(n-1), k(n) = k(n-1); else a(n) = a(n-1) + k(n-1) + 1, k(n) = k(n-1) + 1.

The programs for A337567, there is no canonical definition to state claims against.
-/

/-! ## A337567.P13340039563499364357

`A113636(2*a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A337567.P13340039563499364357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A113636 (2 * a (n - 1) - a (n - 2)).toNat

end

end A337567.P13340039563499364357

/-! ## A337567.P11724767912365697672

`∑[∑[A159689(A230285(n+1))]]`
-/

namespace A337567.P11724767912365697672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159689 (A230285 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337567.P11724767912365697672

/-! ## A337567.P9119930805191175899

`∑[∑[A156728(A332290(n+1))]]`
-/

namespace A337567.P9119930805191175899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156728 (A332290 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337567.P9119930805191175899

/-! ## A337567.P7088887497030909735

`∑[A070939(∑[A122886(n)])]`
-/

namespace A337567.P7088887497030909735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122886 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337567.P7088887497030909735

/-! ## A337567.P9134884972495767808

`∑[A070939(A325908(n))]`
-/

namespace A337567.P9134884972495767808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A325908 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337567.P9134884972495767808

/-!
# A337568: Product of all the parts in the Goldbach partitions (p,q) of 2n such that p + q = 2n, p <= q, and p,q prime (or 1 if no Goldbach partition of 2n exists).

The programs for A337568, there is no canonical definition to state claims against.
-/

/-! ## A337568.P8516909104399577766

`A362640(n+1)*A362641(n+1)`
-/

namespace A337568.P8516909104399577766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362640 (n + 1) * A362641 (n + 1)

end

end A337568.P8516909104399577766

/-! ## A337568.P17133940485050238357

`A324371(A261130(n))*A362641(n+1)`
-/

namespace A337568.P17133940485050238357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324371 (A261130 n).toNat * A362641 (n + 1)

end

end A337568.P17133940485050238357

/-! ## A337568.P17440478102707593055

`A109395(A000108(n)*A007947(n+1))*A362641(n+1)`
-/

namespace A337568.P17440478102707593055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A000108 n * A007947 (n + 1)).toNat * A362641 (n + 1)

end

end A337568.P17440478102707593055

/-!
# A337569: Decimal expansion of the real solution to x^3 = 3 - x.

The programs for A337569, there is no canonical definition to state claims against.
-/

/-! ## A337569.P10575468007874417047

`A099245(A057460(n+1)+2)`
-/

namespace A337569.P10575468007874417047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 (A057460 (n + 1) + 2).toNat

end

end A337569.P10575468007874417047

/-!
# A337572: Numbers having at least one 4 in their representation in base 5.

The programs for A337572, there is no canonical definition to state claims against.
-/

/-! ## A337572.P2285351848117851710

`comp[A020654(n+1)]`
-/

namespace A337572.P2285351848117851710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A337572.P2285351848117851710

/-! ## A337572.P14709252307674118626

`lt[0, n*A276206(n)]`
-/

namespace A337572.P14709252307674118626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337572.P14709252307674118626

/-! ## A337572.P8946205008926451867

`comp[A020655(n+1)-1]`
-/

namespace A337572.P8946205008926451867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A337572.P8946205008926451867

/-! ## A337572.P17618342448986360166

`lt[3, A190594(n)]`
-/

namespace A337572.P17618342448986360166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337572.P17618342448986360166

/-! ## A337572.P15717774063242896639

`eq[4, A319653(n)%5]`
-/

namespace A337572.P15717774063242896639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319653 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337572.P15717774063242896639

/-! ## A337572.P14445344758305710113

`eq[5, A270030(n+1)]+1`
-/

namespace A337572.P14445344758305710113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270030 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337572.P14445344758305710113

/-! ## A337572.P1894822888551963039

`eq[A040002(n), A190594(n)]`
-/

namespace A337572.P1894822888551963039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337572.P1894822888551963039

/-! ## A337572.P11604094789322747970

`eq[A113311(n), A190594(n)]`
-/

namespace A337572.P11604094789322747970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337572.P11604094789322747970

/-! ## A337572.P8157307968316149051

`eq[A123932(n), A190594(n)]`
-/

namespace A337572.P8157307968316149051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337572.P8157307968316149051

/-! ## A337572.P15069669509646849754

`eq[A151798(n), A190594(n)]`
-/

namespace A337572.P15069669509646849754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151798 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337572.P15069669509646849754

/-! ## A337572.P178215102952124737

`eq[A190594(n), A255176(n)]`
-/

namespace A337572.P178215102952124737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337572.P178215102952124737

/-! ## A337572.P3203185257778855191

`eq[A190594(n), A267649(n)]`
-/

namespace A337572.P3203185257778855191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267649 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337572.P3203185257778855191

/-! ## A337572.P1456683430979945496

`eq[A190594(n), A329505(n)]`
-/

namespace A337572.P1456683430979945496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329505 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337572.P1456683430979945496

/-! ## A337572.P13463009296886149204

`eq[A190594(n), A329509(n)]`
-/

namespace A337572.P13463009296886149204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337572.P13463009296886149204

/-! ## A337572.P5652980283858458461

`eq[A190594(n), A297217(n+1)]`
-/

namespace A337572.P5652980283858458461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337572.P5652980283858458461

/-! ## A337572.P3175930240058324899

`eq[A190594(n), A358241(n+1)]`
-/

namespace A337572.P3175930240058324899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337572.P3175930240058324899

/-! ## A337572.P5526923839028164816

`eq[(A057427(n)+1)², A190594(n)]`
-/

namespace A337572.P5526923839028164816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337572.P5526923839028164816

/-! ## A337572.P16963909892137469490

`lt[char[A020654(n+1)]*A004767(n), 2]`
-/

namespace A337572.P16963909892137469490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A004767 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A337572.P16963909892137469490

/-! ## A337572.P9982737127834500120

`eq[2, A190594(A030104(n))-2]`
-/

namespace A337572.P9982737127834500120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190594 (A030104 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337572.P9982737127834500120

/-! ## A337572.P8712311918565863778

`A028900(A277966(n+1))`
-/

namespace A337572.P8712311918565863778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A277966 (n + 1)).toNat

end

end A337572.P8712311918565863778

/-!
# A337574: a(n) is the dot product of the vectors of the first n primes and the next n primes.

The programs for A337574, there is no canonical definition to state claims against.
-/

/-! ## A337574.P13862515437118552121

`A299053(2*(n+1))/A000005(A107367(n+1))`
-/

namespace A337574.P13862515437118552121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299053 (2 * (n + 1)) : ℚ) / (A000005 (A107367 (n + 1)).toNat : ℚ)

end

end A337574.P13862515437118552121

/-! ## A337574.P4509273561787836305

`A299053(2*(n+1))/A020639(A258961(n+1))`
-/

namespace A337574.P4509273561787836305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299053 (2 * (n + 1)) : ℚ) / (A020639 (A258961 (n + 1)).toNat : ℚ)

end

end A337574.P4509273561787836305

/-! ## A337574.P309815056991689204

`A299053(2*(n+1))/A020639(A258963(n+1))`
-/

namespace A337574.P309815056991689204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299053 (2 * (n + 1)) : ℚ) / (A020639 (A258963 (n + 1)).toNat : ℚ)

end

end A337574.P309815056991689204

/-! ## A337574.P10981658293136448671

`A299053(2*(n+1))/A020639(A258965(n+1))`
-/

namespace A337574.P10981658293136448671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299053 (2 * (n + 1)) : ℚ) / (A020639 (A258965 (n + 1)).toNat : ℚ)

end

end A337574.P10981658293136448671

/-! ## A337574.P15495355228246230274

`A299053(2*n+2)/A020639(A299053(2*n+2))`
-/

namespace A337574.P15495355228246230274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299053 (2 * n + 2) : ℚ) / (A020639 (A299053 (2 * n + 2)).toNat : ℚ)

end

end A337574.P15495355228246230274

/-!
# A337580: a(n) is the sequence of turns in the n-th iteration of the dragon curve encoded in binary (L=1, R=0) represented in decimal.

The programs for A337580, there is no canonical definition to state claims against.
-/

/-! ## A337580.P2559804617324678916

`A343183(n)+A011782(A000079(n))`
-/

namespace A337580.P2559804617324678916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343183 n + A011782 (A000079 n).toNat

end

end A337580.P2559804617324678916

/-! ## A337580.P17730450321823768249

`A343183(n)+A011782(A011782(n+1))`
-/

namespace A337580.P17730450321823768249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343183 n + A011782 (A011782 (n + 1)).toNat

end

end A337580.P17730450321823768249

/-!
# A337581: a(n) is the number of semi-meanders with n top arches that have both an arch of length 1 adjacent to the center of the top arch configuration and an arch of length 1 starting or ending the top arch configuration.

The programs for A337581, there is no canonical definition to state claims against.
-/

/-! ## A337581.P13359795814203226574

`A333971(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A337581.P13359795814203226574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A333971 (n + 1) + a (n - 1)

end

end A337581.P13359795814203226574

/-! ## A337581.P2736489045250198886

`∑[A333971(A028310(n)+1)]`
-/

namespace A337581.P2736489045250198886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333971 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337581.P2736489045250198886

/-! ## A337581.P9807920386505637672

`∑[A333971(A254667(n+1))]`
-/

namespace A337581.P9807920386505637672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333971 (A254667 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337581.P9807920386505637672

/-! ## A337581.P5702296947243506177

`∑[A333971(A233583(n+2))]`
-/

namespace A337581.P5702296947243506177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333971 (A233583 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337581.P5702296947243506177

/-! ## A337581.P6133552107163847079

`∑[A333971(A054977(n)+n)]`
-/

namespace A337581.P6133552107163847079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333971 (A054977 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337581.P6133552107163847079

/-!
# A337582: Numbers m such that m AND (m*2^k) is zero or a power of 2 for any k > 0 (where AND denotes the bitwise AND operator).

The programs for A337582, there is no canonical definition to state claims against.
-/

/-! ## A337582.P3113573260082793474

`lt[A274036(n), 3]`
-/

namespace A337582.P3113573260082793474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A337582.P3113573260082793474

/-! ## A337582.P17118328869785123395

`eq[A175920(A274036(n)²), A274036(n)]`
-/

namespace A337582.P17118328869785123395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175920 (A274036 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337582.P17118328869785123395

/-! ## A337582.P18445587810908320561

`eq[1, A000010(A002620(A274036(n))+1)]`
-/

namespace A337582.P18445587810908320561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002620 (A274036 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337582.P18445587810908320561

/-! ## A337582.P10979323722005855631

`eq[1, A000010(A281605(A274036(n)+1))]`
-/

namespace A337582.P10979323722005855631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A281605 (A274036 n + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337582.P10979323722005855631

/-! ## A337582.P2161426109697601584

`eq[A002620(A274036(n)+1), A274036(n)]`
-/

namespace A337582.P2161426109697601584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A274036 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337582.P2161426109697601584

/-! ## A337582.P1406310790128445726

`eq[A023733(A274036(n)+1), A274036(n)]`
-/

namespace A337582.P1406310790128445726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (A274036 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337582.P1406310790128445726

/-! ## A337582.P17833654937187633916

`eq[A009545(A274036(2*n)), A274036(n)]`
-/

namespace A337582.P17833654937187633916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (A274036 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337582.P17833654937187633916

/-!
# A337583: Irregular triangle read by rows: T(n, k) is the number of integer multisets (partitions) that match the multiplicity multiset of exactly k partitions of n.

The programs for A337583, there is no canonical definition to state claims against.
-/

/-! ## A337583.P622571658648655529

`dr(A001055(record[A316822(n+1)]))`
-/

namespace A337583.P622571658648655529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316822 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A337583.P622571658648655529

/-!
# A337584: Triangle read by rows: T(n, k) is the number of integer multisets of size k (partitions of k) that match the multiplicity multiset of some partition of n (n >= 1, 1 <= k <= n).

The programs for A337584, there is no canonical definition to state claims against.
-/

/-! ## A337584.P10422169227186664772

`A001221(3*A245501(n+1))`
-/

namespace A337584.P10422169227186664772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (3 * A245501 (n + 1)).toNat

end

end A337584.P10422169227186664772

/-! ## A337584.P17114932137211799242

`A230643(A048993(n+1)²)`
-/

namespace A337584.P17114932137211799242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230643 (A048993 (n + 1) ^ 2).toNat

end

end A337584.P17114932137211799242

/-! ## A337584.P16609744015733833324

`A085035(A238016(n+1)+1)`
-/

namespace A337584.P16609744015733833324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085035 (A238016 (n + 1) + 1).toNat

end

end A337584.P16609744015733833324

/-! ## A337584.P3469464994512285319

`gcd(A012257(n), A285699(A322699(n)+1))`
-/

namespace A337584.P3469464994512285319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A012257 n) (A285699 (A322699 n + 1).toNat)

end

end A337584.P3469464994512285319

/-!
# A337585: a(n) is the number of integer multisets (partitions) for which the number of partitions of n with matching multiplicity multiset is odd.

The programs for A337585, there is no canonical definition to state claims against.
-/

/-! ## A337585.P11150526076537215312

`A337586(C(A337572(n+1), 2)-n)`
-/

namespace A337585.P11150526076537215312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337586 (Nat.choose (A337572 (n + 1)).toNat 2 - n)

end

end A337585.P11150526076537215312

/-! ## A337585.P12289919372492942486

`A337586(A082562(2*n)+∑[n]+1)`
-/

namespace A337585.P12289919372492942486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337586 (A082562 (2 * n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A337585.P12289919372492942486

/-! ## A337585.P4494106222448221148

`A337586(A057428(n)+A006137(n))`
-/

namespace A337585.P4494106222448221148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337586 (A057428 n + A006137 n).toNat

end

end A337585.P4494106222448221148

/-! ## A337585.P511059569941384250

`A337586(A006137(n)-A057427(n))`
-/

namespace A337585.P511059569941384250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337586 (A006137 n - A057427 n).toNat

end

end A337585.P511059569941384250

/-! ## A337585.P1008043131866825900

`A337586(A006137(n)-A057428(n)²)`
-/

namespace A337585.P1008043131866825900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337586 (A006137 n - A057428 n ^ 2).toNat

end

end A337585.P1008043131866825900

/-!
# A337588: Number of distinct positive integer pairs, (s,t), such that s < t < n where neither s nor t divides n, but s | t.

The programs for A337588, there is no canonical definition to state claims against.
-/

/-! ## A337588.P10557749770391305165

`∑[∏{e}[n+1, #+1]]-(∑{d}[n+1, #-1]+1+n)`
-/

namespace A337588.P10557749770391305165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (∑ d ∈ Nat.divisors (f3 n), ((d : ℤ) - 1) + 1 + (n : ℤ))

end

end A337588.P10557749770391305165

/-! ## A337588.P1580664478490891035

`∑[∏{e}[n, #+1]]-A342527(n+1)`
-/

namespace A337588.P1580664478490891035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A342527 (n + 1)

end

end A337588.P1580664478490891035

/-! ## A337588.P12773310984208694347

`A002541(n+1)-∑{d}[n+1, #-1]`
-/

namespace A337588.P12773310984208694347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1)

end

end A337588.P12773310984208694347

/-! ## A337588.P1002170291484175332

`∑[A032741(n)]-(∑{d}[n+1, #-2]+1)`
-/

namespace A337588.P1002170291484175332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 2) + 1)

end

end A337588.P1002170291484175332

/-! ## A337588.P14352817493068122890

`∑[∏{e}[n+1, #+1]]-A137319(n+1)`
-/

namespace A337588.P14352817493068122890
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A137319 (n + 1)

end

end A337588.P14352817493068122890

/-! ## A337588.P869497067091468452

`∑[A070824(n+1)]-(∑{d}[n+1, #-1]-n)`
-/

namespace A337588.P869497067091468452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 1) - (n : ℤ))

end

end A337588.P869497067091468452

/-! ## A337588.P4092523921105914226

`∑[A000005(n+1)]-(∑{d}[n+1, #-1]+1+n)`
-/

namespace A337588.P4092523921105914226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 1) + 1 + (n : ℤ))

end

end A337588.P4092523921105914226

/-! ## A337588.P1824840471019459779

`∑[A032741(n)]-A152771(n+1)`
-/

namespace A337588.P1824840471019459779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A152771 (n + 1)

end

end A337588.P1824840471019459779

/-! ## A337588.P1996820646092887133

`∑[A325765(n)]-A158901(n+1)`
-/

namespace A337588.P1996820646092887133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A158901 (n + 1)

end

end A337588.P1996820646092887133

/-!
# A337590: a(0) = 0; a(n) = n - (1/n) * Sum_{k=1..n-1} binomial(n,k)^2 * (n-k) * k * a(k).

The programs for A337590, there is no canonical definition to state claims against.
-/

/-! ## A337590.P12307312026150698817

`n*A300862(A356954(n))`
-/

namespace A337590.P12307312026150698817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A300862 (A356954 n).toNat

end

end A337590.P12307312026150698817

/-!
# A337591: a(0) = 1; a(n) = (1/n) * Sum_{k=1..n} binomial(n,k)^2 * k^3 * a(n-k).

The programs for A337591, there is no canonical definition to state claims against.
-/

/-! ## A337591.P1243711361628004052

`A216345(C((n+1)², n)/(n+1)²)`
-/

namespace A337591.P1243711361628004052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (SequenceMachineLib.roundAway ((Nat.choose ((n + 1) ^ 2) n : ℚ) / ((n + 1) ^ 2 : ℚ))).toNat

end

end A337591.P1243711361628004052

/-!
# A337592: a(0) = 1; a(n) = (1/n) * Sum_{k=1..n} binomial(n,k)^2 * k * 2^(k-1) * a(n-k).

The programs for A337592, there is no canonical definition to state claims against.
-/

/-! ## A337592.P9260769406200726728

`A354102(A261495(n))`
-/

namespace A337592.P9260769406200726728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354102 (A261495 n).toNat

end

end A337592.P9260769406200726728

/-!
# A337593: a(0) = 1; a(n) = (1/n) * Sum_{k=1..n} binomial(n,k)^2 * k * 3^(k-1) * a(n-k).

The programs for A337593, there is no canonical definition to state claims against.
-/

/-! ## A337593.P4823386914570759695

`A120243(A108991(n))`
-/

namespace A337593.P4823386914570759695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120243 (A108991 n).toNat

end

end A337593.P4823386914570759695

/-!
# A337594: a(0) = 1; a(n) = (1/n) * Sum_{k=1..n} binomial(n,k)^2 * k * 4^(k-1) * a(n-k).

The programs for A337594, there is no canonical definition to state claims against.
-/

/-! ## A337594.P10864569778195506551

`A052305(A052611(n))`
-/

namespace A337594.P10864569778195506551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052305 (A052611 n).toNat

end

end A337594.P10864569778195506551

/-!
# A337595: a(0) = 1; a(n) = (1/n) * Sum_{k=1..n} binomial(n,k)^2 * k * 5^(k-1) * a(n-k).

The programs for A337595, there is no canonical definition to state claims against.
-/

/-! ## A337595.P13998519753807125905

`A183298(A127135(n))`
-/

namespace A337595.P13998519753807125905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183298 (A127135 n).toNat

end

end A337595.P13998519753807125905

/-!
# A337597: a(0) = 1; a(n) = (1/n) * Sum_{k=1..n} binomial(n,k)^2 * k * 6^(k-1) * a(n-k).

The programs for A337597, there is no canonical definition to state claims against.
-/

/-! ## A337597.P6690240992641793594

`A054571(2*A152274(n+1))`
-/

namespace A337597.P6690240992641793594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (2 * A152274 (n + 1)).toNat

end

end A337597.P6690240992641793594

/-!
# A337599: Number of unordered triples of positive integers summing to n, any two of which have a common divisor > 1.

The programs for A337599, there is no canonical definition to state claims against.
-/

/-! ## A337599.P17500429326166146520

`or(A082024(n), A280710(A000070(n)))`
-/

namespace A337599.P17500429326166146520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A082024 n) (A280710 (A000070 n).toNat)

end

end A337599.P17500429326166146520

/-! ## A337599.P9642710027729110378

`A298859(A072205(n+1))+A082024(n)`
-/

namespace A337599.P9642710027729110378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298859 (A072205 (n + 1)).toNat + A082024 n

end

end A337599.P9642710027729110378

/-! ## A337599.P1973596280992443006

`A216230(A051869(n+3))+A082024(n)`
-/

namespace A337599.P1973596280992443006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216230 (A051869 (n + 3)).toNat + A082024 n

end

end A337599.P1973596280992443006

/-! ## A337599.P13442837280957671785

`A082024(n)-A240467(A280937(n+3))`
-/

namespace A337599.P13442837280957671785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082024 n - A240467 (A280937 (n + 3)).toNat

end

end A337599.P13442837280957671785

/-! ## A337599.P1366081080239916045

`A082024(n)+A079066(A178306(3*(n+1)))`
-/

namespace A337599.P1366081080239916045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082024 n + A079066 (A178306 (3 * (n + 1))).toNat

end

end A337599.P1366081080239916045

