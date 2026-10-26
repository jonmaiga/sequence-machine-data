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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A326100: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A326100, there is no canonical definition to state claims against.
-/

/-! ## A326100.P12862310555002962357

`A326105(∑[n+2]+4)`
-/

namespace A326100.P12862310555002962357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A326100.P12862310555002962357

/-! ## A326100.P17611103350577104010

`A326105(A167614(n+1))+A025469(n)`
-/

namespace A326100.P17611103350577104010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (A167614 (n + 1)).toNat + A025469 n

end

end A326100.P17611103350577104010

/-! ## A326100.P2392707249162750807

`A326105(A167614(n+1))+A086015(n)`
-/

namespace A326100.P2392707249162750807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (A167614 (n + 1)).toNat + A086015 n

end

end A326100.P2392707249162750807

/-! ## A326100.P6148626530913552365

`or(A102683(n), A326105(A167614(n+1)))`
-/

namespace A326100.P6148626530913552365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 n) (A326105 (A167614 (n + 1)).toNat)

end

end A326100.P6148626530913552365

/-! ## A326100.P4691560532036334050

`A326105(A167614(n+1))%A326101(n+1)`
-/

namespace A326100.P4691560532036334050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326105 (A167614 (n + 1)).toNat) (A326101 (n + 1))

end

end A326100.P4691560532036334050

/-!
# A326101: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A326101, there is no canonical definition to state claims against.
-/

/-! ## A326101.P7016295241862966117

`A326105(A052905(n)+9)`
-/

namespace A326101.P7016295241862966117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (A052905 n + 9).toNat

end

end A326101.P7016295241862966117

/-! ## A326101.P3012710089300254669

`A326105(A055999(n)+10)`
-/

namespace A326101.P3012710089300254669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (A055999 n + 10).toNat

end

end A326101.P3012710089300254669

/-! ## A326101.P4651470607820353565

`A326105(A167614(n+2)+1)`
-/

namespace A326101.P4651470607820353565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (A167614 (n + 2) + 1).toNat

end

end A326101.P4651470607820353565

/-! ## A326101.P13536799578783356924

`A326105(A166136(n+2)-2)`
-/

namespace A326101.P13536799578783356924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (A166136 (n + 2) - 2).toNat

end

end A326101.P13536799578783356924

/-! ## A326101.P6545268519879723366

`A326105(A166136(n+1)+1+n)`
-/

namespace A326101.P6545268519879723366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A326101.P6545268519879723366

/-!
# A326102: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A326102, there is no canonical definition to state claims against.
-/

/-! ## A326102.P12730501805820718836

`A326105(A155212(n)+13)`
-/

namespace A326102.P12730501805820718836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (A155212 n + 13).toNat

end

end A326102.P12730501805820718836

/-! ## A326102.P12880023081567244287

`A326105(A056000(n)+15)`
-/

namespace A326102.P12880023081567244287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (A056000 n + 15).toNat

end

end A326102.P12880023081567244287

/-! ## A326102.P2486723674886737974

`A326105(A000124(n+4)+4)`
-/

namespace A326102.P2486723674886737974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (A000124 (n + 4) + 4).toNat

end

end A326102.P2486723674886737974

/-! ## A326102.P3951719495073348436

`A326105(A055999(n+1)+11)`
-/

namespace A326102.P3951719495073348436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (A055999 (n + 1) + 11).toNat

end

end A326102.P3951719495073348436

/-! ## A326102.P3245412195339724137

`A326105(A051936(n+4)+14)`
-/

namespace A326102.P3245412195339724137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (A051936 (n + 4) + 14).toNat

end

end A326102.P3245412195339724137

/-!
# A326103: Number of n X 6 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A326103, there is no canonical definition to state claims against.
-/

/-! ## A326103.P1872201528324944077

`A326105(eq[7, A131818(n+1)])`
-/

namespace A326103.P1872201528324944077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326103.P1872201528324944077

/-! ## A326103.P7029633149858508157

`A326105(Δ[A023545(n+1)]+10)`
-/

namespace A326103.P7029633149858508157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (f1 (n + 1) - f1 n + 10).toNat

end

end A326103.P7029633149858508157

/-! ## A326103.P7011585820533410949

`A326105(A374007(n+1))`
-/

namespace A326103.P7011585820533410949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (A374007 (n + 1)).toNat

end

end A326103.P7011585820533410949

/-! ## A326103.P9111535325123670803

`A326105(eq[5, A193592(n)])`
-/

namespace A326103.P9111535325123670803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326103.P9111535325123670803

/-! ## A326103.P2308574179965082206

`A326105(eq[8, A258709(n)])`
-/

namespace A326103.P2308574179965082206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326103.P2308574179965082206

/-!
# A326104: Number of n X 7 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A326104, there is no canonical definition to state claims against.
-/

/-! ## A326104.P12121287314148291703

`A326105(A056119(n)+28)`
-/

namespace A326104.P12121287314148291703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (A056119 n + 28).toNat

end

end A326104.P12121287314148291703

/-! ## A326104.P9484250442316899968

`A326105(A166136(n+5)+1)`
-/

namespace A326104.P9484250442316899968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (A166136 (n + 5) + 1).toNat

end

end A326104.P9484250442316899968

/-! ## A326104.P9768309062828558213

`A326105(eq[8, A131818(n+1)])`
-/

namespace A326104.P9768309062828558213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326104.P9768309062828558213

/-! ## A326104.P5749951054492797666

`A326105(A374008(n+1))`
-/

namespace A326104.P5749951054492797666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (A374008 (n + 1)).toNat

end

end A326104.P5749951054492797666

/-! ## A326104.P3377649068709268291

`A326105(eq[4, A219347(n)])`
-/

namespace A326104.P3377649068709268291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326104.P3377649068709268291

/-!
# A326105: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A326105, there is no canonical definition to state claims against.
-/

/-! ## A326105.P15799156901693467634

`A300472(n+1)+A321936(A001263(n+1))²`
-/

namespace A326105.P15799156901693467634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (n + 1) + A321936 (A001263 (n + 1)).toNat ^ 2

end

end A326105.P15799156901693467634

/-! ## A326105.P11465372299457886136

`A300472(n+1)+A280737(A301784(n+1))²`
-/

namespace A326105.P11465372299457886136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (n + 1) + A280737 (A301784 (n + 1)).toNat ^ 2

end

end A326105.P11465372299457886136

/-! ## A326105.P11280273801909684236

`A300472(n+1)+A124763(A316545(n+1))²`
-/

namespace A326105.P11280273801909684236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300472 (n + 1) + A124763 (A316545 (n + 1)).toNat ^ 2

end

end A326105.P11280273801909684236

/-! ## A326105.P4590424189500986110

`A300477(A300436(n+4))+A300472(n+1)`
-/

namespace A326105.P4590424189500986110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300477 (A300436 (n + 4)).toNat + A300472 (n + 1)

end

end A326105.P4590424189500986110

/-!
# A326106: Lexicographically earliest sequence of distinct terms such that a(n) is not divisible by any digit of a(n+1).

The programs for A326106, there is no canonical definition to state claims against.
-/

/-! ## A326106.P3401993542165219059

`eq[char[10*n], A161048(n+1)]`
-/

namespace A326106.P3401993542165219059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161048 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A326106.P3401993542165219059

/-! ## A326106.P11996217847327451595

`lt[∏{digits}[n, -#], A179164(n+1)%2]`
-/

namespace A326106.P11996217847327451595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => -(x : ℤ)).prod

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179164 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A326106.P11996217847327451595

/-! ## A326106.P6874338751808720252

`lt[sin(A179168(n+1)), -∏{digits}[n, -#]]`
-/

namespace A326106.P6874338751808720252
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A179168 (n + 1) : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => -(x : ℤ)).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A326106.P6874338751808720252

/-! ## A326106.P13559395033016069430

`lt[sin(A179166(n+3)), -∏{digits}[n, -#]]`
-/

namespace A326106.P13559395033016069430
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A179166 (n + 3) : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => -(x : ℤ)).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A326106.P13559395033016069430

/-! ## A326106.P10866680847608790845

`A275513(A082207(n+1))`
-/

namespace A326106.P10866680847608790845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275513 (A082207 (n + 1)).toNat

end

end A326106.P10866680847608790845

/-!
# A326111: Numbers requiring 2 central factorizations to reach prime factorization.

The programs for A326111, there is no canonical definition to state claims against.
-/

/-! ## A326111.P1610205582775404825

`eq[2, A308427(n+1)]+1`
-/

namespace A326111.P1610205582775404825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A326111.P1610205582775404825

/-! ## A326111.P4499260744999114053

`eq[2, A308427(A028310(n))]`
-/

namespace A326111.P4499260744999114053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326111.P4499260744999114053

/-! ## A326111.P14793945907081480263

`A020725(eq[2, A308427(n+1)])`
-/

namespace A326111.P14793945907081480263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326111.P14793945907081480263

/-! ## A326111.P9569292076289447260

`A061767(eq[2, A308427(n+1)])`
-/

namespace A326111.P9569292076289447260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326111.P9569292076289447260

/-! ## A326111.P16232625697159118930

`A181569(eq[2, A308427(n+1)])`
-/

namespace A326111.P16232625697159118930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326111.P16232625697159118930

/-! ## A326111.P2878701907547987785

`eq[2, A308427(A008706(n)-4*n)]`
-/

namespace A326111.P2878701907547987785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (A008706 n - (4 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326111.P2878701907547987785

/-! ## A326111.P17147396348577093308

`eq[2, A308427(A233583(n+1))]`
-/

namespace A326111.P17147396348577093308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326111.P17147396348577093308

/-! ## A326111.P16823459870273435854

`∪[A014612(n+1), A349241(n+1)]`
-/

namespace A326111.P16823459870273435854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326111.P16823459870273435854

/-!
# A326112: Numbers requiring 3 central factorizations to reach prime factorization.

The programs for A326112, there is no canonical definition to state claims against.
-/

/-! ## A326112.P753130282859225555

`eq[3, A308427(n+1)]+1`
-/

namespace A326112.P753130282859225555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A326112.P753130282859225555

/-! ## A326112.P3166575455728373478

`eq[3, A308427(A028310(n))]`
-/

namespace A326112.P3166575455728373478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326112.P3166575455728373478

/-! ## A326112.P13449372978577118006

`A020725(eq[3, A308427(n+1)])`
-/

namespace A326112.P13449372978577118006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326112.P13449372978577118006

/-! ## A326112.P12136679263495496555

`A061767(eq[3, A308427(n+1)])`
-/

namespace A326112.P12136679263495496555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326112.P12136679263495496555

/-! ## A326112.P15128801971664353845

`A181569(eq[3, A308427(n+1)])`
-/

namespace A326112.P15128801971664353845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326112.P15128801971664353845

/-! ## A326112.P2326436432918928513

`eq[3, A308427(A138153(n+1))]`
-/

namespace A326112.P2326436432918928513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326112.P2326436432918928513

/-! ## A326112.P13942100003179165654

`eq[3, A308427(A233583(n+1))]`
-/

namespace A326112.P13942100003179165654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326112.P13942100003179165654

/-!
# A326113: Numbers requiring 4 central factorizations to reach prime factorization.

The programs for A326113, there is no canonical definition to state claims against.
-/

/-! ## A326113.P7917584171794906313

`eq[4, A308427(A028310(n))]`
-/

namespace A326113.P7917584171794906313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326113.P7917584171794906313

/-! ## A326113.P756978426236586008

`A014681(eq[4, A308427(n+1)])`
-/

namespace A326113.P756978426236586008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326113.P756978426236586008

/-! ## A326113.P16973032388779030079

`A020725(eq[4, A308427(n+1)])`
-/

namespace A326113.P16973032388779030079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326113.P16973032388779030079

/-! ## A326113.P6195117514789638979

`eq[4, A308427(A065190(n+1))]`
-/

namespace A326113.P6195117514789638979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (A065190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326113.P6195117514789638979

/-! ## A326113.P17885983907584470406

`A181569(eq[4, A308427(n+1)])`
-/

namespace A326113.P17885983907584470406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326113.P17885983907584470406

/-!
# A326114: Number of subsets of {2..n} containing no product of two or more (not necessarily distinct) elements.

The programs for A326114, there is no canonical definition to state claims against.
-/

/-! ## A326114.P2051210148064547607

`ceil(A326076(n)/2)`
-/

namespace A326114.P2051210148064547607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A326076 n : ℚ) / 2⌉

end

end A326114.P2051210148064547607

/-! ## A326114.P4692644795299932862

`A326076(round(sqrt(n²+1)))/2`
-/

namespace A326114.P4692644795299932862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326076 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2

end

end A326114.P4692644795299932862

/-! ## A326114.P4189195589806733515

`round(A326076(A028310(n))/2)`
-/

namespace A326114.P4189195589806733515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A326076 (A028310 n).toNat : ℚ) / 2)

end

end A326114.P4189195589806733515

/-! ## A326114.P2013407581744148389

`(A326076(n)+A000007(n))/2`
-/

namespace A326114.P2013407581744148389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326076 n + A000007 n : ℚ) / 2

end

end A326114.P2013407581744148389

/-!
# A326115: Number of maximal double-free subsets of {1..n}.

The programs for A326115, there is no canonical definition to state claims against.
-/

/-! ## A326115.P11307043529615193721

`A060369(A272104(n+1)+1)`
-/

namespace A326115.P11307043529615193721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060369 (A272104 (n + 1) + 1).toNat

end

end A326115.P11307043529615193721

/-!
# A326116: Number of subsets of {2..n} containing no products of two or more distinct elements.

The programs for A326116, there is no canonical definition to state claims against.
-/

/-! ## A326116.P11685718827677319961

`A326117(n+1)-1`
-/

namespace A326116.P11685718827677319961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326117 (n + 1) - 1

end

end A326116.P11685718827677319961

/-! ## A326116.P7463264473641895123

`∑[abs(Δ[A326117(n)])]`
-/

namespace A326116.P7463264473641895123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326117 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326116.P7463264473641895123

/-! ## A326116.P11647217136129336543

`record[A326117(gcd(1-n, floor(n/2)))-1]`
-/

namespace A326116.P11647217136129336543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326117 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326116.P11647217136129336543

/-! ## A326116.P5224835632092538040

`∑[Δ[A326117(n)]%A327591(n+2)]`
-/

namespace A326116.P5224835632092538040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326117 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A327591 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326116.P5224835632092538040

/-! ## A326116.P7382927062564263273

`∑[Δ[A326117(n)]+A008683(8*(n+1))]`
-/

namespace A326116.P7382927062564263273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326117 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A008683 (8 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326116.P7382927062564263273

/-!
# A326117: Number of subsets of {1..n} containing no products of two or more distinct elements.

The programs for A326117, there is no canonical definition to state claims against.
-/

/-! ## A326117.P8692050296430615529

`floor(A326116(A028310(n))+atan(n+1))`
-/

namespace A326117.P8692050296430615529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326116 (A028310 n).toNat : ℝ) + Real.arctan (n + 1 : ℝ)⌋

end

end A326117.P8692050296430615529

/-! ## A326117.P4840624280142033345

`A326116(A028310(n))+A057427(n)`
-/

namespace A326117.P4840624280142033345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326116 (A028310 n).toNat + A057427 n

end

end A326117.P4840624280142033345

/-! ## A326117.P15865629807991947696

`A326116(A028310(n))+A178334(n)`
-/

namespace A326117.P15865629807991947696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326116 (A028310 n).toNat + A178334 n

end

end A326117.P15865629807991947696

/-! ## A326117.P4375599813369413301

`A326116(A028310(n))-A057428(n)`
-/

namespace A326117.P4375599813369413301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326116 (A028310 n).toNat - A057428 n

end

end A326117.P4375599813369413301

/-! ## A326117.P6369860193198324319

`A326116(A028310(n))+A011596(n²)`
-/

namespace A326117.P6369860193198324319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326116 (A028310 n).toNat + A011596 (n ^ 2)

end

end A326117.P6369860193198324319

/-!
# A326118: a(n) is the largest number of squares of unit area connected only at corners and without holes that can be inscribed in an n X n square.

The programs for A326118, the canonical program `A326118.P1317926272595304689` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326118 has offset 0).

The definition of A326118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326118.P1317926272595304689

`2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=6, a(5)=9, a(6)=14, a(7)=21, a(8)=24`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A326118

/-- `2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` -/
def P1317926272595304689.Spec : Prop :=
  ∀ n, P1317926272595304689.a n = A326118 n

theorem P1317926272595304689.correct : P1317926272595304689.Spec := by
  intro n
  simp only [A326118]

end A326118

/-! ## A326118.P16118271243321232274

`∑[A338329(abs(1-n))]-1`
-/

namespace A326118.P16118271243321232274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338329 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A326118.P16118271243321232274

namespace A326118

/-- `∑[A338329(abs(1-n))]-1` -/
def P16118271243321232274.Spec : Prop :=
  ∀ n, P16118271243321232274.a n = A326118 n

end A326118

/-! ## A326118.P11541644025611579480

`A338329(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A326118.P11541644025611579480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A338329 (n - 1) + a (n - 1)

end

end A326118.P11541644025611579480

namespace A326118

/-- `A338329(n-1)+a(n-1)` -/
def P11541644025611579480.Spec : Prop :=
  ∀ n, P11541644025611579480.a n = A326118 n

end A326118

/-! ## A326118.P11070779108260712047

`abs(A338329(n)-∑[A338329(n)])`
-/

namespace A326118.P11070779108260712047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A338329 n - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A326118.P11070779108260712047

namespace A326118

/-- `abs(A338329(n)-∑[A338329(n)])` -/
def P11070779108260712047.Spec : Prop :=
  ∀ n, P11070779108260712047.a n = A326118 n

end A326118

/-! ## A326118.P11979908401151326159

`-((A338329(n)-∑[A338329(n)])%(A000217(n+2)+3))`
-/

namespace A326118.P11979908401151326159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A338329 n - ∑ j ∈ Finset.range (n + 1), f1 j) (A000217 (n + 2) + 3)

end

end A326118.P11979908401151326159

namespace A326118

/-- `-((A338329(n)-∑[A338329(n)])%(A000217(n+2)+3))` -/
def P11979908401151326159.Spec : Prop :=
  ∀ n, P11979908401151326159.a n = A326118 n

end A326118

/-! ## A326118.P7863429936851419546

`A000007(n+1)-(A338329(n)-∑[A338329(n)])`
-/

namespace A326118.P7863429936851419546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - (A338329 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326118.P7863429936851419546

namespace A326118

/-- `A000007(n+1)-(A338329(n)-∑[A338329(n)])` -/
def P7863429936851419546.Spec : Prop :=
  ∀ n, P7863429936851419546.a n = A326118 n

end A326118

/-! ## A326118.P10155314478596802482

`A015885(2*n+3)-(A338329(n)-∑[A338329(n)])`
-/

namespace A326118.P10155314478596802482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015885 (2 * n + 3) - (A338329 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326118.P10155314478596802482

namespace A326118

/-- `A015885(2*n+3)-(A338329(n)-∑[A338329(n)])` -/
def P10155314478596802482.Spec : Prop :=
  ∀ n, P10155314478596802482.a n = A326118 n

end A326118

/-! ## A326118.P935978006121511959

`A028310(∑[A338329(n)])-A338329(n)`
-/

namespace A326118.P935978006121511959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A338329 n

end

end A326118.P935978006121511959

namespace A326118

/-- `A028310(∑[A338329(n)])-A338329(n)` -/
def P935978006121511959.Spec : Prop :=
  ∀ n, P935978006121511959.a n = A326118 n

end A326118

/-!
# A326119: a(n) is the absolute value of the alternating sum of the first n increasing perfect powers (A001597): 1, 1-4, 1-4+8, 1-4+8-9, ...

The programs for A326119, there is no canonical definition to state claims against.
-/

/-! ## A326119.P8364222047415120234

`A053289(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A326119.P8364222047415120234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A053289 n + a (n - 2)

end

end A326119.P8364222047415120234

/-! ## A326119.P8166209745799511052

`A076412(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A326119.P8166209745799511052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A076412 n + a (n - 2)

end

end A326119.P8166209745799511052

/-! ## A326119.P3259893531340241242

`A001597(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A326119.P3259893531340241242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001597 (n + 1) - a (n - 1)

end

end A326119.P3259893531340241242

/-! ## A326119.P10881238101492113122

`A045542(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A326119.P10881238101492113122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045542 n + (1 - a (n - 1))

end

end A326119.P10881238101492113122

/-! ## A326119.P9370345878099008344

`abs(A157985(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A326119.P9370345878099008344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A157985 (n + 1)| - a (n - 1)

end

end A326119.P9370345878099008344

/-! ## A326119.P6816939043833635602

`sqrt(A340588(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A326119.P6816939043833635602
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.sqrt (A340588 (n + 1) : ℝ) - a (n - 1)

end

end A326119.P6816939043833635602

/-! ## A326119.P7414498826810608500

`abs(a(n-1)-A001597(n-log2(1/2)))` with `a(0)=1`
-/

namespace A326119.P7414498826810608500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - A001597 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat|

end

end A326119.P7414498826810608500

/-! ## A326119.P2028059499628084242

`abs(∑[A001597(n+1)*A033999(n)])`
-/

namespace A326119.P2028059499628084242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A326119.P2028059499628084242

/-! ## A326119.P5190310063236282475

`A076405(n+1)/A025478(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A326119.P5190310063236282475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A076405 (n + 1) : ℚ) / (A025478 (n + 1) : ℚ) - a (n - 1)

end

end A326119.P5190310063236282475

/-! ## A326119.P1499877115849000634

`lcm(A157985(n+1), A157987(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A326119.P1499877115849000634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (A157985 (n + 1)) (A157987 (n + 1)) : ℤ) - a (n - 1)

end

end A326119.P1499877115849000634

/-!
# A326121: Expansion of Sum_{k>=1} k^2 * x^(2*k) / (1 - k * x^k).

The programs for A326121, the canonical program `A326121.P12241620532846043604` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326121 has offset 1).

The definition of A326121 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055225, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326121.P12241620532846043604

`A055225(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A326121

/-- `A055225(n+1)-(n+1)` -/
def P12241620532846043604.Spec : Prop :=
  ∀ n, P12241620532846043604.a n = A326121 (n + 1)

theorem P12241620532846043604.correct : P12241620532846043604.Spec := by
  intro n
  simp only [A326121, Nat.add_sub_cancel]

end A326121

/-! ## A326121.P1923083331846186554

`∑{d}[n+1, #^ceil(n/#)]-(n+1)`
-/

namespace A326121.P1923083331846186554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (⌈(n : ℚ) / (d : ℚ)⌉ : ℤ) - (n + 1 : ℚ)

end

end A326121.P1923083331846186554

namespace A326121

/-- `∑{d}[n+1, #^ceil(n/#)]-(n+1)` -/
def P1923083331846186554.Spec : Prop :=
  ∀ n, P1923083331846186554.a n = (A326121 (n + 1) : ℚ)

end A326121

/-! ## A326121.P17778311617999119939

`∑{d}[n+1, (((n+1)/#)%(n+1))^#]`
-/

namespace A326121.P17778311617999119939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))) (n + 1 : ℤ) ^ d

end

end A326121.P17778311617999119939

namespace A326121

/-- `∑{d}[n+1, (((n+1)/#)%(n+1))^#]` -/
def P17778311617999119939.Spec : Prop :=
  ∀ n, P17778311617999119939.a n = A326121 (n + 1)

end A326121

/-! ## A326121.P498840139264399636

`floor(∑{d}[n+1, ((n+1)/#)^#])-(n+1)`
-/

namespace A326121.P498840139264399636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ d⌋ - (n + 1 : ℤ)

end

end A326121.P498840139264399636

namespace A326121

/-- `floor(∑{d}[n+1, ((n+1)/#)^#])-(n+1)` -/
def P498840139264399636.Spec : Prop :=
  ∀ n, P498840139264399636.a n = A326121 (n + 1)

end A326121

/-! ## A326121.P17690389484176842974

`round(∑{d}[n+1, ((n+1)/#)^#])-(n+1)`
-/

namespace A326121.P17690389484176842974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ d) - (n + 1 : ℤ)

end

end A326121.P17690389484176842974

namespace A326121

/-- `round(∑{d}[n+1, ((n+1)/#)^#])-(n+1)` -/
def P17690389484176842974.Spec : Prop :=
  ∀ n, P17690389484176842974.a n = A326121 (n + 1)

end A326121

/-! ## A326121.P10031394198646013641

`abs(A055225(n+1)+A001478(n+1))`
-/

namespace A326121.P10031394198646013641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055225 (n + 1) + A001478 (n + 1)|

end

end A326121.P10031394198646013641

namespace A326121

/-- `abs(A055225(n+1)+A001478(n+1))` -/
def P10031394198646013641.Spec : Prop :=
  ∀ n, P10031394198646013641.a n = A326121 (n + 1)

end A326121

/-! ## A326121.P15578706610581915118

`A308502(∑[n+1])-(n+1)`
-/

namespace A326121.P15578706610581915118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308502 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ)

end

end A326121.P15578706610581915118

namespace A326121

/-- `A308502(∑[n+1])-(n+1)` -/
def P15578706610581915118.Spec : Prop :=
  ∀ n, P15578706610581915118.a n = A326121 (n + 1)

end A326121

/-! ## A326121.P18325870687650726228

`A308690(∑[n+2])-(n+1)`
-/

namespace A326121.P18325870687650726228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308690 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ)

end

end A326121.P18325870687650726228

namespace A326121

/-- `A308690(∑[n+2])-(n+1)` -/
def P18325870687650726228.Spec : Prop :=
  ∀ n, P18325870687650726228.a n = A326121 (n + 1)

end A326121

/-!
# A326122: a(n) = 10 * sigma(n).

The programs for A326122, the canonical program `A326122.P5183926465066856116` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326122 has offset 1).

The definition of A326122 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*A000203(n+1)` (program `A326122.P5183926465066856116`, by `A326122.P5183926465066856116.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A326122.P14122226882151815248

`2*A274535(n+1)`
-/

namespace A326122.P14122226882151815248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274535 (n + 1)

end

end A326122.P14122226882151815248

namespace A326122

/-- `2*A274535(n+1)` -/
def P14122226882151815248.Spec : Prop :=
  ∀ n, P14122226882151815248.a n = A326122 (n + 1)

theorem P14122226882151815248.correct : P14122226882151815248.Spec := by
  intro n
  simp only [A326122, Nat.add_sub_cancel, A326122.P14122226882151815248.a, A326122.P5183926465066856116.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A274535, A274535.P4233430454223343819.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326122

/-! ## A326122.P7341652699114507681

`5*A074400(n+1)`
-/

namespace A326122.P7341652699114507681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A074400 (n + 1)

end

end A326122.P7341652699114507681

namespace A326122

/-- `5*A074400(n+1)` -/
def P7341652699114507681.Spec : Prop :=
  ∀ n, P7341652699114507681.a n = A326122 (n + 1)

theorem P7341652699114507681.correct : P7341652699114507681.Spec := by
  intro n
  simp only [A326122, Nat.add_sub_cancel, A326122.P7341652699114507681.a, A326122.P5183926465066856116.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326122

/-! ## A326122.P5183926465066856116

`10*A000203(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A326122

/-- `10*A000203(n+1)` -/
def P5183926465066856116.Spec : Prop :=
  ∀ n, P5183926465066856116.a n = A326122 (n + 1)

theorem P5183926465066856116.correct : P5183926465066856116.Spec := by
  intro n
  simp only [A326122, Nat.add_sub_cancel]

end A326122

/-! ## A326122.P766077308060623853

`A000203(n+1)+A325299(n+1)`
-/

namespace A326122.P766077308060623853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A325299 (n + 1)

end

end A326122.P766077308060623853

namespace A326122

/-- `A000203(n+1)+A325299(n+1)` -/
def P766077308060623853.Spec : Prop :=
  ∀ n, P766077308060623853.a n = A326122 (n + 1)

theorem P766077308060623853.correct : P766077308060623853.Spec := by
  intro n
  simp only [A326122, Nat.add_sub_cancel, A326122.P766077308060623853.a, A326122.P5183926465066856116.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A325299, A325299.P10354057562905532224.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326122

/-! ## A326122.P7880750344870526463

`A074400(n+1)+A319528(n+1)`
-/

namespace A326122.P7880750344870526463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) + A319528 (n + 1)

end

end A326122.P7880750344870526463

namespace A326122

/-- `A074400(n+1)+A319528(n+1)` -/
def P7880750344870526463.Spec : Prop :=
  ∀ n, P7880750344870526463.a n = A326122 (n + 1)

theorem P7880750344870526463.correct : P7880750344870526463.Spec := by
  intro n
  simp only [A326122, Nat.add_sub_cancel, A326122.P7880750344870526463.a, A326122.P5183926465066856116.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, A319528, A319528.P5610714732727847470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326122

/-! ## A326122.P17327110248766319472

`10*∑{d}[n+1, #]`
-/

namespace A326122.P17327110248766319472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (∑ d ∈ Nat.divisors (f1 n), d)

end

end A326122.P17327110248766319472

namespace A326122

/-- `10*∑{d}[n+1, #]` -/
def P17327110248766319472.Spec : Prop :=
  ∀ n, (P17327110248766319472.a n : ℤ) = A326122 (n + 1)

theorem P17327110248766319472.correct : P17327110248766319472.Spec := by
  intro n
  simp only [A326122, Nat.add_sub_cancel, A326122.P17327110248766319472.f1, A326122.P17327110248766319472.a, A326122.P5183926465066856116.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326122

/-! ## A326122.P9990911049617909421

`∑{d}[2*n-(n-1), 10*#]`
-/

namespace A326122.P9990911049617909421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, 10 * d

end

end A326122.P9990911049617909421

namespace A326122

/-- `∑{d}[2*n-(n-1), 10*#]` -/
def P9990911049617909421.Spec : Prop :=
  ∀ n, (P9990911049617909421.a n : ℤ) = A326122 (n + 1)

end A326122

/-! ## A326122.P10709718811552913121

`Δ[10*A160664(n)]`
-/

namespace A326122.P10709718811552913121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A326122.P10709718811552913121

namespace A326122

/-- `Δ[10*A160664(n)]` -/
def P10709718811552913121.Spec : Prop :=
  ∀ n, P10709718811552913121.a n = A326122 (n + 1)

end A326122

/-! ## A326122.P4127535687012390652

`5*(A002659(n+1)+1)`
-/

namespace A326122.P4127535687012390652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A002659 (n + 1) + 1)

end

end A326122.P4127535687012390652

namespace A326122

/-- `5*(A002659(n+1)+1)` -/
def P4127535687012390652.Spec : Prop :=
  ∀ n, P4127535687012390652.a n = A326122 (n + 1)

theorem P4127535687012390652.correct : P4127535687012390652.Spec := by
  intro n
  simp only [A326122, Nat.add_sub_cancel, A326122.P4127535687012390652.a, A326122.P5183926465066856116.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002659, A002659.P8948138163684764047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326122

/-! ## A326122.P1163201540554281803

`5*A326136(2*(n+1))`
-/

namespace A326122.P1163201540554281803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A326136 (2 * (n + 1))

end

end A326122.P1163201540554281803

namespace A326122

/-- `5*A326136(2*(n+1))` -/
def P1163201540554281803.Spec : Prop :=
  ∀ n, P1163201540554281803.a n = A326122 (n + 1)

end A326122

/-! ## A326122.P4821221316456739938

`5/2*A239050(n+1)`
-/

namespace A326122.P4821221316456739938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A239050 (n + 1) : ℚ)

end

end A326122.P4821221316456739938

namespace A326122

/-- `5/2*A239050(n+1)` -/
def P4821221316456739938.Spec : Prop :=
  ∀ n, P4821221316456739938.a n = (A326122 (n + 1) : ℚ)

theorem P4821221316456739938.correct : P4821221316456739938.Spec := by
  intro n
  simp only [A326122, Nat.add_sub_cancel, A326122.P4821221316456739938.a, A326122.P5183926465066856116.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A239050, A239050.P11778751463060976919.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326122

/-! ## A326122.P12751583301422961484

`(A039653(n+1)+1)*10`
-/

namespace A326122.P12751583301422961484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039653 (n + 1) + 1) * 10

end

end A326122.P12751583301422961484

namespace A326122

/-- `(A039653(n+1)+1)*10` -/
def P12751583301422961484.Spec : Prop :=
  ∀ n, P12751583301422961484.a n = A326122 (n + 1)

end A326122

/-! ## A326122.P7746427497832791967

`5/3*A274536(n+1)`
-/

namespace A326122.P7746427497832791967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * (A274536 (n + 1) : ℚ)

end

end A326122.P7746427497832791967

namespace A326122

/-- `5/3*A274536(n+1)` -/
def P7746427497832791967.Spec : Prop :=
  ∀ n, P7746427497832791967.a n = (A326122 (n + 1) : ℚ)

theorem P7746427497832791967.correct : P7746427497832791967.Spec := by
  intro n
  simp only [A326122, Nat.add_sub_cancel, A326122.P7746427497832791967.a, A326122.P5183926465066856116.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A274536, A274536.P12250643141026633019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326122

/-! ## A326122.P2658744637649887761

`5/4*A319528(n+1)`
-/

namespace A326122.P2658744637649887761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A319528 (n + 1) : ℚ)

end

end A326122.P2658744637649887761

namespace A326122

/-- `5/4*A319528(n+1)` -/
def P2658744637649887761.Spec : Prop :=
  ∀ n, P2658744637649887761.a n = (A326122 (n + 1) : ℚ)

theorem P2658744637649887761.correct : P2658744637649887761.Spec := by
  intro n
  simp only [A326122, Nat.add_sub_cancel, A326122.P2658744637649887761.a, A326122.P5183926465066856116.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A319528, A319528.P5610714732727847470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326122

/-! ## A326122.P12781111047601857402

`10*A064987(n+1)/(n+1)`
-/

namespace A326122.P12781111047601857402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 * ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A326122.P12781111047601857402

namespace A326122

/-- `10*A064987(n+1)/(n+1)` -/
def P12781111047601857402.Spec : Prop :=
  ∀ n, P12781111047601857402.a n = (A326122 (n + 1) : ℚ)

end A326122

/-! ## A326122.P4410048077809518774

`2*5*A000203(2*n-(n-1))`
-/

namespace A326122.P4410048077809518774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (5 * A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)

end

end A326122.P4410048077809518774

namespace A326122

/-- `2*5*A000203(2*n-(n-1))` -/
def P4410048077809518774.Spec : Prop :=
  ∀ n, P4410048077809518774.a n = A326122 (n + 1)

end A326122

/-! ## A326122.P6773710955700798697

`A274536(n+1)+A239050(n+1)`
-/

namespace A326122.P6773710955700798697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274536 (n + 1) + A239050 (n + 1)

end

end A326122.P6773710955700798697

namespace A326122

/-- `A274536(n+1)+A239050(n+1)` -/
def P6773710955700798697.Spec : Prop :=
  ∀ n, P6773710955700798697.a n = A326122 (n + 1)

theorem P6773710955700798697.correct : P6773710955700798697.Spec := by
  intro n
  simp only [A326122, Nat.add_sub_cancel, A326122.P6773710955700798697.a, A326122.P5183926465066856116.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A239050, A239050.P11778751463060976919.a, A274536, A274536.P12250643141026633019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326122

/-! ## A326122.P17503157460002645432

`A319527(n+1)+A272027(n+1)`
-/

namespace A326122.P17503157460002645432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319527 (n + 1) + A272027 (n + 1)

end

end A326122.P17503157460002645432

namespace A326122

/-- `A319527(n+1)+A272027(n+1)` -/
def P17503157460002645432.Spec : Prop :=
  ∀ n, P17503157460002645432.a n = A326122 (n + 1)

theorem P17503157460002645432.correct : P17503157460002645432.Spec := by
  intro n
  simp only [A326122, Nat.add_sub_cancel, A326122.P17503157460002645432.a, A326122.P5183926465066856116.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A272027, A272027.P17950759033993077215.a, A319527, A319527.P18010082604810730284.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326122

/-! ## A326122.P7371236996733464135

`lcm(A074400(n+1), A274535(n+1))`
-/

namespace A326122.P7371236996733464135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A074400 (n + 1)) (A274535 (n + 1))

end

end A326122.P7371236996733464135

namespace A326122

/-- `lcm(A074400(n+1), A274535(n+1))` -/
def P7371236996733464135.Spec : Prop :=
  ∀ n, (P7371236996733464135.a n : ℤ) = A326122 (n + 1)

end A326122

/-! ## A326122.P14899058851681934212

`A239050(n+1)+2*A272027(n+1)`
-/

namespace A326122.P14899058851681934212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239050 (n + 1) + 2 * A272027 (n + 1)

end

end A326122.P14899058851681934212

namespace A326122

/-- `A239050(n+1)+2*A272027(n+1)` -/
def P14899058851681934212.Spec : Prop :=
  ∀ n, P14899058851681934212.a n = A326122 (n + 1)

theorem P14899058851681934212.correct : P14899058851681934212.Spec := by
  intro n
  simp only [A326122, Nat.add_sub_cancel, A326122.P14899058851681934212.a, A326122.P5183926465066856116.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A239050, A239050.P11778751463060976919.a, A272027, A272027.P17950759033993077215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326122

/-!
# A326123: a(n) is the sum of all divisors of the first n odd numbers.

The programs for A326123, the canonical program `A326123.P11146969939913568628` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326123 has offset 1).

The definition of A326123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326123.P1081746951159777875

`A024916(2*(n+1))-A326124(n+1)`
-/

namespace A326123.P1081746951159777875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (2 * (n + 1)) - A326124 (n + 1)

end

end A326123.P1081746951159777875

namespace A326123

/-- `A024916(2*(n+1))-A326124(n+1)` -/
def P1081746951159777875.Spec : Prop :=
  ∀ n, P1081746951159777875.a n = A326123 (n + 1)

theorem P1081746951159777875.correct : P1081746951159777875.Spec := by
  intro n
  simp only [A326123, Nat.add_sub_cancel, A326123.P1081746951159777875.a, A326123.P11146969939913568628.f3, A326123.P11146969939913568628.f2, A326123.P11146969939913568628.f1, A326123.P11146969939913568628.a, A024916, A024916.P6070136297472608546.a, A326124, A326124.P12593225634204590298.a, A160664, A160664.P14996881624845338289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326123

/-! ## A326123.P11146969939913568628

`∑[∑{d}[Δ[n²], #]]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A326123

/-- `∑[∑{d}[Δ[n²], #]]` -/
def P11146969939913568628.Spec : Prop :=
  ∀ n, (P11146969939913568628.a n : ℤ) = A326123 (n + 1)

theorem P11146969939913568628.correct : P11146969939913568628.Spec := by
  intro n
  simp only [A326123, Nat.add_sub_cancel]

end A326123

/-! ## A326123.P3253608000054950771

`∑[2*∑{d}[2*n+1, #/2]]`
-/

namespace A326123.P3253608000054950771
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f2 n), (d : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326123.P3253608000054950771

namespace A326123

/-- `∑[2*∑{d}[2*n+1, #/2]]` -/
def P3253608000054950771.Spec : Prop :=
  ∀ n, P3253608000054950771.a n = (A326123 (n + 1) : ℚ)

end A326123

/-! ## A326123.P2742920195169920111

`∑{d}[2*n+1, #]+a(n-1)` with `a(0)=1`
-/

namespace A326123.P2742920195169920111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), d + a (n - 1)

end

end A326123.P2742920195169920111

namespace A326123

/-- `∑{d}[2*n+1, #]+a(n-1)` -/
def P2742920195169920111.Spec : Prop :=
  ∀ n, (P2742920195169920111.a n : ℤ) = A326123 (n + 1)

end A326123

/-! ## A326123.P12902500726152346832

`∑[∑{d}[2*n+1, #]+1]-(n+1)`
-/

namespace A326123.P12902500726152346832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A326123.P12902500726152346832

namespace A326123

/-- `∑[∑{d}[2*n+1, #]+1]-(n+1)` -/
def P12902500726152346832.Spec : Prop :=
  ∀ n, P12902500726152346832.a n = A326123 (n + 1)

end A326123

/-! ## A326123.P6511154063031778766

`∑[A008438(n)]`
-/

namespace A326123.P6511154063031778766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326123.P6511154063031778766

namespace A326123

/-- `∑[A008438(n)]` -/
def P6511154063031778766.Spec : Prop :=
  ∀ n, P6511154063031778766.a n = A326123 (n + 1)

end A326123

/-! ## A326123.P5238550248793487781

`∑[abs(A121613(n))]`
-/

namespace A326123.P5238550248793487781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121613 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326123.P5238550248793487781

namespace A326123

/-- `∑[abs(A121613(n))]` -/
def P5238550248793487781.Spec : Prop :=
  ∀ n, P5238550248793487781.a n = A326123 (n + 1)

end A326123

/-! ## A326123.P16618479031266350198

`∑[A005880(n)/2]`
-/

namespace A326123.P16618479031266350198
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005880 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326123.P16618479031266350198

namespace A326123

/-- `∑[A005880(n)/2]` -/
def P16618479031266350198.Spec : Prop :=
  ∀ n, P16618479031266350198.a n = (A326123 (n + 1) : ℚ)

end A326123

/-! ## A326123.P7255727355240796408

`∑[A000203(Δ[n²])]`
-/

namespace A326123.P7255727355240796408
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326123.P7255727355240796408

namespace A326123

/-- `∑[A000203(Δ[n²])]` -/
def P7255727355240796408.Spec : Prop :=
  ∀ n, P7255727355240796408.a n = A326123 (n + 1)

end A326123

/-! ## A326123.P17071257873580369641

`∑[A115607(2*n+1)]`
-/

namespace A326123.P17071257873580369641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115607 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326123.P17071257873580369641

namespace A326123

/-- `∑[A115607(2*n+1)]` -/
def P17071257873580369641.Spec : Prop :=
  ∀ n, P17071257873580369641.a n = A326123 (n + 1)

end A326123

/-! ## A326123.P7943419060847954851

`∑[A239052(n+1)/3]`
-/

namespace A326123.P7943419060847954851
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239052 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326123.P7943419060847954851

namespace A326123

/-- `∑[A239052(n+1)/3]` -/
def P7943419060847954851.Spec : Prop :=
  ∀ n, P7943419060847954851.a n = (A326123 (n + 1) : ℚ)

end A326123

/-! ## A326123.P5531054566581243548

`∑[A000203(4*n+2)]/3`
-/

namespace A326123.P5531054566581243548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (4 * n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A326123.P5531054566581243548

namespace A326123

/-- `∑[A000203(4*n+2)]/3` -/
def P5531054566581243548.Spec : Prop :=
  ∀ n, P5531054566581243548.a n = (A326123 (n + 1) : ℚ)

end A326123

/-! ## A326123.P17597529481437507826

`A347153(n+1)+(n+1)²`
-/

namespace A326123.P17597529481437507826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347153 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A326123.P17597529481437507826

namespace A326123

/-- `A347153(n+1)+(n+1)²` -/
def P17597529481437507826.Spec : Prop :=
  ∀ n, P17597529481437507826.a n = A326123 (n + 1)

theorem P17597529481437507826.correct : P17597529481437507826.Spec := by
  intro n
  simp only [A326123, Nat.add_sub_cancel, A326123.P17597529481437507826.a, A326123.P11146969939913568628.f3, A326123.P11146969939913568628.f2, A326123.P11146969939913568628.f1, A326123.P11146969939913568628.a, A347153, A347153.P34182887098669036.a, A346869, A346869.P11771609064873086218.f3, A346869.P11771609064873086218.f2, A346869.P11771609064873086218.f1, A346869.P11771609064873086218.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326123

/-! ## A326123.P18234018565181162543

`∑[∑{d}[A004277(n)+1, #]]-2`
-/

namespace A326123.P18234018565181162543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A326123.P18234018565181162543

namespace A326123

/-- `∑[∑{d}[A004277(n)+1, #]]-2` -/
def P18234018565181162543.Spec : Prop :=
  ∀ n, P18234018565181162543.a n = A326123 (n + 1)

end A326123

/-! ## A326123.P11787625676016528716

`∑[root(A000203(2*n+1), 2)²]`
-/

namespace A326123.P11787625676016528716
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000203 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326123.P11787625676016528716

namespace A326123

/-- `∑[root(A000203(2*n+1), 2)²]` -/
def P11787625676016528716.Spec : Prop :=
  ∀ n, P11787625676016528716.a n = (A326123 (n + 1) : ℝ)

end A326123

/-! ## A326123.P10897762289172916082

`∑[A000203(n+1+n)+1]-(n+1)`
-/

namespace A326123.P10897762289172916082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1 + n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A326123.P10897762289172916082

namespace A326123

/-- `∑[A000203(n+1+n)+1]-(n+1)` -/
def P10897762289172916082.Spec : Prop :=
  ∀ n, P10897762289172916082.a n = A326123 (n + 1)

end A326123

/-! ## A326123.P13283681069145210793

`A346869(n+1)+A028387(n)`
-/

namespace A326123.P13283681069145210793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346869 (n + 1) + A028387 n

end

end A326123.P13283681069145210793

namespace A326123

/-- `A346869(n+1)+A028387(n)` -/
def P13283681069145210793.Spec : Prop :=
  ∀ n, P13283681069145210793.a n = A326123 (n + 1)

theorem P13283681069145210793.correct : P13283681069145210793.Spec := by
  intro n
  simp only [A326123, Nat.add_sub_cancel, A326123.P13283681069145210793.a, A326123.P11146969939913568628.f3, A326123.P11146969939913568628.f2, A326123.P11146969939913568628.f1, A326123.P11146969939913568628.a, A028387, A028387.P5954590561330899546.a, A346869, A346869.P11771609064873086218.f3, A346869.P11771609064873086218.f2, A346869.P11771609064873086218.f1, A346869.P11771609064873086218.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326123

/-! ## A326123.P7649893074300619650

`A000217(n+1)+A347153(n+1)+A000217(n)`
-/

namespace A326123.P7649893074300619650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A347153 (n + 1) + A000217 n)

end

end A326123.P7649893074300619650

namespace A326123

/-- `A000217(n+1)+A347153(n+1)+A000217(n)` -/
def P7649893074300619650.Spec : Prop :=
  ∀ n, P7649893074300619650.a n = A326123 (n + 1)

theorem P7649893074300619650.correct : P7649893074300619650.Spec := by
  intro n
  simp only [A326123, Nat.add_sub_cancel, A326123.P7649893074300619650.a, A326123.P11146969939913568628.f3, A326123.P11146969939913568628.f2, A326123.P11146969939913568628.f1, A326123.P11146969939913568628.a, A000217, A000217.P10269402890581615239.a, A347153, A347153.P34182887098669036.a, A346869, A346869.P11771609064873086218.f3, A346869.P11771609064873086218.f2, A346869.P11771609064873086218.f1, A346869.P11771609064873086218.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A326123

/-! ## A326123.P454877538168347394

`∑[A069184(2*n+1)]`
-/

namespace A326123.P454877538168347394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069184 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326123.P454877538168347394

namespace A326123

/-- `∑[A069184(2*n+1)]` -/
def P454877538168347394.Spec : Prop :=
  ∀ n, P454877538168347394.a n = A326123 (n + 1)

end A326123

/-!
# A326124: a(n) is the sum of all divisors of the first n positive even numbers.

The programs for A326124, the canonical program `A326124.P12593225634204590298` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326124 has offset 1).

The definition of A326124 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326123, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326124.P12593225634204590298

`A024916(2*(n+1))-A326123(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A326124

/-- `A024916(2*(n+1))-A326123(n+1)` -/
def P12593225634204590298.Spec : Prop :=
  ∀ n, P12593225634204590298.a n = A326124 (n + 1)

theorem P12593225634204590298.correct : P12593225634204590298.Spec := by
  intro n
  simp only [A326124, Nat.add_sub_cancel]

end A326124

/-! ## A326124.P7749308829459669471

`∑[∑{d}[2*(n+1), #]]`
-/

namespace A326124.P7749308829459669471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326124.P7749308829459669471

namespace A326124

/-- `∑[∑{d}[2*(n+1), #]]` -/
def P7749308829459669471.Spec : Prop :=
  ∀ n, (P7749308829459669471.a n : ℤ) = A326124 (n + 1)

end A326124

/-! ## A326124.P11777306295975787771

`∑{d}[2*(n+1), #]+a(n-1)` with `a(0)=3`
-/

namespace A326124.P11777306295975787771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), d + a (n - 1)

end

end A326124.P11777306295975787771

namespace A326124

/-- `∑{d}[2*(n+1), #]+a(n-1)` -/
def P11777306295975787771.Spec : Prop :=
  ∀ n, (P11777306295975787771.a n : ℤ) = A326124 (n + 1)

end A326124

/-! ## A326124.P476372041967013601

`∑[A062731(n+1)]`
-/

namespace A326124.P476372041967013601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326124.P476372041967013601

namespace A326124

/-- `∑[A062731(n+1)]` -/
def P476372041967013601.Spec : Prop :=
  ∀ n, P476372041967013601.a n = A326124 (n + 1)

end A326124

/-! ## A326124.P16564249269329952347

`∑[A000203(2*(n+1))]`
-/

namespace A326124.P16564249269329952347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326124.P16564249269329952347

namespace A326124

/-- `∑[A000203(2*(n+1))]` -/
def P16564249269329952347.Spec : Prop :=
  ∀ n, P16564249269329952347.a n = A326124 (n + 1)

end A326124

/-! ## A326124.P8165681190577304426

`A000203(2*n+2)+a(n-1)` with `a(0)=3`
-/

namespace A326124.P8165681190577304426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000203 (2 * n + 2) + a (n - 1)

end

end A326124.P8165681190577304426

namespace A326124

/-- `A000203(2*n+2)+a(n-1)` -/
def P8165681190577304426.Spec : Prop :=
  ∀ n, P8165681190577304426.a n = A326124 (n + 1)

end A326124

/-! ## A326124.P17207795322440204646

`∑[A000203(n+2+n)+1]-(n+1)`
-/

namespace A326124.P17207795322440204646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2 + n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A326124.P17207795322440204646

namespace A326124

/-- `∑[A000203(n+2+n)+1]-(n+1)` -/
def P17207795322440204646.Spec : Prop :=
  ∀ n, P17207795322440204646.a n = A326124 (n + 1)

end A326124

/-! ## A326124.P1195471983909508286

`A327329(n+1)+A078471(n+1)`
-/

namespace A326124.P1195471983909508286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327329 (n + 1) + A078471 (n + 1)

end

end A326124.P1195471983909508286

namespace A326124

/-- `A327329(n+1)+A078471(n+1)` -/
def P1195471983909508286.Spec : Prop :=
  ∀ n, P1195471983909508286.a n = A326124 (n + 1)

end A326124

/-! ## A326124.P11804099752778466950

`A078471(n+1)+2*A024916(n+1)`
-/

namespace A326124.P11804099752778466950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078471 (n + 1) + 2 * A024916 (n + 1)

end

end A326124.P11804099752778466950

namespace A326124

/-- `A078471(n+1)+2*A024916(n+1)` -/
def P11804099752778466950.Spec : Prop :=
  ∀ n, P11804099752778466950.a n = A326124 (n + 1)

end A326124

/-! ## A326124.P10867204271637704563

`A024916(n+1)+2*A350146(n+1)`
-/

namespace A326124.P10867204271637704563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + 2 * A350146 (n + 1)

end

end A326124.P10867204271637704563

namespace A326124

/-- `A024916(n+1)+2*A350146(n+1)` -/
def P10867204271637704563.Spec : Prop :=
  ∀ n, P10867204271637704563.a n = A326124 (n + 1)

end A326124

/-! ## A326124.P3097176782058310891

`∑[A065608(2*(n+1))+A000005(2*(n+1))]`
-/

namespace A326124.P3097176782058310891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (2 * (n + 1)) + A000005 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326124.P3097176782058310891

namespace A326124

/-- `∑[A065608(2*(n+1))+A000005(2*(n+1))]` -/
def P3097176782058310891.Spec : Prop :=
  ∀ n, P3097176782058310891.a n = A326124 (n + 1)

end A326124

/-! ## A326124.P4155610998370016268

`A006218(n+1)+A222548(n+1)+A078471(n+1)`
-/

namespace A326124.P4155610998370016268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) + (A222548 (n + 1) + A078471 (n + 1))

end

end A326124.P4155610998370016268

namespace A326124

/-- `A006218(n+1)+A222548(n+1)+A078471(n+1)` -/
def P4155610998370016268.Spec : Prop :=
  ∀ n, P4155610998370016268.a n = A326124 (n + 1)

end A326124

/-! ## A326124.P9874250384449040137

`A000217(n+1)+A347154(n+1)+A000217(n+1)`
-/

namespace A326124.P9874250384449040137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A347154 (n + 1) + A000217 (n + 1))

end

end A326124.P9874250384449040137

namespace A326124

/-- `A000217(n+1)+A347154(n+1)+A000217(n+1)` -/
def P9874250384449040137.Spec : Prop :=
  ∀ n, P9874250384449040137.a n = A326124 (n + 1)

end A326124

/-! ## A326124.P17202426502085779376

`∑[A000203(n+1)+A000593(n+1)+A000203(n+1)]`
-/

namespace A326124.P17202426502085779376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A000593 (n + 1) + A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326124.P17202426502085779376

namespace A326124

/-- `∑[A000203(n+1)+A000593(n+1)+A000203(n+1)]` -/
def P17202426502085779376.Spec : Prop :=
  ∀ n, P17202426502085779376.a n = A326124 (n + 1)

end A326124

/-! ## A326124.P1214647966118299121

`∑[A074400(2*(n+1))/2]`
-/

namespace A326124.P1214647966118299121
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326124.P1214647966118299121

namespace A326124

/-- `∑[A074400(2*(n+1))/2]` -/
def P1214647966118299121.Spec : Prop :=
  ∀ n, P1214647966118299121.a n = (A326124 (n + 1) : ℚ)

end A326124

/-! ## A326124.P15156586925197677406

`∑[abs(A143348(2*(n+1)))]`
-/

namespace A326124.P15156586925197677406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (2 * (n + 1))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326124.P15156586925197677406

namespace A326124

/-- `∑[abs(A143348(2*(n+1)))]` -/
def P15156586925197677406.Spec : Prop :=
  ∀ n, P15156586925197677406.a n = A326124 (n + 1)

end A326124

/-! ## A326124.P1582995925086049581

`∑[sqrt(A072861(2*(n+1)))]`
-/

namespace A326124.P1582995925086049581
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (2 * (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326124.P1582995925086049581

namespace A326124

/-- `∑[sqrt(A072861(2*(n+1)))]` -/
def P1582995925086049581.Spec : Prop :=
  ∀ n, P1582995925086049581.a n = (A326124 (n + 1) : ℝ)

end A326124

/-! ## A326124.P5509101478039277827

`∑[A088580(2*(n+1))-1]`
-/

namespace A326124.P5509101478039277827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326124.P5509101478039277827

namespace A326124

/-- `∑[A088580(2*(n+1))-1]` -/
def P5509101478039277827.Spec : Prop :=
  ∀ n, P5509101478039277827.a n = A326124 (n + 1)

end A326124

/-! ## A326124.P17311789053350272767

`∑[sqrt(sqrt(A361179(2*(n+1))))]`
-/

namespace A326124.P17311789053350272767
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A361179 (2 * (n + 1)) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326124.P17311789053350272767

namespace A326124

/-- `∑[sqrt(sqrt(A361179(2*(n+1))))]` -/
def P17311789053350272767.Spec : Prop :=
  ∀ n, P17311789053350272767.a n = (A326124 (n + 1) : ℝ)

end A326124

/-! ## A326124.P3816957587922295010

`A271342(2*(n+1))+A078471(n+1)`
-/

namespace A326124.P3816957587922295010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271342 (2 * (n + 1)) + A078471 (n + 1)

end

end A326124.P3816957587922295010

namespace A326124

/-- `A271342(2*(n+1))+A078471(n+1)` -/
def P3816957587922295010.Spec : Prop :=
  ∀ n, P3816957587922295010.a n = A326124 (n + 1)

end A326124

/-!
# A326125: Expansion of Sum_{k>=1} k^2 * x^k / (1 + x^k)^2.

The programs for A326125, the canonical program `A326125.P14524333776348103302` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326125 has offset 1).

The definition of A326125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326125.P14524333776348103302

`(n+1)*A000593(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A326125

/-- `(n+1)*A000593(n+1)` -/
def P14524333776348103302.Spec : Prop :=
  ∀ n, P14524333776348103302.a n = A326125 (n + 1)

theorem P14524333776348103302.correct : P14524333776348103302.Spec := by
  intro n
  simp only [A326125, Nat.add_sub_cancel]

end A326125

/-! ## A326125.P8070400290450553224

`∑{d}[n+1, (n+1)*#*#%2]`
-/

namespace A326125.P8070400290450553224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1) * (d * (d % 2))

end

end A326125.P8070400290450553224

namespace A326125

/-- `∑{d}[n+1, (n+1)*#*#%2]` -/
def P8070400290450553224.Spec : Prop :=
  ∀ n, (P8070400290450553224.a n : ℤ) = A326125 (n + 1)

end A326125

/-! ## A326125.P8445826866167544876

`∑{d}[n+1, (n+1)*(lcm(2, #)-#)]`
-/

namespace A326125.P8445826866167544876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℤ) * ((Nat.lcm 2 d : ℤ) - (d : ℤ))

end

end A326125.P8445826866167544876

namespace A326125

/-- `∑{d}[n+1, (n+1)*(lcm(2, #)-#)]` -/
def P8445826866167544876.Spec : Prop :=
  ∀ n, P8445826866167544876.a n = A326125 (n + 1)

end A326125

/-! ## A326125.P3794732378054908314

`∑{d}[n+1, (n+1)*#*and(1, #)]`
-/

namespace A326125.P3794732378054908314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1) * (d * Nat.land 1 d)

end

end A326125.P3794732378054908314

namespace A326125

/-- `∑{d}[n+1, (n+1)*#*and(1, #)]` -/
def P3794732378054908314.Spec : Prop :=
  ∀ n, (P3794732378054908314.a n : ℤ) = A326125 (n + 1)

end A326125

/-! ## A326125.P4746081125644433288

`(n+1)*∑{d}[n+1, #]/xor(n, n+1)`
-/

namespace A326125.P4746081125644433288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ))

end

end A326125.P4746081125644433288

namespace A326125

/-- `(n+1)*∑{d}[n+1, #]/xor(n, n+1)` -/
def P4746081125644433288.Spec : Prop :=
  ∀ n, P4746081125644433288.a n = (A326125 (n + 1) : ℚ)

end A326125

/-! ## A326125.P8796447348970498500

`abs((n+1)*A115607(n+1))`
-/

namespace A326125.P8796447348970498500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A115607 (n + 1)|

end

end A326125.P8796447348970498500

namespace A326125

/-- `abs((n+1)*A115607(n+1))` -/
def P8796447348970498500.Spec : Prop :=
  ∀ n, P8796447348970498500.a n = A326125 (n + 1)

end A326125

/-! ## A326125.P1237401478527186531

`(n+1)*(A326990(n+1)+1)`
-/

namespace A326125.P1237401478527186531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A326990 (n + 1) + 1)

end

end A326125.P1237401478527186531

namespace A326125

/-- `(n+1)*(A326990(n+1)+1)` -/
def P1237401478527186531.Spec : Prop :=
  ∀ n, P1237401478527186531.a n = A326125 (n + 1)

theorem P1237401478527186531.correct : P1237401478527186531.Spec := by
  intro n
  simp only [A326125, Nat.add_sub_cancel, A326125.P1237401478527186531.a, A326125.P14524333776348103302.a, A000593, A000593.P13640346029616979906.a, A326990, A326990.P6670757131686068120.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326125

/-! ## A326125.P7878462726573955077

`(n+1)*∑{d}[A166466(n+1)/3, #]`
-/

namespace A326125.P7878462726573955077
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166466 (n + 1) : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d)

end

end A326125.P7878462726573955077

namespace A326125

/-- `(n+1)*∑{d}[A166466(n+1)/3, #]` -/
def P7878462726573955077.Spec : Prop :=
  ∀ n, (P7878462726573955077.a n : ℤ) = A326125 (n + 1)

end A326125

/-! ## A326125.P12703607449409149024

`(n+1)*A000203(n+1)/xor(n, n+1)`
-/

namespace A326125.P12703607449409149024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A000203 (n + 1) : ℚ) / (Nat.xor n (n + 1) : ℚ))

end

end A326125.P12703607449409149024

namespace A326125

/-- `(n+1)*A000203(n+1)/xor(n, n+1)` -/
def P12703607449409149024.Spec : Prop :=
  ∀ n, P12703607449409149024.a n = (A326125 (n + 1) : ℚ)

end A326125

/-! ## A326125.P14297115209065851320

`(n+1)*A000203((n+1)/and(n+1, -(n+1)))`
-/

namespace A326125.P14297115209065851320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A326125.P14297115209065851320

namespace A326125

/-- `(n+1)*A000203((n+1)/and(n+1, -(n+1)))` -/
def P14297115209065851320.Spec : Prop :=
  ∀ n, P14297115209065851320.a n = A326125 (n + 1)

end A326125

/-! ## A326125.P3859976411914783679

`(n+1)*A008438(A025480(n))`
-/

namespace A326125.P3859976411914783679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008438 (A025480 n).toNat

end

end A326125.P3859976411914783679

namespace A326125

/-- `(n+1)*A008438(A025480(n))` -/
def P3859976411914783679.Spec : Prop :=
  ∀ n, P3859976411914783679.a n = A326125 (n + 1)

end A326125

/-! ## A326125.P4530135015628832119

`A185152(n+1)/A010684(n)`
-/

namespace A326125.P4530135015628832119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185152 (n + 1) : ℚ) / (A010684 n : ℚ)

end

end A326125.P4530135015628832119

namespace A326125

/-- `A185152(n+1)/A010684(n)` -/
def P4530135015628832119.Spec : Prop :=
  ∀ n, P4530135015628832119.a n = (A326125 (n + 1) : ℚ)

end A326125

/-! ## A326125.P2181322209863614835

`(n+1)*A000203(A000265(n+1))`
-/

namespace A326125.P2181322209863614835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000203 (A000265 (n + 1)).toNat

end

end A326125.P2181322209863614835

namespace A326125

/-- `(n+1)*A000203(A000265(n+1))` -/
def P2181322209863614835.Spec : Prop :=
  ∀ n, P2181322209863614835.a n = A326125 (n + 1)

end A326125

/-! ## A326125.P9640459671715156964

`A000265(n+1)*A002131(n+1)`
-/

namespace A326125.P9640459671715156964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A002131 (n + 1)

end

end A326125.P9640459671715156964

namespace A326125

/-- `A000265(n+1)*A002131(n+1)` -/
def P9640459671715156964.Spec : Prop :=
  ∀ n, P9640459671715156964.a n = A326125 (n + 1)

end A326125

/-! ## A326125.P7599680123511230072

`(n+1)*A003973(A064989(n+1))`
-/

namespace A326125.P7599680123511230072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003973 (A064989 (n + 1)).toNat

end

end A326125.P7599680123511230072

namespace A326125

/-- `(n+1)*A003973(A064989(n+1))` -/
def P7599680123511230072.Spec : Prop :=
  ∀ n, P7599680123511230072.a n = A326125 (n + 1)

end A326125

/-! ## A326125.P1264615788017268881

`(n+1)*A000203(A153733(n)+1)`
-/

namespace A326125.P1264615788017268881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000203 (A153733 n + 1).toNat

end

end A326125.P1264615788017268881

namespace A326125

/-- `(n+1)*A000203(A153733(n)+1)` -/
def P1264615788017268881.Spec : Prop :=
  ∀ n, P1264615788017268881.a n = A326125 (n + 1)

end A326125

/-! ## A326125.P13338801078360057411

`(A153733(n)+1)*A002131(n+1)`
-/

namespace A326125.P13338801078360057411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A153733 n + 1) * A002131 (n + 1)

end

end A326125.P13338801078360057411

namespace A326125

/-- `(A153733(n)+1)*A002131(n+1)` -/
def P13338801078360057411.Spec : Prop :=
  ∀ n, P13338801078360057411.a n = A326125 (n + 1)

end A326125

/-! ## A326125.P260240076992820694

`A121443(n+1)*A327625(n+1)`
-/

namespace A326125.P260240076992820694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121443 (n + 1) * A327625 (n + 1)

end

end A326125.P260240076992820694

namespace A326125

/-- `A121443(n+1)*A327625(n+1)` -/
def P260240076992820694.Spec : Prop :=
  ∀ n, P260240076992820694.a n = A326125 (n + 1)

end A326125

/-! ## A326125.P9311519039752856116

`(n+1)*A354089(A348747(n+1))`
-/

namespace A326125.P9311519039752856116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A354089 (A348747 (n + 1)).toNat

end

end A326125.P9311519039752856116

namespace A326125

/-- `(n+1)*A354089(A348747(n+1))` -/
def P9311519039752856116.Spec : Prop :=
  ∀ n, P9311519039752856116.a n = A326125 (n + 1)

end A326125

/-! ## A326125.P12900759745653866612

`(n+1)*A354093(A354092(n+1))`
-/

namespace A326125.P12900759745653866612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A354093 (A354092 (n + 1)).toNat

end

end A326125.P12900759745653866612

namespace A326125

/-- `(n+1)*A354093(A354092(n+1))` -/
def P12900759745653866612.Spec : Prop :=
  ∀ n, P12900759745653866612.a n = A326125 (n + 1)

end A326125

/-!
# A326126: Sum of all other divisors of n except the squarefree part of n: a(n) = sigma(n) - A007913(n).

The programs for A326126, the canonical program `A326126.P126110095243043684` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326126 has offset 1).

The definition of A326126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326126.P126110095243043684

`A000203(n+1)-A007913(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A326126

/-- `A000203(n+1)-A007913(n+1)` -/
def P126110095243043684.Spec : Prop :=
  ∀ n, P126110095243043684.a n = A326126 (n + 1)

theorem P126110095243043684.correct : P126110095243043684.Spec := by
  intro n
  simp only [A326126, Nat.add_sub_cancel]

end A326126

/-! ## A326126.P7262042584638713867

`A326127(n+1)+1+n`
-/

namespace A326126.P7262042584638713867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326127 (n + 1) + 1 + (n : ℤ)

end

end A326126.P7262042584638713867

namespace A326126

/-- `A326127(n+1)+1+n` -/
def P7262042584638713867.Spec : Prop :=
  ∀ n, P7262042584638713867.a n = A326126 (n + 1)

theorem P7262042584638713867.correct : P7262042584638713867.Spec := by
  intro n
  simp only [A326126, Nat.add_sub_cancel, A326126.P7262042584638713867.a, A326126.P126110095243043684.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P8131970495124731496.a, A326127, A326127.P6827603046472699184.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326126

/-! ## A326126.P16206592248056908437

`A000203(n+1)-Δ[A069891(n)]`
-/

namespace A326126.P16206592248056908437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (f1 (n + 1) - f1 n)

end

end A326126.P16206592248056908437

namespace A326126

/-- `A000203(n+1)-Δ[A069891(n)]` -/
def P16206592248056908437.Spec : Prop :=
  ∀ n, P16206592248056908437.a n = A326126 (n + 1)

end A326126

/-! ## A326126.P16435366399394887306

`Δ[A160664(n)]-A007913(n+1)`
-/

namespace A326126.P16435366399394887306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007913 (n + 1)

end

end A326126.P16435366399394887306

namespace A326126

/-- `Δ[A160664(n)]-A007913(n+1)` -/
def P16435366399394887306.Spec : Prop :=
  ∀ n, P16435366399394887306.a n = A326126 (n + 1)

end A326126

/-! ## A326126.P11211721361034242833

`A326128(n+1)+A001065(n+1)`
-/

namespace A326126.P11211721361034242833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (n + 1) + A001065 (n + 1)

end

end A326126.P11211721361034242833

namespace A326126

/-- `A326128(n+1)+A001065(n+1)` -/
def P11211721361034242833.Spec : Prop :=
  ∀ n, P11211721361034242833.a n = A326126 (n + 1)

theorem P11211721361034242833.correct : P11211721361034242833.Spec := by
  intro n
  simp only [A326126, Nat.add_sub_cancel, A326126.P11211721361034242833.a, A326126.P126110095243043684.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A007913, A007913.P8131970495124731496.a, A326128, A326128.P4962900157914824511.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326126

/-! ## A326126.P16496116197994746428

`abs(Δ[A330725(n)])-A007913(n+1)`
-/

namespace A326126.P16496116197994746428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A007913 (n + 1)

end

end A326126.P16496116197994746428

namespace A326126

/-- `abs(Δ[A330725(n)])-A007913(n+1)` -/
def P16496116197994746428.Spec : Prop :=
  ∀ n, P16496116197994746428.a n = A326126 (n + 1)

end A326126

/-! ## A326126.P4827273987296249117

`A245092(Δ[n²])-A007913(n+1)`
-/

namespace A326126.P4827273987296249117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A007913 (n + 1)

end

end A326126.P4827273987296249117

namespace A326126

/-- `A245092(Δ[n²])-A007913(n+1)` -/
def P4827273987296249117.Spec : Prop :=
  ∀ n, P4827273987296249117.a n = A326126 (n + 1)

end A326126

/-! ## A326126.P11309373890526997191

`abs(A143348(n+1))-A007913(n+1)`
-/

namespace A326126.P11309373890526997191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| - A007913 (n + 1)

end

end A326126.P11309373890526997191

namespace A326126

/-- `abs(A143348(n+1))-A007913(n+1)` -/
def P11309373890526997191.Spec : Prop :=
  ∀ n, P11309373890526997191.a n = A326126 (n + 1)

end A326126

/-! ## A326126.P14656267673842842266

`A000203(n+1)-sqrt(A055491(n+1))`
-/

namespace A326126.P14656267673842842266
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℝ) - Real.sqrt (A055491 (n + 1) : ℝ)

end

end A326126.P14656267673842842266

namespace A326126

/-- `A000203(n+1)-sqrt(A055491(n+1))` -/
def P14656267673842842266.Spec : Prop :=
  ∀ n, P14656267673842842266.a n = (A326126 (n + 1) : ℝ)

end A326126

/-! ## A326126.P12405847024139617540

`A088580(n+1)-(A007913(n+1)+1)`
-/

namespace A326126.P12405847024139617540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A007913 (n + 1) + 1)

end

end A326126.P12405847024139617540

namespace A326126

/-- `A088580(n+1)-(A007913(n+1)+1)` -/
def P12405847024139617540.Spec : Prop :=
  ∀ n, P12405847024139617540.a n = A326126 (n + 1)

theorem P12405847024139617540.correct : P12405847024139617540.Spec := by
  intro n
  simp only [A326126, Nat.add_sub_cancel, A326126.P12405847024139617540.a, A326126.P126110095243043684.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P8131970495124731496.a, A088580, A088580.P3089093194242277422.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326126

/-! ## A326126.P1848946892178225136

`A237588(n+1)+A326128(n+1)+n`
-/

namespace A326126.P1848946892178225136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + (A326128 (n + 1) + (n : ℤ))

end

end A326126.P1848946892178225136

namespace A326126

/-- `A237588(n+1)+A326128(n+1)+n` -/
def P1848946892178225136.Spec : Prop :=
  ∀ n, P1848946892178225136.a n = A326126 (n + 1)

theorem P1848946892178225136.correct : P1848946892178225136.Spec := by
  intro n
  simp only [A326126, Nat.add_sub_cancel, A326126.P1848946892178225136.a, A326126.P126110095243043684.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P8131970495124731496.a, A237588, A237588.P10590847318200798620.a, A326128, A326128.P4962900157914824511.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326126

/-! ## A326126.P3371052411578947257

`ceil(A002659(n+1)/2-A007913(n+1))`
-/

namespace A326126.P3371052411578947257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002659 (n + 1) : ℚ) / 2 - (A007913 (n + 1) : ℚ)⌉

end

end A326126.P3371052411578947257

namespace A326126

/-- `ceil(A002659(n+1)/2-A007913(n+1))` -/
def P3371052411578947257.Spec : Prop :=
  ∀ n, P3371052411578947257.a n = A326126 (n + 1)

end A326126

/-! ## A326126.P18244228426582079695

`A001065(n+1)-A007913(n+1)+n+1`
-/

namespace A326126.P18244228426582079695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A007913 (n + 1) + (n + 1 : ℤ)

end

end A326126.P18244228426582079695

namespace A326126

/-- `A001065(n+1)-A007913(n+1)+n+1` -/
def P18244228426582079695.Spec : Prop :=
  ∀ n, P18244228426582079695.a n = A326126 (n + 1)

theorem P18244228426582079695.correct : P18244228426582079695.Spec := by
  intro n
  simp only [A326126, Nat.add_sub_cancel, A326126.P18244228426582079695.a, A326126.P126110095243043684.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A007913, A007913.P8131970495124731496.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326126

/-! ## A326126.P17809441496357196607

`A326128(n+1)+A000203(n+1)-(n+1)`
-/

namespace A326126.P17809441496357196607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (n + 1) + (A000203 (n + 1) - (n + 1 : ℤ))

end

end A326126.P17809441496357196607

namespace A326126

/-- `A326128(n+1)+A000203(n+1)-(n+1)` -/
def P17809441496357196607.Spec : Prop :=
  ∀ n, P17809441496357196607.a n = A326126 (n + 1)

theorem P17809441496357196607.correct : P17809441496357196607.Spec := by
  intro n
  simp only [A326126, Nat.add_sub_cancel, A326126.P17809441496357196607.a, A326126.P126110095243043684.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P8131970495124731496.a, A326128, A326128.P4962900157914824511.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326126

/-! ## A326126.P7613926871499397982

`A000010(n+1)+A051612(n+1)-A007913(n+1)`
-/

namespace A326126.P7613926871499397982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A051612 (n + 1) - A007913 (n + 1))

end

end A326126.P7613926871499397982

namespace A326126

/-- `A000010(n+1)+A051612(n+1)-A007913(n+1)` -/
def P7613926871499397982.Spec : Prop :=
  ∀ n, P7613926871499397982.a n = A326126 (n + 1)

theorem P7613926871499397982.correct : P7613926871499397982.Spec := by
  intro n
  simp only [A326126, Nat.add_sub_cancel, A326126.P7613926871499397982.a, A326126.P126110095243043684.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P8131970495124731496.a, A051612, A051612.P4135239823752248514.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A326126

/-! ## A326126.P9899948302374318540

`A007947(n+1)+A326142(n+1)-A007913(n+1)`
-/

namespace A326126.P9899948302374318540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + (A326142 (n + 1) - A007913 (n + 1))

end

end A326126.P9899948302374318540

namespace A326126

/-- `A007947(n+1)+A326142(n+1)-A007913(n+1)` -/
def P9899948302374318540.Spec : Prop :=
  ∀ n, P9899948302374318540.a n = A326126 (n + 1)

theorem P9899948302374318540.correct : P9899948302374318540.Spec := by
  intro n
  simp only [A326126, Nat.add_sub_cancel, A326126.P9899948302374318540.a, A326126.P126110095243043684.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P8131970495124731496.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326142, A326142.P15415912859726343761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326126

/-! ## A326126.P2343094103887171067

`A008833(n+1)+A326053(n+1)-A007913(n+1)`
-/

namespace A326126.P2343094103887171067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) + (A326053 (n + 1) - A007913 (n + 1))

end

end A326126.P2343094103887171067

namespace A326126

/-- `A008833(n+1)+A326053(n+1)-A007913(n+1)` -/
def P2343094103887171067.Spec : Prop :=
  ∀ n, P2343094103887171067.a n = A326126 (n + 1)

theorem P2343094103887171067.correct : P2343094103887171067.Spec := by
  intro n
  simp only [A326126, Nat.add_sub_cancel, A326126.P2343094103887171067.a, A326126.P126110095243043684.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P8131970495124731496.a, A008833, A008833.P18388074464065390543.a, A326053, A326053.P16383788461503311404.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326126

/-! ## A326126.P4063852234885538295

`A326039(n+1)+A326040(n+1)-A007913(n+1)`
-/

namespace A326126.P4063852234885538295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326039 (n + 1) + (A326040 (n + 1) - A007913 (n + 1))

end

end A326126.P4063852234885538295

namespace A326126

/-- `A326039(n+1)+A326040(n+1)-A007913(n+1)` -/
def P4063852234885538295.Spec : Prop :=
  ∀ n, P4063852234885538295.a n = A326126 (n + 1)

theorem P4063852234885538295.correct : P4063852234885538295.Spec := by
  intro n
  simp only [A326126, Nat.add_sub_cancel, A326126.P4063852234885538295.a, A326126.P126110095243043684.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P8131970495124731496.a, A326039, A326039.P7430383325439106472.a, A326040, A326040.P7505067728848820017.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008833, A008833.P18388074464065390543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326126

/-! ## A326126.P14306179162311315858

`A000203(n+1)+A355929(n+1)-A355928(n+1)`
-/

namespace A326126.P14306179162311315858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A355929 (n + 1) - A355928 (n + 1))

end

end A326126.P14306179162311315858

namespace A326126

/-- `A000203(n+1)+A355929(n+1)-A355928(n+1)` -/
def P14306179162311315858.Spec : Prop :=
  ∀ n, P14306179162311315858.a n = A326126 (n + 1)

theorem P14306179162311315858.correct : P14306179162311315858.Spec := by
  intro n
  simp only [A326126, Nat.add_sub_cancel, A326126.P14306179162311315858.a, A326126.P126110095243043684.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P8131970495124731496.a, A355928, A355928.P5459121208310250653.a, A355929, A355929.P18162260943095803448.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326126

/-! ## A326126.P15336332252939255116

`A001065(n+1)+A388978(n+1)/A389077(n+1)`
-/

namespace A326126.P15336332252939255116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) : ℚ) + (A388978 (n + 1) : ℚ) / (A389077 (n + 1) : ℚ)

end

end A326126.P15336332252939255116

namespace A326126

/-- `A001065(n+1)+A388978(n+1)/A389077(n+1)` -/
def P15336332252939255116.Spec : Prop :=
  ∀ n, P15336332252939255116.a n = (A326126 (n + 1) : ℚ)

end A326126

/-!
# A326127: a(n) = A326126(n) - n, where A326126 gives the sum of all other divisors of n except the squarefree part of n.

The programs for A326127, the canonical program `A326127.P6827603046472699184` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326127 has offset 1).

The definition of A326127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326127.P6827603046472699184

`A326126(n+1)-(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A326127

/-- `A326126(n+1)-(n+1)` -/
def P6827603046472699184.Spec : Prop :=
  ∀ n, P6827603046472699184.a n = A326127 (n + 1)

theorem P6827603046472699184.correct : P6827603046472699184.Spec := by
  intro n
  simp only [A326127, Nat.add_sub_cancel]

end A326127

/-! ## A326127.P11861447507131615476

`A001065(n+1)-A007913(n+1)`
-/

namespace A326127.P11861447507131615476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A007913 (n + 1)

end

end A326127.P11861447507131615476

namespace A326127

/-- `A001065(n+1)-A007913(n+1)` -/
def P11861447507131615476.Spec : Prop :=
  ∀ n, P11861447507131615476.a n = A326127 (n + 1)

theorem P11861447507131615476.correct : P11861447507131615476.Spec := by
  intro n
  simp only [A326127, Nat.add_sub_cancel, A326127.P11861447507131615476.a, A326127.P6827603046472699184.a, A001065, A001065.P4097147489331274860.a, A007913, A007913.P8131970495124731496.a, A326126, A326126.P126110095243043684.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326127

/-! ## A326127.P18344342812207184732

`A326128(n+1)-A033879(n+1)`
-/

namespace A326127.P18344342812207184732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (n + 1) - A033879 (n + 1)

end

end A326127.P18344342812207184732

namespace A326127

/-- `A326128(n+1)-A033879(n+1)` -/
def P18344342812207184732.Spec : Prop :=
  ∀ n, P18344342812207184732.a n = A326127 (n + 1)

theorem P18344342812207184732.correct : P18344342812207184732.Spec := by
  intro n
  simp only [A326127, Nat.add_sub_cancel, A326127.P18344342812207184732.a, A326127.P6827603046472699184.a, A033879, A033879.P11735613842914743111.a, A326126, A326126.P126110095243043684.a, A326128, A326128.P4962900157914824511.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P8131970495124731496.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326127

/-! ## A326127.P4888123541245663478

`A000203(n+1)-A007913(n+1)-(n+1)`
-/

namespace A326127.P4888123541245663478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A007913 (n + 1) - (n + 1 : ℤ)

end

end A326127.P4888123541245663478

namespace A326127

/-- `A000203(n+1)-A007913(n+1)-(n+1)` -/
def P4888123541245663478.Spec : Prop :=
  ∀ n, P4888123541245663478.a n = A326127 (n + 1)

end A326127

/-! ## A326127.P1116756797700194347

`A001065(n+1)-Δ[A069891(n)]`
-/

namespace A326127.P1116756797700194347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - (f1 (n + 1) - f1 n)

end

end A326127.P1116756797700194347

namespace A326127

/-- `A001065(n+1)-Δ[A069891(n)]` -/
def P1116756797700194347.Spec : Prop :=
  ∀ n, P1116756797700194347.a n = A326127 (n + 1)

end A326127

/-! ## A326127.P10388290951800969004

`A326128(n+1)+A033880(n+1)`
-/

namespace A326127.P10388290951800969004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (n + 1) + A033880 (n + 1)

end

end A326127.P10388290951800969004

namespace A326127

/-- `A326128(n+1)+A033880(n+1)` -/
def P10388290951800969004.Spec : Prop :=
  ∀ n, P10388290951800969004.a n = A326127 (n + 1)

theorem P10388290951800969004.correct : P10388290951800969004.Spec := by
  intro n
  simp only [A326127, Nat.add_sub_cancel, A326127.P10388290951800969004.a, A326127.P6827603046472699184.a, A033880, A033880.P6005875780263802708.a, A326126, A326126.P126110095243043684.a, A326128, A326128.P4962900157914824511.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A007913, A007913.P8131970495124731496.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326127

/-! ## A326127.P2650764288332384885

`A326129(n+1)*A388992(n+1)`
-/

namespace A326127.P2650764288332384885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326129 (n + 1) * A388992 (n + 1)

end

end A326127.P2650764288332384885

namespace A326127

/-- `A326129(n+1)*A388992(n+1)` -/
def P2650764288332384885.Spec : Prop :=
  ∀ n, P2650764288332384885.a n = A326127 (n + 1)

end A326127

/-! ## A326127.P15131997352479664961

`A237588(n+1)+A326128(n+1)-1`
-/

namespace A326127.P15131997352479664961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + (A326128 (n + 1) - 1)

end

end A326127.P15131997352479664961

namespace A326127

/-- `A237588(n+1)+A326128(n+1)-1` -/
def P15131997352479664961.Spec : Prop :=
  ∀ n, P15131997352479664961.a n = A326127 (n + 1)

theorem P15131997352479664961.correct : P15131997352479664961.Spec := by
  intro n
  simp only [A326127, Nat.add_sub_cancel, A326127.P15131997352479664961.a, A326127.P6827603046472699184.a, A237588, A237588.P10590847318200798620.a, A326126, A326126.P126110095243043684.a, A326128, A326128.P4962900157914824511.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P8131970495124731496.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326127

/-! ## A326127.P7678453458142954283

`A326128(n+1)-(n+1-A001065(n+1))`
-/

namespace A326127.P7678453458142954283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (n + 1) - ((n + 1 : ℤ) - A001065 (n + 1))

end

end A326127.P7678453458142954283

namespace A326127

/-- `A326128(n+1)-(n+1-A001065(n+1))` -/
def P7678453458142954283.Spec : Prop :=
  ∀ n, P7678453458142954283.a n = A326127 (n + 1)

theorem P7678453458142954283.correct : P7678453458142954283.Spec := by
  intro n
  simp only [A326127, Nat.add_sub_cancel, A326127.P7678453458142954283.a, A326127.P6827603046472699184.a, A001065, A001065.P4097147489331274860.a, A326126, A326126.P126110095243043684.a, A326128, A326128.P4962900157914824511.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P8131970495124731496.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326127

/-! ## A326127.P17428009827402219474

`A326128(n+1)+A000203(n+1)-2*(n+1)`
-/

namespace A326127.P17428009827402219474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (n + 1) + (A000203 (n + 1) - (2 * (n + 1) : ℤ))

end

end A326127.P17428009827402219474

namespace A326127

/-- `A326128(n+1)+A000203(n+1)-2*(n+1)` -/
def P17428009827402219474.Spec : Prop :=
  ∀ n, P17428009827402219474.a n = A326127 (n + 1)

theorem P17428009827402219474.correct : P17428009827402219474.Spec := by
  intro n
  simp only [A326127, Nat.add_sub_cancel, A326127.P17428009827402219474.a, A326127.P6827603046472699184.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A326126, A326126.P126110095243043684.a, A326128, A326128.P4962900157914824511.a, A007913, A007913.P8131970495124731496.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326127

/-! ## A326127.P15632194195787699505

`A326128(n+1)-(A004277(n+1)-∑{d}[n+1, #])`
-/

namespace A326127.P15632194195787699505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (n + 1) - (A004277 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ))

end

end A326127.P15632194195787699505

namespace A326127

/-- `A326128(n+1)-(A004277(n+1)-∑{d}[n+1, #])` -/
def P15632194195787699505.Spec : Prop :=
  ∀ n, P15632194195787699505.a n = A326127 (n + 1)

theorem P15632194195787699505.correct : P15632194195787699505.Spec := by
  intro n
  simp only [A326127, Nat.add_sub_cancel, A326127.P15632194195787699505.f1, A326127.P15632194195787699505.a, A326127.P6827603046472699184.a, A004277, A004277.P16255821370285667660.a, A326126, A326126.P126110095243043684.a, A326128, A326128.P4962900157914824511.a, A000007, A000007.P6599383543502402472.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005843, A005843.P3167286115683555970.a, A007913, A007913.P8131970495124731496.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326127

/-! ## A326127.P9874128000990813308

`A007947(n+1)+A326143(n+1)-A007913(n+1)`
-/

namespace A326127.P9874128000990813308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + (A326143 (n + 1) - A007913 (n + 1))

end

end A326127.P9874128000990813308

namespace A326127

/-- `A007947(n+1)+A326143(n+1)-A007913(n+1)` -/
def P9874128000990813308.Spec : Prop :=
  ∀ n, P9874128000990813308.a n = A326127 (n + 1)

theorem P9874128000990813308.correct : P9874128000990813308.Spec := by
  intro n
  simp only [A326127, Nat.add_sub_cancel, A326127.P9874128000990813308.a, A326127.P6827603046472699184.a, A007913, A007913.P8131970495124731496.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326126, A326126.P126110095243043684.a, A326143, A326143.P176859411368788289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A326142, A326142.P15415912859726343761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326127

/-! ## A326127.P18210637525140769813

`A326142(n+1)-(A066503(n+1)+A007913(n+1))`
-/

namespace A326127.P18210637525140769813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326142 (n + 1) - (A066503 (n + 1) + A007913 (n + 1))

end

end A326127.P18210637525140769813

namespace A326127

/-- `A326142(n+1)-(A066503(n+1)+A007913(n+1))` -/
def P18210637525140769813.Spec : Prop :=
  ∀ n, P18210637525140769813.a n = A326127 (n + 1)

theorem P18210637525140769813.correct : P18210637525140769813.Spec := by
  intro n
  simp only [A326127, Nat.add_sub_cancel, A326127.P18210637525140769813.a, A326127.P6827603046472699184.a, A007913, A007913.P8131970495124731496.a, A066503, A066503.P17588364347287804265.a, A326126, A326126.P126110095243043684.a, A326142, A326142.P15415912859726343761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326127

/-! ## A326127.P8433917202963906686

`A326129(n+1)*A388991(n+1)-A033879(n+1)`
-/

namespace A326127.P8433917202963906686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326129 (n + 1) * A388991 (n + 1) - A033879 (n + 1)

end

end A326127.P8433917202963906686

namespace A326127

/-- `A326129(n+1)*A388991(n+1)-A033879(n+1)` -/
def P8433917202963906686.Spec : Prop :=
  ∀ n, P8433917202963906686.a n = A326127 (n + 1)

end A326127

/-! ## A326127.P11707101842290868370

`A326128(n+1)-(A000027(n+1)-A000203(n+1)+n+1)`
-/

namespace A326127.P11707101842290868370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (n + 1) - (A000027 (n + 1) - A000203 (n + 1) + (n + 1 : ℤ))

end

end A326127.P11707101842290868370

namespace A326127

/-- `A326128(n+1)-(A000027(n+1)-A000203(n+1)+n+1)` -/
def P11707101842290868370.Spec : Prop :=
  ∀ n, P11707101842290868370.a n = A326127 (n + 1)

theorem P11707101842290868370.correct : P11707101842290868370.Spec := by
  intro n
  simp only [A326127, Nat.add_sub_cancel, A326127.P11707101842290868370.a, A326127.P6827603046472699184.a, A000027, A000027.P10331202704469894836.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A326126, A326126.P126110095243043684.a, A326128, A326128.P4962900157914824511.a, A007913, A007913.P8131970495124731496.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326127

/-! ## A326127.P803575899691506656

`A001065(n+1)-A000188(A055491(n+1))`
-/

namespace A326127.P803575899691506656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A000188 (A055491 (n + 1)).toNat

end

end A326127.P803575899691506656

namespace A326127

/-- `A001065(n+1)-A000188(A055491(n+1))` -/
def P803575899691506656.Spec : Prop :=
  ∀ n, P803575899691506656.a n = A326127 (n + 1)

end A326127

/-!
# A326128: a(n) = n - A007913(n), where A007913 gives the squarefree part of n.

The programs for A326128, the canonical program `A326128.P4962900157914824511` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326128 has offset 1).

The definition of A326128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326128.P4962900157914824511

`n+1-A007913(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A326128

/-- `n+1-A007913(n+1)` -/
def P4962900157914824511.Spec : Prop :=
  ∀ n, P4962900157914824511.a n = A326128 (n + 1)

theorem P4962900157914824511.correct : P4962900157914824511.Spec := by
  intro n
  simp only [A326128, Nat.add_sub_cancel]

end A326128

/-! ## A326128.P15322917289426910068

`A326127(n+1)+A033879(n+1)`
-/

namespace A326128.P15322917289426910068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326127 (n + 1) + A033879 (n + 1)

end

end A326128.P15322917289426910068

namespace A326128

/-- `A326127(n+1)+A033879(n+1)` -/
def P15322917289426910068.Spec : Prop :=
  ∀ n, P15322917289426910068.a n = A326128 (n + 1)

theorem P15322917289426910068.correct : P15322917289426910068.Spec := by
  intro n
  simp only [A326128, Nat.add_sub_cancel, A326128.P15322917289426910068.a, A326128.P4962900157914824511.a, A007913, A007913.P8131970495124731496.a, A033879, A033879.P11735613842914743111.a, A326127, A326127.P6827603046472699184.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A033880, A033880.P6005875780263802708.a, A326126, A326126.P126110095243043684.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326128

/-! ## A326128.P6197202092158970996

`A007913(n+1)*A336642(n+1)`
-/

namespace A326128.P6197202092158970996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A336642 (n + 1)

end

end A326128.P6197202092158970996

namespace A326128

/-- `A007913(n+1)*A336642(n+1)` -/
def P6197202092158970996.Spec : Prop :=
  ∀ n, P6197202092158970996.a n = A326128 (n + 1)

end A326128

/-! ## A326128.P6369879968985951074

`1-Δ[A069891(n)]+n`
-/

namespace A326128.P6369879968985951074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A326128.P6369879968985951074

namespace A326128

/-- `1-Δ[A069891(n)]+n` -/
def P6369879968985951074.Spec : Prop :=
  ∀ n, P6369879968985951074.a n = A326128 (n + 1)

end A326128

/-! ## A326128.P18318013488015934787

`1-sqrt(A055491(n+1))+n`
-/

namespace A326128.P18318013488015934787
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - Real.sqrt (A055491 (n + 1) : ℝ) + (n : ℝ)

end

end A326128.P18318013488015934787

namespace A326128

/-- `1-sqrt(A055491(n+1))+n` -/
def P18318013488015934787.Spec : Prop :=
  ∀ n, P18318013488015934787.a n = (A326128 (n + 1) : ℝ)

end A326128

/-! ## A326128.P1911314751958106259

`n-floor(n/A008833(n+1))`
-/

namespace A326128.P1911314751958106259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (A008833 (n + 1) : ℚ)⌋

end

end A326128.P1911314751958106259

namespace A326128

/-- `n-floor(n/A008833(n+1))` -/
def P1911314751958106259.Spec : Prop :=
  ∀ n, P1911314751958106259.a n = A326128 (n + 1)

end A326128

/-! ## A326128.P15273824853569016106

`(n*A056135(n+1))%(n+1)`
-/

namespace A326128.P15273824853569016106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A056135 (n + 1)) (n + 1 : ℤ)

end

end A326128.P15273824853569016106

namespace A326128

/-- `(n*A056135(n+1))%(n+1)` -/
def P15273824853569016106.Spec : Prop :=
  ∀ n, P15273824853569016106.a n = A326128 (n + 1)

end A326128

/-! ## A326128.P8314001120447770375

`n+1-A053143(n+1)/(n+1)`
-/

namespace A326128.P8314001120447770375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A053143 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A326128.P8314001120447770375

namespace A326128

/-- `n+1-A053143(n+1)/(n+1)` -/
def P8314001120447770375.Spec : Prop :=
  ∀ n, P8314001120447770375.a n = (A326128 (n + 1) : ℚ)

end A326128

/-! ## A326128.P12724069570717652304

`1-(n+1)/A000188(n+1)²+n`
-/

namespace A326128.P12724069570717652304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (n + 1 : ℚ) / (A000188 (n + 1) ^ 2 : ℚ) + (n : ℚ)

end

end A326128.P12724069570717652304

namespace A326128

/-- `1-(n+1)/A000188(n+1)²+n` -/
def P12724069570717652304.Spec : Prop :=
  ∀ n, P12724069570717652304.a n = (A326128 (n + 1) : ℚ)

end A326128

/-! ## A326128.P8213048860969005630

`n-A326055(A007913(n+1))`
-/

namespace A326128.P8213048860969005630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A326055 (A007913 (n + 1)).toNat

end

end A326128.P8213048860969005630

namespace A326128

/-- `n-A326055(A007913(n+1))` -/
def P8213048860969005630.Spec : Prop :=
  ∀ n, P8213048860969005630.a n = A326128 (n + 1)

end A326128

/-! ## A326128.P1870629218466046063

`1-A055231(A038387(n+1))+n`
-/

namespace A326128.P1870629218466046063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A055231 (A038387 (n + 1)).toNat + (n : ℤ)

end

end A326128.P1870629218466046063

namespace A326128

/-- `1-A055231(A038387(n+1))+n` -/
def P1870629218466046063.Spec : Prop :=
  ∀ n, P1870629218466046063.a n = A326128 (n + 1)

end A326128

/-! ## A326128.P14274513518715314228

`1-A055231(A066990(n+1))+n`
-/

namespace A326128.P14274513518715314228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A055231 (A066990 (n + 1)).toNat + (n : ℤ)

end

end A326128.P14274513518715314228

namespace A326128

/-- `1-A055231(A066990(n+1))+n` -/
def P14274513518715314228.Spec : Prop :=
  ∀ n, P14274513518715314228.a n = A326128 (n + 1)

end A326128

/-! ## A326128.P9470894118762846768

`A326126(n+1)-A001065(n+1)`
-/

namespace A326128.P9470894118762846768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (n + 1) - A001065 (n + 1)

end

end A326128.P9470894118762846768

namespace A326128

/-- `A326126(n+1)-A001065(n+1)` -/
def P9470894118762846768.Spec : Prop :=
  ∀ n, P9470894118762846768.a n = A326128 (n + 1)

theorem P9470894118762846768.correct : P9470894118762846768.Spec := by
  intro n
  simp only [A326128, Nat.add_sub_cancel, A326128.P9470894118762846768.a, A326128.P4962900157914824511.a, A001065, A001065.P4097147489331274860.a, A007913, A007913.P8131970495124731496.a, A326126, A326126.P126110095243043684.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326128

/-! ## A326128.P8030384510773121440

`A326127(n+1)-A033880(n+1)`
-/

namespace A326128.P8030384510773121440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326127 (n + 1) - A033880 (n + 1)

end

end A326128.P8030384510773121440

namespace A326128

/-- `A326127(n+1)-A033880(n+1)` -/
def P8030384510773121440.Spec : Prop :=
  ∀ n, P8030384510773121440.a n = A326128 (n + 1)

theorem P8030384510773121440.correct : P8030384510773121440.Spec := by
  intro n
  simp only [A326128, Nat.add_sub_cancel, A326128.P8030384510773121440.a, A326128.P4962900157914824511.a, A007913, A007913.P8131970495124731496.a, A033880, A033880.P6005875780263802708.a, A326127, A326127.P6827603046472699184.a, A001065, A001065.P4097147489331274860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326126, A326126.P126110095243043684.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326128

/-! ## A326128.P12234161035923667523

`1-A332462(A335423(n+1))+n`
-/

namespace A326128.P12234161035923667523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A332462 (A335423 (n + 1)).toNat + (n : ℤ)

end

end A326128.P12234161035923667523

namespace A326128

/-- `1-A332462(A335423(n+1))+n` -/
def P12234161035923667523.Spec : Prop :=
  ∀ n, P12234161035923667523.a n = A326128 (n + 1)

end A326128

/-! ## A326128.P10056934317919342635

`A326129(n+1)*A388991(n+1)`
-/

namespace A326128.P10056934317919342635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326129 (n + 1) * A388991 (n + 1)

end

end A326128.P10056934317919342635

namespace A326128

/-- `A326129(n+1)*A388991(n+1)` -/
def P10056934317919342635.Spec : Prop :=
  ∀ n, P10056934317919342635.a n = A326128 (n + 1)

end A326128

/-! ## A326128.P2909510670215724768

`A388978(n+1)/A389077(n+1)`
-/

namespace A326128.P2909510670215724768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388978 (n + 1) : ℚ) / (A389077 (n + 1) : ℚ)

end

end A326128.P2909510670215724768

namespace A326128

/-- `A388978(n+1)/A389077(n+1)` -/
def P2909510670215724768.Spec : Prop :=
  ∀ n, P2909510670215724768.a n = (A326128 (n + 1) : ℚ)

end A326128

/-! ## A326128.P3475199566556483582

`A326127(n+1)+1-A237588(n+1)`
-/

namespace A326128.P3475199566556483582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326127 (n + 1) + (1 - A237588 (n + 1))

end

end A326128.P3475199566556483582

namespace A326128

/-- `A326127(n+1)+1-A237588(n+1)` -/
def P3475199566556483582.Spec : Prop :=
  ∀ n, P3475199566556483582.a n = A326128 (n + 1)

theorem P3475199566556483582.correct : P3475199566556483582.Spec := by
  intro n
  simp only [A326128, Nat.add_sub_cancel, A326128.P3475199566556483582.a, A326128.P4962900157914824511.a, A007913, A007913.P8131970495124731496.a, A237588, A237588.P10590847318200798620.a, A326127, A326127.P6827603046472699184.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326126, A326126.P126110095243043684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326128

/-! ## A326128.P10705445135016087017

`2*A254732(n+1)-A072905(n+1)`
-/

namespace A326128.P10705445135016087017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A254732 (n + 1) - A072905 (n + 1)

end

end A326128.P10705445135016087017

namespace A326128

/-- `2*A254732(n+1)-A072905(n+1)` -/
def P10705445135016087017.Spec : Prop :=
  ∀ n, P10705445135016087017.a n = A326128 (n + 1)

end A326128

/-! ## A326128.P2712219080310272570

`n-A326055(n+1)/A008833(n+1)`
-/

namespace A326128.P2712219080310272570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A326055 (n + 1) : ℚ) / (A008833 (n + 1) : ℚ)

end

end A326128.P2712219080310272570

namespace A326128

/-- `n-A326055(n+1)/A008833(n+1)` -/
def P2712219080310272570.Spec : Prop :=
  ∀ n, P2712219080310272570.a n = (A326128 (n + 1) : ℚ)

end A326128

/-!
# A326129: a(n) = gcd(A326127(n), A326128(n)).

The programs for A326129, the canonical program `A326129.P16648833890386583116` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326129 has offset 1).

The definition of A326129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326129.P1774287355644568289

`n+1-A336645(n+1)`
-/

namespace A326129.P1774287355644568289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A336645 (n + 1)

end

end A326129.P1774287355644568289

namespace A326129

/-- `n+1-A336645(n+1)` -/
def P1774287355644568289.Spec : Prop :=
  ∀ n, P1774287355644568289.a n = A326129 (n + 1)

theorem P1774287355644568289.correct : P1774287355644568289.Spec := by
  intro n
  simp only [A326129, Nat.add_sub_cancel, A326129.P1774287355644568289.a, A326129.P16648833890386583116.a, A326127, A326127.P6827603046472699184.a, A326128, A326128.P4962900157914824511.a, A336645, A336645.P7716507073345907638.a, A007913, A007913.P8131970495124731496.a, A326126, A326126.P126110095243043684.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326129

/-! ## A326129.P16648833890386583116

`gcd(A326127(n+1), A326128(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A326129

/-- `gcd(A326127(n+1), A326128(n+1))` -/
def P16648833890386583116.Spec : Prop :=
  ∀ n, (P16648833890386583116.a n : ℤ) = A326129 (n + 1)

theorem P16648833890386583116.correct : P16648833890386583116.Spec := by
  intro n
  simp only [A326129, Nat.add_sub_cancel]

end A326129

/-! ## A326129.P3080027025257359236

`A024000(A336645(n+1))+n`
-/

namespace A326129.P3080027025257359236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A336645 (n + 1)).toNat + (n : ℤ)

end

end A326129.P3080027025257359236

namespace A326129

/-- `A024000(A336645(n+1))+n` -/
def P3080027025257359236.Spec : Prop :=
  ∀ n, P3080027025257359236.a n = A326129 (n + 1)

end A326129

/-! ## A326129.P13156007535255583045

`abs(A336645(n+1)+A001478(n+1))`
-/

namespace A326129.P13156007535255583045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A336645 (n + 1) + A001478 (n + 1)|

end

end A326129.P13156007535255583045

namespace A326129

/-- `abs(A336645(n+1)+A001478(n+1))` -/
def P13156007535255583045.Spec : Prop :=
  ∀ n, P13156007535255583045.a n = A326129 (n + 1)

end A326129

/-! ## A326129.P8112764490877166393

`gcd(1-A237588(n+1), A326128(A000027(n+1)))`
-/

namespace A326129.P8112764490877166393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A237588 (n + 1)) (A326128 (A000027 (n + 1)).toNat)

end

end A326129.P8112764490877166393

namespace A326129

/-- `gcd(1-A237588(n+1), A326128(A000027(n+1)))` -/
def P8112764490877166393.Spec : Prop :=
  ∀ n, (P8112764490877166393.a n : ℤ) = A326129 (n + 1)

end A326129

/-! ## A326129.P15805982825214208242

`gcd(A325978(n+1)-A325977(n+1), -A326127(n+1))`
-/

namespace A326129.P15805982825214208242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A325978 (n + 1) - A325977 (n + 1)) (-A326127 (n + 1))

end

end A326129.P15805982825214208242

namespace A326129

/-- `gcd(A325978(n+1)-A325977(n+1), -A326127(n+1))` -/
def P15805982825214208242.Spec : Prop :=
  ∀ n, (P15805982825214208242.a n : ℤ) = A326129 (n + 1)

end A326129

/-!
# A326130: a(n) = gcd(A000120(n), A294898(n)) = gcd(A000120(n), sigma(n)-A005187(n)).

The programs for A326130, the canonical program `A326130.P7891050191876259217` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326130 has offset 1).

The definition of A326130 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000120(n+1), A294898(n+1))` (program `A326130.P7891050191876259217`, by `A326130.P7891050191876259217.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A326130.P7891050191876259217

`gcd(A000120(n+1), A294898(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A326130

/-- `gcd(A000120(n+1), A294898(n+1))` -/
def P7891050191876259217.Spec : Prop :=
  ∀ n, (P7891050191876259217.a n : ℤ) = A326130 (n + 1)

theorem P7891050191876259217.correct : P7891050191876259217.Spec := by
  intro n
  simp only [A326130, Nat.add_sub_cancel]

end A326130

/-! ## A326130.P8095992825041556302

`gcd(A000120(n+1), A000203(n+1)-A005187(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326130.P8095992825041556302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (n + 1)) (A000203 (n + 1) - A005187 (n + 1))

end

end A326130.P8095992825041556302

namespace A326130

/-- `gcd(A000120(n+1), A000203(n+1)-A005187(n+1))` -/
def P8095992825041556302.Spec : Prop :=
  ∀ n, (P8095992825041556302.a n : ℤ) = A326130 (n + 1)

end A326130

/-! ## A326130.P4974968456828303938

`gcd(∑[1-val(n+1, 2)], A033879(n+1))`
-/

namespace A326130.P4974968456828303938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A033879 (n + 1))

end

end A326130.P4974968456828303938

namespace A326130

/-- `gcd(∑[1-val(n+1, 2)], A033879(n+1))` -/
def P4974968456828303938.Spec : Prop :=
  ∀ n, (P4974968456828303938.a n : ℤ) = A326130 (n + 1)

end A326130

/-! ## A326130.P7028997845150464430

`gcd(Δ[A000788(n)], A033879(n+1))`
-/

namespace A326130.P7028997845150464430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A033879 (n + 1))

end

end A326130.P7028997845150464430

namespace A326130

/-- `gcd(Δ[A000788(n)], A033879(n+1))` -/
def P7028997845150464430.Spec : Prop :=
  ∀ n, (P7028997845150464430.a n : ℤ) = A326130 (n + 1)

end A326130

/-! ## A326130.P8442759092363573599

`gcd(-A033879(n+1), -A294898(n+1))`
-/

namespace A326130.P8442759092363573599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A033879 (n + 1)) (-A294898 (n + 1))

end

end A326130.P8442759092363573599

namespace A326130

/-- `gcd(-A033879(n+1), -A294898(n+1))` -/
def P8442759092363573599.Spec : Prop :=
  ∀ n, (P8442759092363573599.a n : ℤ) = A326130 (n + 1)

end A326130

/-! ## A326130.P15677706241418967619

`gcd(A000005(A048896(n)), A033880(n+1))`
-/

namespace A326130.P15677706241418967619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A048896 n).toNat) (A033880 (n + 1))

end

end A326130.P15677706241418967619

namespace A326130

/-- `gcd(A000005(A048896(n)), A033880(n+1))` -/
def P15677706241418967619.Spec : Prop :=
  ∀ n, (P15677706241418967619.a n : ℤ) = A326130 (n + 1)

end A326130

/-!
# A326131: Positive numbers n for which A000120(n) = k*A294898(n), with k < 0; numbers for which A326130(n) = sigma(n) - A005187(n).

The programs for A326131, there is no canonical definition to state claims against.
-/

/-! ## A326131.P7813702877831792961

`A326138(A038365(n+1))`
-/

namespace A326131.P7813702877831792961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326138 (A038365 (n + 1)).toNat

end

end A326131.P7813702877831792961

/-! ## A326131.P17736224106320220132

`A326138(A039219(n+1))`
-/

namespace A326131.P17736224106320220132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326138 (A039219 (n + 1)).toNat

end

end A326131.P17736224106320220132

/-! ## A326131.P789346675015428307

`A326138(A267215(n+2))`
-/

namespace A326131.P789346675015428307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326138 (A267215 (n + 2)).toNat

end

end A326131.P789346675015428307

/-! ## A326131.P10606808635586061027

`A326138(A025793(n+1)+n)`
-/

namespace A326131.P10606808635586061027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326138 (A025793 (n + 1) + (n : ℤ)).toNat

end

end A326131.P10606808635586061027

/-! ## A326131.P6666638780384042662

`A326138(A344511(n+1)+n)`
-/

namespace A326131.P6666638780384042662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326138 (A344511 (n + 1) + (n : ℤ)).toNat

end

end A326131.P6666638780384042662

/-!
# A326133: Numbers n for which sigma(n) > A005187(n).

The programs for A326133, the canonical program `A326133.P4300014578678543539` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326133 has offset 1).

The definition of A326133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4960 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326133.P4300014578678543539

`lt[A005187(n+1), A000203(n+1)]+1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A326133

/-- `lt[A005187(n+1), A000203(n+1)]+1` -/
def P4300014578678543539.Spec : Prop :=
  ∀ n, (P4300014578678543539.a n : ℤ) = A326133 (n + 1)

theorem P4300014578678543539.correct : P4300014578678543539.Spec := by
  intro n
  simp only [A326133, Nat.add_sub_cancel]

end A326133

/-! ## A326133.P4425531835088284862

`lt[A344769(n+1), A344765(n+1)]+1`
-/

namespace A326133.P4425531835088284862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344765 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A326133.P4425531835088284862

namespace A326133

/-- `lt[A344769(n+1), A344765(n+1)]+1` -/
def P4425531835088284862.Spec : Prop :=
  ∀ n, (P4425531835088284862.a n : ℤ) = A326133 (n + 1)

end A326133

/-! ## A326133.P13599073378728495628

`lt[A294898(A028310(n)), 0]`
-/

namespace A326133.P13599073378728495628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294898 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A326133.P13599073378728495628

namespace A326133

/-- `lt[A294898(A028310(n)), 0]` -/
def P13599073378728495628.Spec : Prop :=
  ∀ n, (P13599073378728495628.a n : ℤ) = A326133 (n + 1)

end A326133

/-! ## A326133.P9498681812881206798

`lt[A033879(n+1), A000120(n+1)]+1`
-/

namespace A326133.P9498681812881206798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A326133.P9498681812881206798

namespace A326133

/-- `lt[A033879(n+1), A000120(n+1)]+1` -/
def P9498681812881206798.Spec : Prop :=
  ∀ n, (P9498681812881206798.a n : ℤ) = A326133 (n + 1)

end A326133

/-! ## A326133.P718244210572639879

`lt[A033879(A028310(n)), A000120(n)]`
-/

namespace A326133.P718244210572639879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326133.P718244210572639879

namespace A326133

/-- `lt[A033879(A028310(n)), A000120(n)]` -/
def P718244210572639879.Spec : Prop :=
  ∀ n, (P718244210572639879.a n : ℤ) = A326133 (n + 1)

end A326133

/-! ## A326133.P1446523922970244089

`A153152(lt[A344769(n+1), A344765(n+1)])`
-/

namespace A326133.P1446523922970244089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A326133.P1446523922970244089

namespace A326133

/-- `A153152(lt[A344769(n+1), A344765(n+1)])` -/
def P1446523922970244089.Spec : Prop :=
  ∀ n, P1446523922970244089.a n = A326133 (n + 1)

end A326133

/-! ## A326133.P10537864193797400097

`lt[A033879(A028310(n)), 2*n-A005187(n)]`
-/

namespace A326133.P10537864193797400097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326133.P10537864193797400097

namespace A326133

/-- `lt[A033879(A028310(n)), 2*n-A005187(n)]` -/
def P10537864193797400097.Spec : Prop :=
  ∀ n, (P10537864193797400097.a n : ℤ) = A326133 (n + 1)

end A326133

/-! ## A326133.P11058209515942551150

`lt[A033879(A028310(n)), A048881(n)]`
-/

namespace A326133.P11058209515942551150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326133.P11058209515942551150

namespace A326133

/-- `lt[A033879(A028310(n)), A048881(n)]` -/
def P11058209515942551150.Spec : Prop :=
  ∀ n, (P11058209515942551150.a n : ℤ) = A326133 (n + 1)

end A326133

/-! ## A326133.P13517636366576125704

`lt[A033879(A233583(n+1)), A000120(n)]`
-/

namespace A326133.P13517636366576125704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326133.P13517636366576125704

namespace A326133

/-- `lt[A033879(A233583(n+1)), A000120(n)]` -/
def P13517636366576125704.Spec : Prop :=
  ∀ n, (P13517636366576125704.a n : ℤ) = A326133 (n + 1)

end A326133

/-! ## A326133.P15961685112876891869

`lt[A033879(A233583(n+1)), 2*n-A005187(n)]`
-/

namespace A326133.P15961685112876891869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326133.P15961685112876891869

namespace A326133

/-- `lt[A033879(A233583(n+1)), 2*n-A005187(n)]` -/
def P15961685112876891869.Spec : Prop :=
  ∀ n, (P15961685112876891869.a n : ℤ) = A326133 (n + 1)

end A326133

/-!
# A326135: a(n) = sigma(A028234(n)), where sigma is the sum of divisors of n, and A028234 gives n without any occurrence of its smallest prime factor.

The programs for A326135, the canonical program `A326135.P4293370758287404225` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326135 has offset 1).

The definition of A326135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326135.P16806921798019372248

`A000203(A028234(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326135.P16806921798019372248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A028234 (n + 1)).toNat

end

end A326135.P16806921798019372248

namespace A326135

/-- `A000203(A028234(n+1))` -/
def P16806921798019372248.Spec : Prop :=
  ∀ n, P16806921798019372248.a n = A326135 (n + 1)

end A326135

/-! ## A326135.P4934615182617909497

`A326065(n+1)/A000203(A020639(n+1)^(A067029(n+1)-1))`
-/

namespace A326135.P4934615182617909497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326065 (n + 1) : ℚ) / (A000203 (SequenceMachineLib.roundAway ((A020639 (n + 1) : ℚ) ^ (A067029 (n + 1) - 1 : ℤ))).toNat : ℚ)

end

end A326135.P4934615182617909497

namespace A326135

/-- `A326065(n+1)/A000203(A020639(n+1)^(A067029(n+1)-1))` -/
def P4934615182617909497.Spec : Prop :=
  ∀ n, P4934615182617909497.a n = (A326135 (n + 1) : ℚ)

end A326135

/-! ## A326135.P12028884298572229301

`A091570(2*A028234(n+1))`
-/

namespace A326135.P12028884298572229301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (2 * A028234 (n + 1)).toNat

end

end A326135.P12028884298572229301

namespace A326135

/-- `A091570(2*A028234(n+1))` -/
def P12028884298572229301.Spec : Prop :=
  ∀ n, P12028884298572229301.a n = A326135 (n + 1)

end A326135

/-! ## A326135.P9423588220426710374

`A326065(2*A028234(n+1))`
-/

namespace A326135.P9423588220426710374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (2 * A028234 (n + 1)).toNat

end

end A326135.P9423588220426710374

namespace A326135

/-- `A326065(2*A028234(n+1))` -/
def P9423588220426710374.Spec : Prop :=
  ∀ n, P9423588220426710374.a n = A326135 (n + 1)

end A326135

/-! ## A326135.P17402753145050329961

`A002129(or(1, A028234(n+1)))`
-/

namespace A326135.P17402753145050329961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (Int.lor 1 (A028234 (n + 1))).toNat

end

end A326135.P17402753145050329961

namespace A326135

/-- `A002129(or(1, A028234(n+1)))` -/
def P17402753145050329961.Spec : Prop :=
  ∀ n, P17402753145050329961.a n = A326135 (n + 1)

end A326135

/-! ## A326135.P323780519470387470

`A002131(or(1, A028234(n+1)))`
-/

namespace A326135.P323780519470387470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (Int.lor 1 (A028234 (n + 1))).toNat

end

end A326135.P323780519470387470

namespace A326135

/-- `A002131(or(1, A028234(n+1)))` -/
def P323780519470387470.Spec : Prop :=
  ∀ n, P323780519470387470.a n = A326135 (n + 1)

end A326135

/-! ## A326135.P6694826219009176115

`A000203(n+1)-A326136(n+1)`
-/

namespace A326135.P6694826219009176115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A326136 (n + 1)

end

end A326135.P6694826219009176115

namespace A326135

/-- `A000203(n+1)-A326136(n+1)` -/
def P6694826219009176115.Spec : Prop :=
  ∀ n, P6694826219009176115.a n = A326135 (n + 1)

theorem P6694826219009176115.correct : P6694826219009176115.Spec := by
  intro n
  simp only [A326135, Nat.add_sub_cancel, A326135.P6694826219009176115.a, A326135.P4293370758287404225.f1, A326135.P4293370758287404225.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A006530, A006530.P13372528560459906635.a, A326136, A326136.P18410941739685931692.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326135

/-! ## A326135.P9347124359986004347

`A000203((n+1)/A028233(n+1))`
-/

namespace A326135.P9347124359986004347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A028233 (n + 1) : ℚ))).toNat

end

end A326135.P9347124359986004347

namespace A326135

/-- `A000203((n+1)/A028233(n+1))` -/
def P9347124359986004347.Spec : Prop :=
  ∀ n, P9347124359986004347.a n = A326135 (n + 1)

end A326135

/-! ## A326135.P4078699691850612425

`A143348((n+1)/A028233(n+1))`
-/

namespace A326135.P4078699691850612425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A028233 (n + 1) : ℚ))).toNat

end

end A326135.P4078699691850612425

namespace A326135

/-- `A143348((n+1)/A028233(n+1))` -/
def P4078699691850612425.Spec : Prop :=
  ∀ n, P4078699691850612425.a n = A326135 (n + 1)

end A326135

/-! ## A326135.P16784836742496568431

`A046897(A028234(2*n+1-n))`
-/

namespace A326135.P16784836742496568431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046897 (A028234 (2 * n + 1 - n)).toNat

end

end A326135.P16784836742496568431

namespace A326135

/-- `A046897(A028234(2*n+1-n))` -/
def P16784836742496568431.Spec : Prop :=
  ∀ n, P16784836742496568431.a n = A326135 (n + 1)

end A326135

/-! ## A326135.P8530879515891442742

`gcd(A000203(n+1), A326065(n+1))`
-/

namespace A326135.P8530879515891442742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A326065 (n + 1))

end

end A326135.P8530879515891442742

namespace A326135

/-- `gcd(A000203(n+1), A326065(n+1))` -/
def P8530879515891442742.Spec : Prop :=
  ∀ n, (P8530879515891442742.a n : ℤ) = A326135 (n + 1)

end A326135

/-! ## A326135.P7265395750217748095

`gcd(A000593(n+1), A326066(n+1))`
-/

namespace A326135.P7265395750217748095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000593 (n + 1)) (A326066 (n + 1))

end

end A326135.P7265395750217748095

namespace A326135

/-- `gcd(A000593(n+1), A326066(n+1))` -/
def P7265395750217748095.Spec : Prop :=
  ∀ n, (P7265395750217748095.a n : ℤ) = A326135 (n + 1)

end A326135

/-! ## A326135.P17405895153277764504

`gcd(A002129(n+1), A326136(n+1))`
-/

namespace A326135.P17405895153277764504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002129 (n + 1)) (A326136 (n + 1))

end

end A326135.P17405895153277764504

namespace A326135

/-- `gcd(A002129(n+1), A326136(n+1))` -/
def P17405895153277764504.Spec : Prop :=
  ∀ n, (P17405895153277764504.a n : ℤ) = A326135 (n + 1)

end A326135

/-! ## A326135.P4293370758287404225

`A000203(gcd(n+1, ∏{d}[n+1, A006530(#)]/(n+1)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A326135

/-- `A000203(gcd(n+1, ∏{d}[n+1, A006530(#)]/(n+1)))` -/
def P4293370758287404225.Spec : Prop :=
  ∀ n, P4293370758287404225.a n = A326135 (n + 1)

theorem P4293370758287404225.correct : P4293370758287404225.Spec := by
  intro n
  simp only [A326135, Nat.add_sub_cancel]

end A326135

/-! ## A326135.P7746355411949821013

`A326065(A028234(n+1)+A028234(n+1))`
-/

namespace A326135.P7746355411949821013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A028234 (n + 1) + A028234 (n + 1)).toNat

end

end A326135.P7746355411949821013

namespace A326135

/-- `A326065(A028234(n+1)+A028234(n+1))` -/
def P7746355411949821013.Spec : Prop :=
  ∀ n, P7746355411949821013.a n = A326135 (n + 1)

end A326135

/-! ## A326135.P17798199521476007250

`A074400(n+1)/A074400(A028233(n+1))`
-/

namespace A326135.P17798199521476007250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / (A074400 (A028233 (n + 1)).toNat : ℚ)

end

end A326135.P17798199521476007250

namespace A326135

/-- `A074400(n+1)/A074400(A028233(n+1))` -/
def P17798199521476007250.Spec : Prop :=
  ∀ n, P17798199521476007250.a n = (A326135 (n + 1) : ℚ)

end A326135

/-! ## A326135.P2630222432693719993

`A326065((n+1)/A032742(A028233(n+1)))`
-/

namespace A326135.P2630222432693719993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A032742 (A028233 (n + 1)).toNat : ℚ))).toNat

end

end A326135.P2630222432693719993

namespace A326135

/-- `A326065((n+1)/A032742(A028233(n+1)))` -/
def P2630222432693719993.Spec : Prop :=
  ∀ n, P2630222432693719993.a n = A326135 (n + 1)

end A326135

/-! ## A326135.P7606327476440438682

`A272027(n+1)/A272027(A028233(n+1))`
-/

namespace A326135.P7606327476440438682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272027 (n + 1) : ℚ) / (A272027 (A028233 (n + 1)).toNat : ℚ)

end

end A326135.P7606327476440438682

namespace A326135

/-- `A272027(n+1)/A272027(A028233(n+1))` -/
def P7606327476440438682.Spec : Prop :=
  ∀ n, P7606327476440438682.a n = (A326135 (n + 1) : ℚ)

end A326135

/-! ## A326135.P5970537714865442044

`A326065(n+1)/A326065(A028233(n+1))`
-/

namespace A326135.P5970537714865442044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326065 (n + 1) : ℚ) / (A326065 (A028233 (n + 1)).toNat : ℚ)

end

end A326135.P5970537714865442044

namespace A326135

/-- `A326065(n+1)/A326065(A028233(n+1))` -/
def P5970537714865442044.Spec : Prop :=
  ∀ n, P5970537714865442044.a n = (A326135 (n + 1) : ℚ)

end A326135

/-! ## A326135.P2561088953584167069

`A091051(n+1)+A183101(n+1)-A326136(n+1)`
-/

namespace A326135.P2561088953584167069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091051 (n + 1) + (A183101 (n + 1) - A326136 (n + 1))

end

end A326135.P2561088953584167069

namespace A326135

/-- `A091051(n+1)+A183101(n+1)-A326136(n+1)` -/
def P2561088953584167069.Spec : Prop :=
  ∀ n, P2561088953584167069.a n = A326135 (n + 1)

theorem P2561088953584167069.correct : P2561088953584167069.Spec := by
  intro n
  simp only [A326135, Nat.add_sub_cancel, A326135.P2561088953584167069.a, A326135.P4293370758287404225.f1, A326135.P4293370758287404225.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A006530, A006530.P13372528560459906635.a, A091051, A091051.P295852673504000466.f1, A091051.P295852673504000466.a, A183101, A183101.P16697134400805324664.a, A326136, A326136.P18410941739685931692.a, A070229, A070229.P5792893597916963980.a, A075802, A075802.P15418155707765850726.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A069623, A069623.P16188465153472375596.a, A076411, A076411.P17634982879801196163.f2, A076411.P17634982879801196163.f1, A076411.P17634982879801196163.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326135

/-!
# A326136: a(n) = sigma(n) - sigma(A028234(n)), where sigma is the sum of divisors of n, and A028234 gives n without any occurrence of its smallest prime factor.

The programs for A326136, the canonical program `A326136.P18410941739685931692` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326136 has offset 1).

The definition of A326136 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326135, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326136.P18410941739685931692

`A000203(n+1)-A326135(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A326136

/-- `A000203(n+1)-A326135(n+1)` -/
def P18410941739685931692.Spec : Prop :=
  ∀ n, P18410941739685931692.a n = A326136 (n + 1)

theorem P18410941739685931692.correct : P18410941739685931692.Spec := by
  intro n
  simp only [A326136, Nat.add_sub_cancel]

end A326136

/-! ## A326136.P11506757993366939969

`A000203(n+1)-A000203(A028234(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326136.P11506757993366939969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (A028234 (n + 1)).toNat

end

end A326136.P11506757993366939969

namespace A326136

/-- `A000203(n+1)-A000203(A028234(n+1))` -/
def P11506757993366939969.Spec : Prop :=
  ∀ n, P11506757993366939969.a n = A326136 (n + 1)

end A326136

/-! ## A326136.P281048243595301636

`A074400(n+1)/2-A326135(n+1)`
-/

namespace A326136.P281048243595301636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A326135 (n + 1) : ℚ)

end

end A326136.P281048243595301636

namespace A326136

/-- `A074400(n+1)/2-A326135(n+1)` -/
def P281048243595301636.Spec : Prop :=
  ∀ n, P281048243595301636.a n = (A326136 (n + 1) : ℚ)

theorem P281048243595301636.correct : P281048243595301636.Spec := by
  intro n
  simp only [A326136, Nat.add_sub_cancel, A326136.P281048243595301636.a, A326136.P18410941739685931692.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, A326135, A326135.P4293370758287404225.f1, A326135.P4293370758287404225.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326136

/-! ## A326136.P16483022336327198429

`A039653(n+1)-A039653(A028234(n+1))`
-/

namespace A326136.P16483022336327198429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) - A039653 (A028234 (n + 1)).toNat

end

end A326136.P16483022336327198429

namespace A326136

/-- `A039653(n+1)-A039653(A028234(n+1))` -/
def P16483022336327198429.Spec : Prop :=
  ∀ n, P16483022336327198429.a n = A326136 (n + 1)

end A326136

/-! ## A326136.P8552179950368903107

`A326065(n+1)*A326066(A020639(n+1))`
-/

namespace A326136.P8552179950368903107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (n + 1) * A326066 (A020639 (n + 1)).toNat

end

end A326136.P8552179950368903107

namespace A326136

/-- `A326065(n+1)*A326066(A020639(n+1))` -/
def P8552179950368903107.Spec : Prop :=
  ∀ n, P8552179950368903107.a n = A326136 (n + 1)

end A326136

/-! ## A326136.P3164924225172094582

`A326065(n+1)+A326066(n+1)-A326135(n+1)`
-/

namespace A326136.P3164924225172094582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (n + 1) + (A326066 (n + 1) - A326135 (n + 1))

end

end A326136.P3164924225172094582

namespace A326136

/-- `A326065(n+1)+A326066(n+1)-A326135(n+1)` -/
def P3164924225172094582.Spec : Prop :=
  ∀ n, P3164924225172094582.a n = A326136 (n + 1)

end A326136

/-! ## A326136.P11674192875414771611

`A000203(n+1)-gcd(A000203(n+1), A326065(n+1))`
-/

namespace A326136.P11674192875414771611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (Int.gcd (A000203 (n + 1)) (A326065 (n + 1)) : ℤ)

end

end A326136.P11674192875414771611

namespace A326136

/-- `A000203(n+1)-gcd(A000203(n+1), A326065(n+1))` -/
def P11674192875414771611.Spec : Prop :=
  ∀ n, P11674192875414771611.a n = A326136 (n + 1)

end A326136

/-! ## A326136.P5697121172319587342

`A000203(n+1)-A000203(n+1)/A000203(A028233(n+1))`
-/

namespace A326136.P5697121172319587342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) - (A000203 (n + 1) : ℚ) / (A000203 (A028233 (n + 1)).toNat : ℚ)

end

end A326136.P5697121172319587342

namespace A326136

/-- `A000203(n+1)-A000203(n+1)/A000203(A028233(n+1))` -/
def P5697121172319587342.Spec : Prop :=
  ∀ n, P5697121172319587342.a n = (A326136 (n + 1) : ℚ)

end A326136

/-! ## A326136.P7109406400597087444

`A326065(2*(n+1))-A326135(n+1)`
-/

namespace A326136.P7109406400597087444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (2 * (n + 1)) - A326135 (n + 1)

end

end A326136.P7109406400597087444

namespace A326136

/-- `A326065(2*(n+1))-A326135(n+1)` -/
def P7109406400597087444.Spec : Prop :=
  ∀ n, P7109406400597087444.a n = A326136 (n + 1)

end A326136

/-! ## A326136.P16116574000677778214

`A262610(2*n+1)-A326135(n+1)`
-/

namespace A326136.P16116574000677778214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262610 (2 * n + 1) - A326135 (n + 1)

end

end A326136.P16116574000677778214

namespace A326136

/-- `A262610(2*n+1)-A326135(n+1)` -/
def P16116574000677778214.Spec : Prop :=
  ∀ n, P16116574000677778214.a n = A326136 (n + 1)

end A326136

/-!
# A326139: a(n) = gcd(A032742(n), A302042(n)).

The programs for A326139, there is no canonical definition to state claims against.
-/

/-! ## A326139.P16144695437753280406

`gcd(A032742(n+1), A302042(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326139.P16144695437753280406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032742 (n + 1)) (A302042 (n + 1))

end

end A326139.P16144695437753280406

/-! ## A326139.P13390101236446425637

`gcd(A117818(n+1), A302043(n+1))`
-/

namespace A326139.P13390101236446425637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117818 (n + 1)) (A302043 (n + 1))

end

end A326139.P13390101236446425637

/-! ## A326139.P2956673053571163787

`gcd(A060681(n+1), A302042(A000027(n+1)))`
-/

namespace A326139.P2956673053571163787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060681 (n + 1)) (A302042 (A000027 (n + 1)).toNat)

end

end A326139.P2956673053571163787

/-! ## A326139.P5289845205488824132

`gcd(A000027(A302042(n+1)), A126286(n+1))`
-/

namespace A326139.P5289845205488824132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A302042 (n + 1)).toNat) (A126286 (n + 1))

end

end A326139.P5289845205488824132

/-! ## A326139.P2036895487473467538

`gcd(A220096(n+1), A302042(A028310(n)+1))`
-/

namespace A326139.P2036895487473467538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220096 (n + 1)) (A302042 (A028310 n + 1).toNat)

end

end A326139.P2036895487473467538

/-! ## A326139.P18309052044925231124

`gcd(A054576(A103517(n)), A302043(n+1))`
-/

namespace A326139.P18309052044925231124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054576 (A103517 n).toNat) (A302043 (n + 1))

end

end A326139.P18309052044925231124

/-! ## A326139.P1407833057004654857

`gcd(A054576(2*(n+1)), A302043(A302043(2*(n+1))))`
-/

namespace A326139.P1407833057004654857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054576 (2 * (n + 1))) (A302043 (A302043 (2 * (n + 1))).toNat)

end

end A326139.P1407833057004654857

/-!
# A326140: a(n) = gcd(A318878(n), A318879(n)).

The programs for A326140, there is no canonical definition to state claims against.
-/

/-! ## A326140.P1697204103557514800

`gcd(A318878(n+1), A318879(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326140.P1697204103557514800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A318878 (n + 1)) (A318879 (n + 1))

end

end A326140.P1697204103557514800

/-! ## A326140.P6235171483865554119

`gcd(1-A001065(n+1)+n, A318878(A000027(n+1)))`
-/

namespace A326140.P6235171483865554119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A001065 (n + 1) + (n : ℤ)) (A318878 (A000027 (n + 1)).toNat)

end

end A326140.P6235171483865554119

/-! ## A326140.P4924640166812173088

`gcd(A318878(2*(n+1)), A326068(2*(n+1)))`
-/

namespace A326140.P4924640166812173088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A318878 (2 * (n + 1))) (A326068 (2 * (n + 1)))

end

end A326140.P4924640166812173088

/-! ## A326140.P5421766877248684722

`A082729(A179527(A000079(n+1))+n+1)`
-/

namespace A326140.P5421766877248684722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082729 (A179527 (A000079 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A326140.P5421766877248684722

/-! ## A326140.P17095676219291480415

`A082729(A077741(n+1))`
-/

namespace A326140.P17095676219291480415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082729 (A077741 (n + 1)).toNat

end

end A326140.P17095676219291480415

/-!
# A326142: Sum of all other divisors of n except its largest squarefree divisor: a(n) = sigma(n) - A007947(n).

The programs for A326142, the canonical program `A326142.P15415912859726343761` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326142 has offset 1).

The definition of A326142 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A007947(n+1)` (program `A326142.P15415912859726343761`, by `A326142.P15415912859726343761.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A326142.P3685207587789183526

`n+1+A326143(n+1)`
-/

namespace A326142.P3685207587789183526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A326143 (n + 1)

end

end A326142.P3685207587789183526

namespace A326142

/-- `n+1+A326143(n+1)` -/
def P3685207587789183526.Spec : Prop :=
  ∀ n, P3685207587789183526.a n = A326142 (n + 1)

theorem P3685207587789183526.correct : P3685207587789183526.Spec := by
  intro n
  simp only [A326142, Nat.add_sub_cancel, A326142.P3685207587789183526.a, A326142.P15415912859726343761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326143, A326143.P176859411368788289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326142

/-! ## A326142.P15415912859726343761

`A000203(n+1)-A007947(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A326142

/-- `A000203(n+1)-A007947(n+1)` -/
def P15415912859726343761.Spec : Prop :=
  ∀ n, P15415912859726343761.a n = A326142 (n + 1)

theorem P15415912859726343761.correct : P15415912859726343761.Spec := by
  intro n
  simp only [A326142, Nat.add_sub_cancel]

end A326142

/-! ## A326142.P12660990246158860601

`∑{d}[n+1, #]-∏{p}[n+1, #]`
-/

namespace A326142.P12660990246158860601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A326142.P12660990246158860601

namespace A326142

/-- `∑{d}[n+1, #]-∏{p}[n+1, #]` -/
def P12660990246158860601.Spec : Prop :=
  ∀ n, P12660990246158860601.a n = A326142 (n + 1)

end A326142

/-! ## A326142.P2324087191342790153

`A389460(n+1)-1`
-/

namespace A326142.P2324087191342790153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389460 (n + 1) - 1

end

end A326142.P2324087191342790153

namespace A326142

/-- `A389460(n+1)-1` -/
def P2324087191342790153.Spec : Prop :=
  ∀ n, P2324087191342790153.a n = A326142 (n + 1)

theorem P2324087191342790153.correct : P2324087191342790153.Spec := by
  intro n
  simp only [A326142, Nat.add_sub_cancel, A326142.P2324087191342790153.a, A326142.P15415912859726343761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A389460, A389460.P4100129062004937204.a, A075423, A075423.P4628253282240293727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326142

/-! ## A326142.P7761473107437050766

`A389461(n+1)+n`
-/

namespace A326142.P7761473107437050766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389461 (n + 1) + (n : ℤ)

end

end A326142.P7761473107437050766

namespace A326142

/-- `A389461(n+1)+n` -/
def P7761473107437050766.Spec : Prop :=
  ∀ n, P7761473107437050766.a n = A326142 (n + 1)

theorem P7761473107437050766.correct : P7761473107437050766.Spec := by
  intro n
  simp only [A326142, Nat.add_sub_cancel, A326142.P7761473107437050766.a, A326142.P15415912859726343761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A389461, A389461.P3198355901571096713.a, A075423, A075423.P4628253282240293727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326142

/-! ## A326142.P10805637023590033603

`A000203(2*n+1-n)-∏{p}[n+1, #]`
-/

namespace A326142.P10805637023590033603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1 - n) - ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A326142.P10805637023590033603

namespace A326142

/-- `A000203(2*n+1-n)-∏{p}[n+1, #]` -/
def P10805637023590033603.Spec : Prop :=
  ∀ n, P10805637023590033603.a n = A326142 (n + 1)

end A326142

/-! ## A326142.P7962171170889426276

`Δ[A160664(n)]-A007947(n+1)`
-/

namespace A326142.P7962171170889426276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007947 (n + 1)

end

end A326142.P7962171170889426276

namespace A326142

/-- `Δ[A160664(n)]-A007947(n+1)` -/
def P7962171170889426276.Spec : Prop :=
  ∀ n, P7962171170889426276.a n = A326142 (n + 1)

end A326142

/-! ## A326142.P2868749218275884117

`A066503(n+1)+A001065(n+1)`
-/

namespace A326142.P2868749218275884117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066503 (n + 1) + A001065 (n + 1)

end

end A326142.P2868749218275884117

namespace A326142

/-- `A066503(n+1)+A001065(n+1)` -/
def P2868749218275884117.Spec : Prop :=
  ∀ n, P2868749218275884117.a n = A326142 (n + 1)

theorem P2868749218275884117.correct : P2868749218275884117.Spec := by
  intro n
  simp only [A326142, Nat.add_sub_cancel, A326142.P2868749218275884117.a, A326142.P15415912859726343761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A066503, A066503.P17588364347287804265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326142

/-! ## A326142.P18250672289720124591

`A088580(n+1)-A076618(n+1)`
-/

namespace A326142.P18250672289720124591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A076618 (n + 1)

end

end A326142.P18250672289720124591

namespace A326142

/-- `A088580(n+1)-A076618(n+1)` -/
def P18250672289720124591.Spec : Prop :=
  ∀ n, P18250672289720124591.a n = A326142 (n + 1)

theorem P18250672289720124591.correct : P18250672289720124591.Spec := by
  intro n
  simp only [A326142, Nat.add_sub_cancel, A326142.P18250672289720124591.a, A326142.P15415912859726343761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A076618, A076618.P8099091245670450071.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326142

/-! ## A326142.P10634826893512570854

`A155085(n+1)-A073353(n+1)`
-/

namespace A326142.P10634826893512570854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - A073353 (n + 1)

end

end A326142.P10634826893512570854

namespace A326142

/-- `A155085(n+1)-A073353(n+1)` -/
def P10634826893512570854.Spec : Prop :=
  ∀ n, P10634826893512570854.a n = A326142 (n + 1)

theorem P10634826893512570854.correct : P10634826893512570854.Spec := by
  intro n
  simp only [A326142, Nat.add_sub_cancel, A326142.P10634826893512570854.a, A326142.P15415912859726343761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A073353, A073353.P4516188460080726977.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326142

/-! ## A326142.P11063835710653830137

`A000203(n+1)-abs(A062953(n+1))`
-/

namespace A326142.P11063835710653830137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - |A062953 (n + 1)|

end

end A326142.P11063835710653830137

namespace A326142

/-- `A000203(n+1)-abs(A062953(n+1))` -/
def P11063835710653830137.Spec : Prop :=
  ∀ n, P11063835710653830137.a n = A326142 (n + 1)

end A326142

/-! ## A326142.P17591109509721969196

`A000203(n+1)-sqrt(A078615(n+1))`
-/

namespace A326142.P17591109509721969196
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℝ) - Real.sqrt (A078615 (n + 1) : ℝ)

end

end A326142.P17591109509721969196

namespace A326142

/-- `A000203(n+1)-sqrt(A078615(n+1))` -/
def P17591109509721969196.Spec : Prop :=
  ∀ n, P17591109509721969196.a n = (A326142 (n + 1) : ℝ)

end A326142

/-! ## A326142.P13321958208357770640

`A325313(A007947(n+1))+A162296(n+1)`
-/

namespace A326142.P13321958208357770640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325313 (A007947 (n + 1)).toNat + A162296 (n + 1)

end

end A326142.P13321958208357770640

namespace A326142

/-- `A325313(A007947(n+1))+A162296(n+1)` -/
def P13321958208357770640.Spec : Prop :=
  ∀ n, P13321958208357770640.a n = A326142 (n + 1)

end A326142

/-! ## A326142.P15004870644185849118

`A000203(n+1)-A015052(A015052(n+1))`
-/

namespace A326142.P15004870644185849118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A015052 (A015052 (n + 1)).toNat

end

end A326142.P15004870644185849118

namespace A326142

/-- `A000203(n+1)-A015052(A015052(n+1))` -/
def P15004870644185849118.Spec : Prop :=
  ∀ n, P15004870644185849118.a n = A326142 (n + 1)

end A326142

/-! ## A326142.P17432263152461953928

`A000203(n+1)-A015053(A015053(n+1))`
-/

namespace A326142.P17432263152461953928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A015053 (A015053 (n + 1)).toNat

end

end A326142.P17432263152461953928

namespace A326142

/-- `A000203(n+1)-A015053(A015053(n+1))` -/
def P17432263152461953928.Spec : Prop :=
  ∀ n, P17432263152461953928.a n = A326142 (n + 1)

end A326142

/-! ## A326142.P11056520711416559565

`A000203(n+1)-A053166(A053166(n+1))`
-/

namespace A326142.P11056520711416559565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A053166 (A053166 (n + 1)).toNat

end

end A326142.P11056520711416559565

namespace A326142

/-- `A000203(n+1)-A053166(A053166(n+1))` -/
def P11056520711416559565.Spec : Prop :=
  ∀ n, P11056520711416559565.a n = A326142 (n + 1)

end A326142

/-! ## A326142.P10120242718472986020

`A034448(n+1)+A048146(n+1)-A007947(n+1)`
-/

namespace A326142.P10120242718472986020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A007947 (n + 1))

end

end A326142.P10120242718472986020

namespace A326142

/-- `A034448(n+1)+A048146(n+1)-A007947(n+1)` -/
def P10120242718472986020.Spec : Prop :=
  ∀ n, P10120242718472986020.a n = A326142 (n + 1)

theorem P10120242718472986020.correct : P10120242718472986020.Spec := by
  intro n
  simp only [A326142, Nat.add_sub_cancel, A326142.P10120242718472986020.a, A326142.P15415912859726343761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326142

/-! ## A326142.P12194420864275779478

`A064212(n+1)-(A034448(n+1)+A007947(n+1))`
-/

namespace A326142.P12194420864275779478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064212 (n + 1) - (A034448 (n + 1) + A007947 (n + 1))

end

end A326142.P12194420864275779478

namespace A326142

/-- `A064212(n+1)-(A034448(n+1)+A007947(n+1))` -/
def P12194420864275779478.Spec : Prop :=
  ∀ n, P12194420864275779478.a n = A326142 (n + 1)

theorem P12194420864275779478.correct : P12194420864275779478.Spec := by
  intro n
  simp only [A326142, Nat.add_sub_cancel, A326142.P12194420864275779478.a, A326142.P15415912859726343761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A034448, A034448.P17017727775393200719.a, A064212, A064212.P10229143328642602721.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326142

/-! ## A326142.P13427551015271616703

`A003557(n+1)+A326187(n+1)-A007947(n+1)`
-/

namespace A326142.P13427551015271616703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) + (A326187 (n + 1) - A007947 (n + 1))

end

end A326142.P13427551015271616703

namespace A326142

/-- `A003557(n+1)+A326187(n+1)-A007947(n+1)` -/
def P13427551015271616703.Spec : Prop :=
  ∀ n, P13427551015271616703.a n = A326142 (n + 1)

theorem P13427551015271616703.correct : P13427551015271616703.Spec := by
  intro n
  simp only [A326142, Nat.add_sub_cancel, A326142.P13427551015271616703.a, A326142.P15415912859726343761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326187, A326187.P12520565609780871122.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326142

/-! ## A326142.P7581461500285732646

`A057723(n+1)+A308135(n+1)-A007947(n+1)`
-/

namespace A326142.P7581461500285732646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) + (A308135 (n + 1) - A007947 (n + 1))

end

end A326142.P7581461500285732646

namespace A326142

/-- `A057723(n+1)+A308135(n+1)-A007947(n+1)` -/
def P7581461500285732646.Spec : Prop :=
  ∀ n, P7581461500285732646.a n = A326142 (n + 1)

theorem P7581461500285732646.correct : P7581461500285732646.Spec := by
  intro n
  simp only [A326142, Nat.add_sub_cancel, A326142.P7581461500285732646.a, A326142.P15415912859726343761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A057723, A057723.P9092718560045484766.a, A308135, A308135.P17632068956087446165.a, A003557, A003557.P6364735403900941810.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326142

/-!
# A326143: a(n) = A326142(n) - n, where A326142 gives the sum of all other divisors of n except its largest squarefree divisor.

The programs for A326143, the canonical program `A326143.P176859411368788289` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326143 has offset 1).

The definition of A326143 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A326142(n+1)-(n+1)` (program `A326143.P176859411368788289`, by `A326143.P176859411368788289.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A326143.P176859411368788289

`A326142(n+1)-(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A326143

/-- `A326142(n+1)-(n+1)` -/
def P176859411368788289.Spec : Prop :=
  ∀ n, P176859411368788289.a n = A326143 (n + 1)

theorem P176859411368788289.correct : P176859411368788289.Spec := by
  intro n
  simp only [A326143, Nat.add_sub_cancel]

end A326143

/-! ## A326143.P2922211643390362094

`A001065(n+1)-A007947(n+1)`
-/

namespace A326143.P2922211643390362094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A007947 (n + 1)

end

end A326143.P2922211643390362094

namespace A326143

/-- `A001065(n+1)-A007947(n+1)` -/
def P2922211643390362094.Spec : Prop :=
  ∀ n, P2922211643390362094.a n = A326143 (n + 1)

theorem P2922211643390362094.correct : P2922211643390362094.Spec := by
  intro n
  simp only [A326143, Nat.add_sub_cancel, A326143.P2922211643390362094.a, A326143.P176859411368788289.a, A001065, A001065.P4097147489331274860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326142, A326142.P15415912859726343761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326143

/-! ## A326143.P9488372104050503058

`A066503(n+1)-A033879(n+1)`
-/

namespace A326143.P9488372104050503058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066503 (n + 1) - A033879 (n + 1)

end

end A326143.P9488372104050503058

namespace A326143

/-- `A066503(n+1)-A033879(n+1)` -/
def P9488372104050503058.Spec : Prop :=
  ∀ n, P9488372104050503058.a n = A326143 (n + 1)

theorem P9488372104050503058.correct : P9488372104050503058.Spec := by
  intro n
  simp only [A326143, Nat.add_sub_cancel, A326143.P9488372104050503058.a, A326143.P176859411368788289.a, A033879, A033879.P11735613842914743111.a, A066503, A066503.P17588364347287804265.a, A326142, A326142.P15415912859726343761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326143

/-! ## A326143.P13910860531400449981

`A000203(n+1)-A007947(n+1)-(n+1)`
-/

namespace A326143.P13910860531400449981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A007947 (n + 1) - (n + 1 : ℤ)

end

end A326143.P13910860531400449981

namespace A326143

/-- `A000203(n+1)-A007947(n+1)-(n+1)` -/
def P13910860531400449981.Spec : Prop :=
  ∀ n, P13910860531400449981.a n = A326143 (n + 1)

end A326143

/-! ## A326143.P14159129289328296828

`∑{d}[n+1, #]-∏{p}[n+1, #]-(n+1)`
-/

namespace A326143.P14159129289328296828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A326143.P14159129289328296828

namespace A326143

/-- `∑{d}[n+1, #]-∏{p}[n+1, #]-(n+1)` -/
def P14159129289328296828.Spec : Prop :=
  ∀ n, P14159129289328296828.a n = A326143 (n + 1)

end A326143

/-! ## A326143.P9012605024854761199

`A389461(n+1)-1`
-/

namespace A326143.P9012605024854761199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389461 (n + 1) - 1

end

end A326143.P9012605024854761199

namespace A326143

/-- `A389461(n+1)-1` -/
def P9012605024854761199.Spec : Prop :=
  ∀ n, P9012605024854761199.a n = A326143 (n + 1)

theorem P9012605024854761199.correct : P9012605024854761199.Spec := by
  intro n
  simp only [A326143, Nat.add_sub_cancel, A326143.P9012605024854761199.a, A326143.P176859411368788289.a, A326142, A326142.P15415912859726343761.a, A389461, A389461.P3198355901571096713.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A075423, A075423.P4628253282240293727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326143

/-! ## A326143.P14531557694339435810

`A389460(n+1)-(n+2)`
-/

namespace A326143.P14531557694339435810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389460 (n + 1) - (n + 2 : ℤ)

end

end A326143.P14531557694339435810

namespace A326143

/-- `A389460(n+1)-(n+2)` -/
def P14531557694339435810.Spec : Prop :=
  ∀ n, P14531557694339435810.a n = A326143 (n + 1)

theorem P14531557694339435810.correct : P14531557694339435810.Spec := by
  intro n
  simp only [A326143, Nat.add_sub_cancel, A326143.P14531557694339435810.a, A326143.P176859411368788289.a, A326142, A326142.P15415912859726343761.a, A389460, A389460.P4100129062004937204.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A075423, A075423.P4628253282240293727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326143

/-! ## A326143.P4769203360402789344

`A066503(n+1)+A033880(n+1)`
-/

namespace A326143.P4769203360402789344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066503 (n + 1) + A033880 (n + 1)

end

end A326143.P4769203360402789344

namespace A326143

/-- `A066503(n+1)+A033880(n+1)` -/
def P4769203360402789344.Spec : Prop :=
  ∀ n, P4769203360402789344.a n = A326143 (n + 1)

theorem P4769203360402789344.correct : P4769203360402789344.Spec := by
  intro n
  simp only [A326143, Nat.add_sub_cancel, A326143.P4769203360402789344.a, A326143.P176859411368788289.a, A033880, A033880.P6005875780263802708.a, A066503, A066503.P17588364347287804265.a, A326142, A326142.P15415912859726343761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326143

/-! ## A326143.P6039695365638972145

`A000203(n+1)-A073353(n+1)`
-/

namespace A326143.P6039695365638972145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A073353 (n + 1)

end

end A326143.P6039695365638972145

namespace A326143

/-- `A000203(n+1)-A073353(n+1)` -/
def P6039695365638972145.Spec : Prop :=
  ∀ n, P6039695365638972145.a n = A326143 (n + 1)

theorem P6039695365638972145.correct : P6039695365638972145.Spec := by
  intro n
  simp only [A326143, Nat.add_sub_cancel, A326143.P6039695365638972145.a, A326143.P176859411368788289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A073353, A073353.P4516188460080726977.a, A326142, A326142.P15415912859726343761.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326143

/-! ## A326143.P6778767510414183844

`A325977(n+1)+A325974(n+1)-∏{p}[n+1, #]`
-/

namespace A326143.P6778767510414183844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325977 (n + 1) + A325974 (n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A326143.P6778767510414183844

namespace A326143

/-- `A325977(n+1)+A325974(n+1)-∏{p}[n+1, #]` -/
def P6778767510414183844.Spec : Prop :=
  ∀ n, P6778767510414183844.a n = A326143 (n + 1)

end A326143

/-! ## A326143.P15738808008886938275

`A001065(n+1)-A015052(A015052(n+1))`
-/

namespace A326143.P15738808008886938275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A015052 (A015052 (n + 1)).toNat

end

end A326143.P15738808008886938275

namespace A326143

/-- `A001065(n+1)-A015052(A015052(n+1))` -/
def P15738808008886938275.Spec : Prop :=
  ∀ n, P15738808008886938275.a n = A326143 (n + 1)

end A326143

/-! ## A326143.P8210638674871425017

`A001065(n+1)-A015053(A015053(n+1))`
-/

namespace A326143.P8210638674871425017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A015053 (A015053 (n + 1)).toNat

end

end A326143.P8210638674871425017

namespace A326143

/-- `A001065(n+1)-A015053(A015053(n+1))` -/
def P8210638674871425017.Spec : Prop :=
  ∀ n, P8210638674871425017.a n = A326143 (n + 1)

end A326143

/-! ## A326143.P1168625230376752785

`A034460(n+1)+A048146(n+1)-A007947(n+1)`
-/

namespace A326143.P1168625230376752785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + (A048146 (n + 1) - A007947 (n + 1))

end

end A326143.P1168625230376752785

namespace A326143

/-- `A034460(n+1)+A048146(n+1)-A007947(n+1)` -/
def P1168625230376752785.Spec : Prop :=
  ∀ n, P1168625230376752785.a n = A326143 (n + 1)

theorem P1168625230376752785.correct : P1168625230376752785.Spec := by
  intro n
  simp only [A326143, Nat.add_sub_cancel, A326143.P1168625230376752785.a, A326143.P176859411368788289.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A034460, A034460.P1958235575820581513.a, A048146, A048146.P9985884013456677192.a, A326142, A326142.P15415912859726343761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326143

/-! ## A326143.P13336020433583853634

`A007913(n+1)+A326127(n+1)-A007947(n+1)`
-/

namespace A326143.P13336020433583853634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) + (A326127 (n + 1) - A007947 (n + 1))

end

end A326143.P13336020433583853634

namespace A326143

/-- `A007913(n+1)+A326127(n+1)-A007947(n+1)` -/
def P13336020433583853634.Spec : Prop :=
  ∀ n, P13336020433583853634.a n = A326143 (n + 1)

theorem P13336020433583853634.correct : P13336020433583853634.Spec := by
  intro n
  simp only [A326143, Nat.add_sub_cancel, A326143.P13336020433583853634.a, A326143.P176859411368788289.a, A007913, A007913.P8131970495124731496.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326127, A326127.P6827603046472699184.a, A326142, A326142.P15415912859726343761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A326126, A326126.P126110095243043684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326143

/-! ## A326143.P9019188537619495120

`A001615(n+1)-(A344705(n+1)+A007947(n+1))`
-/

namespace A326143.P9019188537619495120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) - (A344705 (n + 1) + A007947 (n + 1))

end

end A326143.P9019188537619495120

namespace A326143

/-- `A001615(n+1)-(A344705(n+1)+A007947(n+1))` -/
def P9019188537619495120.Spec : Prop :=
  ∀ n, P9019188537619495120.a n = A326143 (n + 1)

theorem P9019188537619495120.correct : P9019188537619495120.Spec := by
  intro n
  simp only [A326143, Nat.add_sub_cancel, A326143.P9019188537619495120.a, A326143.P176859411368788289.a, A001615, A001615.P12078511981713404634.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326142, A326142.P15415912859726343761.a, A344705, A344705.P1217591774318848897.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326143

/-! ## A326143.P2102229927394285885

`A057723(n+1)-(A336564(n+1)+A007947(n+1))`
-/

namespace A326143.P2102229927394285885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) - (A336564 (n + 1) + A007947 (n + 1))

end

end A326143.P2102229927394285885

namespace A326143

/-- `A057723(n+1)-(A336564(n+1)+A007947(n+1))` -/
def P2102229927394285885.Spec : Prop :=
  ∀ n, P2102229927394285885.a n = A326143 (n + 1)

theorem P2102229927394285885.correct : P2102229927394285885.Spec := by
  intro n
  simp only [A326143, Nat.add_sub_cancel, A326143.P2102229927394285885.a, A326143.P176859411368788289.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A057723, A057723.P9092718560045484766.a, A326142, A326142.P15415912859726343761.a, A336564, A336564.P7523591857433776956.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A308135, A308135.P17632068956087446165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326143

/-! ## A326143.P8637629797086061865

`A162296(n+1)+A325313(n+1)-A007947(n+1)`
-/

namespace A326143.P8637629797086061865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (n + 1) + (A325313 (n + 1) - A007947 (n + 1))

end

end A326143.P8637629797086061865

namespace A326143

/-- `A162296(n+1)+A325313(n+1)-A007947(n+1)` -/
def P8637629797086061865.Spec : Prop :=
  ∀ n, P8637629797086061865.a n = A326143 (n + 1)

end A326143

/-! ## A326143.P9428885885648820817

`A308135(n+1)+A336563(n+1)-A007947(n+1)`
-/

namespace A326143.P9428885885648820817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308135 (n + 1) + (A336563 (n + 1) - A007947 (n + 1))

end

end A326143.P9428885885648820817

namespace A326143

/-- `A308135(n+1)+A336563(n+1)-A007947(n+1)` -/
def P9428885885648820817.Spec : Prop :=
  ∀ n, P9428885885648820817.a n = A326143 (n + 1)

end A326143

/-! ## A326143.P10112721733713925120

`A325972(n+1)-(A325970(n+1)+A007947(n+1))`
-/

namespace A326143.P10112721733713925120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325972 (n + 1) - (A325970 (n + 1) + A007947 (n + 1))

end

end A326143.P10112721733713925120

namespace A326143

/-- `A325972(n+1)-(A325970(n+1)+A007947(n+1))` -/
def P10112721733713925120.Spec : Prop :=
  ∀ n, P10112721733713925120.a n = A326143 (n + 1)

end A326143

/-! ## A326143.P17339122274703455956

`A066503(n+1)+A326127(n+1)-A326128(n+1)`
-/

namespace A326143.P17339122274703455956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066503 (n + 1) + (A326127 (n + 1) - A326128 (n + 1))

end

end A326143.P17339122274703455956

namespace A326143

/-- `A066503(n+1)+A326127(n+1)-A326128(n+1)` -/
def P17339122274703455956.Spec : Prop :=
  ∀ n, P17339122274703455956.a n = A326143 (n + 1)

theorem P17339122274703455956.correct : P17339122274703455956.Spec := by
  intro n
  simp only [A326143, Nat.add_sub_cancel, A326143.P17339122274703455956.a, A326143.P176859411368788289.a, A066503, A066503.P17588364347287804265.a, A326127, A326127.P6827603046472699184.a, A326128, A326128.P4962900157914824511.a, A326142, A326142.P15415912859726343761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P8131970495124731496.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326126, A326126.P126110095243043684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326143

/-!
# A326144: a(n) = gcd(A066503(n), A326143(n)) = gcd(n - A007947(n), sigma(n) - A007947(n) - n).

The programs for A326144, the canonical program `A326144.P8512876731767760408` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326144 has offset 1).

The definition of A326144 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326144.P8512876731767760408

`gcd(A066503(n+1), A326143(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A326144

/-- `gcd(A066503(n+1), A326143(n+1))` -/
def P8512876731767760408.Spec : Prop :=
  ∀ n, (P8512876731767760408.a n : ℤ) = A326144 (n + 1)

theorem P8512876731767760408.correct : P8512876731767760408.Spec := by
  intro n
  simp only [A326144, Nat.add_sub_cancel]

end A326144

/-! ## A326144.P9623913864877711455

`gcd(n+1-A007947(n+1), A000203(n+1)-A007947(n+1)-(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326144.P9623913864877711455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A007947 (n + 1)) (A000203 (n + 1) - A007947 (n + 1) - (n + 1 : ℤ))

end

end A326144.P9623913864877711455

namespace A326144

/-- `gcd(n+1-A007947(n+1), A000203(n+1)-A007947(n+1)-(n+1))` -/
def P9623913864877711455.Spec : Prop :=
  ∀ n, (P9623913864877711455.a n : ℤ) = A326144 (n + 1)

end A326144

/-! ## A326144.P9709125342105831233

`1-A336646(n+1)+n`
-/

namespace A326144.P9709125342105831233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A336646 (n + 1) + (n : ℤ)

end

end A326144.P9709125342105831233

namespace A326144

/-- `1-A336646(n+1)+n` -/
def P9709125342105831233.Spec : Prop :=
  ∀ n, P9709125342105831233.a n = A326144 (n + 1)

theorem P9709125342105831233.correct : P9709125342105831233.Spec := by
  intro n
  simp only [A326144, Nat.add_sub_cancel, A326144.P9709125342105831233.a, A326144.P8512876731767760408.a, A066503, A066503.P17588364347287804265.a, A326143, A326143.P176859411368788289.a, A336646, A336646.P1396805071423227926.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326142, A326142.P15415912859726343761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326144

/-! ## A326144.P9979857816271793754

`n-A023443(A336646(n+1))`
-/

namespace A326144.P9979857816271793754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A336646 (n + 1)).toNat

end

end A326144.P9979857816271793754

namespace A326144

/-- `n-A023443(A336646(n+1))` -/
def P9979857816271793754.Spec : Prop :=
  ∀ n, P9979857816271793754.a n = A326144 (n + 1)

end A326144

/-! ## A326144.P7234785451554978477

`-(A336646(n+1)+A001478(n+1))`
-/

namespace A326144.P7234785451554978477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A336646 (n + 1) + A001478 (n + 1))

end

end A326144.P7234785451554978477

namespace A326144

/-- `-(A336646(n+1)+A001478(n+1))` -/
def P7234785451554978477.Spec : Prop :=
  ∀ n, P7234785451554978477.a n = A326144 (n + 1)

theorem P7234785451554978477.correct : P7234785451554978477.Spec := by
  intro n
  simp only [A326144, Nat.add_sub_cancel, A326144.P7234785451554978477.a, A326144.P8512876731767760408.a, A001478, A001478.P11279598861711037921.a, A066503, A066503.P17588364347287804265.a, A326143, A326143.P176859411368788289.a, A336646, A336646.P1396805071423227926.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326142, A326142.P15415912859726343761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326144

/-!
# A326145: Numbers n for which n - A007947(n) is equal to gcd(n - A007947(n), sigma(n) - A007947(n) - n).

The programs for A326145, there is no canonical definition to state claims against.
-/

/-! ## A326145.P10321284674607990177

`filter[A336550(n+1), A135993(#)]`
-/

namespace A326145.P10321284674607990177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135993 (f1 j).toNat = 1) n)

end

end A326145.P10321284674607990177

/-! ## A326145.P13294632690808255748

`∩[A014847(n+1), A336550(n+1)]`
-/

namespace A326145.P13294632690808255748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326145.P13294632690808255748

/-!
# A326146: a(n) = sigma(n) - A020639(n) - n, where A020639 gives the smallest prime factor of n, and sigma is the sum of divisors of n.

The programs for A326146, there is no canonical definition to state claims against.
-/

/-! ## A326146.P1183123299518794341

`A001065(n+1)-A020639(n+1)`
-/

namespace A326146.P1183123299518794341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A020639 (n + 1)

end

end A326146.P1183123299518794341

/-! ## A326146.P2701153583079531413

`A000203(n+1)-A061228(n+1)`
-/

namespace A326146.P2701153583079531413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A061228 (n + 1)

end

end A326146.P2701153583079531413

/-! ## A326146.P10916270591434650742

`A000203(n+1)-A020639(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326146.P10916270591434650742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A020639 (n + 1) - (n + 1 : ℤ)

end

end A326146.P10916270591434650742

/-! ## A326146.P6858414785485831237

`A048050(n+1)-A057237(n+1)`
-/

namespace A326146.P6858414785485831237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1) - A057237 (n + 1)

end

end A326146.P6858414785485831237

/-! ## A326146.P13158907269015303344

`sqrt(A072861(n+1))-A061228(n+1)`
-/

namespace A326146.P13158907269015303344
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) - (A061228 (n + 1) : ℝ)

end

end A326146.P13158907269015303344

/-! ## A326146.P15828591701069378415

`A091818(n+1)/2-A020639(n+1)`
-/

namespace A326146.P15828591701069378415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (n + 1) : ℚ) / 2 - (A020639 (n + 1) : ℚ)

end

end A326146.P15828591701069378415

/-! ## A326146.P4284376501856421979

`A237588(n+1)-A020639(n+1)+n`
-/

namespace A326146.P4284376501856421979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) - A020639 (n + 1) + (n : ℤ)

end

end A326146.P4284376501856421979

/-! ## A326146.P2985398505826187201

`∑[A340793(n+1)-1]-A020639(n+1)`
-/

namespace A326146.P2985398505826187201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A020639 (n + 1)

end

end A326146.P2985398505826187201

/-! ## A326146.P11012116342339532079

`A245092(2*n+1)-(A020639(n+1)+1+n)`
-/

namespace A326146.P11012116342339532079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - (A020639 (n + 1) + 1 + (n : ℤ))

end

end A326146.P11012116342339532079

/-! ## A326146.P2316213381912909991

`A000203(n+1)-(A020725(A020639(n+1))+n)`
-/

namespace A326146.P2316213381912909991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A020725 (A020639 (n + 1)).toNat + (n : ℤ))

end

end A326146.P2316213381912909991

/-! ## A326146.P11112553453163022383

`A325817(n+1)+A325826(n+1)-A020639(n+1)`
-/

namespace A326146.P11112553453163022383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325817 (n + 1) + (A325826 (n + 1) - A020639 (n + 1))

end

end A326146.P11112553453163022383

/-! ## A326146.P18281568881264804858

`A326065(n+1)+A326067(n+1)-A020639(n+1)`
-/

namespace A326146.P18281568881264804858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (n + 1) + (A326067 (n + 1) - A020639 (n + 1))

end

end A326146.P18281568881264804858

/-! ## A326146.P308190379022891648

`A325817(n+1)+A325818(n+1)-A061228(n+1)`
-/

namespace A326146.P308190379022891648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325817 (n + 1) + (A325818 (n + 1) - A061228 (n + 1))

end

end A326146.P308190379022891648

/-! ## A326146.P5385949075531586761

`A325965(n+1)+A325966(n+1)-A061228(n+1)`
-/

namespace A326146.P5385949075531586761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325965 (n + 1) + (A325966 (n + 1) - A061228 (n + 1))

end

end A326146.P5385949075531586761

/-! ## A326146.P11103970291165715214

`A325971(n+1)+A325972(n+1)-A061228(n+1)`
-/

namespace A326146.P11103970291165715214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325971 (n + 1) + (A325972 (n + 1) - A061228 (n + 1))

end

end A326146.P11103970291165715214

/-!
# A326147: a(n) = gcd(n-A020639(n), sigma(n)-A020639(n)-n), where A020639 gives the smallest prime factor of n, and sigma is the sum of divisors of n.

The programs for A326147, there is no canonical definition to state claims against.
-/

/-! ## A326147.P771408786868118409

`gcd(n+1-A020639(n+1), A000203(n+1)-A020639(n+1)-(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326147.P771408786868118409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A020639 (n + 1)) (A000203 (n + 1) - A020639 (n + 1) - (n + 1 : ℤ))

end

end A326147.P771408786868118409

/-! ## A326147.P16499863596597403460

`gcd(A033879(n+1), A073759(n+1))`
-/

namespace A326147.P16499863596597403460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033879 (n + 1)) (A073759 (n + 1))

end

end A326147.P16499863596597403460

/-! ## A326147.P12307183410137139704

`gcd(A033880(n+1), A326146(n+1))`
-/

namespace A326147.P12307183410137139704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033880 (n + 1)) (A326146 (n + 1))

end

end A326147.P12307183410137139704

/-! ## A326147.P4050351544644590506

`gcd(-A033879(n+1), -A326146(n+1))`
-/

namespace A326147.P4050351544644590506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A033879 (n + 1)) (-A326146 (n + 1))

end

end A326147.P4050351544644590506

/-! ## A326147.P13499491427394756266

`gcd(1-A237588(n+1), A073759(A348776(n+1)))`
-/

namespace A326147.P13499491427394756266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A237588 (n + 1)) (A073759 (A348776 (n + 1)).toNat)

end

end A326147.P13499491427394756266

/-! ## A326147.P13258971605537971482

`gcd(A326068(A103517(n)), A326146(n+1))`
-/

namespace A326147.P13258971605537971482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326068 (A103517 n).toNat) (A326146 (n + 1))

end

end A326147.P13258971605537971482

/-!
# A326149: Numbers whose product of prime indices is divisible by their sum of prime indices.

The programs for A326149, there is no canonical definition to state claims against.
-/

/-! ## A326149.P2064738207168984458

`∪[A301987(n+1), A380216(n+1)]`
-/

namespace A326149.P2064738207168984458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326149.P2064738207168984458

/-! ## A326149.P3740154378664099988

`∪[A000040(n+1), A326150(n+1)]`
-/

namespace A326149.P3740154378664099988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326149.P3740154378664099988

/-! ## A326149.P8907232086773452710

`∪[A301987(n+1), A326150(n+1)]`
-/

namespace A326149.P8907232086773452710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326149.P8907232086773452710

/-! ## A326149.P1640637086660818702

`∪[A319333(n+1), A326150(n+1)]`
-/

namespace A326149.P1640637086660818702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326149.P1640637086660818702

/-! ## A326149.P11369948555913296011

`∪[A318589(n+1), A326150(n+1)]`
-/

namespace A326149.P11369948555913296011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326149.P11369948555913296011

/-! ## A326149.P12889562207116701801

`∪[A326150(n+1), A327783(n+1)]`
-/

namespace A326149.P12889562207116701801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326149.P12889562207116701801

/-!
# A326150: Nonprime numbers whose product of prime indices is divisible by their sum of prime indices.

The programs for A326150, there is no canonical definition to state claims against.
-/

/-! ## A326150.P15706759080026534741

`filter[A326149(n+1), A005171(#)]`
-/

namespace A326150.P15706759080026534741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A326150.P15706759080026534741

/-! ## A326150.P3276046774644271241

`filter[A326149(n+1), A066247(#)]`
-/

namespace A326150.P3276046774644271241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A326150.P3276046774644271241

/-! ## A326150.P6722110837006274957

`filter[A326149(n+1), A202238(#)]`
-/

namespace A326150.P6722110837006274957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A326150.P6722110837006274957

/-! ## A326150.P12419738927275721122

`∩[A002808(n+1), A326149(n+1)]`
-/

namespace A326150.P12419738927275721122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326150.P12419738927275721122

/-! ## A326150.P12617244863386956497

`∩[A009188(n+1), A326149(n+1)]`
-/

namespace A326150.P12617244863386956497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326150.P12617244863386956497

/-! ## A326150.P8672475884620845337

`∩[A018252(n+1), A326149(n+1)]`
-/

namespace A326150.P8672475884620845337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326150.P8672475884620845337

/-! ## A326150.P12910055537082115165

`∩[A056653(n+1), A326149(n+1)]`
-/

namespace A326150.P12910055537082115165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326150.P12910055537082115165

/-! ## A326150.P11614625034106464929

`∩[A093642(n+1), A326149(n+1)]`
-/

namespace A326150.P11614625034106464929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326150.P11614625034106464929

/-! ## A326150.P8517743181420313319

`∩[A105441(n+1), A326149(n+1)]`
-/

namespace A326150.P8517743181420313319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326150.P8517743181420313319

/-! ## A326150.P16363800727080788016

`∩[A111774(n+1), A326149(n+1)]`
-/

namespace A326150.P16363800727080788016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326150.P16363800727080788016

/-!
# A326151: Numbers whose product of prime indices is twice their sum of prime indices.

The programs for A326151, there is no canonical definition to state claims against.
-/

/-! ## A326151.P13575269768237036480

`eq[A056239(n+1), A325036(n+1)]+1`
-/

namespace A326151.P13575269768237036480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A326151.P13575269768237036480

/-! ## A326151.P7025239751110420340

`A065475(eq[A056239(n+1), A325036(n+1)])`
-/

namespace A326151.P7025239751110420340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A326151.P7025239751110420340

/-! ## A326151.P6309225776798770571

`A020725(eq[2*A056239(n+1), A003963(n+1)])`
-/

namespace A326151.P6309225776798770571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A326151.P6309225776798770571

/-! ## A326151.P4849503790466020027

`A020725(eq[A003963(n+1)/2, A056239(n+1)])`
-/

namespace A326151.P4849503790466020027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A326151.P4849503790466020027

/-!
# A326152: Number of integer partitions of n whose product of parts is 2 * n.

The programs for A326152, there is no canonical definition to state claims against.
-/

/-! ## A326152.P4599967047312045346

`A216599(A004277(n))%A099132(n)`
-/

namespace A326152.P4599967047312045346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216599 (A004277 n).toNat) (A099132 n)

end

end A326152.P4599967047312045346

/-! ## A326152.P5341507358995160595

`A216599(gcd(2*n, A215704(n)))`
-/

namespace A326152.P5341507358995160595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216599 (Int.gcd (2 * n : ℤ) (A215704 n))

end

end A326152.P5341507358995160595

/-! ## A326152.P15033875902656601665

`A330936(A004277(n))%A291700(n)`
-/

namespace A326152.P15033875902656601665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330936 (A004277 n).toNat) (A291700 n)

end

end A326152.P15033875902656601665

/-! ## A326152.P6245183611816149153

`A006530(2*A246372(n+1))%A323349(A323523(n))`
-/

namespace A326152.P6245183611816149153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (2 * A246372 (n + 1)).toNat) (A323349 (A323523 n).toNat)

end

end A326152.P6245183611816149153

/-!
# A326153: Numerator of the product of prime indices of n divided by the sum of prime indices of n, n > 1.

The programs for A326153, there is no canonical definition to state claims against.
-/

/-! ## A326153.P17717503755243327289

`A003963(n+2)/A056239(n+2)*A326154(n+2)`
-/

namespace A326153.P17717503755243327289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (n + 2) : ℚ) / (A056239 (n + 2) : ℚ) * (A326154 (n + 2) : ℚ)

end

end A326153.P17717503755243327289

/-! ## A326153.P8250453633874891509

`A319567(A066638(n+1)-A089814(n))`
-/

namespace A326153.P8250453633874891509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319567 (A066638 (n + 1) - A089814 n).toNat

end

end A326153.P8250453633874891509

/-! ## A326153.P7048117270837336218

`A319567(A053632(n)*A242474(n+1))`
-/

namespace A326153.P7048117270837336218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319567 (A053632 n * A242474 (n + 1)).toNat

end

end A326153.P7048117270837336218

/-! ## A326153.P85496497912632249

`A319567(A066638(n+1)%A156581(n))`
-/

namespace A326153.P85496497912632249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319567 (Int.tmod (A066638 (n + 1)) (A156581 n)).toNat

end

end A326153.P85496497912632249

/-! ## A326153.P2406826842939672683

`A319567(A242474(n+1)%A156581(n))`
-/

namespace A326153.P2406826842939672683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319567 (Int.tmod (A242474 (n + 1)) (A156581 n)).toNat

end

end A326153.P2406826842939672683

/-!
# A326154: Denominator of the product of prime indices of n divided by the sum of prime indices of n, n > 1.

The programs for A326154, there is no canonical definition to state claims against.
-/

/-! ## A326154.P15971796433457893966

`lcm(A003963(n+2), A056239(n+2))/A003963(n+2)`
-/

namespace A326154.P15971796433457893966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A003963 (n + 2)) (A056239 (n + 2)) : ℚ) / (A003963 (n + 2) : ℚ)

end

end A326154.P15971796433457893966

/-! ## A326154.P2982566230554458174

`A056239(n+2)/A003963(n+2)*A326153(n+2)`
-/

namespace A326154.P2982566230554458174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 2) : ℚ) / (A003963 (n + 2) : ℚ) * (A326153 (n + 2) : ℚ)

end

end A326154.P2982566230554458174

/-! ## A326154.P15662839089668295138

`A326839(A327401(3*n+4)+n+1)`
-/

namespace A326154.P15662839089668295138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326839 (A327401 (3 * n + 4) + (n + 1 : ℤ)).toNat

end

end A326154.P15662839089668295138

/-! ## A326154.P649610620662688776

`A326839(n+2)-A277149(A092325(n+1))`
-/

namespace A326154.P649610620662688776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326839 (n + 2) - A277149 (A092325 (n + 1)).toNat

end

end A326154.P649610620662688776

/-! ## A326154.P199125362426036729

`A326839(n+2)/A078203(A326851(2*n+1))`
-/

namespace A326154.P199125362426036729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326839 (n + 2) : ℚ) / (A078203 (A326851 (2 * n + 1)).toNat : ℚ)

end

end A326154.P199125362426036729

/-!
# A326155: Positive integers whose sum of prime indices is divisible by their product of prime indices.

The programs for A326155, the canonical program `A326155.P7885909250933067550` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326155 has offset 1).

The definition of A326155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326155.P7885909250933067550

`eq[0, A056239(n+1)%A003963(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A326155

/-- `eq[0, A056239(n+1)%A003963(n+1)]+1` -/
def P7885909250933067550.Spec : Prop :=
  ∀ n, (P7885909250933067550.a n : ℤ) = A326155 (n + 1)

theorem P7885909250933067550.correct : P7885909250933067550.Spec := by
  intro n
  simp only [A326155, Nat.add_sub_cancel]

end A326155

/-! ## A326155.P1502011771700713194

`record[(C(n, n²)+n)/A326153(A233583(n+1))]`
-/

namespace A326155.P1502011771700713194
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (n ^ 2) + n : ℚ) / (A326153 (A233583 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326155.P1502011771700713194

namespace A326155

/-- `record[(C(n, n²)+n)/A326153(A233583(n+1))]` -/
def P1502011771700713194.Spec : Prop :=
  ∀ n, P1502011771700713194.a n = (A326155 (n + 1) : ℚ)

end A326155

/-! ## A326155.P6273444358952835508

`eq[A054977(n), A326153(A233583(n+1))]`
-/

namespace A326155.P6273444358952835508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326153 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326155.P6273444358952835508

namespace A326155

/-- `eq[A054977(n), A326153(A233583(n+1))]` -/
def P6273444358952835508.Spec : Prop :=
  ∀ n, (P6273444358952835508.a n : ℤ) = A326155 (n + 1)

end A326155

/-! ## A326155.P5055265273961551353

`eq[A057427(n), A326153(A233583(n+1))]`
-/

namespace A326155.P5055265273961551353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326153 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326155.P5055265273961551353

namespace A326155

/-- `eq[A057427(n), A326153(A233583(n+1))]` -/
def P5055265273961551353.Spec : Prop :=
  ∀ n, (P5055265273961551353.a n : ℤ) = A326155 (n + 1)

end A326155

/-! ## A326155.P14683504002038447667

`eq[A158388(n), A326153(A233583(n+1))]`
-/

namespace A326155.P14683504002038447667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326153 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326155.P14683504002038447667

namespace A326155

/-- `eq[A158388(n), A326153(A233583(n+1))]` -/
def P14683504002038447667.Spec : Prop :=
  ∀ n, (P14683504002038447667.a n : ℤ) = A326155 (n + 1)

end A326155

/-!
# A326156: Number of nonempty subsets of {1..n} whose product is divisible by their sum.

The programs for A326156, there is no canonical definition to state claims against.
-/

/-! ## A326156.P6797906515143775805

`∑[A326179(n)]`
-/

namespace A326156.P6797906515143775805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326156.P6797906515143775805

/-! ## A326156.P15761001297297054779

`∑{d}[2^n, A326179(log2(#))]`
-/

namespace A326156.P15761001297297054779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326179 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A326156.P15761001297297054779

/-! ## A326156.P4691858725417643234

`record[A027633(A318271(n+1))]`
-/

namespace A326156.P4691858725417643234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027633 (A318271 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326156.P4691858725417643234

/-! ## A326156.P2561693411619953583

`eq[A071285(n), A175599(n+1)]`
-/

namespace A326156.P2561693411619953583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175599 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326156.P2561693411619953583

/-! ## A326156.P16233985803682974164

`A000196(A128204(n)+A002532(n))`
-/

namespace A326156.P16233985803682974164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A128204 n + A002532 n).toNat

end

end A326156.P16233985803682974164

/-!
# A326158: Nonprime squarefree numbers whose product of prime indices is divisible by their sum of prime indices.

The programs for A326158, there is no canonical definition to state claims against.
-/

/-! ## A326158.P8683173576264247186

`∩[A326149(n+1), A380470(n+1)]`
-/

namespace A326158.P8683173576264247186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326158.P8683173576264247186

/-! ## A326158.P11604121823910080803

`∩[A000469(n+1), A326149(n+1)]`
-/

namespace A326158.P11604121823910080803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326158.P11604121823910080803

/-! ## A326158.P18427617261602819431

`∩[A120944(n+1), A326149(n+1)]`
-/

namespace A326158.P18427617261602819431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326158.P18427617261602819431

/-! ## A326158.P15508185934950840286

`record[∏{p}[A326150(n+2), #]]`
-/

namespace A326158.P15508185934950840286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326150 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326158.P15508185934950840286

/-! ## A326158.P6433016308432126912

`filter[A326150(n+1), A008966(#)]`
-/

namespace A326158.P6433016308432126912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A326158.P6433016308432126912

/-!
# A326159: Number of n X n 0..1 arrays with every element unequal to 0, 1, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A326159, there is no canonical definition to state claims against.
-/

/-! ## A326159.P938077566778565606

`A326165(∑[4*n]+1)`
-/

namespace A326159.P938077566778565606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A326159.P938077566778565606

/-! ## A326159.P3530214247743535804

`record[(1-abs(round(sqrt(2*(n+1)))²-(2*n+1)))*A326165(n+1)]`
-/

namespace A326159.P3530214247743535804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)|) * A326165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326159.P3530214247743535804

/-! ## A326159.P8869181768104469340

`record[A326165(Δ[A235355(n)])]`
-/

namespace A326159.P8869181768104469340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326159.P8869181768104469340

/-! ## A326159.P4862676697157373904

`and(-1, A326165(A001844(n)))`
-/

namespace A326159.P4862676697157373904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A326165 (A001844 n).toNat)

end

end A326159.P4862676697157373904

/-! ## A326159.P13023523250460412469

`record[gcd(A037012(n), A326165(n+1))]`
-/

namespace A326159.P13023523250460412469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A326165 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326159.P13023523250460412469

/-!
# A326160: Number of nX3 0..1 arrays with every element unequal to 0, 1, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A326160, there is no canonical definition to state claims against.
-/

/-! ## A326160.P7475760081117112978

`A326165(∑[n+2]+4)`
-/

namespace A326160.P7475760081117112978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A326160.P7475760081117112978

/-! ## A326160.P16040615649940781980

`and(-1, A326165(A167614(n+1)))`
-/

namespace A326160.P16040615649940781980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A326165 (A167614 (n + 1)).toNat)

end

end A326160.P16040615649940781980

/-! ## A326160.P13171598645531916682

`record[gcd(A072233(n+1), A326165(n+4))]`
-/

namespace A326160.P13171598645531916682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072233 (n + 1)) (A326165 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326160.P13171598645531916682

/-! ## A326160.P11203561979389339177

`A326165(A167614(n+1))+A025469(n)`
-/

namespace A326160.P11203561979389339177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (A167614 (n + 1)).toNat + A025469 n

end

end A326160.P11203561979389339177

/-! ## A326160.P13218338397396081382

`A326683(n)+A326165(A167614(n+1))`
-/

namespace A326160.P13218338397396081382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326683 n + A326165 (A167614 (n + 1)).toNat

end

end A326160.P13218338397396081382

/-!
# A326161: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A326161, there is no canonical definition to state claims against.
-/

/-! ## A326161.P3702706404233710938

`A326165(∑[n+3]+7)`
-/

namespace A326161.P3702706404233710938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A326161.P3702706404233710938

/-! ## A326161.P4912600599156569739

`(A326165(A167614(n+2)+1)^(1/2))²`
-/

namespace A326161.P4912600599156569739
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A326165 (A167614 (n + 2) + 1).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A326161.P4912600599156569739

/-! ## A326161.P13280529033691853115

`A007318(C(n, 2))*A326165(A167614(n+2)+1)`
-/

namespace A326161.P13280529033691853115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A326165 (A167614 (n + 2) + 1).toNat

end

end A326161.P13280529033691853115

/-! ## A326161.P13616716122113423041

`A326165(A167614(n+2)+1)%A000045(or(62, n))`
-/

namespace A326161.P13616716122113423041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326165 (A167614 (n + 2) + 1).toNat) (A000045 (Nat.lor 62 n))

end

end A326161.P13616716122113423041

/-! ## A326161.P16534896038364633219

`A326165(A167614(n+2)+1)/A007318(C(n+2, 2))`
-/

namespace A326161.P16534896038364633219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326165 (A167614 (n + 2) + 1).toNat : ℚ) / (A007318 (Nat.choose (n + 2) 2) : ℚ)

end

end A326161.P16534896038364633219

/-!
# A326162: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A326162, there is no canonical definition to state claims against.
-/

/-! ## A326162.P3871147488745457705

`A326165(A167499(n+3))`
-/

namespace A326162.P3871147488745457705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (A167499 (n + 3)).toNat

end

end A326162.P3871147488745457705

/-! ## A326162.P12910274271738764683

`A326165(A155212(n)+13)`
-/

namespace A326162.P12910274271738764683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (A155212 n + 13).toNat

end

end A326162.P12910274271738764683

/-! ## A326162.P4575264367379167554

`A326165(A056000(n)+15)`
-/

namespace A326162.P4575264367379167554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (A056000 n + 15).toNat

end

end A326162.P4575264367379167554

/-! ## A326162.P15814037025915430741

`A326165(eq[7, A066657(n)])`
-/

namespace A326162.P15814037025915430741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326162.P15814037025915430741

/-! ## A326162.P7339838252023494957

`A326165(A167614(n+3)+2)`
-/

namespace A326162.P7339838252023494957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (A167614 (n + 3) + 2).toNat

end

end A326162.P7339838252023494957

/-!
# A326163: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A326163, there is no canonical definition to state claims against.
-/

/-! ## A326163.P15630353820090537746

`A326165(A056115(n)+21)`
-/

namespace A326163.P15630353820090537746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (A056115 n + 21).toNat

end

end A326163.P15630353820090537746

/-! ## A326163.P10117252513042060199

`A326165(A167499(n+4)+1)`
-/

namespace A326163.P10117252513042060199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (A167499 (n + 4) + 1).toNat

end

end A326163.P10117252513042060199

/-! ## A326163.P12556267620785394540

`A326165(A167614(n+4)+3)`
-/

namespace A326163.P12556267620785394540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (A167614 (n + 4) + 3).toNat

end

end A326163.P12556267620785394540

/-! ## A326163.P3898149536051166091

`A326165(A000124(n+5)+5)`
-/

namespace A326163.P3898149536051166091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (A000124 (n + 5) + 5).toNat

end

end A326163.P3898149536051166091

/-! ## A326163.P18287581426889075370

`A326165(A000096(n+4)+7)`
-/

namespace A326163.P18287581426889075370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (A000096 (n + 4) + 7).toNat

end

end A326163.P18287581426889075370

/-!
# A326164: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A326164, there is no canonical definition to state claims against.
-/

/-! ## A326164.P2121545237658888190

`A326165(eq[11, A066657(n)])`
-/

namespace A326164.P2121545237658888190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326164.P2121545237658888190

/-! ## A326164.P15596560016402148858

`A326165(A167499(n+5)+2)`
-/

namespace A326164.P15596560016402148858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (A167499 (n + 5) + 2).toNat

end

end A326164.P15596560016402148858

/-! ## A326164.P3900390205213172425

`A326165(A167614(n+5)+4)`
-/

namespace A326164.P3900390205213172425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (A167614 (n + 5) + 4).toNat

end

end A326164.P3900390205213172425

/-! ## A326164.P3433589692327697426

`A326165(A000096(n+5)+8)`
-/

namespace A326164.P3433589692327697426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (A000096 (n + 5) + 8).toNat

end

end A326164.P3433589692327697426

/-! ## A326164.P2606400934341978951

`A326165(A000217(n+6)+7)`
-/

namespace A326164.P2606400934341978951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (A000217 (n + 6) + 7).toNat

end

end A326164.P2606400934341978951

/-!
# A326165: T(n,k) = Number of n X k 0..1 arrays with every element unequal to 0, 1, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A326165, there is no canonical definition to state claims against.
-/

/-! ## A326165.P17011097191784904862

`A318037(n+1)+A309785(A331562(n))`
-/

namespace A326165.P17011097191784904862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (n + 1) + A309785 (A331562 n).toNat

end

end A326165.P17011097191784904862

/-!
# A326166: Total number of ants after n iterations in male/female Langton's ant variation.

The programs for A326166, there is no canonical definition to state claims against.
-/

/-! ## A326166.P3461328747624792982

`A055642(A331201(n+1))+A055642(A276798(n))`
-/

namespace A326166.P3461328747624792982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A331201 (n + 1)).toNat + A055642 (A276798 n).toNat

end

end A326166.P3461328747624792982

/-! ## A326166.P12011191978653606337

`ceil(root(A300669(n+4), 4))`
-/

namespace A326166.P12011191978653606337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A300669 (n + 4) : ℝ) ^ (1 / (4 : ℝ))⌉

end

end A326166.P12011191978653606337

/-! ## A326166.P2049715925028557484

`round(2^root(A107257(n+1), 8))`
-/

namespace A326166.P2049715925028557484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℝ) ^ ((A107257 (n + 1) : ℝ) ^ (1 / (8 : ℝ))))

end

end A326166.P2049715925028557484

/-! ## A326166.P14662266077746913180

`A055642(A308421(n+1))+1`
-/

namespace A326166.P14662266077746913180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A308421 (n + 1)).toNat + 1

end

end A326166.P14662266077746913180

/-! ## A326166.P7239727799929938922

`A055642(A345168(n+1))+1`
-/

namespace A326166.P7239727799929938922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A345168 (n + 1)).toNat + 1

end

end A326166.P7239727799929938922

/-! ## A326166.P10395519610707034160

`A033270(ceil(sqrt(A203462(n+1))))`
-/

namespace A326166.P10395519610707034160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 ⌈Real.sqrt (A203462 (n + 1) : ℝ)⌉.toNat

end

end A326166.P10395519610707034160

/-! ## A326166.P17476856253707536657

`A008621(ceil(sqrt(A203462(n+1)))+1)`
-/

namespace A326166.P17476856253707536657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (⌈Real.sqrt (A203462 (n + 1) : ℝ)⌉ + 1).toNat

end

end A326166.P17476856253707536657

/-! ## A326166.P10200655028694612672

`A000720(ceil(sqrt(A203462(n+1))))-1`
-/

namespace A326166.P10200655028694612672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌈Real.sqrt (A203462 (n + 1) : ℝ)⌉.toNat - 1

end

end A326166.P10200655028694612672

/-! ## A326166.P133621087151630833

`A003056(ceil(sqrt(A203462(n+1)))-1)`
-/

namespace A326166.P133621087151630833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (⌈Real.sqrt (A203462 (n + 1) : ℝ)⌉ - 1).toNat

end

end A326166.P133621087151630833

/-!
# A326167: Total number of black cells at iteration n of male/female Langton's ant variation.

The programs for A326167, there is no canonical definition to state claims against.
-/

/-! ## A326167.P3433439254533630773

`A255938(n)+A137189(n)%2`
-/

namespace A326167.P3433439254533630773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255938 n + Int.tmod (A137189 n) 2

end

end A326167.P3433439254533630773

/-! ## A326167.P8020581309166372781

`A255938(n)+A004530(p?[round(8*n/7)]²)`
-/

namespace A326167.P8020581309166372781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255938 n + A004530 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A326167.P8020581309166372781

/-! ## A326167.P3260050813517350611

`A255938(n)+A000035(A137189(n))`
-/

namespace A326167.P3260050813517350611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255938 n + A000035 (A137189 n).toNat

end

end A326167.P3260050813517350611

/-! ## A326167.P7321395194396741220

`A255938(n)+A057427(A316729(n))`
-/

namespace A326167.P7321395194396741220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255938 n + A057427 (A316729 n).toNat

end

end A326167.P7321395194396741220

/-! ## A326167.P1448407646062710114

`A255938(n)+A004530(A001248(n+1))`
-/

namespace A326167.P1448407646062710114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255938 n + A004530 (A001248 (n + 1)).toNat

end

end A326167.P1448407646062710114

/-! ## A326167.P8751281000913269432

`A255938(n)+A035263(A006094(n+1))`
-/

namespace A326167.P8751281000913269432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255938 n + A035263 (A006094 (n + 1)).toNat

end

end A326167.P8751281000913269432

/-! ## A326167.P7581858387430994842

`A255938(n)+A005171(A084920(n+1))`
-/

namespace A326167.P7581858387430994842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255938 n + A005171 (A084920 (n + 1)).toNat

end

end A326167.P7581858387430994842

/-! ## A326167.P8070933231850865023

`A255938(n)+A043545(A095726(n+1))`
-/

namespace A326167.P8070933231850865023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255938 n + A043545 (A095726 (n + 1)).toNat

end

end A326167.P8070933231850865023

/-!
# A326168: Number of eggs at iteration n of male/female Langton's ant variation.

The programs for A326168, there is no canonical definition to state claims against.
-/

/-! ## A326168.P4644058691782406444

`A361024(∑[A038565(2*(n+2))+(n+1)²])`
-/

namespace A326168.P4644058691782406444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038565 (2 * (n + 2)) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326168.P4644058691782406444

/-! ## A326168.P10401922089560183944

`A025456(A168102(n))^A130136(n)`
-/

namespace A326168.P10401922089560183944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025456 (A168102 n).toNat : ℚ) ^ (A130136 n : ℤ)

end

end A326168.P10401922089560183944

/-! ## A326168.P6471986544570040860

`A025456(A168102(n))^A267089(n)`
-/

namespace A326168.P6471986544570040860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025456 (A168102 n).toNat : ℚ) ^ (A267089 n : ℤ)

end

end A326168.P6471986544570040860

/-! ## A326168.P2471514654981336916

`A025456(A168102(n))^A143907(n+1)`
-/

namespace A326168.P2471514654981336916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025456 (A168102 n).toNat : ℚ) ^ (A143907 (n + 1) : ℤ)

end

end A326168.P2471514654981336916

/-! ## A326168.P18117468326825458929

`A025456(A168102(n))^A331201(n+1)`
-/

namespace A326168.P18117468326825458929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025456 (A168102 n).toNat : ℚ) ^ (A331201 (n + 1) : ℤ)

end

end A326168.P18117468326825458929

/-! ## A326168.P8060954066713958108

`A025456(A168102(n))^A274106(n+2)`
-/

namespace A326168.P8060954066713958108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025456 (A168102 n).toNat : ℚ) ^ (A274106 (n + 2) : ℤ)

end

end A326168.P8060954066713958108

/-! ## A326168.P1675002903272465511

`val(A000292(A176988(n)), A143907(n+1))`
-/

namespace A326168.P1675002903272465511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000292 (A176988 n).toNat).toNat (A143907 (n + 1)).toNat

end

end A326168.P1675002903272465511

/-! ## A326168.P8016941248436985108

`A062301(A043063(n+1)-A053645(n+1))`
-/

namespace A326168.P8016941248436985108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (A043063 (n + 1) - A053645 (n + 1)).toNat

end

end A326168.P8016941248436985108

/-! ## A326168.P9718487466245652448

`A025439(A136605(n+1))^(1-n)²`
-/

namespace A326168.P9718487466245652448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025439 (A136605 (n + 1)).toNat : ℚ) ^ ((1 - (n : ℤ)) ^ 2 : ℤ)

end

end A326168.P9718487466245652448

/-!
# A326171: Let z be a sequence of distinct Gaussian integers such that z(1) = 0, z(2) = 2+i (where i denotes the imaginary unit), for n > 1, z(n+1) the Gaussian integer with least norm at one knight move from z(n) (in case of a tie, choose the value such that Im(z(n+1)/z(n))>0); a(n) is the imaginary part of z(n).

The programs for A326171, there is no canonical definition to state claims against.
-/

/-! ## A326171.P12144949754913837907

`A085794(n)-A339890(A001006(n))`
-/

namespace A326171.P12144949754913837907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085794 n - A339890 (A001006 n).toNat

end

end A326171.P12144949754913837907

/-! ## A326171.P8140527494610776646

`A321100(A264954(n+1)+1)-A029655(A000188(2*n+5))`
-/

namespace A326171.P8140527494610776646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321100 (A264954 (n + 1) + 1).toNat - A029655 (A000188 (2 * n + 5)).toNat

end

end A326171.P8140527494610776646

/-! ## A326171.P13934002010875226624

`A218907(n+1)-A063053(A081848(n+1))`
-/

namespace A326171.P13934002010875226624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218907 (n + 1) - A063053 (A081848 (n + 1)).toNat

end

end A326171.P13934002010875226624

/-! ## A326171.P15760599668182697525

`A340524(n+1)-A092056(A176566(n+1))`
-/

namespace A326171.P15760599668182697525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340524 (n + 1) - A092056 (A176566 (n + 1)).toNat

end

end A326171.P15760599668182697525

/-! ## A326171.P6924027692733346036

`A131534(A174284(n))-A058398(2*n+5)`
-/

namespace A326171.P6924027692733346036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 (A174284 n).toNat - A058398 (2 * n + 5)

end

end A326171.P6924027692733346036

/-!
# A326172: Number of nonempty subsets of {2..n} whose product is divisible by their sum.

The programs for A326172, there is no canonical definition to state claims against.
-/

/-! ## A326172.P15478929469853974621

`A191983(ceil(sqrt(A001519(n))))`
-/

namespace A326172.P15478929469853974621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191983 ⌈Real.sqrt (A001519 n : ℝ)⌉.toNat

end

end A326172.P15478929469853974621

/-! ## A326172.P12927310162520994968

`round(sqrt(A341145((1-n)²+n)))`
-/

namespace A326172.P12927310162520994968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A341145 (((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat + 39) : ℝ))

end

end A326172.P12927310162520994968

/-! ## A326172.P11036990923257227157

`A007149(∑[2*(a(n-2)+2)])` with `a(0)=0, a(1)=4, a(2)=1, a(3)=2, a(4)=4`
-/

namespace A326172.P11036990923257227157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 1, 2, 4] fun n f1 =>
  2 * (f1 (n - 2) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007149 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326172.P11036990923257227157

/-! ## A326172.P8347934708590673512

`A262265(A255213(n))`
-/

namespace A326172.P8347934708590673512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262265 (A255213 n).toNat

end

end A326172.P8347934708590673512

/-! ## A326172.P1938755733408093456

`A251629(A178982(n+1))`
-/

namespace A326172.P1938755733408093456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251629 (A178982 (n + 1)).toNat

end

end A326172.P1938755733408093456

/-!
# A326173: Number of maximal subsets of {1..n} whose sum is less than or equal to the sum of their complement.

The programs for A326173, there is no canonical definition to state claims against.
-/

/-! ## A326173.P11650056445338585309

`A339060(A007059(n))+A007059(n)`
-/

namespace A326173.P11650056445338585309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339060 (A007059 n).toNat + A007059 n

end

end A326173.P11650056445338585309

/-! ## A326173.P10924092418969794820

`and(A000027(A308520(n)), A255515(n))`
-/

namespace A326173.P10924092418969794820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000027 (A308520 n).toNat) (A255515 n)

end

end A326173.P10924092418969794820

/-! ## A326173.P14709879847632751138

`A290689(n+1)+A114640(p?[A114639(n)])`
-/

namespace A326173.P14709879847632751138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290689 (n + 1) + A114640 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A326173.P14709879847632751138

/-! ## A326173.P5983502282363907188

`A003004(floor(A171559(n+1)/A003004(2*(n+1))))`
-/

namespace A326173.P5983502282363907188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003004 ⌊(A171559 (n + 1) : ℚ) / (A003004 (2 * (n + 1)) : ℚ)⌋.toNat

end

end A326173.P5983502282363907188

/-!
# A326174: Number of subsets of {1..n} containing n whose sum is greater than or equal to the sum of their complement.

The programs for A326174, there is no canonical definition to state claims against.
-/

/-! ## A326174.P11674517919688252295

`A055086(∑[∑[A326355(n)]])`
-/

namespace A326174.P11674517919688252295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326174.P11674517919688252295

/-! ## A326174.P17855175403963549436

`∑[A002024(A047926(n))-A049472(2*n)]`
-/

namespace A326174.P17855175403963549436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A047926 n).toNat - A049472 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326174.P17855175403963549436

/-!
# A326175: Number of minimal subsets of {1..n} containing n whose sum is greater than or equal to the sum of their complement.

The programs for A326175, there is no canonical definition to state claims against.
-/

/-! ## A326175.P11805172933687260402

`A325456(A104220(n))`
-/

namespace A326175.P11805172933687260402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325456 (A104220 n).toNat

end

end A326175.P11805172933687260402

/-! ## A326175.P12863468839467714041

`A325456(A104221(n)+1)`
-/

namespace A326175.P12863468839467714041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325456 (A104221 n + 1).toNat

end

end A326175.P12863468839467714041

/-! ## A326175.P4625645954110731266

`A325456(or(1, A000045(n)))`
-/

namespace A326175.P4625645954110731266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325456 (Int.lor 1 (A000045 n)).toNat

end

end A326175.P4625645954110731266

/-! ## A326175.P127697857226586615

`A325456(or(1, A104221(n)))`
-/

namespace A326175.P127697857226586615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325456 (Int.lor 1 (A104221 n)).toNat

end

end A326175.P127697857226586615

/-! ## A326175.P6819290166808682072

`A325456(or(1, A290689(n+1)))`
-/

namespace A326175.P6819290166808682072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325456 (Int.lor 1 (A290689 (n + 1))).toNat

end

end A326175.P6819290166808682072

/-!
# A326177: Denominators of a recurrence relation arising in impact dynamics.

The programs for A326177, there is no canonical definition to state claims against.
-/

/-! ## A326177.P14699531393745691478

`A243074(A001998(n)²)`
-/

namespace A326177.P14699531393745691478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (A001998 n ^ 2).toNat

end

end A326177.P14699531393745691478

/-! ## A326177.P1438570861667408337

`A243074(∑[A322188(n)]²)`
-/

namespace A326177.P1438570861667408337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A326177.P1438570861667408337

/-!
# A326178: Number of subsets of {1..n} whose product is equal to their sum.

The programs for A326178, the canonical program `A326178.P10986141983629121521` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326178 has offset 0).

The definition of A326178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326178.P10986141983629121521

`round(n*ratio[n+3])`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A326178

/-- `round(n*ratio[n+3])` -/
def P10986141983629121521.Spec : Prop :=
  ∀ n, P10986141983629121521.a n = A326178 n

theorem P10986141983629121521.correct : P10986141983629121521.Spec := by
  intro n
  simp only [A326178]

end A326178

/-!
# A326179: Number of subsets of {1..n} containing n whose product is divisible by their sum.

The programs for A326179, there is no canonical definition to state claims against.
-/

/-! ## A326179.P18277499686091939678

`Δ[A326156(log2(ceil(2^(n-1))))]`
-/

namespace A326179.P18277499686091939678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326156 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A326179.P18277499686091939678

/-! ## A326179.P14492908622430007182

`A003056(A143873(n)-A060187(n+1))`
-/

namespace A326179.P14492908622430007182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A143873 n - A060187 (n + 1)).toNat

end

end A326179.P14492908622430007182

/-!
# A326180: Number of maximal subsets of {1..n} containing n whose product is divisible by their sum.

The programs for A326180, there is no canonical definition to state claims against.
-/

/-! ## A326180.P5214531687640439509

`A161815(ceil((n+1)/∏{p}[n+1, (n+1)/#]))%A161793(n+1)`
-/

namespace A326180.P5214531687640439509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161815 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat) (A161793 (n + 1))

end

end A326180.P5214531687640439509

/-! ## A326180.P7864469327269845549

`A199112(n)%A000961(A020639(n+1))`
-/

namespace A326180.P7864469327269845549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199112 n) (A000961 (A020639 (n + 1)).toNat)

end

end A326180.P7864469327269845549

/-! ## A326180.P13826036165779342105

`A146059(A020639(n+1))%A276086(n)`
-/

namespace A326180.P13826036165779342105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146059 (A020639 (n + 1)).toNat) (A276086 n)

end

end A326180.P13826036165779342105

/-! ## A326180.P6883396084249654894

`A161815(A014963(n+1))%A161793(n+1)`
-/

namespace A326180.P6883396084249654894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161815 (A014963 (n + 1)).toNat) (A161793 (n + 1))

end

end A326180.P6883396084249654894

/-!
# A326182: Numbers for which A003961(n) <= A064989(sigma(A003961(n))).

The programs for A326182, there is no canonical definition to state claims against.
-/

/-! ## A326182.P4626085689811695464

`eq[A001222(A046628(n+1)), A046621(n+1)]²`
-/

namespace A326182.P4626085689811695464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046628 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A326182.P4626085689811695464

/-! ## A326182.P16523548963544328495

`eq[ceil(cos(A064155(n+1)-A064186(n+1))), A324881(n+16)]²`
-/

namespace A326182.P16523548963544328495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (A064155 (n + 1) - A064186 (n + 1) : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324881 (n + 16)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A326182.P16523548963544328495

/-! ## A326182.P17052461971473921573

`∑[A124767(A219537(n))]²`
-/

namespace A326182.P17052461971473921573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A219537 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A326182.P17052461971473921573

/-!
# A326184: a(n) = sigma(n) - A057521(n), where A057521 gives the powerful part of n, and sigma gives the sum of divisors of n.

The programs for A326184, the canonical program `A326184.P15746824177980826123` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326184 has offset 1).

The definition of A326184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326184.P15746824177980826123

`A000203(n+1)-A057521(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A326184

/-- `A000203(n+1)-A057521(n+1)` -/
def P15746824177980826123.Spec : Prop :=
  ∀ n, P15746824177980826123.a n = A326184 (n + 1)

theorem P15746824177980826123.correct : P15746824177980826123.Spec := by
  intro n
  simp only [A326184, Nat.add_sub_cancel]

end A326184

/-! ## A326184.P9703467385837606756

`∑{d}[n+1, #]-gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])`
-/

namespace A326184.P9703467385837606756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f2 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)) : ℤ)

end

end A326184.P9703467385837606756

namespace A326184

/-- `∑{d}[n+1, #]-gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])` -/
def P9703467385837606756.Spec : Prop :=
  ∀ n, P9703467385837606756.a n = A326184 (n + 1)

end A326184

/-! ## A326184.P11864925219613255340

`∑{d}[n+1, #]-(n+1)/∏{p}[n+1, #]*∏{p}[(n+1)/∏{p}[n+1, #], #]`
-/

namespace A326184.P11864925219613255340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f4 n), p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f3 n)).natAbs, p : ℕ) : ℚ)

end

end A326184.P11864925219613255340

namespace A326184

/-- `∑{d}[n+1, #]-(n+1)/∏{p}[n+1, #]*∏{p}[(n+1)/∏{p}[n+1, #], #]` -/
def P11864925219613255340.Spec : Prop :=
  ∀ n, P11864925219613255340.a n = (A326184 (n + 1) : ℚ)

end A326184

/-! ## A326184.P13642980378234690185

`A326185(n+1)+1+n`
-/

namespace A326184.P13642980378234690185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326185 (n + 1) + 1 + (n : ℤ)

end

end A326184.P13642980378234690185

namespace A326184

/-- `A326185(n+1)+1+n` -/
def P13642980378234690185.Spec : Prop :=
  ∀ n, P13642980378234690185.a n = A326184 (n + 1)

theorem P13642980378234690185.correct : P13642980378234690185.Spec := by
  intro n
  simp only [A326184, Nat.add_sub_cancel, A326184.P13642980378234690185.a, A326184.P15746824177980826123.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A057521, A057521.P7284310941140114823.a, A326185, A326185.P12659005152761193395.a, A003557, A003557.P6364735403900941810.a, A064549, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326184

/-! ## A326184.P17948538976391090555

`A326186(n+1)+A001065(n+1)`
-/

namespace A326184.P17948538976391090555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326186 (n + 1) + A001065 (n + 1)

end

end A326184.P17948538976391090555

namespace A326184

/-- `A326186(n+1)+A001065(n+1)` -/
def P17948538976391090555.Spec : Prop :=
  ∀ n, P17948538976391090555.a n = A326184 (n + 1)

theorem P17948538976391090555.correct : P17948538976391090555.Spec := by
  intro n
  simp only [A326184, Nat.add_sub_cancel, A326184.P17948538976391090555.a, A326184.P15746824177980826123.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A057521, A057521.P7284310941140114823.a, A326186, A326186.P460460233906349811.a, A003557, A003557.P6364735403900941810.a, A064549, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326184

/-! ## A326184.P648948523674812569

`A001065(n+1)+1+n-A057521(n+1)`
-/

namespace A326184.P648948523674812569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A057521 (n + 1)

end

end A326184.P648948523674812569

namespace A326184

/-- `A001065(n+1)+1+n-A057521(n+1)` -/
def P648948523674812569.Spec : Prop :=
  ∀ n, P648948523674812569.a n = A326184 (n + 1)

theorem P648948523674812569.correct : P648948523674812569.Spec := by
  intro n
  simp only [A326184, Nat.add_sub_cancel, A326184.P648948523674812569.a, A326184.P15746824177980826123.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A057521, A057521.P7284310941140114823.a, A003557, A003557.P6364735403900941810.a, A064549, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326184

/-! ## A326184.P2951196698643956982

`2*(n+1)-A033879(n+1)-A057521(n+1)`
-/

namespace A326184.P2951196698643956982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A057521 (n + 1)

end

end A326184.P2951196698643956982

namespace A326184

/-- `2*(n+1)-A033879(n+1)-A057521(n+1)` -/
def P2951196698643956982.Spec : Prop :=
  ∀ n, P2951196698643956982.a n = A326184 (n + 1)

theorem P2951196698643956982.correct : P2951196698643956982.Spec := by
  intro n
  simp only [A326184, Nat.add_sub_cancel, A326184.P2951196698643956982.a, A326184.P15746824177980826123.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P11735613842914743111.a, A057521, A057521.P7284310941140114823.a, A003557, A003557.P6364735403900941810.a, A033880, A033880.P6005875780263802708.a, A064549, A064549.P18019400484953624932.a, A001065, A001065.P4097147489331274860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326184

/-! ## A326184.P15447321680751196614

`A000203(n+1)-A064549(A003557(n+1))`
-/

namespace A326184.P15447321680751196614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A064549 (A003557 (n + 1)).toNat

end

end A326184.P15447321680751196614

namespace A326184

/-- `A000203(n+1)-A064549(A003557(n+1))` -/
def P15447321680751196614.Spec : Prop :=
  ∀ n, P15447321680751196614.a n = A326184 (n + 1)

end A326184

/-! ## A326184.P11110338150545767404

`A326187(n+1)-A010848(A057521(n+1))`
-/

namespace A326184.P11110338150545767404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326187 (n + 1) - A010848 (A057521 (n + 1)).toNat

end

end A326184.P11110338150545767404

namespace A326184

/-- `A326187(n+1)-A010848(A057521(n+1))` -/
def P11110338150545767404.Spec : Prop :=
  ∀ n, P11110338150545767404.a n = A326184 (n + 1)

end A326184

/-! ## A326184.P12755302591152057908

`A003557(n+1)+A326188(n+1)+A326186(n+1)`
-/

namespace A326184.P12755302591152057908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) + (A326188 (n + 1) + A326186 (n + 1))

end

end A326184.P12755302591152057908

namespace A326184

/-- `A003557(n+1)+A326188(n+1)+A326186(n+1)` -/
def P12755302591152057908.Spec : Prop :=
  ∀ n, P12755302591152057908.a n = A326184 (n + 1)

theorem P12755302591152057908.correct : P12755302591152057908.Spec := by
  intro n
  simp only [A326184, Nat.add_sub_cancel, A326184.P12755302591152057908.a, A326184.P15746824177980826123.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A057521, A057521.P7284310941140114823.a, A326186, A326186.P460460233906349811.a, A326188, A326188.P6516130972128088373.a, A001065, A001065.P4097147489331274860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A064549, A064549.P18019400484953624932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326184

/-! ## A326184.P5204720653974790690

`A034448(n+1)+A048146(n+1)-A057521(n+1)`
-/

namespace A326184.P5204720653974790690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A057521 (n + 1))

end

end A326184.P5204720653974790690

namespace A326184

/-- `A034448(n+1)+A048146(n+1)-A057521(n+1)` -/
def P5204720653974790690.Spec : Prop :=
  ∀ n, P5204720653974790690.a n = A326184 (n + 1)

theorem P5204720653974790690.correct : P5204720653974790690.Spec := by
  intro n
  simp only [A326184, Nat.add_sub_cancel, A326184.P5204720653974790690.a, A326184.P15746824177980826123.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A057521, A057521.P7284310941140114823.a, A003557, A003557.P6364735403900941810.a, A064549, A064549.P18019400484953624932.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326184

/-! ## A326184.P2794552842877582147

`A003557(n+1)+A326187(n+1)-A057521(n+1)`
-/

namespace A326184.P2794552842877582147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) + (A326187 (n + 1) - A057521 (n + 1))

end

end A326184.P2794552842877582147

namespace A326184

/-- `A003557(n+1)+A326187(n+1)-A057521(n+1)` -/
def P2794552842877582147.Spec : Prop :=
  ∀ n, P2794552842877582147.a n = A326184 (n + 1)

theorem P2794552842877582147.correct : P2794552842877582147.Spec := by
  intro n
  simp only [A326184, Nat.add_sub_cancel, A326184.P2794552842877582147.a, A326184.P15746824177980826123.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A057521, A057521.P7284310941140114823.a, A326187, A326187.P12520565609780871122.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A064549, A064549.P18019400484953624932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326184

/-! ## A326184.P8450227488869460569

`A007913(n+1)+A326126(n+1)-A057521(n+1)`
-/

namespace A326184.P8450227488869460569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) + (A326126 (n + 1) - A057521 (n + 1))

end

end A326184.P8450227488869460569

namespace A326184

/-- `A007913(n+1)+A326126(n+1)-A057521(n+1)` -/
def P8450227488869460569.Spec : Prop :=
  ∀ n, P8450227488869460569.a n = A326184 (n + 1)

theorem P8450227488869460569.correct : P8450227488869460569.Spec := by
  intro n
  simp only [A326184, Nat.add_sub_cancel, A326184.P8450227488869460569.a, A326184.P15746824177980826123.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P8131970495124731496.a, A057521, A057521.P7284310941140114823.a, A326126, A326126.P126110095243043684.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A064549, A064549.P18019400484953624932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326184

/-! ## A326184.P6134877155712212699

`A011772(n+1)+A344765(n+1)-A057521(n+1)`
-/

namespace A326184.P6134877155712212699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1) + (A344765 (n + 1) - A057521 (n + 1))

end

end A326184.P6134877155712212699

namespace A326184

/-- `A011772(n+1)+A344765(n+1)-A057521(n+1)` -/
def P6134877155712212699.Spec : Prop :=
  ∀ n, P6134877155712212699.a n = A326184 (n + 1)

end A326184

/-! ## A326184.P478898260238931056

`A000203(n+1)-A003557(n+1)*A071773(n+1)`
-/

namespace A326184.P478898260238931056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A003557 (n + 1) * A071773 (n + 1)

end

end A326184.P478898260238931056

namespace A326184

/-- `A000203(n+1)-A003557(n+1)*A071773(n+1)` -/
def P478898260238931056.Spec : Prop :=
  ∀ n, P478898260238931056.a n = A326184 (n + 1)

end A326184

/-! ## A326184.P11692640769126983745

`A092261(n+1)*A295294(n+1)-A057521(n+1)`
-/

namespace A326184.P11692640769126983745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092261 (n + 1) * A295294 (n + 1) - A057521 (n + 1)

end

end A326184.P11692640769126983745

namespace A326184

/-- `A092261(n+1)*A295294(n+1)-A057521(n+1)` -/
def P11692640769126983745.Spec : Prop :=
  ∀ n, P11692640769126983745.a n = A326184 (n + 1)

end A326184

/-! ## A326184.P10330615612764421086

`A344695(n+1)*A344696(n+1)-A057521(n+1)`
-/

namespace A326184.P10330615612764421086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344695 (n + 1) * A344696 (n + 1) - A057521 (n + 1)

end

end A326184.P10330615612764421086

namespace A326184

/-- `A344695(n+1)*A344696(n+1)-A057521(n+1)` -/
def P10330615612764421086.Spec : Prop :=
  ∀ n, P10330615612764421086.a n = A326184 (n + 1)

end A326184

/-! ## A326184.P9909390984360776238

`A000203(n+1)-A363289(n+1)/A092261(n+1)`
-/

namespace A326184.P9909390984360776238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) - (A363289 (n + 1) : ℚ) / (A092261 (n + 1) : ℚ)

end

end A326184.P9909390984360776238

namespace A326184

/-- `A000203(n+1)-A363289(n+1)/A092261(n+1)` -/
def P9909390984360776238.Spec : Prop :=
  ∀ n, P9909390984360776238.a n = (A326184 (n + 1) : ℚ)

end A326184

/-! ## A326184.P8556263373874299165

`A000203(n+1)-A011264(A011264(n+1))`
-/

namespace A326184.P8556263373874299165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A011264 (A011264 (n + 1)).toNat

end

end A326184.P8556263373874299165

namespace A326184

/-- `A000203(n+1)-A011264(A011264(n+1))` -/
def P8556263373874299165.Spec : Prop :=
  ∀ n, P8556263373874299165.a n = A326184 (n + 1)

end A326184

/-!
# A326185: a(n) = sigma(n) - A057521(n) - n.

The programs for A326185, the canonical program `A326185.P12659005152761193395` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326185 has offset 1).

The definition of A326185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326185.P9960155585754086438

`A326184(n+1)-(n+1)`
-/

namespace A326185.P9960155585754086438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326184 (n + 1) - (n + 1 : ℤ)

end

end A326185.P9960155585754086438

namespace A326185

/-- `A326184(n+1)-(n+1)` -/
def P9960155585754086438.Spec : Prop :=
  ∀ n, P9960155585754086438.a n = A326185 (n + 1)

end A326185

/-! ## A326185.P1365818805746988269

`A001065(n+1)-A057521(n+1)`
-/

namespace A326185.P1365818805746988269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A057521 (n + 1)

end

end A326185.P1365818805746988269

namespace A326185

/-- `A001065(n+1)-A057521(n+1)` -/
def P1365818805746988269.Spec : Prop :=
  ∀ n, P1365818805746988269.a n = A326185 (n + 1)

theorem P1365818805746988269.correct : P1365818805746988269.Spec := by
  intro n
  simp only [A326185, Nat.add_sub_cancel, A326185.P1365818805746988269.a, A326185.P12659005152761193395.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A057521, A057521.P7284310941140114823.a, A003557, A003557.P6364735403900941810.a, A064549, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326185

/-! ## A326185.P12659005152761193395

`A000203(n+1)-A057521(n+1)-(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A326185

/-- `A000203(n+1)-A057521(n+1)-(n+1)` -/
def P12659005152761193395.Spec : Prop :=
  ∀ n, P12659005152761193395.a n = A326185 (n + 1)

theorem P12659005152761193395.correct : P12659005152761193395.Spec := by
  intro n
  simp only [A326185, Nat.add_sub_cancel]

end A326185

/-! ## A326185.P1017184506108121565

`∑{d}[n+1, #]-(n+1)-gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n])`
-/

namespace A326185.P1017184506108121565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ) - (Int.gcd (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)) ^ 2)) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) : ℤ)

end

end A326185.P1017184506108121565

namespace A326185

/-- `∑{d}[n+1, #]-(n+1)-gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n])` -/
def P1017184506108121565.Spec : Prop :=
  ∀ n, P1017184506108121565.a n = A326185 (n + 1)

end A326185

/-! ## A326185.P13272040804759190231

`∑{d}[n+1, #]-(n+1)-(n+1)/∏{p}[n+1, #]*∏{p}[(n+1)/∏{p}[n+1, #], #]`
-/

namespace A326185.P13272040804759190231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f4 n), p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ) : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f3 n)).natAbs, p : ℕ) : ℚ)

end

end A326185.P13272040804759190231

namespace A326185

/-- `∑{d}[n+1, #]-(n+1)-(n+1)/∏{p}[n+1, #]*∏{p}[(n+1)/∏{p}[n+1, #], #]` -/
def P13272040804759190231.Spec : Prop :=
  ∀ n, P13272040804759190231.a n = (A326185 (n + 1) : ℚ)

end A326185

/-! ## A326185.P7572917920460404687

`A326186(n+1)+A033880(n+1)`
-/

namespace A326185.P7572917920460404687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326186 (n + 1) + A033880 (n + 1)

end

end A326185.P7572917920460404687

namespace A326185

/-- `A326186(n+1)+A033880(n+1)` -/
def P7572917920460404687.Spec : Prop :=
  ∀ n, P7572917920460404687.a n = A326185 (n + 1)

theorem P7572917920460404687.correct : P7572917920460404687.Spec := by
  intro n
  simp only [A326185, Nat.add_sub_cancel, A326185.P7572917920460404687.a, A326185.P12659005152761193395.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A057521, A057521.P7284310941140114823.a, A326186, A326186.P460460233906349811.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A064549, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326185

/-! ## A326185.P9426582356958502678

`A326186(n+1)-A033879(n+1)`
-/

namespace A326185.P9426582356958502678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326186 (n + 1) - A033879 (n + 1)

end

end A326185.P9426582356958502678

namespace A326185

/-- `A326186(n+1)-A033879(n+1)` -/
def P9426582356958502678.Spec : Prop :=
  ∀ n, P9426582356958502678.a n = A326185 (n + 1)

theorem P9426582356958502678.correct : P9426582356958502678.Spec := by
  intro n
  simp only [A326185, Nat.add_sub_cancel, A326185.P9426582356958502678.a, A326185.P12659005152761193395.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P11735613842914743111.a, A057521, A057521.P7284310941140114823.a, A326186, A326186.P460460233906349811.a, A003557, A003557.P6364735403900941810.a, A033880, A033880.P6005875780263802708.a, A064549, A064549.P18019400484953624932.a, A001065, A001065.P4097147489331274860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326185

/-! ## A326185.P4465318558102829064

`A326188(n+1)-A010848(A057521(n+1))`
-/

namespace A326185.P4465318558102829064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326188 (n + 1) - A010848 (A057521 (n + 1)).toNat

end

end A326185.P4465318558102829064

namespace A326185

/-- `A326188(n+1)-A010848(A057521(n+1))` -/
def P4465318558102829064.Spec : Prop :=
  ∀ n, P4465318558102829064.a n = A326185 (n + 1)

end A326185

/-! ## A326185.P5620494872822958084

`A003557(n+1)+A326188(n+1)-A057521(n+1)`
-/

namespace A326185.P5620494872822958084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) + (A326188 (n + 1) - A057521 (n + 1))

end

end A326185.P5620494872822958084

namespace A326185

/-- `A003557(n+1)+A326188(n+1)-A057521(n+1)` -/
def P5620494872822958084.Spec : Prop :=
  ∀ n, P5620494872822958084.a n = A326185 (n + 1)

theorem P5620494872822958084.correct : P5620494872822958084.Spec := by
  intro n
  simp only [A326185, Nat.add_sub_cancel, A326185.P5620494872822958084.a, A326185.P12659005152761193395.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A057521, A057521.P7284310941140114823.a, A326188, A326188.P6516130972128088373.a, A001065, A001065.P4097147489331274860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A064549, A064549.P18019400484953624932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326185

/-! ## A326185.P5020524846725430442

`A326187(n+1)-(A057521(n+1)+A010848(n+1))`
-/

namespace A326185.P5020524846725430442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326187 (n + 1) - (A057521 (n + 1) + A010848 (n + 1))

end

end A326185.P5020524846725430442

namespace A326185

/-- `A326187(n+1)-(A057521(n+1)+A010848(n+1))` -/
def P5020524846725430442.Spec : Prop :=
  ∀ n, P5020524846725430442.a n = A326185 (n + 1)

theorem P5020524846725430442.correct : P5020524846725430442.Spec := by
  intro n
  simp only [A326185, Nat.add_sub_cancel, A326185.P5020524846725430442.a, A326185.P12659005152761193395.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A010848, A010848.P2527659660694357650.a, A057521, A057521.P7284310941140114823.a, A326187, A326187.P12520565609780871122.a, A003557, A003557.P6364735403900941810.a, A064549, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326185

/-! ## A326185.P7854337750582543033

`A326186(n+1)+A326188(n+1)-A010848(n+1)`
-/

namespace A326185.P7854337750582543033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326186 (n + 1) + (A326188 (n + 1) - A010848 (n + 1))

end

end A326185.P7854337750582543033

namespace A326185

/-- `A326186(n+1)+A326188(n+1)-A010848(n+1)` -/
def P7854337750582543033.Spec : Prop :=
  ∀ n, P7854337750582543033.a n = A326185 (n + 1)

theorem P7854337750582543033.correct : P7854337750582543033.Spec := by
  intro n
  simp only [A326185, Nat.add_sub_cancel, A326185.P7854337750582543033.a, A326185.P12659005152761193395.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A010848, A010848.P2527659660694357650.a, A057521, A057521.P7284310941140114823.a, A326186, A326186.P460460233906349811.a, A326188, A326188.P6516130972128088373.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A064549, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326185

/-! ## A326185.P890907709551734846

`A001065(n+1)-A003557(n+1)*A007947(A003557(n+1))`
-/

namespace A326185.P890907709551734846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A003557 (n + 1) * A007947 (A003557 (n + 1)).toNat

end

end A326185.P890907709551734846

namespace A326185

/-- `A001065(n+1)-A003557(n+1)*A007947(A003557(n+1))` -/
def P890907709551734846.Spec : Prop :=
  ∀ n, P890907709551734846.a n = A326185 (n + 1)

end A326185

/-!
# A326186: a(n) = n - A057521(n), where A057521 gives the powerful part of n.

The programs for A326186, the canonical program `A326186.P460460233906349811` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326186 has offset 1).

The definition of A326186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326186.P460460233906349811

`n+1-A057521(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A326186

/-- `n+1-A057521(n+1)` -/
def P460460233906349811.Spec : Prop :=
  ∀ n, P460460233906349811.a n = A326186 (n + 1)

theorem P460460233906349811.correct : P460460233906349811.Spec := by
  intro n
  simp only [A326186, Nat.add_sub_cancel]

end A326186

/-! ## A326186.P5834581257904527212

`1-gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n])+n`
-/

namespace A326186.P5834581257904527212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Int.gcd (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ) + (n : ℤ)

end

end A326186.P5834581257904527212

namespace A326186

/-- `1-gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n])+n` -/
def P5834581257904527212.Spec : Prop :=
  ∀ n, P5834581257904527212.a n = A326186 (n + 1)

end A326186

/-! ## A326186.P16904465508029070774

`n+1-(n+1)/∏{p}[n+1, #]*∏{p}[(n+1)/∏{p}[n+1, #], #]`
-/

namespace A326186.P16904465508029070774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ)

end

end A326186.P16904465508029070774

namespace A326186

/-- `n+1-(n+1)/∏{p}[n+1, #]*∏{p}[(n+1)/∏{p}[n+1, #], #]` -/
def P16904465508029070774.Spec : Prop :=
  ∀ n, P16904465508029070774.a n = (A326186 (n + 1) : ℚ)

end A326186

/-! ## A326186.P15540551683758593408

`n-floor(n/A055231(n+1))`
-/

namespace A326186.P15540551683758593408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (A055231 (n + 1) : ℚ)⌋

end

end A326186.P15540551683758593408

namespace A326186

/-- `n-floor(n/A055231(n+1))` -/
def P15540551683758593408.Spec : Prop :=
  ∀ n, P15540551683758593408.a n = A326186 (n + 1)

end A326186

/-! ## A326186.P2438613276698861442

`n+1-gcd(A003557(n+1)², n+1)`
-/

namespace A326186.P2438613276698861442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.gcd (A003557 (n + 1) ^ 2) (n + 1 : ℤ) : ℤ)

end

end A326186.P2438613276698861442

namespace A326186

/-- `n+1-gcd(A003557(n+1)², n+1)` -/
def P2438613276698861442.Spec : Prop :=
  ∀ n, P2438613276698861442.a n = A326186 (n + 1)

end A326186

/-! ## A326186.P18392951517564094306

`n+2-A078310((n+1)/∏{p}[n+1, #])`
-/

namespace A326186.P18392951517564094306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A078310 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A326186.P18392951517564094306

namespace A326186

/-- `n+2-A078310((n+1)/∏{p}[n+1, #])` -/
def P18392951517564094306.Spec : Prop :=
  ∀ n, P18392951517564094306.a n = A326186 (n + 1)

theorem P18392951517564094306.correct : P18392951517564094306.Spec := by
  intro n
  simp only [A326186, Nat.add_sub_cancel, A326186.P18392951517564094306.f1, A326186.P18392951517564094306.a, A326186.P460460233906349811.a, A057521, A057521.P7284310941140114823.a, A078310, A078310.P14219530768046252322.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A064549, A064549.P18019400484953624932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326186

/-! ## A326186.P14049954497704418025

`A326185(n+1)+A033879(n+1)`
-/

namespace A326186.P14049954497704418025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326185 (n + 1) + A033879 (n + 1)

end

end A326186.P14049954497704418025

namespace A326186

/-- `A326185(n+1)+A033879(n+1)` -/
def P14049954497704418025.Spec : Prop :=
  ∀ n, P14049954497704418025.a n = A326186 (n + 1)

theorem P14049954497704418025.correct : P14049954497704418025.Spec := by
  intro n
  simp only [A326186, Nat.add_sub_cancel, A326186.P14049954497704418025.a, A326186.P460460233906349811.a, A033879, A033879.P11735613842914743111.a, A057521, A057521.P7284310941140114823.a, A326185, A326185.P12659005152761193395.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A033880, A033880.P6005875780263802708.a, A064549, A064549.P18019400484953624932.a, A001065, A001065.P4097147489331274860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326186

/-! ## A326186.P15428498331597158234

`1-A064549(A003557(n+1))+n`
-/

namespace A326186.P15428498331597158234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A064549 (A003557 (n + 1)).toNat + (n : ℤ)

end

end A326186.P15428498331597158234

namespace A326186

/-- `1-A064549(A003557(n+1))+n` -/
def P15428498331597158234.Spec : Prop :=
  ∀ n, P15428498331597158234.a n = A326186 (n + 1)

theorem P15428498331597158234.correct : P15428498331597158234.Spec := by
  intro n
  simp only [A326186, Nat.add_sub_cancel, A326186.P15428498331597158234.a, A326186.P460460233906349811.a, A003557, A003557.P6364735403900941810.a, A057521, A057521.P7284310941140114823.a, A064549, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326186

/-! ## A326186.P14870150273782834282

`A326184(n+1)-A001065(n+1)`
-/

namespace A326186.P14870150273782834282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326184 (n + 1) - A001065 (n + 1)

end

end A326186.P14870150273782834282

namespace A326186

/-- `A326184(n+1)-A001065(n+1)` -/
def P14870150273782834282.Spec : Prop :=
  ∀ n, P14870150273782834282.a n = A326186 (n + 1)

theorem P14870150273782834282.correct : P14870150273782834282.Spec := by
  intro n
  simp only [A326186, Nat.add_sub_cancel, A326186.P14870150273782834282.a, A326186.P460460233906349811.a, A001065, A001065.P4097147489331274860.a, A057521, A057521.P7284310941140114823.a, A326184, A326184.P15746824177980826123.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A064549, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326186

/-! ## A326186.P16294661162937225869

`(A005408(n)*A057521(n+1))%(n+1)`
-/

namespace A326186.P16294661162937225869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n * A057521 (n + 1)) (n + 1 : ℤ)

end

end A326186.P16294661162937225869

namespace A326186

/-- `(A005408(n)*A057521(n+1))%(n+1)` -/
def P16294661162937225869.Spec : Prop :=
  ∀ n, P16294661162937225869.a n = A326186 (n + 1)

end A326186

/-! ## A326186.P3594141885059488227

`A326184(n+1)-(A326188(n+1)+A003557(n+1))`
-/

namespace A326186.P3594141885059488227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326184 (n + 1) - (A326188 (n + 1) + A003557 (n + 1))

end

end A326186.P3594141885059488227

namespace A326186

/-- `A326184(n+1)-(A326188(n+1)+A003557(n+1))` -/
def P3594141885059488227.Spec : Prop :=
  ∀ n, P3594141885059488227.a n = A326186 (n + 1)

theorem P3594141885059488227.correct : P3594141885059488227.Spec := by
  intro n
  simp only [A326186, Nat.add_sub_cancel, A326186.P3594141885059488227.a, A326186.P460460233906349811.a, A003557, A003557.P6364735403900941810.a, A057521, A057521.P7284310941140114823.a, A326184, A326184.P15746824177980826123.a, A326188, A326188.P6516130972128088373.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A064549, A064549.P18019400484953624932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326186

/-! ## A326186.P17474165751456050693

`A010848(n+1)+A326184(n+1)-A326187(n+1)`
-/

namespace A326186.P17474165751456050693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (n + 1) + (A326184 (n + 1) - A326187 (n + 1))

end

end A326186.P17474165751456050693

namespace A326186

/-- `A010848(n+1)+A326184(n+1)-A326187(n+1)` -/
def P17474165751456050693.Spec : Prop :=
  ∀ n, P17474165751456050693.a n = A326186 (n + 1)

theorem P17474165751456050693.correct : P17474165751456050693.Spec := by
  intro n
  simp only [A326186, Nat.add_sub_cancel, A326186.P17474165751456050693.a, A326186.P460460233906349811.a, A010848, A010848.P2527659660694357650.a, A057521, A057521.P7284310941140114823.a, A326184, A326184.P15746824177980826123.a, A326187, A326187.P12520565609780871122.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A064549, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326186

/-! ## A326186.P8963086365943431896

`A010848(n+1)+A326185(n+1)-A326188(n+1)`
-/

namespace A326186.P8963086365943431896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (n + 1) + (A326185 (n + 1) - A326188 (n + 1))

end

end A326186.P8963086365943431896

namespace A326186

/-- `A010848(n+1)+A326185(n+1)-A326188(n+1)` -/
def P8963086365943431896.Spec : Prop :=
  ∀ n, P8963086365943431896.a n = A326186 (n + 1)

theorem P8963086365943431896.correct : P8963086365943431896.Spec := by
  intro n
  simp only [A326186, Nat.add_sub_cancel, A326186.P8963086365943431896.a, A326186.P460460233906349811.a, A010848, A010848.P2527659660694357650.a, A057521, A057521.P7284310941140114823.a, A326185, A326185.P12659005152761193395.a, A326188, A326188.P6516130972128088373.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A064549, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326186

/-! ## A326186.P8821323220671228840

`(A007913(n+1)-A055229(n+1))*A008833(n+1)`
-/

namespace A326186.P8821323220671228840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) - A055229 (n + 1)) * A008833 (n + 1)

end

end A326186.P8821323220671228840

namespace A326186

/-- `(A007913(n+1)-A055229(n+1))*A008833(n+1)` -/
def P8821323220671228840.Spec : Prop :=
  ∀ n, P8821323220671228840.a n = A326186 (n + 1)

end A326186

/-! ## A326186.P9108010287193951621

`(A007947(n+1)-A071773(n+1))*A003557(n+1)`
-/

namespace A326186.P9108010287193951621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) - A071773 (n + 1)) * A003557 (n + 1)

end

end A326186.P9108010287193951621

namespace A326186

/-- `(A007947(n+1)-A071773(n+1))*A003557(n+1)` -/
def P9108010287193951621.Spec : Prop :=
  ∀ n, P9108010287193951621.a n = A326186 (n + 1)

end A326186

/-! ## A326186.P12464745880284303499

`(A056192(n+1)-A056623(n+1))*A056191(n+1)`
-/

namespace A326186.P12464745880284303499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056192 (n + 1) - A056623 (n + 1)) * A056191 (n + 1)

end

end A326186.P12464745880284303499

namespace A326186

/-- `(A056192(n+1)-A056623(n+1))*A056191(n+1)` -/
def P12464745880284303499.Spec : Prop :=
  ∀ n, P12464745880284303499.a n = A326186 (n + 1)

end A326186

/-! ## A326186.P2391130139304007857

`(A350389(n+1)-A368167(n+1))*A350388(n+1)`
-/

namespace A326186.P2391130139304007857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A350389 (n + 1) - A368167 (n + 1)) * A350388 (n + 1)

end

end A326186.P2391130139304007857

namespace A326186

/-- `(A350389(n+1)-A368167(n+1))*A350388(n+1)` -/
def P2391130139304007857.Spec : Prop :=
  ∀ n, P2391130139304007857.a n = A326186 (n + 1)

end A326186

/-! ## A326186.P5620563561069436414

`A000027(n+1)-A000027(n+1)/A055231(n+1)`
-/

namespace A326186.P5620563561069436414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) - (A000027 (n + 1) : ℚ) / (A055231 (n + 1) : ℚ)

end

end A326186.P5620563561069436414

namespace A326186

/-- `A000027(n+1)-A000027(n+1)/A055231(n+1)` -/
def P5620563561069436414.Spec : Prop :=
  ∀ n, P5620563561069436414.a n = (A326186 (n + 1) : ℚ)

end A326186

/-! ## A326186.P1560483781695347993

`A304776(n+1)-A304776(n+1)/A055231(n+1)`
-/

namespace A326186.P1560483781695347993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304776 (n + 1) : ℚ) - (A304776 (n + 1) : ℚ) / (A055231 (n + 1) : ℚ)

end

end A326186.P1560483781695347993

namespace A326186

/-- `A304776(n+1)-A304776(n+1)/A055231(n+1)` -/
def P1560483781695347993.Spec : Prop :=
  ∀ n, P1560483781695347993.a n = (A326186 (n + 1) : ℚ)

end A326186

/-! ## A326186.P13888948775338400250

`A000027(n+1)-gcd(A342014(n+1)², A000027(n+1))`
-/

namespace A326186.P13888948775338400250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - (Int.gcd (A342014 (n + 1) ^ 2) (A000027 (n + 1)) : ℤ)

end

end A326186.P13888948775338400250

namespace A326186

/-- `A000027(n+1)-gcd(A342014(n+1)², A000027(n+1))` -/
def P13888948775338400250.Spec : Prop :=
  ∀ n, P13888948775338400250.a n = A326186 (n + 1)

end A326186

/-!
# A326187: a(n) = sigma(n) - A003557(n).

The programs for A326187, the canonical program `A326187.P12520565609780871122` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326187 has offset 1).

The definition of A326187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326187.P12520565609780871122

`A000203(n+1)-A003557(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A326187

/-- `A000203(n+1)-A003557(n+1)` -/
def P12520565609780871122.Spec : Prop :=
  ∀ n, P12520565609780871122.a n = A326187 (n + 1)

theorem P12520565609780871122.correct : P12520565609780871122.Spec := by
  intro n
  simp only [A326187, Nat.add_sub_cancel]

end A326187

/-! ## A326187.P5760277440608836499

`∑{d}[n+1, #]-(n+1)/∏{p}[n+1, #]`
-/

namespace A326187.P5760277440608836499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A326187.P5760277440608836499

namespace A326187

/-- `∑{d}[n+1, #]-(n+1)/∏{p}[n+1, #]` -/
def P5760277440608836499.Spec : Prop :=
  ∀ n, P5760277440608836499.a n = (A326187 (n + 1) : ℚ)

end A326187

/-! ## A326187.P4643030302582211106

`A326188(n+1)+1+n`
-/

namespace A326187.P4643030302582211106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326188 (n + 1) + 1 + (n : ℤ)

end

end A326187.P4643030302582211106

namespace A326187

/-- `A326188(n+1)+1+n` -/
def P4643030302582211106.Spec : Prop :=
  ∀ n, P4643030302582211106.a n = A326187 (n + 1)

theorem P4643030302582211106.correct : P4643030302582211106.Spec := by
  intro n
  simp only [A326187, Nat.add_sub_cancel, A326187.P4643030302582211106.a, A326187.P12520565609780871122.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A326188, A326188.P6516130972128088373.a, A001065, A001065.P4097147489331274860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326187

/-! ## A326187.P16179466070200937843

`A010848(n+1)+A001065(n+1)`
-/

namespace A326187.P16179466070200937843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (n + 1) + A001065 (n + 1)

end

end A326187.P16179466070200937843

namespace A326187

/-- `A010848(n+1)+A001065(n+1)` -/
def P16179466070200937843.Spec : Prop :=
  ∀ n, P16179466070200937843.a n = A326187 (n + 1)

theorem P16179466070200937843.correct : P16179466070200937843.Spec := by
  intro n
  simp only [A326187, Nat.add_sub_cancel, A326187.P16179466070200937843.a, A326187.P12520565609780871122.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A010848, A010848.P2527659660694357650.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326187

/-! ## A326187.P1979504840719429869

`A088580(n+1)-(A003557(n+1)+1)`
-/

namespace A326187.P1979504840719429869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A003557 (n + 1) + 1)

end

end A326187.P1979504840719429869

namespace A326187

/-- `A088580(n+1)-(A003557(n+1)+1)` -/
def P1979504840719429869.Spec : Prop :=
  ∀ n, P1979504840719429869.a n = A326187 (n + 1)

theorem P1979504840719429869.correct : P1979504840719429869.Spec := by
  intro n
  simp only [A326187, Nat.add_sub_cancel, A326187.P1979504840719429869.a, A326187.P12520565609780871122.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A088580, A088580.P3089093194242277422.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326187

/-! ## A326187.P2597568292478568161

`A000203(n+1)-(A336551(n+1)+1)`
-/

namespace A326187.P2597568292478568161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A336551 (n + 1) + 1)

end

end A326187.P2597568292478568161

namespace A326187

/-- `A000203(n+1)-(A336551(n+1)+1)` -/
def P2597568292478568161.Spec : Prop :=
  ∀ n, P2597568292478568161.a n = A326187 (n + 1)

theorem P2597568292478568161.correct : P2597568292478568161.Spec := by
  intro n
  simp only [A326187, Nat.add_sub_cancel, A326187.P2597568292478568161.a, A326187.P12520565609780871122.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A336551, A336551.P8666843674191054020.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326187

/-! ## A326187.P4356450855647811822

`A245092(2*n+1)-A003557(n+1)`
-/

namespace A326187.P4356450855647811822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - A003557 (n + 1)

end

end A326187.P4356450855647811822

namespace A326187

/-- `A245092(2*n+1)-A003557(n+1)` -/
def P4356450855647811822.Spec : Prop :=
  ∀ n, P4356450855647811822.a n = A326187 (n + 1)

end A326187

/-! ## A326187.P12107543398407930369

`A001065(n+1)-A336551(n+1)+n`
-/

namespace A326187.P12107543398407930369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A336551 (n + 1) + (n : ℤ)

end

end A326187.P12107543398407930369

namespace A326187

/-- `A001065(n+1)-A336551(n+1)+n` -/
def P12107543398407930369.Spec : Prop :=
  ∀ n, P12107543398407930369.a n = A326187 (n + 1)

theorem P12107543398407930369.correct : P12107543398407930369.Spec := by
  intro n
  simp only [A326187, Nat.add_sub_cancel, A326187.P12107543398407930369.a, A326187.P12520565609780871122.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A336551, A336551.P8666843674191054020.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326187

/-! ## A326187.P1674077946083146276

`A001065(n+1)-A003557(n+1)+n+1`
-/

namespace A326187.P1674077946083146276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A003557 (n + 1) + (n + 1 : ℤ)

end

end A326187.P1674077946083146276

namespace A326187

/-- `A001065(n+1)-A003557(n+1)+n+1` -/
def P1674077946083146276.Spec : Prop :=
  ∀ n, P1674077946083146276.a n = A326187 (n + 1)

theorem P1674077946083146276.correct : P1674077946083146276.Spec := by
  intro n
  simp only [A326187, Nat.add_sub_cancel, A326187.P1674077946083146276.a, A326187.P12520565609780871122.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326187

/-! ## A326187.P6075832321330878165

`A000203(n+1)-(n+1)/A007947(n+1)`
-/

namespace A326187.P6075832321330878165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) - (n + 1 : ℚ) / (A007947 (n + 1) : ℚ)

end

end A326187.P6075832321330878165

namespace A326187

/-- `A000203(n+1)-(n+1)/A007947(n+1)` -/
def P6075832321330878165.Spec : Prop :=
  ∀ n, P6075832321330878165.a n = (A326187 (n + 1) : ℚ)

end A326187

/-! ## A326187.P7590748316274826816

`A064987(n+1)/(n+1)-A003557(n+1)`
-/

namespace A326187.P7590748316274826816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A003557 (n + 1) : ℚ)

end

end A326187.P7590748316274826816

namespace A326187

/-- `A064987(n+1)/(n+1)-A003557(n+1)` -/
def P7590748316274826816.Spec : Prop :=
  ∀ n, P7590748316274826816.a n = (A326187 (n + 1) : ℚ)

end A326187

/-! ## A326187.P14809920792218091236

`A326184(n+1)+A010848(A057521(n+1))`
-/

namespace A326187.P14809920792218091236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326184 (n + 1) + A010848 (A057521 (n + 1)).toNat

end

end A326187.P14809920792218091236

namespace A326187

/-- `A326184(n+1)+A010848(A057521(n+1))` -/
def P14809920792218091236.Spec : Prop :=
  ∀ n, P14809920792218091236.a n = A326187 (n + 1)

end A326187

/-! ## A326187.P18268654434260930170

`A010848(n+1)+A326185(n+1)+A057521(n+1)`
-/

namespace A326187.P18268654434260930170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (n + 1) + (A326185 (n + 1) + A057521 (n + 1))

end

end A326187.P18268654434260930170

namespace A326187

/-- `A010848(n+1)+A326185(n+1)+A057521(n+1)` -/
def P18268654434260930170.Spec : Prop :=
  ∀ n, P18268654434260930170.a n = A326187 (n + 1)

theorem P18268654434260930170.correct : P18268654434260930170.Spec := by
  intro n
  simp only [A326187, Nat.add_sub_cancel, A326187.P18268654434260930170.a, A326187.P12520565609780871122.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A010848, A010848.P2527659660694357650.a, A057521, A057521.P7284310941140114823.a, A326185, A326185.P12659005152761193395.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A064549, A064549.P18019400484953624932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326187

/-! ## A326187.P3022144363635013791

`A062355(n+1)-(A079536(n+1)+A003557(n+1))`
-/

namespace A326187.P3022144363635013791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062355 (n + 1) - (A079536 (n + 1) + A003557 (n + 1))

end

end A326187.P3022144363635013791

namespace A326187

/-- `A062355(n+1)-(A079536(n+1)+A003557(n+1))` -/
def P3022144363635013791.Spec : Prop :=
  ∀ n, P3022144363635013791.a n = A326187 (n + 1)

end A326187

/-! ## A326187.P4038398693049609938

`A057723(n+1)+A308135(n+1)-A003557(n+1)`
-/

namespace A326187.P4038398693049609938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) + (A308135 (n + 1) - A003557 (n + 1))

end

end A326187.P4038398693049609938

namespace A326187

/-- `A057723(n+1)+A308135(n+1)-A003557(n+1)` -/
def P4038398693049609938.Spec : Prop :=
  ∀ n, P4038398693049609938.a n = A326187 (n + 1)

theorem P4038398693049609938.correct : P4038398693049609938.Spec := by
  intro n
  simp only [A326187, Nat.add_sub_cancel, A326187.P4038398693049609938.a, A326187.P12520565609780871122.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A057723, A057723.P9092718560045484766.a, A308135, A308135.P17632068956087446165.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326187

/-! ## A326187.P9486729067061804100

`A000203(n+1)+A336567(n+1)-A335341(n+1)`
-/

namespace A326187.P9486729067061804100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A336567 (n + 1) - A335341 (n + 1))

end

end A326187.P9486729067061804100

namespace A326187

/-- `A000203(n+1)+A336567(n+1)-A335341(n+1)` -/
def P9486729067061804100.Spec : Prop :=
  ∀ n, P9486729067061804100.a n = A326187 (n + 1)

theorem P9486729067061804100.correct : P9486729067061804100.Spec := by
  intro n
  simp only [A326187, Nat.add_sub_cancel, A326187.P9486729067061804100.a, A326187.P12520565609780871122.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A335341, A335341.P15141081390874697399.a, A336567, A336567.P8607660645956000214.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A047994, A047994.P3003493197761739884.a, A173557, A173557.P15666735857375843373.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P10258181745752134128.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A326187

/-! ## A326187.P17405089007655245319

`A000203(n+1)-A001615(n+1)/A048250(n+1)`
-/

namespace A326187.P17405089007655245319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) - (A001615 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ)

end

end A326187.P17405089007655245319

namespace A326187

/-- `A000203(n+1)-A001615(n+1)/A048250(n+1)` -/
def P17405089007655245319.Spec : Prop :=
  ∀ n, P17405089007655245319.a n = (A326187 (n + 1) : ℚ)

end A326187

/-! ## A326187.P10690746997551709865

`A000203(n+1)-A000010(n+1)/A173557(n+1)`
-/

namespace A326187.P10690746997551709865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) - (A000010 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A326187.P10690746997551709865

namespace A326187

/-- `A000203(n+1)-A000010(n+1)/A173557(n+1)` -/
def P10690746997551709865.Spec : Prop :=
  ∀ n, P10690746997551709865.a n = (A326187 (n + 1) : ℚ)

end A326187

/-!
# A326188: a(n) = A001065(n) - A003557(n), where A001065(n) = the sum of proper divisors of n, and A003557(n) = n divided by its largest squarefree divisor.

The programs for A326188, the canonical program `A326188.P6516130972128088373` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326188 has offset 1).

The definition of A326188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326188.P13304970352557609827

`A326187(n+1)-(n+1)`
-/

namespace A326188.P13304970352557609827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326187 (n + 1) - (n + 1 : ℤ)

end

end A326188.P13304970352557609827

namespace A326188

/-- `A326187(n+1)-(n+1)` -/
def P13304970352557609827.Spec : Prop :=
  ∀ n, P13304970352557609827.a n = A326188 (n + 1)

theorem P13304970352557609827.correct : P13304970352557609827.Spec := by
  intro n
  simp only [A326188, Nat.add_sub_cancel, A326188.P13304970352557609827.a, A326188.P6516130972128088373.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A326187, A326187.P12520565609780871122.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326188

/-! ## A326188.P6516130972128088373

`A001065(n+1)-A003557(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A326188

/-- `A001065(n+1)-A003557(n+1)` -/
def P6516130972128088373.Spec : Prop :=
  ∀ n, P6516130972128088373.a n = A326188 (n + 1)

theorem P6516130972128088373.correct : P6516130972128088373.Spec := by
  intro n
  simp only [A326188, Nat.add_sub_cancel]

end A326188

/-! ## A326188.P6119417745648220088

`A000203(n+1)-A003557(n+1)-(n+1)`
-/

namespace A326188.P6119417745648220088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A003557 (n + 1) - (n + 1 : ℤ)

end

end A326188.P6119417745648220088

namespace A326188

/-- `A000203(n+1)-A003557(n+1)-(n+1)` -/
def P6119417745648220088.Spec : Prop :=
  ∀ n, P6119417745648220088.a n = A326188 (n + 1)

theorem P6119417745648220088.correct : P6119417745648220088.Spec := by
  intro n
  simp only [A326188, Nat.add_sub_cancel, A326188.P6119417745648220088.a, A326188.P6516130972128088373.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326188

/-! ## A326188.P2237288180317017407

`∑{d}[n+1, #]-(n+1)-(n+1)/∏{p}[n+1, #]`
-/

namespace A326188.P2237288180317017407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ) : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A326188.P2237288180317017407

namespace A326188

/-- `∑{d}[n+1, #]-(n+1)-(n+1)/∏{p}[n+1, #]` -/
def P2237288180317017407.Spec : Prop :=
  ∀ n, P2237288180317017407.a n = (A326188 (n + 1) : ℚ)

end A326188

/-! ## A326188.P398696167739721932

`A033880(n+1)+A010848(n+1)`
-/

namespace A326188.P398696167739721932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + A010848 (n + 1)

end

end A326188.P398696167739721932

namespace A326188

/-- `A033880(n+1)+A010848(n+1)` -/
def P398696167739721932.Spec : Prop :=
  ∀ n, P398696167739721932.a n = A326188 (n + 1)

theorem P398696167739721932.correct : P398696167739721932.Spec := by
  intro n
  simp only [A326188, Nat.add_sub_cancel, A326188.P398696167739721932.a, A326188.P6516130972128088373.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A010848, A010848.P2527659660694357650.a, A033880, A033880.P6005875780263802708.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326188

/-! ## A326188.P10575684784704158873

`A010848(n+1)-A033879(n+1)`
-/

namespace A326188.P10575684784704158873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (n + 1) - A033879 (n + 1)

end

end A326188.P10575684784704158873

namespace A326188

/-- `A010848(n+1)-A033879(n+1)` -/
def P10575684784704158873.Spec : Prop :=
  ∀ n, P10575684784704158873.a n = A326188 (n + 1)

theorem P10575684784704158873.correct : P10575684784704158873.Spec := by
  intro n
  simp only [A326188, Nat.add_sub_cancel, A326188.P10575684784704158873.a, A326188.P6516130972128088373.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A010848, A010848.P2527659660694357650.a, A033879, A033879.P11735613842914743111.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A033880, A033880.P6005875780263802708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326188

/-! ## A326188.P7885398929904430663

`A001065(n+1)-(A336551(n+1)+1)`
-/

namespace A326188.P7885398929904430663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - (A336551 (n + 1) + 1)

end

end A326188.P7885398929904430663

namespace A326188

/-- `A001065(n+1)-(A336551(n+1)+1)` -/
def P7885398929904430663.Spec : Prop :=
  ∀ n, P7885398929904430663.a n = A326188 (n + 1)

theorem P7885398929904430663.correct : P7885398929904430663.Spec := by
  intro n
  simp only [A326188, Nat.add_sub_cancel, A326188.P7885398929904430663.a, A326188.P6516130972128088373.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A336551, A336551.P8666843674191054020.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326188

/-! ## A326188.P15931229803407737567

`n-(A336551(n+1)+A033879(n+1))`
-/

namespace A326188.P15931229803407737567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A336551 (n + 1) + A033879 (n + 1))

end

end A326188.P15931229803407737567

namespace A326188

/-- `n-(A336551(n+1)+A033879(n+1))` -/
def P15931229803407737567.Spec : Prop :=
  ∀ n, P15931229803407737567.a n = A326188 (n + 1)

theorem P15931229803407737567.correct : P15931229803407737567.Spec := by
  intro n
  simp only [A326188, Nat.add_sub_cancel, A326188.P15931229803407737567.a, A326188.P6516130972128088373.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A033879, A033879.P11735613842914743111.a, A336551, A336551.P8666843674191054020.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A033880, A033880.P6005875780263802708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326188

/-! ## A326188.P10423207308897820381

`A245092(2*n+1)-A003557(n+1)-n-1`
-/

namespace A326188.P10423207308897820381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - A003557 (n + 1) - (n : ℤ) - 1

end

end A326188.P10423207308897820381

namespace A326188

/-- `A245092(2*n+1)-A003557(n+1)-n-1` -/
def P10423207308897820381.Spec : Prop :=
  ∀ n, P10423207308897820381.a n = A326188 (n + 1)

end A326188

/-! ## A326188.P11643757814096442144

`abs(A088580(n+1)-1-A003557(n+1)-n)-1`
-/

namespace A326188.P11643757814096442144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A088580 (n + 1) - 1 - A003557 (n + 1) - (n : ℤ)| - 1

end

end A326188.P11643757814096442144

namespace A326188

/-- `abs(A088580(n+1)-1-A003557(n+1)-n)-1` -/
def P11643757814096442144.Spec : Prop :=
  ∀ n, P11643757814096442144.a n = A326188 (n + 1)

end A326188

/-! ## A326188.P17454119155654399299

`A326185(n+1)+A010848(A057521(n+1))`
-/

namespace A326188.P17454119155654399299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326185 (n + 1) + A010848 (A057521 (n + 1)).toNat

end

end A326188.P17454119155654399299

namespace A326188

/-- `A326185(n+1)+A010848(A057521(n+1))` -/
def P17454119155654399299.Spec : Prop :=
  ∀ n, P17454119155654399299.a n = A326188 (n + 1)

end A326188

/-! ## A326188.P10166058039345754999

`A079535(n+1)-(A079536(n+1)+A003557(n+1))`
-/

namespace A326188.P10166058039345754999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079535 (n + 1) - (A079536 (n + 1) + A003557 (n + 1))

end

end A326188.P10166058039345754999

namespace A326188

/-- `A079535(n+1)-(A079536(n+1)+A003557(n+1))` -/
def P10166058039345754999.Spec : Prop :=
  ∀ n, P10166058039345754999.a n = A326188 (n + 1)

theorem P10166058039345754999.correct : P10166058039345754999.Spec := by
  intro n
  simp only [A326188, Nat.add_sub_cancel, A326188.P10166058039345754999.a, A326188.P6516130972128088373.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A079535, A079535.P10555966214279870086.f1, A079535.P10555966214279870086.f2, A079535.P10555966214279870086.f3, A079535.P10555966214279870086.a, A079536, A079536.P18436205178809017812.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326188

/-! ## A326188.P14397589545794642929

`A007913(n+1)+A326127(n+1)-A003557(n+1)`
-/

namespace A326188.P14397589545794642929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) + (A326127 (n + 1) - A003557 (n + 1))

end

end A326188.P14397589545794642929

namespace A326188

/-- `A007913(n+1)+A326127(n+1)-A003557(n+1)` -/
def P14397589545794642929.Spec : Prop :=
  ∀ n, P14397589545794642929.a n = A326188 (n + 1)

theorem P14397589545794642929.correct : P14397589545794642929.Spec := by
  intro n
  simp only [A326188, Nat.add_sub_cancel, A326188.P14397589545794642929.a, A326188.P6516130972128088373.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A007913, A007913.P8131970495124731496.a, A326127, A326127.P6827603046472699184.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326126, A326126.P126110095243043684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326188

/-! ## A326188.P15107393339963984171

`A007947(n+1)+A326143(n+1)-A003557(n+1)`
-/

namespace A326188.P15107393339963984171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + (A326143 (n + 1) - A003557 (n + 1))

end

end A326188.P15107393339963984171

namespace A326188

/-- `A007947(n+1)+A326143(n+1)-A003557(n+1)` -/
def P15107393339963984171.Spec : Prop :=
  ∀ n, P15107393339963984171.a n = A326188 (n + 1)

theorem P15107393339963984171.correct : P15107393339963984171.Spec := by
  intro n
  simp only [A326188, Nat.add_sub_cancel, A326188.P15107393339963984171.a, A326188.P6516130972128088373.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326143, A326143.P176859411368788289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A326142, A326142.P15415912859726343761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326188

/-! ## A326188.P10740632283486914742

`A057521(n+1)+A326185(n+1)-A003557(n+1)`
-/

namespace A326188.P10740632283486914742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1) + (A326185 (n + 1) - A003557 (n + 1))

end

end A326188.P10740632283486914742

namespace A326188

/-- `A057521(n+1)+A326185(n+1)-A003557(n+1)` -/
def P10740632283486914742.Spec : Prop :=
  ∀ n, P10740632283486914742.a n = A326188 (n + 1)

theorem P10740632283486914742.correct : P10740632283486914742.Spec := by
  intro n
  simp only [A326188, Nat.add_sub_cancel, A326188.P10740632283486914742.a, A326188.P6516130972128088373.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A057521, A057521.P7284310941140114823.a, A326185, A326185.P12659005152761193395.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A064549, A064549.P18019400484953624932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326188

/-! ## A326188.P14930377347464518612

`A057723(n+1)-(A336564(n+1)+A003557(n+1))`
-/

namespace A326188.P14930377347464518612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) - (A336564 (n + 1) + A003557 (n + 1))

end

end A326188.P14930377347464518612

namespace A326188

/-- `A057723(n+1)-(A336564(n+1)+A003557(n+1))` -/
def P14930377347464518612.Spec : Prop :=
  ∀ n, P14930377347464518612.a n = A326188 (n + 1)

theorem P14930377347464518612.correct : P14930377347464518612.Spec := by
  intro n
  simp only [A326188, Nat.add_sub_cancel, A326188.P14930377347464518612.a, A326188.P6516130972128088373.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A057723, A057723.P9092718560045484766.a, A336564, A336564.P7523591857433776956.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A308135, A308135.P17632068956087446165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326188

/-! ## A326188.P8238155163456615284

`A162296(n+1)+A325313(n+1)-A003557(n+1)`
-/

namespace A326188.P8238155163456615284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (n + 1) + (A325313 (n + 1) - A003557 (n + 1))

end

end A326188.P8238155163456615284

namespace A326188

/-- `A162296(n+1)+A325313(n+1)-A003557(n+1)` -/
def P8238155163456615284.Spec : Prop :=
  ∀ n, P8238155163456615284.a n = A326188 (n + 1)

end A326188

/-! ## A326188.P14191191696342764090

`A308135(n+1)+A336563(n+1)-A003557(n+1)`
-/

namespace A326188.P14191191696342764090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308135 (n + 1) + (A336563 (n + 1) - A003557 (n + 1))

end

end A326188.P14191191696342764090

namespace A326188

/-- `A308135(n+1)+A336563(n+1)-A003557(n+1)` -/
def P14191191696342764090.Spec : Prop :=
  ∀ n, P14191191696342764090.a n = A326188 (n + 1)

end A326188

/-! ## A326188.P8261937425751530691

`A344753(n+1)-(A306927(n+1)+A003557(n+1))`
-/

namespace A326188.P8261937425751530691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344753 (n + 1) - (A306927 (n + 1) + A003557 (n + 1))

end

end A326188.P8261937425751530691

namespace A326188

/-- `A344753(n+1)-(A306927(n+1)+A003557(n+1))` -/
def P8261937425751530691.Spec : Prop :=
  ∀ n, P8261937425751530691.a n = A326188 (n + 1)

theorem P8261937425751530691.correct : P8261937425751530691.Spec := by
  intro n
  simp only [A326188, Nat.add_sub_cancel, A326188.P8261937425751530691.a, A326188.P6516130972128088373.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A306927, A306927.P17814691939423950955.a, A344753, A344753.P96052968177767744.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326188

/-! ## A326188.P14008053300587676401

`A010848(n+1)+A326185(n+1)-A326186(n+1)`
-/

namespace A326188.P14008053300587676401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (n + 1) + (A326185 (n + 1) - A326186 (n + 1))

end

end A326188.P14008053300587676401

namespace A326188

/-- `A010848(n+1)+A326185(n+1)-A326186(n+1)` -/
def P14008053300587676401.Spec : Prop :=
  ∀ n, P14008053300587676401.a n = A326188 (n + 1)

theorem P14008053300587676401.correct : P14008053300587676401.Spec := by
  intro n
  simp only [A326188, Nat.add_sub_cancel, A326188.P14008053300587676401.a, A326188.P6516130972128088373.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A010848, A010848.P2527659660694357650.a, A326185, A326185.P12659005152761193395.a, A326186, A326186.P460460233906349811.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A057521, A057521.P7284310941140114823.a, A064549, A064549.P18019400484953624932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326188

/-!
# A326189: Number of distinct nonnegative integers that are reachable from n with some nonempty combination of transitions x -> A032742(x) and x -> A302042(x).

The programs for A326189, there is no canonical definition to state claims against.
-/

/-! ## A326189.P3385971527625904915

`A326190(n+1)^gcd(A055396(n+1), A091109(n+1))`
-/

namespace A326189.P3385971527625904915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326190 (n + 1) ^ Int.gcd (A055396 (n + 1)) (A091109 (n + 1))

end

end A326189.P3385971527625904915

/-! ## A326189.P13899894485465203128

`∑{e}[n+1, #]+∑{d}[n+1, #]%A226915(3*n+5)`
-/

namespace A326189.P13899894485465203128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + Int.tmod ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) (A226915 (3 * n + 5))

end

end A326189.P13899894485465203128

/-! ## A326189.P8653208147797798094

`A001222((C(A326016(n+1), 2)²+1)²+n)`
-/

namespace A326189.P8653208147797798094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((Nat.choose (A326016 (n + 1)).toNat 2 ^ 2 + 1) ^ 2 + n)

end

end A326189.P8653208147797798094

/-! ## A326189.P18365418597684950737

`A001222(C(A079065(n+1), A124778(n)))`
-/

namespace A326189.P18365418597684950737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (A079065 (n + 1)).toNat (A124778 n).toNat)

end

end A326189.P18365418597684950737

/-! ## A326189.P9199030224395807040

`A001222(n+1)^A381440(3*n+5)`
-/

namespace A326189.P9199030224395807040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) : ℚ) ^ (A381440 (3 * n + 5) : ℤ)

end

end A326189.P9199030224395807040

/-!
# A326190: Length of the shortest path to 1 when starting from x=n and on each iteration step one may always choose either transition x -> A032742(x) or x -> A302042(x).

The programs for A326190, there is no canonical definition to state claims against.
-/

/-! ## A326190.P8104652550274559044

`A001222(n+1)-A198318(A198329(n+1))`
-/

namespace A326190.P8104652550274559044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A198318 (A198329 (n + 1)).toNat

end

end A326190.P8104652550274559044

/-! ## A326190.P1888803745403773135

`A305079(n+1)+A055976(A327076(n+1))`
-/

namespace A326190.P1888803745403773135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (n + 1) + A055976 (A327076 (n + 1)).toNat

end

end A326190.P1888803745403773135

/-! ## A326190.P6719904584542610035

`A001222(n+1)-round(A001222(A327076(n+1))/5)`
-/

namespace A326190.P6719904584542610035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - SequenceMachineLib.roundAway ((A001222 (A327076 (n + 1)).toNat : ℚ) / 5)

end

end A326190.P6719904584542610035

/-! ## A326190.P11223282094874382596

`A001222(n+1)-A308358(A001222(A327076(n+1)))`
-/

namespace A326190.P11223282094874382596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A308358 (A001222 (A327076 (n + 1)).toNat).toNat

end

end A326190.P11223282094874382596

/-! ## A326190.P3609000853499526485

`A001222(n+1)-A373264(A346701(n+1))`
-/

namespace A326190.P3609000853499526485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A373264 (A346701 (n + 1)).toNat

end

end A326190.P3609000853499526485

/-! ## A326190.P9740280426283823662

`A001222(A000005(A327401(n+1))*A327389(n+1))`
-/

namespace A326190.P9740280426283823662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000005 (A327401 (n + 1)).toNat * A327389 (n + 1)).toNat

end

end A326190.P9740280426283823662

/-! ## A326190.P2980317831617205646

`A001222(A006530(A327401(n+1))*A327389(n+1))`
-/

namespace A326190.P2980317831617205646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006530 (A327401 (n + 1)).toNat * A327389 (n + 1)).toNat

end

end A326190.P2980317831617205646

/-! ## A326190.P3331225346538266030

`A001222(A014963(A327401(n+1))*A327389(n+1))`
-/

namespace A326190.P3331225346538266030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014963 (A327401 (n + 1)).toNat * A327389 (n + 1)).toNat

end

end A326190.P3331225346538266030

/-! ## A326190.P820028945163416965

`A001222(A020639(A327401(n+1))*A327389(n+1))`
-/

namespace A326190.P820028945163416965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020639 (A327401 (n + 1)).toNat * A327389 (n + 1)).toNat

end

end A326190.P820028945163416965

/-! ## A326190.P12637052712675715169

`A001222(A327389(n+1)*A327389(A327401(n+1)))`
-/

namespace A326190.P12637052712675715169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A327389 (n + 1) * A327389 (A327401 (n + 1)).toNat).toNat

end

end A326190.P12637052712675715169

/-!
# A326191: Length of the longest path to 1 when starting from x=n and on each iteration step one may always choose either transition x -> A032742(x) or x -> A302042(x).

The programs for A326191, there is no canonical definition to state claims against.
-/

/-! ## A326191.P17806430649576008098

`A284256(A366602(n+1))+A253557(n+1)`
-/

namespace A326191.P17806430649576008098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (A366602 (n + 1)).toNat + A253557 (n + 1)

end

end A326191.P17806430649576008098

/-! ## A326191.P9036926941043211419

`or(A102683(A028781(n+1)), A253557(n+1))`
-/

namespace A326191.P9036926941043211419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 (A028781 (n + 1)).toNat) (A253557 (n + 1))

end

end A326191.P9036926941043211419

/-! ## A326191.P4534205569685553510

`A010054(A107932(n+5))+A001222(n+1)`
-/

namespace A326191.P4534205569685553510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A107932 (n + 5)).toNat + A001222 (n + 1)

end

end A326191.P4534205569685553510

/-!
# A326192: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => A009195(i) = A009195(j) and f(i) = f(j), where f(n) = gcd(n,sigma(n)) * (-1)^[gcd(n,sigma(n))==n] and A009195(n) = gcd(n, phi(n)).

The programs for A326192, there is no canonical definition to state claims against.
-/

/-! ## A326192.P13140087034568119393

`A300242(n+1)%A033092(n)+1`
-/

namespace A326192.P13140087034568119393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300242 (n + 1)) (A033092 n) + 1

end

end A326192.P13140087034568119393

/-! ## A326192.P9414134357065537699

`A300242(n+1)+A043545(A022283(n))`
-/

namespace A326192.P9414134357065537699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300242 (n + 1) + A043545 (A022283 n).toNat

end

end A326192.P9414134357065537699

/-! ## A326192.P6969811904198955486

`A300242(n+1)+A157928(A014641(n))`
-/

namespace A326192.P6969811904198955486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300242 (n + 1) + A157928 (A014641 n).toNat

end

end A326192.P6969811904198955486

/-! ## A326192.P2169143768857849193

`A300242(n+1)+A157928(A022282(n))`
-/

namespace A326192.P2169143768857849193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300242 (n + 1) + A157928 (A022282 n).toNat

end

end A326192.P2169143768857849193

/-! ## A326192.P17772896836424415224

`A300242(n+1)+A024361(A005105(n+1))`
-/

namespace A326192.P17772896836424415224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300242 (n + 1) + A024361 (A005105 (n + 1)).toNat

end

end A326192.P17772896836424415224

/-!
# A326193: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j), where f(n) = gcd(n,sigma(n)) * (-1)^[gcd(n,sigma(n))==n].

The programs for A326193, there is no canonical definition to state claims against.
-/

/-! ## A326193.P12635217703938189643

`or(A000007(A007053(n)), A327163(n+1))`
-/

namespace A326193.P12635217703938189643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A007053 n).toNat) (A327163 (n + 1))

end

end A326193.P12635217703938189643

/-! ## A326193.P17730315359553855584

`A327163(n+1)+A000007(A063895(n+1))`
-/

namespace A326193.P17730315359553855584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327163 (n + 1) + A000007 (A063895 (n + 1)).toNat

end

end A326193.P17730315359553855584

/-! ## A326193.P804635896296402648

`or(A000007(A052048(n+1)), A327163(n+1))`
-/

namespace A326193.P804635896296402648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A052048 (n + 1)).toNat) (A327163 (n + 1))

end

end A326193.P804635896296402648

/-! ## A326193.P14129860188605914783

`or(A000007(A004111(n)), A327163(n+1))`
-/

namespace A326193.P14129860188605914783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A004111 n).toNat) (A327163 (n + 1))

end

end A326193.P14129860188605914783

/-! ## A326193.P7966932668705295140

`A327163(n+1)+A000007(A080992(n+1))`
-/

namespace A326193.P7966932668705295140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327163 (n + 1) + A000007 (A080992 (n + 1)).toNat

end

end A326193.P7966932668705295140

/-!
# A326194: Number of iterations of x -> A009194(x) needed to reach a fixed point when starting from x = n, where A009194(x) = gcd(x, sigma(x)).

The programs for A326194, there is no canonical definition to state claims against.
-/

/-! ## A326194.P13897606007042783497

`A045983(A009194(n+1))%7-C(2, n+2)`
-/

namespace A326194.P13897606007042783497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045983 (A009194 (n + 1)).toNat) 7 - (Nat.choose 2 (n + 2) : ℤ)

end

end A326194.P13897606007042783497

/-! ## A326194.P13513402097629196020

`A073093(A073802(n+1))%A111521(n)`
-/

namespace A326194.P13513402097629196020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073093 (A073802 (n + 1)).toNat) (A111521 n)

end

end A326194.P13513402097629196020

/-! ## A326194.P11952435542490946299

`A045983(A306682(n+1))%A052938(n)`
-/

namespace A326194.P11952435542490946299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045983 (A306682 (n + 1)).toNat) (A052938 n)

end

end A326194.P11952435542490946299

/-! ## A326194.P5816219436196984445

`A097033(A306682(n+1))%A111521(n)`
-/

namespace A326194.P5816219436196984445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097033 (A306682 (n + 1)).toNat) (A111521 n)

end

end A326194.P5816219436196984445

/-! ## A326194.P2963953085182194088

`A097033(A009194(n+1))%A214465(n+1)`
-/

namespace A326194.P2963953085182194088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097033 (A009194 (n + 1)).toNat) (A214465 (n + 1))

end

end A326194.P2963953085182194088

/-!
# A326195: Number of iterations of x -> A009195(x) needed to reach 1 when starting from x = n, where A009195(x) = gcd(x, phi(x)).

The programs for A326195, the canonical program `A326195.P2163876731620684191` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326195 has offset 1).

The definition of A326195 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326195.P2163876731620684191

`1+a(A009195(n+1)-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A326195

/-- `1+a(A009195(n+1)-1)` -/
def P2163876731620684191.Spec : Prop :=
  ∀ n, (P2163876731620684191.a n : ℤ) = A326195 (n + 1)

theorem P2163876731620684191.correct : P2163876731620684191.Spec := by
  intro n
  simp only [A326195, Nat.add_sub_cancel]

end A326195

/-! ## A326195.P12952086503095790830

`a(A009195(n+1)-1)+1` with `a(0)=0`
-/

namespace A326195.P12952086503095790830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A009195 (n + 1) - 1).toNat + 1

end

end A326195.P12952086503095790830

namespace A326195

/-- `a(A009195(n+1)-1)+1` -/
def P12952086503095790830.Spec : Prop :=
  ∀ n, (P12952086503095790830.a n : ℤ) = A326195 (n + 1)

end A326195

/-! ## A326195.P8201953023347738167

`a(floor(n/A109395(n+1)))+1` with `a(0)=0`
-/

namespace A326195.P8201953023347738167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / (A109395 (n + 1) : ℚ)⌋.toNat + 1

end

end A326195.P8201953023347738167

namespace A326195

/-- `a(floor(n/A109395(n+1)))+1` -/
def P8201953023347738167.Spec : Prop :=
  ∀ n, (P8201953023347738167.a n : ℤ) = A326195 (n + 1)

end A326195

/-! ## A326195.P10148446426763088984

`a(gcd(n+1, A000010(n+1))-1)+1` with `a(0)=0`
-/

namespace A326195.P10148446426763088984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.gcd (n + 1 : ℤ) (A000010 (n + 1)) - 1) + 1

end

end A326195.P10148446426763088984

namespace A326195

/-- `a(gcd(n+1, A000010(n+1))-1)+1` -/
def P10148446426763088984.Spec : Prop :=
  ∀ n, (P10148446426763088984.a n : ℤ) = A326195 (n + 1)

end A326195

/-! ## A326195.P7898905760722344226

`∑{e}[A009195(A009195(4*(n+1))), #]`
-/

namespace A326195.P7898905760722344226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A009195 (4 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A326195.P7898905760722344226

namespace A326195

/-- `∑{e}[A009195(A009195(4*(n+1))), #]` -/
def P7898905760722344226.Spec : Prop :=
  ∀ n, (P7898905760722344226.a n : ℤ) = A326195 (n + 1)

end A326195

/-! ## A326195.P7012285074717637708

`A001222(A009195(A009195(4*(n+1))))`
-/

namespace A326195.P7012285074717637708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A009195 (A009195 (4 * (n + 1))).toNat).toNat

end

end A326195.P7012285074717637708

namespace A326195

/-- `A001222(A009195(A009195(4*(n+1))))` -/
def P7012285074717637708.Spec : Prop :=
  ∀ n, P7012285074717637708.a n = A326195 (n + 1)

end A326195

/-! ## A326195.P16418810574938742713

`A073093(A009195(n+1))%A187106(n+1)`
-/

namespace A326195.P16418810574938742713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073093 (A009195 (n + 1)).toNat) (A187106 (n + 1))

end

end A326195.P16418810574938742713

namespace A326195

/-- `A073093(A009195(n+1))%A187106(n+1)` -/
def P16418810574938742713.Spec : Prop :=
  ∀ n, P16418810574938742713.a n = A326195 (n + 1)

end A326195

/-! ## A326195.P94931877326915125

`A347395(A009195(2*(n+1))²)`
-/

namespace A326195.P94931877326915125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347395 (A009195 (2 * (n + 1)) ^ 2).toNat

end

end A326195.P94931877326915125

namespace A326195

/-- `A347395(A009195(2*(n+1))²)` -/
def P94931877326915125.Spec : Prop :=
  ∀ n, P94931877326915125.a n = A326195 (n + 1)

end A326195

/-! ## A326195.P13506920978438838087

`A001222(lcm(A009195(n+1), A123365(n+1)))`
-/

namespace A326195.P13506920978438838087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A009195 (n + 1)) (A123365 (n + 1)))

end

end A326195.P13506920978438838087

namespace A326195

/-- `A001222(lcm(A009195(n+1), A123365(n+1)))` -/
def P13506920978438838087.Spec : Prop :=
  ∀ n, P13506920978438838087.a n = A326195 (n + 1)

end A326195

/-! ## A326195.P4331590429955899628

`A001222(A009195(n+1))+A001222(A069217(n+1))`
-/

namespace A326195.P4331590429955899628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A009195 (n + 1)).toNat + A001222 (A069217 (n + 1)).toNat

end

end A326195.P4331590429955899628

namespace A326195

/-- `A001222(A009195(n+1))+A001222(A069217(n+1))` -/
def P4331590429955899628.Spec : Prop :=
  ∀ n, P4331590429955899628.a n = A326195 (n + 1)

end A326195

/-! ## A326195.P8400660395097998149

`A001222(A009195(A129598(n+1)))`
-/

namespace A326195.P8400660395097998149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A009195 (A129598 (n + 1)).toNat).toNat

end

end A326195.P8400660395097998149

namespace A326195

/-- `A001222(A009195(A129598(n+1)))` -/
def P8400660395097998149.Spec : Prop :=
  ∀ n, P8400660395097998149.a n = A326195 (n + 1)

end A326195

/-!
# A326196: Number of divisors of n that are reachable from n with some combination of transitions x -> gcd(x,sigma(x)) and x -> gcd(x,phi(x)).

The programs for A326196, there is no canonical definition to state claims against.
-/

/-! ## A326196.P7320053522213183765

`A000005(n+1)-A326197(n+1)`
-/

namespace A326196.P7320053522213183765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A326197 (n + 1)

end

end A326196.P7320053522213183765

/-! ## A326196.P7259790990161744777

`Δ[A006218(n)]-A326197(n+1)`
-/

namespace A326196.P7259790990161744777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A326197 (n + 1)

end

end A326196.P7259790990161744777

/-! ## A326196.P5633589967407640647

`A334954(n+1)-(A326197(n+1)+1)`
-/

namespace A326196.P5633589967407640647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - (A326197 (n + 1) + 1)

end

end A326196.P5633589967407640647

/-! ## A326196.P11443131612782033875

`A001227(n+1)*A001511(n+1)-A326197(n+1)`
-/

namespace A326196.P11443131612782033875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001511 (n + 1) - A326197 (n + 1)

end

end A326196.P11443131612782033875

/-! ## A326196.P12822313023211811840

`A001227(A003961(n+1))-A326197(n+1)`
-/

namespace A326196.P12822313023211811840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A003961 (n + 1)).toNat - A326197 (n + 1)

end

end A326196.P12822313023211811840

/-! ## A326196.P12235274233345333824

`A008908(A100577(n+1))-A326197(n+1)`
-/

namespace A326196.P12235274233345333824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (A100577 (n + 1)).toNat - A326197 (n + 1)

end

end A326196.P12235274233345333824

/-!
# A326197: Number of divisors of n that are not reachable from n with any combination of transitions x -> gcd(x,sigma(x)) and x -> gcd(x,phi(x)).

The programs for A326197, there is no canonical definition to state claims against.
-/

/-! ## A326197.P3532044436225758964

`A000005(n+1)-A326196(n+1)`
-/

namespace A326197.P3532044436225758964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A326196 (n + 1)

end

end A326197.P3532044436225758964

/-! ## A326197.P11506605943093429480

`Δ[A006218(n)]-A326196(n+1)`
-/

namespace A326197.P11506605943093429480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A326196 (n + 1)

end

end A326197.P11506605943093429480

/-! ## A326197.P12112841208018324534

`Δ[A054519(n)]-A326196(n+1)`
-/

namespace A326197.P12112841208018324534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A326196 (n + 1)

end

end A326197.P12112841208018324534

/-! ## A326197.P9524082355567200405

`A326196(A100577(n+1))-A326196(n+1)`
-/

namespace A326197.P9524082355567200405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326196 (A100577 (n + 1)).toNat - A326196 (n + 1)

end

end A326197.P9524082355567200405

/-! ## A326197.P12338035321011727191

`A073811(A050399(n+1))-A326196(n+1)`
-/

namespace A326197.P12338035321011727191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073811 (A050399 (n + 1)).toNat - A326196 (n + 1)

end

end A326197.P12338035321011727191

/-!
# A326198: Number of positive integers that are reachable from n with some combination of transitions x -> x-phi(x) and x -> gcd(x,phi(x)).

The programs for A326198, there is no canonical definition to state claims against.
-/

/-! ## A326198.P2635344991804144587

`A053475(n+1)-A133872(A123163(n))`
-/

namespace A326198.P2635344991804144587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053475 (n + 1) - A133872 (A123163 n).toNat

end

end A326198.P2635344991804144587

/-! ## A326198.P4863892998790179472

`A124895(A098885(n+2))+A053475(n+1)`
-/

namespace A326198.P4863892998790179472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124895 (A098885 (n + 2)).toNat + A053475 (n + 1)

end

end A326198.P4863892998790179472

/-! ## A326198.P17031542760598033620

`A287457(A256418(3*n+2))+A076640(n+1)`
-/

namespace A326198.P17031542760598033620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287457 (A256418 (3 * n + 2)).toNat + A076640 (n + 1)

end

end A326198.P17031542760598033620

/-! ## A326198.P12437304172183441142

`A053475(n+1)-A194293(A000032(n))`
-/

namespace A326198.P12437304172183441142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053475 (n + 1) - A194293 (A000032 n).toNat

end

end A326198.P12437304172183441142

/-! ## A326198.P14875883992607446610

`A331913(A076640(n+1)%A331913(3*n+5))`
-/

namespace A326198.P14875883992607446610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331913 (Int.tmod (A076640 (n + 1)) (A331913 (3 * n + 5))).toNat

end

end A326198.P14875883992607446610

