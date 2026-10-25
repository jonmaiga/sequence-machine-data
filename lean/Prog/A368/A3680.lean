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
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
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
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A368000: a(n) is the numerator of the probability that a particular one of the A335573(n+1) fixed polyominoes corresponding to the free polyomino with binary code A246521(n+1) appears as the image of a simple random walk on the square lattice.

The programs for A368000, there is no canonical definition to state claims against.
-/

/-! ## A368000.P8194393018346607762

`A297193(A334159(n))`
-/

namespace A368000.P8194393018346607762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297193 (A334159 n).toNat

end

end A368000.P8194393018346607762

/-! ## A368000.P13217421685632181386

`A172347(A079963(n+1))`
-/

namespace A368000.P13217421685632181386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172347 (A079963 (n + 1)).toNat

end

end A368000.P13217421685632181386

/-! ## A368000.P15262049613479467094

`A093726(A248470(n+1))`
-/

namespace A368000.P15262049613479467094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093726 (A248470 (n + 1)).toNat

end

end A368000.P15262049613479467094

/-! ## A368000.P6188526525280392206

`A320358(A054772(n)+1)`
-/

namespace A368000.P6188526525280392206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320358 (A054772 n + 1).toNat

end

end A368000.P6188526525280392206

/-! ## A368000.P10311919406973959172

`A000961(A054252(n)!²)`
-/

namespace A368000.P10311919406973959172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (Nat.factorial (A054252 n).toNat ^ 2)

end

end A368000.P10311919406973959172

/-!
# A368002: Numerator of the least probability that a particular fixed polyomino with n cells appears as the image of a simple random walk on the square lattice.

The programs for A368002, there is no canonical definition to state claims against.
-/

/-! ## A368002.P14808815824664989483

`A319094((4^n)%(3^n)-val(n+1, 2))`
-/

namespace A368002.P14808815824664989483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319094 (4 ^ n % 3 ^ n - SequenceMachineLib.valuation (n + 1) 2)

end

end A368002.P14808815824664989483

/-! ## A368002.P7175554333983061322

`A036846(A003080(n))`
-/

namespace A368002.P7175554333983061322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036846 (A003080 n).toNat

end

end A368002.P7175554333983061322

/-!
# A368003: Denominator of the least probability that a particular fixed polyomino with n cells appears as the image of a simple random walk on the square lattice.

The programs for A368003, there is no canonical definition to state claims against.
-/

/-! ## A368003.P2649945131970565354

`A368001(A000110(n)+round(2*n/3))`
-/

namespace A368003.P2649945131970565354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368001 (A000110 n + SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A368003.P2649945131970565354

/-! ## A368003.P13950750718459857156

`A368001(A374993(n)+A279555(n))`
-/

namespace A368003.P13950750718459857156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368001 (A374993 n + A279555 n).toNat

end

end A368003.P13950750718459857156

/-!
# A368004: Numerator of the greatest probability that a particular fixed polyomino with n cells appears as the image of a simple random walk on the square lattice.

The programs for A368004, there is no canonical definition to state claims against.
-/

/-! ## A368004.P7622565991950459328

`A368000(A032306(n+1))`
-/

namespace A368004.P7622565991950459328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368000 (A032306 (n + 1)).toNat

end

end A368004.P7622565991950459328

/-! ## A368004.P10340753490921188448

`A368000(or(2, A000085(n)))`
-/

namespace A368004.P10340753490921188448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368000 (Int.lor 2 (A000085 n)).toNat

end

end A368004.P10340753490921188448

/-!
# A368005: Denominator of the greatest probability that a particular fixed polyomino with n cells appears as the image of a simple random walk on the square lattice.

The programs for A368005, there is no canonical definition to state claims against.
-/

/-! ## A368005.P3507432107846852826

`A368001(∑[A004110(n)])`
-/

namespace A368005.P3507432107846852826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368001 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A368005.P3507432107846852826

/-! ## A368005.P4205129735029760491

`A368001(A001349(n)+n)`
-/

namespace A368005.P4205129735029760491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368001 (A001349 n + (n : ℤ)).toNat

end

end A368005.P4205129735029760491

/-!
# A368006: Rayo's function: smallest natural number larger than any number uniquely defined by an n-symbol formula in First Order Set Theory.

The programs for A368006, there is no canonical definition to state claims against.
-/

/-! ## A368006.P12034090418382234561

`A087991(∑[1-a(n-1)])` with `a(0)=5`
-/

namespace A368006.P12034090418382234561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087991 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A368006.P12034090418382234561

/-! ## A368006.P3957101707790487385

`Δ[floor((∑[A302478(n+1)-n]-n)/7)]`
-/

namespace A368006.P3957101707790487385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ) : ℤ) : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A368006.P3957101707790487385

/-! ## A368006.P2071315050330851281

`A235043(A362806(n+1))`
-/

namespace A368006.P2071315050330851281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235043 (A362806 (n + 1)).toNat

end

end A368006.P2071315050330851281

/-! ## A368006.P11187035666563441262

`A061358(A333701(n+2))`
-/

namespace A368006.P11187035666563441262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A333701 (n + 2)).toNat

end

end A368006.P11187035666563441262

/-!
# A368007: Positive integers which cannot be written as a sum of two Zumkeller numbers.

The programs for A368007, there is no canonical definition to state claims against.
-/

/-! ## A368007.P17923145999935108894

`lt[A327323(A000010(n+1)), A106846(n)]`
-/

namespace A368007.P17923145999935108894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327323 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368007.P17923145999935108894

/-! ## A368007.P3597681503864688456

`lt[A045778(A238122(n)), A181819(n+1)]`
-/

namespace A368007.P3597681503864688456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A238122 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368007.P3597681503864688456

/-! ## A368007.P9249269301625882318

`lt[A283971(A115312(n+1)), A317390(n+2)]`
-/

namespace A368007.P9249269301625882318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 (A115312 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317390 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368007.P9249269301625882318

/-! ## A368007.P17600192651387308509

`lt[A064230(A000010(n+1)), A015128(n)]`
-/

namespace A368007.P17600192651387308509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064230 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368007.P17600192651387308509

/-! ## A368007.P3918645214220786399

`lt[A203022(A000010(n+1)), A000384(n)]`
-/

namespace A368007.P3918645214220786399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203022 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368007.P3918645214220786399

/-!
# A368010: Ordinal transform of the leading digit of the factorial numbers.

The programs for A368010, there is no canonical definition to state claims against.
-/

/-! ## A368010.P2049661930784500057

`A066451(A382851(n+2))`
-/

namespace A368010.P2049661930784500057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066451 (A382851 (n + 2)).toNat

end

end A368010.P2049661930784500057

/-! ## A368010.P404323532136736435

`A115568(∑[A104859(∏{e}[n+1, 2^#-1])])`
-/

namespace A368010.P404323532136736435
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104859 (∏ p ∈ Nat.primeFactors (f2 n), ((2 ^ Nat.factorization (f2 n) p : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115568 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A368010.P404323532136736435

/-! ## A368010.P1709806322792703172

`A073058(A030597(n+1)+A000997(n))`
-/

namespace A368010.P1709806322792703172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073058 (A030597 (n + 1) + A000997 n).toNat

end

end A368010.P1709806322792703172

/-! ## A368010.P11305340131403172632

`A055881(A152820(n+2)+A005255(n))`
-/

namespace A368010.P11305340131403172632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A152820 (n + 2) + A005255 n).toNat

end

end A368010.P11305340131403172632

/-! ## A368010.P7286302643384027664

`or(A079882(n), A168181(A230840(n+3)))`
-/

namespace A368010.P7286302643384027664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079882 n) (A168181 (A230840 (n + 3)).toNat)

end

end A368010.P7286302643384027664

/-!
# A368011: Expansion of (1/x) * Series_Reversion( x * ((1-x)^5-x^5) ).

The programs for A368011, there is no canonical definition to state claims against.
-/

/-! ## A368011.P4922875486898920034

`A000027(A130564(n+1)+C(n, 5))`
-/

namespace A368011.P4922875486898920034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A130564 (n + 1) + (Nat.choose n 5 : ℤ)).toNat

end

end A368011.P4922875486898920034

/-! ## A368011.P8941075308307130653

`A184964(∑[floor((1-n)²/2)])+A130564(n+1)`
-/

namespace A368011.P8941075308307130653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 - (n : ℤ)) ^ 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184964 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A130564 (n + 1)

end

end A368011.P8941075308307130653

/-!
# A368012: a(n) is the permanent of the n-th order Hankel matrix of Catalan numbers M(n) whose generic element is given by M(i,j) = A000108(i+j) with i,j = 0, ..., n-1.

The programs for A368012, there is no canonical definition to state claims against.
-/

/-! ## A368012.P2186225390634998140

`A368026(∑[n])`
-/

namespace A368012.P2186225390634998140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368026 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A368012.P2186225390634998140

/-! ## A368012.P17218169650212141439

`or(1, A368026((n²+n)/2))`
-/

namespace A368012.P17218169650212141439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A368026 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat)

end

end A368012.P17218169650212141439

/-! ## A368012.P13719478050206741129

`A368026(A000217(n))+A185228(n)`
-/

namespace A368012.P13719478050206741129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368026 (A000217 n).toNat + A185228 n

end

end A368012.P13719478050206741129

/-! ## A368012.P1511267369955365009

`A368026(A000217(n))+A326631(n)`
-/

namespace A368012.P1511267369955365009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368026 (A000217 n).toNat + A326631 n

end

end A368012.P1511267369955365009

/-! ## A368012.P11029240188444458101

`A036370(n)*A368026(A000217(n))`
-/

namespace A368012.P11029240188444458101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036370 n * A368026 (A000217 n).toNat

end

end A368012.P11029240188444458101

/-!
# A368017: Expansion of e.g.f. exp(exp(x) - exp(3*x)).

The programs for A368017, there is no canonical definition to state claims against.
-/

/-! ## A368017.P1017283514072751753

`A051119(A003408(n))-A014105(n)`
-/

namespace A368017.P1017283514072751753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A003408 n).toNat - A014105 n

end

end A368017.P1017283514072751753

/-!
# A368019: a(n) is the permanent of the n-th order Hankel matrix of Catalan numbers M(n) whose generic element is given by M(i,j) = A000108(i+j+1) with i,j = 0, ..., n-1.

The programs for A368019, there is no canonical definition to state claims against.
-/

/-! ## A368019.P10033847391812510959

`A368026(∑[n+1]+1)`
-/

namespace A368019.P10033847391812510959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368026 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A368019.P10033847391812510959

/-!
# A368025: Array read by ascending antidiagonals: A(n,k) is the determinant of the n-th order Hankel matrix of Catalan numbers M(n) whose generic element is given by M(i,j) = A000108(i+j+k) with i,j = 0, ..., n-1.

The programs for A368025, there is no canonical definition to state claims against.
-/

/-! ## A368025.P8353996580179698672

`A123352((2*n+1)%comp[∑[n]])`
-/

namespace A368025.P8353996580179698672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123352 ((2 * n + 1) % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A368025.P8353996580179698672

/-! ## A368025.P17864370562044426018

`A078920(A056943(n))`
-/

namespace A368025.P17864370562044426018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078920 (A056943 n).toNat

end

end A368025.P17864370562044426018

/-! ## A368025.P5182811826933695002

`A123352(n-A000194(2*n))`
-/

namespace A368025.P5182811826933695002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123352 ((n : ℤ) - A000194 (2 * n)).toNat

end

end A368025.P5182811826933695002

/-!
# A368028: Square array read by antidiagonals; T(n,k) = number of ways a vehicle with capacity k can transport n distinct individuals with distinct starting and finishing points.

The programs for A368028, there is no canonical definition to state claims against.
-/

/-! ## A368028.P18254565106825483931

`A277130(A006530(n+2)^A215977(n))`
-/

namespace A368028.P18254565106825483931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277130 (SequenceMachineLib.roundAway ((A006530 (n + 2) : ℚ) ^ (A215977 n : ℤ))).toNat

end

end A368028.P18254565106825483931

/-! ## A368028.P9413084710168616605

`A230351(8^A300756(n))`
-/

namespace A368028.P9413084710168616605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230351 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (A300756 n : ℤ))).toNat

end

end A368028.P9413084710168616605

/-! ## A368028.P14456608801261898048

`∑{e}[A318814(A238802(n)), #]`
-/

namespace A368028.P14456608801261898048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318814 (A238802 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A368028.P14456608801261898048

/-! ## A368028.P6768741881832603757

`A003842(A001644(n))*A215977(n)`
-/

namespace A368028.P6768741881832603757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A001644 n).toNat * A215977 n

end

end A368028.P6768741881832603757

/-! ## A368028.P701222530829550108

`A327094(A333213(n)^A335964(n))`
-/

namespace A368028.P701222530829550108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327094 (SequenceMachineLib.roundAway ((A333213 n : ℚ) ^ (A335964 n : ℤ))).toNat

end

end A368028.P701222530829550108

/-!
# A368030: Number of fixed midpoint-free polycubes of size n.

The programs for A368030, there is no canonical definition to state claims against.
-/

/-! ## A368030.P9022864329809992954

`floor(root(A320800(2*(n+1)), 2))`
-/

namespace A368030.P9022864329809992954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A320800 (2 * (n + 1)) : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A368030.P9022864329809992954

/-!
# A368031: Number of free treelike midpoint-free polycubes of size n, identifying rotations and reflections.

The programs for A368031, there is no canonical definition to state claims against.
-/

/-! ## A368031.P1404309189095425807

`or(A000598(n), A241568(A215074(n+1)))`
-/

namespace A368031.P1404309189095425807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000598 n) (A241568 (A215074 (n + 1)).toNat)

end

end A368031.P1404309189095425807

/-!
# A368032: Number of free linear midpoint-free polycubes of size n, identifying rotations and reflections.

The programs for A368032, there is no canonical definition to state claims against.
-/

/-! ## A368032.P2956598184557994747

`A055181(A148730(n))`
-/

namespace A368032.P2956598184557994747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055181 (A148730 n).toNat

end

end A368032.P2956598184557994747

/-! ## A368032.P9443629557954051618

`A003003(A268649(n))`
-/

namespace A368032.P9443629557954051618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (A268649 n).toNat

end

end A368032.P9443629557954051618

/-! ## A368032.P6224149461331579301

`A086431(A210736(n))`
-/

namespace A368032.P6224149461331579301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086431 (A210736 n).toNat

end

end A368032.P6224149461331579301

/-! ## A368032.P18299111892897865847

`A183210(A202850(n))`
-/

namespace A368032.P18299111892897865847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183210 (A202850 n).toNat

end

end A368032.P18299111892897865847

/-! ## A368032.P16761500776640026585

`A358733(A030227(n))`
-/

namespace A368032.P16761500776640026585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358733 (A030227 n).toNat

end

end A368032.P16761500776640026585

/-!
# A368033: E.g.f. satisfies A(x) = log(1 + x/(1 - A(x))^2).

The programs for A368033, there is no canonical definition to state claims against.
-/

/-! ## A368033.P17690722489131381119

`A176146(n^(n+1)+3)`
-/

namespace A368033.P17690722489131381119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176146 (n ^ (n + 1) + 3)

end

end A368033.P17690722489131381119

/-!
# A368038: The sum of non-unitary divisors of the nonsquarefree numbers.

The programs for A368038, the canonical program `A368038.P2030547895329606168` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368038 has offset 1).

The definition of A368038 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A048146, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368038.P2030547895329606168

`A048146(A013929(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A368038

/-- `A048146(A013929(n+1))` -/
def P2030547895329606168.Spec : Prop :=
  ∀ n, P2030547895329606168.a n = A368038 (n + 1)

theorem P2030547895329606168.correct : P2030547895329606168.Spec := by
  intro n
  simp only [A368038, Nat.add_sub_cancel]

end A368038

/-! ## A368038.P18425896148647570334

`A048146(lt[1, n*A087049(n)])`
-/

namespace A368038.P18425896148647570334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A368038.P18425896148647570334

namespace A368038

/-- `A048146(lt[1, n*A087049(n)])` -/
def P18425896148647570334.Spec : Prop :=
  ∀ n, P18425896148647570334.a n = A368038 (n + 1)

end A368038

/-! ## A368038.P10527317356478034299

`A048146(comp[C(A007913(n+1), n)])`
-/

namespace A368038.P10527317356478034299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007913 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A368038.P10527317356478034299

namespace A368038

/-- `A048146(comp[C(A007913(n+1), n)])` -/
def P10527317356478034299.Spec : Prop :=
  ∀ n, P10527317356478034299.a n = A368038 (n + 1)

end A368038

/-! ## A368038.P4930680146666962543

`A048146(lt[1, A005361(n+1)]+1)`
-/

namespace A368038.P4930680146666962543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A368038.P4930680146666962543

namespace A368038

/-- `A048146(lt[1, A005361(n+1)]+1)` -/
def P4930680146666962543.Spec : Prop :=
  ∀ n, P4930680146666962543.a n = A368038 (n + 1)

end A368038

/-! ## A368038.P9237156490200488161

`A048146(eq[2, A007424(n+1)]+1)`
-/

namespace A368038.P9237156490200488161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A368038.P9237156490200488161

namespace A368038

/-- `A048146(eq[2, A007424(n+1)]+1)` -/
def P9237156490200488161.Spec : Prop :=
  ∀ n, P9237156490200488161.a n = A368038 (n + 1)

end A368038

/-! ## A368038.P16213533166815957879

`A048146(lt[1, A051903(n+1)]+1)`
-/

namespace A368038.P16213533166815957879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A368038.P16213533166815957879

namespace A368038

/-- `A048146(lt[1, A051903(n+1)]+1)` -/
def P16213533166815957879.Spec : Prop :=
  ∀ n, P16213533166815957879.a n = A368038 (n + 1)

end A368038

/-! ## A368038.P652253731731813327

`A048146(A162966(n+2))`
-/

namespace A368038.P652253731731813327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A162966 (n + 2)).toNat

end

end A368038.P652253731731813327

namespace A368038

/-- `A048146(A162966(n+2))` -/
def P652253731731813327.Spec : Prop :=
  ∀ n, P652253731731813327.a n = A368038 (n + 1)

end A368038

/-!
# A368039: The product of exponents of prime factorization of the nonsquarefree numbers.

The programs for A368039, the canonical program `A368039.P7754328615677109513` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368039 has offset 1).

The definition of A368039 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A013929, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368039.P7754328615677109513

`A005361(A013929(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A368039

/-- `A005361(A013929(n+1))` -/
def P7754328615677109513.Spec : Prop :=
  ∀ n, P7754328615677109513.a n = A368039 (n + 1)

theorem P7754328615677109513.correct : P7754328615677109513.Spec := by
  intro n
  simp only [A368039, Nat.add_sub_cancel]

end A368039

/-! ## A368039.P10012943235457717639

`∏{e}[A368040(n+1), #]`
-/

namespace A368039.P10012943235457717639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A368039.P10012943235457717639

namespace A368039

/-- `∏{e}[A368040(n+1), #]` -/
def P10012943235457717639.Spec : Prop :=
  ∀ n, (P10012943235457717639.a n : ℤ) = A368039 (n + 1)

end A368039

/-! ## A368039.P6697661750593517609

`∏{e}[sqrt(A062320(n+1)), #]`
-/

namespace A368039.P6697661750593517609
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062320 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A368039.P6697661750593517609

namespace A368039

/-- `∏{e}[sqrt(A062320(n+1)), #]` -/
def P6697661750593517609.Spec : Prop :=
  ∀ n, (P6697661750593517609.a n : ℤ) = A368039 (n + 1)

end A368039

/-! ## A368039.P3520400324873318092

`A000005(A084936(n+1))`
-/

namespace A368039.P3520400324873318092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A084936 (n + 1)).toNat

end

end A368039.P3520400324873318092

namespace A368039

/-- `A000005(A084936(n+1))` -/
def P3520400324873318092.Spec : Prop :=
  ∀ n, P3520400324873318092.a n = A368039 (n + 1)

end A368039

/-! ## A368039.P17054858007595206141

`A005361(A368040(n+1))`
-/

namespace A368039.P17054858007595206141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A368040 (n + 1)).toNat

end

end A368039.P17054858007595206141

namespace A368039

/-- `A005361(A368040(n+1))` -/
def P17054858007595206141.Spec : Prop :=
  ∀ n, P17054858007595206141.a n = A368039 (n + 1)

end A368039

/-! ## A368039.P14827296352126468671

`A000005(A013929(n+1)/A076333(n+1))`
-/

namespace A368039.P14827296352126468671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A013929 (n + 1) : ℚ) / (A076333 (n + 1) : ℚ))).toNat

end

end A368039.P14827296352126468671

namespace A368039

/-- `A000005(A013929(n+1)/A076333(n+1))` -/
def P14827296352126468671.Spec : Prop :=
  ∀ n, P14827296352126468671.a n = A368039 (n + 1)

end A368039

/-! ## A368039.P2337594263179766091

`∏{e}[A162966(n+2), #]`
-/

namespace A368039.P2337594263179766091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A368039.P2337594263179766091

namespace A368039

/-- `∏{e}[A162966(n+2), #]` -/
def P2337594263179766091.Spec : Prop :=
  ∀ n, (P2337594263179766091.a n : ℤ) = A368039 (n + 1)

end A368039

/-! ## A368039.P17339511824611348557

`A005361(A162966(n+2))`
-/

namespace A368039.P17339511824611348557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A162966 (n + 2)).toNat

end

end A368039.P17339511824611348557

namespace A368039

/-- `A005361(A162966(n+2))` -/
def P17339511824611348557.Spec : Prop :=
  ∀ n, P17339511824611348557.a n = A368039 (n + 1)

end A368039

/-! ## A368039.P2461547051430636773

`∏{e}[lt[1, ∏{e}[n, #]], #]`
-/

namespace A368039.P2461547051430636773
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A368039.P2461547051430636773

namespace A368039

/-- `∏{e}[lt[1, ∏{e}[n, #]], #]` -/
def P2461547051430636773.Spec : Prop :=
  ∀ n, (P2461547051430636773.a n : ℤ) = A368039 (n + 1)

end A368039

/-!
# A368040: The powerful part of the nonsquarefree numbers.

The programs for A368040, the canonical program `A368040.P1470060828506314969` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368040 has offset 1).

The definition of A368040 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368040.P1470060828506314969

`A057521(A013929(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A368040

/-- `A057521(A013929(n+1))` -/
def P1470060828506314969.Spec : Prop :=
  ∀ n, P1470060828506314969.a n = A368040 (n + 1)

theorem P1470060828506314969.correct : P1470060828506314969.Spec := by
  intro n
  simp only [A368040, Nat.add_sub_cancel]

end A368040

/-! ## A368040.P11896718485750721849

`A064549(A084936(n+1))`
-/

namespace A368040.P11896718485750721849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A084936 (n + 1)).toNat

end

end A368040.P11896718485750721849

namespace A368040

/-- `A064549(A084936(n+1))` -/
def P11896718485750721849.Spec : Prop :=
  ∀ n, P11896718485750721849.a n = A368040 (n + 1)

end A368040

/-! ## A368040.P5826066821494997673

`A057521(A162966(n+2))`
-/

namespace A368040.P5826066821494997673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A162966 (n + 2)).toNat

end

end A368040.P5826066821494997673

namespace A368040

/-- `A057521(A162966(n+2))` -/
def P5826066821494997673.Spec : Prop :=
  ∀ n, P5826066821494997673.a n = A368040 (n + 1)

end A368040

/-! ## A368040.P8663288526238796481

`A057521(eq[2, A007424(n+1)]+1)`
-/

namespace A368040.P8663288526238796481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A368040.P8663288526238796481

namespace A368040

/-- `A057521(eq[2, A007424(n+1)]+1)` -/
def P8663288526238796481.Spec : Prop :=
  ∀ n, P8663288526238796481.a n = A368040 (n + 1)

end A368040

/-! ## A368040.P7700815300797590748

`filter[A057521(n+1), A043545(#)]`
-/

namespace A368040.P7700815300797590748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A368040.P7700815300797590748

namespace A368040

/-- `filter[A057521(n+1), A043545(#)]` -/
def P7700815300797590748.Spec : Prop :=
  ∀ n, P7700815300797590748.a n = A368040 (n + 1)

end A368040

/-! ## A368040.P4586987120890223443

`filter[A057521(n+1), A066247(#)]`
-/

namespace A368040.P4586987120890223443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A368040.P4586987120890223443

namespace A368040

/-- `filter[A057521(n+1), A066247(#)]` -/
def P4586987120890223443.Spec : Prop :=
  ∀ n, P4586987120890223443.a n = A368040 (n + 1)

end A368040

/-! ## A368040.P597264263467382818

`filter[A057521(n+1), A107078(#)]`
-/

namespace A368040.P597264263467382818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A368040.P597264263467382818

namespace A368040

/-- `filter[A057521(n+1), A107078(#)]` -/
def P597264263467382818.Spec : Prop :=
  ∀ n, P597264263467382818.a n = A368040 (n + 1)

end A368040

/-! ## A368040.P8883356645287440600

`filter[A057521(n+1), A267776(#)]`
-/

namespace A368040.P8883356645287440600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267776 (f1 j).toNat = 1) n)

end

end A368040.P8883356645287440600

namespace A368040

/-- `filter[A057521(n+1), A267776(#)]` -/
def P8883356645287440600.Spec : Prop :=
  ∀ n, P8883356645287440600.a n = A368040 (n + 1)

end A368040

/-! ## A368040.P9818154115550996409

`filter[A057521(n+1), A267922(#)]`
-/

namespace A368040.P9818154115550996409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267922 (f1 j).toNat = 1) n)

end

end A368040.P9818154115550996409

namespace A368040

/-- `filter[A057521(n+1), A267922(#)]` -/
def P9818154115550996409.Spec : Prop :=
  ∀ n, P9818154115550996409.a n = A368040 (n + 1)

end A368040

/-! ## A368040.P12890987231852761108

`filter[A057521(n+1), A267442(#)]`
-/

namespace A368040.P12890987231852761108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A368040.P12890987231852761108

namespace A368040

/-- `filter[A057521(n+1), A267442(#)]` -/
def P12890987231852761108.Spec : Prop :=
  ∀ n, P12890987231852761108.a n = A368040 (n + 1)

end A368040

/-!
# A368041: a(n) is the least number k such that k^2 can be written as the difference of two positive squares in exactly n ways.

The programs for A368041, there is no canonical definition to state claims against.
-/

/-! ## A368041.P16333760205837399019

`sqrt(A246063(2*n+1))`
-/

namespace A368041.P16333760205837399019
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A246063 (2 * n + 1) : ℝ)

end

end A368041.P16333760205837399019

/-! ## A368041.P1780853150282565763

`A389906(A016017(n+1))`
-/

namespace A368041.P1780853150282565763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389906 (A016017 (n + 1)).toNat

end

end A368041.P1780853150282565763

/-! ## A368041.P5227906964282395763

`A389910(A122842(n+1))`
-/

namespace A368041.P5227906964282395763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389910 (A122842 (n + 1)).toNat

end

end A368041.P5227906964282395763

/-!
# A368042: Moduli k for which the number of quadratic residues mod k coprime to k is phi(k)/2^r for positive r = (phi(k)/lambda(k)) - x, x > 0, where lambda is Carmichael's function. Complement of A366935.

The programs for A368042, there is no canonical definition to state claims against.
-/

/-! ## A368042.P16285257522177634692

`comp[A366935(n+1)-1]+1`
-/

namespace A368042.P16285257522177634692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366935 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A368042.P16285257522177634692

/-!
# A368043: Triangle read by rows: T(n, k) = 2^(n + k).

The programs for A368043, the canonical program `A368043.P12961776038135060938` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368043 has offset 0).

The definition of A368043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368043.P6572719547288085177

`2^(n-C(∑[char[∑[n+1]]], 2))`
-/

namespace A368043.P6572719547288085177
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ)

end

end A368043.P6572719547288085177

namespace A368043

/-- `2^(n-C(∑[char[∑[n+1]]], 2))` -/
def P6572719547288085177.Spec : Prop :=
  ∀ n, P6572719547288085177.a n = (A368043 n : ℚ)

end A368043

/-! ## A368043.P636006638653886093

`2^(2*n-eq[0, floor(2*sqrt(n))%2])`
-/

namespace A368043.P636006638653886093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) : ℤ)

end

end A368043.P636006638653886093

namespace A368043

/-- `2^(2*n-eq[0, floor(2*sqrt(n))%2])` -/
def P636006638653886093.Spec : Prop :=
  ∀ n, P636006638653886093.a n = (A368043 n : ℚ)

end A368043

/-! ## A368043.P14869531167555581415

`2^A051162(n)`
-/

namespace A368043.P14869531167555581415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A051162 n : ℤ)

end

end A368043.P14869531167555581415

namespace A368043

/-- `2^A051162(n)` -/
def P14869531167555581415.Spec : Prop :=
  ∀ n, P14869531167555581415.a n = (A368043 n : ℚ)

end A368043

/-! ## A368043.P5413447124020786219

`2^floor(log2(A130324(n)))`
-/

namespace A368043.P5413447124020786219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.log 2 (A130324 n).toNat

end

end A368043.P5413447124020786219

namespace A368043

/-- `2^floor(log2(A130324(n)))` -/
def P5413447124020786219.Spec : Prop :=
  ∀ n, (P5413447124020786219.a n : ℤ) = A368043 n

end A368043

/-! ## A368043.P3968052776028071352

`2^(A094727(n+1)-1)`
-/

namespace A368043.P3968052776028071352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A094727 (n + 1) - 1 : ℤ)

end

end A368043.P3968052776028071352

namespace A368043

/-- `2^(A094727(n+1)-1)` -/
def P3968052776028071352.Spec : Prop :=
  ∀ n, P3968052776028071352.a n = (A368043 n : ℚ)

end A368043

/-! ## A368043.P2932629390118314087

`2^(A108872(n+1)-2)`
-/

namespace A368043.P2932629390118314087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A108872 (n + 1) - 2 : ℤ)

end

end A368043.P2932629390118314087

namespace A368043

/-- `2^(A108872(n+1)-2)` -/
def P2932629390118314087.Spec : Prop :=
  ∀ n, P2932629390118314087.a n = (A368043 n : ℚ)

end A368043

/-! ## A368043.P13217731447568736565

`2^((A131432(n)-1)/3)`
-/

namespace A368043.P13217731447568736565
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((A131432 n - 1 : ℚ) / 3 : ℝ)

end

end A368043.P13217731447568736565

namespace A368043

/-- `2^((A131432(n)-1)/3)` -/
def P13217731447568736565.Spec : Prop :=
  ∀ n, P13217731447568736565.a n = (A368043 n : ℝ)

end A368043

/-! ## A368043.P12961776038135060938

`2*a(n-A144112(n))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A368043

/-- `2*a(n-A144112(n))` -/
def P12961776038135060938.Spec : Prop :=
  ∀ n, (P12961776038135060938.a n : ℤ) = A368043 n

theorem P12961776038135060938.correct : P12961776038135060938.Spec := by
  intro n
  simp only [A368043]

end A368043

/-! ## A368043.P10388751561774330794

`∏[char[∑[n+1]]+1]*A059268(n)`
-/

namespace A368043.P10388751561774330794
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A059268 n

end

end A368043.P10388751561774330794

namespace A368043

/-- `∏[char[∑[n+1]]+1]*A059268(n)` -/
def P10388751561774330794.Spec : Prop :=
  ∀ n, P10388751561774330794.a n = A368043 n

end A368043

/-! ## A368043.P474568279125344869

`A000079(2*n-eq[0, floor(2*sqrt(n))%2])`
-/

namespace A368043.P474568279125344869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n - SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A368043.P474568279125344869

namespace A368043

/-- `A000079(2*n-eq[0, floor(2*sqrt(n))%2])` -/
def P474568279125344869.Spec : Prop :=
  ∀ n, P474568279125344869.a n = A368043 n

end A368043

/-! ## A368043.P11240126377128526214

`A000079(A051162(n))`
-/

namespace A368043.P11240126377128526214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A051162 n).toNat

end

end A368043.P11240126377128526214

namespace A368043

/-- `A000079(A051162(n))` -/
def P11240126377128526214.Spec : Prop :=
  ∀ n, P11240126377128526214.a n = A368043 n

end A368043

/-! ## A368043.P11599171790649225959

`A173862(A131432(n))`
-/

namespace A368043.P11599171790649225959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173862 (A131432 n).toNat

end

end A368043.P11599171790649225959

namespace A368043

/-- `A173862(A131432(n))` -/
def P11599171790649225959.Spec : Prop :=
  ∀ n, P11599171790649225959.a n = A368043 n

end A368043

/-! ## A368043.P2708883546546578832

`A011782(A094727(n+1))`
-/

namespace A368043.P2708883546546578832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A094727 (n + 1)).toNat

end

end A368043.P2708883546546578832

namespace A368043

/-- `A011782(A094727(n+1))` -/
def P2708883546546578832.Spec : Prop :=
  ∀ n, P2708883546546578832.a n = A368043 n

end A368043

/-! ## A368043.P7129810691842503067

`A034008(A108872(n+1))`
-/

namespace A368043.P7129810691842503067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A108872 (n + 1)).toNat

end

end A368043.P7129810691842503067

namespace A368043

/-- `A034008(A108872(n+1))` -/
def P7129810691842503067.Spec : Prop :=
  ∀ n, P7129810691842503067.a n = A368043 n

end A368043

/-! ## A368043.P8200210563076424158

`A016116(A131421(n+1))`
-/

namespace A368043.P8200210563076424158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A131421 (n + 1)).toNat

end

end A368043.P8200210563076424158

namespace A368043

/-- `A016116(A131421(n+1))` -/
def P8200210563076424158.Spec : Prop :=
  ∀ n, P8200210563076424158.a n = A368043 n

end A368043

/-! ## A368043.P15576563182192272313

`A059268(n)*A137688(n)`
-/

namespace A368043.P15576563182192272313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A137688 n

end

end A368043.P15576563182192272313

namespace A368043

/-- `A059268(n)*A137688(n)` -/
def P15576563182192272313.Spec : Prop :=
  ∀ n, P15576563182192272313.a n = A368043 n

end A368043

/-! ## A368043.P2936428838270019647

`A059268(n)²*A130321(n)`
-/

namespace A368043.P2936428838270019647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A130321 n

end

end A368043.P2936428838270019647

namespace A368043

/-- `A059268(n)²*A130321(n)` -/
def P2936428838270019647.Spec : Prop :=
  ∀ n, P2936428838270019647.a n = A368043 n

end A368043

/-! ## A368043.P18034220567141909337

`A038210(n)/A007318(n)`
-/

namespace A368043.P18034220567141909337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038210 n : ℚ) / (A007318 n : ℚ)

end

end A368043.P18034220567141909337

namespace A368043

/-- `A038210(n)/A007318(n)` -/
def P18034220567141909337.Spec : Prop :=
  ∀ n, P18034220567141909337.a n = (A368043 n : ℚ)

end A368043

/-! ## A368043.P3537886146342028554

`A038234(n)/A038207(n)`
-/

namespace A368043.P3537886146342028554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038234 n : ℚ) / (A038207 n : ℚ)

end

end A368043.P3537886146342028554

namespace A368043

/-- `A038234(n)/A038207(n)` -/
def P3537886146342028554.Spec : Prop :=
  ∀ n, P3537886146342028554.a n = (A368043 n : ℚ)

end A368043

/-! ## A368043.P11029736083067489281

`A038214(n)/A013609(n)`
-/

namespace A368043.P11029736083067489281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038214 n : ℚ) / (A013609 n : ℚ)

end

end A368043.P11029736083067489281

namespace A368043

/-- `A038214(n)/A013609(n)` -/
def P11029736083067489281.Spec : Prop :=
  ∀ n, P11029736083067489281.a n = (A368043 n : ℚ)

end A368043

/-!
# A368046: a(n) = ((n + 1)^2 * (5*n + 4)*n) / 12.

The programs for A368046, the canonical program `A368046.P8824552285905397958` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368046 has offset 0).

The definition of A368046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368046.P8824552285905397958

`(n+1)²*(5*n+4)*n/12`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A368046

/-- `(n+1)²*(5*n+4)*n/12` -/
def P8824552285905397958.Spec : Prop :=
  ∀ n, P8824552285905397958.a n = (A368046 n : ℚ)

end A368046

/-! ## A368046.P6364680996971924807

`Δ[C(n+1, 2)*C(n+1, 3)]`
-/

namespace A368046.P6364680996971924807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 * Nat.choose (n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A368046.P6364680996971924807

namespace A368046

/-- `Δ[C(n+1, 2)*C(n+1, 3)]` -/
def P6364680996971924807.Spec : Prop :=
  ∀ n, P6364680996971924807.a n = A368046 n

end A368046

/-! ## A368046.P11286352724534267279

`∑[a(n-1)+5]/3*∑[n]` with `a(0)=2`
-/

namespace A368046.P11286352724534267279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A368046.P11286352724534267279

namespace A368046

/-- `∑[a(n-1)+5]/3*∑[n]` -/
def P11286352724534267279.Spec : Prop :=
  ∀ n, P11286352724534267279.a n = (A368046 n : ℚ)

end A368046

/-! ## A368046.P12162740783838456349

`∑[A174814(n)-n²]`
-/

namespace A368046.P12162740783838456349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174814 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368046.P12162740783838456349

namespace A368046

/-- `∑[A174814(n)-n²]` -/
def P12162740783838456349.Spec : Prop :=
  ∀ n, P12162740783838456349.a n = A368046 n

end A368046

/-! ## A368046.P13353019465939084144

`(n+1)/2*A162147(n)`
-/

namespace A368046.P13353019465939084144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A162147 n : ℚ)

end

end A368046.P13353019465939084144

namespace A368046

/-- `(n+1)/2*A162147(n)` -/
def P13353019465939084144.Spec : Prop :=
  ∀ n, P13353019465939084144.a n = (A368046 n : ℚ)

end A368046

/-! ## A368046.P1763344186595891748

`A008911(n+1)+∑[n]²`
-/

namespace A368046.P1763344186595891748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A368046.P1763344186595891748

namespace A368046

/-- `A008911(n+1)+∑[n]²` -/
def P1763344186595891748.Spec : Prop :=
  ∀ n, P1763344186595891748.a n = A368046 n

end A368046

/-! ## A368046.P8624726867593621052

`(n+1)/4*A144945(n+1)`
-/

namespace A368046.P8624726867593621052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (A144945 (n + 1) : ℚ)

end

end A368046.P8624726867593621052

namespace A368046

/-- `(n+1)/4*A144945(n+1)` -/
def P8624726867593621052.Spec : Prop :=
  ∀ n, P8624726867593621052.a n = (A368046 n : ℚ)

end A368046

/-! ## A368046.P391346541456876259

`A117066(n+1)-(n+1)^3`
-/

namespace A368046.P391346541456876259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117066 (n + 1) - ((n + 1) ^ 3 : ℤ)

end

end A368046.P391346541456876259

namespace A368046

/-- `A117066(n+1)-(n+1)^3` -/
def P391346541456876259.Spec : Prop :=
  ∀ n, P391346541456876259.a n = A368046 n

end A368046

/-! ## A368046.P229663999685956529

`A236770(n)+A005582(n)`
-/

namespace A368046.P229663999685956529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236770 n + A005582 n

end

end A368046.P229663999685956529

namespace A368046

/-- `A236770(n)+A005582(n)` -/
def P229663999685956529.Spec : Prop :=
  ∀ n, P229663999685956529.a n = A368046 n

end A368046

/-! ## A368046.P3956561257525017342

`A289643(n)+A002415(n)`
-/

namespace A368046.P3956561257525017342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289643 n + A002415 n

end

end A368046.P3956561257525017342

namespace A368046

/-- `A289643(n)+A002415(n)` -/
def P3956561257525017342.Spec : Prop :=
  ∀ n, P3956561257525017342.a n = A368046 n

end A368046

/-! ## A368046.P17790402045161009299

`A160769(n)-A160768(n)`
-/

namespace A368046.P17790402045161009299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160769 n - A160768 n

end

end A368046.P17790402045161009299

namespace A368046

/-- `A160769(n)-A160768(n)` -/
def P17790402045161009299.Spec : Prop :=
  ∀ n, P17790402045161009299.a n = A368046 n

end A368046

/-! ## A368046.P1949505122663860621

`A160787(n)-A160769(n)`
-/

namespace A368046.P1949505122663860621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160787 n - A160769 n

end

end A368046.P1949505122663860621

namespace A368046

/-- `A160787(n)-A160769(n)` -/
def P1949505122663860621.Spec : Prop :=
  ∀ n, P1949505122663860621.a n = A368046 n

end A368046

/-! ## A368046.P18007252570832854555

`A330805(n)-A033487(n)`
-/

namespace A368046.P18007252570832854555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330805 n - A033487 n

end

end A368046.P18007252570832854555

namespace A368046

/-- `A330805(n)-A033487(n)` -/
def P18007252570832854555.Spec : Prop :=
  ∀ n, P18007252570832854555.a n = A368046 n

end A368046

/-! ## A368046.P3744594175533531585

`A185355(n+1)+A006002(n)`
-/

namespace A368046.P3744594175533531585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185355 (n + 1) + A006002 n

end

end A368046.P3744594175533531585

namespace A368046

/-- `A185355(n+1)+A006002(n)` -/
def P3744594175533531585.Spec : Prop :=
  ∀ n, P3744594175533531585.a n = A368046 n

end A368046

/-! ## A368046.P7192154831590057470

`A185788(n+1)+A139594(n)`
-/

namespace A368046.P7192154831590057470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185788 (n + 1) + A139594 n

end

end A368046.P7192154831590057470

namespace A368046

/-- `A185788(n+1)+A139594(n)` -/
def P7192154831590057470.Spec : Prop :=
  ∀ n, P7192154831590057470.a n = A368046 n

end A368046

/-! ## A368046.P13616595248589620384

`A172123(n+1)-A006007(n)`
-/

namespace A368046.P13616595248589620384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172123 (n + 1) - A006007 n

end

end A368046.P13616595248589620384

namespace A368046

/-- `A172123(n+1)-A006007(n)` -/
def P13616595248589620384.Spec : Prop :=
  ∀ n, P13616595248589620384.a n = A368046 n

end A368046

/-! ## A368046.P5352635859548638726

`A187452(n+1)-A011934(n)`
-/

namespace A368046.P5352635859548638726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187452 (n + 1) - A011934 n

end

end A368046.P5352635859548638726

namespace A368046

/-- `A187452(n+1)-A011934(n)` -/
def P5352635859548638726.Spec : Prop :=
  ∀ n, P5352635859548638726.a n = A368046 n

end A368046

/-! ## A368046.P15344032992355255866

`A374083(n+1)-A126274(n)`
-/

namespace A368046.P15344032992355255866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374083 (n + 1) - A126274 n

end

end A368046.P15344032992355255866

namespace A368046

/-- `A374083(n+1)-A126274(n)` -/
def P15344032992355255866.Spec : Prop :=
  ∀ n, P15344032992355255866.a n = A368046 n

end A368046

/-! ## A368046.P6444297326301086979

`A000217(n)+2*A002418(n)`
-/

namespace A368046.P6444297326301086979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 2 * A002418 n

end

end A368046.P6444297326301086979

namespace A368046

/-- `A000217(n)+2*A002418(n)` -/
def P6444297326301086979.Spec : Prop :=
  ∀ n, P6444297326301086979.a n = A368046 n

end A368046

/-! ## A368046.P17553186974212752125

`A185505(n+1)-A002417(n+1)`
-/

namespace A368046.P17553186974212752125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185505 (n + 1) - A002417 (n + 1)

end

end A368046.P17553186974212752125

namespace A368046

/-- `A185505(n+1)-A002417(n+1)` -/
def P17553186974212752125.Spec : Prop :=
  ∀ n, P17553186974212752125.a n = A368046 n

end A368046

/-!
# A368047: a(n) = (-1)^n * n*(n + 1)*(2*n + (-1)^n * (4*n + 5) + 1) / 12.

The programs for A368047, the canonical program `A368047.P13675452592340453141` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368047 has offset 0).

The definition of A368047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368047.P13675452592340453141

`(-1)^n*n*(n+1)*(2*n+(-1)^n*(4*n+5)+1)/12`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A368047

/-- `(-1)^n*n*(n+1)*(2*n+(-1)^n*(4*n+5)+1)/12` -/
def P13675452592340453141.Spec : Prop :=
  ∀ n, P13675452592340453141.a n = (A368047 n : ℚ)

end A368047

/-! ## A368047.P648204659700128719

`A000330(A237420(n))+A000292(n)`
-/

namespace A368047.P648204659700128719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A237420 n).toNat + A000292 n

end

end A368047.P648204659700128719

namespace A368047

/-- `A000330(A237420(n))+A000292(n)` -/
def P648204659700128719.Spec : Prop :=
  ∀ n, P648204659700128719.a n = A368047 n

end A368047

/-! ## A368047.P2852304370665251350

`A000217(n+1)/A064455(n+1)*A000217(n)`
-/

namespace A368047.P2852304370665251350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) : ℚ) / (A064455 (n + 1) : ℚ) * (A000217 n : ℚ)

end

end A368047.P2852304370665251350

namespace A368047

/-- `A000217(n+1)/A064455(n+1)*A000217(n)` -/
def P2852304370665251350.Spec : Prop :=
  ∀ n, P2852304370665251350.a n = (A368047 n : ℚ)

end A368047

/-!
# A368048: a(n) = lcm_{p in Partitions(n)} (Product_{t in p}(t + m)), where m = 2.

The programs for A368048, there is no canonical definition to state claims against.
-/

/-! ## A368048.P14500961429019192847

`A016116(n)²*A368092(n)`
-/

namespace A368048.P14500961429019192847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n ^ 2 * A368092 n

end

end A368048.P14500961429019192847

/-! ## A368048.P9510032556845691398

`A368116(∑[n+3])`
-/

namespace A368048.P9510032556845691398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368116 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A368048.P9510032556845691398

/-!
# A368050: Main diagonal of the array where row n=0 lists the natural numbers and each new row n=1,2,... is found by taking the number n in the previous row, and "leaping" it over the next n terms to its right, keeping the other numbers fixed (see example).

The programs for A368050, the canonical program `A368050.P9877690928199603770` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368050 has offset 1).

The definition of A368050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368050.P9877690928199603770

`A193564(2*n+3)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A368050

/-- `A193564(2*n+3)` -/
def P9877690928199603770.Spec : Prop :=
  ∀ n, P9877690928199603770.a n = A368050 (n + 1)

theorem P9877690928199603770.correct : P9877690928199603770.Spec := by
  intro n
  simp only [A368050, Nat.add_sub_cancel]

end A368050

/-! ## A368050.P5254991277089245346

`A026272(Δ[n²])`
-/

namespace A368050.P5254991277089245346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A368050.P5254991277089245346

namespace A368050

/-- `A026272(Δ[n²])` -/
def P5254991277089245346.Spec : Prop :=
  ∀ n, P5254991277089245346.a n = A368050 (n + 1)

end A368050

/-! ## A368050.P3501640032806238267

`A000027(A026272(2*n+1))`
-/

namespace A368050.P3501640032806238267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A026272 (2 * n + 1)).toNat

end

end A368050.P3501640032806238267

namespace A368050

/-- `A000027(A026272(2*n+1))` -/
def P3501640032806238267.Spec : Prop :=
  ∀ n, P3501640032806238267.a n = A368050 (n + 1)

end A368050

/-! ## A368050.P8775073893107526094

`A026242(2*n+3)-1`
-/

namespace A368050.P8775073893107526094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (2 * n + 3) - 1

end

end A368050.P8775073893107526094

namespace A368050

/-- `A026242(2*n+3)-1` -/
def P8775073893107526094.Spec : Prop :=
  ∀ n, P8775073893107526094.a n = A368050 (n + 1)

end A368050

/-! ## A368050.P3406793659578202265

`A026350(2*(n+2))-2`
-/

namespace A368050.P3406793659578202265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026350 (2 * (n + 2)) - 2

end

end A368050.P3406793659578202265

namespace A368050

/-- `A026350(2*(n+2))-2` -/
def P3406793659578202265.Spec : Prop :=
  ∀ n, P3406793659578202265.a n = A368050 (n + 1)

end A368050

/-! ## A368050.P2403533912408166990

`A026242(A001950(A026272(n+1+n)))`
-/

namespace A368050.P2403533912408166990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (A001950 (A026272 (n + 1 + n)).toNat).toNat

end

end A368050.P2403533912408166990

namespace A368050

/-- `A026242(A001950(A026272(n+1+n)))` -/
def P2403533912408166990.Spec : Prop :=
  ∀ n, P2403533912408166990.a n = A368050 (n + 1)

end A368050

/-! ## A368050.P2010334557092250230

`A019586(A080746(2*(n+1)))`
-/

namespace A368050.P2010334557092250230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A080746 (2 * (n + 1))).toNat

end

end A368050.P2010334557092250230

namespace A368050

/-- `A019586(A080746(2*(n+1)))` -/
def P2010334557092250230.Spec : Prop :=
  ∀ n, P2010334557092250230.a n = A368050 (n + 1)

end A368050

/-! ## A368050.P16365099861254456330

`A380079(A380079(2*n+1))`
-/

namespace A368050.P16365099861254456330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380079 (A380079 (2 * n + 1)).toNat

end

end A368050.P16365099861254456330

namespace A368050

/-- `A380079(A380079(2*n+1))` -/
def P16365099861254456330.Spec : Prop :=
  ∀ n, P16365099861254456330.a n = A368050 (n + 1)

end A368050

/-!
# A368051: Successive primes building the lexicographically earliest k X k 'Futility Squares' (see the Comment and Example sections for more explanations).

The programs for A368051, there is no canonical definition to state claims against.
-/

/-! ## A368051.P1375030930969289886

`A164333(A003586(2*n+1)*A324058(n))`
-/

namespace A368051.P1375030930969289886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164333 (A003586 (2 * n + 1) * A324058 n).toNat

end

end A368051.P1375030930969289886

/-!
# A368052: The degree of polynomials related to Somos-4 sequences. Also for n > 2 the degree of the (n-3)-th involution in a family of involutions in the Cremona group of rank 3 defined by a Somos-4 sequence.

The programs for A368052, the canonical program `A368052.P11723954498773587361` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368052 has offset 0).

The definition of A368052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368052.P11723954498773587361

`A002620(n)-A004524(A032766(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A368052

/-- `A002620(n)-A004524(A032766(n))` -/
def P11723954498773587361.Spec : Prop :=
  ∀ n, P11723954498773587361.a n = A368052 n

theorem P11723954498773587361.correct : P11723954498773587361.Spec := by
  intro n
  simp only [A368052]

end A368052

/-! ## A368052.P6946552625209687520

`A002620(n)-A004524(A004526(3*n))`
-/

namespace A368052.P6946552625209687520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n - A004524 (A004526 (3 * n)).toNat

end

end A368052.P6946552625209687520

namespace A368052

/-- `A002620(n)-A004524(A004526(3*n))` -/
def P6946552625209687520.Spec : Prop :=
  ∀ n, P6946552625209687520.a n = A368052 n

theorem P6946552625209687520.correct : P6946552625209687520.Spec := by
  intro n
  simp only [A368052, Nat.add_sub_cancel, A368052.P6946552625209687520.a, A368052.P11723954498773587361.a, A002620, A002620.P9002536657626793813.a, A004524, A004524.P8943215836771390324.a, A004526, A004526.P10084182425416171735.a, A032766, A032766.P1975864606945388751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A368052

/-! ## A368052.P6580642579634987849

`A004524(∑[n-2]+4)`
-/

namespace A368052.P6580642579634987849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A368052.P6580642579634987849

namespace A368052

/-- `A004524(∑[n-2]+4)` -/
def P6580642579634987849.Spec : Prop :=
  ∀ n, P6580642579634987849.a n = A368052 n

end A368052

/-! ## A368052.P11875911773617036650

`A004524(A000096(n+1))-2*n`
-/

namespace A368052.P11875911773617036650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A000096 (n + 1)).toNat - (2 * n : ℤ)

end

end A368052.P11875911773617036650

namespace A368052

/-- `A004524(A000096(n+1))-2*n` -/
def P11875911773617036650.Spec : Prop :=
  ∀ n, P11875911773617036650.a n = A368052 n

end A368052

/-! ## A368052.P16463549933374408689

`A004525(A000217(n+2))-(2*n+1)`
-/

namespace A368052.P16463549933374408689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000217 (n + 2)).toNat - (2 * n + 1 : ℤ)

end

end A368052.P16463549933374408689

namespace A368052

/-- `A004525(A000217(n+2))-(2*n+1)` -/
def P16463549933374408689.Spec : Prop :=
  ∀ n, P16463549933374408689.a n = A368052 n

end A368052

/-! ## A368052.P17250639517558711240

`A173711(A118403(n))`
-/

namespace A368052.P17250639517558711240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173711 (A118403 n).toNat

end

end A368052.P17250639517558711240

namespace A368052

/-- `A173711(A118403(n))` -/
def P17250639517558711240.Spec : Prop :=
  ∀ n, P17250639517558711240.a n = A368052 n

end A368052

/-!
# A368053: Array read by descending antidiagonals, where row n=0 lists the natural numbers. Each new row n=1,2,... is found by taking the number n in the previous row and "leaping" it over the next n terms to its right, while reversing the order of the skipped terms. (see example).

The programs for A368053, there is no canonical definition to state claims against.
-/

/-! ## A368053.P16415213045772752555

`A004737(A220073(n+1)+A060736(n+1))`
-/

namespace A368053.P16415213045772752555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A220073 (n + 1) + A060736 (n + 1)).toNat

end

end A368053.P16415213045772752555

/-! ## A368053.P5349353326430816033

`A237447(n+1)*A330098(A034891(n))`
-/

namespace A368053.P5349353326430816033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237447 (n + 1) * A330098 (A034891 n).toNat

end

end A368053.P5349353326430816033

/-! ## A368053.P12332705348717951116

`A237447(n+1)*A330098(A245397(n+1))`
-/

namespace A368053.P12332705348717951116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237447 (n + 1) * A330098 (A245397 (n + 1)).toNat

end

end A368053.P12332705348717951116

/-! ## A368053.P27345996612561126

`A286400(A011782(n))+A130517(n+1)`
-/

namespace A368053.P27345996612561126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286400 (A011782 n).toNat + A130517 (n + 1)

end

end A368053.P27345996612561126

/-! ## A368053.P4160168403813794567

`A342753(A195962(3*(n+1)))+A237447(n+1)`
-/

namespace A368053.P4160168403813794567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342753 (A195962 (3 * (n + 1))).toNat + A237447 (n + 1)

end

end A368053.P4160168403813794567

/-!
# A368058: Sum of the smaller parts of the partitions of n into two distinct parts with larger part prime.

The programs for A368058, the canonical program `A368058.P11609945365760646763` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368058 has offset 1).

The definition of A368058 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294487, A294602, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368058.P11609945365760646763

`(n+1)*A294602(n+1)-A294487(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A368058

/-- `(n+1)*A294602(n+1)-A294487(n+1)` -/
def P11609945365760646763.Spec : Prop :=
  ∀ n, P11609945365760646763.a n = A368058 (n + 1)

theorem P11609945365760646763.correct : P11609945365760646763.Spec := by
  intro n
  simp only [A368058, Nat.add_sub_cancel]

end A368058

/-! ## A368058.P16828523904724518166

`A294487(n+1)-A294022(n+1)`
-/

namespace A368058.P16828523904724518166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294487 (n + 1) - A294022 (n + 1)

end

end A368058.P16828523904724518166

namespace A368058

/-- `A294487(n+1)-A294022(n+1)` -/
def P16828523904724518166.Spec : Prop :=
  ∀ n, P16828523904724518166.a n = A368058 (n + 1)

theorem P16828523904724518166.correct : P16828523904724518166.Spec := by
  intro n
  simp only [A368058, Nat.add_sub_cancel, A368058.P16828523904724518166.a, A368058.P11609945365760646763.a, A294022, A294022.P1258060895145082735.a, A294487, A294487.P4199886076242480061.f1, A294487.P4199886076242480061.a, A294602, A294602.P13576382201682243121.a, A010051, A010051.P15078252821583414300.a, A056171, A056171.P2104246229896061761.a, A063955, A063955.P15955011138369882518.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A034387, A034387.P4934732080317010833.a, A065033, A065033.P13150710762287634520.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A158662, A158662.P939245884081380887.f2, A158662.P939245884081380887.f1, A158662.P939245884081380887.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A368058

/-! ## A368058.P16410792199274142279

`A294111(n+2)-A056171(n+1)`
-/

namespace A368058.P16410792199274142279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294111 (n + 2) - A056171 (n + 1)

end

end A368058.P16410792199274142279

namespace A368058

/-- `A294111(n+2)-A056171(n+1)` -/
def P16410792199274142279.Spec : Prop :=
  ∀ n, P16410792199274142279.a n = A368058 (n + 1)

end A368058

/-! ## A368058.P6045468653989605288

`A294111(n+2)-(A294602(n+1)+A010051(n+1))`
-/

namespace A368058.P6045468653989605288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294111 (n + 2) - (A294602 (n + 1) + A010051 (n + 1))

end

end A368058.P6045468653989605288

namespace A368058

/-- `A294111(n+2)-(A294602(n+1)+A010051(n+1))` -/
def P6045468653989605288.Spec : Prop :=
  ∀ n, P6045468653989605288.a n = A368058 (n + 1)

end A368058

/-! ## A368058.P11448440271195929613

`A317056(A018819(n)*A038792(n+1))`
-/

namespace A368058.P11448440271195929613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317056 (A018819 n * A038792 (n + 1)).toNat

end

end A368058.P11448440271195929613

namespace A368058

/-- `A317056(A018819(n)*A038792(n+1))` -/
def P11448440271195929613.Spec : Prop :=
  ∀ n, P11448440271195929613.a n = A368058 (n + 1)

end A368058

/-!
# A368060: Triangle T(n, k), n > 0, k = 1..n, read and filled in the greedy way by rows such that T(n, k) corresponds to the size of the connected component of terms equal to T(n, k) including the position (n, k).

The programs for A368060, there is no canonical definition to state claims against.
-/

/-! ## A368060.P5763326426610946777

`A095190(2*n+1)+A000002(A008292(2*n+1))`
-/

namespace A368060.P5763326426610946777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095190 (2 * n + 1) + A000002 (A008292 (2 * n + 1)).toNat

end

end A368060.P5763326426610946777

/-! ## A368060.P18151496684009244056

`A095111(A077643(n))+A001285(n)`
-/

namespace A368060.P18151496684009244056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 (A077643 n).toNat + A001285 n

end

end A368060.P18151496684009244056

/-! ## A368060.P17392131546191638836

`A010060(n)+A000002(A162663(3*n))`
-/

namespace A368060.P17392131546191638836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n + A000002 (A162663 (3 * n)).toNat

end

end A368060.P17392131546191638836

/-! ## A368060.P5330650624933849001

`A065120(A288339(n))`
-/

namespace A368060.P5330650624933849001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A288339 n).toNat

end

end A368060.P5330650624933849001

/-! ## A368060.P3596357289072032743

`A327239(A293326(n))`
-/

namespace A368060.P3596357289072032743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327239 (A293326 n).toNat

end

end A368060.P3596357289072032743

/-!
# A368063: a(n) is the least number k such that sigma(sigma(k) * k) > n * sigma(k) * k.

The programs for A368063, there is no canonical definition to state claims against.
-/

/-! ## A368063.P16623245894131892210

`A309957(ceil(exp(n)²))`
-/

namespace A368063.P16623245894131892210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309957 ⌈Real.exp (n : ℝ) ^ 2⌉.toNat

end

end A368063.P16623245894131892210

/-!
# A368070: a(n) is the number of sequences of binary words (w_1, ..., w_k) such that w_1 corresponds to the binary expansion of n (without leading zeros), for m = 1..k-1, w_{m+1} is obtained by removing one bit from w_m, and w_k is the empty word.

The programs for A368070, there is no canonical definition to state claims against.
-/

/-! ## A368070.P17440250693210478316

`A060351(A010078(n+1))`
-/

namespace A368070.P17440250693210478316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (A010078 (n + 1)).toNat

end

end A368070.P17440250693210478316

/-! ## A368070.P18371447767246842937

`A060351(A145341(n+1))`
-/

namespace A368070.P18371447767246842937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (A145341 (n + 1)).toNat

end

end A368070.P18371447767246842937

/-! ## A368070.P17760457267881604840

`A060351(A004760(n+2))`
-/

namespace A368070.P17760457267881604840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (A004760 (n + 2)).toNat

end

end A368070.P17760457267881604840

/-! ## A368070.P5379001520211532456

`A060351(eq[1, A065120(n)])`
-/

namespace A368070.P5379001520211532456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A368070.P5379001520211532456

/-! ## A368070.P8678366336721089554

`A060351(lt[A065621(n+1), A005408(n)])`
-/

namespace A368070.P8678366336721089554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A368070.P8678366336721089554

/-!
# A368071: a(1) = 1, and for any n > 0, a(2*n) = a(n), a(2*n+1) is the least positive number not yet in the sequence coprime to a(n) and a(n+1).

The programs for A368071, there is no canonical definition to state claims against.
-/

/-! ## A368071.P12281232512003987602

`A005599(A064989(n+1)%A382298(3*n+4))`
-/

namespace A368071.P12281232512003987602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005599 (Int.tmod (A064989 (n + 1)) (A382298 (3 * n + 4))).toNat

end

end A368071.P12281232512003987602

/-! ## A368071.P840161467464485343

`A167972(A299200(n+1)^A167966(n+1))`
-/

namespace A368071.P840161467464485343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167972 (SequenceMachineLib.roundAway ((A299200 (n + 1) : ℚ) ^ (A167966 (n + 1) : ℤ))).toNat

end

end A368071.P840161467464485343

/-! ## A368071.P12964443507457803127

`A064989(n+1)-A380958(A347465(2*n+5))`
-/

namespace A368071.P12964443507457803127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) - A380958 (A347465 (2 * n + 5)).toNat

end

end A368071.P12964443507457803127

/-! ## A368071.P10474228988125639165

`A064989(n+1)-A170978(A008459(n))`
-/

namespace A368071.P10474228988125639165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) - A170978 (A008459 n).toNat

end

end A368071.P10474228988125639165

/-! ## A368071.P2247933083196308315

`A064989(n+1)-A112473(A331572(n))`
-/

namespace A368071.P2247933083196308315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) - A112473 (A331572 n).toNat

end

end A368071.P2247933083196308315

/-!
# A368072: Number of representations of n as the difference of two positive tetrahedral numbers.

The programs for A368072, there is no canonical definition to state claims against.
-/

/-! ## A368072.P16585073744144416129

`A307666(n+1)-Δ[A360010(n+1)]`
-/

namespace A368072.P16585073744144416129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307666 (n + 1) - (f1 (n + 1) - f1 n)

end

end A368072.P16585073744144416129

/-! ## A368072.P15983823993107288637

`A102683(A051925(n+3))^A080934(n)`
-/

namespace A368072.P15983823993107288637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102683 (A051925 (n + 3)).toNat : ℚ) ^ (A080934 n : ℤ)

end

end A368072.P15983823993107288637

/-! ## A368072.P8553508314032362607

`A322980(A340609(3*n+4)+A104988(n))`
-/

namespace A368072.P8553508314032362607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322980 (A340609 (3 * n + 4) + A104988 n).toNat

end

end A368072.P8553508314032362607

/-! ## A368072.P17108979036515300216

`and(A063983(A342827(2*(n+2))), A254377(n))`
-/

namespace A368072.P17108979036515300216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063983 (A342827 (2 * (n + 2))).toNat) (A254377 n)

end

end A368072.P17108979036515300216

/-! ## A368072.P5286151499180549157

`A251037(A356220(n+1))%A356229(n+5)`
-/

namespace A368072.P5286151499180549157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251037 (A356220 (n + 1)).toNat) (A356229 (n + 5))

end

end A368072.P5286151499180549157

/-!
# A368073: Number of representations of n as the difference of two positive square pyramidal numbers.

The programs for A368073, there is no canonical definition to state claims against.
-/

/-! ## A368073.P11271333233169436350

`A296338(n+1)%A280053(n+1)`
-/

namespace A368073.P11271333233169436350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296338 (n + 1)) (A280053 (n + 1))

end

end A368073.P11271333233169436350

/-! ## A368073.P7481859521500333597

`and(A282697(n+1), A296338(n+1))`
-/

namespace A368073.P7481859521500333597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282697 (n + 1)) (A296338 (n + 1))

end

end A368073.P7481859521500333597

/-! ## A368073.P3105760384425527108

`and(A232778(n+1), A296338(n+1))`
-/

namespace A368073.P3105760384425527108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A232778 (n + 1)) (A296338 (n + 1))

end

end A368073.P3105760384425527108

/-! ## A368073.P15185535353148353546

`and(A296338(n+1), A329710(n+1))`
-/

namespace A368073.P15185535353148353546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A296338 (n + 1)) (A329710 (n + 1))

end

end A368073.P15185535353148353546

/-! ## A368073.P2477416918588040594

`and(A062921(n+1), A296338(n+1))`
-/

namespace A368073.P2477416918588040594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062921 (n + 1)) (A296338 (n + 1))

end

end A368073.P2477416918588040594

/-!
# A368077: Numbers k such that row k of Pascal's triangle mod 10 contains all the numbers 0 to 9.

The programs for A368077, there is no canonical definition to state claims against.
-/

/-! ## A368077.P13016833405358368350

`eq[10, A208280(n)]`
-/

namespace A368077.P13016833405358368350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208280 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A368077.P13016833405358368350

/-!
# A368078: Lexicographically earliest increasing sequence a(n) of products of 4 primes such that a(n) - a(n-1) and a(n) + a(n-1) are also products of 4 primes. The 4 primes are counted with multiplicity.

The programs for A368078, there is no canonical definition to state claims against.
-/

/-! ## A368078.P8472457305376589218

`A000005(A005109(n+1))*A361073(n+1)`
-/

namespace A368078.P8472457305376589218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005109 (n + 1)).toNat * A361073 (n + 1)

end

end A368078.P8472457305376589218

/-! ## A368078.P11379075982672297966

`A289441(4*A361073(n+1))`
-/

namespace A368078.P11379075982672297966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (4 * A361073 (n + 1)).toNat

end

end A368078.P11379075982672297966

/-! ## A368078.P962745292703737794

`A053669(A181741(n+1))*A361073(n+1)`
-/

namespace A368078.P962745292703737794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A181741 (n + 1)).toNat * A361073 (n + 1)

end

end A368078.P962745292703737794

/-! ## A368078.P15265349592838050566

`A000122(A085986(n+1))*A361073(n+1)`
-/

namespace A368078.P15265349592838050566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A085986 (n + 1)).toNat * A361073 (n + 1)

end

end A368078.P15265349592838050566

/-!
# A368079: Expansion of (1/x) * Series_Reversion( x * (1-x)^3 * (1-x^2)^3 ).

The programs for A368079, there is no canonical definition to state claims against.
-/

/-! ## A368079.P3395827346598915947

`A016729(or(n, A155130(n)))`
-/

namespace A368079.P3395827346598915947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016729 (Int.lor (n : ℤ) (A155130 n)).toNat

end

end A368079.P3395827346598915947

/-!
# A368082: Positive integers which can be written as a sum of a Zumkeller number and a prime number.

The programs for A368082, there is no canonical definition to state claims against.
-/

/-! ## A368082.P11143355779896527547

`lt[A291161(n+1), A275846(A275846(n))]`
-/

namespace A368082.P11143355779896527547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275846 (A275846 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368082.P11143355779896527547

/-!
# A368083: Numbers k such that k^2 + k + 1 and k^2 + k + 2 are both squarefree numbers.

The programs for A368083, there is no canonical definition to state claims against.
-/

/-! ## A368083.P11277929951277638432

`A053188(A368084(n+1))`
-/

namespace A368083.P11277929951277638432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A368084 (n + 1)).toNat

end

end A368083.P11277929951277638432

/-! ## A368083.P303824928893363055

`A000194(A368084(n+1)-1)`
-/

namespace A368083.P303824928893363055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A368084 (n + 1) - 1).toNat

end

end A368083.P303824928893363055

/-! ## A368083.P11499386995896624645

`lt[1, A365196(A198442(2*n+1))]`
-/

namespace A368083.P11499386995896624645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365196 (A198442 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A368083.P11499386995896624645

/-! ## A368083.P9636128623221409857

`A134824(3*(n+1))+A000194(A368084(n+1))`
-/

namespace A368083.P9636128623221409857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (3 * (n + 1)) + A000194 (A368084 (n + 1)).toNat

end

end A368083.P9636128623221409857

/-! ## A368083.P4771538340034011684

`lt[A256528(n+1), A007913(A014206(n))]`
-/

namespace A368083.P4771538340034011684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A014206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368083.P4771538340034011684

/-!
# A368084: Squarefree numbers of the form k^2 + k + 1 such that k^2 + k + 2 is also squarefree.

The programs for A368084, there is no canonical definition to state claims against.
-/

/-! ## A368084.P2062906038997667873

`A002061(A368083(n+1)+1)`
-/

namespace A368084.P2062906038997667873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A368083 (n + 1) + 1).toNat

end

end A368084.P2062906038997667873

/-! ## A368084.P11789558272733357250

`∩[A007674(n+1), A353887(n+1)]`
-/

namespace A368084.P11789558272733357250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368084.P11789558272733357250

/-! ## A368084.P3068351028152190988

`∩[A081083(n+1), A353887(n+1)]`
-/

namespace A368084.P3068351028152190988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368084.P3068351028152190988

/-! ## A368084.P8702403055507770914

`∩[A344314(n+1), A353887(n+1)]`
-/

namespace A368084.P8702403055507770914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368084.P8702403055507770914

/-! ## A368084.P1268613560201481105

`∩[A353887(n+1), A358817(n+1)]`
-/

namespace A368084.P1268613560201481105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368084.P1268613560201481105

/-! ## A368084.P13015401606907429830

`∩[A344312(n+1), A353887(n+1)]`
-/

namespace A368084.P13015401606907429830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368084.P13015401606907429830

/-! ## A368084.P7858907188070568172

`∩[A353887(n+1), A398170(n+1)]`
-/

namespace A368084.P7858907188070568172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368084.P7858907188070568172

/-! ## A368084.P15369164446821879795

`∩[A353887(n+1), A398168(n+1)]`
-/

namespace A368084.P15369164446821879795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368084.P15369164446821879795

/-!
# A368086: The successive sums a(n) + a(n+1) reproduce the decimal expansion of the Champernowne constant.

The programs for A368086, there is no canonical definition to state claims against.
-/

/-! ## A368086.P12594708648411136802

`A007376(n)-a(n-1)` with `a(0)=0`
-/

namespace A368086.P12594708648411136802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007376 n - a (n - 1)

end

end A368086.P12594708648411136802

/-! ## A368086.P7674244524537204117

`A033307(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A368086.P7674244524537204117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A033307 (n - 1) - a (n - 1)

end

end A368086.P7674244524537204117

/-! ## A368086.P11825766781925935782

`A063742(A098729(n+1)-n)-a(n-1)` with `a(0)=0`
-/

namespace A368086.P11825766781925935782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A063742 (A098729 (n + 1) - (n : ℤ)).toNat - a (n - 1)

end

end A368086.P11825766781925935782

/-! ## A368086.P2281772007862549385

`∑[A007376(n)*A033999(n)]*A033999(n)`
-/

namespace A368086.P2281772007862549385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A368086.P2281772007862549385

/-! ## A368086.P11715699792226807962

`A098734(n+1)/(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A368086.P11715699792226807962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A098734 (n + 1) : ℚ) / (n + 1 : ℚ) - a (n - 1)

end

end A368086.P11715699792226807962

/-!
# A368087: Numbers of the form 2^k * p^s with k>=0, s>=0, p>2 prime and 2^(k+1) < p.

The programs for A368087, there is no canonical definition to state claims against.
-/

/-! ## A368087.P3965375610322489756

`filter[A005100(n+1), A340363(#)]`
-/

namespace A368087.P3965375610322489756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A368087.P3965375610322489756

/-! ## A368087.P16072684293350449729

`filter[A051772(n+1), A340363(#)]`
-/

namespace A368087.P16072684293350449729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A368087.P16072684293350449729

/-! ## A368087.P5547559499432258222

`filter[A136447(n+1), A340363(#)]`
-/

namespace A368087.P5547559499432258222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A368087.P5547559499432258222

/-! ## A368087.P3105668492722213871

`filter[A174905(n+1), A340363(#)]`
-/

namespace A368087.P3105668492722213871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A368087.P3105668492722213871

/-! ## A368087.P6590853792976575198

`filter[A174905(n+1), A340372(#)]`
-/

namespace A368087.P6590853792976575198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j).toNat = 1) n)

end

end A368087.P6590853792976575198

/-! ## A368087.P12635877971344457163

`∩[A174905(n+1), A285801(n+1)]`
-/

namespace A368087.P12635877971344457163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368087.P12635877971344457163

/-! ## A368087.P13389942005461708881

`∩[A174905(n+1), comp[A368949(n+1)]]`
-/

namespace A368087.P13389942005461708881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368949 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A368087.P13389942005461708881

/-!
# A368088: Index of smallest pentagonal number with n digits.

The programs for A368088, the canonical program `A368088.P18283564569773031372` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368088 has offset 1).

The definition of A368088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368088.P18283564569773031372

`ceil((sqrt(24*10^n+1)+1)/6)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A368088

/-- `ceil((sqrt(24*10^n+1)+1)/6)` -/
def P18283564569773031372.Spec : Prop :=
  ∀ n, P18283564569773031372.a n = A368088 (n + 1)

theorem P18283564569773031372.correct : P18283564569773031372.Spec := by
  intro n
  simp only [A368088, Nat.add_sub_cancel]

end A368088

/-! ## A368088.P5215868963270750927

`A117712(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A368088.P5215868963270750927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A117712 n + a (n - 1)

end

end A368088.P5215868963270750927

namespace A368088

/-- `A117712(n)+a(n-1)` -/
def P5215868963270750927.Spec : Prop :=
  ∀ n, P5215868963270750927.a n = A368088 (n + 1)

end A368088

/-!
# A368089: Numbers k neither squarefree nor prime powers whose squarefree kernel is not a primorial.

The programs for A368089, there is no canonical definition to state claims against.
-/

/-! ## A368089.P10699245497196640512

`∪[A369417(n+1), A386294(n+1)]`
-/

namespace A368089.P10699245497196640512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A368089.P10699245497196640512

/-! ## A368089.P14610395196827146630

`filter[A080259(n+1), A355447(#)]`
-/

namespace A368089.P14610395196827146630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A368089.P14610395196827146630

/-! ## A368089.P13601162002972409650

`∩[A080259(n+1), A126706(n+1)]`
-/

namespace A368089.P13601162002972409650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368089.P13601162002972409650

/-! ## A368089.P16517195660252630685

`∩[A080259(n+1), A367268(n+1)]`
-/

namespace A368089.P16517195660252630685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368089.P16517195660252630685

/-! ## A368089.P7041164525809707769

`∪[A350841(n+1), A367455(n+1)]`
-/

namespace A368089.P7041164525809707769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A368089.P7041164525809707769

/-!
# A368090: Triangle read by rows. T(n, k) = Sum_{p in P(n, k)} Product_{r in p}(r + 1), where P(n, k) are the partitions of n with length k.

The programs for A368090, there is no canonical definition to state claims against.
-/

/-! ## A368090.P9847041320138488028

`A391010(A049872(n))`
-/

namespace A368090.P9847041320138488028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391010 (A049872 n).toNat

end

end A368090.P9847041320138488028

/-! ## A368090.P14226400221681065196

`A391010(A061816(n))`
-/

namespace A368090.P14226400221681065196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391010 (A061816 n).toNat

end

end A368090.P14226400221681065196

/-! ## A368090.P7527615885089132198

`A391010(A062003(n))`
-/

namespace A368090.P7527615885089132198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391010 (A062003 n).toNat

end

end A368090.P7527615885089132198

/-! ## A368090.P13340352881232742674

`A391010(A004873(n+1))`
-/

namespace A368090.P13340352881232742674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391010 (A004873 (n + 1)).toNat

end

end A368090.P13340352881232742674

/-! ## A368090.P3017927187125641911

`A391010(A004884(n+1))`
-/

namespace A368090.P3017927187125641911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391010 (A004884 (n + 1)).toNat

end

end A368090.P3017927187125641911

/-!
# A368091: Triangle read by rows. T(n, k) = Sum_{p in P(n, k)} Product_{r in p} r, where P(n, k) are the partitions of n with length k.

The programs for A368091, there is no canonical definition to state claims against.
-/

/-! ## A368091.P10220099299070648283

`A259100(n)+A212619(A227269(n+1))`
-/

namespace A368091.P10220099299070648283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259100 n + A212619 (A227269 (n + 1)).toNat

end

end A368091.P10220099299070648283

/-! ## A368091.P4186784034740825798

`A363946(n)+A363937(A139622(n+1))`
-/

namespace A368091.P4186784034740825798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363946 n + A363937 (A139622 (n + 1)).toNat

end

end A368091.P4186784034740825798

/-! ## A368091.P7466959686701476676

`A001222(C(A083221(n+2), A333213(n)))`
-/

namespace A368091.P7466959686701476676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (A083221 (n + 2)).toNat (A333213 n).toNat)

end

end A368091.P7466959686701476676

/-! ## A368091.P8765278748806996448

`A253589(A299354(n+1))`
-/

namespace A368091.P8765278748806996448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253589 (A299354 (n + 1)).toNat

end

end A368091.P8765278748806996448

/-! ## A368091.P16682353860379549933

`A051038(A144275(n+1))%A161831(n+2)`
-/

namespace A368091.P16682353860379549933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051038 (A144275 (n + 1)).toNat) (A161831 (n + 2))

end

end A368091.P16682353860379549933

/-!
# A368092: a(n) = A160014(m, n) * a(n - 1) for m = 2 and n > 0, a(0) = 1.

The programs for A368092, there is no canonical definition to state claims against.
-/

/-! ## A368092.P17450087237366116615

`A368117(n)*a(n-1)` with `a(0)=1`
-/

namespace A368092.P17450087237366116615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A368117 n * a (n - 1)

end

end A368092.P17450087237366116615

/-! ## A368092.P6921648207759208415

`∏[A368117(n)]`
-/

namespace A368092.P6921648207759208415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A368092.P6921648207759208415

/-! ## A368092.P6565503189450511161

`gcd(A171080(n), A368048(n))`
-/

namespace A368092.P6565503189450511161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A171080 n) (A368048 n)

end

end A368092.P6565503189450511161

/-! ## A368092.P9081956690325618120

`A368093(∑[n+3])`
-/

namespace A368092.P9081956690325618120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368093 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A368092.P9081956690325618120

/-!
# A368094: Number of non-isomorphic set-systems of weight n contradicting a strict version of the axiom of choice.

The programs for A368094, there is no canonical definition to state claims against.
-/

/-! ## A368094.P10542414208839049439

`A283877(n)-A368095(n)`
-/

namespace A368094.P10542414208839049439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283877 n - A368095 n

end

end A368094.P10542414208839049439

/-! ## A368094.P17080517246258447100

`A330053(n)+A306005(n)-A368095(n)`
-/

namespace A368094.P17080517246258447100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330053 n + A306005 n - A368095 n

end

end A368094.P17080517246258447100

/-! ## A368094.P13347548824800255870

`A330054(n)+A330052(n)-A368095(n)`
-/

namespace A368094.P13347548824800255870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330054 n + A330052 n - A368095 n

end

end A368094.P13347548824800255870

/-! ## A368094.P14583341283937418644

`A306005(n)-A057428(n)*A330053(n)-A368095(n)`
-/

namespace A368094.P14583341283937418644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306005 n - A057428 n * A330053 n - A368095 n

end

end A368094.P14583341283937418644

/-! ## A368094.P13439904101304690131

`round(A181957(n+2)/A032599(n+4))`
-/

namespace A368094.P13439904101304690131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A181957 (n + 2) : ℚ) / (A032599 (n + 4) : ℚ))

end

end A368094.P13439904101304690131

/-!
# A368095: Number of non-isomorphic set-systems of weight n satisfying a strict version of the axiom of choice.

The programs for A368095, there is no canonical definition to state claims against.
-/

/-! ## A368095.P4996303613577679182

`A283877(n)-A368094(n)`
-/

namespace A368095.P4996303613577679182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283877 n - A368094 n

end

end A368095.P4996303613577679182

/-! ## A368095.P12206458378933089723

`A330054(n)+A330052(n)-A368094(n)`
-/

namespace A368095.P12206458378933089723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330054 n + A330052 n - A368094 n

end

end A368095.P12206458378933089723

/-! ## A368095.P7144706920814171208

`A003407(n)-A160127(A000992(n+1))-A368094(n)`
-/

namespace A368095.P7144706920814171208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003407 n - A160127 (A000992 (n + 1)).toNat - A368094 n

end

end A368095.P7144706920814171208

/-!
# A368096: Triangle read by rows where T(n,k) is the number of non-isomorphic set-systems of length k and weight n.

The programs for A368096, there is no canonical definition to state claims against.
-/

/-! ## A368096.P10892289353329985880

`A130260(A294219(n)^A296150(2*(n+1)))`
-/

namespace A368096.P10892289353329985880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 (SequenceMachineLib.roundAway ((A294219 n : ℚ) ^ (A296150 (2 * (n + 1)) : ℤ))).toNat

end

end A368096.P10892289353329985880

/-! ## A368096.P2706434030823238325

`A364663(A058710(n))`
-/

namespace A368096.P2706434030823238325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364663 (A058710 n).toNat

end

end A368096.P2706434030823238325

/-! ## A368096.P10918408941990373850

`A167439(A269945(n))`
-/

namespace A368096.P10918408941990373850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A269945 n).toNat

end

end A368096.P10918408941990373850

/-! ## A368096.P6379363839482767269

`A382397(A362868(n+1))`
-/

namespace A368096.P6379363839482767269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382397 (A362868 (n + 1)).toNat

end

end A368096.P6379363839482767269

/-! ## A368096.P2901340334411280598

`A124762(A281891(n))+A097805(n)`
-/

namespace A368096.P2901340334411280598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A281891 n).toNat + A097805 n

end

end A368096.P2901340334411280598

/-!
# A368097: Number of non-isomorphic multiset partitions of weight n contradicting a strict version of the axiom of choice.

The programs for A368097, there is no canonical definition to state claims against.
-/

/-! ## A368097.P12913828617535118819

`A007716(n)-A368098(n)`
-/

namespace A368097.P12913828617535118819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007716 n - A368098 n

end

end A368097.P12913828617535118819

/-! ## A368097.P1104399398885319122

`A330058(n)+A302545(n)-A368098(n)`
-/

namespace A368097.P1104399398885319122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330058 n + A302545 n - A368098 n

end

end A368097.P1104399398885319122

/-! ## A368097.P8453882108670305811

`A318795(A000217(2*n)+1-n)-A368098(n)`
-/

namespace A368097.P8453882108670305811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318795 (A000217 (2 * n) + 1 - (n : ℤ)).toNat - A368098 n

end

end A368097.P8453882108670305811

/-!
# A368098: Number of non-isomorphic multiset partitions of weight n satisfying a strict version of the axiom of choice.

The programs for A368098, there is no canonical definition to state claims against.
-/

/-! ## A368098.P15709072527778691755

`A007716(n)-A368097(n)`
-/

namespace A368098.P15709072527778691755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007716 n - A368097 n

end

end A368098.P15709072527778691755

/-! ## A368098.P8555001714436413428

`A318795(A046092(n)+2)-A368097(n)`
-/

namespace A368098.P8555001714436413428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318795 (A046092 n + 2).toNat - A368097 n

end

end A368098.P8555001714436413428

/-! ## A368098.P14667989795840318369

`A330058(n)+A302545(n)-A368097(n)`
-/

namespace A368098.P14667989795840318369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330058 n + A302545 n - A368097 n

end

end A368098.P14667989795840318369

/-! ## A368098.P18096720876295073644

`2*A318395(n)-A316983(n)-A368097(n)`
-/

namespace A368098.P18096720876295073644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318395 n - A316983 n - A368097 n

end

end A368098.P18096720876295073644

/-!
# A368099: Triangle read by rows where T(n,k) is the number of non-isomorphic k-element sets of finite nonempty multisets with cardinalities summing to n, or strict multiset partitions of weight n and length k.

The programs for A368099, there is no canonical definition to state claims against.
-/

/-! ## A368099.P15072562271927219884

`A163352(A330462(n)+A143395(n))`
-/

namespace A368099.P15072562271927219884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A330462 n + A143395 n).toNat

end

end A368099.P15072562271927219884

/-! ## A368099.P11843124197652482049

`A256130(n)-A322392(A265656(n+1))`
-/

namespace A368099.P11843124197652482049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 n - A322392 (A265656 (n + 1)).toNat

end

end A368099.P11843124197652482049

/-! ## A368099.P9293032829942731031

`and(A053702(A232023(n+2)), A256130(n))`
-/

namespace A368099.P9293032829942731031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053702 (A232023 (n + 2)).toNat) (A256130 n)

end

end A368099.P9293032829942731031

/-! ## A368099.P13309626908423501403

`and(A256130(n), A339116(A134869(3*n+5)))`
-/

namespace A368099.P13309626908423501403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A256130 n) (A339116 (A134869 (3 * n + 5)).toNat)

end

end A368099.P13309626908423501403

/-! ## A368099.P1493123747375162224

`and(A256130(n), A353710(A274906(n+1)))`
-/

namespace A368099.P1493123747375162224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A256130 n) (A353710 (A274906 (n + 1)).toNat)

end

end A368099.P1493123747375162224

