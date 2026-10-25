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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C015
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
# A167500: List of nonzero bits in this sequence (when terms are written in binary and concatenated).

The programs for A167500, there is no canonical definition to state claims against.
-/

/-! ## A167500.P8249451940528912814

`filter[n+1, A167501(#)]`
-/

namespace A167500.P8249451940528912814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167501 (f1 j) = 1) n)

end

end A167500.P8249451940528912814

/-! ## A167500.P9559607859188127201

`lt[0, A167501(n+1)]+1`
-/

namespace A167500.P9559607859188127201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167501 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A167500.P9559607859188127201

/-! ## A167500.P3408761217115303293

`eq[1, A167501(2*n+1-n)]+1`
-/

namespace A167500.P3408761217115303293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167501 (2 * n + 1 - n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A167500.P3408761217115303293

/-! ## A167500.P17106856683737212547

`A000027(eq[1, A167501(n+1)]+1)`
-/

namespace A167500.P17106856683737212547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A167500.P17106856683737212547

/-! ## A167500.P11951709728586831474

`A028310(eq[1, A167501(n+1)]+1)`
-/

namespace A167500.P11951709728586831474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A167500.P11951709728586831474

/-! ## A167500.P11200005486745724415

`record[A000027(n+1)*A167501(n+1)]`
-/

namespace A167500.P11200005486745724415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A167501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167500.P11200005486745724415

/-! ## A167500.P9882187557947880387

`record[A028310(n+1)*A167501(n+1)]`
-/

namespace A167500.P9882187557947880387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1) * A167501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167500.P9882187557947880387

/-! ## A167500.P10936344480296711288

`record[A008619(2*n)*A167501(n+1)]`
-/

namespace A167500.P10936344480296711288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A167501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167500.P10936344480296711288

/-! ## A167500.P2156707130025213101

`record[A052938(2*n)*A167501(n+1)]`
-/

namespace A167500.P2156707130025213101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * n) * A167501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167500.P2156707130025213101

/-! ## A167500.P15966274129903744279

`record[A131732(2*n)*A167501(n+1)]`
-/

namespace A167500.P15966274129903744279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * n) * A167501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167500.P15966274129903744279

/-!
# A167501: Sequence of bits in A167500 (= list of nonzero bits in this sequence, when written in binary).

The programs for A167501, there is no canonical definition to state claims against.
-/

/-! ## A167501.P12101735071453145108

`char[A167500(n+1)-1]`
-/

namespace A167501.P12101735071453145108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167500 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167501.P12101735071453145108

/-! ## A167501.P4729334999554357056

`char[comp[A167522(n+1)-1]]`
-/

namespace A167501.P4729334999554357056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167522 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A167501.P4729334999554357056

/-! ## A167501.P10103139178810071377

`char[A023443(A167500(n+1))]`
-/

namespace A167501.P10103139178810071377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A167500 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167501.P10103139178810071377

/-! ## A167501.P12414506936871001396

`char[A023443(comp[A167522(n+1)])]`
-/

namespace A167501.P12414506936871001396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167522 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167501.P12414506936871001396

/-! ## A167501.P2055049024780341435

`A288640(A297720(n+1)+2*n+3)`
-/

namespace A167501.P2055049024780341435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288640 (A297720 (n + 1) + (2 * n + 3 : ℤ)).toNat

end

end A167501.P2055049024780341435

/-!
# A167502: Sequence A167500 (= list of nonzero bits in this sequence), written in binary.

The programs for A167502, there is no canonical definition to state claims against.
-/

/-! ## A167502.P491441366730181293

`A007088(A167500(n+1))`
-/

namespace A167502.P491441366730181293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A167500 (n + 1)).toNat

end

end A167502.P491441366730181293

/-! ## A167502.P2089334511790796847

`A185544(2*A167500(n+1))`
-/

namespace A167502.P2089334511790796847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A167500 (n + 1)).toNat

end

end A167502.P2089334511790796847

/-! ## A167502.P14022639619258163424

`A007088(lt[0, A167501(n+1)]+1)`
-/

namespace A167502.P14022639619258163424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A167502.P14022639619258163424

/-! ## A167502.P3278375830409190848

`A007088(eq[1, A167501(n+1)]+1)`
-/

namespace A167502.P3278375830409190848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A167502.P3278375830409190848

/-! ## A167502.P9053327172034609447

`A185544(2*(lt[0, A167501(n+1)]+1))`
-/

namespace A167502.P9053327172034609447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1))

end

end A167502.P9053327172034609447

/-!
# A167503: Positions of nonzero digits in this sequence, where the terms are written in base 3 (and concatenated).

The programs for A167503, there is no canonical definition to state claims against.
-/

/-! ## A167503.P16185612410726566722

`eq[A051801(n), A079882(A029136(n))]`
-/

namespace A167503.P16185612410726566722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079882 (A029136 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167503.P16185612410726566722

/-! ## A167503.P12897837587644119927

`eq[A054055(n), A079882(A029136(n))]`
-/

namespace A167503.P12897837587644119927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079882 (A029136 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167503.P12897837587644119927

/-! ## A167503.P76800973838330465

`A007089(record[A087467(Δ[n²])])`
-/

namespace A167503.P76800973838330465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087467 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A167503.P76800973838330465

/-! ## A167503.P1642569142440088474

`A007089(A301337(2*(n+2))-1)`
-/

namespace A167503.P1642569142440088474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A301337 (2 * (n + 2)) - 1).toNat

end

end A167503.P1642569142440088474

/-! ## A167503.P17692781056200977489

`eq[gcd(2, A096972(n+1)), A051801(n)]`
-/

namespace A167503.P17692781056200977489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A096972 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167503.P17692781056200977489

/-!
# A167504: Number of primes of the form 2^(n-m) 3^m - 1, 0 <= m <= n.

The programs for A167504, there is no canonical definition to state claims against.
-/

/-! ## A167504.P18172445343047740578

`and(A087731(A017982(n)), A286013(n+1))`
-/

namespace A167504.P18172445343047740578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087731 (A017982 n).toNat) (A286013 (n + 1))

end

end A167504.P18172445343047740578

/-!
# A167510: The number of bidirectional ballot sequences of length n, i.e., the number of 0-1 sequences of length n such that every prefix and every suffix has more 1's than 0's.

The programs for A167510, there is no canonical definition to state claims against.
-/

/-! ## A167510.P2278152950904104689

`A000194(A000041(∑[floor(14*n/25)]))`
-/

namespace A167510.P2278152950904104689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊14 * ((n : ℚ) / 25)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000041 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A167510.P2278152950904104689

/-! ## A167510.P12284221088447805647

`round(sqrt(A320806(n))/2)-char[10]`
-/

namespace A167510.P12284221088447805647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A320806 n : ℝ) / 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A167510.P12284221088447805647

/-! ## A167510.P10504815530089142470

`A089867(A191701(n+1))`
-/

namespace A167510.P10504815530089142470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A191701 (n + 1)).toNat

end

end A167510.P10504815530089142470

/-! ## A167510.P16130138119539364635

`A083023(A298122(n+1))`
-/

namespace A167510.P16130138119539364635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (A298122 (n + 1)).toNat

end

end A167510.P16130138119539364635

/-! ## A167510.P2532151670445227643

`A329135(A345235(n+1))`
-/

namespace A167510.P2532151670445227643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329135 (A345235 (n + 1)).toNat

end

end A167510.P2532151670445227643

/-!
# A167512: Number of Simple Alternating Transit (SAT) mazes with exactly two extreme values.

The programs for A167512, there is no canonical definition to state claims against.
-/

/-! ## A167512.P10446801157171313746

`∑[A119282(and(n, -2))]`
-/

namespace A167512.P10446801157171313746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 (Int.land (n : ℤ) (-2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167512.P10446801157171313746

/-! ## A167512.P18214166934372659041

`∑[A001519(floor(n/2))-1]`
-/

namespace A167512.P18214166934372659041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 ⌊(n : ℚ) / 2⌋.toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167512.P18214166934372659041

/-! ## A167512.P11059324814270660474

`∑[A119282(2*floor(n/2))]`
-/

namespace A167512.P11059324814270660474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 (2 * ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167512.P11059324814270660474

/-! ## A167512.P4406498192422333232

`∑[floor(A000045(or(1, n))/ϕ²)]`
-/

namespace A167512.P4406498192422333232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (Nat.lor 1 n) : ℝ) / Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167512.P4406498192422333232

/-! ## A167512.P15807990217862759017

`∑[floor(A001906(floor(n/2))/ϕ)]`
-/

namespace A167512.P15807990217862759017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001906 ⌊(n : ℚ) / 2⌋.toNat : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167512.P15807990217862759017

/-!
# A167513: Primes p such that (p reversed)-4 is also prime.

The programs for A167513, there is no canonical definition to state claims against.
-/

/-! ## A167513.P12444418663308239945

`A088081(A296922(n+1)+A000045(n+1))`
-/

namespace A167513.P12444418663308239945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088081 (A296922 (n + 1) + A000045 (n + 1)).toNat

end

end A167513.P12444418663308239945

/-! ## A167513.P7767672634367441156

`A305081(A023782(2*n+5)*A283677(n+1))`
-/

namespace A167513.P7767672634367441156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305081 (A023782 (2 * n + 5) * A283677 (n + 1)).toNat

end

end A167513.P7767672634367441156

/-!
# A167515: The sum over the divisors of n, except the maximum-prime-power divisors collected in A008475.

The programs for A167515, the canonical program `A167515.P2764876312369213402` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167515 has offset 1).

The definition of A167515 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167515.P8183041935070505659

`A178636(n+1)+1`
-/

namespace A167515.P8183041935070505659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178636 (n + 1) + 1

end

end A167515.P8183041935070505659

namespace A167515

/-- `A178636(n+1)+1` -/
def P8183041935070505659.Spec : Prop :=
  ∀ n, P8183041935070505659.a n = A167515 (n + 1)

theorem P8183041935070505659.correct : P8183041935070505659.Spec := by
  intro n
  simp only [A167515, Nat.add_sub_cancel, A167515.P8183041935070505659.a, A167515.P2764876312369213402.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A178636, A178636.P5283396583048980149.a, A092509, A092509.P8072479887117834933.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, A002944, A002944.P11615207776596987764.a, A003418, A003418.P6976248655893080794.a, A010051, A010051.P15078252821583414300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A167515

/-! ## A167515.P2764876312369213402

`A000203(n+1)-A008475(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A167515

/-- `A000203(n+1)-A008475(n+1)` -/
def P2764876312369213402.Spec : Prop :=
  ∀ n, P2764876312369213402.a n = A167515 (n + 1)

theorem P2764876312369213402.correct : P2764876312369213402.Spec := by
  intro n
  simp only [A167515, Nat.add_sub_cancel]

end A167515

/-! ## A167515.P1074127391659867459

`Δ[A160664(n)]-A008475(n+1)`
-/

namespace A167515.P1074127391659867459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008475 (n + 1)

end

end A167515.P1074127391659867459

namespace A167515

/-- `Δ[A160664(n)]-A008475(n+1)` -/
def P1074127391659867459.Spec : Prop :=
  ∀ n, P1074127391659867459.a n = A167515 (n + 1)

end A167515

/-! ## A167515.P15531663086676578131

`A086664(n+1)+A001065(n+1)`
-/

namespace A167515.P15531663086676578131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086664 (n + 1) + A001065 (n + 1)

end

end A167515.P15531663086676578131

namespace A167515

/-- `A086664(n+1)+A001065(n+1)` -/
def P15531663086676578131.Spec : Prop :=
  ∀ n, P15531663086676578131.a n = A167515 (n + 1)

theorem P15531663086676578131.correct : P15531663086676578131.Spec := by
  intro n
  simp only [A167515, Nat.add_sub_cancel, A167515.P15531663086676578131.a, A167515.P2764876312369213402.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A086664, A086664.P5056455571502811925.a, A092509, A092509.P8072479887117834933.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, A002944, A002944.P11615207776596987764.a, A003418, A003418.P6976248655893080794.a, A010051, A010051.P15078252821583414300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A167515

/-! ## A167515.P3965530972579391734

`A086665(n+1)-A078771(n+1)`
-/

namespace A167515.P3965530972579391734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086665 (n + 1) - A078771 (n + 1)

end

end A167515.P3965530972579391734

namespace A167515

/-- `A086665(n+1)-A078771(n+1)` -/
def P3965530972579391734.Spec : Prop :=
  ∀ n, P3965530972579391734.a n = A167515 (n + 1)

theorem P3965530972579391734.correct : P3965530972579391734.Spec := by
  intro n
  simp only [A167515, Nat.add_sub_cancel, A167515.P3965530972579391734.a, A167515.P2764876312369213402.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A078771, A078771.P8502218742761172896.a, A086665, A086665.P3185455482541912894.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A092509, A092509.P8072479887117834933.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, A002944, A002944.P11615207776596987764.a, A003418, A003418.P6976248655893080794.a, A010051, A010051.P15078252821583414300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A167515

/-! ## A167515.P7295850760424978388

`A088580(n+1)-A159077(n+1)`
-/

namespace A167515.P7295850760424978388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A159077 (n + 1)

end

end A167515.P7295850760424978388

namespace A167515

/-- `A088580(n+1)-A159077(n+1)` -/
def P7295850760424978388.Spec : Prop :=
  ∀ n, P7295850760424978388.a n = A167515 (n + 1)

theorem P7295850760424978388.correct : P7295850760424978388.Spec := by
  intro n
  simp only [A167515, Nat.add_sub_cancel, A167515.P7295850760424978388.a, A167515.P2764876312369213402.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A088580, A088580.P3089093194242277422.a, A159077, A159077.P14146349899783805996.a, A092509, A092509.P8072479887117834933.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, A002944, A002944.P11615207776596987764.a, A003418, A003418.P6976248655893080794.a, A010051, A010051.P15078252821583414300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A167515

/-! ## A167515.P10086650771695362937

`abs(A143348(n+1))-A008475(n+1)`
-/

namespace A167515.P10086650771695362937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| - A008475 (n + 1)

end

end A167515.P10086650771695362937

namespace A167515

/-- `abs(A143348(n+1))-A008475(n+1)` -/
def P10086650771695362937.Spec : Prop :=
  ∀ n, P10086650771695362937.a n = A167515 (n + 1)

end A167515

/-! ## A167515.P16893718799167376502

`A039653(n+1)+1-A008475(n+1)`
-/

namespace A167515.P16893718799167376502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) + (1 - A008475 (n + 1))

end

end A167515.P16893718799167376502

namespace A167515

/-- `A039653(n+1)+1-A008475(n+1)` -/
def P16893718799167376502.Spec : Prop :=
  ∀ n, P16893718799167376502.a n = A167515 (n + 1)

end A167515

/-! ## A167515.P1246045503346093906

`A000203(n+1)+1-A159077(n+1)`
-/

namespace A167515.P1246045503346093906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (1 - A159077 (n + 1))

end

end A167515.P1246045503346093906

namespace A167515

/-- `A000203(n+1)+1-A159077(n+1)` -/
def P1246045503346093906.Spec : Prop :=
  ∀ n, P1246045503346093906.a n = A167515 (n + 1)

theorem P1246045503346093906.correct : P1246045503346093906.Spec := by
  intro n
  simp only [A167515, Nat.add_sub_cancel, A167515.P1246045503346093906.a, A167515.P2764876312369213402.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A159077, A159077.P14146349899783805996.a, A092509, A092509.P8072479887117834933.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, A002944, A002944.P11615207776596987764.a, A003418, A003418.P6976248655893080794.a, A010051, A010051.P15078252821583414300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A167515

/-! ## A167515.P13446670388118685744

`A245092(2*n+1)-A008475(n+1)`
-/

namespace A167515.P13446670388118685744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - A008475 (n + 1)

end

end A167515.P13446670388118685744

namespace A167515

/-- `A245092(2*n+1)-A008475(n+1)` -/
def P13446670388118685744.Spec : Prop :=
  ∀ n, P13446670388118685744.a n = A167515 (n + 1)

end A167515

/-! ## A167515.P11678040271543194383

`A008472(n+1)+A023890(n+1)-A008475(n+1)`
-/

namespace A167515.P11678040271543194383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + (A023890 (n + 1) - A008475 (n + 1))

end

end A167515.P11678040271543194383

namespace A167515

/-- `A008472(n+1)+A023890(n+1)-A008475(n+1)` -/
def P11678040271543194383.Spec : Prop :=
  ∀ n, P11678040271543194383.a n = A167515 (n + 1)

theorem P11678040271543194383.correct : P11678040271543194383.Spec := by
  intro n
  simp only [A167515, Nat.add_sub_cancel, A167515.P11678040271543194383.a, A167515.P2764876312369213402.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A023890, A023890.P4514850295399263827.a, A092509, A092509.P8072479887117834933.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, A002944, A002944.P11615207776596987764.a, A003418, A003418.P6976248655893080794.a, A010051, A010051.P15078252821583414300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A167515

/-! ## A167515.P73616911030732503

`A023888(n+1)+A035321(n+1)-A008475(n+1)`
-/

namespace A167515.P73616911030732503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (n + 1) + (A035321 (n + 1) - A008475 (n + 1))

end

end A167515.P73616911030732503

namespace A167515

/-- `A023888(n+1)+A035321(n+1)-A008475(n+1)` -/
def P73616911030732503.Spec : Prop :=
  ∀ n, P73616911030732503.a n = A167515 (n + 1)

theorem P73616911030732503.correct : P73616911030732503.Spec := by
  intro n
  simp only [A167515, Nat.add_sub_cancel, A167515.P73616911030732503.a, A167515.P2764876312369213402.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A023888, A023888.P17873500436284849145.a, A035321, A035321.P11913534039744093094.f1, A035321.P11913534039744093094.a, A074591, A074591.P7866340962004254295.a, A092509, A092509.P8072479887117834933.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, A002944, A002944.P11615207776596987764.a, A003418, A003418.P6976248655893080794.a, A010051, A010051.P15078252821583414300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A167515

/-! ## A167515.P15238659368867658937

`A050449(n+1)+A082052(n+1)-A008475(n+1)`
-/

namespace A167515.P15238659368867658937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (n + 1) + (A082052 (n + 1) - A008475 (n + 1))

end

end A167515.P15238659368867658937

namespace A167515

/-- `A050449(n+1)+A082052(n+1)-A008475(n+1)` -/
def P15238659368867658937.Spec : Prop :=
  ∀ n, P15238659368867658937.a n = A167515 (n + 1)

theorem P15238659368867658937.correct : P15238659368867658937.Spec := by
  intro n
  simp only [A167515, Nat.add_sub_cancel, A167515.P15238659368867658937.a, A167515.P2764876312369213402.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A050449, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A092509, A092509.P8072479887117834933.a, A166486, A166486.P13501783531280266850.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, A002944, A002944.P11615207776596987764.a, A003418, A003418.P6976248655893080794.a, A010051, A010051.P15078252821583414300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A167515

/-! ## A167515.P13727322527204177411

`A000593(n+1)+A146076(n+1)-A008475(n+1)`
-/

namespace A167515.P13727322527204177411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A146076 (n + 1) - A008475 (n + 1))

end

end A167515.P13727322527204177411

namespace A167515

/-- `A000593(n+1)+A146076(n+1)-A008475(n+1)` -/
def P13727322527204177411.Spec : Prop :=
  ∀ n, P13727322527204177411.a n = A167515 (n + 1)

theorem P13727322527204177411.correct : P13727322527204177411.Spec := by
  intro n
  simp only [A167515, Nat.add_sub_cancel, A167515.P13727322527204177411.a, A167515.P2764876312369213402.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000593, A000593.P13640346029616979906.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A146076, A146076.P5513778411624192836.a, A038712, A038712.P3404197303190209645.a, A092509, A092509.P8072479887117834933.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, A002944, A002944.P11615207776596987764.a, A003418, A003418.P6976248655893080794.a, A010051, A010051.P15078252821583414300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A167515

/-! ## A167515.P3414266611992457194

`A035316(n+1)+A285309(n+1)-A008475(n+1)`
-/

namespace A167515.P3414266611992457194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1) + (A285309 (n + 1) - A008475 (n + 1))

end

end A167515.P3414266611992457194

namespace A167515

/-- `A035316(n+1)+A285309(n+1)-A008475(n+1)` -/
def P3414266611992457194.Spec : Prop :=
  ∀ n, P3414266611992457194.a n = A167515 (n + 1)

theorem P3414266611992457194.correct : P3414266611992457194.Spec := by
  intro n
  simp only [A167515, Nat.add_sub_cancel, A167515.P3414266611992457194.a, A167515.P2764876312369213402.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A285309, A285309.P12080858862407877190.a, A037213, A037213.P7544062464691828526.a, A092509, A092509.P8072479887117834933.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, A002944, A002944.P11615207776596987764.a, A003418, A003418.P6976248655893080794.a, A010051, A010051.P15078252821583414300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A167515

/-! ## A167515.P3579939466727403597

`A023888(n+1)+A178637(n+1)-A159077(n+1)`
-/

namespace A167515.P3579939466727403597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (n + 1) + (A178637 (n + 1) - A159077 (n + 1))

end

end A167515.P3579939466727403597

namespace A167515

/-- `A023888(n+1)+A178637(n+1)-A159077(n+1)` -/
def P3579939466727403597.Spec : Prop :=
  ∀ n, P3579939466727403597.a n = A167515 (n + 1)

theorem P3579939466727403597.correct : P3579939466727403597.Spec := by
  intro n
  simp only [A167515, Nat.add_sub_cancel, A167515.P3579939466727403597.a, A167515.P2764876312369213402.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A023888, A023888.P17873500436284849145.a, A159077, A159077.P14146349899783805996.a, A178637, A178637.P1570303736559003244.a, A035321, A035321.P11913534039744093094.f1, A035321.P11913534039744093094.a, A092509, A092509.P8072479887117834933.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, A074591, A074591.P7866340962004254295.a, A002944, A002944.P11615207776596987764.a, A003418, A003418.P6976248655893080794.a, A010051, A010051.P15078252821583414300.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A167515

/-! ## A167515.P16276358972819760305

`A162296(n+1)+A034448(∏{p}[n+1, #])-A008475(n+1)`
-/

namespace A167515.P16276358972819760305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (n + 1) + A034448 (∏ p ∈ Nat.primeFactors (f1 n), p) - A008475 (n + 1)

end

end A167515.P16276358972819760305

namespace A167515

/-- `A162296(n+1)+A034448(∏{p}[n+1, #])-A008475(n+1)` -/
def P16276358972819760305.Spec : Prop :=
  ∀ n, P16276358972819760305.a n = A167515 (n + 1)

end A167515

/-!
# A167520: Positions of nonzero digits in this sequence, when all terms are concatenated.

The programs for A167520, there is no canonical definition to state claims against.
-/

/-! ## A167520.P8030739923809111360

`comp[A080360(2*n+1)]+1`
-/

namespace A167520.P8030739923809111360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080360 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A167520.P8030739923809111360

/-! ## A167520.P487435073262023277

`comp[A136799(3*n+1)]+1`
-/

namespace A167520.P487435073262023277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136799 (3 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A167520.P487435073262023277

/-! ## A167520.P1220507491876923705

`comp[A076974(3*n+1)-2]`
-/

namespace A167520.P1220507491876923705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076974 (3 * n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167520.P1220507491876923705

/-! ## A167520.P11616093023975733986

`comp[n%2*A104272(n+1)]`
-/

namespace A167520.P11616093023975733986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167520.P11616093023975733986

/-! ## A167520.P14852842290889160555

`comp[A104272(2*(n+1))-1]+1`
-/

namespace A167520.P14852842290889160555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (2 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A167520.P14852842290889160555

/-! ## A167520.P14101536137896440971

`comp[A164368(2*(n+1))-1]+1`
-/

namespace A167520.P14101536137896440971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164368 (2 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A167520.P14101536137896440971

/-! ## A167520.P6964547860408225137

`comp[∑{e}[xor(n, -n), 2-#]*A194658(n+1)]`
-/

namespace A167520.P6964547860408225137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))) * A194658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167520.P6964547860408225137

/-! ## A167520.P1095789856459344104

`comp[A182986(A315453(n))]`
-/

namespace A167520.P1095789856459344104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A315453 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167520.P1095789856459344104

/-! ## A167520.P13148414584205587057

`comp[A000035(n)*A104272(n+1)]`
-/

namespace A167520.P13148414584205587057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167520.P13148414584205587057

/-!
# A167521: Positive integers not occurring in A167520.

The programs for A167521, there is no canonical definition to state claims against.
-/

/-! ## A167521.P12090259721698613041

`A272565(A063119(n+1))+A063142(n+1)`
-/

namespace A167521.P12090259721698613041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (A063119 (n + 1)).toNat + A063142 (n + 1)

end

end A167521.P12090259721698613041

/-! ## A167521.P8717947886229158722

`or(A240465(A007689(n))+1, 19*n+9)`
-/

namespace A167521.P8717947886229158722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A240465 (A007689 n).toNat + 1) (19 * n + 9 : ℤ)

end

end A167521.P8717947886229158722

/-! ## A167521.P5568786261669612030

`or(A240465(A181883(2*n+3))+1, 19*n+9)`
-/

namespace A167521.P5568786261669612030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A240465 (A181883 (2 * n + 3)).toNat + 1) (19 * n + 9 : ℤ)

end

end A167521.P5568786261669612030

/-! ## A167521.P13796418693461684290

`A063142(n+1)+A010693(A003946(n))`
-/

namespace A167521.P13796418693461684290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063142 (n + 1) + A010693 (A003946 n).toNat

end

end A167521.P13796418693461684290

/-! ## A167521.P9900407767319451892

`A063142(n+1)+A010693(A073499(n+1))`
-/

namespace A167521.P9900407767319451892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063142 (n + 1) + A010693 (A073499 (n + 1)).toNat

end

end A167521.P9900407767319451892

/-!
# A167522: Positive integers not occurring in A167500.

The programs for A167522, there is no canonical definition to state claims against.
-/

/-! ## A167522.P9336401689347212800

`comp[A167500(n+1)-1]+1`
-/

namespace A167522.P9336401689347212800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167500 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A167522.P9336401689347212800

/-! ## A167522.P15093042268927845097

`comp[A023443(A167500(1+n))]+1`
-/

namespace A167522.P15093042268927845097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A167500 (1 + n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A167522.P15093042268927845097

/-! ## A167522.P9428454815512153994

`eq[char[A167500(n+1)], A000007(n)]`
-/

namespace A167522.P9428454815512153994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167500 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A167522.P9428454815512153994

/-! ## A167522.P7602573739806855005

`eq[char[A167500(n+1)], A000038(n)]`
-/

namespace A167522.P7602573739806855005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167500 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A167522.P7602573739806855005

/-! ## A167522.P17653305112621948133

`comp[A167500(n+1)%A046000(n+4)]`
-/

namespace A167522.P17653305112621948133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167500 (n + 1)) (A046000 (n + 4))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167522.P17653305112621948133

/-! ## A167522.P13935110138534975875

`comp[∪[A007088(2*n), A167500(n+1)]]`
-/

namespace A167522.P13935110138534975875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167500 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A167522.P13935110138534975875

/-! ## A167522.P12287373984577665414

`comp[∪[A167554(3*(n+1)), A167500(n+1)]]`
-/

namespace A167522.P12287373984577665414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167554 (3 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167500 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A167522.P12287373984577665414

/-!
# A167525: Primes p such that p and 3*p^2+3*p+1 are both prime.

The programs for A167525, there is no canonical definition to state claims against.
-/

/-! ## A167525.P6750767172458496365

`p?[A111251(n+1)]`
-/

namespace A167525.P6750767172458496365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167525.P6750767172458496365

/-! ## A167525.P2398201908398570891

`p?[A002504(n+1)-1]`
-/

namespace A167525.P2398201908398570891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167525.P2398201908398570891

/-! ## A167525.P2579082524889698118

`record[A020639(A111251(n+2))]`
-/

namespace A167525.P2579082524889698118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A111251 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167525.P2579082524889698118

/-! ## A167525.P13959813966560673209

`filter[A111251(n+1), A010051(#)]`
-/

namespace A167525.P13959813966560673209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A167525.P13959813966560673209

/-! ## A167525.P15856102525601600795

`record[A020639(A002504(n+2)-1)]`
-/

namespace A167525.P15856102525601600795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002504 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167525.P15856102525601600795

/-! ## A167525.P15092554480079671219

`∩[A000040(n+1), A111251(n+1)]`
-/

namespace A167525.P15092554480079671219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167525.P15092554480079671219

/-! ## A167525.P1786331031148508813

`∩[A042966(n+1), A111251(n+1)]`
-/

namespace A167525.P1786331031148508813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167525.P1786331031148508813

/-! ## A167525.P8825838986175654320

`∩[A042997(n+1), A111251(n+1)]`
-/

namespace A167525.P8825838986175654320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167525.P8825838986175654320

/-! ## A167525.P9251798305819011254

`∩[A045319(n+1), A111251(n+1)]`
-/

namespace A167525.P9251798305819011254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167525.P9251798305819011254

/-! ## A167525.P15962506351793486464

`∩[A045320(n+1), A111251(n+1)]`
-/

namespace A167525.P15962506351793486464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167525.P15962506351793486464

/-! ## A167525.P14035288513213227965

`∩[A045322(n+1), A111251(n+1)]`
-/

namespace A167525.P14035288513213227965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167525.P14035288513213227965

/-! ## A167525.P483369349016042975

`∩[A045334(n+1), A111251(n+1)]`
-/

namespace A167525.P483369349016042975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167525.P483369349016042975

/-! ## A167525.P1396143735269134661

`∩[A045335(n+1), A111251(n+1)]`
-/

namespace A167525.P1396143735269134661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167525.P1396143735269134661

/-! ## A167525.P12469218769129908393

`∩[A111251(n+1), A182986(n+1)]`
-/

namespace A167525.P12469218769129908393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167525.P12469218769129908393

/-! ## A167525.P5555757450879668441

`∩[A111251(n+1), A216881(n+1)]`
-/

namespace A167525.P5555757450879668441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167525.P5555757450879668441

/-! ## A167525.P9495225651537723745

`∩[A111251(n+1), A216882(n+1)]`
-/

namespace A167525.P9495225651537723745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167525.P9495225651537723745

/-! ## A167525.P3668849795735924654

`∩[A006093(n+1)+1, A111251(n+1)]`
-/

namespace A167525.P3668849795735924654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167525.P3668849795735924654

/-! ## A167525.P12862958349022869663

`∩[A000040(n+1), A002504(n+1)-1]`
-/

namespace A167525.P12862958349022869663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167525.P12862958349022869663

/-! ## A167525.P12429959462996220813

`∩[A002504(n+1)-1, A182986(n+1)]`
-/

namespace A167525.P12429959462996220813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167525.P12429959462996220813

/-! ## A167525.P8872299707061252627

`p?[eq[1, A350090(n)]]`
-/

namespace A167525.P8872299707061252627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167525.P8872299707061252627

/-!
# A167527: n^5 mod 49.

The programs for A167527, the canonical program `A167527.P3895853002918676139` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167527 has offset 0).

The definition of A167527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167527.P3895853002918676139

`(n^5)%49`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167527

/-- `(n^5)%49` -/
def P3895853002918676139.Spec : Prop :=
  ∀ n, (P3895853002918676139.a n : ℤ) = A167527 n

theorem P3895853002918676139.correct : P3895853002918676139.Spec := by
  intro n
  simp only [A167527]

end A167527

/-!
# A167528: a(n) = n^5 mod 50.

The programs for A167528, the canonical program `A167528.P13588019774345307776` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167528 has offset 0).

The definition of A167528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167528.P13588019774345307776

`(n^5)%50`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167528

/-- `(n^5)%50` -/
def P13588019774345307776.Spec : Prop :=
  ∀ n, (P13588019774345307776.a n : ℤ) = A167528 n

theorem P13588019774345307776.correct : P13588019774345307776.Spec := by
  intro n
  simp only [A167528]

end A167528

/-!
# A167530: The length of the n-th run of identical consecutive values of A166724.

The programs for A167530, there is no canonical definition to state claims against.
-/

/-! ## A167530.P3817923881641935323

`Δ[lt[p?[A334954(n+1)], 4]]`
-/

namespace A167530.P3817923881641935323
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A167530.P3817923881641935323

/-!
# A167531: a(n) = Sum_{d divides n} d*(n/d)^(d-1).

The programs for A167531, the canonical program `A167531.P1243889037668065656` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167531 has offset 1).

The definition of A167531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 617 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167531.P1243889037668065656

`∑{d}[n+1, (n+1)/#*#^floor(n/#)]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167531

/-- `∑{d}[n+1, (n+1)/#*#^floor(n/#)]` -/
def P1243889037668065656.Spec : Prop :=
  ∀ n, P1243889037668065656.a n = (A167531 (n + 1) : ℚ)

end A167531

/-! ## A167531.P11145343141899161822

`A108416(A212384(n))+A055225(n+1)`
-/

namespace A167531.P11145343141899161822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108416 (A212384 n).toNat + A055225 (n + 1)

end

end A167531.P11145343141899161822

namespace A167531

/-- `A108416(A212384(n))+A055225(n+1)` -/
def P11145343141899161822.Spec : Prop :=
  ∀ n, P11145343141899161822.a n = A167531 (n + 1)

end A167531

/-!
# A167532: G.f.: Sum_{n>=0} A155585(n)^2 * log(1/(1-2*x))^n/n!, where 1/(1-2*x+2*x^2) = Sum_{n>=0} A155585(n)*log(1/(1-2*x))^n/n!.

The programs for A167532, there is no canonical definition to state claims against.
-/

/-! ## A167532.P8013847543703019545

`A065361(A061279(n)*A080635(n))`
-/

namespace A167532.P8013847543703019545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A061279 n * A080635 n).toNat

end

end A167532.P8013847543703019545

/-! ## A167532.P9111129167687015706

`A076888(A051252(n+1))*A212218(3*n+1)`
-/

namespace A167532.P9111129167687015706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076888 (A051252 (n + 1)).toNat * A212218 (3 * n + 1)

end

end A167532.P9111129167687015706

/-!
# A167533: a(n) = 71*n - a(n-1) for n>0, a(0)=12.

The programs for A167533, the canonical program `A167533.P17830071680655342135` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167533 has offset 0).

The definition of A167533 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `71*n-a(n-1)` (program `A167533.P17830071680655342135`, by `A167533.P17830071680655342135.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167533.P17830071680655342135

`71*n-a(n-1)` with `a(0)=12`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167533

/-- `71*n-a(n-1)` -/
def P17830071680655342135.Spec : Prop :=
  ∀ n, P17830071680655342135.a n = A167533 n

theorem P17830071680655342135.correct : P17830071680655342135.Spec := by
  intro n
  simp only [A167533]

end A167533

/-! ## A167533.P13866147652597964724

`71/4-23/4*(-1)^n+71/2*n`
-/

namespace A167533.P13866147652597964724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (71 : ℚ) / 4 - (23 : ℚ) / 4 * ((-1) ^ n : ℚ) + (71 : ℚ) / 2 * (n : ℚ)

end

end A167533.P13866147652597964724

namespace A167533

/-- `71/4-23/4*(-1)^n+71/2*n` -/
def P13866147652597964724.Spec : Prop :=
  ∀ n, P13866147652597964724.a n = (A167533 n : ℚ)

theorem P13866147652597964724.correct : P13866147652597964724.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A167533, Nat.add_sub_cancel, A167533.P13866147652597964724.a, A167533.P17830071680655342135.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A167533, Nat.add_sub_cancel, A167533.P13866147652597964724.a, A167533.P17830071680655342135.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A167533

/-! ## A167533.P4876109809393772779

`∑[floor(a(n-2))]` with `a(0)=12, a(1)=47, a(2)=24`

`floor` is left out, it is the identity on integers.
-/

namespace A167533.P4876109809393772779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12, 47, 24] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167533.P4876109809393772779

namespace A167533

/-- `∑[floor(a(n-2))]` -/
def P4876109809393772779.Spec : Prop :=
  ∀ n, (P4876109809393772779.a n : ℤ) = A167533 n

end A167533

/-! ## A167533.P6519954634449620784

`record[lcm(12, n+1)-A008615(A000265(n+1))]`
-/

namespace A167533.P6519954634449620784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 12 (n + 1) : ℤ) - A008615 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167533.P6519954634449620784

namespace A167533

/-- `record[lcm(12, n+1)-A008615(A000265(n+1))]` -/
def P6519954634449620784.Spec : Prop :=
  ∀ n, P6519954634449620784.a n = A167533 n

end A167533

/-!
# A167534: a(n) = 79*n - a(n-1) for n>0, a(0)=9.

The programs for A167534, the canonical program `A167534.P11559745973683610216` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167534 has offset 0).

The definition of A167534 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `79*n-a(n-1)` (program `A167534.P11559745973683610216`, by `A167534.P11559745973683610216.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167534.P11559745973683610216

`79*n-a(n-1)` with `a(0)=9`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167534

/-- `79*n-a(n-1)` -/
def P11559745973683610216.Spec : Prop :=
  ∀ n, P11559745973683610216.a n = A167534 n

theorem P11559745973683610216.correct : P11559745973683610216.Spec := by
  intro n
  simp only [A167534]

end A167534

/-! ## A167534.P3692306949512516499

`79/4-43/4*(-1)^n+79/2*n`
-/

namespace A167534.P3692306949512516499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (79 : ℚ) / 4 - (43 : ℚ) / 4 * ((-1) ^ n : ℚ) + (79 : ℚ) / 2 * (n : ℚ)

end

end A167534.P3692306949512516499

namespace A167534

/-- `79/4-43/4*(-1)^n+79/2*n` -/
def P3692306949512516499.Spec : Prop :=
  ∀ n, P3692306949512516499.a n = (A167534 n : ℚ)

theorem P3692306949512516499.correct : P3692306949512516499.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A167534, Nat.add_sub_cancel, A167534.P3692306949512516499.a, A167534.P11559745973683610216.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A167534, Nat.add_sub_cancel, A167534.P3692306949512516499.a, A167534.P11559745973683610216.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A167534

/-! ## A167534.P10480792554228245353

`abs(A143988(n+1)-A176010(n+1))`
-/

namespace A167534.P10480792554228245353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143988 (n + 1) - A176010 (n + 1)|

end

end A167534.P10480792554228245353

namespace A167534

/-- `abs(A143988(n+1)-A176010(n+1))` -/
def P10480792554228245353.Spec : Prop :=
  ∀ n, P10480792554228245353.a n = A167534 n

end A167534

/-! ## A167534.P14580696042037861705

`abs(A143988(n+1)-(A164135(n+1)+A159254(n+1)))`
-/

namespace A167534.P14580696042037861705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143988 (n + 1) - (A164135 (n + 1) + A159254 (n + 1))|

end

end A167534.P14580696042037861705

namespace A167534

/-- `abs(A143988(n+1)-(A164135(n+1)+A159254(n+1)))` -/
def P14580696042037861705.Spec : Prop :=
  ∀ n, P14580696042037861705.a n = A167534 n

end A167534

/-!
# A167535: Primes which are the concatenation of two squares (in decimal notation).

The programs for A167535, there is no canonical definition to state claims against.
-/

/-! ## A167535.P17122632528616920081

`p?[∪[A193097(n+1), A345314(n+1)]]`
-/

namespace A167535.P17122632528616920081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193097 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345314 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167535.P17122632528616920081

/-! ## A167535.P6337335945948839531

`p?[A191933(n+1)]`
-/

namespace A167535.P6337335945948839531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167535.P6337335945948839531

/-! ## A167535.P1846455035939249928

`∩[A038872(n+1), A191933(n+1)]`
-/

namespace A167535.P1846455035939249928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167535.P1846455035939249928

/-! ## A167535.P16706504010257747970

`∩[A042998(n+1), A191933(n+1)]`
-/

namespace A167535.P16706504010257747970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167535.P16706504010257747970

/-! ## A167535.P724560015862859907

`∩[A045348(n+1), A191933(n+1)]`
-/

namespace A167535.P724560015862859907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167535.P724560015862859907

/-! ## A167535.P17643109241683442033

`∩[A045371(n+1), A191933(n+1)]`
-/

namespace A167535.P17643109241683442033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167535.P17643109241683442033

/-! ## A167535.P4730397219763613119

`∩[A045403(n+1), A191933(n+1)]`
-/

namespace A167535.P4730397219763613119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167535.P4730397219763613119

/-! ## A167535.P15681991644157899135

`∩[A045405(n+1), A191933(n+1)]`
-/

namespace A167535.P15681991644157899135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167535.P15681991644157899135

/-! ## A167535.P12320520814072066391

`∩[A045428(n+1), A191933(n+1)]`
-/

namespace A167535.P12320520814072066391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167535.P12320520814072066391

/-! ## A167535.P8745321180184489732

`∩[A045468(n+1), A191933(n+1)]`
-/

namespace A167535.P8745321180184489732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167535.P8745321180184489732

/-! ## A167535.P10345661679273812956

`∩[A064739(n+1), A191933(n+1)]`
-/

namespace A167535.P10345661679273812956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167535.P10345661679273812956

/-! ## A167535.P11417012978985083638

`∩[A066591(n+1), A191933(n+1)]`
-/

namespace A167535.P11417012978985083638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167535.P11417012978985083638

/-! ## A167535.P13140140397979988802

`∩[A066738(n+1), A191933(n+1)]`
-/

namespace A167535.P13140140397979988802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167535.P13140140397979988802

/-! ## A167535.P3320156879056107228

`∩[A068493(n+1), A191933(n+1)]`
-/

namespace A167535.P3320156879056107228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167535.P3320156879056107228

/-! ## A167535.P9104557303654885999

`∩[A076518(n+1), A191933(n+1)]`
-/

namespace A167535.P9104557303654885999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167535.P9104557303654885999

/-! ## A167535.P1758196165807760510

`∩[A085317(n+1), A191933(n+1)]`
-/

namespace A167535.P1758196165807760510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167535.P1758196165807760510

/-! ## A167535.P9183829305237243481

`∩[A132143(n+1), A191933(n+1)]`
-/

namespace A167535.P9183829305237243481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167535.P9183829305237243481

/-! ## A167535.P7128734249713642273

`∩[A191933(n+1), A229947(n+1)]`
-/

namespace A167535.P7128734249713642273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167535.P7128734249713642273

/-! ## A167535.P10023539806117407868

`∩[A191933(n+1), A328896(n+1)]`
-/

namespace A167535.P10023539806117407868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167535.P10023539806117407868

/-! ## A167535.P1703229694383689415

`∩[A000040(n+1), A191933(n+1)]`
-/

namespace A167535.P1703229694383689415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167535.P1703229694383689415

/-!
# A167536: a(n) = 3^(2^n) - 2^(2^n).

The programs for A167536, the canonical program `A167536.P15590271811340541653` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167536 has offset 0).

The definition of A167536 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^2^n-2^2^n` (program `A167536.P15590271811340541653`, by `A167536.P15590271811340541653.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167536.P15590271811340541653

`3^2^n-2^2^n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167536

/-- `3^2^n-2^2^n` -/
def P15590271811340541653.Spec : Prop :=
  ∀ n, P15590271811340541653.a n = A167536 n

theorem P15590271811340541653.correct : P15590271811340541653.Spec := by
  intro n
  simp only [A167536]

end A167536

/-! ## A167536.P6115795036802336713

`record[-Δ[a(n-2)²]]` with `a(0)=3, a(1)=2`
-/

namespace A167536.P6115795036802336713
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f2 =>
  f2 (n - 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167536.P6115795036802336713

namespace A167536

/-- `record[-Δ[a(n-2)²]]` -/
def P6115795036802336713.Spec : Prop :=
  ∀ n, P6115795036802336713.a n = A167536 n

end A167536

/-! ## A167536.P9687324755413141253

`A001047(2^n)`
-/

namespace A167536.P9687324755413141253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (2 ^ n)

end

end A167536.P9687324755413141253

namespace A167536

/-- `A001047(2^n)` -/
def P9687324755413141253.Spec : Prop :=
  ∀ n, P9687324755413141253.a n = A167536 n

end A167536

/-! ## A167536.P4102009522688142937

`A056182(2^n)/2`
-/

namespace A167536.P4102009522688142937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056182 (2 ^ n) : ℚ) / 2

end

end A167536.P4102009522688142937

namespace A167536

/-- `A056182(2^n)/2` -/
def P4102009522688142937.Spec : Prop :=
  ∀ n, P4102009522688142937.a n = (A167536 n : ℚ)

theorem P4102009522688142937.correct : P4102009522688142937.Spec := by
  intro n
  simp only [A167536, Nat.add_sub_cancel, A167536.P4102009522688142937.a, A167536.P15590271811340541653.a, A056182, A056182.P12278696812602532658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167536

/-!
# A167539: a(n) = Sum_{k=0..[n/2]} C(n-k,k)^2 * n/(n-k), n>=1.

The programs for A167539, there is no canonical definition to state claims against.
-/

/-! ## A167539.P17404677301505529680

`A091964(n)+Δ[A051286(n)]`
-/

namespace A167539.P17404677301505529680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091964 n + (f1 (n + 1) - f1 n)

end

end A167539.P17404677301505529680

/-! ## A167539.P14357076854508828364

`A081207(n+1)-A166300(n)`
-/

namespace A167539.P14357076854508828364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081207 (n + 1) - A166300 n

end

end A167539.P14357076854508828364

/-! ## A167539.P15118969664609696140

`A171854(n+2)+A004148(n+2)`
-/

namespace A167539.P15118969664609696140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171854 (n + 2) + A004148 (n + 2)

end

end A167539.P15118969664609696140

/-! ## A167539.P5848987221158445778

`A051292(n+2)-n*A004148(n)`
-/

namespace A167539.P5848987221158445778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051292 (n + 2) - (n : ℤ) * A004148 n

end

end A167539.P5848987221158445778

/-! ## A167539.P8399513815568747423

`Δ[A051286(n)]+∑[A088518(2*n)]`
-/

namespace A167539.P8399513815568747423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A167539.P8399513815568747423

/-! ## A167539.P11858058113118321948

`A088518(2*n+1)+Δ[A051286(n)]`
-/

namespace A167539.P11858058113118321948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A167539.P11858058113118321948

/-! ## A167539.P6263783877437312118

`2*A051286(n+1)-A203611(n+1)`
-/

namespace A167539.P6263783877437312118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051286 (n + 1) - A203611 (n + 1)

end

end A167539.P6263783877437312118

/-! ## A167539.P3002976810494253089

`A088518(2*n+1)+Δ[A077419(2*n)]`
-/

namespace A167539.P3002976810494253089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077419 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A167539.P3002976810494253089

/-! ## A167539.P17532854137503832957

`A051286(n+1)+A051286(n)-A166300(n)`
-/

namespace A167539.P17532854137503832957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 (n + 1) + (A051286 n - A166300 n)

end

end A167539.P17532854137503832957

/-! ## A167539.P10320703487401921814

`A051286(n+1)+A201631(n+1)-A110198(n)`
-/

namespace A167539.P10320703487401921814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 (n + 1) + (A201631 (n + 1) - A110198 n)

end

end A167539.P10320703487401921814

/-! ## A167539.P13523612406218065149

`(A132461(n+1)+A051292(n+1))/2`
-/

namespace A167539.P13523612406218065149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132461 (n + 1) + A051292 (n + 1) : ℚ) / 2

end

end A167539.P13523612406218065149

/-!
# A167540: G.f.: Sum_{n>=0} A155585(2n+1)*log(1-2x)^n/n!, where (1-2*x)^2/(1-2*x+2*x^2) = Sum_{n>=0} A155585(n)*log(1-2x)^n/n!.

The programs for A167540, there is no canonical definition to state claims against.
-/

/-! ## A167540.P1679983947248561868

`A000010(A098118(n+1)+2-ceil(2^(n-1)))`
-/

namespace A167540.P1679983947248561868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A098118 (n + 1) + (2 - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉)).toNat

end

end A167540.P1679983947248561868

/-!
# A167541: a(n) = -(n - 4)*(n - 5)*(n - 12)/6.

The programs for A167541, the canonical program `A167541.P4716564935759560404` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167541 has offset 6).

The definition of A167541 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-(n+2)*(n+1)*(n-6)/6` (program `A167541.P15396853987079010763`, by `A167541.P15396853987079010763.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167541.P15396853987079010763

`-(n+2)*(n+1)*(n-6)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167541.P15396853987079010763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-(n + 2 : ℤ)) * (n + 1 : ℤ) * ((n : ℤ) - 6) : ℚ) / 6

end

end A167541.P15396853987079010763

namespace A167541

/-- `-(n+2)*(n+1)*(n-6)/6` -/
def P15396853987079010763.Spec : Prop :=
  ∀ n, P15396853987079010763.a n = (A167541 (n + 6) : ℚ)

theorem P15396853987079010763.correct : P15396853987079010763.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A167541, Nat.add_sub_cancel, A167541.P15396853987079010763.a, A167541.P4716564935759560404.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A167541, Nat.add_sub_cancel, A167541.P15396853987079010763.a, A167541.P4716564935759560404.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A167541

/-! ## A167541.P4716564935759560404

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=2, a(1)=5, a(2)=8, a(3)=10`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167541

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P4716564935759560404.Spec : Prop :=
  ∀ n, P4716564935759560404.a n = A167541 (n + 6)

theorem P4716564935759560404.correct : P4716564935759560404.Spec := by
  intro n
  simp only [A167541, Nat.add_sub_cancel]

end A167541

/-! ## A167541.P7049416638522241127

`3*n+2-C(n, 3)`
-/

namespace A167541.P7049416638522241127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (2 - (Nat.choose n 3 : ℤ))

end

end A167541.P7049416638522241127

namespace A167541

/-- `3*n+2-C(n, 3)` -/
def P7049416638522241127.Spec : Prop :=
  ∀ n, P7049416638522241127.a n = A167541 (n + 6)

end A167541

/-! ## A167541.P11887634018780425268

`2-(C(n, 3)-3*n)`
-/

namespace A167541.P11887634018780425268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.choose n 3 : ℤ) - (3 * n : ℤ))

end

end A167541.P11887634018780425268

namespace A167541

/-- `2-(C(n, 3)-3*n)` -/
def P11887634018780425268.Spec : Prop :=
  ∀ n, P11887634018780425268.a n = A167541 (n + 6)

end A167541

/-! ## A167541.P16010278379945601305

`∑[∑[ogf((2-3x)/(1-2x+x^2))]]`
-/

namespace A167541.P16010278379945601305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167541.P16010278379945601305

namespace A167541

/-- `∑[∑[ogf((2-3x)/(1-2x+x^2))]]` -/
def P16010278379945601305.Spec : Prop :=
  ∀ n, P16010278379945601305.a n = A167541 (n + 6)

end A167541

/-! ## A167541.P4624159441239923524

`ogf((2-3x)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A167541.P4624159441239923524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3] [1, -4, 6, -4, 1] n

end

end A167541.P4624159441239923524

namespace A167541

/-- `ogf((2-3x)/(1-4x+6x^2-4x^3+x^4))` -/
def P4624159441239923524.Spec : Prop :=
  ∀ n, P4624159441239923524.a n = A167541 (n + 6)

end A167541

/-! ## A167541.P17634179739252458353

`n+2-C(n, 3)+n+n`
-/

namespace A167541.P17634179739252458353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.choose n 3 : ℤ) + (n : ℤ) + (n : ℤ)

end

end A167541.P17634179739252458353

namespace A167541

/-- `n+2-C(n, 3)+n+n` -/
def P17634179739252458353.Spec : Prop :=
  ∀ n, P17634179739252458353.a n = A167541 (n + 6)

end A167541

/-! ## A167541.P16194796744363638803

`a(n-1)+(n+1)*(2-n/2)` with `a(0)=2`
-/

namespace A167541.P16194796744363638803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (n + 1 : ℚ) * (2 - (n : ℚ) / 2)

end

end A167541.P16194796744363638803

namespace A167541

/-- `a(n-1)+(n+1)*(2-n/2)` -/
def P16194796744363638803.Spec : Prop :=
  ∀ n, P16194796744363638803.a n = (A167541 (n + 6) : ℚ)

end A167541

/-! ## A167541.P2189477991349310106

`∑[∑[A022958(n)]]`
-/

namespace A167541.P2189477991349310106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167541.P2189477991349310106

namespace A167541

/-- `∑[∑[A022958(n)]]` -/
def P2189477991349310106.Spec : Prop :=
  ∀ n, P2189477991349310106.a n = A167541 (n + 6)

end A167541

/-! ## A167541.P3928842233786391158

`A081498(n+1)+1+n`
-/

namespace A167541.P3928842233786391158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081498 (n + 1) + 1 + (n : ℤ)

end

end A167541.P3928842233786391158

namespace A167541

/-- `A081498(n+1)+1+n` -/
def P3928842233786391158.Spec : Prop :=
  ∀ n, P3928842233786391158.a n = A167541 (n + 6)

end A167541

/-! ## A167541.P9345165402388119444

`A016777(n)+1-C(n, 3)`
-/

namespace A167541.P9345165402388119444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + 1 - (Nat.choose n 3 : ℤ)

end

end A167541.P9345165402388119444

namespace A167541

/-- `A016777(n)+1-C(n, 3)` -/
def P9345165402388119444.Spec : Prop :=
  ∀ n, P9345165402388119444.a n = A167541 (n + 6)

end A167541

/-! ## A167541.P7828004117546288731

`n*(n+2)-A129936(n)`
-/

namespace A167541.P7828004117546288731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) - A129936 n

end

end A167541.P7828004117546288731

namespace A167541

/-- `n*(n+2)-A129936(n)` -/
def P7828004117546288731.Spec : Prop :=
  ∀ n, P7828004117546288731.a n = A167541 (n + 6)

end A167541

/-! ## A167541.P16101534221455529327

`A254749(n+1)+∑[n+1]`
-/

namespace A167541.P16101534221455529327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254749 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A167541.P16101534221455529327

namespace A167541

/-- `A254749(n+1)+∑[n+1]` -/
def P16101534221455529327.Spec : Prop :=
  ∀ n, P16101534221455529327.a n = A167541 (n + 6)

end A167541

/-! ## A167541.P16416137617942572594

`(n+1)*(n+2)-A000292(n)`
-/

namespace A167541.P16416137617942572594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℤ) - A000292 n

end

end A167541.P16416137617942572594

namespace A167541

/-- `(n+1)*(n+2)-A000292(n)` -/
def P16416137617942572594.Spec : Prop :=
  ∀ n, P16416137617942572594.a n = A167541 (n + 6)

end A167541

/-! ## A167541.P18015721422333735623

`∑[A080956(n+1)]+(n+1)²`
-/

namespace A167541.P18015721422333735623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A167541.P18015721422333735623

namespace A167541

/-- `∑[A080956(n+1)]+(n+1)²` -/
def P18015721422333735623.Spec : Prop :=
  ∀ n, P18015721422333735623.a n = A167541 (n + 6)

end A167541

/-! ## A167541.P9652197928089324281

`A090288(n)-A005586(n)`
-/

namespace A167541.P9652197928089324281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 n - A005586 n

end

end A167541.P9652197928089324281

namespace A167541

/-- `A090288(n)-A005586(n)` -/
def P9652197928089324281.Spec : Prop :=
  ∀ n, P9652197928089324281.a n = A167541 (n + 6)

end A167541

/-! ## A167541.P17594759728516445929

`A005286(n)-A108766(n)`
-/

namespace A167541.P17594759728516445929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n - A108766 n

end

end A167541.P17594759728516445929

namespace A167541

/-- `A005286(n)-A108766(n)` -/
def P17594759728516445929.Spec : Prop :=
  ∀ n, P17594759728516445929.a n = A167541 (n + 6)

end A167541

/-! ## A167541.P14942378731498085408

`A037236(n)-A081436(n)`
-/

namespace A167541.P14942378731498085408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037236 n - A081436 n

end

end A167541.P14942378731498085408

namespace A167541

/-- `A037236(n)-A081436(n)` -/
def P14942378731498085408.Spec : Prop :=
  ∀ n, P14942378731498085408.a n = A167541 (n + 6)

end A167541

/-! ## A167541.P2334436231930898499

`A062748(n)-A167875(n)`
-/

namespace A167541.P2334436231930898499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 n - A167875 n

end

end A167541.P2334436231930898499

namespace A167541

/-- `A062748(n)-A167875(n)` -/
def P2334436231930898499.Spec : Prop :=
  ∀ n, P2334436231930898499.a n = A167541 (n + 6)

end A167541

/-! ## A167541.P18151286436058428873

`A052905(n)-A283551(n)`
-/

namespace A167541.P18151286436058428873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n - A283551 n

end

end A167541.P18151286436058428873

namespace A167541

/-- `A052905(n)-A283551(n)` -/
def P18151286436058428873.Spec : Prop :=
  ∀ n, P18151286436058428873.a n = A167541 (n + 6)

end A167541

/-!
# A167542: Natural numbers, swapped in pairs, with decimal digits reversed.

The programs for A167542, there is no canonical definition to state claims against.
-/

/-! ## A167542.P6540067672590551150

`A004086(abs(xor(n, -2)))`
-/

namespace A167542.P6540067672590551150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 |Int.xor (n : ℤ) (-2)|.toNat

end

end A167542.P6540067672590551150

/-! ## A167542.P3030453326644965331

`A004086(-xor(n, -2))`
-/

namespace A167542.P3030453326644965331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (-Int.xor (n : ℤ) (-2)).toNat

end

end A167542.P3030453326644965331

/-! ## A167542.P12975367348543527333

`A004086(xor(1, n)+1)`
-/

namespace A167542.P12975367348543527333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Nat.xor 1 n + 1)

end

end A167542.P12975367348543527333

/-! ## A167542.P7139644025154409847

`A103168(abs(10*xor(n, -2)))`
-/

namespace A167542.P7139644025154409847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103168 |10 * Int.xor (n : ℤ) (-2)|.toNat

end

end A167542.P7139644025154409847

/-! ## A167542.P2146061315457072589

`A004086(2-xor(1, 1-n))`
-/

namespace A167542.P2146061315457072589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (2 - Int.xor 1 (1 - (n : ℤ))).toNat

end

end A167542.P2146061315457072589

/-! ## A167542.P9271676909828281772

`A135020(2*(xor(1, n)+1))`
-/

namespace A167542.P9271676909828281772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (2 * (Nat.xor 1 n + 1))

end

end A167542.P9271676909828281772

/-! ## A167542.P15572943288825696762

`A004093(5*(xor(1, n)+1))`
-/

namespace A167542.P15572943288825696762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (5 * (Nat.xor 1 n + 1))

end

end A167542.P15572943288825696762

/-! ## A167542.P2186175498282456854

`A004086(2*or(1, n)-n)`
-/

namespace A167542.P2186175498282456854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (2 * Nat.lor 1 n - n)

end

end A167542.P2186175498282456854

/-! ## A167542.P149646989451925748

`A004086(and(2, gcd(2, n))+n)`
-/

namespace A167542.P149646989451925748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Nat.land 2 (Nat.gcd 2 n) + n)

end

end A167542.P149646989451925748

/-! ## A167542.P5410365848830572609

`A004086((-1)^n+n+1)`
-/

namespace A167542.P5410365848830572609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A167542.P5410365848830572609

/-!
# A167543: a(n) = (n-5)*(n-6)*(n-7)*(n-16)/24.

The programs for A167543, the canonical program `A167543.P5849307036814744856` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167543 has offset 8).

The definition of A167543 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+3)*(n+2)*(n+1)*(n-8)/24` (program `A167543.P6420117896176383931`, by `A167543.P6420117896176383931.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167543.P3115164346142315193

`C(n+3, 3)*(n-8)/4`
-/

namespace A167543.P3115164346142315193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 3) 3 : ℤ) * ((n : ℤ) - 8) : ℚ) / 4

end

end A167543.P3115164346142315193

namespace A167543

/-- `C(n+3, 3)*(n-8)/4` -/
def P3115164346142315193.Spec : Prop :=
  ∀ n, P3115164346142315193.a n = (A167543 (n + 8) : ℚ)

end A167543

/-! ## A167543.P6420117896176383931

`(n+3)*(n+2)*(n+1)*(n-8)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167543.P6420117896176383931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 3) * (n + 2) * (n + 1) : ℤ) * ((n : ℤ) - 8) : ℚ) / 24

end

end A167543.P6420117896176383931

namespace A167543

/-- `(n+3)*(n+2)*(n+1)*(n-8)/24` -/
def P6420117896176383931.Spec : Prop :=
  ∀ n, P6420117896176383931.a n = (A167543 (n + 8) : ℚ)

theorem P6420117896176383931.correct : P6420117896176383931.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A167543, Nat.add_sub_cancel, A167543.P6420117896176383931.a, A167543.P5849307036814744856.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A167543, Nat.add_sub_cancel, A167543.P6420117896176383931.a, A167543.P5849307036814744856.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A167543

/-! ## A167543.P5849307036814744856

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=-2, a(1)=-7, a(2)=-15, a(3)=-25, a(4)=-35`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167543

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5849307036814744856.Spec : Prop :=
  ∀ n, P5849307036814744856.a n = A167543 (n + 8)

theorem P5849307036814744856.correct : P5849307036814744856.Spec := by
  intro n
  simp only [A167543, Nat.add_sub_cancel]

end A167543

/-! ## A167543.P5953876701853527916

`∑[∑[∑[ogf((-2+3x)/(1-2x+x^2))]]]`
-/

namespace A167543.P5953876701853527916
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, 3] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167543.P5953876701853527916

namespace A167543

/-- `∑[∑[∑[ogf((-2+3x)/(1-2x+x^2))]]]` -/
def P5953876701853527916.Spec : Prop :=
  ∀ n, P5953876701853527916.a n = A167543 (n + 8)

end A167543

/-! ## A167543.P4215162311449389027

`-∑[A167541(n+6)]`
-/

namespace A167543.P4215162311449389027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167541 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167543.P4215162311449389027

namespace A167543

/-- `-∑[A167541(n+6)]` -/
def P4215162311449389027.Spec : Prop :=
  ∀ n, P4215162311449389027.a n = A167543 (n + 8)

end A167543

/-! ## A167543.P6126290759047495879

`A005701(n)-A096942(n)`
-/

namespace A167543.P6126290759047495879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n - A096942 n

end

end A167543.P6126290759047495879

namespace A167543

/-- `A005701(n)-A096942(n)` -/
def P6126290759047495879.Spec : Prop :=
  ∀ n, P6126290759047495879.a n = A167543 (n + 8)

end A167543

/-! ## A167543.P17855002428241327304

`A101338(n)-A062748(n)`
-/

namespace A167543.P17855002428241327304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101338 n - A062748 n

end

end A167543.P17855002428241327304

namespace A167543

/-- `A101338(n)-A062748(n)` -/
def P17855002428241327304.Spec : Prop :=
  ∀ n, P17855002428241327304.a n = A167543 (n + 8)

end A167543

/-! ## A167543.P1652417460402275975

`A096959(n)-A139798(n+1)`
-/

namespace A167543.P1652417460402275975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096959 n - A139798 (n + 1)

end

end A167543.P1652417460402275975

namespace A167543

/-- `A096959(n)-A139798(n+1)` -/
def P1652417460402275975.Spec : Prop :=
  ∀ n, P1652417460402275975.a n = A167543 (n + 8)

end A167543

/-! ## A167543.P2773297514285461216

`A086274(n+1)-A164845(n)`
-/

namespace A167543.P2773297514285461216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086274 (n + 1) - A164845 n

end

end A167543.P2773297514285461216

namespace A167543

/-- `A086274(n+1)-A164845(n)` -/
def P2773297514285461216.Spec : Prop :=
  ∀ n, P2773297514285461216.a n = A167543 (n + 8)

end A167543

/-! ## A167543.P13272861166780515387

`A290312(n)-A127407(n+2)`
-/

namespace A167543.P13272861166780515387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290312 n - A127407 (n + 2)

end

end A167543.P13272861166780515387

namespace A167543

/-- `A290312(n)-A127407(n+2)` -/
def P13272861166780515387.Spec : Prop :=
  ∀ n, P13272861166780515387.a n = A167543 (n + 8)

end A167543

/-! ## A167543.P7527458733990842731

`A096958(n)-A130809(n+3)`
-/

namespace A167543.P7527458733990842731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096958 n - A130809 (n + 3)

end

end A167543.P7527458733990842731

namespace A167543

/-- `A096958(n)-A130809(n+3)` -/
def P7527458733990842731.Spec : Prop :=
  ∀ n, P7527458733990842731.a n = A167543 (n + 8)

end A167543

/-! ## A167543.P1872892982360355689

`A000127(n+1)-(2*A005563(n)+3)`
-/

namespace A167543.P1872892982360355689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 1) - (2 * A005563 n + 3)

end

end A167543.P1872892982360355689

namespace A167543

/-- `A000127(n+1)-(2*A005563(n)+3)` -/
def P1872892982360355689.Spec : Prop :=
  ∀ n, P1872892982360355689.a n = A167543 (n + 8)

end A167543

/-! ## A167543.P12260187414086073135

`A000332(n+1)-A005449(n+1)`
-/

namespace A167543.P12260187414086073135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) - A005449 (n + 1)

end

end A167543.P12260187414086073135

namespace A167543

/-- `A000332(n+1)-A005449(n+1)` -/
def P12260187414086073135.Spec : Prop :=
  ∀ n, P12260187414086073135.a n = A167543 (n + 8)

end A167543

/-! ## A167543.P17144411490738012927

`A000127(n+1)-A058331(n+1)`
-/

namespace A167543.P17144411490738012927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 1) - A058331 (n + 1)

end

end A167543.P17144411490738012927

namespace A167543

/-- `A000127(n+1)-A058331(n+1)` -/
def P17144411490738012927.Spec : Prop :=
  ∀ n, P17144411490738012927.a n = A167543 (n + 8)

end A167543

/-! ## A167543.P16589691601824216933

`A006323(n+1)-A152457(n+1)`
-/

namespace A167543.P16589691601824216933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006323 (n + 1) - A152457 (n + 1)

end

end A167543.P16589691601824216933

namespace A167543

/-- `A006323(n+1)-A152457(n+1)` -/
def P16589691601824216933.Spec : Prop :=
  ∀ n, P16589691601824216933.a n = A167543 (n + 8)

end A167543

/-! ## A167543.P10192561357435897607

`A005712(n+2)-A016061(n+1)`
-/

namespace A167543.P10192561357435897607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005712 (n + 2) - A016061 (n + 1)

end

end A167543.P10192561357435897607

namespace A167543

/-- `A005712(n+2)-A016061(n+1)` -/
def P10192561357435897607.Spec : Prop :=
  ∀ n, P10192561357435897607.a n = A167543 (n + 8)

end A167543

/-! ## A167543.P16246142359003356085

`A051744(n+1)-A077414(n+2)`
-/

namespace A167543.P16246142359003356085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051744 (n + 1) - A077414 (n + 2)

end

end A167543.P16246142359003356085

namespace A167543

/-- `A051744(n+1)-A077414(n+2)` -/
def P16246142359003356085.Spec : Prop :=
  ∀ n, P16246142359003356085.a n = A167543 (n + 8)

end A167543

/-! ## A167543.P2737243349380580811

`A000332(n+1)+1-A104249(n+1)`
-/

namespace A167543.P2737243349380580811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) + (1 - A104249 (n + 1))

end

end A167543.P2737243349380580811

namespace A167543

/-- `A000332(n+1)+1-A104249(n+1)` -/
def P2737243349380580811.Spec : Prop :=
  ∀ n, P2737243349380580811.a n = A167543 (n + 8)

end A167543

/-! ## A167543.P48789930222620399

`A000127(n+1)-(A005563(n+1)+n²)`
-/

namespace A167543.P48789930222620399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 1) - (A005563 (n + 1) + (n ^ 2 : ℤ))

end

end A167543.P48789930222620399

namespace A167543

/-- `A000127(n+1)-(A005563(n+1)+n²)` -/
def P48789930222620399.Spec : Prop :=
  ∀ n, P48789930222620399.a n = A167543 (n + 8)

end A167543

/-!
# A167544: a(n) = (n-3)*(n-8)/2.

The programs for A167544, the canonical program `A167544.P5457980980008866061` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167544 has offset 4).

The definition of A167544 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n-4)/2` (program `A167544.P5100388090753200986`, by `A167544.P5100388090753200986.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167544.P5100388090753200986

`(n+1)*(n-4)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167544.P5100388090753200986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((n : ℤ) - 4) : ℚ) / 2

end

end A167544.P5100388090753200986

namespace A167544

/-- `(n+1)*(n-4)/2` -/
def P5100388090753200986.Spec : Prop :=
  ∀ n, P5100388090753200986.a n = (A167544 (n + 4) : ℚ)

theorem P5100388090753200986.correct : P5100388090753200986.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A167544, Nat.add_sub_cancel, A167544.P5100388090753200986.a, A167544.P5457980980008866061.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A167544, Nat.add_sub_cancel, A167544.P5100388090753200986.a, A167544.P5457980980008866061.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A167544

/-! ## A167544.P5457980980008866061

`a(n-1)+n+4-6` with `a(0)=-2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167544

/-- `a(n-1)+n+4-6` -/
def P5457980980008866061.Spec : Prop :=
  ∀ n, P5457980980008866061.a n = A167544 (n + 4)

theorem P5457980980008866061.correct : P5457980980008866061.Spec := by
  intro n
  simp only [A167544, Nat.add_sub_cancel]

end A167544

/-! ## A167544.P7098444136373020838

`C(n, 2)-(n+2)`
-/

namespace A167544.P7098444136373020838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (n + 2 : ℤ)

end

end A167544.P7098444136373020838

namespace A167544

/-- `C(n, 2)-(n+2)` -/
def P7098444136373020838.Spec : Prop :=
  ∀ n, P7098444136373020838.a n = A167544 (n + 4)

end A167544

/-! ## A167544.P1863387044274406285

`C(n, 2)-2-n`
-/

namespace A167544.P1863387044274406285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 2 - (n : ℤ)

end

end A167544.P1863387044274406285

namespace A167544

/-- `C(n, 2)-2-n` -/
def P1863387044274406285.Spec : Prop :=
  ∀ n, P1863387044274406285.a n = A167544 (n + 4)

end A167544

/-! ## A167544.P10521070527751102251

`-∑[xor(n, -1)+3]`
-/

namespace A167544.P10521070527751102251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167544.P10521070527751102251

namespace A167544

/-- `-∑[xor(n, -1)+3]` -/
def P10521070527751102251.Spec : Prop :=
  ∀ n, P10521070527751102251.a n = A167544 (n + 4)

end A167544

/-! ## A167544.P8444523565614978184

`∑[ogf((-2+3x)/(1-2x+x^2))]`
-/

namespace A167544.P8444523565614978184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167544.P8444523565614978184

namespace A167544

/-- `∑[ogf((-2+3x)/(1-2x+x^2))]` -/
def P8444523565614978184.Spec : Prop :=
  ∀ n, P8444523565614978184.a n = A167544 (n + 4)

end A167544

/-! ## A167544.P9389504341557954968

`ogf((-2+3x)/(1-3x+3x^2-x^3))`
-/

namespace A167544.P9389504341557954968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, 3] [1, -3, 3, -1] n

end

end A167544.P9389504341557954968

namespace A167544

/-- `ogf((-2+3x)/(1-3x+3x^2-x^3))` -/
def P9389504341557954968.Spec : Prop :=
  ∀ n, P9389504341557954968.a n = A167544 (n + 4)

end A167544

/-! ## A167544.P6949734349952388606

`a(n-1)+n-2` with `a(0)=-2`
-/

namespace A167544.P6949734349952388606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n a =>
  a (n - 1) + ((n : ℤ) - 2)

end

end A167544.P6949734349952388606

namespace A167544

/-- `a(n-1)+n-2` -/
def P6949734349952388606.Spec : Prop :=
  ∀ n, P6949734349952388606.a n = A167544 (n + 4)

end A167544

/-! ## A167544.P11197526407977938209

`n-(2-a(n-1))` with `a(0)=-2`
-/

namespace A167544.P11197526407977938209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n a =>
  (n : ℤ) - (2 - a (n - 1))

end

end A167544.P11197526407977938209

namespace A167544

/-- `n-(2-a(n-1))` -/
def P11197526407977938209.Spec : Prop :=
  ∀ n, P11197526407977938209.a n = A167544 (n + 4)

end A167544

/-! ## A167544.P17522913276388003461

`xor(n+1, -1)+C(n, 2)`
-/

namespace A167544.P17522913276388003461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (-1) + (Nat.choose n 2 : ℤ)

end

end A167544.P17522913276388003461

namespace A167544

/-- `xor(n+1, -1)+C(n, 2)` -/
def P17522913276388003461.Spec : Prop :=
  ∀ n, P17522913276388003461.a n = A167544 (n + 4)

end A167544

/-! ## A167544.P1169805352076404674

`-(Δ[-C(n, 3)]+n+2)`
-/

namespace A167544.P1169805352076404674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n + (n + 2 : ℤ))

end

end A167544.P1169805352076404674

namespace A167544

/-- `-(Δ[-C(n, 3)]+n+2)` -/
def P1169805352076404674.Spec : Prop :=
  ∀ n, P1169805352076404674.a n = A167544 (n + 4)

end A167544

/-! ## A167544.P5079052393059214321

`lcm(n-1, n-2)/2-3`
-/

namespace A167544.P5079052393059214321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n : ℤ) - 1) ((n : ℤ) - 2) : ℚ) / 2 - 3

end

end A167544.P5079052393059214321

namespace A167544

/-- `lcm(n-1, n-2)/2-3` -/
def P5079052393059214321.Spec : Prop :=
  ∀ n, P5079052393059214321.a n = (A167544 (n + 4) : ℚ)

end A167544

/-! ## A167544.P7191011913150977458

`-∑[or(1, -(2*n))+n+1]`
-/

namespace A167544.P7191011913150977458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(2 * n : ℤ)) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167544.P7191011913150977458

namespace A167544

/-- `-∑[or(1, -(2*n))+n+1]` -/
def P7191011913150977458.Spec : Prop :=
  ∀ n, P7191011913150977458.a n = A167544 (n + 4)

end A167544

/-! ## A167544.P15618798428747842093

`floor(∑[a(floor(1/(n+1)))+n])` with `a(0)=-2`

`floor` is left out, it is the identity on integers.
-/

namespace A167544.P15618798428747842093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f1 =>
  f1 ⌊1 / (n + 1 : ℚ)⌋.toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167544.P15618798428747842093

namespace A167544

/-- `floor(∑[a(floor(1/(n+1)))+n])` -/
def P15618798428747842093.Spec : Prop :=
  ∀ n, P15618798428747842093.a n = A167544 (n + 4)

end A167544

/-! ## A167544.P10490504550295041278

`∑[n-1-gcd(2, (2*n+1)²²²)]`
-/

namespace A167544.P10490504550295041278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - (Nat.gcd 2 ((((2 * n + 1) ^ 2) ^ 2) ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167544.P10490504550295041278

namespace A167544

/-- `∑[n-1-gcd(2, (2*n+1)²²²)]` -/
def P10490504550295041278.Spec : Prop :=
  ∀ n, P10490504550295041278.a n = A167544 (n + 4)

end A167544

/-! ## A167544.P9223500035731540245

`∑[n-1-and(1, (2*n+1)²²²)]`
-/

namespace A167544.P9223500035731540245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - (Nat.land 1 ((((2 * n + 1) ^ 2) ^ 2) ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167544.P9223500035731540245

namespace A167544

/-- `∑[n-1-and(1, (2*n+1)²²²)]` -/
def P9223500035731540245.Spec : Prop :=
  ∀ n, P9223500035731540245.a n = A167544 (n + 4)

end A167544

/-! ## A167544.P5420158115334381628

`-∑[A022958(n)]`
-/

namespace A167544.P5420158115334381628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167544.P5420158115334381628

namespace A167544

/-- `-∑[A022958(n)]` -/
def P5420158115334381628.Spec : Prop :=
  ∀ n, P5420158115334381628.a n = A167544 (n + 4)

end A167544

/-! ## A167544.P2827557263002658155

`A161680(n)-(n+2)`
-/

namespace A167544.P2827557263002658155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - (n + 2 : ℤ)

end

end A167544.P2827557263002658155

namespace A167544

/-- `A161680(n)-(n+2)` -/
def P2827557263002658155.Spec : Prop :=
  ∀ n, P2827557263002658155.a n = A167544 (n + 4)

end A167544

/-! ## A167544.P4568591460668329287

`n²-(A000096(n)+2)`
-/

namespace A167544.P4568591460668329287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (A000096 n + 2)

end

end A167544.P4568591460668329287

namespace A167544

/-- `n²-(A000096(n)+2)` -/
def P4568591460668329287.Spec : Prop :=
  ∀ n, P4568591460668329287.a n = A167544 (n + 4)

end A167544

/-! ## A167544.P10199912977181755157

`∑[A023445(n)]+n+1`
-/

namespace A167544.P10199912977181755157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A167544.P10199912977181755157

namespace A167544

/-- `∑[A023445(n)]+n+1` -/
def P10199912977181755157.Spec : Prop :=
  ∀ n, P10199912977181755157.a n = A167544 (n + 4)

end A167544

/-!
# A167545: n^6 mod 16.

The programs for A167545, the canonical program `A167545.P2886197806943678046` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167545 has offset 0).

The definition of A167545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167545.P2886197806943678046

`(n^6)%16`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167545

/-- `(n^6)%16` -/
def P2886197806943678046.Spec : Prop :=
  ∀ n, (P2886197806943678046.a n : ℤ) = A167545 n

theorem P2886197806943678046.correct : P2886197806943678046.Spec := by
  intro n
  simp only [A167545]

end A167545

/-!
# A167547: The fourth row of the ED1 array A167546.

The programs for A167547, the canonical program `A167547.P15036643626560397278` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167547 has offset 1).

The definition of A167547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167547.P15036643626560397278

`7*(n+1)^3-7*(n+1)²+14*(n+1)-8`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167547

/-- `7*(n+1)^3-7*(n+1)²+14*(n+1)-8` -/
def P15036643626560397278.Spec : Prop :=
  ∀ n, P15036643626560397278.a n = A167547 (n + 1)

theorem P15036643626560397278.correct : P15036643626560397278.Spec := by
  intro n
  simp only [A167547, Nat.add_sub_cancel]

end A167547

/-! ## A167547.P10015482521800011012

`xor(1, 7*A261893(n))`
-/

namespace A167547.P10015482521800011012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (7 * A261893 n)

end

end A167547.P10015482521800011012

namespace A167547

/-- `xor(1, 7*A261893(n))` -/
def P10015482521800011012.Spec : Prop :=
  ∀ n, P10015482521800011012.a n = A167547 (n + 1)

end A167547

/-! ## A167547.P12193648319980669792

`2*(7*A006000(n)-4)`
-/

namespace A167547.P12193648319980669792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (7 * A006000 n - 4)

end

end A167547.P12193648319980669792

namespace A167547

/-- `2*(7*A006000(n)-4)` -/
def P12193648319980669792.Spec : Prop :=
  ∀ n, P12193648319980669792.a n = A167547 (n + 1)

end A167547

/-! ## A167547.P209506103943501170

`(7*A261893(n)-1)*A010872(3*n+1)`
-/

namespace A167547.P209506103943501170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * A261893 n - 1) * A010872 (3 * n + 1)

end

end A167547.P209506103943501170

namespace A167547

/-- `(7*A261893(n)-1)*A010872(3*n+1)` -/
def P209506103943501170.Spec : Prop :=
  ∀ n, P209506103943501170.a n = A167547 (n + 1)

end A167547

/-! ## A167547.P3756597982415449532

`abs(A033999(A044752(n+1))+7*A261893(n))`
-/

namespace A167547.P3756597982415449532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 (A044752 (n + 1)).toNat + 7 * A261893 n|

end

end A167547.P3756597982415449532

namespace A167547

/-- `abs(A033999(A044752(n+1))+7*A261893(n))` -/
def P3756597982415449532.Spec : Prop :=
  ∀ n, P3756597982415449532.a n = A167547 (n + 1)

end A167547

/-! ## A167547.P9916355347560075753

`(7*A261893(n)-1)*A057427(A000132(n))`
-/

namespace A167547.P9916355347560075753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * A261893 n - 1) * A057427 (A000132 n).toNat

end

end A167547.P9916355347560075753

namespace A167547

/-- `(7*A261893(n)-1)*A057427(A000132(n))` -/
def P9916355347560075753.Spec : Prop :=
  ∀ n, P9916355347560075753.a n = A167547 (n + 1)

end A167547

/-!
# A167548: The fifth row of the ED1 array A167546.

The programs for A167548, the canonical program `A167548.P16758115144050962244` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167548 has offset 1).

The definition of A167548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167548.P16758115144050962244

`9*(n+1)^4-6*(n+1)^3+63*(n+1)²-66*(n+1)+24`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167548

/-- `9*(n+1)^4-6*(n+1)^3+63*(n+1)²-66*(n+1)+24` -/
def P16758115144050962244.Spec : Prop :=
  ∀ n, P16758115144050962244.a n = A167548 (n + 1)

theorem P16758115144050962244.correct : P16758115144050962244.Spec := by
  intro n
  simp only [A167548, Nat.add_sub_cancel]

end A167548

/-! ## A167548.P12322446136663104876

`∑[A008458(A008458(n))*A027689(n)]`
-/

namespace A167548.P12322446136663104876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008458 n).toNat * A027689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167548.P12322446136663104876

namespace A167548

/-- `∑[A008458(A008458(n))*A027689(n)]` -/
def P12322446136663104876.Spec : Prop :=
  ∀ n, P12322446136663104876.a n = A167548 (n + 1)

end A167548

/-!
# A167549: The sixth row of the ED1 array A167546.

The programs for A167549, the canonical program `A167549.P6239530789140258708` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167549 has offset 1).

The definition of A167549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167549.P6239530789140258708

`11*(n+1)^5+209*(n+1)^3-264*(n+1)²+308*(n+1)-144`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167549

/-- `11*(n+1)^5+209*(n+1)^3-264*(n+1)²+308*(n+1)-144` -/
def P6239530789140258708.Spec : Prop :=
  ∀ n, P6239530789140258708.a n = A167549 (n + 1)

theorem P6239530789140258708.correct : P6239530789140258708.Spec := by
  intro n
  simp only [A167549, Nat.add_sub_cancel]

end A167549

/-!
# A167550: The a(n,n+1) diagonal of the ED1 array A167546.

The programs for A167550, there is no canonical definition to state claims against.
-/

/-! ## A167550.P13815418005488624221

`(2*4^n-1)*n!`
-/

namespace A167550.P13815418005488624221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * 4 ^ n : ℤ) - 1) * (Nat.factorial n : ℤ)

end

end A167550.P13815418005488624221

/-! ## A167550.P13812606850601573207

`n!*∑[4*a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A167550.P13812606850601573207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167550.P13812606850601573207

/-! ## A167550.P12302849649157249157

`n!*A083420(n)`
-/

namespace A167550.P12302849649157249157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A083420 n

end

end A167550.P12302849649157249157

/-! ## A167550.P2785307365957433242

`n!*∑[A164908(n)]`
-/

namespace A167550.P2785307365957433242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167550.P2785307365957433242

/-! ## A167550.P928065798956506084

`n!*record[A084181(n)]`
-/

namespace A167550.P928065798956506084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167550.P928065798956506084

/-!
# A167553: The second right hand column of triangle A167552.

The programs for A167553, there is no canonical definition to state claims against.
-/

/-! ## A167553.P4884041336343565242

`A167552(∑[n+2])`
-/

namespace A167553.P4884041336343565242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167552 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167553.P4884041336343565242

/-!
# A167554: The second left hand column of triangle A167552.

The programs for A167554, the canonical program `A167554.P13353759563094023688` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167554 has offset 2).

The definition of A167554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167554.P17577536103236602711

`1/6*(2*(n+2)^3-15*(n+2)²+19*(n+2)-6)`
-/

namespace A167554.P17577536103236602711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * ((2 * (n + 2) ^ 3 : ℤ) - (15 * (n + 2) ^ 2 : ℤ) + (19 * (n + 2) : ℤ) - 6 : ℚ)

end

end A167554.P17577536103236602711

namespace A167554

/-- `1/6*(2*(n+2)^3-15*(n+2)²+19*(n+2)-6)` -/
def P17577536103236602711.Spec : Prop :=
  ∀ n, P17577536103236602711.a n = (A167554 (n + 2) : ℚ)

theorem P17577536103236602711.correct : P17577536103236602711.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A167554, Nat.add_sub_cancel, A167554.P17577536103236602711.a, A167554.P13353759563094023688.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A167554, Nat.add_sub_cancel, A167554.P17577536103236602711.a, A167554.P13353759563094023688.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A167554

/-! ## A167554.P13353759563094023688

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=-2, a(1)=-5, a(2)=-7, a(3)=-6`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167554

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13353759563094023688.Spec : Prop :=
  ∀ n, P13353759563094023688.a n = A167554 (n + 2)

theorem P13353759563094023688.correct : P13353759563094023688.Spec := by
  intro n
  simp only [A167554, Nat.add_sub_cancel]

end A167554

/-! ## A167554.P10908678473445080493

`∑[∑[ogf((-2+3x+x^2)/(1-2x+x^2))]]`
-/

namespace A167554.P10908678473445080493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, 3, 1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167554.P10908678473445080493

namespace A167554

/-- `∑[∑[ogf((-2+3x+x^2)/(1-2x+x^2))]]` -/
def P10908678473445080493.Spec : Prop :=
  ∀ n, P10908678473445080493.a n = A167554 (n + 2)

end A167554

/-! ## A167554.P12775269490151892984

`ogf((-2+3x+x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A167554.P12775269490151892984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, 3, 1] [1, -4, 6, -4, 1] n

end

end A167554.P12775269490151892984

namespace A167554

/-- `ogf((-2+3x+x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P12775269490151892984.Spec : Prop :=
  ∀ n, P12775269490151892984.a n = A167554 (n + 2)

end A167554

/-! ## A167554.P2504720162744106739

`-∑[∑[a(n-1)-2]]` with `a(0)=2, a(1)=1`
-/

namespace A167554.P2504720162744106739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167554.P2504720162744106739

namespace A167554

/-- `-∑[∑[a(n-1)-2]]` -/
def P2504720162744106739.Spec : Prop :=
  ∀ n, P2504720162744106739.a n = A167554 (n + 2)

end A167554

/-! ## A167554.P9488589312762886387

`∑[2*C(n, 2)]-∑[n+2]`
-/

namespace A167554.P9488589312762886387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A167554.P9488589312762886387

namespace A167554

/-- `∑[2*C(n, 2)]-∑[n+2]` -/
def P9488589312762886387.Spec : Prop :=
  ∀ n, P9488589312762886387.a n = A167554 (n + 2)

end A167554

/-! ## A167554.P14950200153463918504

`-∑[n+2-lcm(n, n-1)]`
-/

namespace A167554.P14950200153463918504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167554.P14950200153463918504

namespace A167554

/-- `-∑[n+2-lcm(n, n-1)]` -/
def P14950200153463918504.Spec : Prop :=
  ∀ n, P14950200153463918504.a n = A167554 (n + 2)

end A167554

/-! ## A167554.P1936403543015126464

`floor(∑[∑[a(n-1)+2]])` with `a(0)=-2, a(1)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A167554.P1936403543015126464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2, -1] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167554.P1936403543015126464

namespace A167554

/-- `floor(∑[∑[a(n-1)+2]])` -/
def P1936403543015126464.Spec : Prop :=
  ∀ n, P1936403543015126464.a n = A167554 (n + 2)

end A167554

/-! ## A167554.P649456735575972706

`floor(∑[1-∑[a(n-1)-2]])` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A167554.P649456735575972706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167554.P649456735575972706

namespace A167554

/-- `floor(∑[1-∑[a(n-1)-2]])` -/
def P649456735575972706.Spec : Prop :=
  ∀ n, P649456735575972706.a n = A167554 (n + 2)

end A167554

/-! ## A167554.P5517561335872922085

`(1-n)²+a(n-1)-3` with `a(0)=-2`
-/

namespace A167554.P5517561335872922085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n a =>
  (1 - (n : ℤ)) ^ 2 + (a (n - 1) - 3)

end

end A167554.P5517561335872922085

namespace A167554

/-- `(1-n)²+a(n-1)-3` -/
def P5517561335872922085.Spec : Prop :=
  ∀ n, P5517561335872922085.a n = A167554 (n + 2)

end A167554

/-! ## A167554.P3529184691608742453

`(1-n)²-(3-a(n-1))` with `a(0)=-2`
-/

namespace A167554.P3529184691608742453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n a =>
  (1 - (n : ℤ)) ^ 2 - (3 - a (n - 1))

end

end A167554.P3529184691608742453

namespace A167554

/-- `(1-n)²-(3-a(n-1))` -/
def P3529184691608742453.Spec : Prop :=
  ∀ n, P3529184691608742453.a n = A167554 (n + 2)

end A167554

/-! ## A167554.P14847852797660285861

`∑[∑[a(n-1)+2]]-∑[n]` with `a(0)=-2`
-/

namespace A167554.P14847852797660285861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A167554.P14847852797660285861

namespace A167554

/-- `∑[∑[a(n-1)+2]]-∑[n]` -/
def P14847852797660285861.Spec : Prop :=
  ∀ n, P14847852797660285861.a n = A167554 (n + 2)

end A167554

/-! ## A167554.P2551989035347577961

`C(n+3, 3)-∑[∑[4-n]-1]`
-/

namespace A167554.P2551989035347577961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167554.P2551989035347577961

namespace A167554

/-- `C(n+3, 3)-∑[∑[4-n]-1]` -/
def P2551989035347577961.Spec : Prop :=
  ∀ n, P2551989035347577961.a n = A167554 (n + 2)

end A167554

/-! ## A167554.P6463630318371100279

`1-(∑[∑[a(n-1)-2]]-n)` with `a(0)=3`
-/

namespace A167554.P6463630318371100279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A167554.P6463630318371100279

namespace A167554

/-- `1-(∑[∑[a(n-1)-2]]-n)` -/
def P6463630318371100279.Spec : Prop :=
  ∀ n, P6463630318371100279.a n = A167554 (n + 2)

end A167554

/-! ## A167554.P2328905485095399248

`∑[lcm(2, n*(n-1))]-∑[n+2]`
-/

namespace A167554.P2328905485095399248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n : ℤ) * ((n : ℤ) - 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A167554.P2328905485095399248

namespace A167554

/-- `∑[lcm(2, n*(n-1))]-∑[n+2]` -/
def P2328905485095399248.Spec : Prop :=
  ∀ n, P2328905485095399248.a n = A167554 (n + 2)

end A167554

/-! ## A167554.P2500796278133529123

`a(n-1)-(n*(2-n)+2)` with `a(0)=-2`
-/

namespace A167554.P2500796278133529123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n a =>
  a (n - 1) - ((n : ℤ) * (2 - (n : ℤ)) + 2)

end

end A167554.P2500796278133529123

namespace A167554

/-- `a(n-1)-(n*(2-n)+2)` -/
def P2500796278133529123.Spec : Prop :=
  ∀ n, P2500796278133529123.a n = A167554 (n + 2)

end A167554

/-! ## A167554.P18374213392252114903

`a(n-1)-2-n*(2-n)` with `a(0)=-2`
-/

namespace A167554.P18374213392252114903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n a =>
  a (n - 1) - 2 - (n : ℤ) * (2 - (n : ℤ))

end

end A167554.P18374213392252114903

namespace A167554

/-- `a(n-1)-2-n*(2-n)` -/
def P18374213392252114903.Spec : Prop :=
  ∀ n, P18374213392252114903.a n = A167554 (n + 2)

end A167554

/-! ## A167554.P3100615413478996854

`∑[(n-1)*gcd(n, 2*n)]-∑[n+2]`
-/

namespace A167554.P3100615413478996854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.gcd n (2 * n) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A167554.P3100615413478996854

namespace A167554

/-- `∑[(n-1)*gcd(n, 2*n)]-∑[n+2]` -/
def P3100615413478996854.Spec : Prop :=
  ∀ n, P3100615413478996854.a n = A167554 (n + 2)

end A167554

/-! ## A167554.P7968062298013779058

`∑[A067998(n)-2]`
-/

namespace A167554.P7968062298013779058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167554.P7968062298013779058

namespace A167554

/-- `∑[A067998(n)-2]` -/
def P7968062298013779058.Spec : Prop :=
  ∀ n, P7968062298013779058.a n = A167554 (n + 2)

end A167554

/-! ## A167554.P16976110109471369231

`∑[A160457(n)-4]`
-/

namespace A167554.P16976110109471369231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160457 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167554.P16976110109471369231

namespace A167554

/-- `∑[A160457(n)-4]` -/
def P16976110109471369231.Spec : Prop :=
  ∀ n, P16976110109471369231.a n = A167554 (n + 2)

end A167554

/-!
# A167555: The third left hand column of triangle A167552.

The programs for A167555, the canonical program `A167555.P10787802457163991177` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167555 has offset 3).

The definition of A167555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167555.P10787802457163991177

`∑[∑[A050409(n)+A016789(n)]]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A167555

/-- `∑[∑[A050409(n)+A016789(n)]]` -/
def P10787802457163991177.Spec : Prop :=
  ∀ n, P10787802457163991177.a n = A167555 (n + 3)

theorem P10787802457163991177.correct : P10787802457163991177.Spec := by
  intro n
  simp only [A167555, Nat.add_sub_cancel]

end A167555

/-! ## A167555.P811906265433581224

`∑[∑[A081423(n)+A001845(n)]]`
-/

namespace A167555.P811906265433581224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081423 n + A001845 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167555.P811906265433581224

namespace A167555

/-- `∑[∑[A081423(n)+A001845(n)]]` -/
def P811906265433581224.Spec : Prop :=
  ∀ n, P811906265433581224.a n = A167555 (n + 3)

end A167555

/-! ## A167555.P13512182026285769817

`∑[A014820(n)+∑[A081423(n)]]`
-/

namespace A167555.P13512182026285769817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081423 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167555.P13512182026285769817

namespace A167555

/-- `∑[A014820(n)+∑[A081423(n)]]` -/
def P13512182026285769817.Spec : Prop :=
  ∀ n, P13512182026285769817.a n = A167555 (n + 3)

end A167555

/-! ## A167555.P11957893647144196952

`7*A005585(n+1)-A053126(n+4)`
-/

namespace A167555.P11957893647144196952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A005585 (n + 1) - A053126 (n + 4)

end

end A167555.P11957893647144196952

namespace A167555

/-- `7*A005585(n+1)-A053126(n+4)` -/
def P11957893647144196952.Spec : Prop :=
  ∀ n, P11957893647144196952.a n = A167555 (n + 3)

end A167555

/-! ## A167555.P12982526410437776584

`A085463(n+1)+∑[1-A000330(n)+n]`
-/

namespace A167555.P12982526410437776584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000330 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085463 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167555.P12982526410437776584

namespace A167555

/-- `A085463(n+1)+∑[1-A000330(n)+n]` -/
def P12982526410437776584.Spec : Prop :=
  ∀ n, P12982526410437776584.a n = A167555 (n + 3)

end A167555

/-! ## A167555.P17763334920448871085

`∑[n+1+A037270(n+1)+A002415(n)]`
-/

namespace A167555.P17763334920448871085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A037270 (n + 1) + A002415 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167555.P17763334920448871085

namespace A167555

/-- `∑[n+1+A037270(n+1)+A002415(n)]` -/
def P17763334920448871085.Spec : Prop :=
  ∀ n, P17763334920448871085.a n = A167555 (n + 3)

end A167555

/-!
# A167557: The lower left triangle of the ED1 array A167546.

The programs for A167557, the canonical program `A167557.P8750965983372641011` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167557 has offset 1).

The definition of A167557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167557.P11829708102238557416

`A098361(n)*A373547(n)`
-/

namespace A167557.P11829708102238557416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A373547 n

end

end A167557.P11829708102238557416

namespace A167557

/-- `A098361(n)*A373547(n)` -/
def P11829708102238557416.Spec : Prop :=
  ∀ n, P11829708102238557416.a n = A167557 (n + 1)

theorem P11829708102238557416.correct : P11829708102238557416.Spec := by
  intro n
  simp only [A167557, Nat.add_sub_cancel, A167557.P11829708102238557416.a, A167557.P8750965983372641011.a, A059268, A059268.P15217573790077737885.a, A098361, A098361.P7044536785034610126.a, A123519, A123519.P9169066619420576.a, A373547, A373547.P3360985737469459485.a, A000142, A000142.P3272619076580183195.a, A002262, A002262.P12129691700837801527.a, A018900, A018900.P2868698677378612256.a, A025581, A025581.P420762180635059694.a, A085478, A085478.P12258921806039720689.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A004736, A004736.P10337537277358081527.a, A057944, A057944.P16851463738746886639.a, A061579, A061579.P7462537595056690109.a, A076756, A076756.P16032784192735833623.a, A137688, A137688.P9746695207037186753.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A033999, A033999.P17703899380244199787.a, A054142, A054142.P6369338685803904687.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A167557

/-! ## A167557.P8750965983372641011

`A059268(n)*A098361(n)*A123519(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A167557

/-- `A059268(n)*A098361(n)*A123519(n)` -/
def P8750965983372641011.Spec : Prop :=
  ∀ n, P8750965983372641011.a n = A167557 (n + 1)

theorem P8750965983372641011.correct : P8750965983372641011.Spec := by
  intro n
  simp only [A167557, Nat.add_sub_cancel]

end A167557

/-! ## A167557.P10595683984899046878

`A123519(n)/A001498(n)*A143084(n)`
-/

namespace A167557.P10595683984899046878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123519 n : ℚ) / (A001498 n : ℚ) * (A143084 n : ℚ)

end

end A167557.P10595683984899046878

namespace A167557

/-- `A123519(n)/A001498(n)*A143084(n)` -/
def P10595683984899046878.Spec : Prop :=
  ∀ n, P10595683984899046878.a n = (A167557 (n + 1) : ℚ)

end A167557

/-! ## A167557.P11519002957814212745

`A167546(A245300(n)+1)`
-/

namespace A167557.P11519002957814212745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167546 (A245300 n + 1).toNat

end

end A167557.P11519002957814212745

namespace A167557

/-- `A167546(A245300(n)+1)` -/
def P11519002957814212745.Spec : Prop :=
  ∀ n, P11519002957814212745.a n = A167557 (n + 1)

end A167557

/-!
# A167558: The second right hand column of triangle A167557.

The programs for A167558, the canonical program `A167558.P13085238686273324405` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167558 has offset 2).

The definition of A167558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167558.P13085238686273324405

`4^n*n!*(2*(n+2)-3)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167558

/-- `4^n*n!*(2*(n+2)-3)` -/
def P13085238686273324405.Spec : Prop :=
  ∀ n, P13085238686273324405.a n = A167558 (n + 2)

theorem P13085238686273324405.correct : P13085238686273324405.Spec := by
  intro n
  simp only [A167558, Nat.add_sub_cancel]

end A167558

/-! ## A167558.P16798754944468150645

`4^n*Δ[n²]*n!`
-/

namespace A167558.P16798754944468150645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * (Nat.factorial n : ℤ)

end

end A167558.P16798754944468150645

namespace A167558

/-- `4^n*Δ[n²]*n!` -/
def P16798754944468150645.Spec : Prop :=
  ∀ n, P16798754944468150645.a n = A167558 (n + 2)

theorem P16798754944468150645.correct : P16798754944468150645.Spec := by
  intro n
  simp only [A167558, Nat.add_sub_cancel, A167558.P16798754944468150645.f1, A167558.P16798754944468150645.a, A167558.P13085238686273324405.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A167558

/-! ## A167558.P15277911519309762584

`2^n*Δ[2^n*n!]`
-/

namespace A167558.P15277911519309762584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A167558.P15277911519309762584

namespace A167558

/-- `2^n*Δ[2^n*n!]` -/
def P15277911519309762584.Spec : Prop :=
  ∀ n, P15277911519309762584.a n = A167558 (n + 2)

end A167558

/-! ## A167558.P15985901174633510102

`(2*n+1)*4^n*n!`
-/

namespace A167558.P15985901174633510102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (4 ^ n * Nat.factorial n)

end

end A167558.P15985901174633510102

namespace A167558

/-- `(2*n+1)*4^n*n!` -/
def P15985901174633510102.Spec : Prop :=
  ∀ n, (P15985901174633510102.a n : ℤ) = A167558 (n + 2)

theorem P15985901174633510102.correct : P15985901174633510102.Spec := by
  intro n
  simp only [A167558, Nat.add_sub_cancel, A167558.P15985901174633510102.a, A167558.P13085238686273324405.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A167558

/-! ## A167558.P1810990485676595004

`2^n*Δ[n²]*∏[floor(2/acot(n))]`
-/

namespace A167558.P1810990485676595004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A167558.P1810990485676595004

namespace A167558

/-- `2^n*Δ[n²]*∏[floor(2/acot(n))]` -/
def P1810990485676595004.Spec : Prop :=
  ∀ n, P1810990485676595004.a n = A167558 (n + 2)

end A167558

/-! ## A167558.P13637603280178592302

`(2*n+1)*∏[a(n-1)+4]` with `a(0)=1, a(1)=4`
-/

namespace A167558.P13637603280178592302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A167558.P13637603280178592302

namespace A167558

/-- `(2*n+1)*∏[a(n-1)+4]` -/
def P13637603280178592302.Spec : Prop :=
  ∀ n, (P13637603280178592302.a n : ℤ) = A167558 (n + 2)

end A167558

/-! ## A167558.P9915779914001985011

`(2*n+1)*record[2*n*a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A167558.P9915779914001985011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 * n * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167558.P9915779914001985011

namespace A167558

/-- `(2*n+1)*record[2*n*a(n-2)]` -/
def P9915779914001985011.Spec : Prop :=
  ∀ n, (P9915779914001985011.a n : ℤ) = A167558 (n + 2)

end A167558

/-! ## A167558.P14722368544850164309

`(2*n+1)*∏[floor((2*n+1)²/(n+1))]`
-/

namespace A167558.P14722368544850164309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A167558.P14722368544850164309

namespace A167558

/-- `(2*n+1)*∏[floor((2*n+1)²/(n+1))]` -/
def P14722368544850164309.Spec : Prop :=
  ∀ n, P14722368544850164309.a n = A167558 (n + 2)

end A167558

/-! ## A167558.P1232078009190280103

`A047053(n)+n*A098560(n)`
-/

namespace A167558.P1232078009190280103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047053 n + (n : ℤ) * A098560 n

end

end A167558.P1232078009190280103

namespace A167558

/-- `A047053(n)+n*A098560(n)` -/
def P1232078009190280103.Spec : Prop :=
  ∀ n, P1232078009190280103.a n = A167558 (n + 2)

end A167558

/-! ## A167558.P1767816691794344147

`2*A034177(n+1)-A047053(n)`
-/

namespace A167558.P1767816691794344147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034177 (n + 1) - A047053 n

end

end A167558.P1767816691794344147

namespace A167558

/-- `2*A034177(n+1)-A047053(n)` -/
def P1767816691794344147.Spec : Prop :=
  ∀ n, P1767816691794344147.a n = A167558 (n + 2)

end A167558

/-!
# A167559: The row sums of triangle A167557.

The programs for A167559, there is no canonical definition to state claims against.
-/

/-! ## A167559.P7109512846435455708

`2*A167571(n+1)-A167550(n+1)`
-/

namespace A167559.P7109512846435455708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167571 (n + 1) - A167550 (n + 1)

end

end A167559.P7109512846435455708

/-!
# A167560: The ED2 array read by ascending antidiagonals.

The programs for A167560, there is no canonical definition to state claims against.
-/

/-! ## A167560.P15890389588335391295

`A090238(comp[∑[n]]%A281915(3*n+5))`
-/

namespace A167560.P15890389588335391295
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090238 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A281915 (3 * n + 5))).toNat

end

end A167560.P15890389588335391295

/-! ## A167560.P12460294700055262362

`A090238(lt[A172542(n), A090238(n)])`
-/

namespace A167560.P12460294700055262362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172542 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090238 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A167560.P12460294700055262362

/-! ## A167560.P8727663108619197355

`A090238(A120126(n)+A003057(n+2))`
-/

namespace A167560.P8727663108619197355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090238 (A120126 n + A003057 (n + 2)).toNat

end

end A167560.P8727663108619197355

/-! ## A167560.P2331281059033576273

`A132159(n)-A112765(A006784(n+1))`
-/

namespace A167560.P2331281059033576273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132159 n - A112765 (A006784 (n + 1)).toNat

end

end A167560.P2331281059033576273

/-! ## A167560.P10064149839760790080

`A132159(n)-A018843(A220345(n+1))`
-/

namespace A167560.P10064149839760790080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132159 n - A018843 (A220345 (n + 1)).toNat

end

end A167560.P10064149839760790080

/-!
# A167561: The fourth row of the ED2 array A167560.

The programs for A167561, the canonical program `A167561.P17839987085415951587` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167561 has offset 1).

The definition of A167561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167561.P17839987085415951587

`4*(n+1)^3+4*(n+1)²+16*(n+1)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167561

/-- `4*(n+1)^3+4*(n+1)²+16*(n+1)` -/
def P17839987085415951587.Spec : Prop :=
  ∀ n, (P17839987085415951587.a n : ℤ) = A167561 (n + 1)

theorem P17839987085415951587.correct : P17839987085415951587.Spec := by
  intro n
  simp only [A167561, Nat.add_sub_cancel]

end A167561

/-! ## A167561.P511265697194470361

`∑[∑[a(n-1)+24]]` with `a(0)=24, a(1)=32`
-/

namespace A167561.P511265697194470361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [24, 32] fun n f2 =>
  f2 (n - 1) + 24

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167561.P511265697194470361

namespace A167561

/-- `∑[∑[a(n-1)+24]]` -/
def P511265697194470361.Spec : Prop :=
  ∀ n, (P511265697194470361.a n : ℤ) = A167561 (n + 1)

end A167561

/-! ## A167561.P16193540853066292730

`8*∑[∑[A016777(n)]+2]`
-/

namespace A167561.P16193540853066292730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167561.P16193540853066292730

namespace A167561

/-- `8*∑[∑[A016777(n)]+2]` -/
def P16193540853066292730.Spec : Prop :=
  ∀ n, P16193540853066292730.a n = A167561 (n + 1)

end A167561

/-! ## A167561.P12695845093849063457

`8*(A000217(n+1)+2)*(n+1)`
-/

namespace A167561.P12695845093849063457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * ((A000217 (n + 1) + 2) * (n + 1 : ℤ))

end

end A167561.P12695845093849063457

namespace A167561

/-- `8*(A000217(n+1)+2)*(n+1)` -/
def P12695845093849063457.Spec : Prop :=
  ∀ n, P12695845093849063457.a n = A167561 (n + 1)

theorem P12695845093849063457.correct : P12695845093849063457.Spec := by
  intro n
  simp only [A167561, Nat.add_sub_cancel, A167561.P12695845093849063457.a, A167561.P17839987085415951587.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167561

/-! ## A167561.P5220407014979114670

`(A155966(n+1)+2*(n+1))*2*(n+1)`
-/

namespace A167561.P5220407014979114670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155966 (n + 1) + (2 * (n + 1) : ℤ)) * (2 * (n + 1) : ℤ)

end

end A167561.P5220407014979114670

namespace A167561

/-- `(A155966(n+1)+2*(n+1))*2*(n+1)` -/
def P5220407014979114670.Spec : Prop :=
  ∀ n, P5220407014979114670.a n = A167561 (n + 1)

theorem P5220407014979114670.correct : P5220407014979114670.Spec := by
  intro n
  simp only [A167561, Nat.add_sub_cancel, A167561.P5220407014979114670.a, A167561.P17839987085415951587.a, A155966, A155966.P536139070605951251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167561

/-! ## A167561.P8032017697040779512

`(A000217(n+1)+2)*A022144(n+1)`
-/

namespace A167561.P8032017697040779512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) + 2) * A022144 (n + 1)

end

end A167561.P8032017697040779512

namespace A167561

/-- `(A000217(n+1)+2)*A022144(n+1)` -/
def P8032017697040779512.Spec : Prop :=
  ∀ n, P8032017697040779512.a n = A167561 (n + 1)

end A167561

/-! ## A167561.P12298376972077092496

`Δ[A167548(n+1)/9]`
-/

namespace A167561.P12298376972077092496
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167548 (n + 1) : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167561.P12298376972077092496

namespace A167561

/-- `Δ[A167548(n+1)/9]` -/
def P12298376972077092496.Spec : Prop :=
  ∀ n, P12298376972077092496.a n = (A167561 (n + 1) : ℚ)

theorem P12298376972077092496.correct : P12298376972077092496.Spec := by
  intro n
  simp only [A167561, Nat.add_sub_cancel, A167561.P12298376972077092496.f1, A167561.P12298376972077092496.a, A167561.P17839987085415951587.a, A167548, A167548.P16758115144050962244.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167561

/-! ## A167561.P4781850962447577754

`4*(n+1)*A027689(n+1)`
-/

namespace A167561.P4781850962447577754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) * A027689 (n + 1)

end

end A167561.P4781850962447577754

namespace A167561

/-- `4*(n+1)*A027689(n+1)` -/
def P4781850962447577754.Spec : Prop :=
  ∀ n, P4781850962447577754.a n = A167561 (n + 1)

theorem P4781850962447577754.correct : P4781850962447577754.Spec := by
  intro n
  simp only [A167561, Nat.add_sub_cancel, A167561.P4781850962447577754.a, A167561.P17839987085415951587.a, A027689, A027689.P1842390006618827741.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167561

/-! ## A167561.P10231827319406076011

`8*(n+1)*A133263(n+1)`
-/

namespace A167561.P10231827319406076011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) : ℤ) * A133263 (n + 1)

end

end A167561.P10231827319406076011

namespace A167561

/-- `8*(n+1)*A133263(n+1)` -/
def P10231827319406076011.Spec : Prop :=
  ∀ n, P10231827319406076011.a n = A167561 (n + 1)

end A167561

/-! ## A167561.P1769290078900082920

`(A027688(n+1)+1)*4*(n+1)`
-/

namespace A167561.P1769290078900082920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027688 (n + 1) + 1) * (4 * (n + 1) : ℤ)

end

end A167561.P1769290078900082920

namespace A167561

/-- `(A027688(n+1)+1)*4*(n+1)` -/
def P1769290078900082920.Spec : Prop :=
  ∀ n, P1769290078900082920.a n = A167561 (n + 1)

theorem P1769290078900082920.correct : P1769290078900082920.Spec := by
  intro n
  simp only [A167561, Nat.add_sub_cancel, A167561.P1769290078900082920.a, A167561.P17839987085415951587.a, A027688, A027688.P8661981911705810589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167561

/-! ## A167561.P7240521217486948642

`(A014206(n+1)+2)*4*(n+1)`
-/

namespace A167561.P7240521217486948642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014206 (n + 1) + 2) * (4 * (n + 1) : ℤ)

end

end A167561.P7240521217486948642

namespace A167561

/-- `(A014206(n+1)+2)*4*(n+1)` -/
def P7240521217486948642.Spec : Prop :=
  ∀ n, P7240521217486948642.a n = A167561 (n + 1)

theorem P7240521217486948642.correct : P7240521217486948642.Spec := by
  intro n
  simp only [A167561, Nat.add_sub_cancel, A167561.P7240521217486948642.a, A167561.P17839987085415951587.a, A014206, A014206.P11460808999648819084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167561

/-! ## A167561.P3415482261586247890

`(A000124(n+1)+1)*A008590(n+1)`
-/

namespace A167561.P3415482261586247890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000124 (n + 1) + 1) * A008590 (n + 1)

end

end A167561.P3415482261586247890

namespace A167561

/-- `(A000124(n+1)+1)*A008590(n+1)` -/
def P3415482261586247890.Spec : Prop :=
  ∀ n, P3415482261586247890.a n = A167561 (n + 1)

end A167561

/-! ## A167561.P11883450421543575824

`(A000124(n+1)+1)*A022144(n+1)`
-/

namespace A167561.P11883450421543575824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000124 (n + 1) + 1) * A022144 (n + 1)

end

end A167561.P11883450421543575824

namespace A167561

/-- `(A000124(n+1)+1)*A022144(n+1)` -/
def P11883450421543575824.Spec : Prop :=
  ∀ n, P11883450421543575824.a n = A167561 (n + 1)

end A167561

/-! ## A167561.P780481602850539329

`(A000217(n+1)+2)*A008590(n+1)`
-/

namespace A167561.P780481602850539329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) + 2) * A008590 (n + 1)

end

end A167561.P780481602850539329

namespace A167561

/-- `(A000217(n+1)+2)*A008590(n+1)` -/
def P780481602850539329.Spec : Prop :=
  ∀ n, P780481602850539329.a n = A167561 (n + 1)

theorem P780481602850539329.correct : P780481602850539329.Spec := by
  intro n
  simp only [A167561, Nat.add_sub_cancel, A167561.P780481602850539329.a, A167561.P17839987085415951587.a, A000217, A000217.P10269402890581615239.a, A008590, A008590.P15621076316638553644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167561

/-! ## A167561.P17747808471931984402

`(A253145(n+1)-n)*A022144(n+1)`
-/

namespace A167561.P17747808471931984402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A253145 (n + 1) - (n : ℤ)) * A022144 (n + 1)

end

end A167561.P17747808471931984402

namespace A167561

/-- `(A253145(n+1)-n)*A022144(n+1)` -/
def P17747808471931984402.Spec : Prop :=
  ∀ n, P17747808471931984402.a n = A167561 (n + 1)

end A167561

/-! ## A167561.P7242257502647155749

`(n+1)*A241750(2*n+3)`
-/

namespace A167561.P7242257502647155749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A241750 (2 * n + 3)

end

end A167561.P7242257502647155749

namespace A167561

/-- `(n+1)*A241750(2*n+3)` -/
def P7242257502647155749.Spec : Prop :=
  ∀ n, P7242257502647155749.a n = A167561 (n + 1)

theorem P7242257502647155749.correct : P7242257502647155749.Spec := by
  intro n
  simp only [A167561, Nat.add_sub_cancel, A167561.P7242257502647155749.a, A167561.P17839987085415951587.a, A241750, A241750.P13027902610625093173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167561

/-!
# A167562: The fifth row of the ED2 array A167560.

The programs for A167562, the canonical program `A167562.P14073695348237970453` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167562 has offset 1).

The definition of A167562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167562.P14073695348237970453

`5*(n+1)^4+10*(n+1)^3+67*(n+1)²+14*(n+1)+24`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167562

/-- `5*(n+1)^4+10*(n+1)^3+67*(n+1)²+14*(n+1)+24` -/
def P14073695348237970453.Spec : Prop :=
  ∀ n, (P14073695348237970453.a n : ℤ) = A167562 (n + 1)

theorem P14073695348237970453.correct : P14073695348237970453.Spec := by
  intro n
  simp only [A167562, Nat.add_sub_cancel]

end A167562

/-! ## A167562.P9846314275765717566

`Δ[A167549(n+1)/11]`
-/

namespace A167562.P9846314275765717566
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167549 (n + 1) : ℚ) / 11

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167562.P9846314275765717566

namespace A167562

/-- `Δ[A167549(n+1)/11]` -/
def P9846314275765717566.Spec : Prop :=
  ∀ n, P9846314275765717566.a n = (A167562 (n + 1) : ℚ)

theorem P9846314275765717566.correct : P9846314275765717566.Spec := by
  intro n
  simp only [A167562, Nat.add_sub_cancel, A167562.P9846314275765717566.f1, A167562.P9846314275765717566.a, A167562.P14073695348237970453.a, A167549, A167549.P6239530789140258708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167562

/-!
# A167563: The sixth row of the ED2 array A167560.

The programs for A167563, the canonical program `A167563.P15618612623185197550` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167563 has offset 1).

The definition of A167563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167563.P15618612623185197550

`6*(n+1)^5+20*(n+1)^4+202*(n+1)^3+124*(n+1)²+368*(n+1)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167563

/-- `6*(n+1)^5+20*(n+1)^4+202*(n+1)^3+124*(n+1)²+368*(n+1)` -/
def P15618612623185197550.Spec : Prop :=
  ∀ n, (P15618612623185197550.a n : ℤ) = A167563 (n + 1)

theorem P15618612623185197550.correct : P15618612623185197550.Spec := by
  intro n
  simp only [A167563, Nat.add_sub_cancel]

end A167563

/-!
# A167564: The row sums of the ED2 array A167560 read by antidiagonals.

The programs for A167564, there is no canonical definition to state claims against.
-/

/-! ## A167564.P978732568233418448

`A122852(n)+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A167564.P978732568233418448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122852 n + (n + 1 : ℤ) * a (n - 1)

end

end A167564.P978732568233418448

/-! ## A167564.P10340416169015986151

`A007412((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A167564.P10340416169015986151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007412 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A167564.P10340416169015986151

/-!
# A167566: The third left hand column of triangle A167565.

The programs for A167566, the canonical program `A167566.P3658616145969070422` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167566 has offset 3).

The definition of A167566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167566.P13674393606606898567

`(n+3)*(7*(n+3)^4-30*(n+3)^3+45*(n+3)²-30*(n+3)+8)/120`
-/

namespace A167566.P13674393606606898567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) * ((7 * (n + 3) ^ 4 : ℤ) - (30 * (n + 3) ^ 3 : ℤ) + (45 * (n + 3) ^ 2 : ℤ) - (30 * (n + 3) : ℤ) + 8) : ℚ) / 120

end

end A167566.P13674393606606898567

namespace A167566

/-- `(n+3)*(7*(n+3)^4-30*(n+3)^3+45*(n+3)²-30*(n+3)+8)/120` -/
def P13674393606606898567.Spec : Prop :=
  ∀ n, P13674393606606898567.a n = (A167566 (n + 3) : ℚ)

theorem P13674393606606898567.correct : P13674393606606898567.Spec := by
  intro n
  simp only [A167566, Nat.add_sub_cancel, A167566.P13674393606606898567.a, A167566.P3658616145969070422.a, A000389, A000389.P15450220129395289428.a, A024166, A024166.P6072422221111961718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167566

/-! ## A167566.P3658616145969070422

`A024166(n+1)+A000389(n+5)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A167566

/-- `A024166(n+1)+A000389(n+5)` -/
def P3658616145969070422.Spec : Prop :=
  ∀ n, P3658616145969070422.a n = A167566 (n + 3)

theorem P3658616145969070422.correct : P3658616145969070422.Spec := by
  intro n
  simp only [A167566, Nat.add_sub_cancel]

end A167566

/-! ## A167566.P12937256622551311245

`∑[∑[∑[∑[a(n-1)+7]]]]` with `a(0)=2, a(1)=8`
-/

namespace A167566.P12937256622551311245
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n f4 =>
  f4 (n - 1) + 7

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167566.P12937256622551311245

namespace A167566

/-- `∑[∑[∑[∑[a(n-1)+7]]]]` -/
def P12937256622551311245.Spec : Prop :=
  ∀ n, (P12937256622551311245.a n : ℤ) = A167566 (n + 3)

end A167566

/-! ## A167566.P779996417503749844

`A051877(n)+∑[∑[n+1]]`
-/

namespace A167566.P779996417503749844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051877 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A167566.P779996417503749844

namespace A167566

/-- `A051877(n)+∑[∑[n+1]]` -/
def P779996417503749844.Spec : Prop :=
  ∀ n, P779996417503749844.a n = A167566 (n + 3)

end A167566

/-! ## A167566.P2918022033487293648

`∑[∑[n+1]]+∑[A051740(n)]`
-/

namespace A167566.P2918022033487293648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A167566.P2918022033487293648

namespace A167566

/-- `∑[∑[n+1]]+∑[A051740(n)]` -/
def P2918022033487293648.Spec : Prop :=
  ∀ n, P2918022033487293648.a n = A167566 (n + 3)

end A167566

/-! ## A167566.P10926949826188015948

`A006414(n)+A005585(n+1)`
-/

namespace A167566.P10926949826188015948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006414 n + A005585 (n + 1)

end

end A167566.P10926949826188015948

namespace A167566

/-- `A006414(n)+A005585(n+1)` -/
def P10926949826188015948.Spec : Prop :=
  ∀ n, P10926949826188015948.a n = A167566 (n + 3)

theorem P10926949826188015948.correct : P10926949826188015948.Spec := by
  intro n
  simp only [A167566, Nat.add_sub_cancel, A167566.P10926949826188015948.a, A167566.P3658616145969070422.a, A000389, A000389.P15450220129395289428.a, A005585, A005585.P5066831349655201454.a, A006414, A006414.P3634447629182822101.a, A024166, A024166.P6072422221111961718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167566

/-! ## A167566.P9298405204745386221

`A257199(n+1)+∑[A002419(n+1)]`
-/

namespace A167566.P9298405204745386221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257199 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167566.P9298405204745386221

namespace A167566

/-- `A257199(n+1)+∑[A002419(n+1)]` -/
def P9298405204745386221.Spec : Prop :=
  ∀ n, P9298405204745386221.a n = A167566 (n + 3)

end A167566

/-! ## A167566.P11582990195738839185

`A033455(n+1)+A271663(n)-A051836(n)`
-/

namespace A167566.P11582990195738839185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033455 (n + 1) + (A271663 n - A051836 n)

end

end A167566.P11582990195738839185

namespace A167566

/-- `A033455(n+1)+A271663(n)-A051836(n)` -/
def P11582990195738839185.Spec : Prop :=
  ∀ n, P11582990195738839185.a n = A167566 (n + 3)

end A167566

/-! ## A167566.P16261958031796456963

`∑[∑[A185788(n+2)]]`
-/

namespace A167566.P16261958031796456963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185788 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167566.P16261958031796456963

namespace A167566

/-- `∑[∑[A185788(n+2)]]` -/
def P16261958031796456963.Spec : Prop :=
  ∀ n, P16261958031796456963.a n = A167566 (n + 3)

end A167566

/-! ## A167566.P2287431528732479117

`A033455(n+1)+A051836(n+1)`
-/

namespace A167566.P2287431528732479117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033455 (n + 1) + A051836 (n + 1)

end

end A167566.P2287431528732479117

namespace A167566

/-- `A033455(n+1)+A051836(n+1)` -/
def P2287431528732479117.Spec : Prop :=
  ∀ n, P2287431528732479117.a n = A167566 (n + 3)

end A167566

/-! ## A167566.P7120151659993183398

`A000292(n+1)+∑[∑[A007584(n+1)]]`
-/

namespace A167566.P7120151659993183398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007584 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167566.P7120151659993183398

namespace A167566

/-- `A000292(n+1)+∑[∑[A007584(n+1)]]` -/
def P7120151659993183398.Spec : Prop :=
  ∀ n, P7120151659993183398.a n = A167566 (n + 3)

end A167566

/-! ## A167566.P14473692849615197566

`A024166(n+1)+∑[∑[A000292(n+1)]]`
-/

namespace A167566.P14473692849615197566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024166 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167566.P14473692849615197566

namespace A167566

/-- `A024166(n+1)+∑[∑[A000292(n+1)]]` -/
def P14473692849615197566.Spec : Prop :=
  ∀ n, P14473692849615197566.a n = A167566 (n + 3)

end A167566

/-! ## A167566.P3310593673770067195

`A033455(n+1)+A271662(n+1)-A271663(n+1)`
-/

namespace A167566.P3310593673770067195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033455 (n + 1) + (A271662 (n + 1) - A271663 (n + 1))

end

end A167566.P3310593673770067195

namespace A167566

/-- `A033455(n+1)+A271662(n+1)-A271663(n+1)` -/
def P3310593673770067195.Spec : Prop :=
  ∀ n, P3310593673770067195.a n = A167566 (n + 3)

end A167566

/-! ## A167566.P15979564271587100151

`record[A213553(n+1)+A213551(n+1)]`
-/

namespace A167566.P15979564271587100151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213553 (n + 1) + A213551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167566.P15979564271587100151

namespace A167566

/-- `record[A213553(n+1)+A213551(n+1)]` -/
def P15979564271587100151.Spec : Prop :=
  ∀ n, P15979564271587100151.a n = A167566 (n + 3)

end A167566

/-! ## A167566.P14400279480732408655

`record[A213555(n+1)+A213551(n+1)]`
-/

namespace A167566.P14400279480732408655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213555 (n + 1) + A213551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167566.P14400279480732408655

namespace A167566

/-- `record[A213555(n+1)+A213551(n+1)]` -/
def P14400279480732408655.Spec : Prop :=
  ∀ n, P14400279480732408655.a n = A167566 (n + 3)

end A167566

/-!
# A167567: The fourth left hand column of triangle A167565.

The programs for A167567, there is no canonical definition to state claims against.
-/

/-! ## A167567.P9361601666185208541

`A167565(∑[n+3]+7)`
-/

namespace A167567.P9361601666185208541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167565 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A167567.P9361601666185208541

/-!
# A167569: The lower left triangle of the ED2 array A167560.

The programs for A167569, the canonical program `A167569.P2794290920742679181` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167569 has offset 1).

The definition of A167569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167569.P2794290920742679181

`abs(A053124(n)*A098361(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A167569

/-- `abs(A053124(n)*A098361(n))` -/
def P2794290920742679181.Spec : Prop :=
  ∀ n, P2794290920742679181.a n = A167569 (n + 1)

theorem P2794290920742679181.correct : P2794290920742679181.Spec := by
  intro n
  simp only [A167569, Nat.add_sub_cancel]

end A167569

/-! ## A167569.P995720204731148921

`gcd(A000038(n), A053124(n))*A098361(n)`
-/

namespace A167569.P995720204731148921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A053124 n) : ℤ) * A098361 n

end

end A167569.P995720204731148921

namespace A167569

/-- `gcd(A000038(n), A053124(n))*A098361(n)` -/
def P995720204731148921.Spec : Prop :=
  ∀ n, P995720204731148921.a n = A167569 (n + 1)

end A167569

/-! ## A167569.P8705619642015641640

`lcm(A053124(n)*A098361(n), A014709(n))`
-/

namespace A167569.P8705619642015641640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053124 n * A098361 n) (A014709 n)

end

end A167569.P8705619642015641640

namespace A167569

/-- `lcm(A053124(n)*A098361(n), A014709(n))` -/
def P8705619642015641640.Spec : Prop :=
  ∀ n, (P8705619642015641640.a n : ℤ) = A167569 (n + 1)

end A167569

/-! ## A167569.P12913201197814437165

`lcm(-(A053124(n)*A098361(n)), A242179(n))`
-/

namespace A167569.P12913201197814437165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-(A053124 n * A098361 n)) (A242179 n)

end

end A167569.P12913201197814437165

namespace A167569

/-- `lcm(-(A053124(n)*A098361(n)), A242179(n))` -/
def P12913201197814437165.Spec : Prop :=
  ∀ n, (P12913201197814437165.a n : ℤ) = A167569 (n + 1)

end A167569

/-!
# A167570: The third right hand column of triangle A167569.

The programs for A167570, the canonical program `A167570.P18012628081303430096` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167570 has offset 3).

The definition of A167570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167570.P18012628081303430096

`4^n*n!*(2*(n+3)-3)!/(2*(n+3)-5)!`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167570

/-- `4^n*n!*(2*(n+3)-3)!/(2*(n+3)-5)!` -/
def P18012628081303430096.Spec : Prop :=
  ∀ n, P18012628081303430096.a n = (A167570 (n + 3) : ℚ)

end A167570

/-! ## A167570.P10209947676163481400

`Δ[4^n*(n+1)!]-∏[4*(n+1)]/4`
-/

namespace A167570.P10209947676163481400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * Nat.factorial (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) - ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 4

end

end A167570.P10209947676163481400

namespace A167570

/-- `Δ[4^n*(n+1)!]-∏[4*(n+1)]/4` -/
def P10209947676163481400.Spec : Prop :=
  ∀ n, P10209947676163481400.a n = (A167570 (n + 3) : ℚ)

end A167570

/-! ## A167570.P9809342757113977821

`Δ[(n+1)!/4^-n]-4^n*(n+1)!`
-/

namespace A167570.P9809342757113977821
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (4 : ℚ) ^ (-(n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (4 ^ n * Nat.factorial (n + 1) : ℚ)

end

end A167570.P9809342757113977821

namespace A167570

/-- `Δ[(n+1)!/4^-n]-4^n*(n+1)!` -/
def P9809342757113977821.Spec : Prop :=
  ∀ n, P9809342757113977821.a n = (A167570 (n + 3) : ℚ)

end A167570

/-! ## A167570.P17361772138330021659

`Δ[(n+1)!/4^-n]-(n+1)!/4^-n`
-/

namespace A167570.P17361772138330021659
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (4 : ℚ) ^ (-(n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Nat.factorial (n + 1) : ℚ) / (4 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A167570.P17361772138330021659

namespace A167570

/-- `Δ[(n+1)!/4^-n]-(n+1)!/4^-n` -/
def P17361772138330021659.Spec : Prop :=
  ∀ n, P17361772138330021659.a n = (A167570 (n + 3) : ℚ)

end A167570

/-! ## A167570.P5609442526677505629

`A167558(n+3)/2`
-/

namespace A167570.P5609442526677505629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167558 (n + 3) : ℚ) / 2

end

end A167570.P5609442526677505629

namespace A167570

/-- `A167558(n+3)/2` -/
def P5609442526677505629.Spec : Prop :=
  ∀ n, P5609442526677505629.a n = (A167570 (n + 3) : ℚ)

end A167570

/-! ## A167570.P12320763923689715169

`n!*A001788(2*(n+1))`
-/

namespace A167570.P12320763923689715169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001788 (2 * (n + 1))

end

end A167570.P12320763923689715169

namespace A167570

/-- `n!*A001788(2*(n+1))` -/
def P12320763923689715169.Spec : Prop :=
  ∀ n, P12320763923689715169.a n = A167570 (n + 3)

end A167570

/-! ## A167570.P11714611898505712395

`2^n*Δ[A000165(n+1)]`
-/

namespace A167570.P11714611898505712395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A167570.P11714611898505712395

namespace A167570

/-- `2^n*Δ[A000165(n+1)]` -/
def P11714611898505712395.Spec : Prop :=
  ∀ n, P11714611898505712395.a n = A167570 (n + 3)

end A167570

/-! ## A167570.P13405083247090409258

`(4*n+6)*A034177(n+1)`
-/

namespace A167570.P13405083247090409258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 6 : ℤ) * A034177 (n + 1)

end

end A167570.P13405083247090409258

namespace A167570

/-- `(4*n+6)*A034177(n+1)` -/
def P13405083247090409258.Spec : Prop :=
  ∀ n, P13405083247090409258.a n = A167570 (n + 3)

end A167570

/-! ## A167570.P2884955460277040996

`Δ[∏[2*(n+1)]]*A000079(n)`
-/

namespace A167570.P2884955460277040996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000079 n

end

end A167570.P2884955460277040996

namespace A167570

/-- `Δ[∏[2*(n+1)]]*A000079(n)` -/
def P2884955460277040996.Spec : Prop :=
  ∀ n, P2884955460277040996.a n = A167570 (n + 3)

end A167570

/-! ## A167570.P11035346657177046000

`A004273(n+2)*A051711(n+1)`
-/

namespace A167570.P11035346657177046000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 2) * A051711 (n + 1)

end

end A167570.P11035346657177046000

namespace A167570

/-- `A004273(n+2)*A051711(n+1)` -/
def P11035346657177046000.Spec : Prop :=
  ∀ n, P11035346657177046000.a n = A167570 (n + 3)

end A167570

/-!
# A167571: The row sums of triangle A167569.

The programs for A167571, the canonical program `A167571.P18311400864972930186` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167571 has offset 1).

The definition of A167571 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167571.P18311400864972930186

`(n+1)!*(4^(n+1)-1)/(2*(n+1)+1)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167571

/-- `(n+1)!*(4^(n+1)-1)/(2*(n+1)+1)` -/
def P18311400864972930186.Spec : Prop :=
  ∀ n, P18311400864972930186.a n = (A167571 (n + 1) : ℚ)

end A167571

/-! ## A167571.P10260181472105733836

`A047053(n)+A167558(n+2)%A167559(n+1)`
-/

namespace A167571.P10260181472105733836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047053 n + Int.tmod (A167558 (n + 2)) (A167559 (n + 1))

end

end A167571.P10260181472105733836

namespace A167571

/-- `A047053(n)+A167558(n+2)%A167559(n+1)` -/
def P10260181472105733836.Spec : Prop :=
  ∀ n, P10260181472105733836.a n = A167571 (n + 1)

end A167571

/-! ## A167571.P9829958965581318100

`(A167559(n+1)+A167550(n+1))/2`
-/

namespace A167571.P9829958965581318100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167559 (n + 1) + A167550 (n + 1) : ℚ) / 2

end

end A167571.P9829958965581318100

namespace A167571

/-- `(A167559(n+1)+A167550(n+1))/2` -/
def P9829958965581318100.Spec : Prop :=
  ∀ n, P9829958965581318100.a n = (A167571 (n + 1) : ℚ)

end A167571

/-!
# A167572: The ED3 array read by antidiagonals.

The programs for A167572, there is no canonical definition to state claims against.
-/

/-! ## A167572.P10724113679458776267

`A273377(A396559(n))`
-/

namespace A167572.P10724113679458776267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273377 (A396559 n).toNat

end

end A167572.P10724113679458776267

/-! ## A167572.P16662888050877823080

`A273377(A308704(n+2))`
-/

namespace A167572.P16662888050877823080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273377 (A308704 (n + 2)).toNat

end

end A167572.P16662888050877823080

/-!
# A167573: a(n) = 20*n^2 + 3.

The programs for A167573, the canonical program `A167573.P7492904095347879007` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167573 has offset 1).

The definition of A167573 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*(n+1)²+3` (program `A167573.P7492904095347879007`, by `A167573.P7492904095347879007.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167573.P7492904095347879007

`20*(n+1)²+3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167573

/-- `20*(n+1)²+3` -/
def P7492904095347879007.Spec : Prop :=
  ∀ n, (P7492904095347879007.a n : ℤ) = A167573 (n + 1)

theorem P7492904095347879007.correct : P7492904095347879007.Spec := by
  intro n
  simp only [A167573, Nat.add_sub_cancel]

end A167573

/-! ## A167573.P11213780224182417076

`or(3, 10*∑[a(n-1)+4])` with `a(0)=2`
-/

namespace A167573.P11213780224182417076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (10 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A167573.P11213780224182417076

namespace A167573

/-- `or(3, 10*∑[a(n-1)+4])` -/
def P11213780224182417076.Spec : Prop :=
  ∀ n, (P11213780224182417076.a n : ℤ) = A167573 (n + 1)

end A167573

/-! ## A167573.P10955405193227444766

`xor(2, (n+1)*20*(n+1)+1)`
-/

namespace A167573.P10955405193227444766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 ((n + 1) * (20 * (n + 1)) + 1)

end

end A167573.P10955405193227444766

namespace A167573

/-- `xor(2, (n+1)*20*(n+1)+1)` -/
def P10955405193227444766.Spec : Prop :=
  ∀ n, (P10955405193227444766.a n : ℤ) = A167573 (n + 1)

end A167573

/-! ## A167573.P2301313770495388408

`or(3, Δ[A188050(n)])`
-/

namespace A167573.P2301313770495388408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (f1 (n + 1) - f1 n)

end

end A167573.P2301313770495388408

namespace A167573

/-- `or(3, Δ[A188050(n)])` -/
def P2301313770495388408.Spec : Prop :=
  ∀ n, P2301313770495388408.a n = A167573 (n + 1)

end A167573

/-! ## A167573.P10198845613194318014

`or(2, A158493(n+1))`
-/

namespace A167573.P10198845613194318014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A158493 (n + 1))

end

end A167573.P10198845613194318014

namespace A167573

/-- `or(2, A158493(n+1))` -/
def P10198845613194318014.Spec : Prop :=
  ∀ n, P10198845613194318014.a n = A167573 (n + 1)

end A167573

/-! ## A167573.P10072415040925719089

`or(3, A195322(n+1))`
-/

namespace A167573.P10072415040925719089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A195322 (n + 1))

end

end A167573.P10072415040925719089

namespace A167573

/-- `or(3, A195322(n+1))` -/
def P10072415040925719089.Spec : Prop :=
  ∀ n, P10072415040925719089.a n = A167573 (n + 1)

end A167573

/-! ## A167573.P102610750262633104

`or(2, A158491(n+1)+2)`
-/

namespace A167573.P102610750262633104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A158491 (n + 1) + 2)

end

end A167573.P102610750262633104

namespace A167573

/-- `or(2, A158491(n+1)+2)` -/
def P102610750262633104.Spec : Prop :=
  ∀ n, P102610750262633104.a n = A167573 (n + 1)

end A167573

/-! ## A167573.P14538732267457889927

`abs(A136017(n+1)-A158443(n+1))`
-/

namespace A167573.P14538732267457889927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A136017 (n + 1) - A158443 (n + 1)|

end

end A167573.P14538732267457889927

namespace A167573

/-- `abs(A136017(n+1)-A158443(n+1))` -/
def P14538732267457889927.Spec : Prop :=
  ∀ n, P14538732267457889927.a n = A167573 (n + 1)

end A167573

/-! ## A167573.P16173728247600218428

`or(1, A010010(n+1))`
-/

namespace A167573.P16173728247600218428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A010010 (n + 1))

end

end A167573.P16173728247600218428

namespace A167573

/-- `or(1, A010010(n+1))` -/
def P16173728247600218428.Spec : Prop :=
  ∀ n, P16173728247600218428.a n = A167573 (n + 1)

end A167573

/-! ## A167573.P8929997490372136623

`or(2, Δ[A095265(n+1)])`
-/

namespace A167573.P8929997490372136623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (n + 1) - f1 n)

end

end A167573.P8929997490372136623

namespace A167573

/-- `or(2, Δ[A095265(n+1)])` -/
def P8929997490372136623.Spec : Prop :=
  ∀ n, P8929997490372136623.a n = A167573 (n + 1)

end A167573

/-! ## A167573.P15303306239466454394

`or(2, A134538(2*(n+1))+2)`
-/

namespace A167573.P15303306239466454394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A134538 (2 * (n + 1)) + 2)

end

end A167573.P15303306239466454394

namespace A167573

/-- `or(2, A134538(2*(n+1))+2)` -/
def P15303306239466454394.Spec : Prop :=
  ∀ n, P15303306239466454394.a n = A167573 (n + 1)

end A167573

/-! ## A167573.P14200808158179507305

`or(1, A009925(2*(n+1)))`
-/

namespace A167573.P14200808158179507305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009925 (2 * (n + 1)))

end

end A167573.P14200808158179507305

namespace A167573

/-- `or(1, A009925(2*(n+1)))` -/
def P14200808158179507305.Spec : Prop :=
  ∀ n, P14200808158179507305.a n = A167573 (n + 1)

end A167573

/-! ## A167573.P5259339890854933284

`or(1, A010001(2*(n+1)))`
-/

namespace A167573.P5259339890854933284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A010001 (2 * (n + 1)))

end

end A167573.P5259339890854933284

namespace A167573

/-- `or(1, A010001(2*(n+1)))` -/
def P5259339890854933284.Spec : Prop :=
  ∀ n, P5259339890854933284.a n = A167573 (n + 1)

end A167573

/-! ## A167573.P2793434577278275015

`or(3, A033429(2*(n+1)))`
-/

namespace A167573.P2793434577278275015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A033429 (2 * (n + 1)))

end

end A167573.P2793434577278275015

namespace A167573

/-- `or(3, A033429(2*(n+1)))` -/
def P2793434577278275015.Spec : Prop :=
  ∀ n, P2793434577278275015.a n = A167573 (n + 1)

end A167573

/-! ## A167573.P9270724103062259017

`abs(A005901(2*(n+1))-A158491(n+1))`
-/

namespace A167573.P9270724103062259017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005901 (2 * (n + 1)) - A158491 (n + 1)|

end

end A167573.P9270724103062259017

namespace A167573

/-- `abs(A005901(2*(n+1))-A158491(n+1))` -/
def P9270724103062259017.Spec : Prop :=
  ∀ n, P9270724103062259017.a n = A167573 (n + 1)

end A167573

/-! ## A167573.P8663177772702447754

`∑[A374933(5*(n+1))]`
-/

namespace A167573.P8663177772702447754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374933 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167573.P8663177772702447754

namespace A167573

/-- `∑[A374933(5*(n+1))]` -/
def P8663177772702447754.Spec : Prop :=
  ∀ n, P8663177772702447754.a n = A167573 (n + 1)

end A167573

/-!
# A167574: The fourth row of the ED3 array A167572.

The programs for A167574, the canonical program `A167574.P4915410304721419437` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167574 has offset 1).

The definition of A167574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167574.P4915410304721419437

`56*(n+1)^3+28*(n+1)²+98*(n+1)-15`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167574

/-- `56*(n+1)^3+28*(n+1)²+98*(n+1)-15` -/
def P4915410304721419437.Spec : Prop :=
  ∀ n, P4915410304721419437.a n = A167574 (n + 1)

theorem P4915410304721419437.correct : P4915410304721419437.Spec := by
  intro n
  simp only [A167574, Nat.add_sub_cancel]

end A167574

/-! ## A167574.P7693788699057632578

`A167572(∑[n+4]+3)`
-/

namespace A167574.P7693788699057632578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167572 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A167574.P7693788699057632578

namespace A167574

/-- `A167572(∑[n+4]+3)` -/
def P7693788699057632578.Spec : Prop :=
  ∀ n, P7693788699057632578.a n = A167574 (n + 1)

end A167574

/-!
# A167575: The fifth row of the ED3 array A167572.

The programs for A167575, there is no canonical definition to state claims against.
-/

/-! ## A167575.P10686611519705113728

`A167572(∑[n+5]+6)`
-/

namespace A167575.P10686611519705113728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167572 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A167575.P10686611519705113728

/-!
# A167576: The first column of the ED3 array A167572.

The programs for A167576, the canonical program `A167576.P17379557074463137299` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167576 has offset 1).

The definition of A167576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167576.P17379557074463137299

`4*a(n-1)+(4*(n+1)²-16*(n+1)+15)*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167576

/-- `4*a(n-1)+(4*(n+1)²-16*(n+1)+15)*a(n-2)` -/
def P17379557074463137299.Spec : Prop :=
  ∀ n, P17379557074463137299.a n = A167576 (n + 1)

theorem P17379557074463137299.correct : P17379557074463137299.Spec := by
  intro n
  simp only [A167576, Nat.add_sub_cancel]

end A167576

/-! ## A167576.P4128826404472023252

`A024199(n+1)+A135457(n+1)`
-/

namespace A167576.P4128826404472023252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024199 (n + 1) + A135457 (n + 1)

end

end A167576.P4128826404472023252

namespace A167576

/-- `A024199(n+1)+A135457(n+1)` -/
def P4128826404472023252.Spec : Prop :=
  ∀ n, P4128826404472023252.a n = A167576 (n + 1)

theorem P4128826404472023252.correct : P4128826404472023252.Spec := by
  intro n
  simp only [A167576, Nat.add_sub_cancel, A167576.P4128826404472023252.a, A167576.P17379557074463137299.a, A024199, A024199.P15482529585792424584.a, A135457, A135457.P2333704604305967900.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167576

/-! ## A167576.P10384490113308369777

`A126115(n)+2*A143165(n)`
-/

namespace A167576.P10384490113308369777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126115 n + 2 * A143165 n

end

end A167576.P10384490113308369777

namespace A167576

/-- `A126115(n)+2*A143165(n)` -/
def P10384490113308369777.Spec : Prop :=
  ∀ n, P10384490113308369777.a n = A167576 (n + 1)

end A167576

/-! ## A167576.P4306550718086594543

`A135457(n+1)+A143165(n)+A003148(n)`
-/

namespace A167576.P4306550718086594543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135457 (n + 1) + (A143165 n + A003148 n)

end

end A167576.P4306550718086594543

namespace A167576

/-- `A135457(n+1)+A143165(n)+A003148(n)` -/
def P4306550718086594543.Spec : Prop :=
  ∀ n, P4306550718086594543.a n = A167576 (n + 1)

end A167576

/-! ## A167576.P12943343508306858357

`A135457(n+1)+record[A167584(n+1)]`
-/

namespace A167576.P12943343508306858357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135457 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167576.P12943343508306858357

namespace A167576

/-- `A135457(n+1)+record[A167584(n+1)]` -/
def P12943343508306858357.Spec : Prop :=
  ∀ n, P12943343508306858357.a n = A167576 (n + 1)

end A167576

/-! ## A167576.P7348960153569784985

`A167584(A000124(n))+A135457(n+1)`
-/

namespace A167576.P7348960153569784985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167584 (A000124 n).toNat + A135457 (n + 1)

end

end A167576.P7348960153569784985

namespace A167576

/-- `A167584(A000124(n))+A135457(n+1)` -/
def P7348960153569784985.Spec : Prop :=
  ∀ n, P7348960153569784985.a n = A167576 (n + 1)

end A167576

/-!
# A167577: The second column of the ED3 array A167572.

The programs for A167577, there is no canonical definition to state claims against.
-/

/-! ## A167577.P9310799154030677046

`2*A167588(n+1)-∏[3-2*n]/3`
-/

namespace A167577.P9310799154030677046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (2 * n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A167588 (n + 1) : ℚ) - ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A167577.P9310799154030677046

/-! ## A167577.P14208836908704469243

`A167572(∑[n+1]+2)`
-/

namespace A167577.P14208836908704469243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167572 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A167577.P14208836908704469243

/-! ## A167577.P562028807373272007

`record[A167572(A080036(n))]`
-/

namespace A167577.P562028807373272007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167572 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167577.P562028807373272007

/-! ## A167577.P11693814058585878670

`record[A167572(A014132(n+1)+1)]`
-/

namespace A167577.P11693814058585878670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167572 (A014132 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167577.P11693814058585878670

/-!
# A167578: The third column of the ED3 array A167572.

The programs for A167578, there is no canonical definition to state claims against.
-/

/-! ## A167578.P9996808920045121192

`A167572(∑[n+2]+4)`
-/

namespace A167578.P9996808920045121192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167572 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A167578.P9996808920045121192

/-! ## A167578.P18002338455725732330

`or(1, A167572(A167614(n+1)))`
-/

namespace A167578.P18002338455725732330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A167572 (A167614 (n + 1)).toNat)

end

end A167578.P18002338455725732330

/-! ## A167578.P11670673599487437224

`record[A167572(A181732(2*n+3))]`
-/

namespace A167578.P11670673599487437224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167572 (A181732 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167578.P11670673599487437224

/-!
# A167579: The row sums of the ED3 array A167572 read by antidiagonals.

The programs for A167579, there is no canonical definition to state claims against.
-/

/-! ## A167579.P14702198495133413429

`or(n+1, A007401(A361842(n)))`
-/

namespace A167579.P14702198495133413429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A007401 (A361842 n).toNat)

end

end A167579.P14702198495133413429

/-!
# A167581: The second left hand column of triangle A167580.

The programs for A167581, the canonical program `A167581.P6641125882057340657` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167581 has offset 2).

The definition of A167581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167581.P6641125882057340657

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=-1, a(1)=0, a(2)=28, a(3)=192`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167581

/-- `8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P6641125882057340657.Spec : Prop :=
  ∀ n, P6641125882057340657.a n = A167581 (n + 2)

theorem P6641125882057340657.correct : P6641125882057340657.Spec := by
  intro n
  simp only [A167581, Nat.add_sub_cancel]

end A167581

/-! ## A167581.P17229213972095870744

`2^(n+2)*(2*(n+2)^3-9*(n+2)²+10*(n+2)-3)/12`
-/

namespace A167581.P17229213972095870744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 2) : ℤ) * ((2 * (n + 2) ^ 3 : ℤ) - (9 * (n + 2) ^ 2 : ℤ) + (10 * (n + 2) : ℤ) - 3) : ℚ) / 12

end

end A167581.P17229213972095870744

namespace A167581

/-- `2^(n+2)*(2*(n+2)^3-9*(n+2)²+10*(n+2)-3)/12` -/
def P17229213972095870744.Spec : Prop :=
  ∀ n, P17229213972095870744.a n = (A167581 (n + 2) : ℚ)

theorem P17229213972095870744.correct : P17229213972095870744.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A167581, Nat.add_sub_cancel, A167581.P17229213972095870744.a, A167581.P6641125882057340657.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A167581, Nat.add_sub_cancel, A167581.P17229213972095870744.a, A167581.P6641125882057340657.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A167581

/-! ## A167581.P4276762381936637672

`2^n*n^3-(2^n+2^(n+1)*C(n, 3))`
-/

namespace A167581.P4276762381936637672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n * n ^ 3 : ℤ) - (2 ^ n + 2 ^ (n + 1) * Nat.choose n 3 : ℤ)

end

end A167581.P4276762381936637672

namespace A167581

/-- `2^n*n^3-(2^n+2^(n+1)*C(n, 3))` -/
def P4276762381936637672.Spec : Prop :=
  ∀ n, P4276762381936637672.a n = A167581 (n + 2)

end A167581

/-! ## A167581.P8288878582704825382

`2^n*A146298(n+1)`
-/

namespace A167581.P8288878582704825382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A146298 (n + 1)

end

end A167581.P8288878582704825382

namespace A167581

/-- `2^n*A146298(n+1)` -/
def P8288878582704825382.Spec : Prop :=
  ∀ n, P8288878582704825382.a n = A167581 (n + 2)

end A167581

/-! ## A167581.P5086192025890148962

`n*∑[A136530(n)]-A001794(n)`
-/

namespace A167581.P5086192025890148962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - A001794 n

end

end A167581.P5086192025890148962

namespace A167581

/-- `n*∑[A136530(n)]-A001794(n)` -/
def P5086192025890148962.Spec : Prop :=
  ∀ n, P5086192025890148962.a n = A167581 (n + 2)

end A167581

/-!
# A167582: The third left hand column of triangle A167580.

The programs for A167582, there is no canonical definition to state claims against.
-/

/-! ## A167582.P10683774256650211955

`A167580(∑[n+2]+4)`
-/

namespace A167582.P10683774256650211955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167580 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A167582.P10683774256650211955

/-! ## A167582.P2988872249705063502

`abs(A167580(A167614(n+1)))`
-/

namespace A167582.P2988872249705063502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167580 (A167614 (n + 1)).toNat|

end

end A167582.P2988872249705063502

/-! ## A167582.P3917029221657875783

`A167580(A167614(n+1))+A011738(n)`
-/

namespace A167582.P3917029221657875783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167580 (A167614 (n + 1)).toNat + A011738 n

end

end A167582.P3917029221657875783

/-!
# A167585: a(n) = 12*n^2 - 8*n + 9.

The programs for A167585, the canonical program `A167585.P8051939130285331233` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167585 has offset 1).

The definition of A167585 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*(n+1)²-8*(n+1)+9` (program `A167585.P8051939130285331233`, by `A167585.P8051939130285331233.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167585.P5739900533487150758

`a(n-1)+24*(n+1)-20` with `a(0)=13`
-/

namespace A167585.P5739900533487150758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  a (n - 1) + (24 * (n + 1) : ℤ) - 20

end

end A167585.P5739900533487150758

namespace A167585

/-- `a(n-1)+24*(n+1)-20` -/
def P5739900533487150758.Spec : Prop :=
  ∀ n, P5739900533487150758.a n = A167585 (n + 1)

theorem P5739900533487150758.correct : P5739900533487150758.Spec := by
  intro n
  induction n with
  | zero => simp [A167585, A167585.P5739900533487150758.a, A167585.P8051939130285331233.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A167585, Nat.add_sub_cancel, A167585.P5739900533487150758.a, A167585.P8051939130285331233.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A167585

/-! ## A167585.P8051939130285331233

`12*(n+1)²-8*(n+1)+9`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167585

/-- `12*(n+1)²-8*(n+1)+9` -/
def P8051939130285331233.Spec : Prop :=
  ∀ n, P8051939130285331233.a n = A167585 (n + 1)

theorem P8051939130285331233.correct : P8051939130285331233.Spec := by
  intro n
  simp only [A167585, Nat.add_sub_cancel]

end A167585

/-! ## A167585.P15212700825566329001

`∑[a(n-1)+24]` with `a(0)=13, a(1)=28`
-/

namespace A167585.P15212700825566329001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13, 28] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167585.P15212700825566329001

namespace A167585

/-- `∑[a(n-1)+24]` -/
def P15212700825566329001.Spec : Prop :=
  ∀ n, (P15212700825566329001.a n : ℤ) = A167585 (n + 1)

end A167585

/-! ## A167585.P1421602081340266445

`or(9, (2*n+1)*A016969(n))`
-/

namespace A167585.P1421602081340266445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 9 ((2 * n + 1 : ℤ) * A016969 n)

end

end A167585.P1421602081340266445

namespace A167585

/-- `or(9, (2*n+1)*A016969(n))` -/
def P1421602081340266445.Spec : Prop :=
  ∀ n, P1421602081340266445.a n = A167585 (n + 1)

end A167585

/-! ## A167585.P13415427731057992305

`xor(9, 4*(n+1)*A016777(n))`
-/

namespace A167585.P13415427731057992305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 (4 * ((n + 1 : ℤ) * A016777 n))

end

end A167585.P13415427731057992305

namespace A167585

/-- `xor(9, 4*(n+1)*A016777(n))` -/
def P13415427731057992305.Spec : Prop :=
  ∀ n, P13415427731057992305.a n = A167585 (n + 1)

end A167585

/-! ## A167585.P8751986246117504531

`xor(10, Δ[A110451(n)])`
-/

namespace A167585.P8751986246117504531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 10 (f1 (n + 1) - f1 n)

end

end A167585.P8751986246117504531

namespace A167585

/-- `xor(10, Δ[A110451(n)])` -/
def P8751986246117504531.Spec : Prop :=
  ∀ n, P8751986246117504531.a n = A167585 (n + 1)

end A167585

/-! ## A167585.P17988930507155856519

`xor(8, A185212(n+1))`
-/

namespace A167585.P17988930507155856519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A185212 (n + 1))

end

end A167585.P17988930507155856519

namespace A167585

/-- `xor(8, A185212(n+1))` -/
def P17988930507155856519.Spec : Prop :=
  ∀ n, P17988930507155856519.a n = A167585 (n + 1)

end A167585

/-! ## A167585.P2914218578695551511

`Δ[Δ[n²²]-A001107(n)]`
-/

namespace A167585.P2914218578695551511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A001107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167585.P2914218578695551511

namespace A167585

/-- `Δ[Δ[n²²]-A001107(n)]` -/
def P2914218578695551511.Spec : Prop :=
  ∀ n, P2914218578695551511.a n = A167585 (n + 1)

theorem P2914218578695551511.correct : P2914218578695551511.Spec := by
  intro n
  simp only [A167585, Nat.add_sub_cancel, A167585.P2914218578695551511.f2, A167585.P2914218578695551511.f1, A167585.P2914218578695551511.a, A167585.P8051939130285331233.a, A001107, A001107.P15766833630772781234.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167585

/-! ## A167585.P3840965930741497619

`or(8, A045944(2*n+1))`
-/

namespace A167585.P3840965930741497619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 8 (A045944 (2 * n + 1))

end

end A167585.P3840965930741497619

namespace A167585

/-- `or(8, A045944(2*n+1))` -/
def P3840965930741497619.Spec : Prop :=
  ∀ n, P3840965930741497619.a n = A167585 (n + 1)

end A167585

/-! ## A167585.P12051380772616227776

`xor(8, A270710(2*n+1)+1)`
-/

namespace A167585.P12051380772616227776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A270710 (2 * n + 1) + 1)

end

end A167585.P12051380772616227776

namespace A167585

/-- `xor(8, A270710(2*n+1)+1)` -/
def P12051380772616227776.Spec : Prop :=
  ∀ n, P12051380772616227776.a n = A167585 (n + 1)

end A167585

/-! ## A167585.P2993938569747827973

`Δ[n*A027692(2*n)]`
-/

namespace A167585.P2993938569747827973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A027692 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167585.P2993938569747827973

namespace A167585

/-- `Δ[n*A027692(2*n)]` -/
def P2993938569747827973.Spec : Prop :=
  ∀ n, P2993938569747827973.a n = A167585 (n + 1)

theorem P2993938569747827973.correct : P2993938569747827973.Spec := by
  intro n
  simp only [A167585, Nat.add_sub_cancel, A167585.P2993938569747827973.f1, A167585.P2993938569747827973.a, A167585.P8051939130285331233.a, A027692, A027692.P12934424659793957535.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167585

/-! ## A167585.P3737910859326055866

`or(9, A032765(A016945(n)))`
-/

namespace A167585.P3737910859326055866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 9 (A032765 (A016945 n).toNat)

end

end A167585.P3737910859326055866

namespace A167585

/-- `or(9, A032765(A016945(n)))` -/
def P3737910859326055866.Spec : Prop :=
  ∀ n, P3737910859326055866.a n = A167585 (n + 1)

end A167585

/-! ## A167585.P71999587674093052

`record[A269879(n)+9]`
-/

namespace A167585.P71999587674093052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269879 n + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167585.P71999587674093052

namespace A167585

/-- `record[A269879(n)+9]` -/
def P71999587674093052.Spec : Prop :=
  ∀ n, P71999587674093052.a n = A167585 (n + 1)

end A167585

/-! ## A167585.P7954413088736224585

`or(9, A273675(2*n+1))`
-/

namespace A167585.P7954413088736224585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 9 (A273675 (2 * n + 1))

end

end A167585.P7954413088736224585

namespace A167585

/-- `or(9, A273675(2*n+1))` -/
def P7954413088736224585.Spec : Prop :=
  ∀ n, P7954413088736224585.a n = A167585 (n + 1)

end A167585

/-!
# A167586: The fourth row of the ED4 array A167584.

The programs for A167586, the canonical program `A167586.P2187526315440315913` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167586 has offset 1).

The definition of A167586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167586.P2187526315440315913

`32*(n+1)^3-16*(n+1)²+120*(n+1)-60`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167586

/-- `32*(n+1)^3-16*(n+1)²+120*(n+1)-60` -/
def P2187526315440315913.Spec : Prop :=
  ∀ n, P2187526315440315913.a n = A167586 (n + 1)

theorem P2187526315440315913.correct : P2187526315440315913.Spec := by
  intro n
  simp only [A167586, Nat.add_sub_cancel]

end A167586

/-! ## A167586.P1253754356686277051

`(∑[A017113(n)]+15)*A017113(n)`
-/

namespace A167586.P1253754356686277051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 15) * A017113 n

end

end A167586.P1253754356686277051

namespace A167586

/-- `(∑[A017113(n)]+15)*A017113(n)` -/
def P1253754356686277051.Spec : Prop :=
  ∀ n, P1253754356686277051.a n = A167586 (n + 1)

end A167586

/-! ## A167586.P5636182563012251487

`(A002943(n+2)-A017281(n))*(8*n+4)`
-/

namespace A167586.P5636182563012251487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002943 (n + 2) - A017281 n) * (8 * n + 4 : ℤ)

end

end A167586.P5636182563012251487

namespace A167586

/-- `(A002943(n+2)-A017281(n))*(8*n+4)` -/
def P5636182563012251487.Spec : Prop :=
  ∀ n, P5636182563012251487.a n = A167586 (n + 1)

theorem P5636182563012251487.correct : P5636182563012251487.Spec := by
  intro n
  simp only [A167586, Nat.add_sub_cancel, A167586.P5636182563012251487.a, A167586.P2187526315440315913.a, A002943, A002943.P6554007946647441496.a, A017281, A017281.P12372910670058171543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167586

/-! ## A167586.P11734488360729642450

`(A241848(2*n+1)+4*n)*(8*n+4)`
-/

namespace A167586.P11734488360729642450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A241848 (2 * n + 1) + (4 * n : ℤ)) * (8 * n + 4 : ℤ)

end

end A167586.P11734488360729642450

namespace A167586

/-- `(A241848(2*n+1)+4*n)*(8*n+4)` -/
def P11734488360729642450.Spec : Prop :=
  ∀ n, P11734488360729642450.a n = A167586 (n + 1)

theorem P11734488360729642450.correct : P11734488360729642450.Spec := by
  intro n
  simp only [A167586, Nat.add_sub_cancel, A167586.P11734488360729642450.a, A167586.P2187526315440315913.a, A241848, A241848.P10518508374331350270.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167586

/-! ## A167586.P10715843282577890731

`(A059100(2*n+1)+A008586(n+4))*(8*n+4)`
-/

namespace A167586.P10715843282577890731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059100 (2 * n + 1) + A008586 (n + 4)) * (8 * n + 4 : ℤ)

end

end A167586.P10715843282577890731

namespace A167586

/-- `(A059100(2*n+1)+A008586(n+4))*(8*n+4)` -/
def P10715843282577890731.Spec : Prop :=
  ∀ n, P10715843282577890731.a n = A167586 (n + 1)

theorem P10715843282577890731.correct : P10715843282577890731.Spec := by
  intro n
  simp only [A167586, Nat.add_sub_cancel, A167586.P10715843282577890731.a, A167586.P2187526315440315913.a, A008586, A008586.P15642444062404201100.a, A059100, A059100.P4969484960020007252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167586

/-! ## A167586.P14236087905097123658

`(8*n+4)*A241750(2*(n+1))`
-/

namespace A167586.P14236087905097123658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 4 : ℤ) * A241750 (2 * (n + 1))

end

end A167586.P14236087905097123658

namespace A167586

/-- `(8*n+4)*A241750(2*(n+1))` -/
def P14236087905097123658.Spec : Prop :=
  ∀ n, P14236087905097123658.a n = A167586 (n + 1)

theorem P14236087905097123658.correct : P14236087905097123658.Spec := by
  intro n
  simp only [A167586, Nat.add_sub_cancel, A167586.P14236087905097123658.a, A167586.P2187526315440315913.a, A241750, A241750.P13027902610625093173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167586

/-! ## A167586.P2635195968357155413

`A016825(n)*A016825(∑[A016825(n)]+7)`
-/

namespace A167586.P2635195968357155413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n * A016825 (∑ j ∈ Finset.range (n + 1), f1 j + 7).toNat

end

end A167586.P2635195968357155413

namespace A167586

/-- `A016825(n)*A016825(∑[A016825(n)]+7)` -/
def P2635195968357155413.Spec : Prop :=
  ∀ n, P2635195968357155413.a n = A167586 (n + 1)

end A167586

/-!
# A167587: The fifth row of the ED4 array A167584: 80*n^4 + 952*n^2 - 768*n + 525.

The programs for A167587, the canonical program `A167587.P16798383045489185514` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167587 has offset 1).

The definition of A167587 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `80*(n+1)^4+952*(n+1)²-768*(n+1)+525` (program `A167587.P16798383045489185514`, by `A167587.P16798383045489185514.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167587.P16798383045489185514

`80*(n+1)^4+952*(n+1)²-768*(n+1)+525`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167587

/-- `80*(n+1)^4+952*(n+1)²-768*(n+1)+525` -/
def P16798383045489185514.Spec : Prop :=
  ∀ n, P16798383045489185514.a n = A167587 (n + 1)

theorem P16798383045489185514.correct : P16798383045489185514.Spec := by
  intro n
  simp only [A167587, Nat.add_sub_cancel]

end A167587

/-! ## A167587.P1283545405807699685

`A167584(A046691(n+3))`
-/

namespace A167587.P1283545405807699685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167584 (A046691 (n + 3)).toNat

end

end A167587.P1283545405807699685

namespace A167587

/-- `A167584(A046691(n+3))` -/
def P1283545405807699685.Spec : Prop :=
  ∀ n, P1283545405807699685.a n = A167587 (n + 1)

end A167587

/-! ## A167587.P6015045737934606660

`A167584(eq[4, A193592(n)])`
-/

namespace A167587.P6015045737934606660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167584 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A167587.P6015045737934606660

namespace A167587

/-- `A167584(eq[4, A193592(n)])` -/
def P6015045737934606660.Spec : Prop :=
  ∀ n, P6015045737934606660.a n = A167587 (n + 1)

end A167587

/-! ## A167587.P16407812963966168666

`A167584(eq[8, A140996(n)])`
-/

namespace A167587.P16407812963966168666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167584 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A167587.P16407812963966168666

namespace A167587

/-- `A167584(eq[8, A140996(n)])` -/
def P16407812963966168666.Spec : Prop :=
  ∀ n, P16407812963966168666.a n = A167587 (n + 1)

end A167587

/-! ## A167587.P6558016567589327975

`A167584(Δ[A023545(n+1)])`
-/

namespace A167587.P6558016567589327975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167584 (f1 (n + 1) - f1 n).toNat

end

end A167587.P6558016567589327975

namespace A167587

/-- `A167584(Δ[A023545(n+1)])` -/
def P6558016567589327975.Spec : Prop :=
  ∀ n, P6558016567589327975.a n = A167587 (n + 1)

end A167587

/-!
# A167588: The second column of the ED4 array A167584.

The programs for A167588, the canonical program `A167588.P1698701956347669943` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167588 has offset 1).

The definition of A167588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167588.P1698701956347669943

`6*a(n-1)+(2*(n+1)-5)*(2*(n+1)-1)*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167588

/-- `6*a(n-1)+(2*(n+1)-5)*(2*(n+1)-1)*a(n-2)` -/
def P1698701956347669943.Spec : Prop :=
  ∀ n, P1698701956347669943.a n = A167588 (n + 1)

theorem P1698701956347669943.correct : P1698701956347669943.Spec := by
  intro n
  simp only [A167588, Nat.add_sub_cancel]

end A167588

/-! ## A167588.P14229694483236952486

`A167584(∑[n+1]+2)`
-/

namespace A167588.P14229694483236952486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167584 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A167588.P14229694483236952486

namespace A167588

/-- `A167584(∑[n+1]+2)` -/
def P14229694483236952486.Spec : Prop :=
  ∀ n, P14229694483236952486.a n = A167588 (n + 1)

end A167588

/-! ## A167588.P17273695743765394381

`record[A167584(A080036(n))]`
-/

namespace A167588.P17273695743765394381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167584 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167588.P17273695743765394381

namespace A167588

/-- `record[A167584(A080036(n))]` -/
def P17273695743765394381.Spec : Prop :=
  ∀ n, P17273695743765394381.a n = A167588 (n + 1)

end A167588

/-! ## A167588.P14488367027465858366

`record[A167584(gcd(n, A303913(n)))]`
-/

namespace A167588.P14488367027465858366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167584 (Int.gcd (n : ℤ) (A303913 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167588.P14488367027465858366

namespace A167588

/-- `record[A167584(gcd(n, A303913(n)))]` -/
def P14488367027465858366.Spec : Prop :=
  ∀ n, P14488367027465858366.a n = A167588 (n + 1)

end A167588

/-! ## A167588.P8709245835558770716

`record[A167584(A007401(n+1)+2)]`
-/

namespace A167588.P8709245835558770716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167584 (A007401 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167588.P8709245835558770716

namespace A167588

/-- `record[A167584(A007401(n+1)+2)]` -/
def P8709245835558770716.Spec : Prop :=
  ∀ n, P8709245835558770716.a n = A167588 (n + 1)

end A167588

/-! ## A167588.P1134776626372460501

`record[gcd(A098825(n), A167584(n+1))]`
-/

namespace A167588.P1134776626372460501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A167584 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167588.P1134776626372460501

namespace A167588

/-- `record[gcd(A098825(n), A167584(n+1))]` -/
def P1134776626372460501.Spec : Prop :=
  ∀ n, (P1134776626372460501.a n : ℤ) = A167588 (n + 1)

end A167588

/-!
# A167589: The third column of the ED4 array A167584.

The programs for A167589, there is no canonical definition to state claims against.
-/

/-! ## A167589.P12217007143685441686

`A167584(∑[n+2]+4)`
-/

namespace A167589.P12217007143685441686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167584 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A167589.P12217007143685441686

/-! ## A167589.P1472239872934510732

`record[gcd(A167584(n+1), A303913(n))]`
-/

namespace A167589.P1472239872934510732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167584 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167589.P1472239872934510732

/-! ## A167589.P3710644683971311801

`A167584(A167614(n+1))+A025439(n)`
-/

namespace A167589.P3710644683971311801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167584 (A167614 (n + 1)).toNat + A025439 n

end

end A167589.P3710644683971311801

/-! ## A167589.P4560430247608379141

`lcm(A167584(A167614(n+1)), A337375(n))`
-/

namespace A167589.P4560430247608379141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A167584 (A167614 (n + 1)).toNat) (A337375 n)

end

end A167589.P4560430247608379141

/-! ## A167589.P13027582385629670311

`C(A167584(A167614(n+1)), A178334(n))`
-/

namespace A167589.P13027582385629670311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A167584 (A167614 (n + 1)).toNat).toNat (A178334 n).toNat

end

end A167589.P13027582385629670311

/-!
# A167590: The row sums of the ED4 array A167584 read by antidiagonals.

The programs for A167590, there is no canonical definition to state claims against.
-/

/-! ## A167590.P1936256319696643723

`A082481(∑[A082163(n+1)])`
-/

namespace A167590.P1936256319696643723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082481 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A167590.P1936256319696643723

/-!
# A167592: The second left hand column of triangle A167591.

The programs for A167592, the canonical program `A167592.P12783354575125703729` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167592 has offset 2).

The definition of A167592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167592.P12783354575125703729

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=-2, a(1)=-8, a(2)=-16, a(3)=0`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167592

/-- `8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P12783354575125703729.Spec : Prop :=
  ∀ n, P12783354575125703729.a n = A167592 (n + 2)

theorem P12783354575125703729.correct : P12783354575125703729.Spec := by
  intro n
  simp only [A167592, Nat.add_sub_cancel]

end A167592

/-! ## A167592.P5831087738759269201

`2^(n+2)*((n+2)^3-6*(n+2)²+5*(n+2))/12`
-/

namespace A167592.P5831087738759269201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 2) : ℤ) * (((n + 2) ^ 3 : ℤ) - (6 * (n + 2) ^ 2 : ℤ) + (5 * (n + 2) : ℤ)) : ℚ) / 12

end

end A167592.P5831087738759269201

namespace A167592

/-- `2^(n+2)*((n+2)^3-6*(n+2)²+5*(n+2))/12` -/
def P5831087738759269201.Spec : Prop :=
  ∀ n, P5831087738759269201.a n = (A167592 (n + 2) : ℚ)

theorem P5831087738759269201.correct : P5831087738759269201.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A167592, Nat.add_sub_cancel, A167592.P5831087738759269201.a, A167592.P12783354575125703729.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A167592, Nat.add_sub_cancel, A167592.P5831087738759269201.a, A167592.P12783354575125703729.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A167592

/-! ## A167592.P5174878736625953155

`-(A000079(n+1)*A254749(n+1))`
-/

namespace A167592.P5174878736625953155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000079 (n + 1) * A254749 (n + 1))

end

end A167592.P5174878736625953155

namespace A167592

/-- `-(A000079(n+1)*A254749(n+1))` -/
def P5174878736625953155.Spec : Prop :=
  ∀ n, P5174878736625953155.a n = A167592 (n + 2)

end A167592

/-! ## A167592.P1742598211070885075

`A290026(n+2)-2*A001788(n+1)`
-/

namespace A167592.P1742598211070885075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290026 (n + 2) - 2 * A001788 (n + 1)

end

end A167592.P1742598211070885075

namespace A167592

/-- `A290026(n+2)-2*A001788(n+1)` -/
def P1742598211070885075.Spec : Prop :=
  ∀ n, P1742598211070885075.a n = A167592 (n + 2)

end A167592

/-! ## A167592.P17370954384564673301

`A331408(2*n+3)-A330592(2*n+3)`
-/

namespace A167592.P17370954384564673301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331408 (2 * n + 3) - A330592 (2 * n + 3)

end

end A167592.P17370954384564673301

namespace A167592

/-- `A331408(2*n+3)-A330592(2*n+3)` -/
def P17370954384564673301.Spec : Prop :=
  ∀ n, P17370954384564673301.a n = A167592 (n + 2)

end A167592

/-! ## A167592.P2272717063575266456

`A254749(n+1)-A000051(n+1)*A254749(n+1)`
-/

namespace A167592.P2272717063575266456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254749 (n + 1) - A000051 (n + 1) * A254749 (n + 1)

end

end A167592.P2272717063575266456

namespace A167592

/-- `A254749(n+1)-A000051(n+1)*A254749(n+1)` -/
def P2272717063575266456.Spec : Prop :=
  ∀ n, P2272717063575266456.a n = A167592 (n + 2)

end A167592

/-! ## A167592.P1459979456878710092

`A290031(n+1)-(A290031(n)+A052481(n+1))`
-/

namespace A167592.P1459979456878710092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290031 (n + 1) - (A290031 n + A052481 (n + 1))

end

end A167592.P1459979456878710092

namespace A167592

/-- `A290031(n+1)-(A290031(n)+A052481(n+1))` -/
def P1459979456878710092.Spec : Prop :=
  ∀ n, P1459979456878710092.a n = A167592 (n + 2)

end A167592

/-!
# A167593: The third left hand column of triangle A167591.

The programs for A167593, the canonical program `A167593.P13748001575761375832` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167593 has offset 3).

The definition of A167593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167593.P13748001575761375832

`2^(n+3)*(7*(n+3)^5-40*(n+3)^4+110*(n+3)^3-155*(n+3)²+78*(n+3))/240`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167593

/-- `2^(n+3)*(7*(n+3)^5-40*(n+3)^4+110*(n+3)^3-155*(n+3)²+78*(n+3))/240` -/
def P13748001575761375832.Spec : Prop :=
  ∀ n, P13748001575761375832.a n = (A167593 (n + 3) : ℚ)

end A167593

/-! ## A167593.P299081678147181006

`A167591(∑[n+2]+4)`
-/

namespace A167593.P299081678147181006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167591 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A167593.P299081678147181006

namespace A167593

/-- `A167591(∑[n+2]+4)` -/
def P299081678147181006.Spec : Prop :=
  ∀ n, P299081678147181006.a n = A167593 (n + 3)

end A167593

/-! ## A167593.P9903731361772283199

`abs(A167591(A167614(n+1)))`
-/

namespace A167593.P9903731361772283199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167591 (A167614 (n + 1)).toNat|

end

end A167593.P9903731361772283199

namespace A167593

/-- `abs(A167591(A167614(n+1)))` -/
def P9903731361772283199.Spec : Prop :=
  ∀ n, P9903731361772283199.a n = A167593 (n + 3)

end A167593

/-!
# A167596: The number of isolated nonprimes between the nonisolated prime and the isolated prime.

The programs for A167596, there is no canonical definition to state claims against.
-/

/-! ## A167596.P8580640457103087459

`A065033(A176656(n+1))%A174024(n+1)-(n+1)`
-/

namespace A167596.P8580640457103087459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (A176656 (n + 1)).toNat) (A174024 (n + 1)) - (n + 1 : ℤ)

end

end A167596.P8580640457103087459

/-! ## A167596.P7496211250968118741

`A162310(n+1)-A001222(record[A003959(n+1)])`
-/

namespace A167596.P7496211250968118741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162310 (n + 1) - A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A167596.P7496211250968118741

/-!
# A167597: The isolated nonprimes that are the sum of two successive primes.

The programs for A167597, there is no canonical definition to state claims against.
-/

/-! ## A167597.P5882931992349231595

`A158350(n+1)+A099349(n+1)`
-/

namespace A167597.P5882931992349231595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158350 (n + 1) + A099349 (n + 1)

end

end A167597.P5882931992349231595

/-! ## A167597.P3979874109719471369

`A014574(A176984(n+1))`
-/

namespace A167597.P3979874109719471369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (A176984 (n + 1)).toNat

end

end A167597.P3979874109719471369

/-! ## A167597.P11782449018084985989

`A001043(A176986(n+1))`
-/

namespace A167597.P11782449018084985989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (A176986 (n + 1)).toNat

end

end A167597.P11782449018084985989

/-! ## A167597.P12344869350514455975

`A011974(A176986(n+1)+1)`
-/

namespace A167597.P12344869350514455975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (A176986 (n + 1) + 1).toNat

end

end A167597.P12344869350514455975

/-! ## A167597.P8585390092160502198

`∩[A001043(n+1), A014574(n+1)]`
-/

namespace A167597.P8585390092160502198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167597.P8585390092160502198

/-! ## A167597.P2806210990333132768

`∩[A011974(n+1), A014574(n+1)]`
-/

namespace A167597.P2806210990333132768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167597.P2806210990333132768

/-! ## A167597.P5979597514585630674

`∩[A001043(n+1), A056853(n+1)]`
-/

namespace A167597.P5979597514585630674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167597.P5979597514585630674

/-! ## A167597.P5028498669595333643

`∩[A011974(n+1), A056853(n+1)]`
-/

namespace A167597.P5028498669595333643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167597.P5028498669595333643

/-! ## A167597.P10963034555169619593

`∩[A014574(n+1), A164653(n+1)]`
-/

namespace A167597.P10963034555169619593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167597.P10963034555169619593

/-! ## A167597.P4102545653531426851

`∩[A001043(n+1), A217259(n+1)]`
-/

namespace A167597.P4102545653531426851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167597.P4102545653531426851

/-! ## A167597.P4852000983707002854

`∩[A056853(n+1), A164653(n+1)]`
-/

namespace A167597.P4852000983707002854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167597.P4852000983707002854

/-! ## A167597.P17771666512508472763

`∩[A011974(n+1), A217259(n+1)]`
-/

namespace A167597.P17771666512508472763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167597.P17771666512508472763

/-! ## A167597.P6140080932218958279

`∩[A164653(n+1), A217259(n+1)]`
-/

namespace A167597.P6140080932218958279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167597.P6140080932218958279

/-! ## A167597.P4325978881776086998

`A151800(A099349(n+1)+1)+A099349(n+1)`
-/

namespace A167597.P4325978881776086998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A099349 (n + 1) + 1).toNat + A099349 (n + 1)

end

end A167597.P4325978881776086998

/-! ## A167597.P4251685112049261152

`∩[A001043(n+1), A167706(n+1)]`
-/

namespace A167597.P4251685112049261152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167597.P4251685112049261152

/-! ## A167597.P2971262450152644790

`∩[A164653(n+1), A167706(n+1)]`
-/

namespace A167597.P2971262450152644790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167597.P2971262450152644790

/-! ## A167597.P12739871559258089158

`p?[record[A006530(A011974(n+1)+1)]-2]+1`
-/

namespace A167597.P12739871559258089158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A011974 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A167597.P12739871559258089158

/-! ## A167597.P1085893864067633511

`∩[A001043(n+1), A129297(n+1)]`
-/

namespace A167597.P1085893864067633511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167597.P1085893864067633511

