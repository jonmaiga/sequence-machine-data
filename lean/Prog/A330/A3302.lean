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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B001.C010
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A330200: Expansion of e.g.f. Product_{k>=1} exp(x^k) / (1 - x^k).

The programs for A330200, there is no canonical definition to state claims against.
-/

/-! ## A330200.P741166881153263375

`A090223(A005990(n+1))+n+1`
-/

namespace A330200.P741166881153263375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (A005990 (n + 1)).toNat + (n + 1 : ℤ)

end

end A330200.P741166881153263375

/-! ## A330200.P8688151367725542449

`A057354(A090672(n+1))+A005940(n+1)`
-/

namespace A330200.P8688151367725542449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A090672 (n + 1)).toNat + A005940 (n + 1)

end

end A330200.P8688151367725542449

/-!
# A330203: Composite numbers k such that D(k) == 3 (mod k), where D(k) is the k-th central Delannoy number (A001850).

The programs for A330203, there is no canonical definition to state claims against.
-/

/-! ## A330203.P16290897349906912263

`A231931(A090582(2*n+1))+A049316(n)`
-/

namespace A330203.P16290897349906912263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231931 (A090582 (2 * n + 1)).toNat + A049316 n

end

end A330203.P16290897349906912263

/-!
# A330204: Composite numbers k such that P(k, 5) == 5 (mod k), where P(k, 5) = A006442(k) is the k-th Legendre polynomial evaluated at 5.

The programs for A330204, there is no canonical definition to state claims against.
-/

/-! ## A330204.P931263948348772285

`A051721(eq[A003415(n), A334028(n)])`
-/

namespace A330204.P931263948348772285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051721 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A330204.P931263948348772285

/-!
# A330205: Composite numbers k such that P(k, 7) == 7 (mod k), where P(k, 7) = A084768(k) is the k-th Legendre polynomial evaluated at 7.

The programs for A330205, there is no canonical definition to state claims against.
-/

/-! ## A330205.P17491924249759313523

`∑[A225687(4*(a(n-1)+10^(n-1)))]` with `a(0)=6, a(1)=9, a(2)=6, a(3)=1`
-/

namespace A330205.P17491924249759313523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 9, 6, 1] fun n f1 =>
  A225687 (SequenceMachineLib.roundAway (4 * ((f1 (n - 1) : ℚ) + (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330205.P17491924249759313523

/-!
# A330206: Chebyshev pseudoprimes to base 2: composite numbers k such that T(k, 2) == 2 (mod k), where T(k, x) is the k-th Chebyshev polynomial of the first kind.

The programs for A330206, there is no canonical definition to state claims against.
-/

/-! ## A330206.P2404712315598987642

`record[A335673(n+2)^(A335673(n+2)%2)]`
-/

namespace A330206.P2404712315598987642
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335673 (n + 2) : ℚ) ^ (Int.tmod (A335673 (n + 2)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330206.P2404712315598987642

/-! ## A330206.P14123557802122630481

`record[A000265(A335673(n+2))]`
-/

namespace A330206.P14123557802122630481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A335673 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330206.P14123557802122630481

/-! ## A330206.P1743918187182236083

`filter[A335673(n+1), A322980(#)]`
-/

namespace A330206.P1743918187182236083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A330206.P1743918187182236083

/-! ## A330206.P17064710267287946667

`filter[A335673(n+1), A353638(#)]`
-/

namespace A330206.P17064710267287946667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353638 (f1 j).toNat = 1) n)

end

end A330206.P17064710267287946667

/-! ## A330206.P17713952628964865748

`filter[A335673(n+1), A373157(#)]`
-/

namespace A330206.P17713952628964865748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A330206.P17713952628964865748

/-! ## A330206.P8488082450956393091

`filter[A335673(n+1), A374134(#)]`
-/

namespace A330206.P8488082450956393091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A330206.P8488082450956393091

/-! ## A330206.P3188179425855321287

`filter[A335673(n+1), A379952(#)]`
-/

namespace A330206.P3188179425855321287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A330206.P3188179425855321287

/-! ## A330206.P9771093323286187971

`filter[A335673(n+1), A035263(#)]`
-/

namespace A330206.P9771093323286187971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A330206.P9771093323286187971

/-! ## A330206.P12696556691210895581

`filter[A335673(n+1), A093719(#)]`
-/

namespace A330206.P12696556691210895581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A330206.P12696556691210895581

/-! ## A330206.P1688974244344849427

`filter[A335673(n+1), A105234(#)]`
-/

namespace A330206.P1688974244344849427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A330206.P1688974244344849427

/-! ## A330206.P12820825208070017670

`filter[A335673(n+1), A152822(#)]`
-/

namespace A330206.P12820825208070017670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A330206.P12820825208070017670

/-! ## A330206.P3352419810356727111

`filter[A335673(n+2), A347871(#)]`
-/

namespace A330206.P3352419810356727111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335673 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A330206.P3352419810356727111

/-!
# A330208: Chebyshev pseudoprimes to both base 2 and base 3: composite numbers k such that T(k, 2) == 2 (mod k) and T(k, 3) == 3 (mod k), where T(k, x) is the k-th Chebyshev polynomial of the first kind.

The programs for A330208, there is no canonical definition to state claims against.
-/

/-! ## A330208.P4511727497816074469

`∩[A330206(n+1), A330207(n+1)]`
-/

namespace A330208.P4511727497816074469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330208.P4511727497816074469

/-! ## A330208.P500590292889608808

`∩[A330207(n+1), A335673(n+1)]`
-/

namespace A330208.P500590292889608808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330208.P500590292889608808

/-! ## A330208.P8366348098166057365

`∩[A330206(n+1), A337233(n+1)]`
-/

namespace A330208.P8366348098166057365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330208.P8366348098166057365

/-!
# A330210: Numbers that can be expressed as the sum of 2 prime numbers in a prime number of different ways.

The programs for A330210, there is no canonical definition to state claims against.
-/

/-! ## A330210.P13388178444293462554

`eq[2, ∏{e}[A061358(n)², #]]`
-/

namespace A330210.P13388178444293462554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330210.P13388178444293462554

/-! ## A330210.P7787361105292453537

`eq[0, A007920(A061358(n))]`
-/

namespace A330210.P7787361105292453537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A061358 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330210.P7787361105292453537

/-! ## A330210.P9919031215776973240

`eq[2, A000001(A061358(n)²)]`
-/

namespace A330210.P9919031215776973240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A061358 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330210.P9919031215776973240

/-! ## A330210.P6849579042854801399

`eq[2, A032741(A061358(n)²)]`
-/

namespace A330210.P6849579042854801399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A061358 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330210.P6849579042854801399

/-! ## A330210.P12430563210205755411

`eq[2, A074206(A061358(n)²)]`
-/

namespace A330210.P12430563210205755411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A061358 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330210.P12430563210205755411

/-! ## A330210.P17624399386259088116

`eq[2, A078898(A061358(n)²)]`
-/

namespace A330210.P17624399386259088116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A061358 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330210.P17624399386259088116

/-! ## A330210.P16472870358039490909

`eq[2, A104725(A061358(n)²)]`
-/

namespace A330210.P16472870358039490909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (A061358 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330210.P16472870358039490909

/-! ## A330210.P15871167921418725528

`eq[2, A105700(A061358(n)²)]`
-/

namespace A330210.P15871167921418725528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A061358 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330210.P15871167921418725528

/-! ## A330210.P3447201453503706154

`eq[2, A143862(A061358(n)²)]`
-/

namespace A330210.P3447201453503706154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143862 (A061358 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330210.P3447201453503706154

/-! ## A330210.P17418875664873138359

`eq[2, A226378(A061358(n)²)]`
-/

namespace A330210.P17418875664873138359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A061358 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330210.P17418875664873138359

/-!
# A330211: Number of free pentagonal polyforms with n cells on the order-4 pentagonal tiling of the hyperbolic plane.

The programs for A330211, there is no canonical definition to state claims against.
-/

/-! ## A330211.P5030578655899052263

`A291069(a(n-1)+1)+n` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A330211.P5030578655899052263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A291069 (a (n - 1) + 1).toNat + (n : ℤ)

end

end A330211.P5030578655899052263

/-! ## A330211.P3554857278352480999

`A162986(A018175(n+1))`
-/

namespace A330211.P3554857278352480999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162986 (A018175 (n + 1)).toNat

end

end A330211.P3554857278352480999

/-! ## A330211.P14779199869344999943

`A264569(A035047(n+2))`
-/

namespace A330211.P14779199869344999943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A035047 (n + 2)).toNat

end

end A330211.P14779199869344999943

/-!
# A330213: a(n) = n + floor(ns/r) + floor(nt/r), where r = log(2), s = 1, t = log(3).

The programs for A330213, the canonical program `A330213.P9330585699778478913` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330213 has offset 1).

The definition of A330213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330213.P9330585699778478913

`floor((n+1)/log(2))+floor((n+1)*log2(6))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A330213

/-- `floor((n+1)/log(2))+floor((n+1)*log2(6))` -/
def P9330585699778478913.Spec : Prop :=
  ∀ n, P9330585699778478913.a n = A330213 (n + 1)

theorem P9330585699778478913.correct : P9330585699778478913.Spec := by
  intro n
  simp only [A330213, Nat.add_sub_cancel]

end A330213

/-! ## A330213.P2130222338424889192

`A029928(A029915(2*n)+A029903(2*(n+1)))`
-/

namespace A330213.P2130222338424889192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029928 (A029915 (2 * n) + A029903 (2 * (n + 1))).toNat

end

end A330213.P2130222338424889192

namespace A330213

/-- `A029928(A029915(2*n)+A029903(2*(n+1)))` -/
def P2130222338424889192.Spec : Prop :=
  ∀ n, P2130222338424889192.a n = A330213 (n + 1)

end A330213

/-! ## A330213.P6674865055669567781

`∑[A090822((n+1)²²+n)+2]`
-/

namespace A330213.P6674865055669567781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (((n + 1) ^ 2) ^ 2 + n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330213.P6674865055669567781

namespace A330213

/-- `∑[A090822((n+1)²²+n)+2]` -/
def P6674865055669567781.Spec : Prop :=
  ∀ n, P6674865055669567781.a n = A330213 (n + 1)

end A330213

/-! ## A330213.P12401782282257133737

`A367066(A314161(n+1)+n)`
-/

namespace A330213.P12401782282257133737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367066 (A314161 (n + 1) + (n : ℤ)).toNat

end

end A330213.P12401782282257133737

namespace A330213

/-- `A367066(A314161(n+1)+n)` -/
def P12401782282257133737.Spec : Prop :=
  ∀ n, P12401782282257133737.a n = A330213 (n + 1)

end A330213

/-! ## A330213.P2376172446768434407

`xor(4*n, A332273(A014210(n+3)))`
-/

namespace A330213.P2376172446768434407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 * n : ℤ) (A332273 (A014210 (n + 3)).toNat)

end

end A330213.P2376172446768434407

namespace A330213

/-- `xor(4*n, A332273(A014210(n+3)))` -/
def P2376172446768434407.Spec : Prop :=
  ∀ n, P2376172446768434407.a n = A330213 (n + 1)

end A330213

/-!
# A330214: a(n) = n + floor(nr/s) + floor(nt/s), where r = log(2), s = 1, t = log(3).

The programs for A330214, the canonical program `A330214.P15194411891903116594` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330214 has offset 1).

The definition of A330214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330214.P890491069654149840

`floor((log(3)+1)*(n+1))+floor((n+1)*log(2))`
-/

namespace A330214.P890491069654149840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.log (3 : ℝ) + 1) * (n + 1 : ℝ)⌋ + ⌊(n + 1 : ℝ) * Real.log (2 : ℝ)⌋

end

end A330214.P890491069654149840

namespace A330214

/-- `floor((log(3)+1)*(n+1))+floor((n+1)*log(2))` -/
def P890491069654149840.Spec : Prop :=
  ∀ n, P890491069654149840.a n = A330214 (n + 1)

end A330214

/-! ## A330214.P15194411891903116594

`A000027(A059543(n+1)+A059541(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A330214

/-- `A000027(A059543(n+1)+A059541(n+1))` -/
def P15194411891903116594.Spec : Prop :=
  ∀ n, P15194411891903116594.a n = A330214 (n + 1)

theorem P15194411891903116594.correct : P15194411891903116594.Spec := by
  intro n
  simp only [A330214, Nat.add_sub_cancel]

end A330214

/-! ## A330214.P1324949095741717942

`A000027(A265133(n+1)+A059548(n+1))`
-/

namespace A330214.P1324949095741717942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A265133 (n + 1) + A059548 (n + 1)).toNat

end

end A330214.P1324949095741717942

namespace A330214

/-- `A000027(A265133(n+1)+A059548(n+1))` -/
def P1324949095741717942.Spec : Prop :=
  ∀ n, P1324949095741717942.a n = A330214 (n + 1)

theorem P1324949095741717942.correct : P1324949095741717942.Spec := by
  intro n
  simp only [A330214, Nat.add_sub_cancel, A330214.P1324949095741717942.a, A330214.P15194411891903116594.a, A000027, A000027.P10331202704469894836.a, A059541, A059541.P8004268595186817024.a, A059543, A059543.P4837780587904840858.a, A059548, A059548.P14659020592617218728.a, A265133, A265133.P11312818710983088858.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A330214

/-! ## A330214.P4217228088763707515

`A000027(A059548(n+1)+A059541(n+1)-(n+1))`
-/

namespace A330214.P4217228088763707515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A059548 (n + 1) + (A059541 (n + 1) - (n + 1 : ℤ))).toNat

end

end A330214.P4217228088763707515

namespace A330214

/-- `A000027(A059548(n+1)+A059541(n+1)-(n+1))` -/
def P4217228088763707515.Spec : Prop :=
  ∀ n, P4217228088763707515.a n = A330214 (n + 1)

theorem P4217228088763707515.correct : P4217228088763707515.Spec := by
  intro n
  simp only [A330214, Nat.add_sub_cancel, A330214.P4217228088763707515.a, A330214.P15194411891903116594.a, A000027, A000027.P10331202704469894836.a, A059541, A059541.P8004268595186817024.a, A059543, A059543.P4837780587904840858.a, A059548, A059548.P14659020592617218728.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A330214

/-! ## A330214.P17741012680113236439

`A000027(A059548(n+1)+A059541(n+1)%(n+1))`
-/

namespace A330214.P17741012680113236439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A059548 (n + 1) + Int.tmod (A059541 (n + 1)) (n + 1 : ℤ)).toNat

end

end A330214.P17741012680113236439

namespace A330214

/-- `A000027(A059548(n+1)+A059541(n+1)%(n+1))` -/
def P17741012680113236439.Spec : Prop :=
  ∀ n, P17741012680113236439.a n = A330214 (n + 1)

end A330214

/-! ## A330214.P11410322414655680844

`A028310(A059543(n+1)+A059541(n+1))`
-/

namespace A330214.P11410322414655680844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A059543 (n + 1) + A059541 (n + 1)).toNat

end

end A330214.P11410322414655680844

namespace A330214

/-- `A028310(A059543(n+1)+A059541(n+1))` -/
def P11410322414655680844.Spec : Prop :=
  ∀ n, P11410322414655680844.a n = A330214 (n + 1)

end A330214

/-!
# A330215: a(n) = n + floor(nr/t) + floor(ns/t), where r = log(2), s = 1, t = log(3).

The programs for A330215, there is no canonical definition to state claims against.
-/

/-! ## A330215.P16332121302390869648

`A264048(A187219(n+1))+A022850(n)`
-/

namespace A330215.P16332121302390869648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264048 (A187219 (n + 1)).toNat + A022850 n

end

end A330215.P16332121302390869648

/-! ## A330215.P7087881749565157398

`A189533(n+1)-A101688(A147187(n+1))`
-/

namespace A330215.P7087881749565157398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189533 (n + 1) - A101688 (A147187 (n + 1)).toNat

end

end A330215.P7087881749565157398

/-! ## A330215.P6969128142988377351

`A086707(A292652(2*n+1))+A000196(A008576(n)*A242474(n+2))`
-/

namespace A330215.P6969128142988377351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086707 (A292652 (2 * n + 1)).toNat + A000196 (A008576 n * A242474 (n + 2)).toNat

end

end A330215.P6969128142988377351

/-! ## A330215.P10381439562299569304

`A168389(A311473(n))`
-/

namespace A330215.P10381439562299569304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168389 (A311473 n).toNat

end

end A330215.P10381439562299569304

/-! ## A330215.P8336953065988035664

`A346129(2*n+1)+A255070(A255070(n))`
-/

namespace A330215.P8336953065988035664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346129 (2 * n + 1) + A255070 (A255070 n).toNat

end

end A330215.P8336953065988035664

/-!
# A330216: Number of strict integer partitions of n whose product is a powerful number.

The programs for A330216, there is no canonical definition to state claims against.
-/

/-! ## A330216.P10724927880334446314

`A003056(A000196(A236021(n+3)))-A000196(n+2)`
-/

namespace A330216.P10724927880334446314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000196 (A236021 (n + 3)).toNat).toNat - A000196 (n + 2)

end

end A330216.P10724927880334446314

/-!
# A330217: BII-numbers of achiral set-systems.

The programs for A330217, there is no canonical definition to state claims against.
-/

/-! ## A330217.P2589030054402443498

`eq[1, A330231(n)]`
-/

namespace A330217.P2589030054402443498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330231 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330217.P2589030054402443498

/-! ## A330217.P1083118304207679753

`lt[A330231(round(acot(n)+n)), 2]`
-/

namespace A330217.P1083118304207679753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330231 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A330217.P1083118304207679753

/-! ## A330217.P1089347757821412472

`lt[A330231(A028310(n)), 2]`
-/

namespace A330217.P1089347757821412472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330231 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A330217.P1089347757821412472

/-! ## A330217.P11721636874688287932

`lt[A330231(A118759(n)), 2]`
-/

namespace A330217.P11721636874688287932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330231 (A118759 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A330217.P11721636874688287932

/-! ## A330217.P15697939138549518644

`lt[A010060(n), tan(A330231(n))]`
-/

namespace A330217.P15697939138549518644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A330231 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A330217.P15697939138549518644

/-!
# A330220: Numbers whose representation in base 2^w contains only the digit 2^k for some w and k such that 0 <= k < w.

The programs for A330220, there is no canonical definition to state claims against.
-/

/-! ## A330220.P16825557522423489947

`eq[A005187(n), A078823(n)]`
-/

namespace A330220.P16825557522423489947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078823 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330220.P16825557522423489947

/-! ## A330220.P5272400721417090779

`eq[A011371(n), A144624(n)]`
-/

namespace A330220.P5272400721417090779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144624 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330220.P5272400721417090779

/-! ## A330220.P17133362093256925206

`eq[A124760(n), A280508(n)]`
-/

namespace A330220.P17133362093256925206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280508 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330220.P17133362093256925206

/-! ## A330220.P6140195492285803001

`∩[A057890(n+1), A114994(n)]`
-/

namespace A330220.P6140195492285803001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330220.P6140195492285803001

/-! ## A330220.P6162393766158741998

`∩[A295235(n+1), A114994(n)]`
-/

namespace A330220.P6162393766158741998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330220.P6162393766158741998

/-! ## A330220.P10092400564435701756

`lt[A001700(A078822(n)), A055744(3*(n+1))]`
-/

namespace A330220.P10092400564435701756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (A078822 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055744 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330220.P10092400564435701756

/-! ## A330220.P3781318614214578822

`lt[n, A200322(n)+1]`
-/

namespace A330220.P3781318614214578822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200322 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A330220.P3781318614214578822

/-! ## A330220.P5181257484699578990

`eq[A028310(n), A200322(n)]`
-/

namespace A330220.P5181257484699578990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200322 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330220.P5181257484699578990

/-!
# A330221: Numbers d such that -d is a fundamental discriminant and all primes smaller than 2*sqrt(d)/Pi ramify or remain inert in the ring of integers of Q(sqrt(-d)).

The programs for A330221, there is no canonical definition to state claims against.
-/

/-! ## A330221.P17101041159660399884

`∩[A003644(n+1), A328369(n+1)]`
-/

namespace A330221.P17101041159660399884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330221.P17101041159660399884

/-! ## A330221.P5428167386628685848

`∩[A196923(n+1), A328369(n+1)]`
-/

namespace A330221.P5428167386628685848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330221.P5428167386628685848

/-! ## A330221.P13130341753961658419

`∩[A003644(n+1), A333491(n+1)]`
-/

namespace A330221.P13130341753961658419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330221.P13130341753961658419

/-! ## A330221.P3877082679179350595

`∩[A196923(n+1), A333491(n+1)]`
-/

namespace A330221.P3877082679179350595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330221.P3877082679179350595

/-! ## A330221.P9194373048947307541

`A003644(lt[A290820(n+1), A253258(n+1)])`
-/

namespace A330221.P9194373048947307541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003644 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A330221.P9194373048947307541

/-!
# A330222: Maximum autocorrelation of the first 2^n terms of the Rudin-Shapiro sequence A020985.

The programs for A330222, there is no canonical definition to state claims against.
-/

/-! ## A330222.P15181882458612287425

`A382856(A050195(n+1))`
-/

namespace A330222.P15181882458612287425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382856 (A050195 (n + 1)).toNat

end

end A330222.P15181882458612287425

/-! ## A330222.P7789865411183789419

`or(1, A140206(A005181(n)))`
-/

namespace A330222.P7789865411183789419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A140206 (A005181 n).toNat)

end

end A330222.P7789865411183789419

/-! ## A330222.P4087182657399150540

`or(1, A140206(A042581(n)))`
-/

namespace A330222.P4087182657399150540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A140206 (A042581 n).toNat)

end

end A330222.P4087182657399150540

/-! ## A330222.P14890420494604574915

`or(1, A000194(A248735(n)))`
-/

namespace A330222.P14890420494604574915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000194 (A248735 n).toNat)

end

end A330222.P14890420494604574915

/-! ## A330222.P6325933275868638814

`or(1, A325131(A274199(n)))`
-/

namespace A330222.P6325933275868638814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A325131 (A274199 n).toNat)

end

end A330222.P6325933275868638814

/-!
# A330225: Position of first appearance of n in A290103 = LCM of prime indices.

The programs for A330225, there is no canonical definition to state claims against.
-/

/-! ## A330225.P4099358510880792

`abs(or(1, char[11]-A000040(n+1)))`
-/

namespace A330225.P4099358510880792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A000040 (n + 1))|

end

end A330225.P4099358510880792

/-! ## A330225.P3311375600466857057

`or(1, record[A000010(n+1)]-char[11])`
-/

namespace A330225.P3311375600466857057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

end

end A330225.P3311375600466857057

/-! ## A330225.P4453557456557958233

`record[A020639(2*n+1)]-char[11]-char[11]`
-/

namespace A330225.P4453557456557958233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A330225.P4453557456557958233

/-! ## A330225.P10542461685894628469

`A109613(eq[2, A000005(n+1)]-char[11])`
-/

namespace A330225.P10542461685894628469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (if ∃ j, f3 j = n then 1 else 0))

end

end A330225.P10542461685894628469

/-! ## A330225.P13938896381087487489

`or(A347438(n+1)², A318871(n+1))`
-/

namespace A330225.P13938896381087487489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A347438 (n + 1) ^ 2) (A318871 (n + 1))

end

end A330225.P13938896381087487489

/-! ## A330225.P17735314018279157427

`A000040(n+1)-A000122(∑{digits}[n, #^3+#])`
-/

namespace A330225.P17735314018279157427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000122 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 3 + x).sum

end

end A330225.P17735314018279157427

/-! ## A330225.P10571338197788024519

`A000040(n+1)-A000122(A056115(n))`
-/

namespace A330225.P10571338197788024519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000122 (A056115 n).toNat

end

end A330225.P10571338197788024519

/-! ## A330225.P2002756808478643281

`A000040(n+1)-A000122(A065137(n))`
-/

namespace A330225.P2002756808478643281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000122 (A065137 n).toNat

end

end A330225.P2002756808478643281

/-! ## A330225.P6234674535705770055

`record[A006530(n+2)]-A000122(A056115(n))`
-/

namespace A330225.P6234674535705770055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000122 (A056115 n).toNat

end

end A330225.P6234674535705770055

/-! ## A330225.P4511007763884870638

`record[A014963(n+2)]-A000122(A056115(n))`
-/

namespace A330225.P4511007763884870638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000122 (A056115 n).toNat

end

end A330225.P4511007763884870638

/-!
# A330226: BII-numbers of fully chiral set-systems.

The programs for A330226, there is no canonical definition to state claims against.
-/

/-! ## A330226.P11303619742594752091

`eq[A326702(n)!, A330231(n)]`
-/

namespace A330226.P11303619742594752091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A326702 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330231 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330226.P11303619742594752091

/-! ## A330226.P13101486657291558042

`record[A091897(n+1)-A110359(n+1)]`
-/

namespace A330226.P13101486657291558042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091897 (n + 1) - A110359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330226.P13101486657291558042

/-! ## A330226.P2326456964835153954

`lt[xor(1, (n+1)²)+1, A097570(∑{d}[n+1, #])]`
-/

namespace A330226.P2326456964835153954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((n + 1) ^ 2) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097570 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A330226.P2326456964835153954

/-! ## A330226.P11589543236702301969

`eq[A063995(n+1), A240205(A078803(2*n+1))]`
-/

namespace A330226.P11589543236702301969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240205 (A078803 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330226.P11589543236702301969

/-! ## A330226.P18129450359732970403

`lt[A200738(3*n+1), A097570(A000203(n+1))]`
-/

namespace A330226.P18129450359732970403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200738 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097570 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330226.P18129450359732970403

/-!
# A330227: Number of non-isomorphic fully chiral multiset partitions of weight n.

The programs for A330227, there is no canonical definition to state claims against.
-/

/-! ## A330227.P16806488746057647448

`A248227(or(A056010(n), A296612(n)))`
-/

namespace A330227.P16806488746057647448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (Int.lor (A056010 n) (A296612 n)).toNat

end

end A330227.P16806488746057647448

/-! ## A330227.P11032226801299395688

`A248227(or(A000010(n+1), A056010(n)))`
-/

namespace A330227.P11032226801299395688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (Int.lor (A000010 (n + 1)) (A056010 n)).toNat

end

end A330227.P11032226801299395688

/-! ## A330227.P4292986457757574425

`A248227(or(A000720(n+1), A056010(n)))`
-/

namespace A330227.P4292986457757574425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (Int.lor (A000720 (n + 1)) (A056010 n)).toNat

end

end A330227.P4292986457757574425

/-!
# A330228: Number of fully chiral integer partitions of n.

The programs for A330228, there is no canonical definition to state claims against.
-/

/-! ## A330228.P6126950401575467460

`A106744(A188216(n)+A172471(n))`
-/

namespace A330228.P6126950401575467460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A188216 n + A172471 n).toNat

end

end A330228.P6126950401575467460

/-! ## A330228.P7541813300792280500

`A008631(n)-A329697(A006720(n))`
-/

namespace A330228.P7541813300792280500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008631 n - A329697 (A006720 n).toNat

end

end A330228.P7541813300792280500

/-! ## A330228.P9446858762650711320

`A357409(A097197(n))`
-/

namespace A330228.P9446858762650711320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357409 (A097197 n).toNat

end

end A330228.P9446858762650711320

/-! ## A330228.P11353515354686150168

`A357409(A260600(n+1))`
-/

namespace A330228.P11353515354686150168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357409 (A260600 (n + 1)).toNat

end

end A330228.P11353515354686150168

/-!
# A330229: Number of fully chiral set-systems covering n vertices.

The programs for A330229, there is no canonical definition to state claims against.
-/

/-! ## A330229.P915567084020790884

`n*(3*a(n-1)+1)*a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A330229.P915567084020790884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  n * (3 * a (n - 1) + 1) * a (n - 1)

end

end A330229.P915567084020790884

/-!
# A330230: Least MM-number of a multiset of multisets with n distinct representatives obtainable by permuting the vertices.

The programs for A330230, there is no canonical definition to state claims against.
-/

/-! ## A330230.P668574010940752512

`A330233(comp[8*n])`
-/

namespace A330230.P668574010940752512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330233 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A330230.P668574010940752512

/-!
# A330234: Number of achiral factorizations of n into factors > 1.

The programs for A330234, there is no canonical definition to state claims against.
-/

/-! ## A330234.P1545415887082427382

`A352562(A076078(n+1))+A151878(A005472(n+1))`
-/

namespace A330234.P1545415887082427382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352562 (A076078 (n + 1)).toNat + A151878 (A005472 (n + 1)).toNat

end

end A330234.P1545415887082427382

/-! ## A330234.P1252248496055190181

`A352562(A076078(n+1))+A000007(A002522(3*n+2))`
-/

namespace A330234.P1252248496055190181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352562 (A076078 (n + 1)).toNat + A000007 (A002522 (3 * n + 2)).toNat

end

end A330234.P1252248496055190181

/-! ## A330234.P14575657474037315179

`A215884(A343390(n+1))`
-/

namespace A330234.P14575657474037315179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215884 (A343390 (n + 1)).toNat

end

end A330234.P14575657474037315179

/-! ## A330234.P1469678107356457709

`A089400(A072695(n+1))-A340655(n+1)`
-/

namespace A330234.P1469678107356457709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089400 (A072695 (n + 1)).toNat - A340655 (n + 1)

end

end A330234.P1469678107356457709

/-! ## A330234.P12461980343234155684

`A001055(n+1)%A000302(A033809(n+1))`
-/

namespace A330234.P12461980343234155684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (n + 1)) (A000302 (A033809 (n + 1)).toNat)

end

end A330234.P12461980343234155684

/-!
# A330235: Number of fully chiral factorizations of n.

The programs for A330235, there is no canonical definition to state claims against.
-/

/-! ## A330235.P7495963959322986543

`A001055(n+1)*A138253(A051707(n+1))`
-/

namespace A330235.P7495963959322986543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) * A138253 (A051707 (n + 1)).toNat

end

end A330235.P7495963959322986543

/-! ## A330235.P261710076250156495

`A001055(n+1)*A266591(A006241(n+1))`
-/

namespace A330235.P261710076250156495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) * A266591 (A006241 (n + 1)).toNat

end

end A330235.P261710076250156495

/-! ## A330235.P7937333451793982112

`A138253(A051707(n+1))*A316978(n+1)`
-/

namespace A330235.P7937333451793982112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138253 (A051707 (n + 1)).toNat * A316978 (n + 1)

end

end A330235.P7937333451793982112

/-! ## A330235.P6155748732123410303

`A252665(n+1)*A266591(A006241(n+1))`
-/

namespace A330235.P6155748732123410303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252665 (n + 1) * A266591 (A006241 (n + 1)).toNat

end

end A330235.P6155748732123410303

/-! ## A330235.P8402068594690036691

`A001055(n+1)%A095358(∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A330235.P8402068594690036691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (n + 1)) (A095358 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2))

end

end A330235.P8402068594690036691

/-!
# A330236: MM-numbers of fully chiral multisets of multisets.

The programs for A330236, there is no canonical definition to state claims against.
-/

/-! ## A330236.P5602704249797506120

`A302593(n+1)%A379312(2*n+3)`
-/

namespace A330236.P5602704249797506120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302593 (n + 1)) (A379312 (2 * n + 3))

end

end A330236.P5602704249797506120

/-! ## A330236.P18402097354154122670

`A302593(n+1)+A082784(A052552(n))`
-/

namespace A330236.P18402097354154122670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1) + A082784 (A052552 n).toNat

end

end A330236.P18402097354154122670

/-! ## A330236.P8608425818737370079

`A302593(n+1)+A212619(A018819(n))`
-/

namespace A330236.P8608425818737370079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1) + A212619 (A018819 n).toNat

end

end A330236.P8608425818737370079

/-! ## A330236.P164677807204832210

`A302593(n+1)+A112053(A154106(n))`
-/

namespace A330236.P164677807204832210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1) + A112053 (A154106 n).toNat

end

end A330236.P164677807204832210

/-! ## A330236.P3383119125479938762

`A366840(A016116(n))+A302593(n+1)`
-/

namespace A330236.P3383119125479938762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366840 (A016116 n).toNat + A302593 (n + 1)

end

end A330236.P3383119125479938762

/-!
# A330237: Square array T(n,k): concatenate the absolute differences of the digits of n and k (the smaller one padded with leading zeros); read by antidiagonals; n, k >= 1.

The programs for A330237, there is no canonical definition to state claims against.
-/

/-! ## A330237.P8488424428746840894

`A330240((n-comp[∑[n]])²-n)`
-/

namespace A330237.P8488424428746840894
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330240 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A330237.P8488424428746840894

/-! ## A330237.P11690822640355801689

`A098852(A219347(2*(n+1)))+A049581(n)`
-/

namespace A330237.P11690822640355801689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098852 (A219347 (2 * (n + 1))).toNat + A049581 n

end

end A330237.P11690822640355801689

/-! ## A330237.P15452651169544984765

`A083910(A135966(n+2))+A049581(n)`
-/

namespace A330237.P15452651169544984765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083910 (A135966 (n + 2)).toNat + A049581 n

end

end A330237.P15452651169544984765

/-!
# A330238: Triangle T(n,k): concatenate the absolute differences of the digits of n and k (the smaller one padded with leading zeros); n >= k >= 1.

The programs for A330238, there is no canonical definition to state claims against.
-/

/-! ## A330238.P13484375028138954136

`or(A025581(n), A055570(A034427(n+1)))`
-/

namespace A330238.P13484375028138954136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025581 n) (A055570 (A034427 (n + 1)).toNat)

end

end A330238.P13484375028138954136

/-! ## A330238.P15972668929865837448

`or(A025669(n+1), A055570(A034427(n+1)))`
-/

namespace A330238.P15972668929865837448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025669 (n + 1)) (A055570 (A034427 (n + 1)).toNat)

end

end A330238.P15972668929865837448

/-! ## A330238.P9286025886429624553

`A347689(A084855(n+1))`
-/

namespace A330238.P9286025886429624553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 (A084855 (n + 1)).toNat

end

end A330238.P9286025886429624553

/-! ## A330238.P18358261734466529586

`A283001(A193412(n+10)-1)`
-/

namespace A330238.P18358261734466529586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (A193412 (n + 10) - 1).toNat

end

end A330238.P18358261734466529586

/-! ## A330238.P14681584345188007529

`or(C(comp[∑[n]]-n, 2)-(n+1), A280287(A232088(2*n+1)))`
-/

namespace A330238.P14681584345188007529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) (A280287 (A232088 (2 * n + 1)).toNat)

end

end A330238.P14681584345188007529

/-!
# A330239: Minimum circular (strong) similarity of a length-n binary word.

The programs for A330239, there is no canonical definition to state claims against.
-/

/-! ## A330239.P10524018784304849024

`A183041(n)%A119036(n+1)`
-/

namespace A330239.P10524018784304849024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183041 n) (A119036 (n + 1))

end

end A330239.P10524018784304849024

/-! ## A330239.P8738130825835299371

`A183041(n)%A014092(A000070(n))`
-/

namespace A330239.P8738130825835299371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183041 n) (A014092 (A000070 n).toNat)

end

end A330239.P8738130825835299371

/-! ## A330239.P9570592454481652003

`(abs(1-n)+2-A002265(n+2)-A002265(n+2))%A275780(n)`
-/

namespace A330239.P9570592454481652003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (|1 - (n : ℤ)| + 2 - A002265 (n + 2) - A002265 (n + 2)) (A275780 n)

end

end A330239.P9570592454481652003

/-! ## A330239.P9441181074210038770

`n-A372601(A164073(n+1))`
-/

namespace A330239.P9441181074210038770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A372601 (A164073 (n + 1)).toNat

end

end A330239.P9441181074210038770

/-! ## A330239.P1828950430113715605

`A285869(n+1)%A321390(n+1)`
-/

namespace A330239.P1828950430113715605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285869 (n + 1)) (A321390 (n + 1))

end

end A330239.P1828950430113715605

/-!
# A330240: Square array T(n,k): concatenate the absolute differences of the digits of n and k (the smaller one padded with leading zeros), read by antidiagonals, n, k >= 0.

The programs for A330240, there is no canonical definition to state claims against.
-/

/-! ## A330240.P3895218254443745669

`2*A087061(n)+1-∑[char[∑[n]]]`
-/

namespace A330240.P3895218254443745669
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087061 n + 1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A330240.P3895218254443745669

/-! ## A330240.P4406539966005555627

`∑[char[∑[n+1]]]-2*A342955(n)`
-/

namespace A330240.P4406539966005555627
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 * A342955 n

end

end A330240.P4406539966005555627

/-! ## A330240.P17891633404826893520

`A087061(n)-A342955(n)`
-/

namespace A330240.P17891633404826893520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 n - A342955 n

end

end A330240.P17891633404826893520

/-! ## A330240.P14167865496516368104

`2*A087061(n)-A003056(n)`
-/

namespace A330240.P14167865496516368104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087061 n - A003056 n

end

end A330240.P14167865496516368104

/-! ## A330240.P17957533749419021237

`A087061(n)-A261684(n)%10`
-/

namespace A330240.P17957533749419021237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 n - Int.tmod (A261684 n) 10

end

end A330240.P17957533749419021237

/-! ## A330240.P7677979570873418387

`A049581(A087061(n)+A057944(n))`
-/

namespace A330240.P7677979570873418387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A087061 n + A057944 n).toNat

end

end A330240.P7677979570873418387

/-! ## A330240.P3966416891990516779

`A049581(A342955(n)+A057944(n))`
-/

namespace A330240.P3966416891990516779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A342955 n + A057944 n).toNat

end

end A330240.P3966416891990516779

/-! ## A330240.P569948865494943846

`A005843(A087061(n))-A003056(n)`
-/

namespace A330240.P569948865494943846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A087061 n).toNat - A003056 n

end

end A330240.P569948865494943846

/-! ## A330240.P11555742449277711462

`A003056(n)-A005843(A342955(n))`
-/

namespace A330240.P11555742449277711462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - A005843 (A342955 n).toNat

end

end A330240.P11555742449277711462

/-! ## A330240.P18320985847249364582

`A087061(n)-A007954(A261684(n))`
-/

namespace A330240.P18320985847249364582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 n - A007954 (A261684 n).toNat

end

end A330240.P18320985847249364582

/-! ## A330240.P15664234403326483237

`A005843(A087061(n))-Δ[A006463(n)]`
-/

namespace A330240.P15664234403326483237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A087061 n).toNat - (f1 (n + 1) - f1 n)

end

end A330240.P15664234403326483237

/-! ## A330240.P6588868568009369228

`A005408(A087061(n))-A002024(n+1)`
-/

namespace A330240.P6588868568009369228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A087061 n).toNat - A002024 (n + 1)

end

end A330240.P6588868568009369228

/-! ## A330240.P2566827086086367238

`A005408(A087061(n))-A000194(2*(n+1))`
-/

namespace A330240.P2566827086086367238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A087061 n).toNat - A000194 (2 * (n + 1))

end

end A330240.P2566827086086367238

/-! ## A330240.P4512418282877426154

`A005843(A087061(n))-A259361(A005408(n))`
-/

namespace A330240.P4512418282877426154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A087061 n).toNat - A259361 (A005408 n).toNat

end

end A330240.P4512418282877426154

/-!
# A330241: a(n) is the greatest k such that there is an increasing sequence of positive integers j(0),j(1),...,j(k) such that n == i (mod j(i)) for each i.

The programs for A330241, there is no canonical definition to state claims against.
-/

/-! ## A330241.P6614195329994633253

`∑{e}[ceil(xor(2, 2^n-2)/6)+1, #]`
-/

namespace A330241.P6614195329994633253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor 2 ((2 ^ n : ℤ) - 2) : ℚ) / 6⌉ + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A330241.P6614195329994633253

/-! ## A330241.P3436612113642873370

`∑{e}[xor(1, A135351(n)), #]`
-/

namespace A330241.P3436612113642873370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A135351 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A330241.P3436612113642873370

/-! ## A330241.P10859593387048584322

`∑{e}[xor(A083329(n), A084639(n)), #]`
-/

namespace A330241.P10859593387048584322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A083329 n) (A084639 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A330241.P10859593387048584322

/-! ## A330241.P6932095787789902390

`A001222(xor(1, A135351(n)))`
-/

namespace A330241.P6932095787789902390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor 1 (A135351 n)).toNat

end

end A330241.P6932095787789902390

/-! ## A330241.P13345691964726587303

`n%A006530(A063886(n))`
-/

namespace A330241.P13345691964726587303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A006530 (A063886 n).toNat)

end

end A330241.P13345691964726587303

/-!
# A330242: Sum of largest emergent parts of the partitions of n.

The programs for A330242, there is no canonical definition to state claims against.
-/

/-! ## A330242.P12746875340417195673

`A138137(n+1)-(n+1)`
-/

namespace A330242.P12746875340417195673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) - (n + 1 : ℤ)

end

end A330242.P12746875340417195673

/-! ## A330242.P10417109407516609405

`A182699(n+1)+A000094(n+2)`
-/

namespace A330242.P10417109407516609405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182699 (n + 1) + A000094 (n + 2)

end

end A330242.P10417109407516609405

/-! ## A330242.P5241275458598257812

`A138135(n+1)+∑[A002865(n)-1]`
-/

namespace A330242.P5241275458598257812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330242.P5241275458598257812

/-! ## A330242.P13001270733814563316

`A138135(n+1)+A295341(n)+A000726(n)-(n+1)`
-/

namespace A330242.P13001270733814563316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (n + 1) + (A295341 n + A000726 n) - (n + 1 : ℤ)

end

end A330242.P13001270733814563316

/-! ## A330242.P3228537008017887270

`A233968(n+1)/2-(n+1)`
-/

namespace A330242.P3228537008017887270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233968 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A330242.P3228537008017887270

/-! ## A330242.P14823836285815730155

`Δ[A006128(n)-∑[n]]`
-/

namespace A330242.P14823836285815730155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A330242.P14823836285815730155

/-! ## A330242.P6765567645631009173

`Δ[A225596(n)]-(n+2)`
-/

namespace A330242.P6765567645631009173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A330242.P6765567645631009173

/-! ## A330242.P3719438194709100949

`Δ[A093694(n)-A000041(n)]-(n+1)`
-/

namespace A330242.P3719438194709100949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A330242.P3719438194709100949

/-! ## A330242.P3580400451413561337

`A006128(n+1)-(A006128(n)+1+n)`
-/

namespace A330242.P3580400451413561337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - (A006128 n + 1 + (n : ℤ))

end

end A330242.P3580400451413561337

/-! ## A330242.P17389551391261392575

`Δ[A006128(n)-A028310(n)]-A028310(n)`
-/

namespace A330242.P17389551391261392575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A028310 n

end

end A330242.P17389551391261392575

/-! ## A330242.P14402723138505343480

`Δ[A211978(n)/2]-(n+1)`
-/

namespace A330242.P14402723138505343480
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211978 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℚ)

end

end A330242.P14402723138505343480

/-! ## A330242.P7431772301963985105

`A195821(n+1)+A195820(n+1)+A047967(n)+A000009(n)-(n+1)`
-/

namespace A330242.P7431772301963985105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195821 (n + 1) + A195820 (n + 1) + (A047967 n + A000009 n) - (n + 1 : ℤ)

end

end A330242.P7431772301963985105

/-! ## A330242.P18321502692976072128

`A195821(n+1)+A195820(n+1)+A332284(n)+A332283(n)-(n+1)`
-/

namespace A330242.P18321502692976072128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195821 (n + 1) + A195820 (n + 1) + (A332284 n + A332283 n) - (n + 1 : ℤ)

end

end A330242.P18321502692976072128

/-! ## A330242.P4792534342049039779

`Δ[A093694(n)-(A332284(n)+A332283(n))]-(n+1)`
-/

namespace A330242.P4792534342049039779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - (A332284 n + A332283 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A330242.P4792534342049039779

/-!
# A330243: Numbers k such that the first digit of the decimal expansion of 2^k is 7.

The programs for A330243, the canonical program `A330243.P17106795366346629784` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330243 has offset 1).

The definition of A330243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2900 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330243.P17106795366346629784

`eq[7, A008952(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A330243

/-- `eq[7, A008952(n)]` -/
def P17106795366346629784.Spec : Prop :=
  ∀ n, (P17106795366346629784.a n : ℤ) = A330243 (n + 1)

theorem P17106795366346629784.correct : P17106795366346629784.Spec := by
  intro n
  simp only [A330243, Nat.add_sub_cancel]

end A330243

/-! ## A330243.P16466244383475316741

`eq[A072032(n+2), A125117(2*n+1)]+2`
-/

namespace A330243.P16466244383475316741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072032 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125117 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A330243.P16466244383475316741

namespace A330243

/-- `eq[A072032(n+2), A125117(2*n+1)]+2` -/
def P16466244383475316741.Spec : Prop :=
  ∀ n, (P16466244383475316741.a n : ℤ) = A330243 (n + 1)

end A330243

/-! ## A330243.P8578435847730860190

`eq[7, A000030(A247243(n+1))]`
-/

namespace A330243.P8578435847730860190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A247243 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330243.P8578435847730860190

namespace A330243

/-- `eq[7, A000030(A247243(n+1))]` -/
def P8578435847730860190.Spec : Prop :=
  ∀ n, (P8578435847730860190.a n : ℤ) = A330243 (n + 1)

end A330243

/-!
# A330246: a(n) = 4^(n+1) + (4^n-1)/3.

The programs for A330246, the canonical program `A330246.P17044681351123724654` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330246 has offset 0).

The definition of A330246 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(n+1)+(4^n-1)/3` (program `A330246.P2336839011232646756`, by `A330246.P2336839011232646756.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A330246.P17044681351123724654

`4*a(n-1)+1` with `a(0)=4`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A330246

/-- `4*a(n-1)+1` -/
def P17044681351123724654.Spec : Prop :=
  ∀ n, (P17044681351123724654.a n : ℤ) = A330246 n

theorem P17044681351123724654.correct : P17044681351123724654.Spec := by
  intro n
  simp only [A330246]

end A330246

/-! ## A330246.P2336839011232646756

`4^(n+1)+(4^n-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A330246.P2336839011232646756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℚ) + ((4 ^ n : ℤ) - 1 : ℚ) / 3

end

end A330246.P2336839011232646756

namespace A330246

/-- `4^(n+1)+(4^n-1)/3` -/
def P2336839011232646756.Spec : Prop :=
  ∀ n, P2336839011232646756.a n = (A330246 n : ℚ)

theorem P2336839011232646756.correct : P2336839011232646756.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A330246, Nat.add_sub_cancel, A330246.P2336839011232646756.a, A330246.P17044681351123724654.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A330246, Nat.add_sub_cancel, A330246.P2336839011232646756.a, A330246.P17044681351123724654.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A330246

/-! ## A330246.P12481705257867255425

`ogf((4-3x)/(1-5x+4x^2))`
-/

namespace A330246.P12481705257867255425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3] [1, -5, 4] n

end

end A330246.P12481705257867255425

namespace A330246

/-- `ogf((4-3x)/(1-5x+4x^2))` -/
def P12481705257867255425.Spec : Prop :=
  ∀ n, P12481705257867255425.a n = A330246 n

end A330246

/-! ## A330246.P14594843984228655456

`or(1, 4*a(n-1))` with `a(0)=4`
-/

namespace A330246.P14594843984228655456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.lor 1 (4 * a (n - 1))

end

end A330246.P14594843984228655456

namespace A330246

/-- `or(1, 4*a(n-1))` -/
def P14594843984228655456.Spec : Prop :=
  ∀ n, (P14594843984228655456.a n : ℤ) = A330246 n

end A330246

/-! ## A330246.P4866909456839218140

`xor(1, 4*a(n-1))` with `a(0)=4`
-/

namespace A330246.P4866909456839218140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.xor 1 (4 * a (n - 1))

end

end A330246.P4866909456839218140

namespace A330246

/-- `xor(1, 4*a(n-1))` -/
def P4866909456839218140.Spec : Prop :=
  ∀ n, (P4866909456839218140.a n : ℤ) = A330246 n

end A330246

/-! ## A330246.P13825322304787353390

`∑[4*a(n-1)]` with `a(0)=4, a(1)=13`
-/

namespace A330246.P13825322304787353390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 13] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330246.P13825322304787353390

namespace A330246

/-- `∑[4*a(n-1)]` -/
def P13825322304787353390.Spec : Prop :=
  ∀ n, (P13825322304787353390.a n : ℤ) = A330246 n

end A330246

/-! ## A330246.P13527238310212434263

`A136326(2*(n+1))`
-/

namespace A330246.P13527238310212434263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136326 (2 * (n + 1))

end

end A330246.P13527238310212434263

namespace A330246

/-- `A136326(2*(n+1))` -/
def P13527238310212434263.Spec : Prop :=
  ∀ n, P13527238310212434263.a n = A330246 n

end A330246

/-! ## A330246.P14040043488711579267

`A267045(2*(n+1))`
-/

namespace A330246.P14040043488711579267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267045 (2 * (n + 1))

end

end A330246.P14040043488711579267

namespace A330246

/-- `A267045(2*(n+1))` -/
def P14040043488711579267.Spec : Prop :=
  ∀ n, P14040043488711579267.a n = A330246 n

end A330246

/-! ## A330246.P4768863374551940966

`∑[A267539(2*n+1)+1]`
-/

namespace A330246.P4768863374551940966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267539 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330246.P4768863374551940966

namespace A330246

/-- `∑[A267539(2*n+1)+1]` -/
def P4768863374551940966.Spec : Prop :=
  ∀ n, P4768863374551940966.a n = A330246 n

end A330246

/-! ## A330246.P3532540161909246609

`A198274(2*n)/3`
-/

namespace A330246.P3532540161909246609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198274 (2 * n) : ℚ) / 3

end

end A330246.P3532540161909246609

namespace A330246

/-- `A198274(2*n)/3` -/
def P3532540161909246609.Spec : Prop :=
  ∀ n, P3532540161909246609.a n = (A330246 n : ℚ)

end A330246

/-! ## A330246.P6783584035461801966

`Δ[A177143(2*n+1)]`
-/

namespace A330246.P6783584035461801966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177143 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A330246.P6783584035461801966

namespace A330246

/-- `Δ[A177143(2*n+1)]` -/
def P6783584035461801966.Spec : Prop :=
  ∀ n, P6783584035461801966.a n = A330246 n

end A330246

/-! ## A330246.P17586722114579541199

`A267539(2*n+3)/3`
-/

namespace A330246.P17586722114579541199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267539 (2 * n + 3) : ℚ) / 3

end

end A330246.P17586722114579541199

namespace A330246

/-- `A267539(2*n+3)/3` -/
def P17586722114579541199.Spec : Prop :=
  ∀ n, P17586722114579541199.a n = (A330246 n : ℚ)

end A330246

/-! ## A330246.P6760533926833245864

`A267045(Δ[(n+1)²])/2`
-/

namespace A330246.P6760533926833245864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A330246.P6760533926833245864

namespace A330246

/-- `A267045(Δ[(n+1)²])/2` -/
def P6760533926833245864.Spec : Prop :=
  ∀ n, P6760533926833245864.a n = (A330246 n : ℚ)

end A330246

/-! ## A330246.P1546883205007920534

`A002063(n)%A206373(n)`
-/

namespace A330246.P1546883205007920534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002063 n) (A206373 n)

end

end A330246.P1546883205007920534

namespace A330246

/-- `A002063(n)%A206373(n)` -/
def P1546883205007920534.Spec : Prop :=
  ∀ n, P1546883205007920534.a n = A330246 n

end A330246

/-! ## A330246.P6498060343541078864

`and(A140529(n), A323824(n))`
-/

namespace A330246.P6498060343541078864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140529 n) (A323824 n)

end

end A330246.P6498060343541078864

namespace A330246

/-- `and(A140529(n), A323824(n))` -/
def P6498060343541078864.Spec : Prop :=
  ∀ n, P6498060343541078864.a n = A330246 n

end A330246

/-! ## A330246.P11496738767383343038

`and(A156760(n), A323824(n))`
-/

namespace A330246.P11496738767383343038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A156760 n) (A323824 n)

end

end A330246.P11496738767383343038

namespace A330246

/-- `and(A156760(n), A323824(n))` -/
def P11496738767383343038.Spec : Prop :=
  ∀ n, P11496738767383343038.a n = A330246 n

end A330246

/-! ## A330246.P14486537604729638036

`and(A206372(n), A323824(n))`
-/

namespace A330246.P14486537604729638036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A206372 n) (A323824 n)

end

end A330246.P14486537604729638036

namespace A330246

/-- `and(A206372(n), A323824(n))` -/
def P14486537604729638036.Spec : Prop :=
  ∀ n, P14486537604729638036.a n = A330246 n

end A330246

/-! ## A330246.P14749999901101354840

`xor(A002042(n), A072197(n))`
-/

namespace A330246.P14749999901101354840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002042 n) (A072197 n)

end

end A330246.P14749999901101354840

namespace A330246

/-- `xor(A002042(n), A072197(n))` -/
def P14749999901101354840.Spec : Prop :=
  ∀ n, P14749999901101354840.a n = A330246 n

end A330246

/-! ## A330246.P12324586792152376020

`xor(A020989(n), A140529(n))`
-/

namespace A330246.P12324586792152376020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020989 n) (A140529 n)

end

end A330246.P12324586792152376020

namespace A330246

/-- `xor(A020989(n), A140529(n))` -/
def P12324586792152376020.Spec : Prop :=
  ∀ n, P12324586792152376020.a n = A330246 n

end A330246

/-! ## A330246.P12808969744193356685

`xor(A020988(n), A156760(n))`
-/

namespace A330246.P12808969744193356685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020988 n) (A156760 n)

end

end A330246.P12808969744193356685

namespace A330246

/-- `xor(A020988(n), A156760(n))` -/
def P12808969744193356685.Spec : Prop :=
  ∀ n, P12808969744193356685.a n = A330246 n

end A330246

/-!
# A330248: a(1) = 1; for n > 1, a(n) is the least nonnegative number such that a(n) + a(n-1) + n is a prime number.

The programs for A330248, there is no canonical definition to state claims against.
-/

/-! ## A330248.P4114012043794087568

`A007920(a(n-1)+1+n)` with `a(0)=1`
-/

namespace A330248.P4114012043794087568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007920 (a (n - 1) + 1 + (n : ℤ)).toNat

end

end A330248.P4114012043794087568

/-! ## A330248.P9197129572689245838

`A013632(a(n-1)+n)-1` with `a(0)=1`
-/

namespace A330248.P9197129572689245838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A013632 (a (n - 1) + (n : ℤ)).toNat - 1

end

end A330248.P9197129572689245838

/-! ## A330248.P10043045697780993683

`A007920(a(n-1)-xor(n, -1))` with `a(0)=1`
-/

namespace A330248.P10043045697780993683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007920 (a (n - 1) - Int.xor (n : ℤ) (-1)).toNat

end

end A330248.P10043045697780993683

/-! ## A330248.P12247515680368575671

`A007920(a(xor(-1, -n))+n+1)` with `a(0)=1`
-/

namespace A330248.P12247515680368575671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007920 (a (Int.xor (-1) (-(n : ℤ))).toNat + (n + 1 : ℤ)).toNat

end

end A330248.P12247515680368575671

/-! ## A330248.P17769601951694982265

`A002113(A013632(a(n-1)+n))` with `a(0)=1`
-/

namespace A330248.P17769601951694982265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002113 (A013632 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A330248.P17769601951694982265

/-! ## A330248.P1383010566980939805

`A007920(A178787(a(n-1))+n)` with `a(0)=1`
-/

namespace A330248.P1383010566980939805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007920 (A178787 (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A330248.P1383010566980939805

/-! ## A330248.P7735406730915977308

`A007920(A252753(a(n-1))+n)` with `a(0)=1`
-/

namespace A330248.P7735406730915977308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007920 (A252753 (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A330248.P7735406730915977308

/-! ## A330248.P15720881422756369941

`A007920(a(-A024000(n))+n+1)` with `a(0)=1`
-/

namespace A330248.P15720881422756369941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007920 (a (-A024000 n).toNat + (n + 1 : ℤ)).toNat

end

end A330248.P15720881422756369941

/-! ## A330248.P12291680131454782123

`A007920(a(A259361(n²))+n+1)` with `a(0)=1`
-/

namespace A330248.P12291680131454782123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007920 (a (A259361 (n ^ 2)).toNat + (n + 1 : ℤ)).toNat

end

end A330248.P12291680131454782123

/-!
# A330250: Unreduced numerator of expected rank of applicant in average rank secretary problem.

The programs for A330250, there is no canonical definition to state claims against.
-/

/-! ## A330250.P16894276365431892571

`∑[A110655(∑[A136795(n+1)])]`
-/

namespace A330250.P16894276365431892571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136795 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330250.P16894276365431892571

/-! ## A330250.P14347949897356885093

`record[A321750(n+1)+Δ[A321751(n+1)]]`
-/

namespace A330250.P14347949897356885093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321751 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321750 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330250.P14347949897356885093

/-!
# A330254: Expansion of e.g.f. Sum_{k>=1} sinh(x^k).

The programs for A330254, there is no canonical definition to state claims against.
-/

/-! ## A330254.P4918167265687022953

`(A132958(n+1)+A057625(n+1))/2`
-/

namespace A330254.P4918167265687022953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132958 (n + 1) + A057625 (n + 1) : ℚ) / 2

end

end A330254.P4918167265687022953

/-! ## A330254.P4500912459703355584

`or(char[2*n], A351984(n+1))`
-/

namespace A330254.P4500912459703355584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A351984 (n + 1))

end

end A330254.P4500912459703355584

/-! ## A330254.P17990622345218632350

`A351984(n+1)+A326918(n)`
-/

namespace A330254.P17990622345218632350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351984 (n + 1) + A326918 n

end

end A330254.P17990622345218632350

/-!
# A330255: Expansion of e.g.f. Sum_{k>=1} (cosh(x^k) - 1) (even powers only).

The programs for A330255, there is no canonical definition to state claims against.
-/

/-! ## A330255.P17982586241859522823

`(A057625(2*(n+1))-A132958(2*(n+1)))/2`
-/

namespace A330255.P17982586241859522823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057625 (2 * (n + 1)) - A132958 (2 * (n + 1)) : ℚ) / 2

end

end A330255.P17982586241859522823

/-! ## A330255.P1346568414898095469

`record[A057625(n+2)-A330254(n+2)]`
-/

namespace A330255.P1346568414898095469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057625 (n + 2) - A330254 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330255.P1346568414898095469

/-! ## A330255.P12889522891521895596

`record[A330254(n+2)-A132958(n+2)]`
-/

namespace A330255.P12889522891521895596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330254 (n + 2) - A132958 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330255.P12889522891521895596

/-! ## A330255.P11628978515787927179

`A057625(2*(n+1))-A330254(2*(n+1))`
-/

namespace A330255.P11628978515787927179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057625 (2 * (n + 1)) - A330254 (2 * (n + 1))

end

end A330255.P11628978515787927179

/-! ## A330255.P8415623819943962168

`A330254(2*(n+1))-A132958(2*(n+1))`
-/

namespace A330255.P8415623819943962168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330254 (2 * (n + 1)) - A132958 (2 * (n + 1))

end

end A330255.P8415623819943962168

/-!
# A330257: Number of length-n ternary squarefree words having no occurrences of either 010 or 212.

The programs for A330257, there is no canonical definition to state claims against.
-/

/-! ## A330257.P14238478570713723391

`A007777(n+1)-C(n, n²)`
-/

namespace A330257.P14238478570713723391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007777 (n + 1) - (Nat.choose n (n ^ 2) : ℤ)

end

end A330257.P14238478570713723391

/-! ## A330257.P11906226273959618668

`A007777(n+1)-floor(1/A001402(n))`
-/

namespace A330257.P11906226273959618668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007777 (n + 1) - ⌊1 / (A001402 n : ℚ)⌋

end

end A330257.P11906226273959618668

/-! ## A330257.P2924456007011958678

`A007777(n+1)-A000010(n+1)%2`
-/

namespace A330257.P2924456007011958678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007777 (n + 1) - Int.tmod (A000010 (n + 1)) 2

end

end A330257.P2924456007011958678

/-! ## A330257.P3380467746730890323

`A007777(n+1)-floor((n+1)/A007777(n))`
-/

namespace A330257.P3380467746730890323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007777 (n + 1) - ⌊(n + 1 : ℚ) / (A007777 n : ℚ)⌋

end

end A330257.P3380467746730890323

/-! ## A330257.P9301635396904215547

`A007777(n+1)-A008683(A007777(2*n+3))`
-/

namespace A330257.P9301635396904215547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007777 (n + 1) - A008683 (A007777 (2 * n + 3)).toNat

end

end A330257.P9301635396904215547

/-! ## A330257.P7182613534175460022

`A007777(n+1)-A010056(2*n+1)*A010056(2*n)`
-/

namespace A330257.P7182613534175460022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007777 (n + 1) - A010056 (2 * n + 1) * A010056 (2 * n)

end

end A330257.P7182613534175460022

/-! ## A330257.P5767852331405485031

`A007777(n+1)-A010056(A007777(n))`
-/

namespace A330257.P5767852331405485031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007777 (n + 1) - A010056 (A007777 n).toNat

end

end A330257.P5767852331405485031

/-!
# A330258: Number of length-n squarefree ternary words having no occurrences of either 010 or 020.

The programs for A330258, there is no canonical definition to state claims against.
-/

/-! ## A330258.P9615279149929919152

`record[A275985(n+1)-A326679(n)]`
-/

namespace A330258.P9615279149929919152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275985 (n + 1) - A326679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330258.P9615279149929919152

/-! ## A330258.P8630982597336606153

`record[A276000(n+1)-A326679(n)]`
-/

namespace A330258.P8630982597336606153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276000 (n + 1) - A326679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330258.P8630982597336606153

/-! ## A330258.P17098265745705815535

`A328513(n+1)+record[A154791(n+1)]`
-/

namespace A330258.P17098265745705815535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328513 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330258.P17098265745705815535

/-! ## A330258.P6974563393863370161

`A001747(n+1)-A000122(A001815(n))`
-/

namespace A330258.P6974563393863370161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) - A000122 (A001815 n).toNat

end

end A330258.P6974563393863370161

/-! ## A330258.P17599694360250061788

`A001747(n+1)-A067742(A007051(n))`
-/

namespace A330258.P17599694360250061788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) - A067742 (A007051 n).toNat

end

end A330258.P17599694360250061788

/-!
# A330259: Number of length-n ternary squarefree strings having no occurrences of either 010 or 101.

The programs for A330259, there is no canonical definition to state claims against.
-/

/-! ## A330259.P4829937579572792456

`A178493(A005378(n)!)+2*A072756(n)`
-/

namespace A330259.P4829937579572792456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178493 (Nat.factorial (A005378 n).toNat) + 2 * A072756 n

end

end A330259.P4829937579572792456

/-! ## A330259.P5995943331280428015

`record[A097380(2*n+1)-A131572(n)]`
-/

namespace A330259.P5995943331280428015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097380 (2 * n + 1) - A131572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330259.P5995943331280428015

/-! ## A330259.P45210034477339727

`A365659(A365829(2*n+1))+n+1`
-/

namespace A330259.P45210034477339727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365659 (A365829 (2 * n + 1)).toNat + (n + 1 : ℤ)

end

end A330259.P45210034477339727

/-!
# A330260: a(n) = n! * Sum_{k=0..n} binomial(n,k) * n^(n - k) / k!.

The programs for A330260, there is no canonical definition to state claims against.
-/

/-! ## A330260.P5116576776750248811

`A341014(∑[4*n])`
-/

namespace A330260.P5116576776750248811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341014 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330260.P5116576776750248811

/-! ## A330260.P1206494535807672543

`record[A003982(n)*A341014(n)]`
-/

namespace A330260.P1206494535807672543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A341014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330260.P1206494535807672543

/-! ## A330260.P11969422391564831099

`record[A341014(gcd(n, A114327(n)))]`
-/

namespace A330260.P11969422391564831099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341014 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330260.P11969422391564831099

/-! ## A330260.P5941468792449430681

`record[A341014(∑[A064455(n+1)])]`
-/

namespace A330260.P5941468792449430681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341014 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330260.P5941468792449430681

/-! ## A330260.P16529786535710500036

`A341014(A046092(n))%A012437(n)`
-/

namespace A330260.P16529786535710500036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341014 (A046092 n).toNat) (A012437 n)

end

end A330260.P16529786535710500036

/-!
# A330261: Start with an empty stack S; for n = 1, 2, 3, ..., interpret the binary representation of n from left to right as follows: in case of bit 1, push the number 1 on top of S, in case of bit 0, replace the two numbers on top of S, say u on top of v, with u-v; a(n) gives the number on top of S after processing n.

The programs for A330261, there is no canonical definition to state claims against.
-/

/-! ## A330261.P14687919616057521100

`A266871(A306566(n+1))-A007814(n+1)`
-/

namespace A330261.P14687919616057521100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266871 (A306566 (n + 1)).toNat - A007814 (n + 1)

end

end A330261.P14687919616057521100

/-! ## A330261.P16749275566363531164

`A067049(A071585(A156882(n)))-A007814(n+1)`
-/

namespace A330261.P16749275566363531164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067049 (A071585 (A156882 n).toNat).toNat - A007814 (n + 1)

end

end A330261.P16749275566363531164

/-! ## A330261.P17232630591839045602

`Δ[A020753(n+1)]-val(n+1, 2)`
-/

namespace A330261.P17232630591839045602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A330261.P17232630591839045602

/-! ## A330261.P8299300087429414102

`3-A304464(A337194(2*(n+1)))`
-/

namespace A330261.P8299300087429414102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A304464 (A337194 (2 * (n + 1))).toNat

end

end A330261.P8299300087429414102

/-! ## A330261.P2750700315543974248

`Δ[A020753(n+1)]-A007814(n+1)`
-/

namespace A330261.P2750700315543974248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007814 (n + 1)

end

end A330261.P2750700315543974248

/-!
# A330262: Start with an empty stack S; for n = 1, 2, 3, ..., interpret the binary representation of n from left to right as follows: in case of bit 1, push the number 1 on top of S, in case of bit 0, replace the two numbers on top of S, say u on top of v, with v-u; a(n) gives the number on top of S after processing n.

The programs for A330262, there is no canonical definition to state claims against.
-/

/-! ## A330262.P12757658995344770414

`A001057(and(A001511(n+1), A147124(n+1)))`
-/

namespace A330262.P12757658995344770414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.land (A001511 (n + 1)) (A147124 (n + 1))).toNat

end

end A330262.P12757658995344770414

/-! ## A330262.P1883784904610033375

`A269735(and(A001511(n+1), A147124(n+1)))`
-/

namespace A330262.P1883784904610033375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269735 (Int.land (A001511 (n + 1)) (A147124 (n + 1))).toNat

end

end A330262.P1883784904610033375

/-! ## A330262.P16732956633611346133

`ceil((-1)^val(n+1, 2)/A338875(3*n))`
-/

namespace A330262.P16732956633611346133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((-1) ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) / (A338875 (3 * n) : ℚ)⌉

end

end A330262.P16732956633611346133

/-! ## A330262.P2631667514872263993

`ceil((-1)^val(n+1, 2)/A289629(3*(n+1)))`
-/

namespace A330262.P2631667514872263993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((-1) ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) / (A289629 (3 * (n + 1)) : ℚ)⌉

end

end A330262.P2631667514872263993

/-! ## A330262.P391092025653596274

`ceil((-1)^val(n+1, 2)/A329431(2*n+1))`
-/

namespace A330262.P391092025653596274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((-1) ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) / (A329431 (2 * n + 1) : ℚ)⌉

end

end A330262.P391092025653596274

/-!
# A330266: Number of ways to shuffle a deck of 4n cards, with 4 cards in each of n ranks, so that adjacent cards have different ranks.

The programs for A330266, there is no canonical definition to state claims against.
-/

/-! ## A330266.P4316746791079596907

`24^n*A321633(n)`
-/

namespace A330266.P4316746791079596907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (24 ^ n : ℤ) * A321633 n

end

end A330266.P4316746791079596907

/-!
# A330267: Lexicographically earliest sequence of nonnegative terms such that for any n > 0 and k > 0, a(n+2*k) <> max(a(n), a(n+k)).

The programs for A330267, there is no canonical definition to state claims against.
-/

/-! ## A330267.P2750993541365883935

`(n-A167877(n))/A000034(A157910(n+1))`
-/

namespace A330267.P2750993541365883935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A167877 n : ℚ) / (A000034 (A157910 (n + 1)).toNat : ℚ)

end

end A330267.P2750993541365883935

/-! ## A330267.P12883645178827045933

`A055081(A114585(n+1))-A003278(A081611(n))`
-/

namespace A330267.P12883645178827045933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055081 (A114585 (n + 1)).toNat - A003278 (A081611 n).toNat

end

end A330267.P12883645178827045933

/-! ## A330267.P5927259306347450082

`A004525(n-A167877(n))^A007318(A008290(n))`
-/

namespace A330267.P5927259306347450082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004525 ((n : ℤ) - A167877 n).toNat : ℚ) ^ (A007318 (A008290 n).toNat : ℤ)

end

end A330267.P5927259306347450082

/-! ## A330267.P7835653705358161939

`val(Δ[A141733(n+4)], 2)`
-/

namespace A330267.P7835653705358161939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141733 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A330267.P7835653705358161939

/-! ## A330267.P5563447704446472909

`A001222(C(A153002(n+1), A289814(n)))`
-/

namespace A330267.P5563447704446472909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (A153002 (n + 1)).toNat (A289814 n).toNat)

end

end A330267.P5563447704446472909

/-!
# A330268: Greedy base sqrt(5) expansion of 1/2.

The programs for A330268, there is no canonical definition to state claims against.
-/

/-! ## A330268.P2865991483606307949

`A069850(A142176(n+1)+A142162(n+1))`
-/

namespace A330268.P2865991483606307949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069850 (A142176 (n + 1) + A142162 (n + 1)).toNat

end

end A330268.P2865991483606307949

/-! ## A330268.P4362683135753978196

`A288752(∑[A026644(A256243(n+1))])`
-/

namespace A330268.P4362683135753978196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026644 (A256243 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288752 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330268.P4362683135753978196

/-! ## A330268.P11525311795754084802

`A085002(or(A055570(n), A057723(n+1)))`
-/

namespace A330268.P11525311795754084802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (Int.lor (A055570 n) (A057723 (n + 1))).toNat

end

end A330268.P11525311795754084802

/-! ## A330268.P1200234242518891140

`A157686(A181073(n+1)%A303305(3*n+4))`
-/

namespace A330268.P1200234242518891140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (Int.tmod (A181073 (n + 1)) (A303305 (3 * n + 4))).toNat

end

end A330268.P1200234242518891140

/-! ## A330268.P16159421173755645803

`A351895(A146356(n+2))%2`
-/

namespace A330268.P16159421173755645803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351895 (A146356 (n + 2)).toNat) 2

end

end A330268.P16159421173755645803

/-!
# A330269: The number of semi-meanders with n top arches and concentric arches within the starting arch or a starting arch with length one.

The programs for A330269, there is no canonical definition to state claims against.
-/

/-! ## A330269.P1826000334573086394

`A000682(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A330269.P1826000334573086394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000682 n + a (n - 1)

end

end A330269.P1826000334573086394

/-! ## A330269.P13216361784665865864

`2*A157846(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A330269.P13216361784665865864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * A157846 (a (n - 1)).toNat

end

end A330269.P13216361784665865864

/-! ## A330269.P13639968816248946154

`A005041(A181770(n))`
-/

namespace A330269.P13639968816248946154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A181770 n).toNat

end

end A330269.P13639968816248946154

/-!
# A330272: a(n) is the least nonnegative integer k such that n OR k is a cube (where OR denotes the bitwise OR operator).

The programs for A330272, there is no canonical definition to state claims against.
-/

/-! ## A330272.P4033311198333242614

`(A079261(A327971(n)+1)+n)^3-n`
-/

namespace A330272.P4033311198333242614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079261 (A327971 n + 1).toNat + (n : ℤ)) ^ 3 - (n : ℤ)

end

end A330272.P4033311198333242614

/-! ## A330272.P9713747532533008326

`(A347550(A000740(n+1))+n)^3-n`
-/

namespace A330272.P9713747532533008326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A347550 (A000740 (n + 1)).toNat + (n : ℤ)) ^ 3 - (n : ℤ)

end

end A330272.P9713747532533008326

/-! ## A330272.P2883857688737311380

`(A293811(A293817(n))-1+n)^3-n`
-/

namespace A330272.P2883857688737311380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A293811 (A293817 n).toNat - 1 + (n : ℤ)) ^ 3 - (n : ℤ)

end

end A330272.P2883857688737311380

/-!
# A330273: Infinitary perfect totient numbers: numbers that equal to the sum of their iterated infinitary totient function (A091732).

The programs for A330273, there is no canonical definition to state claims against.
-/

/-! ## A330273.P10796824114940393736

`eq[n, A333611(abs(1-n)+1)]`
-/

namespace A330273.P10796824114940393736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333611 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330273.P10796824114940393736

/-! ## A330273.P9302308032150900707

`eq[n+1, A333611(n+1)]+1`
-/

namespace A330273.P9302308032150900707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333611 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A330273.P9302308032150900707

/-! ## A330273.P2626329974625669880

`A020725(eq[n+1, A333611(n+1)])`
-/

namespace A330273.P2626329974625669880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A330273.P2626329974625669880

/-!
# A330276: NSW pseudoprimes: odd composite numbers k such that A002315((k-1)/2) == 1 (mod k).

The programs for A330276, there is no canonical definition to state claims against.
-/

/-! ## A330276.P1283081706308427265

`∩[A067887(A007617(n+1)), A270342(n+1)]`
-/

namespace A330276.P1283081706308427265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067887 (A007617 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330276.P1283081706308427265

/-!
# A330279: Numbers k such that x^k == k (mod k + 1) has multiple solutions for 0 <= x < k.

The programs for A330279, there is no canonical definition to state claims against.
-/

/-! ## A330279.P11072171051741052412

`A039772(n+1)-1`
-/

namespace A330279.P11072171051741052412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039772 (n + 1) - 1

end

end A330279.P11072171051741052412

/-! ## A330279.P16176175121424680979

`lt[2, A020639(gcd(n, A000010(n+1)))]`
-/

namespace A330279.P16176175121424680979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (n : ℤ) (A000010 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A330279.P16176175121424680979

/-! ## A330279.P12091643028987505652

`lt[2, A020639(A348259(n+1)+1)]`
-/

namespace A330279.P12091643028987505652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A348259 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A330279.P12091643028987505652

/-! ## A330279.P17895779889517232750

`∩[A181780(n+1), A004271(n)]-1`
-/

namespace A330279.P17895779889517232750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A330279.P17895779889517232750

/-! ## A330279.P6962363638236423732

`∩[A181780(n+1), A004272(n)]-1`
-/

namespace A330279.P6962363638236423732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A330279.P6962363638236423732

/-! ## A330279.P18078703124912788972

`∩[A181780(n+1), A004275(n)]-1`
-/

namespace A330279.P18078703124912788972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A330279.P18078703124912788972

/-! ## A330279.P1388261752275404016

`∩[A181780(n+1), A004277(n)]-1`
-/

namespace A330279.P1388261752275404016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A330279.P1388261752275404016

/-! ## A330279.P14432644417275931538

`∩[A181780(n+1), A004279(n)]-1`
-/

namespace A330279.P14432644417275931538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A330279.P14432644417275931538

/-! ## A330279.P3037857338551321671

`∩[A181780(n+1), A005843(n)]-1`
-/

namespace A330279.P3037857338551321671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A330279.P3037857338551321671

/-! ## A330279.P10752603221851448704

`∩[A181780(n+1), A020739(n)]-1`
-/

namespace A330279.P10752603221851448704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A330279.P10752603221851448704

/-! ## A330279.P11520132595545119680

`∩[A181780(n+1), A020744(n)]-1`
-/

namespace A330279.P11520132595545119680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A330279.P11520132595545119680

/-! ## A330279.P1068117297444096813

`∩[A181780(n+1), A103517(n)]-1`
-/

namespace A330279.P1068117297444096813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A330279.P1068117297444096813

/-! ## A330279.P16482201370866022572

`∩[A139270(n+1), A181780(n+1)]-1`
-/

namespace A330279.P16482201370866022572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A330279.P16482201370866022572

/-! ## A330279.P11820385855018796155

`∩[A176100(n+1), A181780(n+1)]-1`
-/

namespace A330279.P11820385855018796155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A330279.P11820385855018796155

/-! ## A330279.P16290768022249066719

`∩[A181780(n+1), A282671(n+1)]-1`
-/

namespace A330279.P16290768022249066719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A330279.P16290768022249066719

/-! ## A330279.P7088461068686403537

`∩[A181780(n+1), A350694(n+1)]-1`
-/

namespace A330279.P7088461068686403537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350694 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A330279.P7088461068686403537

/-! ## A330279.P8694830867374637285

`∩[A039769(n+1), A004271(n)]-1`
-/

namespace A330279.P8694830867374637285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A330279.P8694830867374637285

/-! ## A330279.P10670998034486392189

`∩[A039769(n+1), A004272(n)]-1`
-/

namespace A330279.P10670998034486392189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A330279.P10670998034486392189

/-! ## A330279.P5197695722591215395

`∩[A039769(n+1), A004275(n)]-1`
-/

namespace A330279.P5197695722591215395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A330279.P5197695722591215395

/-! ## A330279.P14187848119747606926

`∩[A039769(n+1), A004277(n)]-1`
-/

namespace A330279.P14187848119747606926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A330279.P14187848119747606926

/-!
# A330282: Number of fully chiral set-systems on n vertices.

The programs for A330282, there is no canonical definition to state claims against.
-/

/-! ## A330282.P16587546233360750168

`A214526(n+1)+A121589(A056273(n))`
-/

namespace A330282.P16587546233360750168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (n + 1) + A121589 (A056273 n).toNat

end

end A330282.P16587546233360750168

/-!
# A330283: Number of n-celled quasi still lifes in Conway's Game of Life, up to rotation and reflection.

The programs for A330283, there is no canonical definition to state claims against.
-/

/-! ## A330283.P17578772948309820971

`A319571(A017908(n²))`
-/

namespace A330283.P17578772948309820971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (A017908 (n ^ 2)).toNat

end

end A330283.P17578772948309820971

/-! ## A330283.P14475925841101309647

`A000194(C(A309466(n), 3))`
-/

namespace A330283.P14475925841101309647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Nat.choose (A309466 n).toNat 3)

end

end A330283.P14475925841101309647

/-! ## A330283.P14973651737540220397

`A319413(abs(∑[A099323(n)]))`
-/

namespace A330283.P14973651737540220397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319413 |∑ j ∈ Finset.range (n + 1), f1 j|.toNat

end

end A330283.P14973651737540220397

/-! ## A330283.P6169062271446428282

`Δ[A204156(A306859(n)²)]`
-/

namespace A330283.P6169062271446428282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204156 (A306859 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A330283.P6169062271446428282

/-! ## A330283.P8734997059350013893

`A123578(20*A324088(n+1))`
-/

namespace A330283.P8734997059350013893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (20 * A324088 (n + 1)).toNat

end

end A330283.P8734997059350013893

/-!
# A330284: Numbers k such that both k and k+2 are de Polignac numbers (A006285).

The programs for A330284, there is no canonical definition to state claims against.
-/

/-! ## A330284.P2680243652282372815

`A270446(n+1)-1`
-/

namespace A330284.P2680243652282372815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270446 (n + 1) - 1

end

end A330284.P2680243652282372815

/-! ## A330284.P10210141221313882446

`abs(A270446(n+1)+A057428(A008574(n)))`
-/

namespace A330284.P10210141221313882446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A270446 (n + 1) + A057428 (A008574 n).toNat|

end

end A330284.P10210141221313882446

/-! ## A330284.P13385723105804601005

`A280261(A092242(n+1))+A270446(n+1)`
-/

namespace A330284.P13385723105804601005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280261 (A092242 (n + 1)).toNat + A270446 (n + 1)

end

end A330284.P13385723105804601005

/-! ## A330284.P12113862903831359473

`A348952(A014663(n+1))+A270446(n+1)`
-/

namespace A330284.P12113862903831359473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348952 (A014663 (n + 1)).toNat + A270446 (n + 1)

end

end A330284.P12113862903831359473

/-! ## A330284.P3102580161900664682

`∩[A006285(n+1)-2, A006285(n+1)]`
-/

namespace A330284.P3102580161900664682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006285 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330284.P3102580161900664682

/-! ## A330284.P9517838727098245867

`∩[A133122(n+2)-2, A133122(n+2)]`
-/

namespace A330284.P9517838727098245867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133122 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330284.P9517838727098245867

/-! ## A330284.P5532697842898013361

`A325970(A001359(n+1))+A270446(n+1)`
-/

namespace A330284.P5532697842898013361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (A001359 (n + 1)).toNat + A270446 (n + 1)

end

end A330284.P5532697842898013361

/-! ## A330284.P6918965755964927991

`A325970(A006512(n+1))+A270446(n+1)`
-/

namespace A330284.P6918965755964927991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (A006512 (n + 1)).toNat + A270446 (n + 1)

end

end A330284.P6918965755964927991

/-! ## A330284.P8579843052286829594

`A280261(A139832(n+1))+A270446(n+1)`
-/

namespace A330284.P8579843052286829594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280261 (A139832 (n + 1)).toNat + A270446 (n + 1)

end

end A330284.P8579843052286829594

/-! ## A330284.P11794483931267761605

`A280261(A107006(n+1))+A270446(n+1)`
-/

namespace A330284.P11794483931267761605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280261 (A107006 (n + 1)).toNat + A270446 (n + 1)

end

end A330284.P11794483931267761605

/-! ## A330284.P12135984790811816218

`A280261(A139827(n+1))+A270446(n+1)`
-/

namespace A330284.P12135984790811816218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280261 (A139827 (n + 1)).toNat + A270446 (n + 1)

end

end A330284.P12135984790811816218

/-!
# A330285: The maximum number of arithmetic progressions in a sequence of length n.

The programs for A330285, the canonical program `A330285.P2393881857800748337` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330285 has offset 1).

The definition of A330285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330285.P11398111922513300766

`∑[∑[∑{d}[n, floor(atan(#))]]]`
-/

namespace A330285.P11398111922513300766
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), ⌊Real.arctan (d : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330285.P11398111922513300766

namespace A330285

/-- `∑[∑[∑{d}[n, floor(atan(#))]]]` -/
def P11398111922513300766.Spec : Prop :=
  ∀ n, P11398111922513300766.a n = A330285 (n + 1)

end A330285

/-! ## A330285.P4538713380517937564

`∑[∑[floor(∑{d}[n, tanh(sqrt(#))])]]`
-/

namespace A330285.P4538713380517937564
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f3 n), Real.tanh (Real.sqrt (d : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330285.P4538713380517937564

namespace A330285

/-- `∑[∑[floor(∑{d}[n, tanh(sqrt(#))])]]` -/
def P4538713380517937564.Spec : Prop :=
  ∀ n, P4538713380517937564.a n = A330285 (n + 1)

end A330285

/-! ## A330285.P6513575763386195015

`∑[∑[∑{d}[n, ceil(log(atan(#)))]]]`
-/

namespace A330285.P6513575763386195015
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), ⌈Real.log (Real.arctan (d : ℝ))⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330285.P6513575763386195015

namespace A330285

/-- `∑[∑[∑{d}[n, ceil(log(atan(#)))]]]` -/
def P6513575763386195015.Spec : Prop :=
  ∀ n, P6513575763386195015.a n = A330285 (n + 1)

end A330285

/-! ## A330285.P9392321785826923701

`∑[∑[∑{d}[n, round(atan(log(#)))]]]`
-/

namespace A330285.P9392321785826923701
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), SequenceMachineLib.roundAway (Real.arctan (Real.log (d : ℝ)))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330285.P9392321785826923701

namespace A330285

/-- `∑[∑[∑{d}[n, round(atan(log(#)))]]]` -/
def P9392321785826923701.Spec : Prop :=
  ∀ n, P9392321785826923701.a n = A330285 (n + 1)

end A330285

/-! ## A330285.P6701063497046668968

`∑[∑[∑{d}[n, ceil(log2(atan(#)))]]]`
-/

namespace A330285.P6701063497046668968
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), ⌈Real.logb 2 (Real.arctan (d : ℝ))⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330285.P6701063497046668968

namespace A330285

/-- `∑[∑[∑{d}[n, ceil(log2(atan(#)))]]]` -/
def P6701063497046668968.Spec : Prop :=
  ∀ n, P6701063497046668968.a n = A330285 (n + 1)

end A330285

/-! ## A330285.P17855187847151697731

`∑[∑[log2(∏{d}[n, ceil(atan(#))])]]`
-/

namespace A330285.P17855187847151697731
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ d ∈ Nat.divisors (f3 n), ⌈Real.arctan (d : ℝ)⌉ : ℤ) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330285.P17855187847151697731

namespace A330285

/-- `∑[∑[log2(∏{d}[n, ceil(atan(#))])]]` -/
def P17855187847151697731.Spec : Prop :=
  ∀ n, P17855187847151697731.a n = (A330285 (n + 1) : ℝ)

end A330285

/-! ## A330285.P2224452838813717978

`∑[∑[∑{d}[n, ceil(tanh(log(#)))]]]`
-/

namespace A330285.P2224452838813717978
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), ⌈Real.tanh (Real.log (d : ℝ))⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330285.P2224452838813717978

namespace A330285

/-- `∑[∑[∑{d}[n, ceil(tanh(log(#)))]]]` -/
def P2224452838813717978.Spec : Prop :=
  ∀ n, P2224452838813717978.a n = A330285 (n + 1)

end A330285

/-! ## A330285.P2393881857800748337

`∑[∑[∏{e}[n, #+1]-1]]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A330285

/-- `∑[∑[∏{e}[n, #+1]-1]]` -/
def P2393881857800748337.Spec : Prop :=
  ∀ n, P2393881857800748337.a n = A330285 (n + 1)

theorem P2393881857800748337.correct : P2393881857800748337.Spec := by
  intro n
  simp only [A330285, Nat.add_sub_cancel]

end A330285

/-! ## A330285.P120909093163117234

`∑[∑[∑{d}[n, (n+1)%#]]]`
-/

namespace A330285.P120909093163117234
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (n + 1) % d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330285.P120909093163117234

namespace A330285

/-- `∑[∑[∑{d}[n, (n+1)%#]]]` -/
def P120909093163117234.Spec : Prop :=
  ∀ n, (P120909093163117234.a n : ℤ) = A330285 (n + 1)

end A330285

/-! ## A330285.P17001263905337320897

`∑[∑[∑{d}[n, ceil(1/#)]]-n]`
-/

namespace A330285.P17001263905337320897
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), ⌈1 / (d : ℚ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330285.P17001263905337320897

namespace A330285

/-- `∑[∑[∑{d}[n, ceil(1/#)]]-n]` -/
def P17001263905337320897.Spec : Prop :=
  ∀ n, P17001263905337320897.a n = A330285 (n + 1)

end A330285

/-! ## A330285.P7436445228113364489

`∑[∑[A032741(n)]]`
-/

namespace A330285.P7436445228113364489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330285.P7436445228113364489

namespace A330285

/-- `∑[∑[A032741(n)]]` -/
def P7436445228113364489.Spec : Prop :=
  ∀ n, P7436445228113364489.a n = A330285 (n + 1)

end A330285

/-! ## A330285.P5774616532973291797

`∑[A006218(n)-n]`
-/

namespace A330285.P5774616532973291797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330285.P5774616532973291797

namespace A330285

/-- `∑[A006218(n)-n]` -/
def P5774616532973291797.Spec : Prop :=
  ∀ n, P5774616532973291797.a n = A330285 (n + 1)

end A330285

/-! ## A330285.P11431663206652770280

`∑[∑[A319410(n)/2]]`
-/

namespace A330285.P11431663206652770280
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319410 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330285.P11431663206652770280

namespace A330285

/-- `∑[∑[A319410(n)/2]]` -/
def P11431663206652770280.Spec : Prop :=
  ∀ n, P11431663206652770280.a n = (A330285 (n + 1) : ℚ)

end A330285

/-! ## A330285.P17365436373923372845

`∑[A054519(n)-(n+1)]`
-/

namespace A330285.P17365436373923372845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330285.P17365436373923372845

namespace A330285

/-- `∑[A054519(n)-(n+1)]` -/
def P17365436373923372845.Spec : Prop :=
  ∀ n, P17365436373923372845.a n = A330285 (n + 1)

end A330285

/-! ## A330285.P1534300113557542441

`A078567(n+1)-∑[n]`
-/

namespace A330285.P1534300113557542441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078567 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A330285.P1534300113557542441

namespace A330285

/-- `A078567(n+1)-∑[n]` -/
def P1534300113557542441.Spec : Prop :=
  ∀ n, P1534300113557542441.a n = A330285 (n + 1)

end A330285

/-! ## A330285.P4058416196062767718

`∑[A325459(n)]+C(n, 2)`
-/

namespace A330285.P4058416196062767718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 2 : ℤ)

end

end A330285.P4058416196062767718

namespace A330285

/-- `∑[A325459(n)]+C(n, 2)` -/
def P4058416196062767718.Spec : Prop :=
  ∀ n, P4058416196062767718.a n = A330285 (n + 1)

end A330285

/-! ## A330285.P14169661505242184069

`A051336(n+1)-∑[n+1]`
-/

namespace A330285.P14169661505242184069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051336 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A330285.P14169661505242184069

namespace A330285

/-- `A051336(n+1)-∑[n+1]` -/
def P14169661505242184069.Spec : Prop :=
  ∀ n, P14169661505242184069.a n = A330285 (n + 1)

end A330285

/-! ## A330285.P9311903188101397180

`∑[A006590(n+1)]-(n+1)²`
-/

namespace A330285.P9311903188101397180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A330285.P9311903188101397180

namespace A330285

/-- `∑[A006590(n+1)]-(n+1)²` -/
def P9311903188101397180.Spec : Prop :=
  ∀ n, P9311903188101397180.a n = A330285 (n + 1)

end A330285

/-! ## A330285.P15521668620890596390

`∑[a(n-1)+A000005(n)-1]` with `a(0)=0`
-/

namespace A330285.P15521668620890596390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (A000005 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330285.P15521668620890596390

namespace A330285

/-- `∑[a(n-1)+A000005(n)-1]` -/
def P15521668620890596390.Spec : Prop :=
  ∀ n, P15521668620890596390.a n = A330285 (n + 1)

end A330285

/-! ## A330285.P3395265558317570030

`∑[∑[A000005(abs(1-n)+1)]-2-n]`
-/

namespace A330285.P3395265558317570030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330285.P3395265558317570030

namespace A330285

/-- `∑[∑[A000005(abs(1-n)+1)]-2-n]` -/
def P3395265558317570030.Spec : Prop :=
  ∀ n, P3395265558317570030.a n = A330285 (n + 1)

end A330285

/-!
# A330286: Tally the digits of n: list the distinct digits of n in order of appearance, each followed by the respective count, concatenate.

The programs for A330286, there is no canonical definition to state claims against.
-/

/-! ## A330286.P1750968465583284924

`A345110(A045918(n))`
-/

namespace A330286.P1750968465583284924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345110 (A045918 n).toNat

end

end A330286.P1750968465583284924

/-! ## A330286.P10580033450484347911

`A004086(abs(A097601(n)-A244112(n)))`
-/

namespace A330286.P10580033450484347911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 |A097601 n - A244112 n|.toNat

end

end A330286.P10580033450484347911

/-! ## A330286.P9609015424708195178

`A004086(A047842(n)+11*A108782(n))`
-/

namespace A330286.P9609015424708195178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A047842 n + 11 * A108782 n).toNat

end

end A330286.P9609015424708195178

/-! ## A330286.P8742195043871922223

`A004086(A244112(n)-11*A193581(n))`
-/

namespace A330286.P8742195043871922223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A244112 n - 11 * A193581 n).toNat

end

end A330286.P8742195043871922223

/-! ## A330286.P91068697790592429

`A004086(A047842(n)+99*A283001(n))`
-/

namespace A330286.P91068697790592429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A047842 n + 99 * A283001 n).toNat

end

end A330286.P91068697790592429

/-! ## A330286.P125959266573377480

`A004086(A045918(n)+11*(A004086(n)-n))`
-/

namespace A330286.P125959266573377480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A045918 n + 11 * (A004086 n - (n : ℤ))).toNat

end

end A330286.P125959266573377480

/-! ## A330286.P12445237704981848386

`A004086(11*(A004086(n)-n)+A097601(n)+A047842(n))`
-/

namespace A330286.P12445237704981848386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (11 * (A004086 n - (n : ℤ)) + (A097601 n + A047842 n)).toNat

end

end A330286.P12445237704981848386

/-!
# A330287: Permanent of the n-th principal submatrix M(n) of A319840.

The programs for A330287, there is no canonical definition to state claims against.
-/

/-! ## A330287.P17000814192545973544

`A291784(A000142(n)*A000798(n))`
-/

namespace A330287.P17000814192545973544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (A000142 n * A000798 n).toNat

end

end A330287.P17000814192545973544

/-!
# A330289: Numbers all of whose divisors are odious numbers (A000069) with a record number of divisors.

The programs for A330289, there is no canonical definition to state claims against.
-/

/-! ## A330289.P7035647356372920894

`A357763(A090106(n+1))`
-/

namespace A330289.P7035647356372920894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357763 (A090106 (n + 1)).toNat

end

end A330289.P7035647356372920894

/-! ## A330289.P11422218012423733738

`A357763(n+1)%A357808(n+1)`
-/

namespace A330289.P11422218012423733738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357763 (n + 1)) (A357808 (n + 1))

end

end A330289.P11422218012423733738

/-! ## A330289.P6222821660272394861

`lcm(A057856(n+1), A357763(n+1))`
-/

namespace A330289.P6222821660272394861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057856 (n + 1)) (A357763 (n + 1))

end

end A330289.P6222821660272394861

/-! ## A330289.P7174460720284660957

`C(A357763(n+1), Δ[A048266(n+4)])`
-/

namespace A330289.P7174460720284660957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A357763 (n + 1)).toNat (f1 (n + 1) - f1 n).toNat

end

end A330289.P7174460720284660957

/-! ## A330289.P13905454157536745634

`A357763(n+1)+A215061(3*n+1)`
-/

namespace A330289.P13905454157536745634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357763 (n + 1) + A215061 (3 * n + 1)

end

end A330289.P13905454157536745634

/-!
# A330292: a(n) = number of integers 1 <= k < n such that omega(k) <= omega(n), where omega = A001221.

The programs for A330292, there is no canonical definition to state claims against.
-/

/-! ## A330292.P8443035967014736724

`n-A322841(n+1)`
-/

namespace A330292.P8443035967014736724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A322841 (n + 1)

end

end A330292.P8443035967014736724

/-! ## A330292.P3870845138029507016

`-(A322841(n+1)+A001489(n))`
-/

namespace A330292.P3870845138029507016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A322841 (n + 1) + A001489 n)

end

end A330292.P3870845138029507016

/-! ## A330292.P6232765365238015917

`A334655(n+1)+A322837(n+1)`
-/

namespace A330292.P6232765365238015917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334655 (n + 1) + A322837 (n + 1)

end

end A330292.P6232765365238015917

/-! ## A330292.P4089113151886855791

`A322837(n+1)-A070962(n+1)+n`
-/

namespace A330292.P4089113151886855791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322837 (n + 1) - A070962 (n + 1) + (n : ℤ)

end

end A330292.P4089113151886855791

/-! ## A330292.P8473430720790032368

`A008683(A020484(n))*A322841(n+1)+n`
-/

namespace A330292.P8473430720790032368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020484 n).toNat * A322841 (n + 1) + (n : ℤ)

end

end A330292.P8473430720790032368

/-! ## A330292.P14061393702781101468

`A316441(A006530(n+1))*A322841(n+1)+n`
-/

namespace A330292.P14061393702781101468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A006530 (n + 1)).toNat * A322841 (n + 1) + (n : ℤ)

end

end A330292.P14061393702781101468

/-! ## A330292.P12041205182512086575

`A316441(A020639(n+1))*A322841(n+1)+n`
-/

namespace A330292.P12041205182512086575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A020639 (n + 1)).toNat * A322841 (n + 1) + (n : ℤ)

end

end A330292.P12041205182512086575

/-! ## A330292.P7171318164401148242

`A008683(A238205(n+6))*A322841(n+1)+n`
-/

namespace A330292.P7171318164401148242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A238205 (n + 6)).toNat * A322841 (n + 1) + (n : ℤ)

end

end A330292.P7171318164401148242

/-! ## A330292.P560535228800464120

`A033999(A000040(n+1))*A322841(n+1)+n`
-/

namespace A330292.P560535228800464120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A000040 (n + 1)).toNat * A322841 (n + 1) + (n : ℤ)

end

end A330292.P560535228800464120

/-! ## A330292.P9103143606563469035

`A025581(A322841(n+1)+A000217(n))`
-/

namespace A330292.P9103143606563469035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A322841 (n + 1) + A000217 n).toNat

end

end A330292.P9103143606563469035

/-!
# A330293: a(1) = 1, a(2) = 2; for n > 2, a(n) = the smallest prime divisor of the number formed by the concatenation of a(1) to a(n-1) that has not previously appeared in the sequence.

The programs for A330293, there is no canonical definition to state claims against.
-/

/-! ## A330293.P18102480068220560697

`A061395(A058046(n+1))+A057597(n)`
-/

namespace A330293.P18102480068220560697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A058046 (n + 1)).toNat + A057597 n

end

end A330293.P18102480068220560697

/-!
# A330294: Number of non-isomorphic fully chiral set-systems on n vertices.

The programs for A330294, there is no canonical definition to state claims against.
-/

/-! ## A330294.P8484143104491957535

`∑[∑[(n+3)*C((1-n)², n+1)]-2]`
-/

namespace A330294.P8484143104491957535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * Nat.choose ((1 - (n : ℤ)) ^ 2).toNat (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330294.P8484143104491957535

/-!
# A330295: Number of non-isomorphic fully chiral set-systems covering n vertices.

The programs for A330295, there is no canonical definition to state claims against.
-/

/-! ## A330295.P3531368622269868749

`∏[∏[4*a(n-1)]-1]` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A330295.P3531368622269868749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1] fun n f2 =>
  4 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A330295.P3531368622269868749

/-!
# A330296: BII-numbers of set partitions with at least two blocks.

The programs for A330296, there is no canonical definition to state claims against.
-/

/-! ## A330296.P18048065549442926725

`filter[A326701(n+2), A347523(#)]`
-/

namespace A330296.P18048065549442926725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326701 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A330296.P18048065549442926725

/-! ## A330296.P1664199772955522337

`filter[A326701(n+3), A267579(#)]`
-/

namespace A330296.P1664199772955522337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326701 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A330296.P1664199772955522337

/-! ## A330296.P15955887351019524268

`∩[A080943(n+1), A326701(n+1)]`
-/

namespace A330296.P15955887351019524268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330296.P15955887351019524268

/-! ## A330296.P13267607008813297621

`∩[A136492(n+1), A326701(n+1)]`
-/

namespace A330296.P13267607008813297621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330296.P13267607008813297621

/-! ## A330296.P1678892696314116973

`∩[A267312(n+1), A326701(n+1)]`
-/

namespace A330296.P1678892696314116973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330296.P1678892696314116973

/-!
# A330297: Number of labeled simple graphs covering n vertices with exactly two automorphisms, or with exactly n!/2 graphs obtainable by permuting the vertices.

The programs for A330297, there is no canonical definition to state claims against.
-/

/-! ## A330297.P13330587494251209025

`n!/2*A330346(n)`
-/

namespace A330297.P13330587494251209025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / 2 * (A330346 n : ℚ)

end

end A330297.P13330587494251209025

/-! ## A330297.P17398543875468205360

`A001710(n)*A330346(n)`
-/

namespace A330297.P17398543875468205360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 n * A330346 n

end

end A330297.P17398543875468205360

/-! ## A330297.P9551797422134416159

`A000142(n)/2*A330346(n)`
-/

namespace A330297.P9551797422134416159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / 2 * (A330346 n : ℚ)

end

end A330297.P9551797422134416159

/-!
# A330298: a(n) is the number of subsets of {1..n} that contain exactly 1 odd and 2 even numbers.

The programs for A330298, the canonical program `A330298.P7830199881668713688` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330298 has offset 0).

The definition of A330298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330298.P7830199881668713688

`ceil(n/2)*C(floor(n/2), 2)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A330298

/-- `ceil(n/2)*C(floor(n/2), 2)` -/
def P7830199881668713688.Spec : Prop :=
  ∀ n, P7830199881668713688.a n = A330298 n

theorem P7830199881668713688.correct : P7830199881668713688.Spec := by
  intro n
  simp only [A330298]

end A330298

/-! ## A330298.P16759343788907787113

`∑[round(lcm(n+1, 1-n)/4)]-floor((n/2)²)`
-/

namespace A330298.P16759343788907787113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lcm (n + 1 : ℤ) (1 - (n : ℤ)) : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊((n : ℚ) / 2) ^ 2⌋

end

end A330298.P16759343788907787113

namespace A330298

/-- `∑[round(lcm(n+1, 1-n)/4)]-floor((n/2)²)` -/
def P16759343788907787113.Spec : Prop :=
  ∀ n, P16759343788907787113.a n = A330298 n

end A330298

/-! ## A330298.P11815278586293420096

`ceil(n/2)*A161680(ceil(abs((1-n)/2)))`
-/

namespace A330298.P11815278586293420096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * A161680 ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat

end

end A330298.P11815278586293420096

namespace A330298

/-- `ceil(n/2)*A161680(ceil(abs((1-n)/2)))` -/
def P11815278586293420096.Spec : Prop :=
  ∀ n, P11815278586293420096.a n = A330298 n

end A330298

/-! ## A330298.P13883331214289087318

`∑[A123596(n)]-A002620(n)`
-/

namespace A330298.P13883331214289087318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002620 n

end

end A330298.P13883331214289087318

namespace A330298

/-- `∑[A123596(n)]-A002620(n)` -/
def P13883331214289087318.Spec : Prop :=
  ∀ n, P13883331214289087318.a n = A330298 n

end A330298

/-! ## A330298.P414429078201096036

`A161680(floor(n/2))+A028724(n)`
-/

namespace A330298.P414429078201096036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 ⌊(n : ℚ) / 2⌋.toNat + A028724 n

end

end A330298.P414429078201096036

namespace A330298

/-- `A161680(floor(n/2))+A028724(n)` -/
def P414429078201096036.Spec : Prop :=
  ∀ n, P414429078201096036.a n = A330298 n

end A330298

/-! ## A330298.P16347529323866548245

`∑[A123596(n)+1-A008619(n)]`
-/

namespace A330298.P16347529323866548245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 n + (1 - A008619 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330298.P16347529323866548245

namespace A330298

/-- `∑[A123596(n)+1-A008619(n)]` -/
def P16347529323866548245.Spec : Prop :=
  ∀ n, P16347529323866548245.a n = A330298 n

end A330298

/-! ## A330298.P3078530247267290129

`A008805(n)*A110654(n)-A000217(n)`
-/

namespace A330298.P3078530247267290129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n * A110654 n - A000217 n

end

end A330298.P3078530247267290129

namespace A330298

/-- `A008805(n)*A110654(n)-A000217(n)` -/
def P3078530247267290129.Spec : Prop :=
  ∀ n, P3078530247267290129.a n = A330298 n

end A330298

/-! ## A330298.P1384247780060903041

`(A008805(n)-A109613(n))*A110654(n)`
-/

namespace A330298.P1384247780060903041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008805 n - A109613 n) * A110654 n

end

end A330298.P1384247780060903041

namespace A330298

/-- `(A008805(n)-A109613(n))*A110654(n)` -/
def P1384247780060903041.Spec : Prop :=
  ∀ n, P1384247780060903041.a n = A330298 n

end A330298

/-! ## A330298.P9300157756770839907

`∑[A002620(n)/A000034(n)]-A002620(n)`
-/

namespace A330298.P9300157756770839907
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002620 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A002620 n : ℚ)

end

end A330298.P9300157756770839907

namespace A330298

/-- `∑[A002620(n)/A000034(n)]-A002620(n)` -/
def P9300157756770839907.Spec : Prop :=
  ∀ n, P9300157756770839907.a n = (A330298 n : ℚ)

end A330298

/-! ## A330298.P17643503962546503749

`A000217(A008619(n))*A110654(n)-A000217(n)`
-/

namespace A330298.P17643503962546503749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008619 n).toNat * A110654 n - A000217 n

end

end A330298.P17643503962546503749

namespace A330298

/-- `A000217(A008619(n))*A110654(n)-A000217(n)` -/
def P17643503962546503749.Spec : Prop :=
  ∀ n, P17643503962546503749.a n = A330298 n

end A330298

/-! ## A330298.P3389252512099923247

`(A000217(A004526(n))-A004526(n))*A110654(n)`
-/

namespace A330298.P3389252512099923247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (A004526 n).toNat - A004526 n) * A110654 n

end

end A330298.P3389252512099923247

namespace A330298

/-- `(A000217(A004526(n))-A004526(n))*A110654(n)` -/
def P3389252512099923247.Spec : Prop :=
  ∀ n, P3389252512099923247.a n = A330298 n

end A330298

/-! ## A330298.P12164841699580311481

`(A000217(A110654(n))-A026741(n))*A110654(n)`
-/

namespace A330298.P12164841699580311481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (A110654 n).toNat - A026741 n) * A110654 n

end

end A330298.P12164841699580311481

namespace A330298

/-- `(A000217(A110654(n))-A026741(n))*A110654(n)` -/
def P12164841699580311481.Spec : Prop :=
  ∀ n, P12164841699580311481.a n = A330298 n

end A330298

/-! ## A330298.P17549754695461393644

`(A000217(A123108(n))-A123108(n))*A110654(n)`
-/

namespace A330298.P17549754695461393644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (A123108 n).toNat - A123108 n) * A110654 n

end

end A330298.P17549754695461393644

namespace A330298

/-- `(A000217(A123108(n))-A123108(n))*A110654(n)` -/
def P17549754695461393644.Spec : Prop :=
  ∀ n, P17549754695461393644.a n = A330298 n

end A330298

/-! ## A330298.P5583337066097314545

`A333319(n+1)-A330299(n)`
-/

namespace A330298.P5583337066097314545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333319 (n + 1) - A330299 n

end

end A330298.P5583337066097314545

namespace A330298

/-- `A333319(n+1)-A330299(n)` -/
def P5583337066097314545.Spec : Prop :=
  ∀ n, P5583337066097314545.a n = A330298 n

end A330298

/-! ## A330298.P17133831358087259983

`A028724(n+2)-A002620(n)`
-/

namespace A330298.P17133831358087259983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 (n + 2) - A002620 n

end

end A330298.P17133831358087259983

namespace A330298

/-- `A028724(n+2)-A002620(n)` -/
def P17133831358087259983.Spec : Prop :=
  ∀ n, P17133831358087259983.a n = A330298 n

end A330298

/-! ## A330298.P2756095364467034165

`∑[A124093(n+1)]-A001318(n)`
-/

namespace A330298.P2756095364467034165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001318 n

end

end A330298.P2756095364467034165

namespace A330298

/-- `∑[A124093(n+1)]-A001318(n)` -/
def P2756095364467034165.Spec : Prop :=
  ∀ n, P2756095364467034165.a n = A330298 n

end A330298

/-! ## A330298.P6996481166840644670

`A004526(n+1)*A008805(n)-A000217(n)`
-/

namespace A330298.P6996481166840644670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) * A008805 n - A000217 n

end

end A330298.P6996481166840644670

namespace A330298

/-- `A004526(n+1)*A008805(n)-A000217(n)` -/
def P6996481166840644670.Spec : Prop :=
  ∀ n, P6996481166840644670.a n = A330298 n

end A330298

/-! ## A330298.P6141399114452258289

`A333319(n+1)+A333321(n)-A333320(n+1)`
-/

namespace A330298.P6141399114452258289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333319 (n + 1) + (A333321 n - A333320 (n + 1))

end

end A330298.P6141399114452258289

namespace A330298

/-- `A333319(n+1)+A333321(n)-A333320(n+1)` -/
def P6141399114452258289.Spec : Prop :=
  ∀ n, P6141399114452258289.a n = A330298 n

end A330298

/-! ## A330298.P12992591941499102399

`A062707(A000982(n))`
-/

namespace A330298.P12992591941499102399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 (A000982 n).toNat

end

end A330298.P12992591941499102399

namespace A330298

/-- `A062707(A000982(n))` -/
def P12992591941499102399.Spec : Prop :=
  ∀ n, P12992591941499102399.a n = A330298 n

end A330298

/-!
# A330299: a(n) is the number of subsets of {1..n} that contain exactly 1 odd and 3 even numbers.

The programs for A330299, the canonical program `A330299.P2357448400972758481` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330299 has offset 0).

The definition of A330299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330299.P2357448400972758481

`ceil(n/2)*C(floor(n/2), 3)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A330299

/-- `ceil(n/2)*C(floor(n/2), 3)` -/
def P2357448400972758481.Spec : Prop :=
  ∀ n, P2357448400972758481.a n = A330299 n

theorem P2357448400972758481.correct : P2357448400972758481.Spec := by
  intro n
  simp only [A330299]

end A330299

/-! ## A330299.P7281401668740989572

`(A050407(A110654(n+1))-1)*A110654(n)`
-/

namespace A330299.P7281401668740989572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050407 (A110654 (n + 1)).toNat - 1) * A110654 n

end

end A330299.P7281401668740989572

namespace A330299

/-- `(A050407(A110654(n+1))-1)*A110654(n)` -/
def P7281401668740989572.Spec : Prop :=
  ∀ n, P7281401668740989572.a n = A330299 n

end A330299

/-! ## A330299.P1979158294666008629

`A333319(n+1)-A330298(n)`
-/

namespace A330299.P1979158294666008629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333319 (n + 1) - A330298 n

end

end A330299.P1979158294666008629

namespace A330299

/-- `A333319(n+1)-A330298(n)` -/
def P1979158294666008629.Spec : Prop :=
  ∀ n, P1979158294666008629.a n = A330299 n

end A330299

/-! ## A330299.P8312526682040866495

`A333320(n+1)-A333321(n)`
-/

namespace A330299.P8312526682040866495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333320 (n + 1) - A333321 n

end

end A330299.P8312526682040866495

namespace A330299

/-- `A333320(n+1)-A333321(n)` -/
def P8312526682040866495.Spec : Prop :=
  ∀ n, P8312526682040866495.a n = A330299 n

end A330299

