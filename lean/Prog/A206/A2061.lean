import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C015
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C009
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C003
import Seq.B005.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A206100: G.f.: A(x) = Sum_{n>=0} x^n / Product_{k=1..n} (1-x^k)^k.

The programs for A206100, there is no canonical definition to state claims against.
-/

/-! ## A206100.P14180333234366921985

`A167520(A079289(n))`
-/

namespace A206100.P14180333234366921985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167520 (A079289 n).toNat

end

end A206100.P14180333234366921985

/-! ## A206100.P3800646324842443959

`A252474(A056532(n))`
-/

namespace A206100.P3800646324842443959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (A056532 n).toNat

end

end A206100.P3800646324842443959

/-! ## A206100.P7582886352139724136

`A105108(A242362(n))`
-/

namespace A206100.P7582886352139724136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105108 (A242362 n).toNat

end

end A206100.P7582886352139724136

/-! ## A206100.P12298454335590121615

`A232753(A151261(n))`
-/

namespace A206100.P12298454335590121615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232753 (A151261 n).toNat

end

end A206100.P12298454335590121615

/-!
# A206101: Number of (n+1) X (n+1) 0..3 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing, and counterclockwise edge increases nonincreasing, rightwards and downwards.

The programs for A206101, there is no canonical definition to state claims against.
-/

/-! ## A206101.P32804315661476198

`A206109((n+1)²+n²)`
-/

namespace A206101.P32804315661476198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 ((n + 1) ^ 2 + n ^ 2)

end

end A206101.P32804315661476198

/-! ## A206101.P6508711785969071158

`record[gcd(A206109(n+1), A214292(n))]`
-/

namespace A206101.P6508711785969071158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A206109 (n + 1)) (A214292 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206101.P6508711785969071158

/-!
# A206102: Number of (n+1) X 2 0..3 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing, and counterclockwise edge increases nonincreasing, rightwards and downwards.

The programs for A206102, there is no canonical definition to state claims against.
-/

/-! ## A206102.P15169115080367430347

`A206109(∑[n]+1)`
-/

namespace A206102.P15169115080367430347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206102.P15169115080367430347

/-! ## A206102.P15197721644733164131

`record[A206109(n+1)/A342972(n)]`
-/

namespace A206102.P15197721644733164131
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206109 (n + 1) : ℚ) / (A342972 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206102.P15197721644733164131

/-! ## A206102.P15856547509360115517

`record[root(A206109(n+1), A054143(n))]`
-/

namespace A206102.P15856547509360115517
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206109 (n + 1) : ℝ) ^ (1 / (A054143 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206102.P15856547509360115517

/-! ## A206102.P3439853005832186374

`record[root(A206109(n+1), A059268(n))]`
-/

namespace A206102.P3439853005832186374
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206109 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206102.P3439853005832186374

/-!
# A206103: Number of (n+1) X 3 0..3 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing, and counterclockwise edge increases nonincreasing, rightwards and downwards.

The programs for A206103, there is no canonical definition to state claims against.
-/

/-! ## A206103.P10590258019153828619

`A206109(∑[n+1]+2)`
-/

namespace A206103.P10590258019153828619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206103.P10590258019153828619

/-! ## A206103.P6279776722253515811

`record[A206109(A114091(n+1)+1)]`
-/

namespace A206103.P6279776722253515811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206103.P6279776722253515811

/-! ## A206103.P8042875375270418123

`record[root(A206109(n+2), A054143(n))]`
-/

namespace A206103.P8042875375270418123
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206109 (n + 2) : ℝ) ^ (1 / (A054143 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206103.P8042875375270418123

/-! ## A206103.P17458257582929033991

`record[root(A206109(n+2), A059268(n))]`
-/

namespace A206103.P17458257582929033991
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206109 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206103.P17458257582929033991

/-! ## A206103.P17070800426850868388

`record[A206109(A198453(n+1))]`
-/

namespace A206103.P17070800426850868388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206103.P17070800426850868388

/-!
# A206104: Number of (n+1) X 4 0..3 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing, and counterclockwise edge increases nonincreasing, rightwards and downwards.

The programs for A206104, there is no canonical definition to state claims against.
-/

/-! ## A206104.P212511927484070978

`A206109(∑[n+2]+4)`
-/

namespace A206104.P212511927484070978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206104.P212511927484070978

/-!
# A206105: Number of (n+1) X 5 0..3 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing, and counterclockwise edge increases nonincreasing, rightwards and downwards.

The programs for A206105, there is no canonical definition to state claims against.
-/

/-! ## A206105.P6716394552439083801

`A206109(∑[n+3]+7)`
-/

namespace A206105.P6716394552439083801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A206105.P6716394552439083801

/-!
# A206106: Number of (n+1) X 6 0..3 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing, and counterclockwise edge increases nonincreasing, rightwards and downwards.

The programs for A206106, there is no canonical definition to state claims against.
-/

/-! ## A206106.P9799409473873882699

`A206109(A374005(n+1))`
-/

namespace A206106.P9799409473873882699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206109 (A374005 (n + 1)).toNat

end

end A206106.P9799409473873882699

/-!
# A206110: Number of (n+1) X (n+1) 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206110, there is no canonical definition to state claims against.
-/

/-! ## A206110.P15802845951926737890

`A206118(∑[4*n]+1)`
-/

namespace A206110.P15802845951926737890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206110.P15802845951926737890

/-! ## A206110.P5879523936188905919

`record[gcd(A003987(n), A206118(n+1))]`
-/

namespace A206110.P5879523936188905919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A206118 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206110.P5879523936188905919

/-! ## A206110.P16587963018931334448

`record[or(-A274650(n), A206118(n+1))]`
-/

namespace A206110.P16587963018931334448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A274650 n) (A206118 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206110.P16587963018931334448

/-!
# A206111: Number of (n+1) X 2 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206111, there is no canonical definition to state claims against.
-/

/-! ## A206111.P4461157754266143281

`A206118(1+∑[n])`
-/

namespace A206111.P4461157754266143281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206111.P4461157754266143281

/-! ## A206111.P1010376110767345619

`record[A206118(n+1)/A155495(n)]`
-/

namespace A206111.P1010376110767345619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206118 (n + 1) : ℚ) / (A155495 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206111.P1010376110767345619

/-! ## A206111.P2195764149649946073

`record[A206118(n+1)/A287215(n)]`
-/

namespace A206111.P2195764149649946073
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206118 (n + 1) : ℚ) / (A287215 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206111.P2195764149649946073

/-! ## A206111.P16273121421384832529

`record[gcd(A206118(n+1), A303301(n))]`
-/

namespace A206111.P16273121421384832529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A206118 (n + 1)) (A303301 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206111.P16273121421384832529

/-!
# A206112: Number of (n+1) X 3 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206112, there is no canonical definition to state claims against.
-/

/-! ## A206112.P15817669286618343174

`A206118(2+∑[n+1])`
-/

namespace A206112.P15817669286618343174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206112.P15817669286618343174

/-!
# A206113: Number of (n+1) X 4 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206113, there is no canonical definition to state claims against.
-/

/-! ## A206113.P1504253127087922558

`A206118(∑[n+2]+4)`
-/

namespace A206113.P1504253127087922558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206113.P1504253127087922558

/-!
# A206114: Number of (n+1) X 5 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206114, there is no canonical definition to state claims against.
-/

/-! ## A206114.P6072145630775067566

`A206118(A374004(n+1))`
-/

namespace A206114.P6072145630775067566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A374004 (n + 1)).toNat

end

end A206114.P6072145630775067566

/-! ## A206114.P4754295192213228960

`A206118(A141214(n+1))`
-/

namespace A206114.P4754295192213228960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A141214 (n + 1)).toNat

end

end A206114.P4754295192213228960

/-!
# A206115: Number of (n+1) X 6 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206115, there is no canonical definition to state claims against.
-/

/-! ## A206115.P15790590745188239934

`A206118(A374005(n+1))`
-/

namespace A206115.P15790590745188239934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A374005 (n + 1)).toNat

end

end A206115.P15790590745188239934

/-! ## A206115.P12654568284888302056

`A206118(6+∑[n+5])`
-/

namespace A206115.P12654568284888302056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (6 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206115.P12654568284888302056

/-!
# A206116: Number of (n+1) X 7 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206116, there is no canonical definition to state claims against.
-/

/-! ## A206116.P13871978604052792260

`A206118(A374007(n+1))`
-/

namespace A206116.P13871978604052792260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A374007 (n + 1)).toNat

end

end A206116.P13871978604052792260

/-!
# A206117: Number of (n+1) X 8 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly two counterclockwise and two clockwise edge increases.

The programs for A206117, there is no canonical definition to state claims against.
-/

/-! ## A206117.P10844827031608181634

`A206118(A374008(n+1))`
-/

namespace A206117.P10844827031608181634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206118 (A374008 (n + 1)).toNat

end

end A206117.P10844827031608181634

/-!
# A206119: G.f.: A(x) = Sum_{n>=0} x^n / Product_{k=1..n} (1-x^k)^(n-k+1).

The programs for A206119, there is no canonical definition to state claims against.
-/

/-! ## A206119.P3066637028718768376

`Δ[A324936(n+1)]+and(1, A324948(n+1))`
-/

namespace A206119.P3066637028718768376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.land 1 (A324948 (n + 1))

end

end A206119.P3066637028718768376

/-! ## A206119.P7115040587741856076

`Δ[A324936(n+1)]^A082460(A126292(n))`
-/

namespace A206119.P7115040587741856076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324936 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A082460 (A126292 n).toNat : ℤ)

end

end A206119.P7115040587741856076

/-! ## A206119.P2718634032925782490

`A085748(n)-A198316(A198313(n))`
-/

namespace A206119.P2718634032925782490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085748 n - A198316 (A198313 n).toNat

end

end A206119.P2718634032925782490

/-! ## A206119.P17301112396052055894

`A163563(A148952(n))`
-/

namespace A206119.P17301112396052055894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163563 (A148952 n).toNat

end

end A206119.P17301112396052055894

/-! ## A206119.P4102594402327430080

`A001462(A357221(n))`
-/

namespace A206119.P4102594402327430080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A357221 n).toNat

end

end A206119.P4102594402327430080

/-!
# A206120: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A206120, there is no canonical definition to state claims against.
-/

/-! ## A206120.P8232524871829474323

`A206128(∑[4*n]+1)`
-/

namespace A206120.P8232524871829474323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206120.P8232524871829474323

/-! ## A206120.P17184437974608152114

`record[A003982(n)*A206128(n+1)]`
-/

namespace A206120.P17184437974608152114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A206128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206120.P17184437974608152114

/-! ## A206120.P18220904595577482552

`record[gcd(A003987(n), A206128(n+1))]`
-/

namespace A206120.P18220904595577482552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A206128 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206120.P18220904595577482552

/-! ## A206120.P4750054206520120012

`A206002(n+1)+A205990(n+1)`
-/

namespace A206120.P4750054206520120012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206002 (n + 1) + A205990 (n + 1)

end

end A206120.P4750054206520120012

/-!
# A206121: Number of (n+1) X 2 0..2 arrays with every 2 X 2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A206121, the canonical program `A206121.P2348071454579118727` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206121 has offset 1).

The definition of A206121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206121.P2348071454579118727

`A206003(n+1)+A205991(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A206121

/-- `A206003(n+1)+A205991(n+1)` -/
def P2348071454579118727.Spec : Prop :=
  ∀ n, P2348071454579118727.a n = A206121 (n + 1)

theorem P2348071454579118727.correct : P2348071454579118727.Spec := by
  intro n
  simp only [A206121, Nat.add_sub_cancel]

end A206121

/-! ## A206121.P14941048739242661624

`ogf((50+70x-432x^2-970x^3-650x^4+62x^5-20x^6-64x^7-2x^8)/(1-2x-13x^2+9x^3+50x^4+43x^5-4x^6+4x^8))`
-/

namespace A206121.P14941048739242661624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [50, 70, -432, -970, -650, 62, -20, -64, -2] [1, -2, -13, 9, 50, 43, -4, 0, 4] n

end

end A206121.P14941048739242661624

namespace A206121

/-- `ogf((50+70x-432x^2-970x^3-650x^4+62x^5-20x^6-64x^7-2x^8)/(1-2x-13x^2+9x^3+50x^4+43x^5-4x^6+4x^8))` -/
def P14941048739242661624.Spec : Prop :=
  ∀ n, P14941048739242661624.a n = A206121 (n + 1)

end A206121

/-! ## A206121.P11282160731147242309

`A206010(A000124(n))+A205991(n+1)`
-/

namespace A206121.P11282160731147242309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (A000124 n).toNat + A205991 (n + 1)

end

end A206121.P11282160731147242309

namespace A206121

/-- `A206010(A000124(n))+A205991(n+1)` -/
def P11282160731147242309.Spec : Prop :=
  ∀ n, P11282160731147242309.a n = A206121 (n + 1)

end A206121

/-! ## A206121.P2982686187196230694

`A206010(∑[n+1])+A205991(n+1)`
-/

namespace A206121.P2982686187196230694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (∑ j ∈ Finset.range (n + 1), f1 j) + A205991 (n + 1)

end

end A206121.P2982686187196230694

namespace A206121

/-- `A206010(∑[n+1])+A205991(n+1)` -/
def P2982686187196230694.Spec : Prop :=
  ∀ n, P2982686187196230694.a n = A206121 (n + 1)

end A206121

/-! ## A206121.P7131185880054751199

`A206128(∑[n]+1)`
-/

namespace A206121.P7131185880054751199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206121.P7131185880054751199

namespace A206121

/-- `A206128(∑[n]+1)` -/
def P7131185880054751199.Spec : Prop :=
  ∀ n, P7131185880054751199.a n = A206121 (n + 1)

end A206121

/-!
# A206122: Number of (n+1)X3 0..2 arrays with every 2X2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A206122, there is no canonical definition to state claims against.
-/

/-! ## A206122.P15431349893003235835

`A206004(n+1)+A205992(n+1)`
-/

namespace A206122.P15431349893003235835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206004 (n + 1) + A205992 (n + 1)

end

end A206122.P15431349893003235835

/-! ## A206122.P6863194488103030131

`A206010(∑[n+1]+2)+A205992(n+1)`
-/

namespace A206122.P6863194488103030131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A205992 (n + 1)

end

end A206122.P6863194488103030131

/-! ## A206122.P4100274379981453252

`A206004(n+1)+A205998(∑[n+1]+2)`
-/

namespace A206122.P4100274379981453252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206004 (n + 1) + A205998 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206122.P4100274379981453252

/-! ## A206122.P14572724058796187986

`A206128(∑[n+1]+2)`
-/

namespace A206122.P14572724058796187986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206122.P14572724058796187986

/-!
# A206123: Number of (n+1)X4 0..2 arrays with every 2X2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A206123, there is no canonical definition to state claims against.
-/

/-! ## A206123.P9941519569888901378

`A206005(n+1)+A205993(n+1)`
-/

namespace A206123.P9941519569888901378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206005 (n + 1) + A205993 (n + 1)

end

end A206123.P9941519569888901378

/-! ## A206123.P13823180376789678210

`A206010(∑[n+2]+4)+A205993(n+1)`
-/

namespace A206123.P13823180376789678210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (∑ j ∈ Finset.range (n + 1), f1 j + 4) + A205993 (n + 1)

end

end A206123.P13823180376789678210

/-! ## A206123.P7205387362980279603

`A206005(n+1)+A205998(A167614(n+1))`
-/

namespace A206123.P7205387362980279603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206005 (n + 1) + A205998 (A167614 (n + 1)).toNat

end

end A206123.P7205387362980279603

/-! ## A206123.P7566240503081594004

`A205993(n+1)+lcm(2, A206010(A167614(n+1)))`
-/

namespace A206123.P7566240503081594004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205993 (n + 1) + (Int.lcm 2 (A206010 (A167614 (n + 1)).toNat) : ℤ)

end

end A206123.P7566240503081594004

/-! ## A206123.P8429325634206586867

`A205993(n+1)+A206010(A167614(n+1))%A205994(n+1)`
-/

namespace A206123.P8429325634206586867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205993 (n + 1) + Int.tmod (A206010 (A167614 (n + 1)).toNat) (A205994 (n + 1))

end

end A206123.P8429325634206586867

/-!
# A206124: Number of (n+1)X5 0..2 arrays with every 2X2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A206124, there is no canonical definition to state claims against.
-/

/-! ## A206124.P9743537858232838730

`A206006(n+1)+A205994(n+1)`
-/

namespace A206124.P9743537858232838730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206006 (n + 1) + A205994 (n + 1)

end

end A206124.P9743537858232838730

/-! ## A206124.P3130636427625094858

`A206128(A374004(n+1))`
-/

namespace A206124.P3130636427625094858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (A374004 (n + 1)).toNat

end

end A206124.P3130636427625094858

/-! ## A206124.P14294128702145376401

`A206128(A141214(n+1))`
-/

namespace A206124.P14294128702145376401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (A141214 (n + 1)).toNat

end

end A206124.P14294128702145376401

/-!
# A206125: Number of (n+1)X6 0..2 arrays with every 2X2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A206125, there is no canonical definition to state claims against.
-/

/-! ## A206125.P11243358116544324314

`A206007(n+1)+A205995(n+1)`
-/

namespace A206125.P11243358116544324314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206007 (n + 1) + A205995 (n + 1)

end

end A206125.P11243358116544324314

/-! ## A206125.P8142504418327089660

`A206128(A374005(n+1))`
-/

namespace A206125.P8142504418327089660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (A374005 (n + 1)).toNat

end

end A206125.P8142504418327089660

/-!
# A206126: Number of (n+1)X7 0..2 arrays with every 2X2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A206126, there is no canonical definition to state claims against.
-/

/-! ## A206126.P4623237150179018420

`A206008(n+1)+A205996(n+1)`
-/

namespace A206126.P4623237150179018420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206008 (n + 1) + A205996 (n + 1)

end

end A206126.P4623237150179018420

/-! ## A206126.P14644774643159396880

`A206128(A374007(n+1))`
-/

namespace A206126.P14644774643159396880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (A374007 (n + 1)).toNat

end

end A206126.P14644774643159396880

/-! ## A206126.P13130253235757962963

`A206128(10+∑[n+6])`
-/

namespace A206126.P13130253235757962963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (10 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206126.P13130253235757962963

/-!
# A206127: Number of (n+1)X8 0..2 arrays with every 2X2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A206127, there is no canonical definition to state claims against.
-/

/-! ## A206127.P8273394627434763372

`A206009(n+1)+A205997(n+1)`
-/

namespace A206127.P8273394627434763372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206009 (n + 1) + A205997 (n + 1)

end

end A206127.P8273394627434763372

/-! ## A206127.P12788213876373044701

`A206128(A374008(n+1))`
-/

namespace A206127.P12788213876373044701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (A374008 (n + 1)).toNat

end

end A206127.P12788213876373044701

/-!
# A206128: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with every 2X2 subblock having nonzero determinant and having the same number of clockwise edge increases as its horizontal and vertical neighbors.

The programs for A206128, there is no canonical definition to state claims against.
-/

/-! ## A206128.P2246373731616453239

`A206010(n+1)+A205998(n+1)`
-/

namespace A206128.P2246373731616453239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206010 (n + 1) + A205998 (n + 1)

end

end A206128.P2246373731616453239

/-!
# A206129: Number of (n+1) X (n+1) 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206129, there is no canonical definition to state claims against.
-/

/-! ## A206129.P4542743746809889576

`A206137((n+1)²+n²)`
-/

namespace A206129.P4542743746809889576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206137 ((n + 1) ^ 2 + n ^ 2)

end

end A206129.P4542743746809889576

/-!
# A206130: Number of (n+1) X 2 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206130, there is no canonical definition to state claims against.
-/

/-! ## A206130.P6101773917680446068

`A206137(∑[n]+1)`
-/

namespace A206130.P6101773917680446068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206137 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206130.P6101773917680446068

/-! ## A206130.P14975164001722667628

`record[A206137(n+1)/A022170(n)]`
-/

namespace A206130.P14975164001722667628
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206137 (n + 1) : ℚ) / (A022170 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206130.P14975164001722667628

/-! ## A206130.P15477471368060624569

`record[gcd(A025581(n), A206137(n+1))]`
-/

namespace A206130.P15477471368060624569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A206137 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206130.P15477471368060624569

/-!
# A206131: Number of (n+1) X 3 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206131, there is no canonical definition to state claims against.
-/

/-! ## A206131.P422400571178338936

`A206137(∑[n+1]+2)`
-/

namespace A206131.P422400571178338936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206137 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206131.P422400571178338936

/-! ## A206131.P12729088058580444678

`record[A206137(Δ[A003453(n+5)])]`
-/

namespace A206131.P12729088058580444678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206137 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206131.P12729088058580444678

/-!
# A206132: Number of (n+1) X 4 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206132, there is no canonical definition to state claims against.
-/

/-! ## A206132.P171054946230088264

`A234781(1+n)+8`
-/

namespace A206132.P171054946230088264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234781 (1 + n) + 8

end

end A206132.P171054946230088264

/-! ## A206132.P5984314041230923162

`4*(A138979(n+2)+2)`
-/

namespace A206132.P5984314041230923162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A138979 (n + 2) + 2)

end

end A206132.P5984314041230923162

/-! ## A206132.P9191128931658593559

`A234786(A167614(n+1))+8`
-/

namespace A206132.P9191128931658593559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234786 (A167614 (n + 1)).toNat + 8

end

end A206132.P9191128931658593559

/-! ## A206132.P15112690470757887213

`A206137(∑[n+2]+4)`
-/

namespace A206132.P15112690470757887213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206137 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206132.P15112690470757887213

/-!
# A206133: Number of (n+1) X 5 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206133, there is no canonical definition to state claims against.
-/

/-! ## A206133.P17383343053590650763

`A234782(n+1)+8`
-/

namespace A206133.P17383343053590650763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234782 (n + 1) + 8

end

end A206133.P17383343053590650763

/-! ## A206133.P8557212544862443830

`4/3*A209513(n+1)+8`
-/

namespace A206133.P8557212544862443830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A209513 (n + 1) : ℚ) + 8

end

end A206133.P8557212544862443830

/-! ## A206133.P9149317890026087354

`A206137(A374004(n+1))`
-/

namespace A206133.P9149317890026087354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206137 (A374004 (n + 1)).toNat

end

end A206133.P9149317890026087354

/-! ## A206133.P14837350290435463922

`A206137(A141214(n+1))`
-/

namespace A206133.P14837350290435463922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206137 (A141214 (n + 1)).toNat

end

end A206133.P14837350290435463922

/-!
# A206134: Number of (n+1) X 6 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206134, there is no canonical definition to state claims against.
-/

/-! ## A206134.P4467156480577773209

`A234783(n+1)+8`
-/

namespace A206134.P4467156480577773209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234783 (n + 1) + 8

end

end A206134.P4467156480577773209

/-! ## A206134.P15004257777658549783

`4*(A222167(n+2)+2)`
-/

namespace A206134.P15004257777658549783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A222167 (n + 2) + 2)

end

end A206134.P15004257777658549783

/-! ## A206134.P4067976275888667464

`A209514(n+1)+A222167(n+2)+8`
-/

namespace A206134.P4067976275888667464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209514 (n + 1) + (A222167 (n + 2) + 8)

end

end A206134.P4067976275888667464

/-! ## A206134.P10612149773882617499

`A206137(A374005(n+1))`
-/

namespace A206134.P10612149773882617499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206137 (A374005 (n + 1)).toNat

end

end A206134.P10612149773882617499

/-!
# A206135: Number of (n+1) X 7 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206135, there is no canonical definition to state claims against.
-/

/-! ## A206135.P2719962587039304117

`A234784(n+1)+8`
-/

namespace A206135.P2719962587039304117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234784 (n + 1) + 8

end

end A206135.P2719962587039304117

/-! ## A206135.P15526359615974494769

`A206137(A374007(n+1))`
-/

namespace A206135.P15526359615974494769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206137 (A374007 (n + 1)).toNat

end

end A206135.P15526359615974494769

/-!
# A206136: Number of (n+1) X 8 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206136, there is no canonical definition to state claims against.
-/

/-! ## A206136.P12726914871724747529

`A234785(n+1)+8`
-/

namespace A206136.P12726914871724747529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234785 (n + 1) + 8

end

end A206136.P12726914871724747529

/-!
# A206138: G.f.: A(x) = Sum_{n>=0} x^(n*(n+1)/2) / Product_{k=1..n} (1-x^k)^k.

The programs for A206138, there is no canonical definition to state claims against.
-/

/-! ## A206138.P15455216579631957385

`A237258(n)+A225654(A360686(n+1))`
-/

namespace A206138.P15455216579631957385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237258 n + A225654 (A360686 (n + 1)).toNat

end

end A206138.P15455216579631957385

/-! ## A206138.P9751674416542077189

`A237258(n)+A204445(A335328(3*(n+1)))`
-/

namespace A206138.P9751674416542077189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237258 n + A204445 (A335328 (3 * (n + 1))).toNat

end

end A206138.P9751674416542077189

/-! ## A206138.P1286008340675378313

`filter[A373219(n), A221641(#)]`
-/

namespace A206138.P1286008340675378313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A221641 (f1 j).toNat = 1) n)

end

end A206138.P1286008340675378313

/-! ## A206138.P9332287316933825518

`filter[A128762(2*n), A221641(#)]`
-/

namespace A206138.P9332287316933825518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128762 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A221641 (f1 j).toNat = 1) n)

end

end A206138.P9332287316933825518

/-! ## A206138.P10649898091124994294

`A126796(n)+A115861(A298730(n))`
-/

namespace A206138.P10649898091124994294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126796 n + A115861 (A298730 n).toNat

end

end A206138.P10649898091124994294

/-!
# A206139: G.f.: A(x) = Sum_{n>=0} x^(n*(n+1)/2) / Product_{k=1..n} (1-x^k)^(n-k+1).

The programs for A206139, there is no canonical definition to state claims against.
-/

/-! ## A206139.P2776967324954918811

`A257639(A052960(n))`
-/

namespace A206139.P2776967324954918811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A052960 n).toNat

end

end A206139.P2776967324954918811

/-! ## A206139.P8437770285026266944

`A276581(A202846(n))+1`
-/

namespace A206139.P8437770285026266944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A202846 n).toNat + 1

end

end A206139.P8437770285026266944

/-! ## A206139.P13160296157285324312

`A182210(A318797(n+1))`
-/

namespace A206139.P13160296157285324312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182210 (A318797 (n + 1)).toNat

end

end A206139.P13160296157285324312

/-!
# A206141: G.f.: Sum_{n>=0} x^n/Product_{k=1..n} (1 - A002203(k)*x^k + (-1)^k*x^(2*k)), where A002203 is the companion Pell numbers.

The programs for A206141, there is no canonical definition to state claims against.
-/

/-! ## A206141.P4670920279833765514

`A203413(n)+A089865(A007111(n))`
-/

namespace A206141.P4670920279833765514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203413 n + A089865 (A007111 n).toNat

end

end A206141.P4670920279833765514

/-! ## A206141.P1151420596722435382

`A305052(A176643(n))+A305049(n)`
-/

namespace A206141.P1151420596722435382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305052 (A176643 n).toNat + A305049 n

end

end A206141.P1151420596722435382

/-! ## A206141.P14521346734122155430

`A305049(n)-A010051(A278396(n))`
-/

namespace A206141.P14521346734122155430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305049 n - A010051 (A278396 n).toNat

end

end A206141.P14521346734122155430

/-!
# A206142: Number of (n+1) X (n+1) 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206142, there is no canonical definition to state claims against.
-/

/-! ## A206142.P5612643153360679281

`A206150(∑[4*n]+1)`
-/

namespace A206142.P5612643153360679281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206150 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206142.P5612643153360679281

/-! ## A206142.P1051250502216480385

`record[gcd(A003987(n), A206150(n+1))]`
-/

namespace A206142.P1051250502216480385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A206150 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206142.P1051250502216480385

/-!
# A206143: Number of (n+1) X 2 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206143, the canonical program `A206143.P2804007554589879766` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206143 has offset 1).

The definition of A206143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206143.P2804007554589879766

`3*a(n-1)` with `a(0)=81, a(1)=60, a(2)=162`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206143

/-- `3*a(n-1)` -/
def P2804007554589879766.Spec : Prop :=
  ∀ n, (P2804007554589879766.a n : ℤ) = A206143 (n + 1)

theorem P2804007554589879766.correct : P2804007554589879766.Spec := by
  intro n
  simp only [A206143, Nat.add_sub_cancel]

end A206143

/-! ## A206143.P1873115380627201323

`A206150(∑[n]+1)`
-/

namespace A206143.P1873115380627201323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206150 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206143.P1873115380627201323

namespace A206143

/-- `A206150(∑[n]+1)` -/
def P1873115380627201323.Spec : Prop :=
  ∀ n, P1873115380627201323.a n = A206143 (n + 1)

end A206143

/-!
# A206144: Number of (n+1) X 3 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206144, the canonical program `A206144.P5022287677306556564` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206144 has offset 1).

The definition of A206144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206144.P5022287677306556564

`ogf((60-54x+12x^2)/(1-5x+2x^2))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206144

/-- `ogf((60-54x+12x^2)/(1-5x+2x^2))` -/
def P5022287677306556564.Spec : Prop :=
  ∀ n, P5022287677306556564.a n = A206144 (n + 1)

theorem P5022287677306556564.correct : P5022287677306556564.Spec := by
  intro n
  simp only [A206144, Nat.add_sub_cancel]

end A206144

/-! ## A206144.P7505624412756733333

`6*(A020698(1+n)+A000007(n))`
-/

namespace A206144.P7505624412756733333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A020698 (1 + n) + A000007 n)

end

end A206144.P7505624412756733333

namespace A206144

/-- `6*(A020698(1+n)+A000007(n))` -/
def P7505624412756733333.Spec : Prop :=
  ∀ n, P7505624412756733333.a n = A206144 (n + 1)

end A206144

/-! ## A206144.P17431411440107149020

`6*(A020698(n+1)+1-A057427(n))`
-/

namespace A206144.P17431411440107149020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A020698 (n + 1) + 1 - A057427 n)

end

end A206144.P17431411440107149020

namespace A206144

/-- `6*(A020698(n+1)+1-A057427(n))` -/
def P17431411440107149020.Spec : Prop :=
  ∀ n, P17431411440107149020.a n = A206144 (n + 1)

end A206144

/-! ## A206144.P162777827839516084

`6*(A020698(n+1)+1-A001221(record[A014963(n+1)]))`
-/

namespace A206144.P162777827839516084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A020698 (n + 1) + 1 - A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A206144.P162777827839516084

namespace A206144

/-- `6*(A020698(n+1)+1-A001221(record[A014963(n+1)]))` -/
def P162777827839516084.Spec : Prop :=
  ∀ n, P162777827839516084.a n = A206144 (n + 1)

end A206144

/-! ## A206144.P9130021123618438347

`Δ[∑[3*A020698(n)]*A036453(n+1)]`
-/

namespace A206144.P9130021123618438347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A020698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A036453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206144.P9130021123618438347

namespace A206144

/-- `Δ[∑[3*A020698(n)]*A036453(n+1)]` -/
def P9130021123618438347.Spec : Prop :=
  ∀ n, P9130021123618438347.a n = A206144 (n + 1)

end A206144

/-!
# A206145: Number of (n+1) X 4 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206145, the canonical program `A206145.P8326850148868081570` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206145 has offset 1).

The definition of A206145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206145.P9368481133996902803

`ogf((162-336x+144x^2)/(1-9x+15x^2-6x^3))`
-/

namespace A206145.P9368481133996902803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [162, -336, 144] [1, -9, 15, -6] n

end

end A206145.P9368481133996902803

namespace A206145

/-- `ogf((162-336x+144x^2)/(1-9x+15x^2-6x^3))` -/
def P9368481133996902803.Spec : Prop :=
  ∀ n, P9368481133996902803.a n = A206145 (n + 1)

end A206145

/-! ## A206145.P15440960562983636350

`2*A209506(1+n)`
-/

namespace A206145.P15440960562983636350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209506 (1 + n)

end

end A206145.P15440960562983636350

namespace A206145

/-- `2*A209506(1+n)` -/
def P15440960562983636350.Spec : Prop :=
  ∀ n, P15440960562983636350.a n = A206145 (n + 1)

end A206145

/-! ## A206145.P8326850148868081570

`6*A078100(2+n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A206145

/-- `6*A078100(2+n)` -/
def P8326850148868081570.Spec : Prop :=
  ∀ n, P8326850148868081570.a n = A206145 (n + 1)

theorem P8326850148868081570.correct : P8326850148868081570.Spec := by
  intro n
  simp only [A206145, Nat.add_sub_cancel]

end A206145

/-! ## A206145.P10440912059546037488

`3*(A205313(n+1)-2)`
-/

namespace A206145.P10440912059546037488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A205313 (n + 1) - 2)

end

end A206145.P10440912059546037488

namespace A206145

/-- `3*(A205313(n+1)-2)` -/
def P10440912059546037488.Spec : Prop :=
  ∀ n, P10440912059546037488.a n = A206145 (n + 1)

end A206145

/-! ## A206145.P2762265245913222348

`3/2*A203373(n+1)`
-/

namespace A206145.P2762265245913222348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A203373 (n + 1) : ℚ)

end

end A206145.P2762265245913222348

namespace A206145

/-- `3/2*A203373(n+1)` -/
def P2762265245913222348.Spec : Prop :=
  ∀ n, P2762265245913222348.a n = (A206145 (n + 1) : ℚ)

theorem P2762265245913222348.correct : P2762265245913222348.Spec := by
  intro n
  simp only [A206145, Nat.add_sub_cancel, A206145.P2762265245913222348.a, A206145.P8326850148868081570.a, A078100, A078100.P2117606517684963015.a, A203373, A203373.P16205232748738663888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A206145

/-! ## A206145.P7060231294633431827

`3*(A205250(n+1)/2-2)`
-/

namespace A206145.P7060231294633431827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A205250 (n + 1) : ℚ) / 2 - 2)

end

end A206145.P7060231294633431827

namespace A206145

/-- `3*(A205250(n+1)/2-2)` -/
def P7060231294633431827.Spec : Prop :=
  ∀ n, P7060231294633431827.a n = (A206145 (n + 1) : ℚ)

end A206145

/-! ## A206145.P11909848556815767593

`A209506(n+1)+A209506(n+1)`
-/

namespace A206145.P11909848556815767593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209506 (n + 1) + A209506 (n + 1)

end

end A206145.P11909848556815767593

namespace A206145

/-- `A209506(n+1)+A209506(n+1)` -/
def P11909848556815767593.Spec : Prop :=
  ∀ n, P11909848556815767593.a n = A206145 (n + 1)

theorem P11909848556815767593.correct : P11909848556815767593.Spec := by
  intro n
  simp only [A206145, Nat.add_sub_cancel, A206145.P11909848556815767593.a, A206145.P8326850148868081570.a, A078100, A078100.P2117606517684963015.a, A209506, A209506.P7441585109352370267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A206145

/-!
# A206146: Number of (n+1) X 5 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206146, there is no canonical definition to state claims against.
-/

/-! ## A206146.P12942449657454593910

`2*A209507(1+n)`
-/

namespace A206146.P12942449657454593910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209507 (1 + n)

end

end A206146.P12942449657454593910

/-! ## A206146.P9634855682004980057

`6*A207994(n+2)`
-/

namespace A206146.P9634855682004980057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A207994 (n + 2)

end

end A206146.P9634855682004980057

/-! ## A206146.P17557029986896370156

`lcm(2, A209507(n+1))`
-/

namespace A206146.P17557029986896370156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A209507 (n + 1))

end

end A206146.P17557029986896370156

/-! ## A206146.P14475066355706659783

`3*(A205314(1+n)-2)`
-/

namespace A206146.P14475066355706659783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A205314 (1 + n) - 2)

end

end A206146.P14475066355706659783

/-! ## A206146.P4241228878154461055

`3/2*A203374(n+1)`
-/

namespace A206146.P4241228878154461055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A203374 (n + 1) : ℚ)

end

end A206146.P4241228878154461055

/-! ## A206146.P10937741563967767813

`3*(A205251(n+1)/2-2)`
-/

namespace A206146.P10937741563967767813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A205251 (n + 1) : ℚ) / 2 - 2)

end

end A206146.P10937741563967767813

/-!
# A206147: Number of (n+1) X 6 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206147, there is no canonical definition to state claims against.
-/

/-! ## A206147.P1505647278403404279

`2*A209508(1+n)`
-/

namespace A206147.P1505647278403404279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209508 (1 + n)

end

end A206147.P1505647278403404279

/-! ## A206147.P5059193056324823175

`6*A207995(2+n)`
-/

namespace A206147.P5059193056324823175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A207995 (2 + n)

end

end A206147.P5059193056324823175

/-! ## A206147.P7421897478060171381

`3*(A205315(1+n)-2)`
-/

namespace A206147.P7421897478060171381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A205315 (1 + n) - 2)

end

end A206147.P7421897478060171381

/-! ## A206147.P3708893561739472534

`3/2*A203375(n+1)`
-/

namespace A206147.P3708893561739472534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A203375 (n + 1) : ℚ)

end

end A206147.P3708893561739472534

/-! ## A206147.P9462717765040479078

`3*(A205252(n+1)/2-2)`
-/

namespace A206147.P9462717765040479078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A205252 (n + 1) : ℚ) / 2 - 2)

end

end A206147.P9462717765040479078

/-! ## A206147.P1813791193035985792

`A209508(n+1)+A209508(n+1)`
-/

namespace A206147.P1813791193035985792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209508 (n + 1) + A209508 (n + 1)

end

end A206147.P1813791193035985792

/-!
# A206148: Number of (n+1) X 7 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206148, there is no canonical definition to state claims against.
-/

/-! ## A206148.P2056512809217457816

`2*A209509(1+n)`
-/

namespace A206148.P2056512809217457816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209509 (1 + n)

end

end A206148.P2056512809217457816

/-! ## A206148.P4347530569177725636

`6*A207996(n+2)`
-/

namespace A206148.P4347530569177725636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A207996 (n + 2)

end

end A206148.P4347530569177725636

/-! ## A206148.P9958977193398831674

`3*(A205316(1+n)-2)`
-/

namespace A206148.P9958977193398831674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A205316 (1 + n) - 2)

end

end A206148.P9958977193398831674

/-! ## A206148.P2939966931072767383

`3*A203376(1+n)/2`
-/

namespace A206148.P2939966931072767383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A203376 (1 + n) : ℚ) / 2)

end

end A206148.P2939966931072767383

/-! ## A206148.P6969856060913557414

`3*(A205253(n+1)/2-2)`
-/

namespace A206148.P6969856060913557414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A205253 (n + 1) : ℚ) / 2 - 2)

end

end A206148.P6969856060913557414

/-! ## A206148.P8778031206532975812

`A209509(n+1)+A209509(n+1)`
-/

namespace A206148.P8778031206532975812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209509 (n + 1) + A209509 (n + 1)

end

end A206148.P8778031206532975812

/-!
# A206149: Number of (n+1) X 8 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly three counterclockwise and three clockwise edge increases.

The programs for A206149, there is no canonical definition to state claims against.
-/

/-! ## A206149.P13281161727641555904

`2*A209510(1+n)`
-/

namespace A206149.P13281161727641555904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209510 (1 + n)

end

end A206149.P13281161727641555904

/-! ## A206149.P7139549254667700107

`3*(A205317(1+n)-2)`
-/

namespace A206149.P7139549254667700107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A205317 (1 + n) - 2)

end

end A206149.P7139549254667700107

/-! ## A206149.P3253122227635304985

`3*A203377(1+n)/2`
-/

namespace A206149.P3253122227635304985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A203377 (1 + n) : ℚ) / 2)

end

end A206149.P3253122227635304985

/-! ## A206149.P592385676070092311

`3*(A205254(n+1)/2-2)`
-/

namespace A206149.P592385676070092311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A205254 (n + 1) : ℚ) / 2 - 2)

end

end A206149.P592385676070092311

/-! ## A206149.P12585047196788261189

`A209510(n+1)+A209510(n+1)`
-/

namespace A206149.P12585047196788261189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209510 (n + 1) + A209510 (n + 1)

end

end A206149.P12585047196788261189

/-!
# A206152: a(n) = Sum_{k=0..n} binomial(n,k)^(n+k).

The programs for A206152, the canonical program `A206152.P4511767370995383526` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206152 has offset 0).

The definition of A206152 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)^(n+#)]` (program `A206152.P4511767370995383526`, by `A206152.P4511767370995383526.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A206152.P4511767370995383526

`∑{#}[n, C(n, #)^(n+#)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206152

/-- `∑{#}[n, C(n, #)^(n+#)]` -/
def P4511767370995383526.Spec : Prop :=
  ∀ n, (P4511767370995383526.a n : ℤ) = A206152 n

theorem P4511767370995383526.correct : P4511767370995383526.Spec := by
  intro n
  simp only [A206152]

end A206152

/-!
# A206153: G.f.: exp( Sum_{n>=1} A206154(n)*x^n/n ), where A206154(n) = Sum_{k=0..n} binomial(n,k)^(k+2).

The programs for A206153, there is no canonical definition to state claims against.
-/

/-! ## A206153.P12937426683630839467

`A211861((n^3+n)/2)+n`
-/

namespace A206153.P12937426683630839467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211861 (SequenceMachineLib.roundAway ((n ^ 3 + n : ℚ) / 2)).toNat + (n : ℤ)

end

end A206153.P12937426683630839467

/-!
# A206154: a(n) = Sum_{k=0..n} binomial(n,k)^(k+2).

The programs for A206154, the canonical program `A206154.P10004109561649497429` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206154 has offset 0).

The definition of A206154 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)^(#+2)]` (program `A206154.P10004109561649497429`, by `A206154.P10004109561649497429.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A206154.P10004109561649497429

`∑{#}[n, C(n, #)^(#+2)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206154

/-- `∑{#}[n, C(n, #)^(#+2)]` -/
def P10004109561649497429.Spec : Prop :=
  ∀ n, (P10004109561649497429.a n : ℤ) = A206154 n

theorem P10004109561649497429.correct : P10004109561649497429.Spec := by
  intro n
  simp only [A206154]

end A206154

/-!
# A206155: G.f.: exp( Sum_{n>=1} A206156(n)*x^n/n ), where A206156(n) = Sum_{k=0..n} binomial(n,k)^(2*k).

The programs for A206155, there is no canonical definition to state claims against.
-/

/-! ## A206155.P13823100535345315650

`A371794(A090977(n))`
-/

namespace A206155.P13823100535345315650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371794 (A090977 n).toNat

end

end A206155.P13823100535345315650

/-!
# A206156: a(n) = Sum_{k=0..n} binomial(n,k)^(2*k).

The programs for A206156, the canonical program `A206156.P12881292835573905433` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206156 has offset 0).

The definition of A206156 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)^(2*#)]` (program `A206156.P12881292835573905433`, by `A206156.P12881292835573905433.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A206156.P12881292835573905433

`∑{#}[n, C(n, #)^(2*#)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206156

/-- `∑{#}[n, C(n, #)^(2*#)]` -/
def P12881292835573905433.Spec : Prop :=
  ∀ n, (P12881292835573905433.a n : ℤ) = A206156 n

theorem P12881292835573905433.correct : P12881292835573905433.Spec := by
  intro n
  simp only [A206156]

end A206156

/-! ## A206156.P3059982299793112950

`∑{#}[n, (C(n, #)^#)²]`
-/

namespace A206156.P3059982299793112950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k ^ k) ^ 2

end

end A206156.P3059982299793112950

namespace A206156

/-- `∑{#}[n, (C(n, #)^#)²]` -/
def P3059982299793112950.Spec : Prop :=
  ∀ n, (P3059982299793112950.a n : ℤ) = A206156 n

theorem P3059982299793112950.correct : P3059982299793112950.Spec := by
  intro n
  simp only [A206156, Nat.add_sub_cancel, A206156.P3059982299793112950.f1, A206156.P3059982299793112950.a, A206156.P12881292835573905433.f1, A206156.P12881292835573905433.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A206156

/-!
# A206157: G.f.: exp( Sum_{n>=1} A206158(n)*x^n/n ), where A206158(n) = Sum_{k=0..n} binomial(n,k)^(2*k+1).

The programs for A206157, there is no canonical definition to state claims against.
-/

/-! ## A206157.P14803505809712289763

`A003415(A317172(n))+A000002(n+1)`
-/

namespace A206157.P14803505809712289763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A317172 n).toNat + A000002 (n + 1)

end

end A206157.P14803505809712289763

/-!
# A206158: a(n) = Sum_{k=0..n} binomial(n,k)^(2*k+1).

The programs for A206158, the canonical program `A206158.P4647140166435252338` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206158 has offset 0).

The definition of A206158 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)^(2*#+1)]` (program `A206158.P4647140166435252338`, by `A206158.P4647140166435252338.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A206158.P4647140166435252338

`∑{#}[n, C(n, #)^(2*#+1)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206158

/-- `∑{#}[n, C(n, #)^(2*#+1)]` -/
def P4647140166435252338.Spec : Prop :=
  ∀ n, (P4647140166435252338.a n : ℤ) = A206158 n

theorem P4647140166435252338.correct : P4647140166435252338.Spec := by
  intro n
  simp only [A206158]

end A206158

/-!
# A206159: Numbers needing at most two digits to write all positive divisors in decimal representation.

The programs for A206159, there is no canonical definition to state claims against.
-/

/-! ## A206159.P4411330822492574965

`∪[A209930(1+n), A243535(n+1)]`
-/

namespace A206159.P4411330822492574965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209930 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A206159.P4411330822492574965

/-! ## A206159.P18138154683048710255

`lt[A095048(n+1), 3]+1`
-/

namespace A206159.P18138154683048710255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A206159.P18138154683048710255

/-! ## A206159.P10897552717693091394

`lt[n/3*A095048(A028310(n)), n]`
-/

namespace A206159.P10897552717693091394
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A095048 (A028310 n).toNat : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A206159.P10897552717693091394

/-! ## A206159.P17773421252461759026

`eq[2, A067280(6+(row(A095048(n+1))+1)²)]+1`
-/

namespace A206159.P17773421252461759026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (6 + (SequenceMachineLib.triRow (A095048 (n + 1)).toNat + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A206159.P17773421252461759026

/-! ## A206159.P16297990868684152728

`lt[log2(A256824(n+1)), 8]+1`
-/

namespace A206159.P16297990868684152728
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A256824 (n + 1) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A206159.P16297990868684152728

/-!
# A206162: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206162, there is no canonical definition to state claims against.
-/

/-! ## A206162.P14665578827481809329

`A206169(∑[4*n]+1)`
-/

namespace A206162.P14665578827481809329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206162.P14665578827481809329

/-!
# A206163: Number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206163, there is no canonical definition to state claims against.
-/

/-! ## A206163.P7260407359667377537

`A206169(∑[n+2])`
-/

namespace A206163.P7260407359667377537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206163.P7260407359667377537

/-! ## A206163.P4742995725186003630

`record[A206169(A198455(n+1))]`
-/

namespace A206163.P4742995725186003630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206163.P4742995725186003630

/-! ## A206163.P11469271826717835528

`record[A206169(A000096(∏{e}[n+1, #]))]`
-/

namespace A206163.P11469271826717835528
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (A000096 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206163.P11469271826717835528

/-!
# A206164: Number of (n+1) X 4 0..3 arrays with every 2 X 2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206164, there is no canonical definition to state claims against.
-/

/-! ## A206164.P19786874631732455

`A206169(∑[n+3]+1)`
-/

namespace A206164.P19786874631732455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206164.P19786874631732455

/-! ## A206164.P16928668800956520350

`record[A206169(A198464(n+1))]`
-/

namespace A206164.P16928668800956520350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206164.P16928668800956520350

/-!
# A206165: Number of (n+1)X5 0..3 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206165, there is no canonical definition to state claims against.
-/

/-! ## A206165.P3525648340067234645

`A206169(∑[n+4]+3)`
-/

namespace A206165.P3525648340067234645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A206165.P3525648340067234645

/-!
# A206166: Number of (n+1)X6 0..3 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206166, there is no canonical definition to state claims against.
-/

/-! ## A206166.P1821952848605290697

`A206169(Δ[A264443(n)])`
-/

namespace A206166.P1821952848605290697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (f1 (n + 1) - f1 n).toNat

end

end A206166.P1821952848605290697

/-!
# A206167: Number of (n+1)X7 0..3 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206167, there is no canonical definition to state claims against.
-/

/-! ## A206167.P12020063121424112570

`A206169(eq[3, A219347(n)])`
-/

namespace A206167.P12020063121424112570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206167.P12020063121424112570

/-!
# A206170: Number of 2 X (n+1) 0..3 arrays with every 2 X 2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206170, the canonical program `A206170.P14056433237565420887` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206170 has offset 1).

The definition of A206170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206170.P14056433237565420887

`ogf((15-185x+626x^2-576x^3)/(1-18x+101x^2-192x^3+108x^4))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206170

/-- `ogf((15-185x+626x^2-576x^3)/(1-18x+101x^2-192x^3+108x^4))` -/
def P14056433237565420887.Spec : Prop :=
  ∀ n, P14056433237565420887.a n = A206170 (n + 1)

theorem P14056433237565420887.correct : P14056433237565420887.Spec := by
  intro n
  simp only [A206170, Nat.add_sub_cancel]

end A206170

/-! ## A206170.P14205169437562579324

`A206383(∑[n]+1)`
-/

namespace A206170.P14205169437562579324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206383 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206170.P14205169437562579324

namespace A206170

/-- `A206383(∑[n]+1)` -/
def P14205169437562579324.Spec : Prop :=
  ∀ n, P14205169437562579324.a n = A206170 (n + 1)

end A206170

/-! ## A206170.P11416720992638715560

`record[A010054(n)*A206383(n+1)]`
-/

namespace A206170.P11416720992638715560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206170.P11416720992638715560

namespace A206170

/-- `record[A010054(n)*A206383(n+1)]` -/
def P11416720992638715560.Spec : Prop :=
  ∀ n, P11416720992638715560.a n = A206170 (n + 1)

end A206170

/-! ## A206170.P14157276354817887791

`record[root(A206383(n+1), A213999(n))]`
-/

namespace A206170.P14157276354817887791
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206383 (n + 1) : ℝ) ^ (1 / (A213999 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206170.P14157276354817887791

namespace A206170

/-- `record[root(A206383(n+1), A213999(n))]` -/
def P14157276354817887791.Spec : Prop :=
  ∀ n, P14157276354817887791.a n = (A206170 (n + 1) : ℝ)

end A206170

/-! ## A206170.P15633427272631783672

`record[gcd(A168068(n), A206383(n+1))]`
-/

namespace A206170.P15633427272631783672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168068 n) (A206383 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206170.P15633427272631783672

namespace A206170

/-- `record[gcd(A168068(n), A206383(n+1))]` -/
def P15633427272631783672.Spec : Prop :=
  ∀ n, (P15633427272631783672.a n : ℤ) = A206170 (n + 1)

end A206170

/-!
# A206171: Number of 3 X (n+1) 0..3 arrays with every 2 X 2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206171, there is no canonical definition to state claims against.
-/

/-! ## A206171.P6368779965487256822

`A206169(∑[n+1]+2)`
-/

namespace A206171.P6368779965487256822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206171.P6368779965487256822

/-! ## A206171.P3564454016211958802

`record[A206169(A008795(n)+2)]`
-/

namespace A206171.P3564454016211958802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206171.P3564454016211958802

/-! ## A206171.P15959235308164359316

`record[A010054(n+1)*A206169(n+3)]`
-/

namespace A206171.P15959235308164359316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A206169 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206171.P15959235308164359316

/-! ## A206171.P1596518875580657748

`record[A206169(A133263(∏{e}[n+1, #]))]`
-/

namespace A206171.P1596518875580657748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (A133263 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206171.P1596518875580657748

/-!
# A206172: Number of 4X(n+1) 0..3 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206172, there is no canonical definition to state claims against.
-/

/-! ## A206172.P6003532587868389522

`A206169(∑[n+2]+4)`
-/

namespace A206172.P6003532587868389522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206172.P6003532587868389522

/-!
# A206173: Number of 5X(n+1) 0..3 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206173, there is no canonical definition to state claims against.
-/

/-! ## A206173.P13185925853107049090

`A206169(∑[3+n]+7)`
-/

namespace A206173.P13185925853107049090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A206173.P13185925853107049090

/-!
# A206174: Number of 6X(n+1) 0..3 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206174, there is no canonical definition to state claims against.
-/

/-! ## A206174.P6981937818595831363

`A206169(A167499(n+3))`
-/

namespace A206174.P6981937818595831363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (A167499 (n + 3)).toNat

end

end A206174.P6981937818595831363

/-!
# A206175: Number of 7X(n+1) 0..3 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..3 introduced in row major order.

The programs for A206175, there is no canonical definition to state claims against.
-/

/-! ## A206175.P17350717759311266505

`A206169(A167614(n+4)+3)`
-/

namespace A206175.P17350717759311266505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (A167614 (n + 4) + 3).toNat

end

end A206175.P17350717759311266505

/-!
# A206177: G.f.: exp( Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n,k)^3 * 2^k ).

The programs for A206177, there is no canonical definition to state claims against.
-/

/-! ## A206177.P359696593255954592

`A060066(n+1)+A000290(A051118(n))`
-/

namespace A206177.P359696593255954592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060066 (n + 1) + A000290 (A051118 n).toNat

end

end A206177.P359696593255954592

/-! ## A206177.P12253459072899402800

`A060066(n+1)+A033103(A060115(n))`
-/

namespace A206177.P12253459072899402800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060066 (n + 1) + A033103 (A060115 n).toNat

end

end A206177.P12253459072899402800

/-!
# A206178: a(n) = Sum_{k=0..n} binomial(n,k)^3 * 2^k.

The programs for A206178, the canonical program `A206178.P15693589202862159496` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206178 has offset 0).

The definition of A206178 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)^3*2^#]` (program `A206178.P15693589202862159496`, by `A206178.P15693589202862159496.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A206178.P15693589202862159496

`∑{#}[n, C(n, #)^3*2^#]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206178

/-- `∑{#}[n, C(n, #)^3*2^#]` -/
def P15693589202862159496.Spec : Prop :=
  ∀ n, (P15693589202862159496.a n : ℤ) = A206178 n

theorem P15693589202862159496.correct : P15693589202862159496.Spec := by
  intro n
  simp only [A206178]

end A206178

/-! ## A206178.P1207412899661537162

`A336163(∑[3+n])`
-/

namespace A206178.P1207412899661537162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336163 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206178.P1207412899661537162

namespace A206178

/-- `A336163(∑[3+n])` -/
def P1207412899661537162.Spec : Prop :=
  ∀ n, P1207412899661537162.a n = A206178 n

end A206178

/-! ## A206178.P1577528195934396095

`A336203(A155212(n)+4)`
-/

namespace A206178.P1577528195934396095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336203 (A155212 n + 4).toNat

end

end A206178.P1577528195934396095

namespace A206178

/-- `A336203(A155212(n)+4)` -/
def P1577528195934396095.Spec : Prop :=
  ∀ n, P1577528195934396095.a n = A206178 n

end A206178

/-!
# A206179: G.f.: exp( Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n,k)^3 * 3^k ).

The programs for A206179, there is no canonical definition to state claims against.
-/

/-! ## A206179.P14968464540689441306

`A024542(A254664(n)+3)`
-/

namespace A206179.P14968464540689441306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024542 (A254664 n + 3).toNat

end

end A206179.P14968464540689441306

/-!
# A206180: a(n) = Sum_{k=0..n} binomial(n,k)^3 * 3^k.

The programs for A206180, the canonical program `A206180.P13954993824715977530` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206180 has offset 0).

The definition of A206180 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)^3*3^#]` (program `A206180.P13954993824715977530`, by `A206180.P13954993824715977530.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A206180.P13954993824715977530

`∑{#}[n, C(n, #)^3*3^#]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206180

/-- `∑{#}[n, C(n, #)^3*3^#]` -/
def P13954993824715977530.Spec : Prop :=
  ∀ n, (P13954993824715977530.a n : ℤ) = A206180 n

theorem P13954993824715977530.correct : P13954993824715977530.Spec := by
  intro n
  simp only [A206180]

end A206180

/-! ## A206180.P15008287859782597438

`A336163(∑[n+3]+n+3)`
-/

namespace A206180.P15008287859782597438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336163 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A206180.P15008287859782597438

namespace A206180

/-- `A336163(∑[n+3]+n+3)` -/
def P15008287859782597438.Spec : Prop :=
  ∀ n, P15008287859782597438.a n = A206180 n

end A206180

/-! ## A206180.P7767421031130122330

`A336187(∑[n+4]+2)`
-/

namespace A206180.P7767421031130122330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336187 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206180.P7767421031130122330

namespace A206180

/-- `A336187(∑[n+4]+2)` -/
def P7767421031130122330.Spec : Prop :=
  ∀ n, P7767421031130122330.a n = A206180 n

end A206180

/-!
# A206181: Number of (n+1) X (n+1) 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A206181, there is no canonical definition to state claims against.
-/

/-! ## A206181.P10298525594391619969

`A206188((n+1)²+n²)`
-/

namespace A206181.P10298525594391619969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 ((n + 1) ^ 2 + n ^ 2)

end

end A206181.P10298525594391619969

/-!
# A206182: Number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A206182, there is no canonical definition to state claims against.
-/

/-! ## A206182.P2265119746528507446

`A206188(∑[n+1]+2)`
-/

namespace A206182.P2265119746528507446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206182.P2265119746528507446

/-! ## A206182.P18001403668667226638

`record[A010054(n)*A206188(n+2)]`
-/

namespace A206182.P18001403668667226638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206188 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206182.P18001403668667226638

/-! ## A206182.P18357094457062940652

`record[gcd(A002262(n), A206188(n+2))]`
-/

namespace A206182.P18357094457062940652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206188 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206182.P18357094457062940652

/-!
# A206183: Number of (n+1) X 4 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A206183, there is no canonical definition to state claims against.
-/

/-! ## A206183.P515827276941398730

`A206188(∑[n+2]+4)`
-/

namespace A206183.P515827276941398730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206183.P515827276941398730

/-!
# A206184: Number of (n+1) X 5 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A206184, there is no canonical definition to state claims against.
-/

/-! ## A206184.P3351057992509461077

`A206188(A374004(n+1))`
-/

namespace A206184.P3351057992509461077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (A374004 (n + 1)).toNat

end

end A206184.P3351057992509461077

/-! ## A206184.P1453018197635138414

`A206188(A141214(n+1))`
-/

namespace A206184.P1453018197635138414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (A141214 (n + 1)).toNat

end

end A206184.P1453018197635138414

/-!
# A206185: Number of (n+1) X 6 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A206185, there is no canonical definition to state claims against.
-/

/-! ## A206185.P1645624706793399086

`A206188(A374005(n+1))`
-/

namespace A206185.P1645624706793399086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (A374005 (n + 1)).toNat

end

end A206185.P1645624706793399086

/-! ## A206185.P14940816035573255060

`A206188(Δ[A264443(n)])`
-/

namespace A206185.P14940816035573255060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (f1 (n + 1) - f1 n).toNat

end

end A206185.P14940816035573255060

/-!
# A206186: Number of (n+1) X 7 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A206186, there is no canonical definition to state claims against.
-/

/-! ## A206186.P4057375554732162415

`A206188(A374007(n+1))`
-/

namespace A206186.P4057375554732162415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (A374007 (n + 1)).toNat

end

end A206186.P4057375554732162415

/-!
# A206187: Number of (n+1) X 8 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A206187, there is no canonical definition to state claims against.
-/

/-! ## A206187.P77354906199593114

`A206188(eq[7, A200370(n+1)])`
-/

namespace A206187.P77354906199593114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206187.P77354906199593114

/-!
# A206189: Number of (n+1)X(n+1) 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two.

The programs for A206189, there is no canonical definition to state claims against.
-/

/-! ## A206189.P11282717443314532621

`A206197((n+1)²+n²)`
-/

namespace A206189.P11282717443314532621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 ((n + 1) ^ 2 + n ^ 2)

end

end A206189.P11282717443314532621

/-!
# A206190: Number of (n+1) X 2 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to two.

The programs for A206190, the canonical program `A206190.P8498137225959186181` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206190 has offset 1).

The definition of A206190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206190.P8498137225959186181

`ogf((124-104x+64x^2+32x^3)/(1-9x+7x^2-4x^3-2x^4))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A206190

/-- `ogf((124-104x+64x^2+32x^3)/(1-9x+7x^2-4x^3-2x^4))` -/
def P8498137225959186181.Spec : Prop :=
  ∀ n, P8498137225959186181.a n = A206190 (n + 1)

theorem P8498137225959186181.correct : P8498137225959186181.Spec := by
  intro n
  simp only [A206190, Nat.add_sub_cancel]

end A206190

/-! ## A206190.P3873877165898624109

`A206197(∑[n]+1)`
-/

namespace A206190.P3873877165898624109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206190.P3873877165898624109

namespace A206190

/-- `A206197(∑[n]+1)` -/
def P3873877165898624109.Spec : Prop :=
  ∀ n, P3873877165898624109.a n = A206190 (n + 1)

end A206190

/-! ## A206190.P17553851943056800258

`record[A206197(n+1)/A174912(n)]`
-/

namespace A206190.P17553851943056800258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206197 (n + 1) : ℚ) / (A174912 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206190.P17553851943056800258

namespace A206190

/-- `record[A206197(n+1)/A174912(n)]` -/
def P17553851943056800258.Spec : Prop :=
  ∀ n, P17553851943056800258.a n = (A206190 (n + 1) : ℚ)

end A206190

/-! ## A206190.P9169061115195624292

`record[A206197(n+1)/A174914(n)]`
-/

namespace A206190.P9169061115195624292
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206197 (n + 1) : ℚ) / (A174914 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206190.P9169061115195624292

namespace A206190

/-- `record[A206197(n+1)/A174914(n)]` -/
def P9169061115195624292.Spec : Prop :=
  ∀ n, P9169061115195624292.a n = (A206190 (n + 1) : ℚ)

end A206190

/-! ## A206190.P14906711751703557257

`record[gcd(A002262(n), A206197(n+1))]`
-/

namespace A206190.P14906711751703557257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206197 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206190.P14906711751703557257

namespace A206190

/-- `record[gcd(A002262(n), A206197(n+1))]` -/
def P14906711751703557257.Spec : Prop :=
  ∀ n, (P14906711751703557257.a n : ℤ) = A206190 (n + 1)

end A206190

/-!
# A206191: Number of (n+1) X 3 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to two.

The programs for A206191, there is no canonical definition to state claims against.
-/

/-! ## A206191.P9827012448202540066

`A206197(∑[n+1]+2)`
-/

namespace A206191.P9827012448202540066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206191.P9827012448202540066

/-! ## A206191.P18090478127241522529

`record[gcd(A002262(n), A206197(n+2))]`
-/

namespace A206191.P18090478127241522529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206197 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206191.P18090478127241522529

/-! ## A206191.P14062978194041995493

`record[root(A206197(n+2), A241171(n+1))]`
-/

namespace A206191.P14062978194041995493
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206197 (n + 2) : ℝ) ^ (1 / (A241171 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206191.P14062978194041995493

/-! ## A206191.P13104599332636577916

`record[A206197(A133263(∑{e}[n+1, #]+1))]`
-/

namespace A206191.P13104599332636577916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206191.P13104599332636577916

/-!
# A206192: Number of (n+1)X4 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two.

The programs for A206192, there is no canonical definition to state claims against.
-/

/-! ## A206192.P17492453045262796758

`A206197(∑[n+2]+4)`
-/

namespace A206192.P17492453045262796758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206192.P17492453045262796758

/-!
# A206193: Number of (n+1)X5 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two.

The programs for A206193, there is no canonical definition to state claims against.
-/

/-! ## A206193.P2592635974434320329

`A206197(A167614(n+2)+1)`
-/

namespace A206193.P2592635974434320329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (A167614 (n + 2) + 1).toNat

end

end A206193.P2592635974434320329

/-! ## A206193.P6489618670237298270

`A206197(A141214(n+1))`
-/

namespace A206193.P6489618670237298270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (A141214 (n + 1)).toNat

end

end A206193.P6489618670237298270

/-!
# A206194: Number of (n+1)X6 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two.

The programs for A206194, there is no canonical definition to state claims against.
-/

/-! ## A206194.P2077392625392534770

`A206197(A374005(n+1))`
-/

namespace A206194.P2077392625392534770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (A374005 (n + 1)).toNat

end

end A206194.P2077392625392534770

/-! ## A206194.P16280185134424389607

`A206197(Δ[A264443(n)])`
-/

namespace A206194.P16280185134424389607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (f1 (n + 1) - f1 n).toNat

end

end A206194.P16280185134424389607

/-!
# A206195: Number of (n+1)X7 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two.

The programs for A206195, there is no canonical definition to state claims against.
-/

/-! ## A206195.P10357821894944035892

`A206197(eq[5, A002262(n)]+1)`
-/

namespace A206195.P10357821894944035892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A206195.P10357821894944035892

/-! ## A206195.P5086106258526907773

`A206197(eq[3, A219347(n)])`
-/

namespace A206195.P5086106258526907773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206195.P5086106258526907773

/-!
# A206196: Number of (n+1)X8 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two.

The programs for A206196, there is no canonical definition to state claims against.
-/

/-! ## A206196.P18041869081533785078

`A206197(eq[6, A193592(n)])`
-/

namespace A206196.P18041869081533785078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206196.P18041869081533785078

/-!
# A206198: Number of (n+1) X (n+1) 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly one clockwise edge increases.

The programs for A206198, there is no canonical definition to state claims against.
-/

/-! ## A206198.P15384788155739751416

`A206206((n+1)²+n²)`
-/

namespace A206198.P15384788155739751416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 ((n + 1) ^ 2 + n ^ 2)

end

end A206198.P15384788155739751416

/-! ## A206198.P10575206471537719230

`record[gcd(A114327(n), A206206(n+1))]`
-/

namespace A206198.P10575206471537719230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A206206 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206198.P10575206471537719230

/-! ## A206198.P5671196391612126259

`record[root(A206206(n+1), A303950(n+1))]`
-/

namespace A206198.P5671196391612126259
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206206 (n + 1) : ℝ) ^ (1 / (A303950 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206198.P5671196391612126259

/-!
# A206199: Number of (n+1) X 2 0..3 arrays with every 2 X 3 or 3 X 2 subblock having exactly one clockwise edge increases.

The programs for A206199, there is no canonical definition to state claims against.
-/

/-! ## A206199.P7532859729814857794

`A206206(∑[n]+1)`
-/

namespace A206199.P7532859729814857794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206199.P7532859729814857794

/-! ## A206199.P12460547622074949396

`record[A206206(n+1)]`
-/

namespace A206199.P12460547622074949396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206199.P12460547622074949396

