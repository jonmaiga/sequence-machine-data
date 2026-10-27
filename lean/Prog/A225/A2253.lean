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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
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
# A225301: Number of solutions to rev(x^2) = rev(x)^2 with at most n digits, where the function rev(x) reverses the digits of x.

The programs for A225301, there is no canonical definition to state claims against.
-/

/-! ## A225301.P1590341879108613060

`A098690(n+1)+1`
-/

namespace A225301.P1590341879108613060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098690 (n + 1) + 1

end

end A225301.P1590341879108613060

/-! ## A225301.P10144571902744342426

`∑[A098701(n+1)]+1`
-/

namespace A225301.P10144571902744342426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A225301.P10144571902744342426

/-! ## A225301.P113129821323062110

`A020725(A098690(n+1))`
-/

namespace A225301.P113129821323062110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A098690 (n + 1)).toNat

end

end A225301.P113129821323062110

/-! ## A225301.P4522125206071886930

`A020725(∑[A098701(n+1)])`
-/

namespace A225301.P4522125206071886930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225301.P4522125206071886930

/-! ## A225301.P8528364329694353431

`A065475(∑[A098701(n+1)])`
-/

namespace A225301.P8528364329694353431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A225301.P8528364329694353431

/-!
# A225303: Primes of the form p + (product of digits of p), where p is a prime.

The programs for A225303, there is no canonical definition to state claims against.
-/

/-! ## A225303.P480784397663057074

`∪[A056709(n+1), A344466(n+1)]`
-/

namespace A225303.P480784397663057074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225303.P480784397663057074

/-! ## A225303.P6711855254121469147

`p?[A138945(2*(n+2))+A102420(n)]`
-/

namespace A225303.P6711855254121469147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138945 (2 * (n + 2)) + A102420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225303.P6711855254121469147

/-!
# A225304: Number of nX3 -1,1 arrays such that the sum over i=1..n,j=1..3 of i*x(i,j) is zero and rows are nondecreasing (ways to put 3 thrusters pointing east or west at each of n positions 1..n distance from the hinge of a south-pointing gate without turning the gate).

The programs for A225304, there is no canonical definition to state claims against.
-/

/-! ## A225304.P556106143896325557

`A225310(∑[n+3]+1)`
-/

namespace A225304.P556106143896325557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A225304.P556106143896325557

/-! ## A225304.P18156539622119371592

`lcm(2, A225310(Δ[A008778(n)]))`
-/

namespace A225304.P18156539622119371592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A225310 (f1 (n + 1) - f1 n).toNat)

end

end A225304.P18156539622119371592

/-! ## A225304.P10312545540930470564

`A054977(n)*A225310(Δ[A008778(n)])`
-/

namespace A225304.P10312545540930470564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A225310 (f1 (n + 1) - f1 n).toNat

end

end A225304.P10312545540930470564

/-! ## A225304.P6051550773308505149

`A225310(Δ[A008778(n)])%A002457(n)`
-/

namespace A225304.P6051550773308505149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225310 (f1 (n + 1) - f1 n).toNat) (A002457 n)

end

end A225304.P6051550773308505149

/-! ## A225304.P16207654876561673162

`gcd(3, A005897(n))*A225310(A034856(n+2))`
-/

namespace A225304.P16207654876561673162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A005897 n) : ℤ) * A225310 (A034856 (n + 2)).toNat

end

end A225304.P16207654876561673162

/-! ## A225304.P17761326322819685530

`A225310(A167487(n)+A005408(n)-5)%A026908(n)`
-/

namespace A225304.P17761326322819685530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225310 (A167487 n + A005408 n - 5).toNat) (A026908 n)

end

end A225304.P17761326322819685530

/-!
# A225305: Number of nX4 -1,1 arrays such that the sum over i=1..n,j=1..4 of i*x(i,j) is zero and rows are nondecreasing (ways to put 4 thrusters pointing east or west at each of n positions 1..n distance from the hinge of a south-pointing gate without turning the gate).

The programs for A225305, there is no canonical definition to state claims against.
-/

/-! ## A225305.P5688563678051620987

`A225310(A027379(n+2))`
-/

namespace A225305.P5688563678051620987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A027379 (n + 2)).toNat

end

end A225305.P5688563678051620987

/-! ## A225305.P17160854561178197315

`A225310(A055998(n+2))`
-/

namespace A225305.P17160854561178197315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A055998 (n + 2)).toNat

end

end A225305.P17160854561178197315

/-! ## A225305.P10641847858382226069

`A225310(A155212(n)+5)`
-/

namespace A225305.P10641847858382226069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A155212 n + 5).toNat

end

end A225305.P10641847858382226069

/-! ## A225305.P8213665582925841629

`A225310(A056000(n)+7)`
-/

namespace A225305.P8213665582925841629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A056000 n + 7).toNat

end

end A225305.P8213665582925841629

/-! ## A225305.P11171414662501830429

`A225310(A052905(n+1)+2)`
-/

namespace A225305.P11171414662501830429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A052905 (n + 1) + 2).toNat

end

end A225305.P11171414662501830429

/-! ## A225305.P9285954029433936968

`A225310(Δ[A008778(n+1)]-1)`
-/

namespace A225305.P9285954029433936968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (f1 (n + 1) - f1 n - 1).toNat

end

end A225305.P9285954029433936968

/-! ## A225305.P3904365467845998963

`A225310(A167499(n)+A016777(n))`
-/

namespace A225305.P3904365467845998963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A167499 n + A016777 n).toNat

end

end A225305.P3904365467845998963

/-! ## A225305.P15465183333354551601

`A225310(A167614(n+1)+A005408(n))`
-/

namespace A225305.P15465183333354551601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A167614 (n + 1) + A005408 n).toNat

end

end A225305.P15465183333354551601

/-! ## A225305.P7703999561349127362

`A225310(A020742(2*n)+A000217(n))`
-/

namespace A225305.P7703999561349127362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A020742 (2 * n) + A000217 n).toNat

end

end A225305.P7703999561349127362

/-!
# A225306: Number of nX5 -1,1 arrays such that the sum over i=1..n,j=1..5 of i*x(i,j) is zero and rows are nondecreasing (ways to put 5 thrusters pointing east or west at each of n positions 1..n distance from the hinge of a south-pointing gate without turning the gate).

The programs for A225306, there is no canonical definition to state claims against.
-/

/-! ## A225306.P7817128892704348705

`A225310(A046691(n+3))`
-/

namespace A225306.P7817128892704348705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A046691 (n + 3)).toNat

end

end A225306.P7817128892704348705

/-! ## A225306.P7269653402929586237

`A225310(Δ[A023545(n+1)])`
-/

namespace A225306.P7269653402929586237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (f1 (n + 1) - f1 n).toNat

end

end A225306.P7269653402929586237

/-! ## A225306.P2146710112612082409

`A225310(A167487(n)+4*n+3)`
-/

namespace A225306.P2146710112612082409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A167487 n + (4 * n + 3 : ℤ)).toNat

end

end A225306.P2146710112612082409

/-! ## A225306.P8329555326330247443

`A225310(A167499(n)+4*n+5)`
-/

namespace A225306.P8329555326330247443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A167499 n + (4 * n + 5 : ℤ)).toNat

end

end A225306.P8329555326330247443

/-! ## A225306.P7269825876422366593

`A225310(A101881(2*n+5)+n+2)`
-/

namespace A225306.P7269825876422366593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A101881 (2 * n + 5) + (n + 2 : ℤ)).toNat

end

end A225306.P7269825876422366593

/-! ## A225306.P7575903681620837471

`A225310(A005408(n)+A052905(n)+9)`
-/

namespace A225306.P7575903681620837471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A005408 n + (A052905 n + 9)).toNat

end

end A225306.P7575903681620837471

/-!
# A225307: Number of nX6 -1,1 arrays such that the sum over i=1..n,j=1..6 of i*x(i,j) is zero and rows are nondecreasing (ways to put 6 thrusters pointing east or west at each of n positions 1..n distance from the hinge of a south-pointing gate without turning the gate).

The programs for A225307, there is no canonical definition to state claims against.
-/

/-! ## A225307.P17830045655145579188

`A225310(A052905(n+3))`
-/

namespace A225307.P17830045655145579188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A052905 (n + 3)).toNat

end

end A225307.P17830045655145579188

/-! ## A225307.P3178696703098552887

`A225310(A000096(n+5)-4)`
-/

namespace A225307.P3178696703098552887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A000096 (n + 5) - 4).toNat

end

end A225307.P3178696703098552887

/-! ## A225307.P9638486934005996340

`A225310(A000217(n+6)-5)`
-/

namespace A225307.P9638486934005996340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A000217 (n + 6) - 5).toNat

end

end A225307.P9638486934005996340

/-! ## A225307.P15412869448949536762

`A225310(A000124(n+6)-6)`
-/

namespace A225307.P15412869448949536762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A000124 (n + 6) - 6).toNat

end

end A225307.P15412869448949536762

/-! ## A225307.P12727200924312980499

`A225310(Δ[A023551(n+1)]+1)`
-/

namespace A225307.P12727200924312980499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (f1 (n + 1) - f1 n + 1).toNat

end

end A225307.P12727200924312980499

/-! ## A225307.P11542395819623717888

`A225310(Δ[A023545(n+2)]-1)`
-/

namespace A225307.P11542395819623717888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (f1 (n + 1) - f1 n - 1).toNat

end

end A225307.P11542395819623717888

/-! ## A225307.P10905859938982374486

`A225310(A005843(n+3)+A000217(n+4))`
-/

namespace A225307.P10905859938982374486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A005843 (n + 3) + A000217 (n + 4)).toNat

end

end A225307.P10905859938982374486

/-!
# A225308: Number of n X 7 -1,1 arrays such that the sum over i=1..n, j=1..7 of i*x(i,j) is zero and rows are nondecreasing (ways to put 7 thrusters pointing east or west at each of n positions 1..n distance from the hinge of a south-pointing gate without turning the gate).

The programs for A225308, there is no canonical definition to state claims against.
-/

/-! ## A225308.P390073233638309469

`A225310(A055999(n+4))`
-/

namespace A225308.P390073233638309469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A055999 (n + 4)).toNat

end

end A225308.P390073233638309469

/-! ## A225308.P16335707073293919250

`A225310(Δ[A023551(n+2)])`
-/

namespace A225308.P16335707073293919250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (f1 (n + 1) - f1 n).toNat

end

end A225308.P16335707073293919250

/-! ## A225308.P3828289165461482944

`A225310(A000096(n+6)-5)`
-/

namespace A225308.P3828289165461482944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A000096 (n + 6) - 5).toNat

end

end A225308.P3828289165461482944

/-! ## A225308.P2969559481714799641

`A225310(A000124(n+7)-7)`
-/

namespace A225308.P2969559481714799641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A000124 (n + 7) - 7).toNat

end

end A225308.P2969559481714799641

/-! ## A225308.P5776998082895257699

`A225310(A020742(n)+A000217(n+5))`
-/

namespace A225308.P5776998082895257699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A020742 n + A000217 (n + 5)).toNat

end

end A225308.P5776998082895257699

/-! ## A225308.P10628760515211019878

`A225310(A008574(n+4)+A000217(n+3))`
-/

namespace A225308.P10628760515211019878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A008574 (n + 4) + A000217 (n + 3)).toNat

end

end A225308.P10628760515211019878

/-!
# A225309: Number of nX8 -1,1 arrays such that the sum over i=1..n,j=1..8 of i*x(i,j) is zero and rows are nondecreasing (ways to put 8 thrusters pointing east or west at each of n positions 1..n distance from the hinge of a south-pointing gate without turning the gate).

The programs for A225309, there is no canonical definition to state claims against.
-/

/-! ## A225309.P5094937058671824687

`A225310(A155212(n+4)+1)`
-/

namespace A225309.P5094937058671824687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A155212 (n + 4) + 1).toNat

end

end A225309.P5094937058671824687

/-! ## A225309.P5526586959124832372

`A225310(A046691(n+6)-3)`
-/

namespace A225309.P5526586959124832372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A046691 (n + 6) - 3).toNat

end

end A225309.P5526586959124832372

/-! ## A225309.P14805954117212066622

`A225310(A027379(n+6)-4)`
-/

namespace A225309.P14805954117212066622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A027379 (n + 6) - 4).toNat

end

end A225309.P14805954117212066622

/-! ## A225309.P17308771195549099019

`A225310(A000217(n+8)-7)`
-/

namespace A225309.P17308771195549099019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A000217 (n + 8) - 7).toNat

end

end A225309.P17308771195549099019

/-! ## A225309.P16306202101995593257

`A225310(A000124(n+8)-8)`
-/

namespace A225309.P16306202101995593257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A000124 (n + 8) - 8).toNat

end

end A225309.P16306202101995593257

/-! ## A225309.P5192599819345818067

`A225310(A005843(n+4)+A000217(n+6))`
-/

namespace A225309.P5192599819345818067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A005843 (n + 4) + A000217 (n + 6)).toNat

end

end A225309.P5192599819345818067

/-! ## A225309.P3823608327675990107

`A225310(A005408(n)+A000217(n+6)+7)`
-/

namespace A225309.P3823608327675990107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A005408 n + (A000217 (n + 6) + 7)).toNat

end

end A225309.P3823608327675990107

/-! ## A225309.P9238908511104667153

`A225310(A005408(n)+A056000(n+2)+17)`
-/

namespace A225309.P9238908511104667153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A005408 n + (A056000 (n + 2) + 17)).toNat

end

end A225309.P9238908511104667153

/-!
# A225311: Number of 4 X n -1,1 arrays such that the sum over i=1..4,j=1..n of i*x(i,j) is zero and rows are nondecreasing (ways to put n thrusters pointing east or west at each of 4 positions 1..n distance from the hinge of a south-pointing gate without turning the gate).

The programs for A225311, the canonical program `A225311.P17165674832485001937` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225311 has offset 1).

The definition of A225311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225311.P17165674832485001937

`a(n-1)+a(n-2)-2*a(n-5)+a(n-8)+a(n-9)-a(n-10)` with `a(0)=2, a(1)=7, a(2)=16, a(3)=31, a(4)=52, a(5)=83, a(6)=122, a(7)=175, a(8)=238, a(9)=317`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A225311

/-- `a(n-1)+a(n-2)-2*a(n-5)+a(n-8)+a(n-9)-a(n-10)` -/
def P17165674832485001937.Spec : Prop :=
  ∀ n, P17165674832485001937.a n = A225311 (n + 1)

theorem P17165674832485001937.correct : P17165674832485001937.Spec := by
  intro n
  simp only [A225311, Nat.add_sub_cancel]

end A225311

/-! ## A225311.P5248620803122972760

`A225310(A052905(n)+9)`
-/

namespace A225311.P5248620803122972760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A052905 n + 9).toNat

end

end A225311.P5248620803122972760

namespace A225311

/-- `A225310(A052905(n)+9)` -/
def P5248620803122972760.Spec : Prop :=
  ∀ n, P5248620803122972760.a n = A225311 (n + 1)

end A225311

/-! ## A225311.P1012681412688244277

`A225310(A055999(n)+10)`
-/

namespace A225311.P1012681412688244277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A055999 n + 10).toNat

end

end A225311.P1012681412688244277

namespace A225311

/-- `A225310(A055999(n)+10)` -/
def P1012681412688244277.Spec : Prop :=
  ∀ n, P1012681412688244277.a n = A225311 (n + 1)

end A225311

/-! ## A225311.P10770023978617771067

`A225310(A167614(n+2)+1)`
-/

namespace A225311.P10770023978617771067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A167614 (n + 2) + 1).toNat

end

end A225311.P10770023978617771067

namespace A225311

/-- `A225310(A167614(n+2)+1)` -/
def P10770023978617771067.Spec : Prop :=
  ∀ n, P10770023978617771067.a n = A225311 (n + 1)

end A225311

/-! ## A225311.P7428707755857385373

`A225310(A000124(n+3)+3)`
-/

namespace A225311.P7428707755857385373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A000124 (n + 3) + 3).toNat

end

end A225311.P7428707755857385373

namespace A225311

/-- `A225310(A000124(n+3)+3)` -/
def P7428707755857385373.Spec : Prop :=
  ∀ n, P7428707755857385373.a n = A225311 (n + 1)

end A225311

/-! ## A225311.P16809094603003480480

`A225310(A167487(n+2)-3)`
-/

namespace A225311.P16809094603003480480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A167487 (n + 2) - 3).toNat

end

end A225311.P16809094603003480480

namespace A225311

/-- `A225310(A167487(n+2)-3)` -/
def P16809094603003480480.Spec : Prop :=
  ∀ n, P16809094603003480480.a n = A225311 (n + 1)

end A225311

/-! ## A225311.P3950200224947055264

`A225310(A000096(n+2)+5)`
-/

namespace A225311.P3950200224947055264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A000096 (n + 2) + 5).toNat

end

end A225311.P3950200224947055264

namespace A225311

/-- `A225310(A000096(n+2)+5)` -/
def P3950200224947055264.Spec : Prop :=
  ∀ n, P3950200224947055264.a n = A225311 (n + 1)

end A225311

/-! ## A225311.P13964976159182294091

`A225310(A000217(n+3)+4)`
-/

namespace A225311.P13964976159182294091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A000217 (n + 3) + 4).toNat

end

end A225311.P13964976159182294091

namespace A225311

/-- `A225310(A000217(n+3)+4)` -/
def P13964976159182294091.Spec : Prop :=
  ∀ n, P13964976159182294091.a n = A225311 (n + 1)

end A225311

/-! ## A225311.P6129409185669214320

`A225310(Δ[A023545(n+1)-n²])`
-/

namespace A225311.P6129409185669214320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (f1 (n + 1) - f1 n).toNat

end

end A225311.P6129409185669214320

namespace A225311

/-- `A225310(Δ[A023545(n+1)-n²])` -/
def P6129409185669214320.Spec : Prop :=
  ∀ n, P6129409185669214320.a n = A225311 (n + 1)

end A225311

/-! ## A225311.P11797460206635911392

`A225310(A056000(n+3)-A008586(n+2))`
-/

namespace A225311.P11797460206635911392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A056000 (n + 3) - A008586 (n + 2)).toNat

end

end A225311.P11797460206635911392

namespace A225311

/-- `A225310(A056000(n+3)-A008586(n+2))` -/
def P11797460206635911392.Spec : Prop :=
  ∀ n, P11797460206635911392.a n = A225311 (n + 1)

end A225311

/-!
# A225312: Number of 5 X n -1,1 arrays such that the sum over i=1..5,j=1..n of i*x(i,j) is zero and rows are nondecreasing (ways to put n thrusters pointing east or west at each of 5 positions 1..n distance from the hinge of a south-pointing gate without turning the gate).

The programs for A225312, there is no canonical definition to state claims against.
-/

/-! ## A225312.P5813003490230903491

`A225310(A167499(n+3))`
-/

namespace A225312.P5813003490230903491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A167499 (n + 3)).toNat

end

end A225312.P5813003490230903491

/-! ## A225312.P11999764661893866313

`A225310(A155212(n)+13)`
-/

namespace A225312.P11999764661893866313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A155212 n + 13).toNat

end

end A225312.P11999764661893866313

/-! ## A225312.P12692317659131524562

`A225310(A056000(n)+15)`
-/

namespace A225312.P12692317659131524562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A056000 n + 15).toNat

end

end A225312.P12692317659131524562

/-! ## A225312.P9362379916194857476

`A225310(A046691(n+2)+9)`
-/

namespace A225312.P9362379916194857476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A046691 (n + 2) + 9).toNat

end

end A225312.P9362379916194857476

/-! ## A225312.P16177369530106882795

`A225310(A101881(2*n+5)+6)`
-/

namespace A225312.P16177369530106882795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A101881 (2 * n + 5) + 6).toNat

end

end A225312.P16177369530106882795

/-! ## A225312.P12974259333083027480

`A225310(A167614(n+2)+n+6)`
-/

namespace A225312.P12974259333083027480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A167614 (n + 2) + (n + 6 : ℤ)).toNat

end

end A225312.P12974259333083027480

/-! ## A225312.P10875568090628101079

`A225310(A000217(n+6)-6-2*n)`
-/

namespace A225312.P10875568090628101079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A000217 (n + 6) - 6 - (2 * n : ℤ)).toNat

end

end A225312.P10875568090628101079

/-!
# A225313: Number of 6Xn -1,1 arrays such that the sum over i=1..6,j=1..n of i*x(i,j) is zero and rows are nondecreasing (ways to put n thrusters pointing east or west at each of 6 positions 1..n distance from the hinge of a south-pointing gate without turning the gate).

The programs for A225313, there is no canonical definition to state claims against.
-/

/-! ## A225313.P3888517514770908783

`A225310(A167499(n+4)+1)`
-/

namespace A225313.P3888517514770908783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A167499 (n + 4) + 1).toNat

end

end A225313.P3888517514770908783

/-! ## A225313.P4204925662791092717

`A225310(A000124(n+5)+5)`
-/

namespace A225313.P4204925662791092717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A000124 (n + 5) + 5).toNat

end

end A225313.P4204925662791092717

/-! ## A225313.P11693181682872480846

`A225310(A000217(n+5)+6)`
-/

namespace A225313.P11693181682872480846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A000217 (n + 5) + 6).toNat

end

end A225313.P11693181682872480846

/-! ## A225313.P15841584141274255539

`A225310(A027379(n+3)+9)`
-/

namespace A225313.P15841584141274255539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A027379 (n + 3) + 9).toNat

end

end A225313.P15841584141274255539

/-! ## A225313.P12805612245156618551

`A225310(A055998(n+3)+9)`
-/

namespace A225313.P12805612245156618551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A055998 (n + 3) + 9).toNat

end

end A225313.P12805612245156618551

/-! ## A225313.P910873132343751843

`A225310(A046691(n+3)+10)`
-/

namespace A225313.P910873132343751843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A046691 (n + 3) + 10).toNat

end

end A225313.P910873132343751843

/-!
# A225314: Number of 7Xn -1,1 arrays such that the sum over i=1..7,j=1..n of i*x(i,j) is zero and rows are nondecreasing (ways to put n thrusters pointing east or west at each of 7 positions 1..n distance from the hinge of a south-pointing gate without turning the gate).

The programs for A225314, there is no canonical definition to state claims against.
-/

/-! ## A225314.P15603197350659804643

`A225310(A167499(n+5)+2)`
-/

namespace A225314.P15603197350659804643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A167499 (n + 5) + 2).toNat

end

end A225314.P15603197350659804643

/-! ## A225314.P11396323969628479992

`A225310(A000217(n+6)+7)`
-/

namespace A225314.P11396323969628479992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A000217 (n + 6) + 7).toNat

end

end A225314.P11396323969628479992

/-! ## A225314.P11806952509547992496

`A225310(A027379(n+4)+10)`
-/

namespace A225314.P11806952509547992496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A027379 (n + 4) + 10).toNat

end

end A225314.P11806952509547992496

/-! ## A225314.P13254448658799257619

`A225310(A055998(n+4)+10)`
-/

namespace A225314.P13254448658799257619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A055998 (n + 4) + 10).toNat

end

end A225314.P13254448658799257619

/-! ## A225314.P9646554398402641165

`A225310(A008486(n+7)+A000124(n+3))`
-/

namespace A225314.P9646554398402641165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A008486 (n + 7) + A000124 (n + 3)).toNat

end

end A225314.P9646554398402641165

/-!
# A225315: Number of 8Xn -1,1 arrays such that the sum over i=1..8,j=1..n of i*x(i,j) is zero and rows are nondecreasing (ways to put n thrusters pointing east or west at each of 8 positions 1..n distance from the hinge of a south-pointing gate without turning the gate).

The programs for A225315, there is no canonical definition to state claims against.
-/

/-! ## A225315.P14712547984107049363

`A225310(A167499(n+6)+3)`
-/

namespace A225315.P14712547984107049363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A167499 (n + 6) + 3).toNat

end

end A225315.P14712547984107049363

/-! ## A225315.P6432842470216218370

`A225310(A000124(n+7)+7)`
-/

namespace A225315.P6432842470216218370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A000124 (n + 7) + 7).toNat

end

end A225315.P6432842470216218370

/-! ## A225315.P14463469845728281072

`A225310(A000217(n+7)+8)`
-/

namespace A225315.P14463469845728281072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A000217 (n + 7) + 8).toNat

end

end A225315.P14463469845728281072

/-! ## A225315.P1228768359906373818

`A225310(A167487(n+5)+n+8)`
-/

namespace A225315.P1228768359906373818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A167487 (n + 5) + (n + 8 : ℤ)).toNat

end

end A225315.P1228768359906373818

/-! ## A225315.P8484181519666668761

`A225310(A056000(n+7)-A008586(n+5))`
-/

namespace A225315.P8484181519666668761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225310 (A056000 (n + 7) - A008586 (n + 5)).toNat

end

end A225315.P8484181519666668761

/-!
# A225316: a(n) = practical(2^n) where practical(n) is the n-th practical number (A005153).

The programs for A225316, there is no canonical definition to state claims against.
-/

/-! ## A225316.P6754074220428693269

`A005153(A000079(n))`
-/

namespace A225316.P6754074220428693269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (A000079 n).toNat

end

end A225316.P6754074220428693269

/-! ## A225316.P10952529213348952821

`A005153(2^n)`
-/

namespace A225316.P10952529213348952821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (2 ^ n)

end

end A225316.P10952529213348952821

/-! ## A225316.P4552211191608990020

`record[A005153(A001316(n))]`
-/

namespace A225316.P4552211191608990020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225316.P4552211191608990020

/-! ## A225316.P403941766455480521

`record[A005153(A048483(n))]`
-/

namespace A225316.P403941766455480521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (A048483 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225316.P403941766455480521

/-! ## A225316.P15209776087647983406

`record[A005153(A055248(n))]`
-/

namespace A225316.P15209776087647983406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225316.P15209776087647983406

/-!
# A225317: Numbers k such that 10k is a partition number.

The programs for A225317, there is no canonical definition to state claims against.
-/

/-! ## A225317.P12598711262642497230

`A000041(eq[0, A178743(n)])/10`
-/

namespace A225317.P12598711262642497230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178743 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 10

end

end A225317.P12598711262642497230

/-! ## A225317.P15932852498328352283

`A000041(lt[A178743(n), 1])/10`
-/

namespace A225317.P15932852498328352283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178743 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) : ℚ) / 10

end

end A225317.P15932852498328352283

/-! ## A225317.P11056390572949786416

`A000041(eq[0, A000041(n)%10])/10`
-/

namespace A225317.P11056390572949786416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 10

end

end A225317.P11056390572949786416

/-! ## A225317.P1455934377209658768

`A000041(lt[5, gcd(10, A000041(n))])/10`
-/

namespace A225317.P1455934377209658768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A000041 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) : ℚ) / 10

end

end A225317.P1455934377209658768

/-! ## A225317.P12061328855335855508

`∩[A052001(n+1), A225325(n+1)]/10`
-/

namespace A225317.P12061328855335855508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225325 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 10

end

end A225317.P12061328855335855508

/-!
# A225318: Numbers n such that either prime(n-1) == -1 (mod n) or prime(n+1) == -1 (mod n) but not both.

The programs for A225318, there is no canonical definition to state claims against.
-/

/-! ## A225318.P13018852482436252724

`A354601(A068991(n+1))+A047705(n)`
-/

namespace A225318.P13018852482436252724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354601 ((A068991 (n + 1)).toNat + 10) + A047705 n

end

end A225318.P13018852482436252724

/-! ## A225318.P7136193318977056220

`A327804(A217009(n+1))+A088146(n+1)`
-/

namespace A225318.P7136193318977056220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327804 (A217009 (n + 1)).toNat + A088146 (n + 1)

end

end A225318.P7136193318977056220

/-!
# A225319: Prime numbers p such that p - (product of digits of p) is also prime.

The programs for A225319, there is no canonical definition to state claims against.
-/

/-! ## A225319.P3296791870804620159

`p?[A229221(n+1)]`
-/

namespace A225319.P3296791870804620159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A225319.P3296791870804620159

/-! ## A225319.P17817374010941587259

`p?[eq[0, A007920(A070565(n))]]`
-/

namespace A225319.P17817374010941587259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A070565 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A225319.P17817374010941587259

/-! ## A225319.P10665659330700801395

`filter[A229221(n+1), A010051(#)]`
-/

namespace A225319.P10665659330700801395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A225319.P10665659330700801395

/-! ## A225319.P3896221711201037935

`filter[A229221(n+1), A080339(#)]`
-/

namespace A225319.P3896221711201037935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A225319.P3896221711201037935

/-! ## A225319.P5848345891207886049

`filter[A229221(n+1), A080545(#)]`
-/

namespace A225319.P5848345891207886049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A225319.P5848345891207886049

/-! ## A225319.P13669214285597470593

`filter[A229221(n+1), A171387(#)]`
-/

namespace A225319.P13669214285597470593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A225319.P13669214285597470593

/-! ## A225319.P13543131475583565180

`filter[A229221(n+1), A252233(#)]`
-/

namespace A225319.P13543131475583565180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A225319.P13543131475583565180

/-! ## A225319.P4271964402597435856

`filter[A229221(n+1), A257531(#)]`
-/

namespace A225319.P4271964402597435856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A225319.P4271964402597435856

/-! ## A225319.P15423501156222161426

`filter[A229221(n+1), A323152(#)]`
-/

namespace A225319.P15423501156222161426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A225319.P15423501156222161426

/-! ## A225319.P129006743966810300

`filter[A229221(n+1), A323153(#)]`
-/

namespace A225319.P129006743966810300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A225319.P129006743966810300

/-!
# A225320: The number of iterations of the bi-unitary totient A116550 needed to reach 1 starting with n.

The programs for A225320, there is no canonical definition to state claims against.
-/

/-! ## A225320.P17271028906669802011

`1+a(A116550(n+1)-1)` with `a(0)=0`
-/

namespace A225320.P17271028906669802011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A116550 (n + 1) - 1).toNat

end

end A225320.P17271028906669802011

/-! ## A225320.P18116108302652695802

`a(Δ[A306070(abs(1-n)+1)]-1)+1` with `a(0)=0`
-/

namespace A225320.P18116108302652695802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306070 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (f1 (n + 1) - f1 n - 1).toNat + 1

end

end A225320.P18116108302652695802

/-!
# A225322: Lucky numbers that are prime powers.

The programs for A225322, there is no canonical definition to state claims against.
-/

/-! ## A225322.P18389626454975543014

`∩[A000959(n+1), A025475(n+1)]`
-/

namespace A225322.P18389626454975543014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225322.P18389626454975543014

/-! ## A225322.P8775845061578355058

`∩[A025475(n+1), A031879(n+1)]`
-/

namespace A225322.P8775845061578355058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225322.P8775845061578355058

/-! ## A225322.P907434043050209918

`∩[A031879(n+1), A134611(n+1)]`
-/

namespace A225322.P907434043050209918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225322.P907434043050209918

/-! ## A225322.P10097118387878821624

`∩[A031879(n+1), A244623(n+1)]`
-/

namespace A225322.P10097118387878821624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225322.P10097118387878821624

/-! ## A225322.P13113602552870182758

`filter[A025475(n+1), A145649(#)]`
-/

namespace A225322.P13113602552870182758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A225322.P13113602552870182758

/-!
# A225323: Numbers n such that 11n is a partition number.

The programs for A225323, there is no canonical definition to state claims against.
-/

/-! ## A225323.P17256081844688948062

`A225361(n+1)/11`
-/

namespace A225323.P17256081844688948062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225361 (n + 1) : ℚ) / 11

end

end A225323.P17256081844688948062

/-! ## A225323.P10488219701604204838

`A000041(A027827(n+1))/11`
-/

namespace A225323.P10488219701604204838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (A027827 (n + 1)).toNat : ℚ) / 11

end

end A225323.P10488219701604204838

/-! ## A225323.P1085824818502383190

`A000041(eq[0, A020919(n)])/11`
-/

namespace A225323.P1085824818502383190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020919 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 11

end

end A225323.P1085824818502383190

/-! ## A225323.P7088481487579218183

`A035444(4*A027827(n+1))/11`
-/

namespace A225323.P7088481487579218183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035444 (4 * A027827 (n + 1)).toNat : ℚ) / 11

end

end A225323.P7088481487579218183

/-! ## A225323.P13679830050173765390

`A000041(eq[0, A000041(n)%11])/11`
-/

namespace A225323.P13679830050173765390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 11

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 11

end

end A225323.P13679830050173765390

/-!
# A225324: Partition numbers of the form 4k.

The programs for A225324, there is no canonical definition to state claims against.
-/

/-! ## A225324.P2438702364654325894

`A000041(A237278(n+1))`
-/

namespace A225324.P2438702364654325894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A237278 (n + 1)).toNat

end

end A225324.P2438702364654325894

/-! ## A225324.P3187668978296404347

`4*A216258(n+1)`
-/

namespace A225324.P3187668978296404347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A216258 (n + 1)

end

end A225324.P3187668978296404347

/-! ## A225324.P12025213982307982109

`A000041(lt[1, A278478(n)])`
-/

namespace A225324.P12025213982307982109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A225324.P12025213982307982109

/-! ## A225324.P17292854322125428639

`A000065(lt[1, A278478(n)])+1`
-/

namespace A225324.P17292854322125428639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A225324.P17292854322125428639

/-! ## A225324.P2643209229810871657

`A000041(eq[0, A000041(n)%4])`
-/

namespace A225324.P2643209229810871657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225324.P2643209229810871657

/-! ## A225324.P15937058828905492621

`A000041(lt[1, val(A000041(n), 2)])`
-/

namespace A225324.P15937058828905492621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000041 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225324.P15937058828905492621

/-! ## A225324.P17572236771661353540

`A000041(eq[0, and(3, A000041(n))])`
-/

namespace A225324.P17572236771661353540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225324.P17572236771661353540

/-! ## A225324.P7340708302026791128

`A000041(eq[4, gcd(4, A000041(n))])`
-/

namespace A225324.P7340708302026791128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A225324.P7340708302026791128

/-! ## A225324.P5963454807604204698

`A000041(lt[and(3, A000041(n)), 1])`
-/

namespace A225324.P5963454807604204698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000041 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A225324.P5963454807604204698

/-! ## A225324.P6213997430737071867

`∪[A225358(n+1), A278196(n+1)]`
-/

namespace A225324.P6213997430737071867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225324.P6213997430737071867

/-!
# A225325: Partition numbers of the form 5k.

The programs for A225325, there is no canonical definition to state claims against.
-/

/-! ## A225325.P11396310027019123856

`5*A217725(n+1)`
-/

namespace A225325.P11396310027019123856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A217725 (n + 1)

end

end A225325.P11396310027019123856

/-! ## A225325.P9917164929537536257

`A000041(A243935(n+1))`
-/

namespace A225325.P9917164929537536257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A243935 (n + 1)).toNat

end

end A225325.P9917164929537536257

/-! ## A225325.P12170531285089472683

`A000041(eq[0, A068908(n)])`
-/

namespace A225325.P12170531285089472683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225325.P12170531285089472683

/-! ## A225325.P5612651682676356014

`A000041(lt[A068908(n), 1])`
-/

namespace A225325.P5612651682676356014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068908 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A225325.P5612651682676356014

/-! ## A225325.P16268948789664790912

`A000041(eq[0, A000041(n)%5])`
-/

namespace A225325.P16268948789664790912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225325.P16268948789664790912

/-! ## A225325.P8578795217438624709

`A000041(eq[5, gcd(5, A000041(n))])`
-/

namespace A225325.P8578795217438624709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A225325.P8578795217438624709

/-! ## A225325.P14751667754870088624

`A000065(A243935(A000027(n+1)))+1`
-/

namespace A225325.P14751667754870088624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (A243935 (A000027 (n + 1)).toNat).toNat + 1

end

end A225325.P14751667754870088624

/-! ## A225325.P1505087172503743230

`A035363(2*A243935(n+1))`
-/

namespace A225325.P1505087172503743230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * A243935 (n + 1)).toNat

end

end A225325.P1505087172503743230

/-! ## A225325.P10405599296995633464

`A000041(lt[A000041(n)²%5, 1])`
-/

namespace A225325.P10405599296995633464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n ^ 2) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A225325.P10405599296995633464

/-!
# A225326: Partition numbers of the form 6k.

The programs for A225326, there is no canonical definition to state claims against.
-/

/-! ## A225326.P4243795139298541326

`6*A217726(n+1)`
-/

namespace A225326.P4243795139298541326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A217726 (n + 1)

end

end A225326.P4243795139298541326

/-! ## A225326.P4765169269013337027

`A000041(eq[0, A000041(n)%6])`
-/

namespace A225326.P4765169269013337027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225326.P4765169269013337027

/-! ## A225326.P14163479566472230110

`A000041(eq[6, gcd(6, A000041(n))])`
-/

namespace A225326.P14163479566472230110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A225326.P14163479566472230110

/-! ## A225326.P11541007507253625598

`∩[A052001(n+1), A087183(n+1)]`
-/

namespace A225326.P11541007507253625598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225326.P11541007507253625598

/-! ## A225326.P15918552874417824587

`∩[2*A213179(n+1), A087183(n+1)]`
-/

namespace A225326.P15918552874417824587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225326.P15918552874417824587

/-! ## A225326.P17878625165212756314

`∩[A000041(A001560(n+1)), A087183(n+1)]`
-/

namespace A225326.P17878625165212756314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A001560 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225326.P17878625165212756314

/-! ## A225326.P8722926780384225945

`∩[A052001(n+1), A000041(A083214(n+1))]`
-/

namespace A225326.P8722926780384225945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A083214 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225326.P8722926780384225945

/-!
# A225327: Partition numbers of the form 7k.

The programs for A225327, there is no canonical definition to state claims against.
-/

/-! ## A225327.P10019011631035140849

`7*A222175(n+1)`
-/

namespace A225327.P10019011631035140849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A222175 (n + 1)

end

end A225327.P10019011631035140849

/-! ## A225327.P4520577677948312843

`A000041(A243936(n+1))`
-/

namespace A225327.P4520577677948312843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A243936 (n + 1)).toNat

end

end A225327.P4520577677948312843

/-! ## A225327.P4026812655322066733

`A000041(eq[0, A000041(n)%7])`
-/

namespace A225327.P4026812655322066733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225327.P4026812655322066733

/-! ## A225327.P3883306249846842631

`A000041(lt[1, gcd(7, A000041(n))])`
-/

namespace A225327.P3883306249846842631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225327.P3883306249846842631

/-! ## A225327.P17354759182621160286

`A035363(2*A243936(n+1))`
-/

namespace A225327.P17354759182621160286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * A243936 (n + 1)).toNat

end

end A225327.P17354759182621160286

/-! ## A225327.P7488022273003380024

`A119620(2*A243936(n+1))`
-/

namespace A225327.P7488022273003380024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * A243936 (n + 1)).toNat

end

end A225327.P7488022273003380024

/-! ## A225327.P1813930305598632552

`A119620(A243936(n+1)+A243936(n+1)+1)`
-/

namespace A225327.P1813930305598632552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (A243936 (n + 1) + (A243936 (n + 1) + 1)).toNat

end

end A225327.P1813930305598632552

/-! ## A225327.P17809928859357570208

`A000041(lt[A000041(n)²%7, 1])`
-/

namespace A225327.P17809928859357570208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n ^ 2) 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A225327.P17809928859357570208

/-!
# A225328: a(n) = A002426(n)^n, where A002426 is the central trinomial coefficients.

The programs for A225328, the canonical program `A225328.P14388853100062003675` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225328 has offset 0).

The definition of A225328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225328.P14388853100062003675

`A002426(n)^n`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A225328

/-- `A002426(n)^n` -/
def P14388853100062003675.Spec : Prop :=
  ∀ n, P14388853100062003675.a n = A225328 n

theorem P14388853100062003675.correct : P14388853100062003675.Spec := by
  intro n
  simp only [A225328]

end A225328

/-! ## A225328.P12053826539237966896

`sqrt(A168597(n))^n`
-/

namespace A225328.P12053826539237966896
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A168597 n : ℝ) ^ n

end

end A225328.P12053826539237966896

namespace A225328

/-- `sqrt(A168597(n))^n` -/
def P12053826539237966896.Spec : Prop :=
  ∀ n, P12053826539237966896.a n = (A225328 n : ℝ)

end A225328

/-! ## A225328.P3233506908784652389

`A094531(∑[n])^n`
-/

namespace A225328.P3233506908784652389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A225328.P3233506908784652389

namespace A225328

/-- `A094531(∑[n])^n` -/
def P3233506908784652389.Spec : Prop :=
  ∀ n, P3233506908784652389.a n = A225328 n

end A225328

/-! ## A225328.P3381341995829134246

`A111960(∑[n])^n`
-/

namespace A225328.P3381341995829134246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111960 (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A225328.P3381341995829134246

namespace A225328

/-- `A111960(∑[n])^n` -/
def P3381341995829134246.Spec : Prop :=
  ∀ n, P3381341995829134246.a n = A225328 n

end A225328

/-! ## A225328.P14422381003259883571

`A114422(∑[n])^n`
-/

namespace A225328.P14422381003259883571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114422 (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A225328.P14422381003259883571

namespace A225328

/-- `A114422(∑[n])^n` -/
def P14422381003259883571.Spec : Prop :=
  ∀ n, P14422381003259883571.a n = A225328 n

end A225328

/-!
# A225332: A continuous "look-and-repeat" sequence (seed 2).

The programs for A225332, there is no canonical definition to state claims against.
-/

/-! ## A225332.P13339677217508859474

`A094917(A094897(n)+A025147(n+2))`
-/

namespace A225332.P13339677217508859474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094917 (A094897 n + A025147 (n + 2)).toNat

end

end A225332.P13339677217508859474

/-!
# A225333: Look-and-repeat: similar to look-and-say except frequency is repeated (seed 2).

The programs for A225333, there is no canonical definition to state claims against.
-/

/-! ## A225333.P9681919270772157218

`A225334(n+1)-1`
-/

namespace A225333.P9681919270772157218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225334 (n + 1) - 1

end

end A225333.P9681919270772157218

/-!
# A225334: Look-and-repeat: similar to look-and-say except frequency is repeated (seed 3).

The programs for A225334, there is no canonical definition to state claims against.
-/

/-! ## A225334.P4924892958140675874

`A225333(n+1)+1`
-/

namespace A225334.P4924892958140675874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225333 (n + 1) + 1

end

end A225334.P4924892958140675874

/-!
# A225337: Incrementally largest terms in the continued fraction of the Golomb-Dickman constant.

The programs for A225337, there is no canonical definition to state claims against.
-/

/-! ## A225337.P8046083032217979473

`record[A225336(n)]`
-/

namespace A225337.P8046083032217979473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225337.P8046083032217979473

/-! ## A225337.P18329114587971842319

`A225336(A225363(n+1))`
-/

namespace A225337.P18329114587971842319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225336 (A225363 (n + 1)).toNat

end

end A225337.P18329114587971842319

/-!
# A225338: Number of n X 2 -1,1 arrays such that the sum over i=1..n, j=1..2 of i*x(i,j) is zero, the sum of x(i,j) is zero, and rows are nondecreasing (number of ways to distribute 2-across galley oarsmen left-right at n fore-aft positions so that there are no turning moments on the ship).

The programs for A225338, there is no canonical definition to state claims against.
-/

/-! ## A225338.P16925291906569546021

`A225345(A000096(A028310(n)))`
-/

namespace A225338.P16925291906569546021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A000096 (A028310 n).toNat).toNat

end

end A225338.P16925291906569546021

/-! ## A225338.P14549845889919887600

`A225345(A326657(n)+A267182(n))`
-/

namespace A225338.P14549845889919887600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A326657 n + A267182 n).toNat

end

end A225338.P14549845889919887600

/-! ## A225338.P16197552925206801085

`A225345(A025581(A000124(n))+A000124(n))`
-/

namespace A225338.P16197552925206801085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A025581 (A000124 n).toNat + A000124 n).toNat

end

end A225338.P16197552925206801085

/-! ## A225338.P10302445516313017291

`A225345(A133263(n)+A025581(A133263(n)))`
-/

namespace A225338.P10302445516313017291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A133263 n + A025581 (A133263 n).toNat).toNat

end

end A225338.P10302445516313017291

/-! ## A225338.P11074165588898576223

`A225345(A233583(Δ[A000292(n)]))`
-/

namespace A225338.P11074165588898576223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A233583 (f1 (n + 1) - f1 n).toNat).toNat

end

end A225338.P11074165588898576223

/-!
# A225339: Number of nX3 -1,1 arrays such that the sum over i=1..n,j=1..3 of i*x(i,j) is zero, the sum of x(i,j) is zero, and rows are nondecreasing (number of ways to distribute 3-across galley oarsmen left-right at n fore-aft positions so that there are no turning moments on the ship).

The programs for A225339, there is no canonical definition to state claims against.
-/

/-! ## A225339.P14651451682974370285

`A225345(A373663(n+1))`
-/

namespace A225339.P14651451682974370285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A373663 (n + 1)).toNat

end

end A225339.P14651451682974370285

/-! ## A225339.P4951885008393504244

`A225345(A265724(n+1)+1)`
-/

namespace A225339.P4951885008393504244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A265724 (n + 1) + 1).toNat

end

end A225339.P4951885008393504244

/-! ## A225339.P2374417864032579724

`A225345(∑[n+3]+1)`
-/

namespace A225339.P2374417864032579724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A225339.P2374417864032579724

/-! ## A225339.P9197890451032925724

`lcm(2, A225345(A055999(n)+4))`
-/

namespace A225339.P9197890451032925724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A225345 (A055999 n + 4).toNat)

end

end A225339.P9197890451032925724

/-! ## A225339.P11824201069352013363

`A225345(A055999(n)+4)%A242586(n)`
-/

namespace A225339.P11824201069352013363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225345 (A055999 n + 4).toNat) (A242586 n)

end

end A225339.P11824201069352013363

/-! ## A225339.P5570327008317096934

`A225345(A055999(n)+4)+A001222(((-1)^n)²)`
-/

namespace A225339.P5570327008317096934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A055999 n + 4).toNat + A001222 (((-1) ^ n) ^ 2).toNat

end

end A225339.P5570327008317096934

/-!
# A225340: Number of nX4 -1,1 arrays such that the sum over i=1..n,j=1..4 of i*x(i,j) is zero, the sum of x(i,j) is zero, and rows are nondecreasing (number of ways to distribute 4-across galley oarsmen left-right at n fore-aft positions so that there are no turning moments on the ship).

The programs for A225340, there is no canonical definition to state claims against.
-/

/-! ## A225340.P10268007603101763459

`A225345(A027379(n+2))`
-/

namespace A225340.P10268007603101763459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A027379 (n + 2)).toNat

end

end A225340.P10268007603101763459

/-! ## A225340.P3302126868606345750

`A225345(A055998(n+2))`
-/

namespace A225340.P3302126868606345750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A055998 (n + 2)).toNat

end

end A225340.P3302126868606345750

/-! ## A225340.P11968629124630533139

`A225345(A155212(n)+5)`
-/

namespace A225340.P11968629124630533139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A155212 n + 5).toNat

end

end A225340.P11968629124630533139

/-! ## A225340.P7012203663141495515

`A225345(A052905(n+1)+2)`
-/

namespace A225340.P7012203663141495515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A052905 (n + 1) + 2).toNat

end

end A225340.P7012203663141495515

/-! ## A225340.P10496259286928589772

`A225345(eq[2, A129713(n)]+1)`
-/

namespace A225340.P10496259286928589772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A225340.P10496259286928589772

/-! ## A225340.P7640710485647378167

`A225345(A167499(n)+A016777(n))`
-/

namespace A225340.P7640710485647378167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A167499 n + A016777 n).toNat

end

end A225340.P7640710485647378167

/-! ## A225340.P16002067571255520275

`A225345(A167614(n+1)+A005408(n))`
-/

namespace A225340.P16002067571255520275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A167614 (n + 1) + A005408 n).toNat

end

end A225340.P16002067571255520275

/-!
# A225341: Number of nX5 -1,1 arrays such that the sum over i=1..n,j=1..5 of i*x(i,j) is zero, the sum of x(i,j) is zero, and rows are nondecreasing (number of ways to distribute 5-across galley oarsmen left-right at n fore-aft positions so that there are no turning moments on the ship).

The programs for A225341, there is no canonical definition to state claims against.
-/

/-! ## A225341.P8046003626900239559

`A225345(A374005(n+1))`
-/

namespace A225341.P8046003626900239559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A374005 (n + 1)).toNat

end

end A225341.P8046003626900239559

/-! ## A225341.P8683613654321571674

`A225345(A046691(n+3))`
-/

namespace A225341.P8683613654321571674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A046691 (n + 3)).toNat

end

end A225341.P8683613654321571674

/-! ## A225341.P14356174918810328420

`A225345(Δ[A023545(n+1)])`
-/

namespace A225341.P14356174918810328420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (f1 (n + 1) - f1 n).toNat

end

end A225341.P14356174918810328420

/-! ## A225341.P14888014106713705389

`A225345(A027379(n+3)-1)`
-/

namespace A225341.P14888014106713705389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A027379 (n + 3) - 1).toNat

end

end A225341.P14888014106713705389

/-! ## A225341.P8675500801925749033

`A225345(A000217(n+4)+n+1)`
-/

namespace A225341.P8675500801925749033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A225341.P8675500801925749033

/-!
# A225342: Number of nX6 -1,1 arrays such that the sum over i=1..n,j=1..6 of i*x(i,j) is zero, the sum of x(i,j) is zero, and rows are nondecreasing (number of ways to distribute 6-across galley oarsmen left-right at n fore-aft positions so that there are no turning moments on the ship).

The programs for A225342, there is no canonical definition to state claims against.
-/

/-! ## A225342.P13592582848360331566

`A225345(A052905(n+3))`
-/

namespace A225342.P13592582848360331566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A052905 (n + 3)).toNat

end

end A225342.P13592582848360331566

/-! ## A225342.P9689322274755259434

`A225345(A034856(n+5)-3)`
-/

namespace A225342.P9689322274755259434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A034856 (n + 5) - 3).toNat

end

end A225342.P9689322274755259434

/-! ## A225342.P9902090508156389697

`A225345(A000217(n+6)-5)`
-/

namespace A225342.P9902090508156389697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A000217 (n + 6) - 5).toNat

end

end A225342.P9902090508156389697

/-! ## A225342.P15520668994641933886

`A225345(Δ[Δ[A006504(n+1)]])`
-/

namespace A225342.P15520668994641933886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (f1 (n + 1) - f1 n).toNat

end

end A225342.P15520668994641933886

/-! ## A225342.P8651698315162053259

`A225345(Δ[A023545(n+2)]-1)`
-/

namespace A225342.P8651698315162053259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (f1 (n + 1) - f1 n - 1).toNat

end

end A225342.P8651698315162053259

/-! ## A225342.P8328116344895714848

`A225345(A016777(2*n+5)+A000217(n))`
-/

namespace A225342.P8328116344895714848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A016777 (2 * n + 5) + A000217 n).toNat

end

end A225342.P8328116344895714848

/-! ## A225342.P12667212639587051325

`A225345(A005843(3*n+8)+A000217(n))`
-/

namespace A225342.P12667212639587051325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A005843 (3 * n + 8) + A000217 n).toNat

end

end A225342.P12667212639587051325

/-!
# A225343: Number of nX7 -1,1 arrays such that the sum over i=1..n,j=1..7 of i*x(i,j) is zero, the sum of x(i,j) is zero, and rows are nondecreasing (number of ways to distribute 7-across galley oarsmen left-right at n fore-aft positions so that there are no turning moments on the ship).

The programs for A225343, there is no canonical definition to state claims against.
-/

/-! ## A225343.P6199085562617511455

`A225345(A374008(n+1))`
-/

namespace A225343.P6199085562617511455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A374008 (n + 1)).toNat

end

end A225343.P6199085562617511455

/-! ## A225343.P13579851719513442938

`A225345(A055999(n+4))`
-/

namespace A225343.P13579851719513442938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A055999 (n + 4)).toNat

end

end A225343.P13579851719513442938

/-! ## A225343.P9037900008550422050

`A225345(A052905(n+4)-1)`
-/

namespace A225343.P9037900008550422050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A052905 (n + 4) - 1).toNat

end

end A225343.P9037900008550422050

/-! ## A225343.P13196914374586020747

`A225345(A046691(n+5)-2)`
-/

namespace A225343.P13196914374586020747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A046691 (n + 5) - 2).toNat

end

end A225343.P13196914374586020747

/-! ## A225343.P8657389061078254435

`A225345(A000124(n+7)-7)`
-/

namespace A225343.P8657389061078254435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A000124 (n + 7) - 7).toNat

end

end A225343.P8657389061078254435

/-! ## A225343.P18313522341929331302

`A225345(A000096(n+5)+n+2)`
-/

namespace A225343.P18313522341929331302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A225343.P18313522341929331302

/-!
# A225344: Number of nX8 -1,1 arrays such that the sum over i=1..n,j=1..8 of i*x(i,j) is zero, the sum of x(i,j) is zero, and rows are nondecreasing (number of ways to distribute 8-across galley oarsmen left-right at n fore-aft positions so that there are no turning moments on the ship).

The programs for A225344, there is no canonical definition to state claims against.
-/

/-! ## A225344.P13418866775226567095

`A225345(A046691(n+6)-3)`
-/

namespace A225344.P13418866775226567095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A046691 (n + 6) - 3).toNat

end

end A225344.P13418866775226567095

/-! ## A225344.P14943989706426382818

`A225345(A000124(n+8)-8)`
-/

namespace A225344.P14943989706426382818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A000124 (n + 8) - 8).toNat

end

end A225344.P14943989706426382818

/-! ## A225344.P14310903288964121413

`A225345(A016897(n+4)+A000096(n+2))`
-/

namespace A225344.P14310903288964121413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A016897 (n + 4) + A000096 (n + 2)).toNat

end

end A225344.P14310903288964121413

/-! ## A225344.P8148800506158399565

`A225345(A052905(n+3)+A005408(n+6))`
-/

namespace A225344.P8148800506158399565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A052905 (n + 3) + A005408 (n + 6)).toNat

end

end A225344.P8148800506158399565

/-! ## A225344.P395929999641824524

`A225345(A103517(n+5)+A046691(n+4))`
-/

namespace A225344.P395929999641824524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A103517 (n + 5) + A046691 (n + 4)).toNat

end

end A225344.P395929999641824524

/-!
# A225345: T(n,k) = Number of n X k {-1,1}-arrays such that the sum over i=1..n,j=1..k of i*x(i,j) is zero, the sum of x(i,j) is zero, and rows are nondecreasing (number of ways to distribute k-across galley oarsmen left-right at n fore-aft positions so that there are no turning moments on the ship).

The programs for A225345, there is no canonical definition to state claims against.
-/

/-! ## A225345.P6420000234553405534

`A004723(A104867(n+1))%A000005(n+1)`
-/

namespace A225345.P6420000234553405534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004723 (A104867 (n + 1)).toNat) (A000005 (n + 1))

end

end A225345.P6420000234553405534

/-! ## A225345.P6994844665814665391

`and(A006450(A042950(n)), A014587(n))`
-/

namespace A225345.P6994844665814665391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006450 (A042950 n).toNat) (A014587 n)

end

end A225345.P6994844665814665391

/-! ## A225345.P17314639033702385640

`and(A006530(A069111(n)), A051162(n))`
-/

namespace A225345.P17314639033702385640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (A069111 n).toNat) (A051162 n)

end

end A225345.P17314639033702385640

/-! ## A225345.P18434565014594058563

`and(A006530(A069111(n)), A134478(n))`
-/

namespace A225345.P18434565014594058563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (A069111 n).toNat) (A134478 n)

end

end A225345.P18434565014594058563

/-! ## A225345.P14040633273740178295

`and(A054238(n), A324925(A287215(n)))`
-/

namespace A225345.P14040633273740178295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054238 n) (A324925 (A287215 n).toNat)

end

end A225345.P14040633273740178295

/-!
# A225346: Number of 6Xn -1,1 arrays such that the sum over i=1..6,j=1..n of i*x(i,j) is zero, the sum of x(i,j) is zero, and rows are nondecreasing (number of ways to distribute n-across galley oarsmen left-right at 6 fore-aft positions so that there are no turning moments on the ship).

The programs for A225346, there is no canonical definition to state claims against.
-/

/-! ## A225346.P11781828176994012057

`A225345(A000217(n+5)+6)`
-/

namespace A225346.P11781828176994012057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A000217 (n + 5) + 6).toNat

end

end A225346.P11781828176994012057

/-! ## A225346.P561815670876485518

`A225345(A000124(n+6)-(n+1))`
-/

namespace A225346.P561815670876485518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A225346.P561815670876485518

/-! ## A225346.P13241093934637110351

`A225345(A004277(n+7)+A000124(n+3))`
-/

namespace A225346.P13241093934637110351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A004277 (n + 7) + A000124 (n + 3)).toNat

end

end A225346.P13241093934637110351

/-! ## A225346.P14642945512975589576

`A225345(A002620(n+2)+A002620(n+9))`
-/

namespace A225346.P14642945512975589576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A225346.P14642945512975589576

/-! ## A225346.P18270786277706102708

`A225345(A052905(n+6)-A005408(A005408(n+4)))`
-/

namespace A225346.P18270786277706102708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A052905 (n + 6) - A005408 (A005408 (n + 4)).toNat).toNat

end

end A225346.P18270786277706102708

/-!
# A225347: Number of 7Xn -1,1 arrays such that the sum over i=1..7,j=1..n of i*x(i,j) is zero, the sum of x(i,j) is zero, and rows are nondecreasing (number of ways to distribute n-across galley oarsmen left-right at 7 fore-aft positions so that there are no turning moments on the ship).

The programs for A225347, there is no canonical definition to state claims against.
-/

/-! ## A225347.P1569017932548050873

`A225345(A000217(n+6)+7)`
-/

namespace A225347.P1569017932548050873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A000217 (n + 6) + 7).toNat

end

end A225347.P1569017932548050873

/-! ## A225347.P10719061301239943766

`A225345(A027379(n+4)+10)`
-/

namespace A225347.P10719061301239943766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A027379 (n + 4) + 10).toNat

end

end A225347.P10719061301239943766

/-! ## A225347.P9699839990074770272

`A225345(eq[5, A129713(n)]+13)`
-/

namespace A225347.P9699839990074770272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 13)

end

end A225347.P9699839990074770272

/-! ## A225347.P9680532569603485682

`A225345(A000124(n+7)-(n+1))`
-/

namespace A225347.P9680532569603485682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A225347.P9680532569603485682

/-! ## A225347.P13484968053045648433

`A225345(A052905(n+5)-(2*n+3))`
-/

namespace A225347.P13484968053045648433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A052905 (n + 5) - (2 * n + 3 : ℤ)).toNat

end

end A225347.P13484968053045648433

/-! ## A225347.P11067415014577054092

`A225345(A046691(n+6)-A103517(n+1))`
-/

namespace A225347.P11067415014577054092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A046691 (n + 6) - A103517 (n + 1)).toNat

end

end A225347.P11067415014577054092

/-! ## A225347.P7776554965687684625

`A225345((A000124(n+6)+6)*A000038(n)!)`
-/

namespace A225347.P7776554965687684625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 ((A000124 (n + 6) + 6) * (Nat.factorial (A000038 n).toNat : ℤ)).toNat

end

end A225347.P7776554965687684625

/-! ## A225347.P10491569222240869433

`A008619(A142150(n))*A225345(A000124(n+6)+6)`
-/

namespace A225347.P10491569222240869433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A142150 n).toNat * A225345 (A000124 (n + 6) + 6).toNat

end

end A225347.P10491569222240869433

/-!
# A225348: Number of 8Xn -1,1 arrays such that the sum over i=1..8,j=1..n of i*x(i,j) is zero, the sum of x(i,j) is zero, and rows are nondecreasing (number of ways to distribute n-across galley oarsmen left-right at 8 fore-aft positions so that there are no turning moments on the ship).

The programs for A225348, there is no canonical definition to state claims against.
-/

/-! ## A225348.P16260065780664624729

`A225345(A000217(n+7)+8)`
-/

namespace A225348.P16260065780664624729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A000217 (n + 7) + 8).toNat

end

end A225348.P16260065780664624729

/-! ## A225348.P17783782860552751493

`A225345(A161680(n+8)+8)`
-/

namespace A225348.P17783782860552751493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A161680 (n + 8) + 8).toNat

end

end A225348.P17783782860552751493

/-! ## A225348.P16088939639355593303

`A225345(eq[9, A131818(n+1)])`
-/

namespace A225348.P16088939639355593303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225348.P16088939639355593303

/-! ## A225348.P4596668631346340931

`A225345(eq[8, A130321(n)/8]+15)`
-/

namespace A225348.P4596668631346340931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130321 n : ℚ) / 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 15)

end

end A225348.P4596668631346340931

/-! ## A225348.P13041505776377262213

`A225345(A000124(n+8)-(n+1))`
-/

namespace A225348.P13041505776377262213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A000124 (n + 8) - (n + 1 : ℤ)).toNat

end

end A225348.P13041505776377262213

/-!
# A225349: Number of 9Xn -1,1 arrays such that the sum over i=1..9,j=1..n of i*x(i,j) is zero, the sum of x(i,j) is zero, and rows are nondecreasing (number of ways to distribute n-across galley oarsmen left-right at 9 fore-aft positions so that there are no turning moments on the ship).

The programs for A225349, there is no canonical definition to state claims against.
-/

/-! ## A225349.P11155417478902579362

`A225345(A000124(n+8)+8)`
-/

namespace A225349.P11155417478902579362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A000124 (n + 8) + 8).toNat

end

end A225349.P11155417478902579362

/-! ## A225349.P10582813066195808024

`A225345(A000217(n+8)+9)`
-/

namespace A225349.P10582813066195808024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A000217 (n + 8) + 9).toNat

end

end A225349.P10582813066195808024

/-! ## A225349.P1146025114893242733

`A225345(eq[10, A131818(n+1)])`
-/

namespace A225349.P1146025114893242733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225349.P1146025114893242733

/-! ## A225349.P12645908884850825663

`A225345(A052905(n+7)-(2*n+5))`
-/

namespace A225349.P12645908884850825663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A052905 (n + 7) - (2 * n + 5 : ℤ)).toNat

end

end A225349.P12645908884850825663

/-! ## A225349.P17378951037450586894

`A225345(A046691(n+8)-A103517(n+2))`
-/

namespace A225349.P17378951037450586894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A046691 (n + 8) - A103517 (n + 2)).toNat

end

end A225349.P17378951037450586894

/-!
# A225350: Number of 10Xn -1,1 arrays such that the sum over i=1..10,j=1..n of i*x(i,j) is zero, the sum of x(i,j) is zero, and rows are nondecreasing (number of ways to distribute n-across galley oarsmen left-right at 10 fore-aft positions so that there are no turning moments on the ship).

The programs for A225350, there is no canonical definition to state claims against.
-/

/-! ## A225350.P16788617562840195655

`A225345(A166136(n+8)+4)`
-/

namespace A225350.P16788617562840195655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A166136 (n + 8) + 4).toNat

end

end A225350.P16788617562840195655

/-! ## A225350.P16157608153429838609

`A225345(A000217(n+9)+10)`
-/

namespace A225350.P16157608153429838609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A000217 (n + 9) + 10).toNat

end

end A225350.P16157608153429838609

/-! ## A225350.P4637873262065354484

`A225345(Δ[A000292(n+9)]-n)`
-/

namespace A225350.P4637873262065354484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A225350.P4637873262065354484

/-! ## A225350.P16643569746227757909

`A225345(A000096(n+9)-(n-1))`
-/

namespace A225350.P16643569746227757909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A000096 (n + 9) - ((n : ℤ) - 1)).toNat

end

end A225350.P16643569746227757909

/-! ## A225350.P17208902412211278092

`A225345(A001489(n)+Δ[A000292(n+9)])`
-/

namespace A225350.P17208902412211278092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A001489 n + (f1 (n + 1) - f1 n)).toNat

end

end A225350.P17208902412211278092

/-!
# A225351: Number of 11Xn -1,1 arrays such that the sum over i=1..11,j=1..n of i*x(i,j) is zero, the sum of x(i,j) is zero, and rows are nondecreasing (number of ways to distribute n-across galley oarsmen left-right at 11 fore-aft positions so that there are no turning moments on the ship).

The programs for A225351, there is no canonical definition to state claims against.
-/

/-! ## A225351.P6077705043985905583

`A225345(A167499(n+9)+6)`
-/

namespace A225351.P6077705043985905583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A167499 (n + 9) + 6).toNat

end

end A225351.P6077705043985905583

/-! ## A225351.P16487221347237003622

`A225345(A000217(n+10)+11)`
-/

namespace A225351.P16487221347237003622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A000217 (n + 10) + 11).toNat

end

end A225351.P16487221347237003622

/-! ## A225351.P11963856776979452623

`A225345(eq[12, A131818(n+1)])`
-/

namespace A225351.P11963856776979452623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225351.P11963856776979452623

/-! ## A225351.P6086808263414892063

`A225345(A052905(n+9)-(2*n+7))`
-/

namespace A225351.P6086808263414892063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A052905 (n + 9) - (2 * n + 7 : ℤ)).toNat

end

end A225351.P6086808263414892063

/-!
# A225352: Number of 12Xn -1,1 arrays such that the sum over i=1..12,j=1..n of i*x(i,j) is zero, the sum of x(i,j) is zero, and rows are nondecreasing (number of ways to distribute n-across galley oarsmen left-right at 12 fore-aft positions so that there are no turning moments on the ship).

The programs for A225352, there is no canonical definition to state claims against.
-/

/-! ## A225352.P3127716770313319487

`A225345(eq[23, A066657(n)])`
-/

namespace A225352.P3127716770313319487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225352.P3127716770313319487

/-! ## A225352.P8366944936432536671

`A225345(A000217(n+11)+12)`
-/

namespace A225352.P8366944936432536671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (A000217 (n + 11) + 12).toNat

end

end A225352.P8366944936432536671

/-! ## A225352.P14756668221230253182

`A225345(eq[11, A002262(n)]+1)`
-/

namespace A225352.P14756668221230253182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A225352.P14756668221230253182

/-! ## A225352.P18108439538710942608

`A225345(eq[13, A131818(n+1)])`
-/

namespace A225352.P18108439538710942608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225352.P18108439538710942608

/-!
# A225353: Numbers having no partition into distinct squarefree divisors.

The programs for A225353, there is no canonical definition to state claims against.
-/

/-! ## A225353.P12694221432675160433

`eq[0, A225245(n)]`
-/

namespace A225353.P12694221432675160433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225353.P12694221432675160433

/-! ## A225353.P9297204346405340246

`eq[0, A378843(n)]`
-/

namespace A225353.P9297204346405340246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225353.P9297204346405340246

/-! ## A225353.P10776057277730535543

`A000027(lt[A225245(n), 1])`
-/

namespace A225353.P10776057277730535543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A225353.P10776057277730535543

/-! ## A225353.P6334708549042661509

`lt[A225245(A028310(n)), 1]`
-/

namespace A225353.P6334708549042661509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A225353.P6334708549042661509

/-! ## A225353.P5200835441551560925

`lt[A225245(A105570(n)), 1]`
-/

namespace A225353.P5200835441551560925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 (A105570 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A225353.P5200835441551560925

/-! ## A225353.P14626212098054326376

`lt[A225245(n), A057427(n)]`
-/

namespace A225353.P14626212098054326376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225353.P14626212098054326376

/-! ## A225353.P706859314165212545

`lt[A225245(n), A087049(n)]`
-/

namespace A225353.P706859314165212545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225353.P706859314165212545

/-! ## A225353.P17275508108243814468

`lt[A225245(n), acot(A000124(n))]`
-/

namespace A225353.P17275508108243814468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000124 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A225353.P17275508108243814468

/-! ## A225353.P9702308713210439992

`lt[A225245(n), acot(A008621(n))]`
-/

namespace A225353.P9702308713210439992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A008621 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A225353.P9702308713210439992

/-! ## A225353.P17995172086956427308

`lt[A225245(n), acot(A008706(n))]`
-/

namespace A225353.P17995172086956427308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A008706 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A225353.P17995172086956427308

/-! ## A225353.P298664867235643843

`lt[A225245(n), acot(A052905(n))]`
-/

namespace A225353.P298664867235643843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A052905 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A225353.P298664867235643843

/-! ## A225353.P3680511816168696833

`lt[A225245(n), acot(A053438(n))]`
-/

namespace A225353.P3680511816168696833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A053438 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A225353.P3680511816168696833

/-! ## A225353.P18331040858090668910

`lt[A225245(n), acot(A101881(n))]`
-/

namespace A225353.P18331040858090668910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A101881 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A225353.P18331040858090668910

/-! ## A225353.P6215303773298345205

`lt[A225245(n), acot(A128918(n))]`
-/

namespace A225353.P6215303773298345205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A128918 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A225353.P6215303773298345205

/-! ## A225353.P74544305961596539

`lt[A225245(n), acot(A250120(n))]`
-/

namespace A225353.P74544305961596539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A250120 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A225353.P74544305961596539

/-! ## A225353.P1523771570469346774

`lt[A225245(n), acot(A284592(n))]`
-/

namespace A225353.P1523771570469346774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A284592 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A225353.P1523771570469346774

/-! ## A225353.P13954760087119373209

`lt[A225245(n), acot(A059895(n+1))]`
-/

namespace A225353.P13954760087119373209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A059895 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A225353.P13954760087119373209

/-! ## A225353.P4864866328062326503

`lt[A225245(n), acot(A061579(n)+1)]`
-/

namespace A225353.P4864866328062326503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A061579 n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A225353.P4864866328062326503

/-! ## A225353.P17668438367204388259

`lt[A225245(n), acot(A159693(n+1))]`
-/

namespace A225353.P17668438367204388259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A159693 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A225353.P17668438367204388259

/-! ## A225353.P11725233938292188120

`lt[A225245(n), acot(A185787(n+1))]`
-/

namespace A225353.P11725233938292188120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A185787 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A225353.P11725233938292188120

/-!
# A225354: Numbers that can be written as sum of distinct squarefree divisors.

The programs for A225354, there is no canonical definition to state claims against.
-/

/-! ## A225354.P14603719897040771133

`lt[acot(n), A225245(n)]`
-/

namespace A225354.P14603719897040771133
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A225354.P14603719897040771133

/-! ## A225354.P13003952362555408284

`lt[A000038(n), A225245(n)]`
-/

namespace A225354.P13003952362555408284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225354.P13003952362555408284

/-! ## A225354.P11755265910150937605

`lt[1, A225245(n)+A057427(n)]`
-/

namespace A225354.P11755265910150937605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n + A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225354.P11755265910150937605

/-! ## A225354.P16512051803420086452

`lt[1, A000124(n)*A225245(n)]`
-/

namespace A225354.P16512051803420086452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n * A225245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225354.P16512051803420086452

/-! ## A225354.P6311685012023844248

`lt[1, A008706(n)*A225245(n)]`
-/

namespace A225354.P6311685012023844248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n * A225245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225354.P6311685012023844248

/-! ## A225354.P14698930822131154019

`lt[1, A052905(n)*A225245(n)]`
-/

namespace A225354.P14698930822131154019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n * A225245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225354.P14698930822131154019

/-! ## A225354.P2048325897870650165

`lt[1, A053438(n)*A225245(n)]`
-/

namespace A225354.P2048325897870650165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 n * A225245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225354.P2048325897870650165

/-! ## A225354.P223712058467394695

`lt[1, A101881(n)*A225245(n)]`
-/

namespace A225354.P223712058467394695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n * A225245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225354.P223712058467394695

/-! ## A225354.P9979298762038930812

`lt[1, A225245(n)*A250120(n)]`
-/

namespace A225354.P9979298762038930812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n * A250120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225354.P9979298762038930812

/-! ## A225354.P10797263563780144767

`lt[2, A225245(n)*A275725(n)]`
-/

namespace A225354.P10797263563780144767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n * A275725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225354.P10797263563780144767

/-! ## A225354.P15241905308861020719

`lt[A028310(n), A225245(n)+n]`
-/

namespace A225354.P15241905308861020719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225354.P15241905308861020719

/-! ## A225354.P5606356441870169984

`lt[A275947(n), n*A225245(n)]`
-/

namespace A225354.P5606356441870169984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275947 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A225245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225354.P5606356441870169984

/-! ## A225354.P17287184016516915661

`lt[A105570(n), (n*A225245(n))²]`
-/

namespace A225354.P17287184016516915661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A225245 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A225354.P17287184016516915661

/-! ## A225354.P6094758307240100333

`lt[1, A000027(n+1)*A225245(n)]`
-/

namespace A225354.P6094758307240100333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A225245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225354.P6094758307240100333

/-! ## A225354.P17240635580370480850

`lt[1, A159693(n+1)*A225245(n)]`
-/

namespace A225354.P17240635580370480850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159693 (n + 1) * A225245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225354.P17240635580370480850

/-! ## A225354.P492133868281344487

`lt[1, A185787(n+1)*A225245(n)]`
-/

namespace A225354.P492133868281344487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185787 (n + 1) * A225245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225354.P492133868281344487

/-! ## A225354.P2032679687960399622

`lt[1, A225243(n+1)*A225245(n)]`
-/

namespace A225354.P2032679687960399622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225243 (n + 1) * A225245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A225354.P2032679687960399622

/-! ## A225354.P11964465194378013764

`eq[A000007(n), A000007(A225245(n))]`
-/

namespace A225354.P11964465194378013764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A225245 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225354.P11964465194378013764

/-! ## A225354.P5683889967713775541

`eq[A040056(n), A040056(A225245(n))]`
-/

namespace A225354.P5683889967713775541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 (A225245 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A225354.P5683889967713775541

/-!
# A225355: a(n) = A221565(n)/4.

The programs for A225355, there is no canonical definition to state claims against.
-/

/-! ## A225355.P7467956098009434983

`A221565(n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A225355.P7467956098009434983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221565 n : ℚ) / 4

end

end A225355.P7467956098009434983

/-! ## A225355.P9503497199253704650

`A002265(A221565(n))`
-/

namespace A225355.P9503497199253704650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A221565 n).toNat

end

end A225355.P9503497199253704650

/-! ## A225355.P8451447432406335956

`A008624(A221565(n)+1)`
-/

namespace A225355.P8451447432406335956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A221565 n + 1).toNat

end

end A225355.P8451447432406335956

/-! ## A225355.P13652456275544437937

`A025480(A221565(n)+1)`
-/

namespace A225355.P13652456275544437937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A221565 n + 1).toNat

end

end A225355.P13652456275544437937

/-! ## A225355.P17178112431393077742

`A026922(A221565(n)+1)`
-/

namespace A225355.P17178112431393077742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A221565 n + 1).toNat

end

end A225355.P17178112431393077742

/-!
# A225357: Decimal expansion of (4/7)*(43/57)^(4/3).

The programs for A225357, there is no canonical definition to state claims against.
-/

/-! ## A225357.P15474736693987923858

`A225359(n+1)`
-/

namespace A225357.P15474736693987923858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225359 (n + 1 + 1)

end

end A225357.P15474736693987923858

/-!
# A225358: Partition numbers of the form 8k.

The programs for A225358, there is no canonical definition to state claims against.
-/

/-! ## A225358.P15284284274087208774

`8*A222178(n+1)`
-/

namespace A225358.P15284284274087208774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A222178 (n + 1)

end

end A225358.P15284284274087208774

/-! ## A225358.P13834633257862974373

`A000041(lt[2, A278478(n)])`
-/

namespace A225358.P13834633257862974373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A225358.P13834633257862974373

/-! ## A225358.P13288840689212994733

`A000065(lt[2, A278478(n)])+1`
-/

namespace A225358.P13288840689212994733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A225358.P13288840689212994733

/-! ## A225358.P2942098041261664640

`A000041(eq[0, A000041(n)%8])`
-/

namespace A225358.P2942098041261664640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225358.P2942098041261664640

/-! ## A225358.P8889773067776745620

`A000041(lt[2, val(A000041(n), 2)])`
-/

namespace A225358.P8889773067776745620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000041 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225358.P8889773067776745620

/-! ## A225358.P14597470019810878700

`A000041(eq[0, and(7, A000041(n))])`
-/

namespace A225358.P14597470019810878700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225358.P14597470019810878700

/-! ## A225358.P17299101427932289447

`A000041(eq[8, gcd(8, A000041(n))])`
-/

namespace A225358.P17299101427932289447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A225358.P17299101427932289447

/-!
# A225360: Partition numbers of the form 9k.

The programs for A225360, there is no canonical definition to state claims against.
-/

/-! ## A225360.P7482923524361679623

`9*A222179(n+1)`
-/

namespace A225360.P7482923524361679623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A222179 (n + 1)

end

end A225360.P7482923524361679623

/-! ## A225360.P14663107295030071801

`A000041(lt[8, dr(A000041(n))])`
-/

namespace A225360.P14663107295030071801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A225360.P14663107295030071801

/-! ## A225360.P14057607838105232871

`A000041(eq[9, dr(A000041(n))])`
-/

namespace A225360.P14057607838105232871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A225360.P14057607838105232871

/-! ## A225360.P2283776859990577776

`A000041(eq[0, A000041(n)%9])`
-/

namespace A225360.P2283776859990577776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225360.P2283776859990577776

/-! ## A225360.P14664214043949267017

`A000041(eq[9, gcd(9, A000041(n))])`
-/

namespace A225360.P14664214043949267017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 9 (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A225360.P14664214043949267017

/-!
# A225361: Partition numbers of the form 11k.

The programs for A225361, there is no canonical definition to state claims against.
-/

/-! ## A225361.P5617927576257063079

`11*A225323(n+1)`
-/

namespace A225361.P5617927576257063079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A225323 (n + 1)

end

end A225361.P5617927576257063079

/-! ## A225361.P16909813682225788066

`A000041(A027827(n+1))`
-/

namespace A225361.P16909813682225788066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A027827 (n + 1)).toNat

end

end A225361.P16909813682225788066

/-! ## A225361.P13806422170256591868

`A000041(eq[0, A020919(n)])`
-/

namespace A225361.P13806422170256591868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225361.P13806422170256591868

/-! ## A225361.P1611907417958700194

`A000041(lt[A020919(n), 1])`
-/

namespace A225361.P1611907417958700194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020919 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A225361.P1611907417958700194

/-! ## A225361.P8483057542169491081

`A035363(2*A027827(n+1))`
-/

namespace A225361.P8483057542169491081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * A027827 (n + 1)).toNat

end

end A225361.P8483057542169491081

/-! ## A225361.P7845797552716484071

`A119620(2*A027827(n+1))`
-/

namespace A225361.P7845797552716484071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * A027827 (n + 1)).toNat

end

end A225361.P7845797552716484071

/-! ## A225361.P17776177669255030062

`A035444(4*A027827(n+1))`
-/

namespace A225361.P17776177669255030062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (4 * A027827 (n + 1)).toNat

end

end A225361.P17776177669255030062

/-! ## A225361.P4079141714842869088

`A000041(eq[0, A000041(n)%11])`
-/

namespace A225361.P4079141714842869088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225361.P4079141714842869088

/-! ## A225361.P8549791172704597081

`A000041(eq[11, gcd(11, A000041(n))])`
-/

namespace A225361.P8549791172704597081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 11 (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A225361.P8549791172704597081

/-! ## A225361.P11851541751309363251

`A000041(eq[1, A000045(val(A000041(n), 11))])`
-/

namespace A225361.P11851541751309363251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (A000041 n).toNat 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A225361.P11851541751309363251

/-!
# A225362: Numbers n with the property that there are integers k, h such that sigma(n) = k^tau(n) = tau(n)^h.

The programs for A225362, there is no canonical definition to state claims against.
-/

/-! ## A225362.P1275871340895461098

`∩[A043305(n+1), A225239(n+1)]`
-/

namespace A225362.P1275871340895461098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225362.P1275871340895461098

/-! ## A225362.P1744174859147425832

`∩[A046528(n+1), A225239(n+1)]`
-/

namespace A225362.P1744174859147425832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225362.P1744174859147425832

/-! ## A225362.P8569248558761537894

`∩[A051281(n+1), A225239(n+1)]`
-/

namespace A225362.P8569248558761537894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225362.P8569248558761537894

/-! ## A225362.P13772499687809297733

`∩[A054784(n+1), A225239(n+1)]`
-/

namespace A225362.P13772499687809297733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225362.P13772499687809297733

/-!
# A225367: Number of palindromes of length n in base 3 (A118594).

The programs for A225367, the canonical program `A225367.P6319838563113945320` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225367 has offset 1).

The definition of A225367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A225367.P6319838563113945320

`3*a(n-2)` with `a(0)=3, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A225367

/-- `3*a(n-2)` -/
def P6319838563113945320.Spec : Prop :=
  ∀ n, (P6319838563113945320.a n : ℤ) = A225367 (n + 1)

theorem P6319838563113945320.correct : P6319838563113945320.Spec := by
  intro n
  simp only [A225367, Nat.add_sub_cancel]

end A225367

/-! ## A225367.P16701811271559642729

`ogf((3+2x-3x^2)/(1-3x^2))`
-/

namespace A225367.P16701811271559642729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2, -3] [1, 0, -3] n

end

end A225367.P16701811271559642729

namespace A225367

/-- `ogf((3+2x-3x^2)/(1-3x^2))` -/
def P16701811271559642729.Spec : Prop :=
  ∀ n, P16701811271559642729.a n = A225367 (n + 1)

end A225367

/-! ## A225367.P1935455857567426516

`a(n-1)/3^∑[(-1)^(n+1)]` with `a(0)=3, a(1)=2`
-/

namespace A225367.P1935455857567426516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (n - 1) / (3 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A225367.P1935455857567426516

namespace A225367

/-- `a(n-1)/3^∑[(-1)^(n+1)]` -/
def P1935455857567426516.Spec : Prop :=
  ∀ n, P1935455857567426516.a n = (A225367 (n + 1) : ℚ)

end A225367

/-! ## A225367.P11079996456304763388

`a(n-2)+a(n-2)+a(n-2)` with `a(0)=3, a(1)=2, a(2)=6`
-/

namespace A225367.P11079996456304763388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 6] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2))

end

end A225367.P11079996456304763388

namespace A225367

/-- `a(n-2)+a(n-2)+a(n-2)` -/
def P11079996456304763388.Spec : Prop :=
  ∀ n, (P11079996456304763388.a n : ℤ) = A225367 (n + 1)

theorem P11079996456304763388.correct : P11079996456304763388.Spec := by
  intro n
  simp only [A225367, Nat.add_sub_cancel, A225367.P11079996456304763388.a, A225367.P6319838563113945320.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A225367

/-! ## A225367.P11688947404577409447

`(gcd(2, n)+1)*A182522(n)`
-/

namespace A225367.P11688947404577409447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n + 1 : ℤ) * A182522 n

end

end A225367.P11688947404577409447

namespace A225367

/-- `(gcd(2, n)+1)*A182522(n)` -/
def P11688947404577409447.Spec : Prop :=
  ∀ n, P11688947404577409447.a n = A225367 (n + 1)

end A225367

/-! ## A225367.P16344121883393587265

`A038754(or(1, n))+floor(acot(n))`
-/

namespace A225367.P16344121883393587265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (Nat.lor 1 n) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A225367.P16344121883393587265

namespace A225367

/-- `A038754(or(1, n))+floor(acot(n))` -/
def P16344121883393587265.Spec : Prop :=
  ∀ n, P16344121883393587265.a n = A225367 (n + 1)

end A225367

/-! ## A225367.P6756751075439232702

`A068911(or(1, n))+floor(acot(n))`
-/

namespace A225367.P6756751075439232702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (Nat.lor 1 n) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A225367.P6756751075439232702

namespace A225367

/-- `A068911(or(1, n))+floor(acot(n))` -/
def P6756751075439232702.Spec : Prop :=
  ∀ n, P6756751075439232702.a n = A225367 (n + 1)

end A225367

/-! ## A225367.P3120868349871654626

`A153339(n+1)-a(n-1)` with `a(0)=3, a(1)=2`
-/

namespace A225367.P3120868349871654626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  A153339 (n + 1) - a (n - 1)

end

end A225367.P3120868349871654626

namespace A225367

/-- `A153339(n+1)-a(n-1)` -/
def P3120868349871654626.Spec : Prop :=
  ∀ n, P3120868349871654626.a n = A225367 (n + 1)

end A225367

/-! ## A225367.P1622957640156280214

`A176059(n)*A182522(n)`
-/

namespace A225367.P1622957640156280214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 n * A182522 n

end

end A225367.P1622957640156280214

namespace A225367

/-- `A176059(n)*A182522(n)` -/
def P1622957640156280214.Spec : Prop :=
  ∀ n, P1622957640156280214.a n = A225367 (n + 1)

end A225367

/-! ## A225367.P18301492830743008187

`lcm(A010123(n), A038754(n))`
-/

namespace A225367.P18301492830743008187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010123 n) (A038754 n)

end

end A225367.P18301492830743008187

namespace A225367

/-- `lcm(A010123(n), A038754(n))` -/
def P18301492830743008187.Spec : Prop :=
  ∀ n, (P18301492830743008187.a n : ℤ) = A225367 (n + 1)

end A225367

/-! ## A225367.P9245915680134762618

`lcm(A040008(n), A108411(n))`
-/

namespace A225367.P9245915680134762618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040008 n) (A108411 n)

end

end A225367.P9245915680134762618

namespace A225367

/-- `lcm(A040008(n), A108411(n))` -/
def P9245915680134762618.Spec : Prop :=
  ∀ n, (P9245915680134762618.a n : ℤ) = A225367 (n + 1)

end A225367

/-! ## A225367.P15406265884349837564

`A117855(n+1)+A000007(n)`
-/

namespace A225367.P15406265884349837564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117855 (n + 1) + A000007 n

end

end A225367.P15406265884349837564

namespace A225367

/-- `A117855(n+1)+A000007(n)` -/
def P15406265884349837564.Spec : Prop :=
  ∀ n, P15406265884349837564.a n = A225367 (n + 1)

end A225367

/-! ## A225367.P5016532277113448223

`A000007(n)+2*A108411(n)`
-/

namespace A225367.P5016532277113448223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A108411 n

end

end A225367.P5016532277113448223

namespace A225367

/-- `A000007(n)+2*A108411(n)` -/
def P5016532277113448223.Spec : Prop :=
  ∀ n, P5016532277113448223.a n = A225367 (n + 1)

end A225367

/-! ## A225367.P5734959675571636384

`(A056594(n)²+2)*A182522(n)`
-/

namespace A225367.P5734959675571636384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056594 n ^ 2 + 2) * A182522 n

end

end A225367.P5734959675571636384

namespace A225367

/-- `(A056594(n)²+2)*A182522(n)` -/
def P5734959675571636384.Spec : Prop :=
  ∀ n, P5734959675571636384.a n = A225367 (n + 1)

end A225367

/-! ## A225367.P7864194186075942579

`A117855(n+1)+A036987(2*n)`
-/

namespace A225367.P7864194186075942579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117855 (n + 1) + A036987 (2 * n)

end

end A225367.P7864194186075942579

namespace A225367

/-- `A117855(n+1)+A036987(2*n)` -/
def P7864194186075942579.Spec : Prop :=
  ∀ n, P7864194186075942579.a n = A225367 (n + 1)

end A225367

/-! ## A225367.P12505330392986254696

`A266220(2*n)+2*A111575(2*n)`
-/

namespace A225367.P12505330392986254696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 (2 * n) + 2 * A111575 (2 * n)

end

end A225367.P12505330392986254696

namespace A225367

/-- `A266220(2*n)+2*A111575(2*n)` -/
def P12505330392986254696.Spec : Prop :=
  ∀ n, P12505330392986254696.a n = A225367 (n + 1)

end A225367

/-! ## A225367.P4566865160853995864

`A266437(2*n)+2*A111575(2*n)`
-/

namespace A225367.P4566865160853995864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 (2 * n) + 2 * A111575 (2 * n)

end

end A225367.P4566865160853995864

namespace A225367

/-- `A266437(2*n)+2*A111575(2*n)` -/
def P4566865160853995864.Spec : Prop :=
  ∀ n, P4566865160853995864.a n = A225367 (n + 1)

end A225367

/-! ## A225367.P9352550486762629209

`(4*(n+1)-A103517(2*n))*A111575(2*n)`
-/

namespace A225367.P9352550486762629209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * (n + 1) : ℤ) - A103517 (2 * n)) * A111575 (2 * n)

end

end A225367.P9352550486762629209

namespace A225367

/-- `(4*(n+1)-A103517(2*n))*A111575(2*n)` -/
def P9352550486762629209.Spec : Prop :=
  ∀ n, P9352550486762629209.a n = A225367 (n + 1)

end A225367

/-! ## A225367.P1741876046097542882

`A025192(A008619(n))+A000007(n)`
-/

namespace A225367.P1741876046097542882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 (A008619 n).toNat + A000007 n

end

end A225367.P1741876046097542882

namespace A225367

/-- `A025192(A008619(n))+A000007(n)` -/
def P1741876046097542882.Spec : Prop :=
  ∀ n, P1741876046097542882.a n = A225367 (n + 1)

end A225367

/-! ## A225367.P15969570451504893894

`A102457(A000040(n+1)+2)*A108411(n)`
-/

namespace A225367.P15969570451504893894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (A000040 (n + 1) + 2).toNat * A108411 n

end

end A225367.P15969570451504893894

namespace A225367

/-- `A102457(A000040(n+1)+2)*A108411(n)` -/
def P15969570451504893894.Spec : Prop :=
  ∀ n, P15969570451504893894.a n = A225367 (n + 1)

end A225367

/-!
# A225372: Triangle read by rows: T(n,k) (1 <= k <= n) given by T(n, 1) = T(n,n) = 1, otherwise T(n, k) = (m*n-m*k+1)*T(n-1,k-1) + (m*k-m+1)*T(n-1,k), where m = -2.

The programs for A225372, there is no canonical definition to state claims against.
-/

/-! ## A225372.P8341880866161287734

`A352111(A007318(n)%A217294(3*(n+1)))`
-/

namespace A225372.P8341880866161287734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352111 (Int.tmod (A007318 n) (A217294 (3 * (n + 1)))).toNat

end

end A225372.P8341880866161287734

/-! ## A225372.P9047566511807437700

`A352111(A007318(n)%A352065(n))`
-/

namespace A225372.P9047566511807437700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352111 (Int.tmod (A007318 n) (A352065 n)).toNat

end

end A225372.P9047566511807437700

/-! ## A225372.P8844791255918134558

`A352111(A007318(n))%A265780(n+1)`
-/

namespace A225372.P8844791255918134558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352111 (A007318 n).toNat) (A265780 (n + 1))

end

end A225372.P8844791255918134558

/-! ## A225372.P8506218441519255204

`A352111(abs(A130595(n))%A265780(n+1))`
-/

namespace A225372.P8506218441519255204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352111 (Int.tmod |A130595 n| (A265780 (n + 1))).toNat

end

end A225372.P8506218441519255204

/-!
# A225373: a(n) = 1 + Sum_{i=0..floor(n/2)} phi(n-2*i).

The programs for A225373, the canonical program `A225373.P1027320793838939059` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225373 has offset 0).

The definition of A225373 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106481, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A225373.P1027320793838939059

`A106481(n)+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A225373

/-- `A106481(n)+1` -/
def P1027320793838939059.Spec : Prop :=
  ∀ n, P1027320793838939059.a n = A225373 n

theorem P1027320793838939059.correct : P1027320793838939059.Spec := by
  intro n
  simp only [A225373]

end A225373

/-! ## A225373.P4498271587202415889

`a(n-2)+A000010(n)` with `a(0)=1, a(1)=2`
-/

namespace A225373.P4498271587202415889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + A000010 n

end

end A225373.P4498271587202415889

namespace A225373

/-- `a(n-2)+A000010(n)` -/
def P4498271587202415889.Spec : Prop :=
  ∀ n, P4498271587202415889.a n = A225373 n

end A225373

/-! ## A225373.P16547383479123268136

`A005728(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A225373.P16547383479123268136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005728 n + (1 - a (n - 1))

end

end A225373.P16547383479123268136

namespace A225373

/-- `A005728(n)+1-a(n-1)` -/
def P16547383479123268136.Spec : Prop :=
  ∀ n, P16547383479123268136.a n = A225373 n

end A225373

/-! ## A225373.P12295870006021557821

`A049643(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A225373.P12295870006021557821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049643 n + (1 - a (n - 1))

end

end A225373.P12295870006021557821

namespace A225373

/-- `A049643(n)+1-a(n-1)` -/
def P12295870006021557821.Spec : Prop :=
  ∀ n, P12295870006021557821.a n = A225373 n

end A225373

/-! ## A225373.P18090324919112108789

`A002088(n)+2-a(n-1)` with `a(0)=1`
-/

namespace A225373.P18090324919112108789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002088 n + (2 - a (n - 1))

end

end A225373.P18090324919112108789

namespace A225373

/-- `A002088(n)+2-a(n-1)` -/
def P18090324919112108789.Spec : Prop :=
  ∀ n, P18090324919112108789.a n = A225373 n

end A225373

/-! ## A225373.P7077947674041197696

`∑[A000010(lcm(2, n))-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A225373.P7077947674041197696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A000010 (Nat.lcm 2 n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225373.P7077947674041197696

namespace A225373

/-- `∑[A000010(lcm(2, n))-a(n-1)]` -/
def P7077947674041197696.Spec : Prop :=
  ∀ n, P7077947674041197696.a n = A225373 n

end A225373

/-! ## A225373.P14053192316033178613

`∑[A000010(2*n-n)-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A225373.P14053192316033178613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A000010 (2 * n - n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225373.P14053192316033178613

namespace A225373

/-- `∑[A000010(2*n-n)-a(n-1)]` -/
def P14053192316033178613.Spec : Prop :=
  ∀ n, P14053192316033178613.a n = A225373 n

end A225373

/-! ## A225373.P13398262908589466431

`A000010(gcd(n, 2*n))-round(-a(n-2))` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A225373.P13398262908589466431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000010 (Nat.gcd n (2 * n)) - (-a (n - 2))

end

end A225373.P13398262908589466431

namespace A225373

/-- `A000010(gcd(n, 2*n))-round(-a(n-2))` -/
def P13398262908589466431.Spec : Prop :=
  ∀ n, P13398262908589466431.a n = A225373 n

end A225373

/-! ## A225373.P3297172879227801470

`A092249(n+1)+1-A106477(n)`
-/

namespace A225373.P3297172879227801470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 1) + (1 - A106477 n)

end

end A225373.P3297172879227801470

namespace A225373

/-- `A092249(n+1)+1-A106477(n)` -/
def P3297172879227801470.Spec : Prop :=
  ∀ n, P3297172879227801470.a n = A225373 n

theorem P3297172879227801470.correct : P3297172879227801470.Spec := by
  intro n
  simp only [A225373, Nat.add_sub_cancel, A225373.P3297172879227801470.a, A225373.P1027320793838939059.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A106477, A106477.P792080474902771144.a, A106481, A106481.P12208794138596707601.a, A091369, A091369.P3969440163011087150.a, A063985, A063985.P3942861327483730228.a, A000217, A000217.P10269402890581615239.a, A002088, A002088.P11293466613211840242.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A225373

/-! ## A225373.P1159130297374401667

`A049643(n+1)-A106477(n)`
-/

namespace A225373.P1159130297374401667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 (n + 1) - A106477 n

end

end A225373.P1159130297374401667

namespace A225373

/-- `A049643(n+1)-A106477(n)` -/
def P1159130297374401667.Spec : Prop :=
  ∀ n, P1159130297374401667.a n = A225373 n

end A225373

/-! ## A225373.P13728775054884185471

`A225531(n)-a(n-1)` with `a(0)=1`
-/

namespace A225373.P13728775054884185471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A225531 n - a (n - 1)

end

end A225373.P13728775054884185471

namespace A225373

/-- `A225531(n)-a(n-1)` -/
def P13728775054884185471.Spec : Prop :=
  ∀ n, P13728775054884185471.a n = A225373 n

end A225373

/-! ## A225373.P4778912888689329541

`A225530(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A225373.P4778912888689329541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A225530 n + a (n - 2)

end

end A225373.P4778912888689329541

namespace A225373

/-- `A225530(n)+a(n-2)` -/
def P4778912888689329541.Spec : Prop :=
  ∀ n, P4778912888689329541.a n = A225373 n

end A225373

/-! ## A225373.P2211982943373594386

`∑[A000010(n²)/n-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A225373.P2211982943373594386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (A000010 (n ^ 2) : ℚ) / (n : ℚ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225373.P2211982943373594386

namespace A225373

/-- `∑[A000010(n²)/n-a(n-1)]` -/
def P2211982943373594386.Spec : Prop :=
  ∀ n, P2211982943373594386.a n = (A225373 n : ℚ)

end A225373

/-! ## A225373.P14469061980252753644

`A015906(A106481(n))`
-/

namespace A225373.P14469061980252753644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A106481 n).toNat

end

end A225373.P14469061980252753644

namespace A225373

/-- `A015906(A106481(n))` -/
def P14469061980252753644.Spec : Prop :=
  ∀ n, P14469061980252753644.a n = A225373 n

end A225373

/-! ## A225373.P10053103313247063332

`A008619(2*A106481(n))`
-/

namespace A225373.P10053103313247063332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A106481 n).toNat

end

end A225373.P10053103313247063332

namespace A225373

/-- `A008619(2*A106481(n))` -/
def P10053103313247063332.Spec : Prop :=
  ∀ n, P10053103313247063332.a n = A225373 n

end A225373

/-!
# A225374: Powers of 111.

The programs for A225374, the canonical program `A225374.P15537685602837840922` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225374 has offset 0).

The definition of A225374 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A225374.anchor (n : ℕ) : A225374 n = 111 ^ n` in `Proof.A225.A225374`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225374.P15537685602837840922

`111^n`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A225374

/-- `111^n` -/
def P15537685602837840922.Spec : Prop :=
  ∀ n, (P15537685602837840922.a n : ℤ) = A225374 n

theorem P15537685602837840922.correct : P15537685602837840922.Spec := by
  intro n
  simp only [A225374]

end A225374

/-!
# A225375: Odd numbers with exactly 2 distinct prime factors.

The programs for A225375, there is no canonical definition to state claims against.
-/

/-! ## A225375.P17940147177393491799

`eq[2, A305614(n)]`
-/

namespace A225375.P17940147177393491799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225375.P17940147177393491799

/-! ## A225375.P6014188323002934417

`eq[1, A353676(n+1)]+1`
-/

namespace A225375.P6014188323002934417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353676 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A225375.P6014188323002934417

/-! ## A225375.P15818827725982936522

`eq[2, A132468(n+1)]+1`
-/

namespace A225375.P15818827725982936522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132468 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A225375.P15818827725982936522

/-! ## A225375.P12039153753549027467

`eq[2, A205745(n+1)]+1`
-/

namespace A225375.P12039153753549027467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205745 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A225375.P12039153753549027467

/-! ## A225375.P15115065331118593946

`eq[3, A048669(n+1)]+1`
-/

namespace A225375.P15115065331118593946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A225375.P15115065331118593946

/-! ## A225375.P9665957908187541517

`filter[2*n+1, A215480(#)]`
-/

namespace A225375.P9665957908187541517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j) = 1) n)

end

end A225375.P9665957908187541517

/-! ## A225375.P11101766852368243995

`filter[2*n+1, A353676(#)]`
-/

namespace A225375.P11101766852368243995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353676 (f1 j) = 1) n)

end

end A225375.P11101766852368243995

/-! ## A225375.P4236820835678360365

`eq[2, A001221(n^(n%2))]`
-/

namespace A225375.P4236820835678360365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225375.P4236820835678360365

/-! ## A225375.P14918463121052719605

`eq[2, A001221(gcd(n, or(1, n)))]`
-/

namespace A225375.P14918463121052719605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.gcd n (Nat.lor 1 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225375.P14918463121052719605

/-! ## A225375.P6988196315891087980

`eq[2, A001221(C(n, and(1, n)))]`
-/

namespace A225375.P6988196315891087980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose n (Nat.land 1 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A225375.P6988196315891087980

/-!
# A225376: Construct sequences P,Q,R by the rules: Q = first differences of P, R = second differences of P, P starts with 1,5,11, Q starts with 4,6, R starts with 2; at each stage the smallest number not yet present in P,Q,R is appended to R; every number appears exactly once in the union of P,Q,R. Sequence gives P.

The programs for A225376, there is no canonical definition to state claims against.
-/

/-! ## A225376.P516949673021717232

`A225377(n)+a(n-1)` with `a(0)=1`
-/

namespace A225376.P516949673021717232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A225377 n + a (n - 1)

end

end A225376.P516949673021717232

/-! ## A225376.P10876115290170365485

`∑[A225377(A028310(n))]-3`
-/

namespace A225376.P10876115290170365485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225377 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A225376.P10876115290170365485

/-! ## A225376.P2443814348366655314

`∑[A225377(n*a(A000038(n)))]` with `a(0)=1`
-/

namespace A225376.P2443814348366655314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A225377 ((n : ℤ) * f1 (A000038 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225376.P2443814348366655314

/-! ## A225376.P13890738744963300002

`∑[A225377(n+1)]+1-A225377(n+1)`
-/

namespace A225376.P13890738744963300002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A225377 (n + 1))

end

end A225376.P13890738744963300002

/-! ## A225376.P927418600700203083

`∑[A225377(A028310(n))%A079079(n+1)]`
-/

namespace A225376.P927418600700203083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225377 (A028310 n).toNat) (A079079 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225376.P927418600700203083

/-!
# A225377: Construct sequences P,Q,R by the rules: Q = first differences of P, R = second differences of P, P starts with 1,5,11, Q starts with 4,6, R starts with 2; at each stage the smallest number not yet present in P,Q,R is appended to R; every number appears exactly once in the union of P,Q,R. Sequence gives Q.

The programs for A225377, there is no canonical definition to state claims against.
-/

/-! ## A225377.P8634269103828817689

`Δ[A225376(n+1)]`
-/

namespace A225377.P8634269103828817689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225377.P8634269103828817689

/-! ## A225377.P7581019407517175595

`A225378(n)+a(n-1)` with `a(0)=4`
-/

namespace A225377.P7581019407517175595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A225378 n + a (n - 1)

end

end A225377.P7581019407517175595

/-! ## A225377.P6269078458707968981

`∑[A225378(A028310(n))]+2`
-/

namespace A225377.P6269078458707968981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225378 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A225377.P6269078458707968981

/-! ## A225377.P3627412913822915446

`A225376(n+2)-A225376(n+1)`
-/

namespace A225377.P3627412913822915446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225376 (n + 2) - A225376 (n + 1)

end

end A225377.P3627412913822915446

/-! ## A225377.P520675205429506684

`abs(Δ[A225376(A008619(2*n))])`
-/

namespace A225377.P520675205429506684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225376 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A225377.P520675205429506684

/-! ## A225377.P6808914338411983967

`Δ[record[A225376(A284548(n))]]`
-/

namespace A225377.P6808914338411983967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225376 (A284548 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225377.P6808914338411983967

/-! ## A225377.P16761603004271359010

`Δ[record[A225376(A284549(n))]]`
-/

namespace A225377.P16761603004271359010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225376 (A284549 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225377.P16761603004271359010

/-!
# A225378: Construct sequences P,Q,R by the rules: Q = first differences of P, R = second differences of P, P starts with 1,5,11, Q starts with 4,6, R starts with 2; at each stage the smallest number not yet present in P,Q,R is appended to R; every number appears exactly once in the union of P,Q,R. Sequence gives R.

The programs for A225378, there is no canonical definition to state claims against.
-/

/-! ## A225378.P11146454283394527339

`Δ[A225377(n+1)]`
-/

namespace A225378.P11146454283394527339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225378.P11146454283394527339

/-! ## A225378.P5137784709210280975

`A225377(n+2)-A225377(n+1)`
-/

namespace A225378.P5137784709210280975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225377 (n + 2) - A225377 (n + 1)

end

end A225378.P5137784709210280975

/-! ## A225378.P15125254221428588680

`A225377(A020725(n+1))%A225377(n+1)`
-/

namespace A225378.P15125254221428588680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225377 (A020725 (n + 1)).toNat) (A225377 (n + 1))

end

end A225378.P15125254221428588680

/-! ## A225378.P11184087089055237233

`(A225377(n+2)+A225376(n+1))%A225376(n+2)`
-/

namespace A225378.P11184087089055237233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225377 (n + 2) + A225376 (n + 1)) (A225376 (n + 2))

end

end A225378.P11184087089055237233

/-! ## A225378.P13809604993487883462

`Δ[Δ[A225376(n+1)]]`
-/

namespace A225378.P13809604993487883462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225376 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225378.P13809604993487883462

/-! ## A225378.P17864012957829409182

`Δ[record[A225377(A176298(n))]]`
-/

namespace A225378.P17864012957829409182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225377 (A176298 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225378.P17864012957829409182

/-!
# A225379: Dimensions of homogeneous components of the universal associative envelope for a certain nonassociative triple system.

The programs for A225379, there is no canonical definition to state claims against.
-/

/-! ## A225379.P8235535505372561350

`A081665(A097786(n))`
-/

namespace A225379.P8235535505372561350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081665 (A097786 n).toNat

end

end A225379.P8235535505372561350

/-!
# A225380: Dimensions of homogeneous components of the universal associative envelope for a certain nonassociative triple system.

The programs for A225380, there is no canonical definition to state claims against.
-/

/-! ## A225380.P241671809072719120

`A354258(n+1)*A361758(n)`
-/

namespace A225380.P241671809072719120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354258 (n + 1) * A361758 n

end

end A225380.P241671809072719120

/-!
# A225381: Elimination order of the first person in a Josephus problem.

The programs for A225381, the canonical program `A225381.P14980148846678090483` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225381 has offset 1).

The definition of A225381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225381.P14980148846678090483

`ceil((n+1)/(1/xor(n, n+1)+1))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A225381

/-- `ceil((n+1)/(1/xor(n, n+1)+1))` -/
def P14980148846678090483.Spec : Prop :=
  ∀ n, P14980148846678090483.a n = A225381 (n + 1)

theorem P14980148846678090483.correct : P14980148846678090483.Spec := by
  intro n
  simp only [A225381, Nat.add_sub_cancel]

end A225381

/-! ## A225381.P952069005623572297

`1-floor(n/(xor(n, n+1)+1))+n`
-/

namespace A225381.P952069005623572297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + (n : ℤ)

end

end A225381.P952069005623572297

namespace A225381

/-- `1-floor(n/(xor(n, n+1)+1))+n` -/
def P952069005623572297.Spec : Prop :=
  ∀ n, P952069005623572297.a n = A225381 (n + 1)

end A225381

/-! ## A225381.P4245026678850108864

`Δ[a(floor(n/2))+floor(((n+1)/2)²)]` with `a(0)=1`
-/

namespace A225381.P4245026678850108864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + ⌊((n + 1 : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225381.P4245026678850108864

namespace A225381

/-- `Δ[a(floor(n/2))+floor(((n+1)/2)²)]` -/
def P4245026678850108864.Spec : Prop :=
  ∀ n, P4245026678850108864.a n = A225381 (n + 1)

end A225381

/-! ## A225381.P7225713837096134942

`round(n/xor(n+1, -(n+1))+n+1)`
-/

namespace A225381.P7225713837096134942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (Int.xor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) + (n + 1 : ℚ))

end

end A225381.P7225713837096134942

namespace A225381

/-- `round(n/xor(n+1, -(n+1))+n+1)` -/
def P7225713837096134942.Spec : Prop :=
  ∀ n, P7225713837096134942.a n = A225381 (n + 1)

end A225381

/-! ## A225381.P12806184659552641418

`abs(floor(n/(xor(n, n+1)+1))+xor(n, -1))`
-/

namespace A225381.P12806184659552641418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + Int.xor (n : ℤ) (-1)|

end

end A225381.P12806184659552641418

namespace A225381

/-- `abs(floor(n/(xor(n, n+1)+1))+xor(n, -1))` -/
def P12806184659552641418.Spec : Prop :=
  ∀ n, P12806184659552641418.a n = A225381 (n + 1)

end A225381

/-! ## A225381.P1660543155956492299

`-(floor(n/(xor(n, n+1)+1))+xor(n, -1))`
-/

namespace A225381.P1660543155956492299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + Int.xor (n : ℤ) (-1))

end

end A225381.P1660543155956492299

namespace A225381

/-- `-(floor(n/(xor(n, n+1)+1))+xor(n, -1))` -/
def P1660543155956492299.Spec : Prop :=
  ∀ n, P1660543155956492299.a n = A225381 (n + 1)

end A225381

/-! ## A225381.P9908396977892565352

`1-(a(n-1)-a(floor((n-1)/2)))+n` with `a(0)=1`
-/

namespace A225381.P9908396977892565352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat) + (n : ℤ)

end

end A225381.P9908396977892565352

namespace A225381

/-- `1-(a(n-1)-a(floor((n-1)/2)))+n` -/
def P9908396977892565352.Spec : Prop :=
  ∀ n, P9908396977892565352.a n = A225381 (n + 1)

end A225381

/-! ## A225381.P4320066541734999824

`1-(a(n-1)-a(floor((n-1)/2))-n)` with `a(0)=1`
-/

namespace A225381.P4320066541734999824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat - (n : ℤ))

end

end A225381.P4320066541734999824

namespace A225381

/-- `1-(a(n-1)-a(floor((n-1)/2))-n)` -/
def P4320066541734999824.Spec : Prop :=
  ∀ n, P4320066541734999824.a n = A225381 (n + 1)

end A225381

/-! ## A225381.P5754375998952727192

`n+1-floor(n/and(n+1, -(n+1)))/2`
-/

namespace A225381.P5754375998952727192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋ : ℚ) / 2

end

end A225381.P5754375998952727192

namespace A225381

/-- `n+1-floor(n/and(n+1, -(n+1)))/2` -/
def P5754375998952727192.Spec : Prop :=
  ∀ n, P5754375998952727192.a n = (A225381 (n + 1) : ℚ)

end A225381

/-! ## A225381.P2317013252721647976

`1-A025480(n)+n`
-/

namespace A225381.P2317013252721647976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A025480 n + (n : ℤ)

end

end A225381.P2317013252721647976

namespace A225381

/-- `1-A025480(n)+n` -/
def P2317013252721647976.Spec : Prop :=
  ∀ n, P2317013252721647976.a n = A225381 (n + 1)

end A225381

/-! ## A225381.P1677634376967700808

`∑{d}[n+1, A055034(#)]`
-/

namespace A225381.P1677634376967700808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055034 d

end

end A225381.P1677634376967700808

namespace A225381

/-- `∑{d}[n+1, A055034(#)]` -/
def P1677634376967700808.Spec : Prop :=
  ∀ n, P1677634376967700808.a n = A225381 (n + 1)

end A225381

/-! ## A225381.P11604490630513350064

`round(A129527(n+1)/2)`
-/

namespace A225381.P11604490630513350064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A129527 (n + 1) : ℚ) / 2)

end

end A225381.P11604490630513350064

namespace A225381

/-- `round(A129527(n+1)/2)` -/
def P11604490630513350064.Spec : Prop :=
  ∀ n, P11604490630513350064.a n = A225381 (n + 1)

end A225381

/-! ## A225381.P12923659605445321179

`2-A003602(n+1)+n`
-/

namespace A225381.P12923659605445321179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A003602 (n + 1) + (n : ℤ)

end

end A225381.P12923659605445321179

namespace A225381

/-- `2-A003602(n+1)+n` -/
def P12923659605445321179.Spec : Prop :=
  ∀ n, P12923659605445321179.a n = A225381 (n + 1)

end A225381

/-! ## A225381.P6075629830999725947

`3-A103391(n+2)+n`
-/

namespace A225381.P6075629830999725947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A103391 (n + 2) + (n : ℤ)

end

end A225381.P6075629830999725947

namespace A225381

/-- `3-A103391(n+2)+n` -/
def P6075629830999725947.Spec : Prop :=
  ∀ n, P6075629830999725947.a n = A225381 (n + 1)

end A225381

/-! ## A225381.P10248186303719431327

`1-A110962(2*n)+n`
-/

namespace A225381.P10248186303719431327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A110962 (2 * n) + (n : ℤ)

end

end A225381.P10248186303719431327

namespace A225381

/-- `1-A110962(2*n)+n` -/
def P10248186303719431327.Spec : Prop :=
  ∀ n, P10248186303719431327.a n = A225381 (n + 1)

end A225381

/-! ## A225381.P11947744289496675275

`n+1-A153733(n)/2`
-/

namespace A225381.P11947744289496675275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A153733 n : ℚ) / 2

end

end A225381.P11947744289496675275

namespace A225381

/-- `n+1-A153733(n)/2` -/
def P11947744289496675275.Spec : Prop :=
  ∀ n, P11947744289496675275.a n = (A225381 (n + 1) : ℚ)

end A225381

/-! ## A225381.P9688036494039088231

`n+2-A110963(Δ[n²])`
-/

namespace A225381.P9688036494039088231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A110963 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A225381.P9688036494039088231

namespace A225381

/-- `n+2-A110963(Δ[n²])` -/
def P9688036494039088231.Spec : Prop :=
  ∀ n, P9688036494039088231.a n = A225381 (n + 1)

end A225381

/-! ## A225381.P1600044317027578545

`2-A110963(2*n+1)+n`
-/

namespace A225381.P1600044317027578545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A110963 (2 * n + 1) + (n : ℤ)

end

end A225381.P1600044317027578545

namespace A225381

/-- `2-A110963(2*n+1)+n` -/
def P1600044317027578545.Spec : Prop :=
  ∀ n, P1600044317027578545.a n = A225381 (n + 1)

end A225381

/-! ## A225381.P2422721613346601280

`(A331739(n+1)+n+2)/2`
-/

namespace A225381.P2422721613346601280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331739 (n + 1) + (n + 2 : ℤ) : ℚ) / 2

end

end A225381.P2422721613346601280

namespace A225381

/-- `(A331739(n+1)+n+2)/2` -/
def P2422721613346601280.Spec : Prop :=
  ∀ n, P2422721613346601280.a n = (A225381 (n + 1) : ℚ)

end A225381

/-! ## A225381.P497209417136762077

`(2*n+3-A000265(n+1))/2`
-/

namespace A225381.P497209417136762077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3 : ℤ) - A000265 (n + 1) : ℚ) / 2

end

end A225381.P497209417136762077

namespace A225381

/-- `(2*n+3-A000265(n+1))/2` -/
def P497209417136762077.Spec : Prop :=
  ∀ n, P497209417136762077.a n = (A225381 (n + 1) : ℚ)

end A225381

/-!
# A225382: Dimensions of homogeneous components of the universal associative envelope for a certain nonassociative triple system.

The programs for A225382, there is no canonical definition to state claims against.
-/

/-! ## A225382.P14166932014822931469

`record[floor((n+1)/(2-sqrt(2)))*A104766(n+1)]`
-/

namespace A225382.P14166932014822931469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (2 - Real.sqrt (2 : ℝ))⌋ * A104766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A225382.P14166932014822931469

/-!
# A225383: Dimensions of homogeneous components of the universal associative envelope for a certain nonassociative triple system.

The programs for A225383, there is no canonical definition to state claims against.
-/

/-! ## A225383.P5335658336620954081

`ogf((1+2x+4x^2+3x^3+x^4-4x^5)/(1-4x+4x^2+x^3))`
-/

namespace A225383.P5335658336620954081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 4, 3, 1, -4] [1, -4, 4, 1] n

end

end A225383.P5335658336620954081

/-!
# A225384: Dimensions of homogeneous components of the universal associative envelope for a certain nonassociative triple system.

The programs for A225384, there is no canonical definition to state claims against.
-/

/-! ## A225384.P14921955686832097342

`floor(3/acot(n))*record[∏{e}[n+1, #+1]]`
-/

namespace A225384.P14921955686832097342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A225384.P14921955686832097342

/-!
# A225385: Construct sequences P,Q,R by the rules: Q = first differences of P, R = second differences of P, P starts with 1,3,9, Q starts with 2,6, R starts with 4; at each stage the smallest number not yet present in P,Q,R is appended to R. Sequence gives P.

The programs for A225385, there is no canonical definition to state claims against.
-/

/-! ## A225385.P12409319066882524742

`A225386(n)+a(n-1)` with `a(0)=1`
-/

namespace A225385.P12409319066882524742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A225386 n + a (n - 1)

end

end A225385.P12409319066882524742

/-! ## A225385.P9143223267703804188

`∑[A225386(floor(sqrt(n²+1)))]-1`
-/

namespace A225385.P9143223267703804188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225386 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A225385.P9143223267703804188

/-! ## A225385.P2697387872825486955

`∑[A225386(n%a(n-1))]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A225385.P2697387872825486955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n f1 =>
  A225386 (Int.tmod (n : ℤ) (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225385.P2697387872825486955

/-! ## A225385.P15498937549145849742

`abs(1-∑[A225386(A028310(n))])`
-/

namespace A225385.P15498937549145849742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225386 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A225385.P15498937549145849742

/-! ## A225385.P3877217715203087110

`∑[A225386(n*a(A157928(n)-1))]` with `a(0)=1, a(1)=2`
-/

namespace A225385.P3877217715203087110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A225386 ((n : ℤ) * f1 (A157928 n - 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225385.P3877217715203087110

/-! ## A225385.P2503868344287372891

`∑[A225386(A028310(n))/A054977(n)]`
-/

namespace A225385.P2503868344287372891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225386 (A028310 n).toNat : ℚ) / (A054977 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225385.P2503868344287372891

/-! ## A225385.P8222442156721873534

`∑[A225386(A028310(n))^A178489(n)]`
-/

namespace A225385.P8222442156721873534
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225386 (A028310 n).toNat : ℚ) ^ (A178489 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225385.P8222442156721873534

/-! ## A225385.P4260534623119088231

`A057428(n+1)+∑[A225386(A028310(n))]`
-/

namespace A225385.P4260534623119088231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225386 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225385.P4260534623119088231

/-! ## A225385.P16417410345054061931

`∑[A225386(A028310(n))^A052409(n²+1)]`
-/

namespace A225385.P16417410345054061931
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225386 (A028310 n).toNat : ℚ) ^ (A052409 (n ^ 2 + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225385.P16417410345054061931

/-! ## A225385.P2121440400469470455

`A033999(2*n+1)+∑[A225386(A028310(n))]`
-/

namespace A225385.P2121440400469470455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225386 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A225385.P2121440400469470455

/-!
# A225386: Construct sequences P,Q,R by the rules: Q = first differences of P, R = second differences of P, P starts with 1,3,9, Q starts with 2,6, R starts with 4; at each stage the smallest number not yet present in P,Q,R is appended to R. Sequence gives Q.

The programs for A225386, there is no canonical definition to state claims against.
-/

/-! ## A225386.P6620065260722225124

`Δ[A225385(n+1)]`
-/

namespace A225386.P6620065260722225124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225386.P6620065260722225124

/-! ## A225386.P4619968215127343707

`A225387(n)+a(n-1)` with `a(0)=2`
-/

namespace A225386.P4619968215127343707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A225387 n + a (n - 1)

end

end A225386.P4619968215127343707

/-! ## A225386.P11156261082710954488

`abs(Δ[A225385(-xor(n, -1))])`
-/

namespace A225386.P11156261082710954488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225385 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A225386.P11156261082710954488

/-! ## A225386.P9173746336817142332

`∑[A225387(round(sqrt(n²+1)))]-2`
-/

namespace A225386.P9173746336817142332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225387 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A225386.P9173746336817142332

/-! ## A225386.P13545875610882789428

`Δ[record[A225385(A344180(n))]]`
-/

namespace A225386.P13545875610882789428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225385 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225386.P13545875610882789428

/-! ## A225386.P41981345760253940

`abs(Δ[A225385(A008619(2*n))])`
-/

namespace A225386.P41981345760253940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225385 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A225386.P41981345760253940

/-! ## A225386.P1423992609016507527

`A000027(Δ[A225385(-xor(n, -1))])`
-/

namespace A225386.P1423992609016507527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225385 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A225386.P1423992609016507527

/-! ## A225386.P15774804404191361697

`A225385(n+2)-A225385(n+1)`
-/

namespace A225386.P15774804404191361697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225385 (n + 2) - A225385 (n + 1)

end

end A225386.P15774804404191361697

/-! ## A225386.P7553850004949659652

`A000027(Δ[A225385(1-(n-2*n))])`
-/

namespace A225386.P7553850004949659652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225385 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A225386.P7553850004949659652

/-! ## A225386.P6807603950696229805

`A178804(2*Δ[A225385(-xor(n, -1))])`
-/

namespace A225386.P6807603950696229805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225385 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178804 (2 * (f1 (n + 1) - f1 n)).toNat

end

end A225386.P6807603950696229805

/-!
# A225387: Construct sequences P,Q,R by the rules: Q = first differences of P, R = second differences of P, P starts with 1,3,9, Q starts with 2,6, R starts with 4; at each stage the smallest number not yet present in P,Q,R is appended to R. Sequence gives R.

The programs for A225387, there is no canonical definition to state claims against.
-/

/-! ## A225387.P8795795537318894350

`∪[(n+4)²-9, A037259(n)]`
-/

namespace A225387.P8795795537318894350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 4) ^ 2 : ℤ) - 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037259 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225387.P8795795537318894350

/-! ## A225387.P17982311664789225349

`∪[A037259(n), A016839(n)]`
-/

namespace A225387.P17982311664789225349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037259 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016839 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225387.P17982311664789225349

/-! ## A225387.P11874892828847916844

`∪[A037259(n), A016887(n)]`
-/

namespace A225387.P11874892828847916844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037259 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016887 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225387.P11874892828847916844

/-! ## A225387.P3825866599200575040

`∪[A037259(n), A016947(n)]`
-/

namespace A225387.P3825866599200575040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037259 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016947 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225387.P3825866599200575040

/-! ## A225387.P10015956545555155152

`∪[A037259(n), A017019(n)]`
-/

namespace A225387.P10015956545555155152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037259 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017019 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225387.P10015956545555155152

/-! ## A225387.P14951267845851286582

`∪[A037259(n), A017103(n)]`
-/

namespace A225387.P14951267845851286582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037259 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017103 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225387.P14951267845851286582

/-! ## A225387.P149990129010538415

`∪[A037259(n), A017199(n)]`
-/

namespace A225387.P149990129010538415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037259 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017199 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225387.P149990129010538415

/-! ## A225387.P11226198175413520323

`∪[A037259(n), A017307(n)]`
-/

namespace A225387.P11226198175413520323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037259 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017307 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225387.P11226198175413520323

/-! ## A225387.P11504212958117079982

`∪[A037259(n), A017353(n)]`
-/

namespace A225387.P11504212958117079982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037259 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225387.P11504212958117079982

/-! ## A225387.P3255300615564541788

`∪[A037259(n), A017427(n)]`
-/

namespace A225387.P3255300615564541788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037259 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017427 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A225387.P3255300615564541788

/-!
# A225390: Triangular numbers representable as Tx*Ty, where Tx>1 and Ty>1 are triangular numbers, in two or more ways.

The programs for A225390, there is no canonical definition to state claims against.
-/

/-! ## A225390.P16431033582947071375

`∩[A110904(n+1), A188630(n+1)]`
-/

namespace A225390.P16431033582947071375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A225390.P16431033582947071375

/-!
# A225391: Expansion of 1/(1 - x - x^2 - x^6 + x^8).

The programs for A225391, the canonical program `A225391.P334697687215651741` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225391 has offset 0).

The definition of A225391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2-x^6+x^8))` (program `A225391.P334697687215651741`, by `A225391.P334697687215651741.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225391.P334697687215651741

`ogf(1/(1-x-x^2-x^6+x^8))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A225391

/-- `ogf(1/(1-x-x^2-x^6+x^8))` -/
def P334697687215651741.Spec : Prop :=
  ∀ n, P334697687215651741.a n = A225391 n

theorem P334697687215651741.correct : P334697687215651741.Spec := by
  intro n
  simp only [A225391]

end A225391

/-! ## A225391.P8172741043688392133

`a(n-1)+a(n-2)+a(n-6)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=8, a(6)=14, a(7)=23`
-/

namespace A225391.P8172741043688392133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 8, 14, 23] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 6) - a (n - 8)

end

end A225391.P8172741043688392133

namespace A225391

/-- `a(n-1)+a(n-2)+a(n-6)-a(n-8)` -/
def P8172741043688392133.Spec : Prop :=
  ∀ n, P8172741043688392133.a n = A225391 n

end A225391

/-! ## A225391.P3444201465597749712

`A185283(A358907(n))`
-/

namespace A225391.P3444201465597749712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A358907 n).toNat

end

end A225391.P3444201465597749712

namespace A225391

/-- `A185283(A358907(n))` -/
def P3444201465597749712.Spec : Prop :=
  ∀ n, P3444201465597749712.a n = A225391 n

end A225391

/-! ## A225391.P14025467975457260496

`A100196(round(sqrt(A067336(n))))`
-/

namespace A225391.P14025467975457260496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (SequenceMachineLib.roundAway (Real.sqrt (A067336 n : ℝ))).toNat

end

end A225391.P14025467975457260496

namespace A225391

/-- `A100196(round(sqrt(A067336(n))))` -/
def P14025467975457260496.Spec : Prop :=
  ∀ n, P14025467975457260496.a n = A225391 n

end A225391

/-! ## A225391.P2899742266295865854

`A276581((A078679(n)+1)/2)`
-/

namespace A225391.P2899742266295865854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (SequenceMachineLib.roundAway ((A078679 n + 1 : ℚ) / 2)).toNat

end

end A225391.P2899742266295865854

namespace A225391

/-- `A276581((A078679(n)+1)/2)` -/
def P2899742266295865854.Spec : Prop :=
  ∀ n, P2899742266295865854.a n = A225391 n

end A225391

/-!
# A225393: Expansion of 1/(1 - x - x^2 + x^6 - x^8).

The programs for A225393, the canonical program `A225393.P18333857980002204837` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225393 has offset 0).

The definition of A225393 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+x^6-x^8))` (program `A225393.P18333857980002204837`, by `A225393.P18333857980002204837.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225393.P18333857980002204837

`ogf(1/(1-x-x^2+x^6-x^8))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A225393

/-- `ogf(1/(1-x-x^2+x^6-x^8))` -/
def P18333857980002204837.Spec : Prop :=
  ∀ n, P18333857980002204837.a n = A225393 n

theorem P18333857980002204837.correct : P18333857980002204837.Spec := by
  intro n
  simp only [A225393]

end A225393

/-! ## A225393.P17878463121190838797

`a(n-1)+a(n-2)-a(n-6)+a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=8, a(6)=12, a(7)=19`
-/

namespace A225393.P17878463121190838797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 8, 12, 19] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 6) + a (n - 8)

end

end A225393.P17878463121190838797

namespace A225393

/-- `a(n-1)+a(n-2)-a(n-6)+a(n-8)` -/
def P17878463121190838797.Spec : Prop :=
  ∀ n, P17878463121190838797.a n = A225393 n

end A225393

/-! ## A225393.P10484922975591218926

`A083896(A000079(n))+A060961(n+1)`
-/

namespace A225393.P10484922975591218926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083896 (A000079 n).toNat + A060961 (n + 1)

end

end A225393.P10484922975591218926

namespace A225393

/-- `A083896(A000079(n))+A060961(n+1)` -/
def P10484922975591218926.Spec : Prop :=
  ∀ n, P10484922975591218926.a n = A225393 n

end A225393

/-! ## A225393.P6773512683737337549

`A102681(A080012(n))+A060961(n+1)`
-/

namespace A225393.P6773512683737337549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A080012 n).toNat + A060961 (n + 1)

end

end A225393.P6773512683737337549

namespace A225393

/-- `A102681(A080012(n))+A060961(n+1)` -/
def P6773512683737337549.Spec : Prop :=
  ∀ n, P6773512683737337549.a n = A225393 n

end A225393

/-! ## A225393.P3906956190922309010

`A083896(A171559(n))+A060961(n+1)`
-/

namespace A225393.P3906956190922309010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083896 (A171559 n).toNat + A060961 (n + 1)

end

end A225393.P3906956190922309010

namespace A225393

/-- `A083896(A171559(n))+A060961(n+1)` -/
def P3906956190922309010.Spec : Prop :=
  ∀ n, P3906956190922309010.a n = A225393 n

end A225393

/-!
# A225394: Expansion of 1/(1 - x - x^2 + x^7 - x^9).

The programs for A225394, the canonical program `A225394.P1074883390637473588` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225394 has offset 0).

The definition of A225394 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+x^7-x^9))` (program `A225394.P1074883390637473588`, by `A225394.P1074883390637473588.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225394.P1074883390637473588

`ogf(1/(1-x-x^2+x^7-x^9))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A225394

/-- `ogf(1/(1-x-x^2+x^7-x^9))` -/
def P1074883390637473588.Spec : Prop :=
  ∀ n, P1074883390637473588.a n = A225394 n

theorem P1074883390637473588.correct : P1074883390637473588.Spec := by
  intro n
  simp only [A225394]

end A225394

/-! ## A225394.P4959232024280338351

`a(n-1)+a(n-2)-a(n-7)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=8, a(6)=13, a(7)=20, a(8)=32`
-/

namespace A225394.P4959232024280338351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 8, 13, 20, 32] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 7) + a (n - 9)

end

end A225394.P4959232024280338351

namespace A225394

/-- `a(n-1)+a(n-2)-a(n-7)+a(n-9)` -/
def P4959232024280338351.Spec : Prop :=
  ∀ n, P4959232024280338351.a n = A225394 n

end A225394

/-! ## A225394.P4174633075563440696

`A060961(n)+A212804(n)%A156413(n)`
-/

namespace A225394.P4174633075563440696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060961 n + Int.tmod (A212804 n) (A156413 n)

end

end A225394.P4174633075563440696

namespace A225394

/-- `A060961(n)+A212804(n)%A156413(n)` -/
def P4174633075563440696.Spec : Prop :=
  ∀ n, P4174633075563440696.a n = A225394 n

end A225394

/-! ## A225394.P2017713202592800166

`A013985(A187829(n+1))+A013983(n)`
-/

namespace A225394.P2017713202592800166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013985 (A187829 (n + 1)).toNat + A013983 n

end

end A225394.P2017713202592800166

namespace A225394

/-- `A013985(A187829(n+1))+A013983(n)` -/
def P2017713202592800166.Spec : Prop :=
  ∀ n, P2017713202592800166.a n = A225394 n

end A225394

/-! ## A225394.P43616303958248856

`A013984(n)+A013984(A077168(n))`
-/

namespace A225394.P43616303958248856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013984 n + A013984 (A077168 n).toNat

end

end A225394.P43616303958248856

namespace A225394

/-- `A013984(n)+A013984(A077168(n))` -/
def P43616303958248856.Spec : Prop :=
  ∀ n, P43616303958248856.a n = A225394 n

end A225394

/-!
# A225395: Replace each prime number with its rank in the recursive prime factorization of n.

The programs for A225395, there is no canonical definition to state claims against.
-/

/-! ## A225395.P6864183412164085682

`A003963(A019554(A331737(n+1)))`
-/

namespace A225395.P6864183412164085682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A019554 (A331737 (n + 1)).toNat).toNat

end

end A225395.P6864183412164085682

/-! ## A225395.P13149489596345845599

`A003963(A341042((n+1)²))`
-/

namespace A225395.P13149489596345845599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A341042 ((n + 1) ^ 2)).toNat

end

end A225395.P13149489596345845599

/-! ## A225395.P17161469836187840184

`A003963(A000026(((n+1)/2^val(n+1, 2))²))`
-/

namespace A225395.P17161469836187840184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A000026 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)) ^ 2)).toNat).toNat

end

end A225395.P17161469836187840184

/-! ## A225395.P4337015020636577585

`A003963(A000026(A000265((n+1)²)))`
-/

namespace A225395.P4337015020636577585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A000026 (A000265 ((n + 1) ^ 2)).toNat).toNat

end

end A225395.P4337015020636577585

/-! ## A225395.P8991407089219886791

`A003963(A000026(A065883(n+1)²))`
-/

namespace A225395.P8991407089219886791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A000026 (A065883 (n + 1) ^ 2).toNat).toNat

end

end A225395.P8991407089219886791

/-! ## A225395.P10689146319578456572

`A003963(A015052(A331737(n+1)²))`
-/

namespace A225395.P10689146319578456572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A015052 (A331737 (n + 1) ^ 2).toNat).toNat

end

end A225395.P10689146319578456572

/-! ## A225395.P1665225224375538206

`A290106(A007913(n+1)*A007948(n+1))`
-/

namespace A225395.P1665225224375538206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290106 (A007913 (n + 1) * A007948 (n + 1)).toNat

end

end A225395.P1665225224375538206

/-! ## A225395.P1710605897389553331

`A156061(n+1)²/A156061(A048798(n+1))`
-/

namespace A225395.P1710605897389553331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156061 (n + 1) ^ 2 : ℚ) / (A156061 (A048798 (n + 1)).toNat : ℚ)

end

end A225395.P1710605897389553331

/-! ## A225395.P4717069285026121612

`A290106(2*A087320(n+1))`
-/

namespace A225395.P4717069285026121612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290106 (2 * A087320 (n + 1)).toNat

end

end A225395.P4717069285026121612

/-! ## A225395.P17624066206936999641

`A290106(2*A197863(n+1))`
-/

namespace A225395.P17624066206936999641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290106 (2 * A197863 (n + 1)).toNat

end

end A225395.P17624066206936999641

/-!
# A225396: Expansion of 1/(1 - x - x^2 + x^10 - x^12).

The programs for A225396, the canonical program `A225396.P8129197900413706299` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225396 has offset 0).

The definition of A225396 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+x^10-x^12))` (program `A225396.P8129197900413706299`, by `A225396.P8129197900413706299.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A225396.P8129197900413706299

`ogf(1/(1-x-x^2+x^10-x^12))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A225396

/-- `ogf(1/(1-x-x^2+x^10-x^12))` -/
def P8129197900413706299.Spec : Prop :=
  ∀ n, P8129197900413706299.a n = A225396 n

theorem P8129197900413706299.correct : P8129197900413706299.Spec := by
  intro n
  simp only [A225396]

end A225396

/-! ## A225396.P13104075136825999894

`A005843(A000045(n+1))-A147659(n)`
-/

namespace A225396.P13104075136825999894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000045 (n + 1)).toNat - A147659 n

end

end A225396.P13104075136825999894

namespace A225396

/-- `A005843(A000045(n+1))-A147659(n)` -/
def P13104075136825999894.Spec : Prop :=
  ∀ n, P13104075136825999894.a n = A225396 n

end A225396

/-! ## A225396.P18288402429488643552

`A005843(A013987(n+1)+A013987(n))/2`
-/

namespace A225396.P18288402429488643552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A013987 (n + 1) + A013987 n).toNat : ℚ) / 2

end

end A225396.P18288402429488643552

namespace A225396

/-- `A005843(A013987(n+1)+A013987(n))/2` -/
def P18288402429488643552.Spec : Prop :=
  ∀ n, P18288402429488643552.a n = (A225396 n : ℚ)

end A225396

/-! ## A225396.P5320267885310728191

`A008486(A013987(n+1)+A013987(n))/3`
-/

namespace A225396.P5320267885310728191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 (A013987 (n + 1) + A013987 n).toNat : ℚ) / 3

end

end A225396.P5320267885310728191

namespace A225396

/-- `A008486(A013987(n+1)+A013987(n))/3` -/
def P5320267885310728191.Spec : Prop :=
  ∀ n, P5320267885310728191.a n = (A225396 n : ℚ)

end A225396

/-! ## A225396.P2490926127982319447

`A000038(2*a(n-1))+A013987(n+1)+A013987(n)` with `a(0)=1`
-/

namespace A225396.P2490926127982319447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000038 (2 * a (n - 1)).toNat + (A013987 (n + 1) + A013987 n)

end

end A225396.P2490926127982319447

namespace A225396

/-- `A000038(2*a(n-1))+A013987(n+1)+A013987(n)` -/
def P2490926127982319447.Spec : Prop :=
  ∀ n, P2490926127982319447.a n = A225396 n

end A225396

/-!
# A225398: Triangle read by rows: absolute values of odd-numbered rows of A225433.

The programs for A225398, there is no canonical definition to state claims against.
-/

/-! ## A225398.P17290920900437358509

`abs(A225433(A161983(n)))`
-/

namespace A225398.P17290920900437358509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225433 (A161983 n).toNat|

end

end A225398.P17290920900437358509

/-! ## A225398.P15120840050600636431

`abs(A225433(A116942(2*n)))`
-/

namespace A225398.P15120840050600636431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225433 (A116942 (2 * n)).toNat|

end

end A225398.P15120840050600636431

/-! ## A225398.P16772349497020870748

`gcd(A000038(n), A225433(A161983(n)))`
-/

namespace A225398.P16772349497020870748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A225433 (A161983 n).toNat)

end

end A225398.P16772349497020870748

/-! ## A225398.P4237698517388144090

`abs(A225433(A061887(n)+A000196(n)))`
-/

namespace A225398.P4237698517388144090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225433 (A061887 n + A000196 n).toNat|

end

end A225398.P4237698517388144090

/-!
# A225399: Number of nontrivial triangular numbers dividing triangular(n).

The programs for A225399, the canonical program `A225399.P2768579610231320138` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A225399 has offset 0).

The definition of A225399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A225399.P2768579610231320138

`A076982(round(acot(n)+n))-2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A225399

/-- `A076982(round(acot(n)+n))-2` -/
def P2768579610231320138.Spec : Prop :=
  ∀ n, P2768579610231320138.a n = A225399 n

theorem P2768579610231320138.correct : P2768579610231320138.Spec := by
  intro n
  simp only [A225399]

end A225399

/-! ## A225399.P14242058623060118182

`A076982(A233583(n+1))-2`
-/

namespace A225399.P14242058623060118182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076982 (A233583 (n + 1)).toNat - 2

end

end A225399.P14242058623060118182

namespace A225399

/-- `A076982(A233583(n+1))-2` -/
def P14242058623060118182.Spec : Prop :=
  ∀ n, P14242058623060118182.a n = A225399 n

end A225399

/-! ## A225399.P9905732795590654179

`(A076982(A233583(n+1))+A005843(n))%(n+1)`
-/

namespace A225399.P9905732795590654179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076982 (A233583 (n + 1)).toNat + A005843 n) (n + 1 : ℤ)

end

end A225399.P9905732795590654179

namespace A225399

/-- `(A076982(A233583(n+1))+A005843(n))%(n+1)` -/
def P9905732795590654179.Spec : Prop :=
  ∀ n, P9905732795590654179.a n = A225399 n

end A225399

/-! ## A225399.P4448183563926475346

`A325334(∑[n])-floor(atan(n))`
-/

namespace A225399.P4448183563926475346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 (∑ j ∈ Finset.range (n + 1), f1 j) - ⌊Real.arctan (n : ℝ)⌋

end

end A225399.P4448183563926475346

namespace A225399

/-- `A325334(∑[n])-floor(atan(n))` -/
def P4448183563926475346.Spec : Prop :=
  ∀ n, P4448183563926475346.a n = A225399 n

end A225399

/-! ## A225399.P18144945402368861727

`A325334(A000217(n))-A091247(2*n)`
-/

namespace A225399.P18144945402368861727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 (A000217 n).toNat - A091247 (2 * n)

end

end A225399.P18144945402368861727

namespace A225399

/-- `A325334(A000217(n))-A091247(2*n)` -/
def P18144945402368861727.Spec : Prop :=
  ∀ n, P18144945402368861727.a n = A225399 n

end A225399

