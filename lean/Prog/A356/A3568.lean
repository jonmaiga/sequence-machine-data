import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A356802: A refinement of the Mahonian numbers (non-canonical ordering).

The programs for A356802, there is no canonical definition to state claims against.
-/

/-! ## A356802.P7301731616005008735

`A060351(lt[A100405(n), A000203(n+1)])`
-/

namespace A356802.P7301731616005008735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100405 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356802.P7301731616005008735

/-! ## A356802.P9122815797424789586

`A060351(lt[A377130(3*n+1), A160009(2*n+1)])`
-/

namespace A356802.P9122815797424789586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377130 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160009 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356802.P9122815797424789586

/-! ## A356802.P4419075775379962583

`A060351(n+1)%A087489(A059575(n+1))`
-/

namespace A356802.P4419075775379962583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060351 (n + 1)) (A087489 (A059575 (n + 1)).toNat)

end

end A356802.P4419075775379962583

/-! ## A356802.P11594603555901110408

`A060351(C(A132263(n+1), n))`
-/

namespace A356802.P11594603555901110408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (Nat.choose (A132263 (n + 1)).toNat n)

end

end A356802.P11594603555901110408

/-! ## A356802.P3872696148419766729

`A060351(A134829(2*n+1)+n)`
-/

namespace A356802.P3872696148419766729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (A134829 (2 * n + 1) + (n : ℤ)).toNat

end

end A356802.P3872696148419766729

/-!
# A356803: a(n) = product of prohibited prime factors of A354790(n).

The programs for A356803, there is no canonical definition to state claims against.
-/

/-! ## A356803.P4177719010497779952

`A019565(A356804(n+1))`
-/

namespace A356803.P4177719010497779952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A356804 (n + 1)).toNat

end

end A356803.P4177719010497779952

/-! ## A356803.P14147574482846398010

`A260443(A134744(3*n+4)*A356804(n+1))`
-/

namespace A356803.P14147574482846398010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (A134744 (3 * n + 4) * A356804 (n + 1)).toNat

end

end A356803.P14147574482846398010

/-! ## A356803.P3548982227156308411

`A119319(A094600(n))`
-/

namespace A356803.P3548982227156308411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119319 (A094600 n).toNat

end

end A356803.P3548982227156308411

/-!
# A356804: a(n) is a binary encoded version of A356803(n).

The programs for A356804, there is no canonical definition to state claims against.
-/

/-! ## A356804.P16427845432363904976

`∑{p}[A356803(n+1), A048675(#)]`
-/

namespace A356804.P16427845432363904976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A356804.P16427845432363904976

/-! ## A356804.P14895373369645763977

`∑{p}[A356803(n+1), A087207(#)]`
-/

namespace A356804.P14895373369645763977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A356804.P14895373369645763977

/-! ## A356804.P13831770452989948746

`∑{p}[A356803(n+1), A253566(#)]`
-/

namespace A356804.P13831770452989948746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A253566 p

end

end A356804.P13831770452989948746

/-! ## A356804.P6541921889849333611

`∑{p}[A356803(n+1), A292382(#)]`
-/

namespace A356804.P6541921889849333611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A292382 p

end

end A356804.P6541921889849333611

/-! ## A356804.P10764840888867832831

`A003986(A046661(n+1)-A125899(n+1))`
-/

namespace A356804.P10764840888867832831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A046661 (n + 1) - A125899 (n + 1)).toNat

end

end A356804.P10764840888867832831

/-!
# A356806: a(n) = Sum_{k=0..n} (k*n-1)^(n-k) * binomial(n,k).

The programs for A356806, there is no canonical definition to state claims against.
-/

/-! ## A356806.P7931834377711079531

`A362839(∑[4*n])`
-/

namespace A356806.P7931834377711079531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362839 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A356806.P7931834377711079531

/-! ## A356806.P1325158931144707820

`A362839(A046092(n))^A178334(n)`
-/

namespace A356806.P1325158931144707820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362839 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A356806.P1325158931144707820

/-!
# A356807: Tetranacci sequence beginning with 3, 7, 12, 24.

The programs for A356807, the canonical program `A356807.P3178694988400913714` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356807 has offset 1).

The definition of A356807 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356807.P3178694988400913714

`a(n-1)+a(n-2)+a(n-3)+a(n-4)` with `a(0)=3, a(1)=7, a(2)=12, a(3)=24`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A356807

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)` -/
def P3178694988400913714.Spec : Prop :=
  ∀ n, (P3178694988400913714.a n : ℤ) = A356807 (n + 1)

theorem P3178694988400913714.correct : P3178694988400913714.Spec := by
  intro n
  simp only [A356807, Nat.add_sub_cancel]

end A356807

/-! ## A356807.P11899058489766223972

`ogf((3+4x+2x^2+2x^3)/(1-x-x^2-x^3-x^4))`
-/

namespace A356807.P11899058489766223972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, 2, 2] [1, -1, -1, -1, -1] n

end

end A356807.P11899058489766223972

namespace A356807

/-- `ogf((3+4x+2x^2+2x^3)/(1-x-x^2-x^3-x^4))` -/
def P11899058489766223972.Spec : Prop :=
  ∀ n, P11899058489766223972.a n = A356807 (n + 1)

end A356807

/-! ## A356807.P13186037770674769771

`A001631(n+1)+A001630(n+4)`
-/

namespace A356807.P13186037770674769771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (n + 1) + A001630 (n + 4)

end

end A356807.P13186037770674769771

namespace A356807

/-- `A001631(n+1)+A001630(n+4)` -/
def P13186037770674769771.Spec : Prop :=
  ∀ n, P13186037770674769771.a n = A356807 (n + 1)

end A356807

/-! ## A356807.P5083944484010884507

`A001630(n+4)+A000288(n)-A251656(n)`
-/

namespace A356807.P5083944484010884507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 (n + 4) + (A000288 n - A251656 n)

end

end A356807.P5083944484010884507

namespace A356807

/-- `A001630(n+4)+A000288(n)-A251656(n)` -/
def P5083944484010884507.Spec : Prop :=
  ∀ n, P5083944484010884507.a n = A356807 (n + 1)

end A356807

/-! ## A356807.P8803063243882395966

`A008574(A001630(n+2))-A251703(n)`
-/

namespace A356807.P8803063243882395966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A001630 (n + 2)).toNat - A251703 n

end

end A356807.P8803063243882395966

namespace A356807

/-- `A008574(A001630(n+2))-A251703(n)` -/
def P8803063243882395966.Spec : Prop :=
  ∀ n, P8803063243882395966.a n = A356807 (n + 1)

end A356807

/-!
# A356809: Fibonacci numbers which are not the sum of two squares.

The programs for A356809, there is no canonical definition to state claims against.
-/

/-! ## A356809.P839541386371173072

`A000045(lt[A026741(n), A242862(n+3)%(n+1)])`
-/

namespace A356809.P839541386371173072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242862 (n + 3)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356809.P839541386371173072

/-! ## A356809.P6157249532630955350

`A036415(A115165(n+1))`
-/

namespace A356809.P6157249532630955350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036415 (A115165 (n + 1)).toNat

end

end A356809.P6157249532630955350

/-! ## A356809.P16218690899374396262

`A088305(∑[A325521(n!)])`
-/

namespace A356809.P16218690899374396262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325521 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A356809.P16218690899374396262

/-! ## A356809.P7610856609142670954

`A000045(lt[A352713(n), A255338(n)])`
-/

namespace A356809.P7610856609142670954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352713 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356809.P7610856609142670954

/-!
# A356811: a(n) = Sum_{k=0..n} (k*n+1)^(n-k) * binomial(n,k).

The programs for A356811, there is no canonical definition to state claims against.
-/

/-! ## A356811.P17981125983497747137

`A026233(A014172(∑[n]))`
-/

namespace A356811.P17981125983497747137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A014172 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A356811.P17981125983497747137

/-!
# A356812: Expansion of e.g.f. exp(x * (1 - exp(2*x))).

The programs for A356812, there is no canonical definition to state claims against.
-/

/-! ## A356812.P12677251192852488444

`A305571(A007662(n))-A001787(n)`
-/

namespace A356812.P12677251192852488444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305571 (A007662 n).toNat - A001787 n

end

end A356812.P12677251192852488444

/-!
# A356817: a(n) = Sum_{k=0..n} (-1)^k * (k*n-1)^(n-k) * binomial(n,k).

The programs for A356817, there is no canonical definition to state claims against.
-/

/-! ## A356817.P10173381727222399479

`(12^a(n-1))²` with `a(0)=1, a(1)=-2, a(2)=0`
-/

namespace A356817.P10173381727222399479
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, -2, 0] fun n a =>
  ((12 : ℝ) ^ (a (n - 1))) ^ 2

end

end A356817.P10173381727222399479

/-!
# A356822: Irregular triangle read by rows where row n starts with n and each further term is the sum of the distinct palindromes in the concatenation of the decimal digits of preceding terms.

The programs for A356822, there is no canonical definition to state claims against.
-/

/-! ## A356822.P820009182635257419

`A136069(n+2)%A000043(A335456(n))`
-/

namespace A356822.P820009182635257419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136069 (n + 2)) (A000043 (A335456 n).toNat)

end

end A356822.P820009182635257419

/-!
# A356823: Tribternary numbers.

The programs for A356823, there is no canonical definition to state claims against.
-/

/-! ## A356823.P2977074236163915433

`A005836(eq[0, and(n, 2*and(n, 2*n))]+1)`
-/

namespace A356823.P2977074236163915433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * Nat.land n (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A356823.P2977074236163915433

/-! ## A356823.P18059850644812325955

`A005836(A003726(n+1)+1)`
-/

namespace A356823.P18059850644812325955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A003726 (n + 1) + 1).toNat

end

end A356823.P18059850644812325955

/-! ## A356823.P10807298439317052128

`lt[A000245(A005812(n)), A290091(n)]`
-/

namespace A356823.P10807298439317052128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (A005812 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356823.P10807298439317052128

/-! ## A356823.P13910296452898930055

`eq[A049310(A303837(n+4)), A289814(n)]`
-/

namespace A356823.P13910296452898930055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A303837 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356823.P13910296452898930055

/-! ## A356823.P13013095310003919235

`A028898(A278038(n))`
-/

namespace A356823.P13013095310003919235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A278038 n).toNat

end

end A356823.P13013095310003919235

/-!
# A356824: Palindromes that can be written as the sum of two palindromic primes.

The programs for A356824, there is no canonical definition to state claims against.
-/

/-! ## A356824.P6798592282355885530

`filter[A287961(n+1), A136522(#)]`
-/

namespace A356824.P6798592282355885530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A356824.P6798592282355885530

/-! ## A356824.P10985594644483309881

`∩[A287961(n+1), record[A262087(n)]]`
-/

namespace A356824.P10985594644483309881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287961 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356824.P10985594644483309881

/-! ## A356824.P4985717094786820137

`∩[A002113(n+1), A287961(n+1)]`
-/

namespace A356824.P4985717094786820137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356824.P4985717094786820137

/-! ## A356824.P9963198606532709141

`∩[A083158(n+1), A287961(n+1)]`
-/

namespace A356824.P9963198606532709141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356824.P9963198606532709141

/-! ## A356824.P13753532742929176369

`∩[A084991(n+1), A287961(n+1)]`
-/

namespace A356824.P13753532742929176369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356824.P13753532742929176369

/-!
# A356827: Expansion of e.g.f. exp(x * exp(3*x)).

The programs for A356827, there is no canonical definition to state claims against.
-/

/-! ## A356827.P15402690711718966908

`A384513(A302545(2*n)+A066178(n))`
-/

namespace A356827.P15402690711718966908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384513 (A302545 (2 * n) + A066178 n).toNat

end

end A356827.P15402690711718966908

/-!
# A356828: Number of vertex cuts in the n-ladder graph P_2 x P_n.

The programs for A356828, the canonical program `A356828.P8709742292613504345` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356828 has offset 1).

The definition of A356828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356828.P13967002552239127515

`2^(2*(n+1))-A059020(n+1)-1`
-/

namespace A356828.P13967002552239127515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (2 * (n + 1)) : ℤ) - A059020 (n + 1) - 1

end

end A356828.P13967002552239127515

namespace A356828

/-- `2^(2*(n+1))-A059020(n+1)-1` -/
def P13967002552239127515.Spec : Prop :=
  ∀ n, P13967002552239127515.a n = A356828 (n + 1)

end A356828

/-! ## A356828.P8709742292613504345

`8*a(n-1)-20*a(n-2)+16*a(n-3)+a(n-4)-4*a(n-5)` with `a(0)=0, a(1)=2, a(2)=23, a(3)=147, a(4)=748`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A356828

/-- `8*a(n-1)-20*a(n-2)+16*a(n-3)+a(n-4)-4*a(n-5)` -/
def P8709742292613504345.Spec : Prop :=
  ∀ n, P8709742292613504345.a n = A356828 (n + 1)

theorem P8709742292613504345.correct : P8709742292613504345.Spec := by
  intro n
  simp only [A356828, Nat.add_sub_cancel]

end A356828

/-! ## A356828.P8914232628481210821

`A000225(2*(n+1))-A059020(n+1)`
-/

namespace A356828.P8914232628481210821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * (n + 1)) - A059020 (n + 1)

end

end A356828.P8914232628481210821

namespace A356828

/-- `A000225(2*(n+1))-A059020(n+1)` -/
def P8914232628481210821.Spec : Prop :=
  ∀ n, P8914232628481210821.a n = A356828 (n + 1)

end A356828

/-!
# A356829: Number of vertex cuts in the n-Möbius ladder.

The programs for A356829, the canonical program `A356829.P17230402961984168518` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356829 has offset 1).

The definition of A356829 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286185, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356829.P17230402961984168518

`2^(2*(n+1))-A286185(n+1)-1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A356829

/-- `2^(2*(n+1))-A286185(n+1)-1` -/
def P17230402961984168518.Spec : Prop :=
  ∀ n, P17230402961984168518.a n = A356829 (n + 1)

theorem P17230402961984168518.correct : P17230402961984168518.Spec := by
  intro n
  simp only [A356829, Nat.add_sub_cancel]

end A356829

/-! ## A356829.P12253884412523928166

`A356830(n+1)-2*n`
-/

namespace A356829.P12253884412523928166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356830 (n + 1) - (2 * n : ℤ)

end

end A356829.P12253884412523928166

namespace A356829

/-- `A356830(n+1)-2*n` -/
def P12253884412523928166.Spec : Prop :=
  ∀ n, P12253884412523928166.a n = A356829 (n + 1)

theorem P12253884412523928166.correct : P12253884412523928166.Spec := by
  intro n
  simp only [A356829, Nat.add_sub_cancel, A356829.P12253884412523928166.a, A356829.P17230402961984168518.a, A286185, A286185.P1744816653617601400.a, A356830, A356830.P9176712600671338645.a, A286182, A286182.P18040158897190895158.a, A000129, A000129.P3563729298025900801.a, A002203, A002203.P17775519618444720850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A356829

/-! ## A356829.P17715343259339067669

`abs(A356830(n+1)-A005843(n))`
-/

namespace A356829.P17715343259339067669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A356830 (n + 1) - A005843 n|

end

end A356829.P17715343259339067669

namespace A356829

/-- `abs(A356830(n+1)-A005843(n))` -/
def P17715343259339067669.Spec : Prop :=
  ∀ n, P17715343259339067669.a n = A356829 (n + 1)

end A356829

/-! ## A356829.P7932375172674825383

`A356830(n+1)+1-A005408(n)`
-/

namespace A356829.P7932375172674825383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356830 (n + 1) + 1 - A005408 n

end

end A356829.P7932375172674825383

namespace A356829

/-- `A356830(n+1)+1-A005408(n)` -/
def P7932375172674825383.Spec : Prop :=
  ∀ n, P7932375172674825383.a n = A356829 (n + 1)

theorem P7932375172674825383.correct : P7932375172674825383.Spec := by
  intro n
  simp only [A356829, Nat.add_sub_cancel, A356829.P7932375172674825383.a, A356829.P17230402961984168518.a, A005408, A005408.P17437947328870227736.a, A286185, A286185.P1744816653617601400.a, A356830, A356830.P9176712600671338645.a, A286182, A286182.P18040158897190895158.a, A000129, A000129.P3563729298025900801.a, A002203, A002203.P17775519618444720850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A356829

/-! ## A356829.P12406165688423421467

`A286206(2*n+1)-A286185(n+1)`
-/

namespace A356829.P12406165688423421467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286206 (2 * n + 1) - A286185 (n + 1)

end

end A356829.P12406165688423421467

namespace A356829

/-- `A286206(2*n+1)-A286185(n+1)` -/
def P12406165688423421467.Spec : Prop :=
  ∀ n, P12406165688423421467.a n = A356829 (n + 1)

end A356829

/-! ## A356829.P16470532946491015930

`A286183(n+1)+A356644(n+1)-A286185(n+1)`
-/

namespace A356829.P16470532946491015930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286183 (n + 1) + (A356644 (n + 1) - A286185 (n + 1))

end

end A356829.P16470532946491015930

namespace A356829

/-- `A286183(n+1)+A356644(n+1)-A286185(n+1)` -/
def P16470532946491015930.Spec : Prop :=
  ∀ n, P16470532946491015930.a n = A356829 (n + 1)

theorem P16470532946491015930.correct : P16470532946491015930.Spec := by
  intro n
  simp only [A356829, Nat.add_sub_cancel, A356829.P16470532946491015930.a, A356829.P17230402961984168518.a, A286183, A286183.P16536639819314678559.a, A286185, A286185.P1744816653617601400.a, A356644, A356644.P10888177438195276063.a, A007574, A007574.P1354935611169580180.a, A286182, A286182.P18040158897190895158.a, A000129, A000129.P3563729298025900801.a, A002203, A002203.P17775519618444720850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A356829

/-!
# A356830: Number of vertex cuts in the n-prism graph.

The programs for A356830, the canonical program `A356830.P9176712600671338645` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356830 has offset 1).

The definition of A356830 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286182, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356830.P9176712600671338645

`2^(2*(n+1))-A286182(n+1)-1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A356830

/-- `2^(2*(n+1))-A286182(n+1)-1` -/
def P9176712600671338645.Spec : Prop :=
  ∀ n, P9176712600671338645.a n = A356830 (n + 1)

theorem P9176712600671338645.correct : P9176712600671338645.Spec := by
  intro n
  simp only [A356830, Nat.add_sub_cancel]

end A356830

/-! ## A356830.P10673050992057366541

`A356829(n+1)+2*n`
-/

namespace A356830.P10673050992057366541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356829 (n + 1) + (2 * n : ℤ)

end

end A356830.P10673050992057366541

namespace A356830

/-- `A356829(n+1)+2*n` -/
def P10673050992057366541.Spec : Prop :=
  ∀ n, P10673050992057366541.a n = A356830 (n + 1)

theorem P10673050992057366541.correct : P10673050992057366541.Spec := by
  intro n
  simp only [A356830, Nat.add_sub_cancel, A356830.P10673050992057366541.a, A356830.P9176712600671338645.a, A286182, A286182.P18040158897190895158.a, A356829, A356829.P17230402961984168518.a, A000129, A000129.P3563729298025900801.a, A002203, A002203.P17775519618444720850.a, A286185, A286185.P1744816653617601400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A356830

/-! ## A356830.P8522011387439231297

`A286206(2*n+1)-A286182(n+1)`
-/

namespace A356830.P8522011387439231297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286206 (2 * n + 1) - A286182 (n + 1)

end

end A356830.P8522011387439231297

namespace A356830

/-- `A286206(2*n+1)-A286182(n+1)` -/
def P8522011387439231297.Spec : Prop :=
  ∀ n, P8522011387439231297.a n = A356830 (n + 1)

end A356830

/-! ## A356830.P676079490171789974

`A286207(2*n+1)-A286182(n+1)`
-/

namespace A356830.P676079490171789974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286207 (2 * n + 1) - A286182 (n + 1)

end

end A356830.P676079490171789974

namespace A356830

/-- `A286207(2*n+1)-A286182(n+1)` -/
def P676079490171789974.Spec : Prop :=
  ∀ n, P676079490171789974.a n = A356830 (n + 1)

end A356830

/-! ## A356830.P11514794994221303010

`A126646(A005408(n))-A286182(n+1)`
-/

namespace A356830.P11514794994221303010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A005408 n).toNat - A286182 (n + 1)

end

end A356830.P11514794994221303010

namespace A356830

/-- `A126646(A005408(n))-A286182(n+1)` -/
def P11514794994221303010.Spec : Prop :=
  ∀ n, P11514794994221303010.a n = A356830 (n + 1)

end A356830

/-! ## A356830.P704767092252876647

`A145071(A005408(n))-A286185(n+1)`
-/

namespace A356830.P704767092252876647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145071 (A005408 n).toNat - A286185 (n + 1)

end

end A356830.P704767092252876647

namespace A356830

/-- `A145071(A005408(n))-A286185(n+1)` -/
def P704767092252876647.Spec : Prop :=
  ∀ n, P704767092252876647.a n = A356830 (n + 1)

end A356830

/-!
# A356831: Size of the automorphism group for the underlying graph of the divisibility graph of size n.

The programs for A356831, there is no canonical definition to state claims against.
-/

/-! ## A356831.P4690870912562576149

`A001227(A163832(n)+A003057(n+2))`
-/

namespace A356831.P4690870912562576149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A163832 n + A003057 (n + 2)).toNat

end

end A356831.P4690870912562576149

/-! ## A356831.P14992774839257426048

`A001227(or(A074816(n+1), A323233(n+1)))`
-/

namespace A356831.P14992774839257426048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (Int.lor (A074816 (n + 1)) (A323233 (n + 1))).toNat

end

end A356831.P14992774839257426048

/-! ## A356831.P8239495934791796202

`A038548(A029747(n+1)*A329605(n+1)+2)`
-/

namespace A356831.P8239495934791796202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A029747 (n + 1) * A329605 (n + 1) + 2).toNat

end

end A356831.P8239495934791796202

/-! ## A356831.P2928898741994478309

`A286324(eq[A194812(2*n+1), A319072(n+1)])`
-/

namespace A356831.P2928898741994478309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194812 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A356831.P2928898741994478309

/-! ## A356831.P912622602520738573

`A000005(A288002(n+4)+A126457(n))`
-/

namespace A356831.P912622602520738573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A288002 (n + 4) + A126457 n).toNat

end

end A356831.P912622602520738573

/-!
# A356832: Number of permutations p of [n] such that at most one element of {p(1),...,p(i-1)} is between p(i) and p(i+1) for all i < n and n = 0 or p(n) < 3.

The programs for A356832, there is no canonical definition to state claims against.
-/

/-! ## A356832.P3443810684518467324

`1+A291683(n)`
-/

namespace A356832.P3443810684518467324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A291683 n

end

end A356832.P3443810684518467324

/-! ## A356832.P4745516455248728838

`A356692(∑[n])`
-/

namespace A356832.P4745516455248728838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356692 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A356832.P4745516455248728838

/-! ## A356832.P9015978304247205885

`and(or(1, -n)%2, A356692(A000217(n)))`
-/

namespace A356832.P9015978304247205885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (Int.lor 1 (-(n : ℤ))) 2) (A356692 (A000217 n).toNat)

end

end A356832.P9015978304247205885

/-! ## A356832.P15248816445312861075

`A057427(n+4)*A356692(A000217(n))`
-/

namespace A356832.P15248816445312861075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 4) * A356692 (A000217 n).toNat

end

end A356832.P15248816445312861075

/-! ## A356832.P12524140238719608791

`A291680(A133263(n))+1`
-/

namespace A356832.P12524140238719608791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A133263 n).toNat + 1

end

end A356832.P12524140238719608791

/-! ## A356832.P14076053877952098625

`A291680(A238531(n+1))+1`
-/

namespace A356832.P14076053877952098625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A238531 (n + 1)).toNat + 1

end

end A356832.P14076053877952098625

/-!
# A356833: Primes p such that the minimum number of divisors among the numbers between p and NextPrime(p) is a square.

The programs for A356833, there is no canonical definition to state claims against.
-/

/-! ## A356833.P7431062050702430956

`A104199(A313938(n+1))`
-/

namespace A356833.P7431062050702430956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104199 (A313938 (n + 1)).toNat

end

end A356833.P7431062050702430956

/-! ## A356833.P2854689220200899742

`filter[A136003(n+2), A246146(#)]`
-/

namespace A356833.P2854689220200899742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136003 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A246146 (f1 j).toNat = 1) n)

end

end A356833.P2854689220200899742

/-! ## A356833.P5537914223013644890

`eq[A114010(n+1), A347859(n)]`
-/

namespace A356833.P5537914223013644890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356833.P5537914223013644890

/-!
# A356835: Coordination sequence of the {4,3,5} hyperbolic honeycomb.

The programs for A356835, there is no canonical definition to state claims against.
-/

/-! ## A356835.P793388463133104360

`A267890(n)-A373948(A002468(n+1))`
-/

namespace A356835.P793388463133104360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267890 n - A373948 (A002468 (n + 1)).toNat

end

end A356835.P793388463133104360

/-! ## A356835.P1493406665925752723

`or(A344039(n), A375280(A375271(n+1)))`
-/

namespace A356835.P1493406665925752723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A344039 n) (A375280 (A375271 (n + 1)).toNat)

end

end A356835.P1493406665925752723

/-!
# A356836: Coordination sequence of the {5,3,4} hyperbolic honeycomb.

The programs for A356836, there is no canonical definition to state claims against.
-/

/-! ## A356836.P14787473118572928494

`A047201(∑[∑[A242631(n)]])`
-/

namespace A356836.P14787473118572928494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242631 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A356836.P14787473118572928494

/-!
# A356838: The smallest of the most common prime factors of n.

The programs for A356838, there is no canonical definition to state claims against.
-/

/-! ## A356838.P5573789963979960177

`A020639(A261969(n+2))`
-/

namespace A356838.P5573789963979960177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A261969 (n + 2)).toNat

end

end A356838.P5573789963979960177

/-! ## A356838.P7873880734695554020

`A020639(A375931(n+2))`
-/

namespace A356838.P7873880734695554020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A375931 (n + 2)).toNat

end

end A356838.P7873880734695554020

/-! ## A356838.P15167356358584132715

`p?[A126773(A261969(n+1))]`
-/

namespace A356838.P15167356358584132715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126773 (A261969 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A356838.P15167356358584132715

/-! ## A356838.P6800832930162175211

`A126773(A261969(n+1)+Δ[A261969(n+1)])`
-/

namespace A356838.P6800832930162175211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126773 (A261969 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A356838.P6800832930162175211

/-! ## A356838.P5959742404244471781

`A067695(A295417(n+2))`
-/

namespace A356838.P5959742404244471781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (A295417 (n + 2)).toNat

end

end A356838.P5959742404244471781

/-! ## A356838.P13906971847613091229

`A067695(A304768(n+2))`
-/

namespace A356838.P13906971847613091229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (A304768 (n + 2)).toNat

end

end A356838.P13906971847613091229

/-! ## A356838.P5307612320093103249

`A356840(A285109(n+2))`
-/

namespace A356838.P5307612320093103249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356840 (A285109 (n + 2)).toNat

end

end A356838.P5307612320093103249

/-! ## A356838.P8954403444307352638

`A356840((n+2)*A020639(n+2))`
-/

namespace A356838.P8954403444307352638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356840 ((n + 2 : ℤ) * A020639 (n + 2)).toNat

end

end A356838.P8954403444307352638

/-!
# A356839: a(n) = A005132(2*n) + A005132(2*n+1).

The programs for A356839, there is no canonical definition to state claims against.
-/

/-! ## A356839.P10679517192182561107

`A005132(2*n)+A005132(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356839.P10679517192182561107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (2 * n) + A005132 (2 * n + 1)

end

end A356839.P10679517192182561107

/-! ## A356839.P8564939676745906239

`Δ[A065056(A004273(n))]`
-/

namespace A356839.P8564939676745906239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065056 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A356839.P8564939676745906239

/-! ## A356839.P7643442657310994153

`Δ[A065056(A004277(n)-1)]`
-/

namespace A356839.P7643442657310994153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065056 (A004277 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A356839.P7643442657310994153

/-! ## A356839.P987274958742552466

`Δ[A065056(A028310(n)+n-1)]`
-/

namespace A356839.P987274958742552466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065056 (A028310 n + ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A356839.P987274958742552466

/-! ## A356839.P18024905652141749928

`A210605(n+1)+A210604(n+1)`
-/

namespace A356839.P18024905652141749928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210605 (n + 1) + A210604 (n + 1)

end

end A356839.P18024905652141749928

/-! ## A356839.P14638640355391322614

`A210605(n+1)+A005132(2*n)`
-/

namespace A356839.P14638640355391322614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210605 (n + 1) + A005132 (2 * n)

end

end A356839.P14638640355391322614

/-! ## A356839.P12212170987442221957

`A065056(2*n+1)-A065056(A004273(n))`
-/

namespace A356839.P12212170987442221957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065056 (2 * n + 1) - A065056 (A004273 n).toNat

end

end A356839.P12212170987442221957

/-! ## A356839.P1614684451250250282

`A209386(2*n)+A160356(2*n+1)`
-/

namespace A356839.P1614684451250250282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209386 (2 * n) + A160356 (2 * n + 1)

end

end A356839.P1614684451250250282

/-! ## A356839.P17871605563057849602

`A160356(2*n+1)+A209387(2*n)-1`
-/

namespace A356839.P17871605563057849602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160356 (2 * n + 1) + (A209387 (2 * n) - 1)

end

end A356839.P17871605563057849602

/-! ## A356839.P10842420301065831511

`(A209386(2*n+1)+A209386(2*n))/2`
-/

namespace A356839.P10842420301065831511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209386 (2 * n + 1) + A209386 (2 * n) : ℚ) / 2

end

end A356839.P10842420301065831511

/-! ## A356839.P853243002719727825

`A014682(A209386(2*n+1)+A209386(2*n))`
-/

namespace A356839.P853243002719727825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A209386 (2 * n + 1) + A209386 (2 * n)).toNat

end

end A356839.P853243002719727825

/-! ## A356839.P18338799041521350053

`A004524(A209387(2*n+1))+A004524(A209387(2*n))`
-/

namespace A356839.P18338799041521350053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A209387 (2 * n + 1)).toNat + A004524 (A209387 (2 * n)).toNat

end

end A356839.P18338799041521350053

/-! ## A356839.P2693496084117989499

`A001281(A209386(2*n+1)+A209386(2*n))`
-/

namespace A356839.P2693496084117989499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A209386 (2 * n + 1) + A209386 (2 * n)).toNat

end

end A356839.P2693496084117989499

/-! ## A356839.P5358669450615550791

`A004525(A209386(2*n+1)+A209386(2*n))`
-/

namespace A356839.P5358669450615550791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A209386 (2 * n + 1) + A209386 (2 * n)).toNat

end

end A356839.P5358669450615550791

/-! ## A356839.P1450137026716348768

`A025480(A209386(2*n+1)+A209386(2*n))`
-/

namespace A356839.P1450137026716348768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A209386 (2 * n + 1) + A209386 (2 * n)).toNat

end

end A356839.P1450137026716348768

/-! ## A356839.P11771733516727105197

`A110654(A209386(2*n+1)+A209386(2*n))`
-/

namespace A356839.P11771733516727105197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A209386 (2 * n + 1) + A209386 (2 * n)).toNat

end

end A356839.P11771733516727105197

/-!
# A356840: Largest most common prime factor of n.

The programs for A356840, the canonical program `A356840.P5623154295231149571` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356840 has offset 2).

The definition of A356840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356840.P11018064952434248326

`A002034(A261969(n+2))`
-/

namespace A356840.P11018064952434248326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A261969 (n + 2)).toNat

end

end A356840.P11018064952434248326

namespace A356840

/-- `A002034(A261969(n+2))` -/
def P11018064952434248326.Spec : Prop :=
  ∀ n, P11018064952434248326.a n = A356840 (n + 2)

end A356840

/-! ## A356840.P17274802663219169811

`A006530(A375931(n+2))`
-/

namespace A356840.P17274802663219169811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A375931 (n + 2)).toNat

end

end A356840.P17274802663219169811

namespace A356840

/-- `A006530(A375931(n+2))` -/
def P17274802663219169811.Spec : Prop :=
  ∀ n, P17274802663219169811.a n = A356840 (n + 2)

end A356840

/-! ## A356840.P13840855140836836277

`p?[A088387(A261969(n+1))]`
-/

namespace A356840.P13840855140836836277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (A261969 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A356840.P13840855140836836277

namespace A356840

/-- `p?[A088387(A261969(n+1))]` -/
def P13840855140836836277.Spec : Prop :=
  ∀ n, P13840855140836836277.a n = A356840 (n + 2)

end A356840

/-! ## A356840.P5623154295231149571

`A006530(2*A261969(n+2))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A356840

/-- `A006530(2*A261969(n+2))` -/
def P5623154295231149571.Spec : Prop :=
  ∀ n, P5623154295231149571.a n = A356840 (n + 2)

theorem P5623154295231149571.correct : P5623154295231149571.Spec := by
  intro n
  simp only [A356840, Nat.add_sub_cancel]

end A356840

/-! ## A356840.P9495814177790011856

`A304180(A261969(sqrt(∑[2*n+1])+1))`
-/

namespace A356840.P9495814177790011856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304180 (A261969 (SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + 1)).toNat).toNat

end

end A356840.P9495814177790011856

namespace A356840

/-- `A304180(A261969(sqrt(∑[2*n+1])+1))` -/
def P9495814177790011856.Spec : Prop :=
  ∀ n, P9495814177790011856.a n = A356840 (n + 2)

end A356840

/-! ## A356840.P71090366362835746

`A085392(2*A261969(n+2))`
-/

namespace A356840.P71090366362835746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * A261969 (n + 2)).toNat

end

end A356840.P71090366362835746

namespace A356840

/-- `A085392(2*A261969(n+2))` -/
def P71090366362835746.Spec : Prop :=
  ∀ n, P71090366362835746.a n = A356840 (n + 2)

end A356840

/-! ## A356840.P18006847768995227205

`A006530(A261969(n+2)²)`
-/

namespace A356840.P18006847768995227205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A261969 (n + 2) ^ 2).toNat

end

end A356840.P18006847768995227205

namespace A356840

/-- `A006530(A261969(n+2)²)` -/
def P18006847768995227205.Spec : Prop :=
  ∀ n, P18006847768995227205.a n = A356840 (n + 2)

end A356840

/-! ## A356840.P1305285399981828086

`A088387(A261969(n+2)²)`
-/

namespace A356840.P1305285399981828086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (A261969 (n + 2) ^ 2).toNat

end

end A356840.P1305285399981828086

namespace A356840

/-- `A088387(A261969(n+2)²)` -/
def P1305285399981828086.Spec : Prop :=
  ∀ n, P1305285399981828086.a n = A356840 (n + 2)

end A356840

/-! ## A356840.P8359027232649234082

`A020639(A079881(A217434(n+2))²)`
-/

namespace A356840.P8359027232649234082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A079881 (A217434 (n + 2)).toNat ^ 2).toNat

end

end A356840.P8359027232649234082

namespace A356840

/-- `A020639(A079881(A217434(n+2))²)` -/
def P8359027232649234082.Spec : Prop :=
  ∀ n, P8359027232649234082.a n = A356840 (n + 2)

end A356840

/-! ## A356840.P9352243250091428137

`A359612(A295417(n+2))`
-/

namespace A356840.P9352243250091428137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359612 (A295417 (n + 2)).toNat

end

end A356840.P9352243250091428137

namespace A356840

/-- `A359612(A295417(n+2))` -/
def P9352243250091428137.Spec : Prop :=
  ∀ n, P9352243250091428137.a n = A356840 (n + 2)

end A356840

/-! ## A356840.P17057807487061415790

`A080367(A304768(n+2))`
-/

namespace A356840.P17057807487061415790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080367 (A304768 (n + 2)).toNat

end

end A356840.P17057807487061415790

namespace A356840

/-- `A080367(A304768(n+2))` -/
def P17057807487061415790.Spec : Prop :=
  ∀ n, P17057807487061415790.a n = A356840 (n + 2)

end A356840

/-!
# A356841: Numbers k such that the k-th composition in standard order covers an interval of positive integers (gapless).

The programs for A356841, there is no canonical definition to state claims against.
-/

/-! ## A356841.P1367264623850850394

`comp[A356842(n+1)]`
-/

namespace A356841.P1367264623850850394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A356841.P1367264623850850394

/-! ## A356841.P11667092376908124421

`eq[0, A117371(A333219(n+1))]`
-/

namespace A356841.P11667092376908124421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117371 (A333219 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356841.P11667092376908124421

/-! ## A356841.P5483104425228294693

`∪[A333217(n+1), A356843(n+1)]`
-/

namespace A356841.P5483104425228294693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356841.P5483104425228294693

/-!
# A356842: Numbers k such that the k-th composition in standard order does not cover an interval of positive integers (not gapless).

The programs for A356842, there is no canonical definition to state claims against.
-/

/-! ## A356842.P12542914343383882918

`lt[1, A286470(A333219(n+1))]`
-/

namespace A356842.P12542914343383882918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (A333219 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A356842.P12542914343383882918

/-! ## A356842.P16642025068264338678

`lt[A034876(2*n+1), A073490(A333219(n+1))]`
-/

namespace A356842.P16642025068264338678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034876 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A333219 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356842.P16642025068264338678

/-! ## A356842.P12910609404975985988

`lt[A024155(2*n+5), A073490(A333219(n+1))]`
-/

namespace A356842.P12910609404975985988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A333219 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356842.P12910609404975985988

/-! ## A356842.P14838604347363612722

`comp[A356841(n+1)]`
-/

namespace A356842.P14838604347363612722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A356842.P14838604347363612722

/-!
# A356843: Numbers k such that the k-th composition in standard order covers an interval of positive integers (gapless) but contains no 1's.

The programs for A356843, there is no canonical definition to state claims against.
-/

/-! ## A356843.P2797404097642550662

`lt[A333766(n), A333768(n)²]`
-/

namespace A356843.P2797404097642550662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356843.P2797404097642550662

/-! ## A356843.P7295920705885595569

`filter[A356841(n+2), A085405(#)]`
-/

namespace A356843.P7295920705885595569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356841 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085405 (f1 j).toNat = 1) n)

end

end A356843.P7295920705885595569

/-! ## A356843.P10823246907831325617

`lt[A087117(3*n+1), A333768(n)]`
-/

namespace A356843.P10823246907831325617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356843.P10823246907831325617

/-! ## A356843.P9593393215002034375

`∩[A022340(n+1), A356841(n+1)]`
-/

namespace A356843.P9593393215002034375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356843.P9593393215002034375

/-! ## A356843.P13408886787894662568

`∩[comp[A333217(n+1)], A356841(n+1)]`
-/

namespace A356843.P13408886787894662568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333217 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A356843.P13408886787894662568

/-!
# A356844: Numbers k such that the k-th composition in standard order contains at least one 1. Numbers that are odd or whose binary expansion contains at least two adjacent 1's.

The programs for A356844, the canonical program `A356844.P3472404750105698882` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356844 has offset 1).

The definition of A356844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356844.P4696809715188033841

`comp[xor(n, 3*n)]`
-/

namespace A356844.P4696809715188033841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A356844.P4696809715188033841

namespace A356844

/-- `comp[xor(n, 3*n)]` -/
def P4696809715188033841.Spec : Prop :=
  ∀ n, (P4696809715188033841.a n : ℤ) = A356844 (n + 1)

end A356844

/-! ## A356844.P13792005891016952179

`comp[and(2*n, -n)]`
-/

namespace A356844.P13792005891016952179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A356844.P13792005891016952179

namespace A356844

/-- `comp[and(2*n, -n)]` -/
def P13792005891016952179.Spec : Prop :=
  ∀ n, (P13792005891016952179.a n : ℤ) = A356844 (n + 1)

end A356844

/-! ## A356844.P3472404750105698882

`lt[0, and(n, ceil(n/2))]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A356844

/-- `lt[0, and(n, ceil(n/2))]` -/
def P3472404750105698882.Spec : Prop :=
  ∀ n, (P3472404750105698882.a n : ℤ) = A356844 (n + 1)

theorem P3472404750105698882.correct : P3472404750105698882.Spec := by
  intro n
  simp only [A356844, Nat.add_sub_cancel]

end A356844

/-! ## A356844.P9156742735717665150

`comp[or(n, 2*n)-n]`
-/

namespace A356844.P9156742735717665150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (2 * n) : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A356844.P9156742735717665150

namespace A356844

/-- `comp[or(n, 2*n)-n]` -/
def P9156742735717665150.Spec : Prop :=
  ∀ n, (P9156742735717665150.a n : ℤ) = A356844 (n + 1)

end A356844

/-! ## A356844.P11748890173494352837

`comp[n-and(n, 3*n)]`
-/

namespace A356844.P11748890173494352837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (3 * n) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A356844.P11748890173494352837

namespace A356844

/-- `comp[n-and(n, 3*n)]` -/
def P11748890173494352837.Spec : Prop :=
  ∀ n, (P11748890173494352837.a n : ℤ) = A356844 (n + 1)

end A356844

/-! ## A356844.P5056817178813075086

`lt[-and(n, 2*n+1), 0]`
-/

namespace A356844.P5056817178813075086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.land n (2 * n + 1) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A356844.P5056817178813075086

namespace A356844

/-- `lt[-and(n, 2*n+1), 0]` -/
def P5056817178813075086.Spec : Prop :=
  ∀ n, (P5056817178813075086.a n : ℤ) = A356844 (n + 1)

end A356844

/-! ## A356844.P13494434671843418094

`lt[0, and(n, 2*n+1)²]`
-/

namespace A356844.P13494434671843418094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356844.P13494434671843418094

namespace A356844

/-- `lt[0, and(n, 2*n+1)²]` -/
def P13494434671843418094.Spec : Prop :=
  ∀ n, (P13494434671843418094.a n : ℤ) = A356844 (n + 1)

end A356844

/-! ## A356844.P11858768039544840000

`comp[eq[0, and(n+1, 2*n)]]`
-/

namespace A356844.P11858768039544840000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A356844.P11858768039544840000

namespace A356844

/-- `comp[eq[0, and(n+1, 2*n)]]` -/
def P11858768039544840000.Spec : Prop :=
  ∀ n, (P11858768039544840000.a n : ℤ) = A356844 (n + 1)

end A356844

/-! ## A356844.P13702602078928898824

`lt[0, and(n+1, 2*n)^9]`
-/

namespace A356844.P13702602078928898824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (2 * n) ^ 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356844.P13702602078928898824

namespace A356844

/-- `lt[0, and(n+1, 2*n)^9]` -/
def P13702602078928898824.Spec : Prop :=
  ∀ n, (P13702602078928898824.a n : ℤ) = A356844 (n + 1)

end A356844

/-! ## A356844.P16187386013750990120

`lt[or(n+1, 2*n), 3*n]`
-/

namespace A356844.P16187386013750990120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 1) (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356844.P16187386013750990120

namespace A356844

/-- `lt[or(n+1, 2*n), 3*n]` -/
def P16187386013750990120.Spec : Prop :=
  ∀ n, (P16187386013750990120.a n : ℤ) = A356844 (n + 1)

end A356844

/-! ## A356844.P2907445533678416223

`lt[xor(n+1, 2*n), 3*n]`
-/

namespace A356844.P2907445533678416223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356844.P2907445533678416223

namespace A356844

/-- `lt[xor(n+1, 2*n), 3*n]` -/
def P2907445533678416223.Spec : Prop :=
  ∀ n, (P2907445533678416223.a n : ℤ) = A356844 (n + 1)

end A356844

/-! ## A356844.P3554967057072561529

`eq[0, C(2, and(n+1, 2*n)²)]`
-/

namespace A356844.P3554967057072561529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land (n + 1) (2 * n) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356844.P3554967057072561529

namespace A356844

/-- `eq[0, C(2, and(n+1, 2*n)²)]` -/
def P3554967057072561529.Spec : Prop :=
  ∀ n, (P3554967057072561529.a n : ℤ) = A356844 (n + 1)

end A356844

/-! ## A356844.P9195347489845025164

`lt[and(n, -(2*n)), n-1]-1`
-/

namespace A356844.P9195347489845025164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(2 * n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A356844.P9195347489845025164

namespace A356844

/-- `lt[and(n, -(2*n)), n-1]-1` -/
def P9195347489845025164.Spec : Prop :=
  ∀ n, P9195347489845025164.a n = A356844 (n + 1)

end A356844

/-! ## A356844.P5429582700432856964

`eq[0, C(2, and(n+1, 2*n)+1)]`
-/

namespace A356844.P5429582700432856964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land (n + 1) (2 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356844.P5429582700432856964

namespace A356844

/-- `eq[0, C(2, and(n+1, 2*n)+1)]` -/
def P5429582700432856964.Spec : Prop :=
  ∀ n, (P5429582700432856964.a n : ℤ) = A356844 (n + 1)

end A356844

/-! ## A356844.P5505863521811982261

`eq[0, floor(1/and(2*n+1, n+1))]`
-/

namespace A356844.P5505863521811982261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (Nat.land (2 * n + 1) (n + 1) : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356844.P5505863521811982261

namespace A356844

/-- `eq[0, floor(1/and(2*n+1, n+1))]` -/
def P5505863521811982261.Spec : Prop :=
  ∀ n, (P5505863521811982261.a n : ℤ) = A356844 (n + 1)

end A356844

/-! ## A356844.P7078617743983055396

`comp[or(n, 2*n+1)%(2*n+1)]`
-/

namespace A356844.P7078617743983055396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 * n + 1) % (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A356844.P7078617743983055396

namespace A356844

/-- `comp[or(n, 2*n+1)%(2*n+1)]` -/
def P7078617743983055396.Spec : Prop :=
  ∀ n, (P7078617743983055396.a n : ℤ) = A356844 (n + 1)

end A356844

/-! ## A356844.P9908916764436419584

`comp[A022340(n)]`
-/

namespace A356844.P9908916764436419584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A356844.P9908916764436419584

namespace A356844

/-- `comp[A022340(n)]` -/
def P9908916764436419584.Spec : Prop :=
  ∀ n, (P9908916764436419584.a n : ℤ) = A356844 (n + 1)

end A356844

/-! ## A356844.P5700319548350335445

`comp[A124108(n)]`
-/

namespace A356844.P5700319548350335445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124108 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A356844.P5700319548350335445

namespace A356844

/-- `comp[A124108(n)]` -/
def P5700319548350335445.Spec : Prop :=
  ∀ n, (P5700319548350335445.a n : ℤ) = A356844 (n + 1)

end A356844

/-! ## A356844.P2534169764191300545

`comp[A178729(n)]`
-/

namespace A356844.P2534169764191300545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178729 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A356844.P2534169764191300545

namespace A356844

/-- `comp[A178729(n)]` -/
def P2534169764191300545.Spec : Prop :=
  ∀ n, (P2534169764191300545.a n : ℤ) = A356844 (n + 1)

end A356844

/-! ## A356844.P6192373942824051950

`eq[0, A085405(n)]`
-/

namespace A356844.P6192373942824051950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085405 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356844.P6192373942824051950

namespace A356844

/-- `eq[0, A085405(n)]` -/
def P6192373942824051950.Spec : Prop :=
  ∀ n, (P6192373942824051950.a n : ℤ) = A356844 (n + 1)

end A356844

/-!
# A356845: Odd numbers with gapless prime indices.

The programs for A356845, the canonical program `A356845.P13701475926047040906` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356845 has offset 1).

The definition of A356845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356845.P15438421605008984717

`∩[2*n+1, A073491(n+1)]`
-/

namespace A356845.P15438421605008984717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356845.P15438421605008984717

namespace A356845

/-- `∩[2*n+1, A073491(n+1)]` -/
def P15438421605008984717.Spec : Prop :=
  ∀ n, (P15438421605008984717.a n : ℤ) = A356845 (n + 1)

end A356845

/-! ## A356845.P1512065374876543731

`filter[2*n+1, A137794(#)]`
-/

namespace A356845.P1512065374876543731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j) = 1) n)

end

end A356845.P1512065374876543731

namespace A356845

/-- `filter[2*n+1, A137794(#)]` -/
def P1512065374876543731.Spec : Prop :=
  ∀ n, (P1512065374876543731.a n : ℤ) = A356845 (n + 1)

end A356845

/-! ## A356845.P9836251949238705809

`record[gcd((n+1)/2^val(n+1, 2), A117371(n+1))]`
-/

namespace A356845.P9836251949238705809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (A117371 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356845.P9836251949238705809

namespace A356845

/-- `record[gcd((n+1)/2^val(n+1, 2), A117371(n+1))]` -/
def P9836251949238705809.Spec : Prop :=
  ∀ n, (P9836251949238705809.a n : ℤ) = A356845 (n + 1)

end A356845

/-! ## A356845.P13701475926047040906

`eq[ϕ/a(n-1), A137794(n+1)]+1` with `a(0)=1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A356845

/-- `eq[ϕ/a(n-1), A137794(n+1)]+1` -/
def P13701475926047040906.Spec : Prop :=
  ∀ n, (P13701475926047040906.a n : ℤ) = A356845 (n + 1)

theorem P13701475926047040906.correct : P13701475926047040906.Spec := by
  intro n
  simp only [A356845, Nat.add_sub_cancel]

end A356845

/-! ## A356845.P5746029630202509194

`∩[A073491(n+1), A004273(n)]`
-/

namespace A356845.P5746029630202509194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356845.P5746029630202509194

namespace A356845

/-- `∩[A073491(n+1), A004273(n)]` -/
def P5746029630202509194.Spec : Prop :=
  ∀ n, (P5746029630202509194.a n : ℤ) = A356845 (n + 1)

end A356845

/-! ## A356845.P4071632588048518496

`∩[A073491(n+1), A060747(n)]`
-/

namespace A356845.P4071632588048518496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356845.P4071632588048518496

namespace A356845

/-- `∩[A073491(n+1), A060747(n)]` -/
def P4071632588048518496.Spec : Prop :=
  ∀ n, (P4071632588048518496.a n : ℤ) = A356845 (n + 1)

end A356845

/-! ## A356845.P15182770887845666951

`record[A074044(2*n+1)]`
-/

namespace A356845.P15182770887845666951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074044 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356845.P15182770887845666951

namespace A356845

/-- `record[A074044(2*n+1)]` -/
def P15182770887845666951.Spec : Prop :=
  ∀ n, P15182770887845666951.a n = A356845 (n + 1)

end A356845

/-! ## A356845.P5201002603426678539

`record[or((-1)^n, A074044(n+1))]`
-/

namespace A356845.P5201002603426678539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((-1) ^ n) (A074044 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356845.P5201002603426678539

namespace A356845

/-- `record[or((-1)^n, A074044(n+1))]` -/
def P5201002603426678539.Spec : Prop :=
  ∀ n, P5201002603426678539.a n = A356845 (n + 1)

end A356845

/-! ## A356845.P3066077197754923009

`eq[n%2, A287170(round(acot(n)+n))]`
-/

namespace A356845.P3066077197754923009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356845.P3066077197754923009

namespace A356845

/-- `eq[n%2, A287170(round(acot(n)+n))]` -/
def P3066077197754923009.Spec : Prop :=
  ∀ n, (P3066077197754923009.a n : ℤ) = A356845 (n + 1)

end A356845

/-! ## A356845.P13228286427766824379

`2*lt[A287170(2*n+1), 2]+1`
-/

namespace A356845.P13228286427766824379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A356845.P13228286427766824379

namespace A356845

/-- `2*lt[A287170(2*n+1), 2]+1` -/
def P13228286427766824379.Spec : Prop :=
  ∀ n, (P13228286427766824379.a n : ℤ) = A356845 (n + 1)

end A356845

/-! ## A356845.P10688368194027947331

`filter[A073491(n+1), A000035(#)]`
-/

namespace A356845.P10688368194027947331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A356845.P10688368194027947331

namespace A356845

/-- `filter[A073491(n+1), A000035(#)]` -/
def P10688368194027947331.Spec : Prop :=
  ∀ n, P10688368194027947331.a n = A356845 (n + 1)

end A356845

/-! ## A356845.P11607017748715303051

`∩[A073491(n+1), A231564(n+1)]`
-/

namespace A356845.P11607017748715303051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356845.P11607017748715303051

namespace A356845

/-- `∩[A073491(n+1), A231564(n+1)]` -/
def P11607017748715303051.Spec : Prop :=
  ∀ n, (P11607017748715303051.a n : ℤ) = A356845 (n + 1)

end A356845

/-!
# A356846: Number of integer compositions of n into parts not covering an interval of positive integers.

The programs for A356846, there is no canonical definition to state claims against.
-/

/-! ## A356846.P2361193288782114838

`A011782(n)-A107428(A028310(n))`
-/

namespace A356846.P2361193288782114838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A107428 (A028310 n).toNat

end

end A356846.P2361193288782114838

/-! ## A356846.P10524856887254343687

`A295556(A175378(n+1))`
-/

namespace A356846.P10524856887254343687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295556 (A175378 (n + 1)).toNat

end

end A356846.P10524856887254343687

/-! ## A356846.P15116469727018126960

`A135665(A287278(n))`
-/

namespace A356846.P15116469727018126960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A287278 n).toNat

end

end A356846.P15116469727018126960

/-! ## A356846.P9168206465871625004

`A135665(A287585(n))`
-/

namespace A356846.P9168206465871625004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A287585 n).toNat

end

end A356846.P9168206465871625004

/-! ## A356846.P12483796151545157835

`A171944(A287776(n))`
-/

namespace A356846.P12483796151545157835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171944 (A287776 n).toNat

end

end A356846.P12483796151545157835

/-!
# A356847: Greedily choose a(n) to be the least prime p > a(n-1) such that all sums a(i) + a(j) - 1, 1 <= i < j, are also prime.

The programs for A356847, there is no canonical definition to state claims against.
-/

/-! ## A356847.P15744300512998115314

`round(A175532(n+2)/2)`
-/

namespace A356847.P15744300512998115314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A175532 (n + 2) : ℚ) / 2)

end

end A356847.P15744300512998115314

/-! ## A356847.P2740614909519771463

`A006530(A175532(n+2)+1)`
-/

namespace A356847.P2740614909519771463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A175532 (n + 2) + 1).toNat

end

end A356847.P2740614909519771463

/-!
# A356848: Expansion of g.f. A(x) satisfying A(x) = x * Sum_{n>=0} d^n/dx^n x^(2*n-1) * A(x)^n / n!.

The programs for A356848, there is no canonical definition to state claims against.
-/

/-! ## A356848.P12719232968887990368

`xor(2, A119714(a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A356848.P12719232968887990368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.xor 2 (A119714 (a (n - 1)).toNat)

end

end A356848.P12719232968887990368

/-!
# A356849: a(n) = a(n-1) - a(n-2) + 3*a(n-3) with a(0) = 1, a(1) = 2 and a(2) = 4.

The programs for A356849, the canonical program `A356849.P14452545432592652150` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356849 has offset 0).

The definition of A356849 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-a(n-2)+3*a(n-3)` (program `A356849.P14452545432592652150`, by `A356849.P14452545432592652150.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356849.P14452545432592652150

`a(n-1)-a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A356849

/-- `a(n-1)-a(n-2)+3*a(n-3)` -/
def P14452545432592652150.Spec : Prop :=
  ∀ n, P14452545432592652150.a n = A356849 n

theorem P14452545432592652150.correct : P14452545432592652150.Spec := by
  intro n
  simp only [A356849]

end A356849

/-! ## A356849.P11984660142453649465

`ogf((1+x+3x^2)/(1-x+x^2-3x^3))`
-/

namespace A356849.P11984660142453649465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3] [1, -1, 1, -3] n

end

end A356849.P11984660142453649465

namespace A356849

/-- `ogf((1+x+3x^2)/(1-x+x^2-3x^3))` -/
def P11984660142453649465.Spec : Prop :=
  ∀ n, P11984660142453649465.a n = A356849 n

end A356849

/-! ## A356849.P13213163909755016633

`a(n-1)-(a(n-2)-3*a(n-3))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A356849.P13213163909755016633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) - (a (n - 2) - 3 * a (n - 3))

end

end A356849.P13213163909755016633

namespace A356849

/-- `a(n-1)-(a(n-2)-3*a(n-3))` -/
def P13213163909755016633.Spec : Prop :=
  ∀ n, P13213163909755016633.a n = A356849 n

theorem P13213163909755016633.correct : P13213163909755016633.Spec := by
  intro n
  simp only [A356849, Nat.add_sub_cancel, A356849.P13213163909755016633.a, A356849.P14452545432592652150.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A356849

/-! ## A356849.P392062369782336069

`A042942(n+1)-A249093(A085449(n+3))`
-/

namespace A356849.P392062369782336069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042942 (n + 1) - A249093 (A085449 (n + 3)).toNat

end

end A356849.P392062369782336069

namespace A356849

/-- `A042942(n+1)-A249093(A085449(n+3))` -/
def P392062369782336069.Spec : Prop :=
  ∀ n, P392062369782336069.a n = A356849 n

end A356849

/-!
# A356850: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest positive number not occurring earlier such that a(n) is coprime to the previous Omega(a(n)) terms.

The programs for A356850, there is no canonical definition to state claims against.
-/

/-! ## A356850.P4943162300617812043

`A084937(n+1)+A000122(A013576(n+3))`
-/

namespace A356850.P4943162300617812043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (n + 1) + A000122 (A013576 (n + 3)).toNat

end

end A356850.P4943162300617812043

/-! ## A356850.P11747958609124972250

`or(A084937(n+1), A118917(A183176(n+1)))`
-/

namespace A356850.P11747958609124972250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084937 (n + 1)) (A118917 (A183176 (n + 1)).toNat)

end

end A356850.P11747958609124972250

/-! ## A356850.P5986900599691057229

`or(A084937(n+1), A324179(A295091(n+1)))`
-/

namespace A356850.P5986900599691057229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084937 (n + 1)) (A324179 (A295091 (n + 1)).toNat)

end

end A356850.P5986900599691057229

/-! ## A356850.P10129341348556766300

`or(A084937(n+1), A104488(A103609(3*(n+1))))`
-/

namespace A356850.P10129341348556766300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084937 (n + 1)) (A104488 (A103609 (3 * (n + 1))).toNat)

end

end A356850.P10129341348556766300

/-!
# A356852: Minimum over all order two bases for the interval [1, n] of the maximum number of ways some number in the interval [1, n] can be written as a sum of at most two elements of the basis.

The programs for A356852, the canonical program `A356852.P6348023218238720434` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356852 has offset 1).

The definition of A356852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356852.P6216839683181206212

`A055642(A206437(n+1)+A047366(n+1))`
-/

namespace A356852.P6216839683181206212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A206437 (n + 1) + A047366 (n + 1)).toNat

end

end A356852.P6216839683181206212

namespace A356852

/-- `A055642(A206437(n+1)+A047366(n+1))` -/
def P6216839683181206212.Spec : Prop :=
  ∀ n, P6216839683181206212.a n = A356852 (n + 1)

end A356852

/-! ## A356852.P6348023218238720434

`A055642(A245920(n)+A053738(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A356852

/-- `A055642(A245920(n)+A053738(n+1))` -/
def P6348023218238720434.Spec : Prop :=
  ∀ n, P6348023218238720434.a n = A356852 (n + 1)

theorem P6348023218238720434.correct : P6348023218238720434.Spec := by
  intro n
  simp only [A356852, Nat.add_sub_cancel]

end A356852

/-! ## A356852.P17237161632226694961

`A055642(lt[A060184(n+1), A055642(2*(n+1))])`
-/

namespace A356852.P17237161632226694961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356852.P17237161632226694961

namespace A356852

/-- `A055642(lt[A060184(n+1), A055642(2*(n+1))])` -/
def P17237161632226694961.Spec : Prop :=
  ∀ n, P17237161632226694961.a n = A356852 (n + 1)

end A356852

/-! ## A356852.P16072386042241342020

`A085310(floor(sqrt(A260998(n+1))))`
-/

namespace A356852.P16072386042241342020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085310 (Int.sqrt (A260998 (n + 1))).toNat

end

end A356852.P16072386042241342020

namespace A356852

/-- `A085310(floor(sqrt(A260998(n+1))))` -/
def P16072386042241342020.Spec : Prop :=
  ∀ n, P16072386042241342020.a n = A356852 (n + 1)

end A356852

/-! ## A356852.P5588884331019672414

`A248103(floor(sqrt(A260998(n+1))))`
-/

namespace A356852.P5588884331019672414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248103 (Int.sqrt (A260998 (n + 1))).toNat

end

end A356852.P5588884331019672414

namespace A356852

/-- `A248103(floor(sqrt(A260998(n+1))))` -/
def P5588884331019672414.Spec : Prop :=
  ∀ n, P5588884331019672414.a n = A356852 (n + 1)

end A356852

/-! ## A356852.P5656099305783510325

`A260998(floor(sqrt(A260998(n+1))))`
-/

namespace A356852.P5656099305783510325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260998 (Int.sqrt (A260998 (n + 1))).toNat

end

end A356852.P5656099305783510325

namespace A356852

/-- `A260998(floor(sqrt(A260998(n+1))))` -/
def P5656099305783510325.Spec : Prop :=
  ∀ n, P5656099305783510325.a n = A356852 (n + 1)

end A356852

/-! ## A356852.P5534377444843833441

`A055642(A336772(2*n+1))-1`
-/

namespace A356852.P5534377444843833441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A336772 (2 * n + 1)).toNat - 1

end

end A356852.P5534377444843833441

namespace A356852

/-- `A055642(A336772(2*n+1))-1` -/
def P5534377444843833441.Spec : Prop :=
  ∀ n, P5534377444843833441.a n = A356852 (n + 1)

end A356852

/-! ## A356852.P448388329605933876

`A055642(A165723(2*n+3)+A066022(n+1))`
-/

namespace A356852.P448388329605933876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A165723 (2 * n + 3) + A066022 (n + 1)).toNat

end

end A356852.P448388329605933876

namespace A356852

/-- `A055642(A165723(2*n+3)+A066022(n+1))` -/
def P448388329605933876.Spec : Prop :=
  ∀ n, P448388329605933876.a n = A356852 (n + 1)

end A356852

/-! ## A356852.P8241809210173427720

`A055642(A035103(n+5)+A029900(n))`
-/

namespace A356852.P8241809210173427720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A035103 (n + 5) + A029900 n).toNat

end

end A356852.P8241809210173427720

namespace A356852

/-- `A055642(A035103(n+5)+A029900(n))` -/
def P8241809210173427720.Spec : Prop :=
  ∀ n, P8241809210173427720.a n = A356852 (n + 1)

end A356852

/-! ## A356852.P7084001263596752397

`A055642(A337125(n+1)+n)`
-/

namespace A356852.P7084001263596752397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A337125 (n + 1) + (n : ℤ)).toNat

end

end A356852.P7084001263596752397

namespace A356852

/-- `A055642(A337125(n+1)+n)` -/
def P7084001263596752397.Spec : Prop :=
  ∀ n, P7084001263596752397.a n = A356852 (n + 1)

end A356852

/-! ## A356852.P17224147697258626028

`A055642(abs(A000036(n+4)))`
-/

namespace A356852.P17224147697258626028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 |A000036 (n + 4)|.toNat

end

end A356852.P17224147697258626028

namespace A356852

/-- `A055642(abs(A000036(n+4)))` -/
def P17224147697258626028.Spec : Prop :=
  ∀ n, P17224147697258626028.a n = A356852 (n + 1)

end A356852

/-! ## A356852.P1504981970936740283

`floor(∑[A135975(n+1)]/(n+2))`
-/

namespace A356852.P1504981970936740283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 2 : ℚ)⌋

end

end A356852.P1504981970936740283

namespace A356852

/-- `floor(∑[A135975(n+1)]/(n+2))` -/
def P1504981970936740283.Spec : Prop :=
  ∀ n, P1504981970936740283.a n = A356852 (n + 1)

end A356852

/-! ## A356852.P13030083099101651501

`floor(root(p?[A310001(3*n+2)], 7))`
-/

namespace A356852.P13030083099101651501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310001 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) ^ (1 / (7 : ℝ))⌋

end

end A356852.P13030083099101651501

namespace A356852

/-- `floor(root(p?[A310001(3*n+2)], 7))` -/
def P13030083099101651501.Spec : Prop :=
  ∀ n, P13030083099101651501.a n = A356852 (n + 1)

end A356852

/-! ## A356852.P4116208435323865377

`A319951(A090192(2*(n+1))+A074279(n+1))`
-/

namespace A356852.P4116208435323865377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A090192 (2 * (n + 1)) + A074279 (n + 1)).toNat

end

end A356852.P4116208435323865377

namespace A356852

/-- `A319951(A090192(2*(n+1))+A074279(n+1))` -/
def P4116208435323865377.Spec : Prop :=
  ∀ n, P4116208435323865377.a n = A356852 (n + 1)

end A356852

/-! ## A356852.P7173199905787849475

`A055642(lt[A271592(n+1), A344616(n+1)])`
-/

namespace A356852.P7173199905787849475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356852.P7173199905787849475

namespace A356852

/-- `A055642(lt[A271592(n+1), A344616(n+1)])` -/
def P7173199905787849475.Spec : Prop :=
  ∀ n, P7173199905787849475.a n = A356852 (n + 1)

end A356852

/-!
# A356853: Number of permutations p of [2n+1] such that at most one element of {p(1),...,p(i-1)} is between p(i) and p(i+1) for all i <= 2n and p(2n+1) = n+1.

The programs for A356853, there is no canonical definition to state claims against.
-/

/-! ## A356853.P15938988279035864594

`A356692(∑[4*n])`
-/

namespace A356853.P15938988279035864594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356692 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A356853.P15938988279035864594

/-! ## A356853.P15237761340064836989

`A356692(A046092(n))+A080225(2*n+1)`
-/

namespace A356853.P15237761340064836989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356692 (A046092 n).toNat + A080225 (2 * n + 1)

end

end A356853.P15237761340064836989

/-! ## A356853.P9703976098774560271

`A356692(A046092(n))/A318453(2*n+1)`
-/

namespace A356853.P9703976098774560271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356692 (A046092 n).toNat : ℚ) / (A318453 (2 * n + 1) : ℚ)

end

end A356853.P9703976098774560271

/-!
# A356854: Palindromes that can be written in more than one way as the sum of two distinct palindromic primes.

The programs for A356854, there is no canonical definition to state claims against.
-/

/-! ## A356854.P13267295705824959041

`A356881(A167619(n+2))`
-/

namespace A356854.P13267295705824959041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356881 (A167619 (n + 2)).toNat

end

end A356854.P13267295705824959041

/-! ## A356854.P992134065718939881

`A356881(A064704(n+2))`
-/

namespace A356854.P992134065718939881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356881 (A064704 (n + 2)).toNat

end

end A356854.P992134065718939881

/-! ## A356854.P2888731050050910101

`A356881(A083136(n+2))`
-/

namespace A356854.P2888731050050910101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356881 (A083136 (n + 2)).toNat

end

end A356854.P2888731050050910101

/-! ## A356854.P18067631266907777831

`A356881(A117057(n+2))`
-/

namespace A356854.P18067631266907777831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356881 (A117057 (n + 2)).toNat

end

end A356854.P18067631266907777831

/-! ## A356854.P7896956142208054939

`A356881(A277856(n+2))`
-/

namespace A356854.P7896956142208054939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356881 (A277856 (n + 2)).toNat

end

end A356854.P7896956142208054939

/-!
# A356855: a(n) is the least number m such that u defined by u(i) = bigomega(m + 2i) satisfies u(i) = u(0) for 0 <= i < n and u(n) != u(0), or -1 if no such number exists.

The programs for A356855, there is no canonical definition to state claims against.
-/

/-! ## A356855.P5543251620644812926

`A113457(n+1)+A063725(A059316(n+1))`
-/

namespace A356855.P5543251620644812926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113457 (n + 1) + A063725 (A059316 (n + 1)).toNat

end

end A356855.P5543251620644812926

/-! ## A356855.P1043834010973904854

`A113457(n+1)+A034968(A239446(2*n+1))`
-/

namespace A356855.P1043834010973904854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113457 (n + 1) + A034968 (A239446 (2 * n + 1)).toNat

end

end A356855.P1043834010973904854

/-!
# A356856: Primes p such that the least positive primitive root of p (A001918) divides p-1.

The programs for A356856, there is no canonical definition to state claims against.
-/

/-! ## A356856.P4445626778700203194

`eq[A003415(n), A130823(A343662(n+1))]`
-/

namespace A356856.P4445626778700203194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (A343662 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356856.P4445626778700203194

/-! ## A356856.P8839920143478294292

`A000040(lt[A104785(n+1), A008474(n+1)])`
-/

namespace A356856.P8839920143478294292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356856.P8839920143478294292

/-! ## A356856.P11876210927759168451

`A000040(lt[A104785(n+1), A319131(n+1)])`
-/

namespace A356856.P11876210927759168451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356856.P11876210927759168451

/-! ## A356856.P16609620425091645415

`p?[record[A194978(n+1)-1]]`
-/

namespace A356856.P16609620425091645415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194978 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A356856.P16609620425091645415

/-! ## A356856.P10122526692244314944

`A123318(A065385(n+1))`
-/

namespace A356856.P10122526692244314944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123318 (A065385 (n + 1)).toNat

end

end A356856.P10122526692244314944

/-!
# A356858: a(n) is the product of the first n numbers not divisible by 5.

The programs for A356858, there is no canonical definition to state claims against.
-/

/-! ## A356858.P5654788451767511225

`∏[∑[(C(n, 3)-n)%2+1]]`
-/

namespace A356858.P5654788451767511225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.choose n 3 : ℤ) - (n : ℤ)) 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A356858.P5654788451767511225

/-! ## A356858.P12959562209244155762

`∏[a(n-4)+5]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A356858.P12959562209244155762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3, 4] fun n f1 =>
  f1 (n - 4) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A356858.P12959562209244155762

/-! ## A356858.P10814889051314064728

`floor((n-1)/4+n)*a(n-1)` with `a(0)=1`
-/

namespace A356858.P10814889051314064728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((n : ℤ) - 1 : ℚ) / 4 + (n : ℚ)⌋ * a (n - 1)

end

end A356858.P10814889051314064728

/-! ## A356858.P6809916098164423929

`a(n-1)*A047201(n)` with `a(0)=1`
-/

namespace A356858.P6809916098164423929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A047201 n

end

end A356858.P6809916098164423929

/-! ## A356858.P2988334785333677536

`∏[comp[5*n]]/comp[5*n]`
-/

namespace A356858.P2988334785333677536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℚ)

end

end A356858.P2988334785333677536

/-!
# A356859: a(n) is the number of zero digits in the product of the first n numbers not divisible by 5.

The programs for A356859, there is no canonical definition to state claims against.
-/

/-! ## A356859.P3435038554639221309

`A356860(n)-A356861(n)`
-/

namespace A356859.P3435038554639221309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356860 n - A356861 n

end

end A356859.P3435038554639221309

/-! ## A356859.P13565357630341955065

`A356860(n)+A001478(A356861(n)+1)+1`
-/

namespace A356859.P13565357630341955065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356860 n + (A001478 (A356861 n + 1).toNat + 1)

end

end A356859.P13565357630341955065

/-! ## A356859.P18230774004140039596

`∑{digits}[A356858(n), A000007(#)]`
-/

namespace A356859.P18230774004140039596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 x).sum

end

end A356859.P18230774004140039596

/-! ## A356859.P14074464287201932975

`∑{digits}[A356858(n), A055641(#)]`
-/

namespace A356859.P14074464287201932975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055641 x).sum

end

end A356859.P14074464287201932975

/-! ## A356859.P425076754826046063

`A083025(A320922(n+1)*A341143(n))`
-/

namespace A356859.P425076754826046063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (A320922 (n + 1) * A341143 (n + 22)).toNat

end

end A356859.P425076754826046063

/-!
# A356860: a(n) is the number of digits in the product of the first n numbers not divisible by 5.

The programs for A356860, there is no canonical definition to state claims against.
-/

/-! ## A356860.P16542957610102088643

`A356861(n)+A356859(n)`
-/

namespace A356860.P16542957610102088643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356861 n + A356859 n

end

end A356860.P16542957610102088643

/-! ## A356860.P1501768264162248970

`A356861(n)+∑{digits}[A356858(n), A000007(#)]`
-/

namespace A356860.P1501768264162248970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356861 n + ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 x).sum

end

end A356860.P1501768264162248970

/-! ## A356860.P4369672051548589675

`A356861(n)+∑{digits}[A356858(n), A055641(#)]`
-/

namespace A356860.P4369672051548589675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356861 n + ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055641 x).sum

end

end A356860.P4369672051548589675

/-! ## A356860.P4212854304456189705

`A356859(n)+∑{digits}[A356858(n), 1-A000007(#)]`
-/

namespace A356860.P4212854304456189705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356859 n + ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A000007 x).sum

end

end A356860.P4212854304456189705

/-! ## A356860.P18033011447224212534

`A356859(n)+∑{digits}[A356858(n), 1-A055641(#)]`
-/

namespace A356860.P18033011447224212534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356859 n + ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A055641 x).sum

end

end A356860.P18033011447224212534

/-!
# A356861: a(n) is the number of nonzero digits in the product of the first n numbers not divisible by 5.

The programs for A356861, there is no canonical definition to state claims against.
-/

/-! ## A356861.P4845919068477962515

`A356860(n)-A356859(n)`
-/

namespace A356861.P4845919068477962515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356860 n - A356859 n

end

end A356861.P4845919068477962515

/-! ## A356861.P8907022790446244043

`∑{digits}[A356858(n), A055640(#)]`
-/

namespace A356861.P8907022790446244043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055640 x).sum

end

end A356861.P8907022790446244043

/-! ## A356861.P8605476073561380469

`∑{digits}[A356858(n), 1-A000007(#)]`
-/

namespace A356861.P8605476073561380469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A000007 x).sum

end

end A356861.P8605476073561380469

/-! ## A356861.P5730241320875911696

`∑{digits}[A356858(n), 1-A055641(#)]`
-/

namespace A356861.P5730241320875911696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A055641 x).sum

end

end A356861.P5730241320875911696

/-! ## A356861.P13190880620172738625

`A217869(A005711(2*n+1))+A005711(n+1)`
-/

namespace A356861.P13190880620172738625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217869 (A005711 (2 * n + 1)).toNat + A005711 (n + 1)

end

end A356861.P13190880620172738625

/-!
# A356862: Numbers with a unique largest prime exponent.

The programs for A356862, the canonical program `A356862.P12392513446162725723` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356862 has offset 1).

The definition of A356862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4889 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356862.P12392513446162725723

`eq[1, A362611(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A356862

/-- `eq[1, A362611(n+1)]+1` -/
def P12392513446162725723.Spec : Prop :=
  ∀ n, (P12392513446162725723.a n : ℤ) = A356862 (n + 1)

theorem P12392513446162725723.correct : P12392513446162725723.Spec := by
  intro n
  simp only [A356862, Nat.add_sub_cancel]

end A356862

/-! ## A356862.P18158344845736128739

`eq[1, A001222(A261969(n+1))]+1`
-/

namespace A356862.P18158344845736128739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A261969 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356862.P18158344845736128739

namespace A356862

/-- `eq[1, A001222(A261969(n+1))]+1` -/
def P18158344845736128739.Spec : Prop :=
  ∀ n, (P18158344845736128739.a n : ℤ) = A356862 (n + 1)

end A356862

/-! ## A356862.P16310419060879745661

`eq[2, A020639(A238745(n+1))]+1`
-/

namespace A356862.P16310419060879745661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A238745 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356862.P16310419060879745661

namespace A356862

/-- `eq[2, A020639(A238745(n+1))]+1` -/
def P16310419060879745661.Spec : Prop :=
  ∀ n, (P16310419060879745661.a n : ℤ) = A356862 (n + 1)

end A356862

/-! ## A356862.P15499690587531012936

`eq[1, A195181(n)^val(A238745(n+1)+1, 2)]+1`
-/

namespace A356862.P15499690587531012936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195181 n ^ SequenceMachineLib.valuation (A238745 (n + 1) + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356862.P15499690587531012936

namespace A356862

/-- `eq[1, A195181(n)^val(A238745(n+1)+1, 2)]+1` -/
def P15499690587531012936.Spec : Prop :=
  ∀ n, (P15499690587531012936.a n : ℤ) = A356862 (n + 1)

end A356862

/-! ## A356862.P11892228842274750277

`A319161(n+2)`
-/

namespace A356862.P11892228842274750277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319161 (n + 2)

end

end A356862.P11892228842274750277

namespace A356862

/-- `A319161(n+2)` -/
def P11892228842274750277.Spec : Prop :=
  ∀ n, P11892228842274750277.a n = A356862 (n + 1)

end A356862

/-! ## A356862.P14367098782198860336

`lt[0, A136566(A242420(n+1))]+1`
-/

namespace A356862.P14367098782198860336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136566 (A242420 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A356862.P14367098782198860336

namespace A356862

/-- `lt[0, A136566(A242420(n+1))]+1` -/
def P14367098782198860336.Spec : Prop :=
  ∀ n, (P14367098782198860336.a n : ℤ) = A356862 (n + 1)

end A356862

/-!
# A356867: For n >= 1, write n = 3^m + k, where m >= 0 is the greatest power of 3 <= n, and k is in the range 0 <= k < 3^(m+1) - 3^m, then for n such that k=0, a(n)=n, and for n such that k > 0, a(n) is the smallest prime multiple p*a(k), p != 3, that is not already a term.

The programs for A356867, there is no canonical definition to state claims against.
-/

/-! ## A356867.P9331240317262384164

`A365462(n+1)+1+n`
-/

namespace A356867.P9331240317262384164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365462 (n + 1) + 1 + (n : ℤ)

end

end A356867.P9331240317262384164

/-! ## A356867.P2032709483152731729

`A365463(n+1)*A365465(n+1)`
-/

namespace A356867.P2032709483152731729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365463 (n + 1) * A365465 (n + 1)

end

end A356867.P2032709483152731729

/-! ## A356867.P6876046802544685507

`A365390(A365390(A365390(n+1)))`
-/

namespace A356867.P6876046802544685507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365390 (A365390 (A365390 (n + 1)).toNat).toNat

end

end A356867.P6876046802544685507

/-!
# A356868: a(n) = n^2 * prime(n).

The programs for A356868, the canonical program `A356868.P3374517036359758124` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356868 has offset 1).

The definition of A356868 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²*A000040(n+1)` (program `A356868.P3374517036359758124`, by `A356868.P3374517036359758124.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356868.P3374517036359758124

`(n+1)²*A000040(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356868

/-- `(n+1)²*A000040(n+1)` -/
def P3374517036359758124.Spec : Prop :=
  ∀ n, P3374517036359758124.a n = A356868 (n + 1)

theorem P3374517036359758124.correct : P3374517036359758124.Spec := by
  intro n
  simp only [A356868, Nat.add_sub_cancel]

end A356868

/-! ## A356868.P9460549106714125296

`(n+1)*A033286(n+1)`
-/

namespace A356868.P9460549106714125296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033286 (n + 1)

end

end A356868.P9460549106714125296

namespace A356868

/-- `(n+1)*A033286(n+1)` -/
def P9460549106714125296.Spec : Prop :=
  ∀ n, P9460549106714125296.a n = A356868 (n + 1)

theorem P9460549106714125296.correct : P9460549106714125296.Spec := by
  intro n
  simp only [A356868, Nat.add_sub_cancel, A356868.P9460549106714125296.a, A356868.P3374517036359758124.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A033286, A033286.P2794343547372572705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A356868

/-! ## A356868.P3817645957083553351

`(n+1)²*Δ[A007504(n)]`
-/

namespace A356868.P3817645957083553351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A356868.P3817645957083553351

namespace A356868

/-- `(n+1)²*Δ[A007504(n)]` -/
def P3817645957083553351.Spec : Prop :=
  ∀ n, P3817645957083553351.a n = A356868 (n + 1)

end A356868

/-! ## A356868.P14444493633673096766

`(n+1)*∑[A090942(n+1)]`
-/

namespace A356868.P14444493633673096766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A356868.P14444493633673096766

namespace A356868

/-- `(n+1)*∑[A090942(n+1)]` -/
def P14444493633673096766.Spec : Prop :=
  ∀ n, P14444493633673096766.a n = A356868 (n + 1)

end A356868

/-! ## A356868.P12527652323632538602

`(n+1)*(A083723(n+1)-n)`
-/

namespace A356868.P12527652323632538602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A083723 (n + 1) - (n : ℤ))

end

end A356868.P12527652323632538602

namespace A356868

/-- `(n+1)*(A083723(n+1)-n)` -/
def P12527652323632538602.Spec : Prop :=
  ∀ n, P12527652323632538602.a n = A356868 (n + 1)

theorem P12527652323632538602.correct : P12527652323632538602.Spec := by
  intro n
  simp only [A356868, Nat.add_sub_cancel, A356868.P12527652323632538602.a, A356868.P3374517036359758124.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A083723, A083723.P11482542915640984710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A356868

/-! ## A356868.P14875045057117690481

`(n+1)²*∑[A054541(n+1)]`
-/

namespace A356868.P14875045057117690481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A356868.P14875045057117690481

namespace A356868

/-- `(n+1)²*∑[A054541(n+1)]` -/
def P14875045057117690481.Spec : Prop :=
  ∀ n, P14875045057117690481.a n = A356868 (n + 1)

end A356868

/-! ## A356868.P3295244867016112206

`(n+1)²+(n+1)²*A006093(n+1)`
-/

namespace A356868.P3295244867016112206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + ((n + 1) ^ 2 : ℤ) * A006093 (n + 1)

end

end A356868.P3295244867016112206

namespace A356868

/-- `(n+1)²+(n+1)²*A006093(n+1)` -/
def P3295244867016112206.Spec : Prop :=
  ∀ n, P3295244867016112206.a n = A356868 (n + 1)

theorem P3295244867016112206.correct : P3295244867016112206.Spec := by
  intro n
  simp only [A356868, Nat.add_sub_cancel, A356868.P3295244867016112206.a, A356868.P3374517036359758124.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A356868

/-! ## A356868.P3964864078096261978

`A000040(n+1)*A000290(n+1)`
-/

namespace A356868.P3964864078096261978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000290 (n + 1)

end

end A356868.P3964864078096261978

namespace A356868

/-- `A000040(n+1)*A000290(n+1)` -/
def P3964864078096261978.Spec : Prop :=
  ∀ n, P3964864078096261978.a n = A356868 (n + 1)

theorem P3964864078096261978.correct : P3964864078096261978.Spec := by
  intro n
  simp only [A356868, Nat.add_sub_cancel, A356868.P3964864078096261978.a, A356868.P3374517036359758124.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A356868

/-! ## A356868.P10315841194637727774

`lcm(A000040(n+1), A162395(n+1))`
-/

namespace A356868.P10315841194637727774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000040 (n + 1)) (A162395 (n + 1))

end

end A356868.P10315841194637727774

namespace A356868

/-- `lcm(A000040(n+1), A162395(n+1))` -/
def P10315841194637727774.Spec : Prop :=
  ∀ n, (P10315841194637727774.a n : ℤ) = A356868 (n + 1)

end A356868

/-! ## A356868.P1184813804364269310

`(n+1)²*A247665(A248387(n+1))`
-/

namespace A356868.P1184813804364269310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A247665 (A248387 (n + 1)).toNat

end

end A356868.P1184813804364269310

namespace A356868

/-- `(n+1)²*A247665(A248387(n+1))` -/
def P1184813804364269310.Spec : Prop :=
  ∀ n, P1184813804364269310.a n = A356868 (n + 1)

end A356868

/-! ## A356868.P3074966664938720401

`(A007504(n+1)-A007504(n))*(n+1)²`
-/

namespace A356868.P3074966664938720401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) - A007504 n) * ((n + 1) ^ 2 : ℤ)

end

end A356868.P3074966664938720401

namespace A356868

/-- `(A007504(n+1)-A007504(n))*(n+1)²` -/
def P3074966664938720401.Spec : Prop :=
  ∀ n, P3074966664938720401.a n = A356868 (n + 1)

end A356868

/-! ## A356868.P4660498043048424786

`A000040(n+1)+A000040(n+1)*A005563(n)`
-/

namespace A356868.P4660498043048424786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000040 (n + 1) * A005563 n

end

end A356868.P4660498043048424786

namespace A356868

/-- `A000040(n+1)+A000040(n+1)*A005563(n)` -/
def P4660498043048424786.Spec : Prop :=
  ∀ n, P4660498043048424786.a n = A356868 (n + 1)

theorem P4660498043048424786.correct : P4660498043048424786.Spec := by
  intro n
  simp only [A356868, Nat.add_sub_cancel, A356868.P4660498043048424786.a, A356868.P3374517036359758124.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A356868

/-! ## A356868.P13348685469565114427

`(n+1)²*A008578(n+2)`
-/

namespace A356868.P13348685469565114427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A008578 (n + 2)

end

end A356868.P13348685469565114427

namespace A356868

/-- `(n+1)²*A008578(n+2)` -/
def P13348685469565114427.Spec : Prop :=
  ∀ n, P13348685469565114427.a n = A356868 (n + 1)

end A356868

/-! ## A356868.P8560766431448026468

`A008578(n+2)*A253909(n+1)`
-/

namespace A356868.P8560766431448026468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A253909 (n + 1)

end

end A356868.P8560766431448026468

namespace A356868

/-- `A008578(n+2)*A253909(n+1)` -/
def P8560766431448026468.Spec : Prop :=
  ∀ n, P8560766431448026468.a n = A356868 (n + 1)

end A356868

/-! ## A356868.P15901643144427195324

`(A014284(n+2)-A014284(n+1))*(n+1)²`
-/

namespace A356868.P15901643144427195324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014284 (n + 2) - A014284 (n + 1)) * ((n + 1) ^ 2 : ℤ)

end

end A356868.P15901643144427195324

namespace A356868

/-- `(A014284(n+2)-A014284(n+1))*(n+1)²` -/
def P15901643144427195324.Spec : Prop :=
  ∀ n, P15901643144427195324.a n = A356868 (n + 1)

end A356868

/-! ## A356868.P2331831082494209793

`lcm((n+1)², p?[abs(xor(n, -2))])`
-/

namespace A356868.P2331831082494209793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1) ^ 2 : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A356868.P2331831082494209793

namespace A356868

/-- `lcm((n+1)², p?[abs(xor(n, -2))])` -/
def P2331831082494209793.Spec : Prop :=
  ∀ n, (P2331831082494209793.a n : ℤ) = A356868 (n + 1)

end A356868

/-! ## A356868.P8960757213308505593

`∏{d}[p?[abs(xor(n, -2))], #*(n+1)]`
-/

namespace A356868.P8960757213308505593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d * (n + 1)

end

end A356868.P8960757213308505593

namespace A356868

/-- `∏{d}[p?[abs(xor(n, -2))], #*(n+1)]` -/
def P8960757213308505593.Spec : Prop :=
  ∀ n, (P8960757213308505593.a n : ℤ) = A356868 (n + 1)

end A356868

/-! ## A356868.P12918305891447633928

`(n+1)²*A005117(A071403(n+1))`
-/

namespace A356868.P12918305891447633928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A005117 (A071403 (n + 1)).toNat

end

end A356868.P12918305891447633928

namespace A356868

/-- `(n+1)²*A005117(A071403(n+1))` -/
def P12918305891447633928.Spec : Prop :=
  ∀ n, P12918305891447633928.a n = A356868 (n + 1)

end A356868

/-! ## A356868.P12013228140297447927

`A000040(n+1)*A000463(2*(n+1))`
-/

namespace A356868.P12013228140297447927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000463 (2 * (n + 1))

end

end A356868.P12013228140297447927

namespace A356868

/-- `A000040(n+1)*A000463(2*(n+1))` -/
def P12013228140297447927.Spec : Prop :=
  ∀ n, P12013228140297447927.a n = A356868 (n + 1)

end A356868

/-!
# A356870: a(n) = (A005132(2*n-1) + A005132(2*n))/4.

The programs for A356870, there is no canonical definition to state claims against.
-/

/-! ## A356870.P10693716942675202859

`(A005132(2*(n+1)-1)+A005132(2*(n+1)))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356870.P10693716942675202859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005132 (2 * (n + 1) - 1) + A005132 (2 * (n + 1)) : ℚ) / 4

end

end A356870.P10693716942675202859

/-! ## A356870.P5426580400253055864

`Δ[A065056(2*n)/4]`
-/

namespace A356870.P5426580400253055864
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065056 (2 * n) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A356870.P5426580400253055864

/-!
# A356871: Primitive coreful abundant numbers (second definition): coreful abundant numbers (A308053) that are powerful numbers (A001694).

The programs for A356871, there is no canonical definition to state claims against.
-/

/-! ## A356871.P4817188766469222104

`∩[A001694(n+1), A308053(n+1)]`
-/

namespace A356871.P4817188766469222104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356871.P4817188766469222104

/-! ## A356871.P15569265316129766673

`∩[A192636(n+1), A308053(n+1)]`
-/

namespace A356871.P15569265316129766673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356871.P15569265316129766673

/-! ## A356871.P6730124005924259413

`∩[A286708(n+1), A308053(n+1)]`
-/

namespace A356871.P6730124005924259413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356871.P6730124005924259413

/-! ## A356871.P2494336922741918080

`∩[A308053(n+1), A363169(n+1)]`
-/

namespace A356871.P2494336922741918080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356871.P2494336922741918080

/-! ## A356871.P17683890950771163419

`∩[∪[(n+1)², A320966(n+1)], A308053(n+1)]`
-/

namespace A356871.P17683890950771163419
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A356871.P17683890950771163419

/-! ## A356871.P13944219753040839051

`record[A057521(A308053(n+1))]`
-/

namespace A356871.P13944219753040839051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A308053 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356871.P13944219753040839051

/-! ## A356871.P9425861572069206720

`filter[A308053(n+1), A112526(#)]`
-/

namespace A356871.P9425861572069206720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A356871.P9425861572069206720

/-!
# A356872: a(n) = k is the smallest number such that 3*k+1 contains n distinct prime factors.

The programs for A356872, there is no canonical definition to state claims against.
-/

/-! ## A356872.P12265517313573571018

`or(A129527(A279452(n+1)), A369573(n))`
-/

namespace A356872.P12265517313573571018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A129527 (A279452 (n + 1)).toNat) (A369573 n)

end

end A356872.P12265517313573571018

/-!
# A356874: Write n as Sum_{i in S} 2^(i-1), where S is a set of positive integers, then a(n) = Sum_{i in S} F_i, where F_i is the i-th Fibonacci number, A000045(i).

The programs for A356874, the canonical program `A356874.P17454228626820474634` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356874 has offset 0).

The definition of A356874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356874.P17454228626820474634

`a(floor(n/2))+a(floor(n/4))+n%2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A356874

/-- `a(floor(n/2))+a(floor(n/4))+n%2` -/
def P17454228626820474634.Spec : Prop :=
  ∀ n, (P17454228626820474634.a n : ℤ) = A356874 n

theorem P17454228626820474634.correct : P17454228626820474634.Spec := by
  intro n
  simp only [A356874]

end A356874

/-! ## A356874.P18178772394013461668

`floor((A022290(n)+1)/ϕ)`
-/

namespace A356874.P18178772394013461668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022290 n + 1 : ℝ) / Real.goldenRatio⌋

end

end A356874.P18178772394013461668

namespace A356874

/-- `floor((A022290(n)+1)/ϕ)` -/
def P18178772394013461668.Spec : Prop :=
  ∀ n, P18178772394013461668.a n = A356874 n

end A356874

/-! ## A356874.P11019340297861550802

`A022290(floor(n/2))+n%2`
-/

namespace A356874.P11019340297861550802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℤ)

end

end A356874.P11019340297861550802

namespace A356874

/-- `A022290(floor(n/2))+n%2` -/
def P11019340297861550802.Spec : Prop :=
  ∀ n, P11019340297861550802.a n = A356874 n

end A356874

/-! ## A356874.P13389390490207459095

`A005206(A022290(n))`
-/

namespace A356874.P13389390490207459095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A022290 n).toNat

end

end A356874.P13389390490207459095

namespace A356874

/-- `A005206(A022290(n))` -/
def P13389390490207459095.Spec : Prop :=
  ∀ n, P13389390490207459095.a n = A356874 n

end A356874

/-! ## A356874.P16951919427931997664

`A060143(A022290(n)+1)`
-/

namespace A356874.P16951919427931997664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A022290 n + 1).toNat

end

end A356874.P16951919427931997664

namespace A356874

/-- `A060143(A022290(n)+1)` -/
def P16951919427931997664.Spec : Prop :=
  ∀ n, P16951919427931997664.a n = A356874 n

end A356874

/-! ## A356874.P178788253514102803

`∑[1-A000045(a(n-1)*A007814(n))]` with `a(0)=0`
-/

namespace A356874.P178788253514102803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - A000045 (f1 (n - 1) * A007814 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356874.P178788253514102803

namespace A356874

/-- `∑[1-A000045(a(n-1)*A007814(n))]` -/
def P178788253514102803.Spec : Prop :=
  ∀ n, P178788253514102803.a n = A356874 n

end A356874

/-! ## A356874.P13190003489263251972

`A022290(2*n)-A022290(n)`
-/

namespace A356874.P13190003489263251972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (2 * n) - A022290 n

end

end A356874.P13190003489263251972

namespace A356874

/-- `A022290(2*n)-A022290(n)` -/
def P13190003489263251972.Spec : Prop :=
  ∀ n, P13190003489263251972.a n = A356874 n

end A356874

/-! ## A356874.P14841397764357316084

`∑{digits}[A063013(n), A000045(#)]`
-/

namespace A356874.P14841397764357316084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000045 x).sum

end

end A356874.P14841397764357316084

namespace A356874

/-- `∑{digits}[A063013(n), A000045(#)]` -/
def P14841397764357316084.Spec : Prop :=
  ∀ n, P14841397764357316084.a n = A356874 n

end A356874

/-! ## A356874.P1612761034855292376

`∑{digits}[A086068(2*n+1), A000045(#)]`
-/

namespace A356874.P1612761034855292376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000045 x).sum

end

end A356874.P1612761034855292376

namespace A356874

/-- `∑{digits}[A086068(2*n+1), A000045(#)]` -/
def P1612761034855292376.Spec : Prop :=
  ∀ n, P1612761034855292376.a n = A356874 n

end A356874

/-!
# A356875: Square array, n >= 0, k >= 0, read by descending antidiagonals. A(n,k) = A022341(n)*2^k.

The programs for A356875, the canonical program `A356875.P6583603256105203401` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356875 has offset 0).

The definition of A356875 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022341, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356875.P6583603256105203401

`A022341(col(n))*2^(row(n)-col(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A356875

/-- `A022341(col(n))*2^(row(n)-col(n))` -/
def P6583603256105203401.Spec : Prop :=
  ∀ n, P6583603256105203401.a n = (A356875 n : ℚ)

end A356875

/-! ## A356875.P6460451375464180430

`A003714(A035513(n+1))`
-/

namespace A356875.P6460451375464180430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A035513 (n + 1)).toNat

end

end A356875.P6460451375464180430

namespace A356875

/-- `A003714(A035513(n+1))` -/
def P6460451375464180430.Spec : Prop :=
  ∀ n, P6460451375464180430.a n = A356875 n

end A356875

/-! ## A356875.P1193550461945779524

`A003714(A287870(n+1)+A287869(n+1))`
-/

namespace A356875.P1193550461945779524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A287870 (n + 1) + A287869 (n + 1)).toNat

end

end A356875.P1193550461945779524

namespace A356875

/-- `A003714(A287870(n+1)+A287869(n+1))` -/
def P1193550461945779524.Spec : Prop :=
  ∀ n, P1193550461945779524.a n = A356875 n

end A356875

/-! ## A356875.P1930080504817884234

`A277335(A287870(n+1)+A287869(n+1))/3`
-/

namespace A356875.P1930080504817884234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277335 (A287870 (n + 1) + A287869 (n + 1)).toNat : ℚ) / 3

end

end A356875.P1930080504817884234

namespace A356875

/-- `A277335(A287870(n+1)+A287869(n+1))/3` -/
def P1930080504817884234.Spec : Prop :=
  ∀ n, P1930080504817884234.a n = (A356875 n : ℚ)

end A356875

/-! ## A356875.P13765545057078177783

`A022340(A035513(n+1))/A020639(2*(n+1))`
-/

namespace A356875.P13765545057078177783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022340 (A035513 (n + 1)).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A356875.P13765545057078177783

namespace A356875

/-- `A022340(A035513(n+1))/A020639(2*(n+1))` -/
def P13765545057078177783.Spec : Prop :=
  ∀ n, P13765545057078177783.a n = (A356875 n : ℚ)

end A356875

/-! ## A356875.P15594403314225209549

`A003714(A094608(n+1)+A175004(n+1)-A094607(n+1))`
-/

namespace A356875.P15594403314225209549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A094608 (n + 1) + (A175004 (n + 1) - A094607 (n + 1))).toNat

end

end A356875.P15594403314225209549

namespace A356875

/-- `A003714(A094608(n+1)+A175004(n+1)-A094607(n+1))` -/
def P15594403314225209549.Spec : Prop :=
  ∀ n, P15594403314225209549.a n = A356875 n

end A356875

/-! ## A356875.P13051594466244311360

`A022340(A094608(n+1)+A175004(n+1)-A094607(n+1))/2`
-/

namespace A356875.P13051594466244311360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022340 (A094608 (n + 1) + (A175004 (n + 1) - A094607 (n + 1))).toNat : ℚ) / 2

end

end A356875.P13051594466244311360

namespace A356875

/-- `A022340(A094608(n+1)+A175004(n+1)-A094607(n+1))/2` -/
def P13051594466244311360.Spec : Prop :=
  ∀ n, P13051594466244311360.a n = (A356875 n : ℚ)

end A356875

/-! ## A356875.P7293419251596741472

`A003714(A287869(comp[∑[n]]))`
-/

namespace A356875.P7293419251596741472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A287869 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A356875.P7293419251596741472

namespace A356875

/-- `A003714(A287869(comp[∑[n]]))` -/
def P7293419251596741472.Spec : Prop :=
  ∀ n, P7293419251596741472.a n = A356875 n

end A356875

/-!
# A356876: Binary weight of the composite numbers (A002808).

The programs for A356876, the canonical program `A356876.P10198726897312415874` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356876 has offset 1).

The definition of A356876 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356876.P10198726897312415874

`A000120(A002808(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A356876

/-- `A000120(A002808(n+1))` -/
def P10198726897312415874.Spec : Prop :=
  ∀ n, P10198726897312415874.a n = A356876 (n + 1)

theorem P10198726897312415874.correct : P10198726897312415874.Spec := by
  intro n
  simp only [A356876, Nat.add_sub_cancel]

end A356876

/-! ## A356876.P8268928080887449131

`∑{digits}[A115454(n+1), #]`
-/

namespace A356876.P8268928080887449131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A356876.P8268928080887449131

namespace A356876

/-- `∑{digits}[A115454(n+1), #]` -/
def P8268928080887449131.Spec : Prop :=
  ∀ n, (P8268928080887449131.a n : ℤ) = A356876 (n + 1)

end A356876

/-! ## A356876.P8221093667373329654

`A000120(Δ[A053767(n)])`
-/

namespace A356876.P8221093667373329654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (n + 1) - f1 n).toNat

end

end A356876.P8221093667373329654

namespace A356876

/-- `A000120(Δ[A053767(n)])` -/
def P8221093667373329654.Spec : Prop :=
  ∀ n, P8221093667373329654.a n = A356876 (n + 1)

end A356876

/-! ## A356876.P7959221298734107553

`A000120(comp[A351078(n)])`
-/

namespace A356876.P7959221298734107553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A356876.P7959221298734107553

namespace A356876

/-- `A000120(comp[A351078(n)])` -/
def P7959221298734107553.Spec : Prop :=
  ∀ n, P7959221298734107553.a n = A356876 (n + 1)

end A356876

/-! ## A356876.P10200871474149923705

`A000120(A056653(n+1))`
-/

namespace A356876.P10200871474149923705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A056653 (n + 1)).toNat

end

end A356876.P10200871474149923705

namespace A356876

/-- `A000120(A056653(n+1))` -/
def P10200871474149923705.Spec : Prop :=
  ∀ n, P10200871474149923705.a n = A356876 (n + 1)

end A356876

/-! ## A356876.P10112319693280891638

`A000120(A018252(n+2))`
-/

namespace A356876.P10112319693280891638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A018252 (n + 2)).toNat

end

end A356876.P10112319693280891638

namespace A356876

/-- `A000120(A018252(n+2))` -/
def P10112319693280891638.Spec : Prop :=
  ∀ n, P10112319693280891638.a n = A356876 (n + 1)

end A356876

/-! ## A356876.P2929216591978211668

`A000120(A326776(n+2))`
-/

namespace A356876.P2929216591978211668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A326776 (n + 2)).toNat

end

end A356876.P2929216591978211668

namespace A356876

/-- `A000120(A326776(n+2))` -/
def P2929216591978211668.Spec : Prop :=
  ∀ n, P2929216591978211668.a n = A356876 (n + 1)

end A356876

/-! ## A356876.P5916109450729432265

`A000120(lt[1, A143862(n)])`
-/

namespace A356876.P5916109450729432265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A356876.P5916109450729432265

namespace A356876

/-- `A000120(lt[1, A143862(n)])` -/
def P5916109450729432265.Spec : Prop :=
  ∀ n, P5916109450729432265.a n = A356876 (n + 1)

end A356876

/-! ## A356876.P12189180032011649671

`A000120(A282671(n+1)/2)`
-/

namespace A356876.P12189180032011649671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A282671 (n + 1) : ℚ) / 2)).toNat

end

end A356876.P12189180032011649671

namespace A356876

/-- `A000120(A282671(n+1)/2)` -/
def P12189180032011649671.Spec : Prop :=
  ∀ n, P12189180032011649671.a n = A356876 (n + 1)

end A356876

/-! ## A356876.P8776387485457867197

`A000120(A139270(n+2)/2)`
-/

namespace A356876.P8776387485457867197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A139270 (n + 2) : ℚ) / 2)).toNat

end

end A356876.P8776387485457867197

namespace A356876

/-- `A000120(A139270(n+2)/2)` -/
def P8776387485457867197.Spec : Prop :=
  ∀ n, P8776387485457867197.a n = A356876 (n + 1)

end A356876

/-! ## A356876.P1951499326976202505

`A000120(eq[1, A339579(n+1)+1])`
-/

namespace A356876.P1951499326976202505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A356876.P1951499326976202505

namespace A356876

/-- `A000120(eq[1, A339579(n+1)+1])` -/
def P1951499326976202505.Spec : Prop :=
  ∀ n, P1951499326976202505.a n = A356876 (n + 1)

end A356876

/-! ## A356876.P14176879054263247503

`A000120(lt[1, A001222(n+1)]+1)`
-/

namespace A356876.P14176879054263247503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A356876.P14176879054263247503

namespace A356876

/-- `A000120(lt[1, A001222(n+1)]+1)` -/
def P14176879054263247503.Spec : Prop :=
  ∀ n, P14176879054263247503.a n = A356876 (n + 1)

end A356876

/-! ## A356876.P15399106236019412321

`A000120(lt[1, A292257(n+1)]+1)`
-/

namespace A356876.P15399106236019412321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A356876.P15399106236019412321

namespace A356876

/-- `A000120(lt[1, A292257(n+1)]+1)` -/
def P15399106236019412321.Spec : Prop :=
  ∀ n, P15399106236019412321.a n = A356876 (n + 1)

end A356876

/-! ## A356876.P14122254787875758762

`A000120(lt[2, A000005(n+1)]+1)`
-/

namespace A356876.P14122254787875758762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A356876.P14122254787875758762

namespace A356876

/-- `A000120(lt[2, A000005(n+1)]+1)` -/
def P14122254787875758762.Spec : Prop :=
  ∀ n, P14122254787875758762.a n = A356876 (n + 1)

end A356876

/-! ## A356876.P8787432198153733824

`A000120(A161537(n+1)-(n+1))`
-/

namespace A356876.P8787432198153733824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A161537 (n + 1) - (n + 1 : ℤ)).toNat

end

end A356876.P8787432198153733824

namespace A356876

/-- `A000120(A161537(n+1)-(n+1))` -/
def P8787432198153733824.Spec : Prop :=
  ∀ n, P8787432198153733824.a n = A356876 (n + 1)

theorem P8787432198153733824.correct : P8787432198153733824.Spec := by
  intro n
  simp only [A356876, Nat.add_sub_cancel, A356876.P8787432198153733824.a, A356876.P10198726897312415874.a, A000120, A000120.P2816527436160941581.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A161537, A161537.P5701896001486132994.a, A005187, A005187.P3874015513960485494.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A356876

/-! ## A356876.P17909526587617736720

`A000120(lt[A033879(n+1), n]+1)`
-/

namespace A356876.P17909526587617736720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A356876.P17909526587617736720

namespace A356876

/-- `A000120(lt[A033879(n+1), n]+1)` -/
def P17909526587617736720.Spec : Prop :=
  ∀ n, P17909526587617736720.a n = A356876 (n + 1)

end A356876

/-! ## A356876.P16231489623903628599

`A048881(lt[A033879(n+1), n])+1`
-/

namespace A356876.P16231489623903628599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) + 1

end

end A356876.P16231489623903628599

namespace A356876

/-- `A048881(lt[A033879(n+1), n])+1` -/
def P16231489623903628599.Spec : Prop :=
  ∀ n, P16231489623903628599.a n = A356876 (n + 1)

end A356876

/-! ## A356876.P9206120536212702246

`A000120(A282671(n+1))`
-/

namespace A356876.P9206120536212702246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A282671 (n + 1)).toNat

end

end A356876.P9206120536212702246

namespace A356876

/-- `A000120(A282671(n+1))` -/
def P9206120536212702246.Spec : Prop :=
  ∀ n, P9206120536212702246.a n = A356876 (n + 1)

end A356876

/-! ## A356876.P7196986161935283134

`A000120(A139270(n+2))`
-/

namespace A356876.P7196986161935283134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A139270 (n + 2)).toNat

end

end A356876.P7196986161935283134

namespace A356876

/-- `A000120(A139270(n+2))` -/
def P7196986161935283134.Spec : Prop :=
  ∀ n, P7196986161935283134.a n = A356876 (n + 1)

end A356876

/-! ## A356876.P10712982391828014062

`A000120(eq[2, A280193(n)+A105700(n)])`
-/

namespace A356876.P10712982391828014062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n + A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A356876.P10712982391828014062

namespace A356876

/-- `A000120(eq[2, A280193(n)+A105700(n)])` -/
def P10712982391828014062.Spec : Prop :=
  ∀ n, P10712982391828014062.a n = A356876 (n + 1)

end A356876

/-!
# A356877: a(n) is the least number k such that (the binary weight of k) - (the binary weight of k^2) = n.

The programs for A356877, there is no canonical definition to state claims against.
-/

/-! ## A356877.P6822226192347096467

`A260986(n+1)%A260948(3*n)²`
-/

namespace A356877.P6822226192347096467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260986 (n + 1)) (A260948 (3 * n) ^ 2)

end

end A356877.P6822226192347096467

/-! ## A356877.P1129334390672211301

`A260986(n+1)-A000007(A001076(n))`
-/

namespace A356877.P1129334390672211301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260986 (n + 1) - A000007 (A001076 n).toNat

end

end A356877.P1129334390672211301

/-! ## A356877.P4256192199962637072

`A260986(n+1)-A008683(A004009(n))`
-/

namespace A356877.P4256192199962637072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260986 (n + 1) - A008683 (A004009 n).toNat

end

end A356877.P4256192199962637072

/-! ## A356877.P11996289264882137577

`A260986(n+1)-A048298(A000752(n))`
-/

namespace A356877.P11996289264882137577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260986 (n + 1) - A048298 (A000752 n).toNat

end

end A356877.P11996289264882137577

/-!
# A356878: a(n) is the least number of binary zeros of squares with binary weight n.

The programs for A356878, there is no canonical definition to state claims against.
-/

/-! ## A356878.P8641536060139243215

`A214560(A231897(n))`
-/

namespace A356878.P8641536060139243215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214560 (A231897 n).toNat

end

end A356878.P8641536060139243215

/-! ## A356878.P8553914380205501346

`A214560(sqrt(A089998(n)))`
-/

namespace A356878.P8553914380205501346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214560 (SequenceMachineLib.roundAway (Real.sqrt (A089998 n : ℝ))).toNat

end

end A356878.P8553914380205501346

/-! ## A356878.P2158758274113076267

`A214560(A089998(n)^(A000040(n+1)/A100484(n+1)))`
-/

namespace A356878.P2158758274113076267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214560 (SequenceMachineLib.roundAway ((A089998 n : ℝ) ^ ((A000040 (n + 1) : ℚ) / (A100484 (n + 1) : ℚ) : ℝ))).toNat

end

end A356878.P2158758274113076267

/-!
# A356879: Numbers k such that the sum k^x + k^y can be a square with {x, y} >= 0.

The programs for A356879, there is no canonical definition to state claims against.
-/

/-! ## A356879.P5302736919934237217

`∪[2*n², n*(n+2)]`
-/

namespace A356879.P5302736919934237217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A356879.P5302736919934237217

/-! ## A356879.P14442611242461176242

`sqrt(∪[4*n^4, (n*(n+2))^2])`
-/

namespace A356879.P14442611242461176242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n ^ 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (n + 2)) ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℝ)

end

end A356879.P14442611242461176242

/-! ## A356879.P7249315087195782120

`∪[(n+1)², A058331(n)]-1`
-/

namespace A356879.P7249315087195782120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A356879.P7249315087195782120

/-! ## A356879.P4672249663101271914

`lt[Δ[A010052(2*n)], A010052(n+1)]`
-/

namespace A356879.P4672249663101271914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A356879.P4672249663101271914

/-! ## A356879.P11566419246765973546

`lt[A173517(n+1), Δ[A173517(2*n)]]`
-/

namespace A356879.P11566419246765973546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356879.P11566419246765973546

/-! ## A356879.P14345624375910175677

`lt[tan(A000122(2*n)), A000122(n+1)]`
-/

namespace A356879.P14345624375910175677
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A000122 (2 * n) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A356879.P14345624375910175677

/-! ## A356879.P3773385799155547698

`lt[1, A056926(2*n)+A000122(n+1)]`
-/

namespace A356879.P3773385799155547698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (2 * n) + A000122 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A356879.P3773385799155547698

/-! ## A356879.P6558169964927657175

`lt[A169695(2*n), A037213(n+1)+2]`
-/

namespace A356879.P6558169964927657175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356879.P6558169964927657175

/-! ## A356879.P4010905007425421451

`lt[A000035(A056926(2*n)), A056926(n+1)]`
-/

namespace A356879.P4010905007425421451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A056926 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356879.P4010905007425421451

/-!
# A356880: Squares that can be expressed as the sum of two powers of two (2^x + 2^y).

The programs for A356880, the canonical program `A356880.P8649345660940387553` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356880 has offset 1).

The definition of A356880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356880.P8649345660940387553

`A029744(n+2)²`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A356880

/-- `A029744(n+2)²` -/
def P8649345660940387553.Spec : Prop :=
  ∀ n, P8649345660940387553.a n = A356880 (n + 1)

theorem P8649345660940387553.correct : P8649345660940387553.Spec := by
  intro n
  simp only [A356880, Nat.add_sub_cancel]

end A356880

/-! ## A356880.P5296477467168967365

`ogf((4+9x)/(1-4x^2))`
-/

namespace A356880.P5296477467168967365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 9] [1, 0, -4] n

end

end A356880.P5296477467168967365

namespace A356880

/-- `ogf((4+9x)/(1-4x^2))` -/
def P5296477467168967365.Spec : Prop :=
  ∀ n, P5296477467168967365.a n = A356880 (n + 1)

end A356880

/-! ## A356880.P12909618364977146096

`4*a(n-2)` with `a(0)=4, a(1)=9`
-/

namespace A356880.P12909618364977146096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 9] fun n a =>
  4 * a (n - 2)

end

end A356880.P12909618364977146096

namespace A356880

/-- `4*a(n-2)` -/
def P12909618364977146096.Spec : Prop :=
  ∀ n, (P12909618364977146096.a n : ℤ) = A356880 (n + 1)

end A356880

/-! ## A356880.P12265606746217262672

`a(n-2)/(1/2)²` with `a(0)=4, a(1)=9`
-/

namespace A356880.P12265606746217262672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 9] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A356880.P12265606746217262672

namespace A356880

/-- `a(n-2)/(1/2)²` -/
def P12265606746217262672.Spec : Prop :=
  ∀ n, P12265606746217262672.a n = (A356880 (n + 1) : ℚ)

end A356880

/-! ## A356880.P3554541627962521450

`(n%2/2+4)*2^n`
-/

namespace A356880.P3554541627962521450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n % 2 : ℕ) : ℚ) / 2 + 4) * (2 ^ n : ℚ)

end

end A356880.P3554541627962521450

namespace A356880

/-- `(n%2/2+4)*2^n` -/
def P3554541627962521450.Spec : Prop :=
  ∀ n, P3554541627962521450.a n = (A356880 (n + 1) : ℚ)

end A356880

/-! ## A356880.P10886000623105945376

`(10-gcd(2, n))*2^(n-1)`
-/

namespace A356880.P10886000623105945376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 - (Nat.gcd 2 n : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A356880.P10886000623105945376

namespace A356880

/-- `(10-gcd(2, n))*2^(n-1)` -/
def P10886000623105945376.Spec : Prop :=
  ∀ n, P10886000623105945376.a n = (A356880 (n + 1) : ℚ)

end A356880

/-! ## A356880.P1368703429389559946

`∑[a(n-2)+a(n-2)]²` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A356880.P1368703429389559946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1] fun n f1 =>
  f1 (n - 2) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A356880.P1368703429389559946

namespace A356880

/-- `∑[a(n-2)+a(n-2)]²` -/
def P1368703429389559946.Spec : Prop :=
  ∀ n, (P1368703429389559946.a n : ℤ) = A356880 (n + 1)

end A356880

/-! ## A356880.P14645560483078286878

`Δ[a(n-2)+a(n-2)-1]²` with `a(0)=0, a(1)=2`
-/

namespace A356880.P14645560483078286878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A356880.P14645560483078286878

namespace A356880

/-- `Δ[a(n-2)+a(n-2)-1]²` -/
def P14645560483078286878.Spec : Prop :=
  ∀ n, P14645560483078286878.a n = A356880 (n + 1)

end A356880

/-! ## A356880.P16796588050477595698

`Δ[a(n-2)-(1-a(n-2))]²` with `a(0)=0, a(1)=2`
-/

namespace A356880.P16796588050477595698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A356880.P16796588050477595698

namespace A356880

/-- `Δ[a(n-2)-(1-a(n-2))]²` -/
def P16796588050477595698.Spec : Prop :=
  ∀ n, P16796588050477595698.a n = A356880 (n + 1)

end A356880

/-! ## A356880.P633562160908323752

`Δ[A010737(n)]²`
-/

namespace A356880.P633562160908323752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A356880.P633562160908323752

namespace A356880

/-- `Δ[A010737(n)]²` -/
def P633562160908323752.Spec : Prop :=
  ∀ n, P633562160908323752.a n = A356880 (n + 1)

end A356880

/-! ## A356880.P12776009543799729707

`Δ[A070875(n)]²`
-/

namespace A356880.P12776009543799729707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A356880.P12776009543799729707

namespace A356880

/-- `Δ[A070875(n)]²` -/
def P12776009543799729707.Spec : Prop :=
  ∀ n, P12776009543799729707.a n = A356880 (n + 1)

end A356880

/-! ## A356880.P1070881851615308287

`(A052955(n)+1)²`
-/

namespace A356880.P1070881851615308287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052955 n + 1) ^ 2

end

end A356880.P1070881851615308287

namespace A356880

/-- `(A052955(n)+1)²` -/
def P1070881851615308287.Spec : Prop :=
  ∀ n, P1070881851615308287.a n = A356880 (n + 1)

end A356880

/-! ## A356880.P17725865763750068749

`A164090(n+1)²`
-/

namespace A356880.P17725865763750068749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1) ^ 2

end

end A356880.P17725865763750068749

namespace A356880

/-- `A164090(n+1)²` -/
def P17725865763750068749.Spec : Prop :=
  ∀ n, P17725865763750068749.a n = A356880 (n + 1)

end A356880

/-! ## A356880.P11627983638052705991

`Δ[A063920(n)/2]²`
-/

namespace A356880.P11627983638052705991
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063920 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A356880.P11627983638052705991

namespace A356880

/-- `Δ[A063920(n)/2]²` -/
def P11627983638052705991.Spec : Prop :=
  ∀ n, P11627983638052705991.a n = (A356880 (n + 1) : ℚ)

end A356880

/-! ## A356880.P18402251526365990849

`Δ[A200678(Δ[n²])]²`
-/

namespace A356880.P18402251526365990849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200678 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A356880.P18402251526365990849

namespace A356880

/-- `Δ[A200678(Δ[n²])]²` -/
def P18402251526365990849.Spec : Prop :=
  ∀ n, P18402251526365990849.a n = A356880 (n + 1)

end A356880

/-! ## A356880.P8324269083717840949

`(1-A209721(n+1))²`
-/

namespace A356880.P8324269083717840949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A209721 (n + 1)) ^ 2

end

end A356880.P8324269083717840949

namespace A356880

/-- `(1-A209721(n+1))²` -/
def P8324269083717840949.Spec : Prop :=
  ∀ n, P8324269083717840949.a n = A356880 (n + 1)

end A356880

/-! ## A356880.P17177316343288240830

`(2-A209722(n+1))²`
-/

namespace A356880.P17177316343288240830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A209722 (n + 1)) ^ 2

end

end A356880.P17177316343288240830

namespace A356880

/-- `(2-A209722(n+1))²` -/
def P17177316343288240830.Spec : Prop :=
  ∀ n, P17177316343288240830.a n = A356880 (n + 1)

end A356880

/-! ## A356880.P13217489181924886968

`(A090989(n+1)/2)²`
-/

namespace A356880.P13217489181924886968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A090989 (n + 1) : ℚ) / 2) ^ 2

end

end A356880.P13217489181924886968

namespace A356880

/-- `(A090989(n+1)/2)²` -/
def P13217489181924886968.Spec : Prop :=
  ∀ n, P13217489181924886968.a n = (A356880 (n + 1) : ℚ)

end A356880

/-! ## A356880.P16471809885312731427

`(4-A209723(n+1))²`
-/

namespace A356880.P16471809885312731427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A209723 (n + 1)) ^ 2

end

end A356880.P16471809885312731427

namespace A356880

/-- `(4-A209723(n+1))²` -/
def P16471809885312731427.Spec : Prop :=
  ∀ n, P16471809885312731427.a n = A356880 (n + 1)

end A356880

/-! ## A356880.P10337764467077391139

`(A163978(n+2)/2)²`
-/

namespace A356880.P10337764467077391139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A163978 (n + 2) : ℚ) / 2) ^ 2

end

end A356880.P10337764467077391139

namespace A356880

/-- `(A163978(n+2)/2)²` -/
def P10337764467077391139.Spec : Prop :=
  ∀ n, P10337764467077391139.a n = (A356880 (n + 1) : ℚ)

end A356880

/-!
# A356882: E.g.f. satisfies: A(x) * log(A(x)) = x * (exp(x*A(x)) - 1).

The programs for A356882, there is no canonical definition to state claims against.
-/

/-! ## A356882.P6646447040751547826

`n^floor((3/2)^a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A356882.P6646447040751547826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℚ) ^ (⌊((3 : ℚ) / 2 : ℝ) ^ (a (n - 2) : ℝ)⌋ : ℤ)

end

end A356882.P6646447040751547826

/-! ## A356882.P4912120509457392307

`n^A000041(a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A356882.P4912120509457392307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℚ) ^ (A000041 (SequenceMachineLib.roundAway (a (n - 2))).toNat : ℤ)

end

end A356882.P4912120509457392307

/-!
# A356884: E.g.f. satisfies A(x)^A(x) = 1/(1 - x*A(x))^x.

The programs for A356884, there is no canonical definition to state claims against.
-/

/-! ## A356884.P11652314572301117354

`A057367(xor(A019537(n+1), A056239(2*(n+2))))`
-/

namespace A356884.P11652314572301117354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (Int.xor (A019537 (n + 1)) (A056239 (2 * (n + 2)))).toNat

end

end A356884.P11652314572301117354

/-! ## A356884.P4000385984997814055

`A050414((a(n-2)+1)²)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A356884.P4000385984997814055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  A050414 ((a (n - 2) + 1) ^ 2).toNat

end

end A356884.P4000385984997814055

/-!
# A356888: a(n) = ((n-1)^2 + 2)*2^(n-2).

The programs for A356888, the canonical program `A356888.P7741469810626382481` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356888 has offset 1).

The definition of A356888 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356888.P7741469810626382481

`(n²+2)*2^(n-1)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A356888

/-- `(n²+2)*2^(n-1)` -/
def P7741469810626382481.Spec : Prop :=
  ∀ n, P7741469810626382481.a n = (A356888 (n + 1) : ℚ)

end A356888

/-! ## A356888.P9595444371697503676

`2*a(n-1)+(2*n-1)*2^(n-1)` with `a(0)=1`
-/

namespace A356888.P9595444371697503676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + ((2 * n : ℤ) - 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A356888.P9595444371697503676

namespace A356888

/-- `2*a(n-1)+(2*n-1)*2^(n-1)` -/
def P9595444371697503676.Spec : Prop :=
  ∀ n, P9595444371697503676.a n = (A356888 (n + 1) : ℚ)

end A356888

/-! ## A356888.P13736938510210225768

`2^n+n*2^(n-1)+C(n, 2)*2^n`
-/

namespace A356888.P13736938510210225768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) + (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (Nat.choose n 2 * 2 ^ n : ℚ)

end

end A356888.P13736938510210225768

namespace A356888

/-- `2^n+n*2^(n-1)+C(n, 2)*2^n` -/
def P13736938510210225768.Spec : Prop :=
  ∀ n, P13736938510210225768.a n = (A356888 (n + 1) : ℚ)

end A356888

/-! ## A356888.P15858996324665993549

`A052481(n)+A001787(n)`
-/

namespace A356888.P15858996324665993549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052481 n + A001787 n

end

end A356888.P15858996324665993549

namespace A356888

/-- `A052481(n)+A001787(n)` -/
def P15858996324665993549.Spec : Prop :=
  ∀ n, P15858996324665993549.a n = A356888 (n + 1)

end A356888

/-! ## A356888.P3103939251445609582

`A053730(n)+A001788(n)`
-/

namespace A356888.P3103939251445609582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053730 n + A001788 n

end

end A356888.P3103939251445609582

namespace A356888

/-- `A053730(n)+A001788(n)` -/
def P3103939251445609582.Spec : Prop :=
  ∀ n, P3103939251445609582.a n = A356888 (n + 1)

end A356888

/-! ## A356888.P14843070255154134068

`A053545(n)+A048506(n)`
-/

namespace A356888.P14843070255154134068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053545 n + A048506 n

end

end A356888.P14843070255154134068

namespace A356888

/-- `A053545(n)+A048506(n)` -/
def P14843070255154134068.Spec : Prop :=
  ∀ n, P14843070255154134068.a n = A356888 (n + 1)

end A356888

/-! ## A356888.P15045591434694987608

`A100381(n)+A001792(n)`
-/

namespace A356888.P15045591434694987608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100381 n + A001792 n

end

end A356888.P15045591434694987608

namespace A356888

/-- `A100381(n)+A001792(n)` -/
def P15045591434694987608.Spec : Prop :=
  ∀ n, P15045591434694987608.a n = A356888 (n + 1)

end A356888

/-! ## A356888.P9294156052227386751

`A276289(n)+A081908(n)`
-/

namespace A356888.P9294156052227386751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276289 n + A081908 n

end

end A356888.P9294156052227386751

namespace A356888

/-- `A276289(n)+A081908(n)` -/
def P9294156052227386751.Spec : Prop :=
  ∀ n, P9294156052227386751.a n = A356888 (n + 1)

end A356888

/-! ## A356888.P4480616648239102606

`A084850(n)-A036289(n)`
-/

namespace A356888.P4480616648239102606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084850 n - A036289 n

end

end A356888.P4480616648239102606

namespace A356888

/-- `A084850(n)-A036289(n)` -/
def P4480616648239102606.Spec : Prop :=
  ∀ n, P4480616648239102606.a n = A356888 (n + 1)

end A356888

/-! ## A356888.P5046312920909140551

`A340257(n)-A001787(n)`
-/

namespace A356888.P5046312920909140551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340257 n - A001787 n

end

end A356888.P5046312920909140551

namespace A356888

/-- `A340257(n)-A001787(n)` -/
def P5046312920909140551.Spec : Prop :=
  ∀ n, P5046312920909140551.a n = A356888 (n + 1)

end A356888

/-! ## A356888.P14158796813202788700

`lcm(A010000(n), A164111(n))`
-/

namespace A356888.P14158796813202788700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010000 n) (A164111 n)

end

end A356888.P14158796813202788700

namespace A356888

/-- `lcm(A010000(n), A164111(n))` -/
def P14158796813202788700.Spec : Prop :=
  ∀ n, (P14158796813202788700.a n : ℤ) = A356888 (n + 1)

end A356888

/-! ## A356888.P9963552781912898538

`A104270(n+1)+A001815(n)`
-/

namespace A356888.P9963552781912898538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104270 (n + 1) + A001815 n

end

end A356888.P9963552781912898538

namespace A356888

/-- `A104270(n+1)+A001815(n)` -/
def P9963552781912898538.Spec : Prop :=
  ∀ n, P9963552781912898538.a n = A356888 (n + 1)

end A356888

/-! ## A356888.P12825779510461310981

`A178987(n)+A007466(n+1)`
-/

namespace A356888.P12825779510461310981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 n + A007466 (n + 1)

end

end A356888.P12825779510461310981

namespace A356888

/-- `A178987(n)+A007466(n+1)` -/
def P12825779510461310981.Spec : Prop :=
  ∀ n, P12825779510461310981.a n = A356888 (n + 1)

end A356888

/-! ## A356888.P17421380408707354251

`A053730(n+1)-A001792(n)`
-/

namespace A356888.P17421380408707354251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053730 (n + 1) - A001792 n

end

end A356888.P17421380408707354251

namespace A356888

/-- `A053730(n+1)-A001792(n)` -/
def P17421380408707354251.Spec : Prop :=
  ∀ n, P17421380408707354251.a n = A356888 (n + 1)

end A356888

/-! ## A356888.P13422313478735558741

`A001792(n)+2*A001815(n)`
-/

namespace A356888.P13422313478735558741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + 2 * A001815 n

end

end A356888.P13422313478735558741

namespace A356888

/-- `A001792(n)+2*A001815(n)` -/
def P13422313478735558741.Spec : Prop :=
  ∀ n, P13422313478735558741.a n = A356888 (n + 1)

end A356888

/-! ## A356888.P18313629927128943077

`A084850(n)-2*A001787(n)`
-/

namespace A356888.P18313629927128943077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084850 n - 2 * A001787 n

end

end A356888.P18313629927128943077

namespace A356888

/-- `A084850(n)-2*A001787(n)` -/
def P18313629927128943077.Spec : Prop :=
  ∀ n, P18313629927128943077.a n = A356888 (n + 1)

end A356888

/-! ## A356888.P17673623565379311069

`A052481(n)+A036289(n)/2`
-/

namespace A356888.P17673623565379311069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052481 n : ℚ) + (A036289 n : ℚ) / 2

end

end A356888.P17673623565379311069

namespace A356888

/-- `A052481(n)+A036289(n)/2` -/
def P17673623565379311069.Spec : Prop :=
  ∀ n, P17673623565379311069.a n = (A356888 (n + 1) : ℚ)

end A356888

/-! ## A356888.P4096973499710926048

`2*A081908(n)-A127276(n)`
-/

namespace A356888.P4096973499710926048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081908 n - A127276 n

end

end A356888.P4096973499710926048

namespace A356888

/-- `2*A081908(n)-A127276(n)` -/
def P4096973499710926048.Spec : Prop :=
  ∀ n, P4096973499710926048.a n = A356888 (n + 1)

end A356888

/-! ## A356888.P18241809054463696229

`A340257(n)-A036289(n)/2`
-/

namespace A356888.P18241809054463696229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340257 n : ℚ) - (A036289 n : ℚ) / 2

end

end A356888.P18241809054463696229

namespace A356888

/-- `A340257(n)-A036289(n)/2` -/
def P18241809054463696229.Spec : Prop :=
  ∀ n, P18241809054463696229.a n = (A356888 (n + 1) : ℚ)

end A356888

/-! ## A356888.P8572333914977355871

`A000079(n)+n*A001787(n)`
-/

namespace A356888.P8572333914977355871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (n : ℤ) * A001787 n

end

end A356888.P8572333914977355871

namespace A356888

/-- `A000079(n)+n*A001787(n)` -/
def P8572333914977355871.Spec : Prop :=
  ∀ n, P8572333914977355871.a n = A356888 (n + 1)

end A356888

/-!
# A356889: a(n) = (n^2 + 3*n + 10/3)*4^(n-3) - 1/3.

The programs for A356889, the canonical program `A356889.P15084963466485852326` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356889 has offset 2).

The definition of A356889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356889.P15084963466485852326

`((n+2)²+3*(n+2)+10/3)*4^(n-1)-1/3`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A356889

/-- `((n+2)²+3*(n+2)+10/3)*4^(n-1)-1/3` -/
def P15084963466485852326.Spec : Prop :=
  ∀ n, P15084963466485852326.a n = (A356889 (n + 2) : ℚ)

end A356889

/-!
# A356894: a(n) is the number of 0's in the maximal tribonacci representation of n (A352103).

The programs for A356894, the canonical program `A356894.P3548736647204316849` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356894 has offset 0).

The definition of A356894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356894.P13989046307727169346

`A356895(n)-A352104(n)`
-/

namespace A356894.P13989046307727169346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356895 n - A352104 n

end

end A356894.P13989046307727169346

namespace A356894

/-- `A356895(n)-A352104(n)` -/
def P13989046307727169346.Spec : Prop :=
  ∀ n, P13989046307727169346.a n = A356894 n

theorem P13989046307727169346.correct : P13989046307727169346.Spec := by
  intro n
  simp only [A356894, Nat.add_sub_cancel, A356894.P13989046307727169346.a, A356894.P3548736647204316849.f1, A356894.P3548736647204316849.a, A352103, A352103.P9753175658429631275.a, A352104, A352104.P4259153123948201544.a, A356895, A356895.P6293809667426970279.a, A003796, A003796.P430726989961333611.f1, A003796.P430726989961333611.f2, A003796.P430726989961333611.a, A007088, A007088.P12432121332583687413.a, A007953, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, A056974, A056974.P14269005406388105579.a, A097256, A097256.P18324559811505528946.a, A014082, A014082.P16446960074050354385.a, A035327, A035327.P258997810375859489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A356894

/-! ## A356894.P3548736647204316849

`∑{digits}[A352103(n), 1-#]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A356894

/-- `∑{digits}[A352103(n), 1-#]` -/
def P3548736647204316849.Spec : Prop :=
  ∀ n, P3548736647204316849.a n = A356894 n

theorem P3548736647204316849.correct : P3548736647204316849.Spec := by
  intro n
  simp only [A356894]

end A356894

/-! ## A356894.P16062870620380034249

`∑{digits}[A352103(n)+2, A023416(#)]`
-/

namespace A356894.P16062870620380034249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352103 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A023416 x).sum

end

end A356894.P16062870620380034249

namespace A356894

/-- `∑{digits}[A352103(n)+2, A023416(#)]` -/
def P16062870620380034249.Spec : Prop :=
  ∀ n, P16062870620380034249.a n = A356894 n

end A356894

/-! ## A356894.P15211422395588964965

`∑{digits}[A352103(n)+2, A117479(#)]`
-/

namespace A356894.P15211422395588964965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352103 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A117479 x).sum

end

end A356894.P15211422395588964965

namespace A356894

/-- `∑{digits}[A352103(n)+2, A117479(#)]` -/
def P15211422395588964965.Spec : Prop :=
  ∀ n, P15211422395588964965.a n = A356894 n

end A356894

/-! ## A356894.P2063279044133838486

`∑{digits}[A352103(n)+2, A278042(#)]`
-/

namespace A356894.P2063279044133838486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352103 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A278042 x).sum

end

end A356894.P2063279044133838486

namespace A356894

/-- `∑{digits}[A352103(n)+2, A278042(#)]` -/
def P2063279044133838486.Spec : Prop :=
  ∀ n, P2063279044133838486.a n = A356894 n

end A356894

/-! ## A356894.P1152104055371696097

`∑{digits}[A007088(A003796(n+1)), 1-#]`
-/

namespace A356894.P1152104055371696097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A003796 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A356894.P1152104055371696097

namespace A356894

/-- `∑{digits}[A007088(A003796(n+1)), 1-#]` -/
def P1152104055371696097.Spec : Prop :=
  ∀ n, P1152104055371696097.a n = A356894 n

end A356894

/-! ## A356894.P8508858998450485508

`A023416(A003796(n+1))`
-/

namespace A356894.P8508858998450485508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A003796 (n + 1)).toNat

end

end A356894.P8508858998450485508

namespace A356894

/-- `A023416(A003796(n+1))` -/
def P8508858998450485508.Spec : Prop :=
  ∀ n, P8508858998450485508.a n = A356894 n

end A356894

/-!
# A356895: a(n) is the length of the maximal tribonacci representation of n (A352103).

The programs for A356895, the canonical program `A356895.P6293809667426970279` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356895 has offset 0).

The definition of A356895 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A352104, A356894, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356895.P6293809667426970279

`A352104(n)+A356894(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A356895

/-- `A352104(n)+A356894(n)` -/
def P6293809667426970279.Spec : Prop :=
  ∀ n, P6293809667426970279.a n = A356895 n

theorem P6293809667426970279.correct : P6293809667426970279.Spec := by
  intro n
  simp only [A356895]

end A356895

/-! ## A356895.P6712566277845990027

`∑{digits}[A352103(n), #!]`
-/

namespace A356895.P6712566277845990027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352103 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.factorial x).sum

end

end A356895.P6712566277845990027

namespace A356895

/-- `∑{digits}[A352103(n), #!]` -/
def P6712566277845990027.Spec : Prop :=
  ∀ n, (P6712566277845990027.a n : ℤ) = A356895 n

end A356895

/-! ## A356895.P11819866927422716546

`∑{digits}[A352103(n), A070939(#)]`
-/

namespace A356895.P11819866927422716546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A070939 x).sum

end

end A356895.P11819866927422716546

namespace A356895

/-- `∑{digits}[A352103(n), A070939(#)]` -/
def P11819866927422716546.Spec : Prop :=
  ∀ n, P11819866927422716546.a n = A356895 n

end A356895

/-! ## A356895.P260202615494338195

`∑{digits}[A352103(n), A095791(#)]`
-/

namespace A356895.P260202615494338195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A095791 x).sum

end

end A356895.P260202615494338195

namespace A356895

/-- `∑{digits}[A352103(n), A095791(#)]` -/
def P260202615494338195.Spec : Prop :=
  ∀ n, P260202615494338195.a n = A356895 n

end A356895

/-! ## A356895.P17899346285668879242

`∑{digits}[A352103(n), A278044(#)]`
-/

namespace A356895.P17899346285668879242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A278044 x).sum

end

end A356895.P17899346285668879242

namespace A356895

/-- `∑{digits}[A352103(n), A278044(#)]` -/
def P17899346285668879242.Spec : Prop :=
  ∀ n, P17899346285668879242.a n = A356895 n

end A356895

/-! ## A356895.P8387866956481621921

`∑{digits}[2*A352103(n), A023416(#)]`
-/

namespace A356895.P8387866956481621921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A352103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A023416 x).sum

end

end A356895.P8387866956481621921

namespace A356895

/-- `∑{digits}[2*A352103(n), A023416(#)]` -/
def P8387866956481621921.Spec : Prop :=
  ∀ n, P8387866956481621921.a n = A356895 n

end A356895

/-! ## A356895.P2014124058178328224

`∑{digits}[2*A352103(n), A117479(#)]`
-/

namespace A356895.P2014124058178328224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A352103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A117479 x).sum

end

end A356895.P2014124058178328224

namespace A356895

/-- `∑{digits}[2*A352103(n), A117479(#)]` -/
def P2014124058178328224.Spec : Prop :=
  ∀ n, P2014124058178328224.a n = A356895 n

end A356895

/-! ## A356895.P7087145089540553405

`∑{digits}[2*A352103(n), A278042(#)]`
-/

namespace A356895.P7087145089540553405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A352103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A278042 x).sum

end

end A356895.P7087145089540553405

namespace A356895

/-- `∑{digits}[2*A352103(n), A278042(#)]` -/
def P7087145089540553405.Spec : Prop :=
  ∀ n, P7087145089540553405.a n = A356895 n

end A356895

/-! ## A356895.P7801749270830260778

`A070939(A003796(n+1))`
-/

namespace A356895.P7801749270830260778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A003796 (n + 1)).toNat

end

end A356895.P7801749270830260778

namespace A356895

/-- `A070939(A003796(n+1))` -/
def P7801749270830260778.Spec : Prop :=
  ∀ n, P7801749270830260778.a n = A356895 n

end A356895

/-! ## A356895.P12396628513768717001

`A110591(A022560(n))`
-/

namespace A356895.P12396628513768717001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A022560 n).toNat

end

end A356895.P12396628513768717001

namespace A356895

/-- `A110591(A022560(n))` -/
def P12396628513768717001.Spec : Prop :=
  ∀ n, P12396628513768717001.a n = A356895 n

end A356895

/-!
# A356896: Nonnegative numbers whose maximal tribonacci representation (A352103) ends in an even number of 1's.

The programs for A356896, the canonical program `A356896.P15058959792167373830` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356896 has offset 1).

The definition of A356896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356896.P12157988956384381837

`comp[A356897(n+1)]`
-/

namespace A356896.P12157988956384381837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A356896.P12157988956384381837

namespace A356896

/-- `comp[A356897(n+1)]` -/
def P12157988956384381837.Spec : Prop :=
  ∀ n, (P12157988956384381837.a n : ℤ) = A356896 (n + 1)

end A356896

/-! ## A356896.P8174544506841068430

`comp[record[A356897(A329048(n))]]`
-/

namespace A356896.P8174544506841068430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356897 (A329048 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A356896.P8174544506841068430

namespace A356896

/-- `comp[record[A356897(A329048(n))]]` -/
def P8174544506841068430.Spec : Prop :=
  ∀ n, (P8174544506841068430.a n : ℤ) = A356896 (n + 1)

end A356896

/-! ## A356896.P15058959792167373830

`lt[0, (A356898(n)+1)%2]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A356896

/-- `lt[0, (A356898(n)+1)%2]` -/
def P15058959792167373830.Spec : Prop :=
  ∀ n, (P15058959792167373830.a n : ℤ) = A356896 (n + 1)

theorem P15058959792167373830.correct : P15058959792167373830.Spec := by
  intro n
  simp only [A356896, Nat.add_sub_cancel]

end A356896

/-! ## A356896.P4423661278603824343

`eq[1, A000034(A356898(n))]`
-/

namespace A356896.P4423661278603824343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A356898 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356896.P4423661278603824343

namespace A356896

/-- `eq[1, A000034(A356898(n))]` -/
def P4423661278603824343.Spec : Prop :=
  ∀ n, (P4423661278603824343.a n : ℤ) = A356896 (n + 1)

end A356896

/-! ## A356896.P13257404710197498136

`eq[1, A040001(A356898(n)+1)]`
-/

namespace A356896.P13257404710197498136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A356898 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356896.P13257404710197498136

namespace A356896

/-- `eq[1, A040001(A356898(n)+1)]` -/
def P13257404710197498136.Spec : Prop :=
  ∀ n, (P13257404710197498136.a n : ℤ) = A356896 (n + 1)

end A356896

/-!
# A356897: Nonnegative numbers whose maximal tribonacci representation (A352103) ends in an odd number of 1's.

The programs for A356897, the canonical program `A356897.P2059016504799580943` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356897 has offset 1).

The definition of A356897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5440 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356897.P2059016504799580943

`comp[A356896(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A356897

/-- `comp[A356896(n+1)]` -/
def P2059016504799580943.Spec : Prop :=
  ∀ n, (P2059016504799580943.a n : ℤ) = A356897 (n + 1)

theorem P2059016504799580943.correct : P2059016504799580943.Spec := by
  intro n
  simp only [A356897, Nat.add_sub_cancel]

end A356897

/-! ## A356897.P15817678952514018550

`eq[0, (A356898(n)+1)%2]`
-/

namespace A356897.P15817678952514018550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356898 n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356897.P15817678952514018550

namespace A356897

/-- `eq[0, (A356898(n)+1)%2]` -/
def P15817678952514018550.Spec : Prop :=
  ∀ n, (P15817678952514018550.a n : ℤ) = A356897 (n + 1)

end A356897

/-! ## A356897.P2118372490021739392

`lt[(A356898(n+1)+1)%2, 1]+1`
-/

namespace A356897.P2118372490021739392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356898 (n + 1) + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A356897.P2118372490021739392

namespace A356897

/-- `lt[(A356898(n+1)+1)%2, 1]+1` -/
def P2118372490021739392.Spec : Prop :=
  ∀ n, (P2118372490021739392.a n : ℤ) = A356897 (n + 1)

end A356897

/-! ## A356897.P737488379931505520

`eq[2, A000034(A356898(n))]`
-/

namespace A356897.P737488379931505520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A356898 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356897.P737488379931505520

namespace A356897

/-- `eq[2, A000034(A356898(n))]` -/
def P737488379931505520.Spec : Prop :=
  ∀ n, (P737488379931505520.a n : ℤ) = A356897 (n + 1)

end A356897

/-! ## A356897.P13309517040513600

`eq[1, A040001(A356898(n)+2)]`
-/

namespace A356897.P13309517040513600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A356898 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356897.P13309517040513600

namespace A356897

/-- `eq[1, A040001(A356898(n)+2)]` -/
def P13309517040513600.Spec : Prop :=
  ∀ n, (P13309517040513600.a n : ℤ) = A356897 (n + 1)

end A356897

/-! ## A356897.P18074093142318824243

`lt[A356908(A356898(n)+1), 1]`
-/

namespace A356897.P18074093142318824243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356908 (A356898 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A356897.P18074093142318824243

namespace A356897

/-- `lt[A356908(A356898(n)+1), 1]` -/
def P18074093142318824243.Spec : Prop :=
  ∀ n, (P18074093142318824243.a n : ℤ) = A356897 (n + 1)

end A356897

/-!
# A356898: a(n) is the number of trailing 1's in the maximal tribonacci representation of n (A352103).

The programs for A356898, the canonical program `A356898.P5129270634185328881` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356898 has offset 0).

The definition of A356898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356898.P5129270634185328881

`val(A003796(n+1)+1, 2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A356898

/-- `val(A003796(n+1)+1, 2)` -/
def P5129270634185328881.Spec : Prop :=
  ∀ n, (P5129270634185328881.a n : ℤ) = A356898 n

theorem P5129270634185328881.correct : P5129270634185328881.Spec := by
  intro n
  simp only [A356898]

end A356898

/-! ## A356898.P5808167857671058314

`val(lt[A087117(n), 3]+1, 2)`
-/

namespace A356898.P5808167857671058314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) 2

end

end A356898.P5808167857671058314

namespace A356898

/-- `val(lt[A087117(n), 3]+1, 2)` -/
def P5808167857671058314.Spec : Prop :=
  ∀ n, (P5808167857671058314.a n : ℤ) = A356898 n

end A356898

/-! ## A356898.P1411104382665718088

`A007814(A003796(n+1)+1)`
-/

namespace A356898.P1411104382665718088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A003796 (n + 1) + 1).toNat

end

end A356898.P1411104382665718088

namespace A356898

/-- `A007814(A003796(n+1)+1)` -/
def P1411104382665718088.Spec : Prop :=
  ∀ n, P1411104382665718088.a n = A356898 n

end A356898

/-! ## A356898.P7948946553362930233

`A001511(A003796(n+1)+1)-1`
-/

namespace A356898.P7948946553362930233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A003796 (n + 1) + 1).toNat - 1

end

end A356898.P7948946553362930233

namespace A356898

/-- `A001511(A003796(n+1)+1)-1` -/
def P7948946553362930233.Spec : Prop :=
  ∀ n, P7948946553362930233.a n = A356898 n

end A356898

/-! ## A356898.P1575840368125832333

`A050603(2*A003796(n+1))-1`
-/

namespace A356898.P1575840368125832333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (2 * A003796 (n + 1)).toNat - 1

end

end A356898.P1575840368125832333

namespace A356898

/-- `A050603(2*A003796(n+1))-1` -/
def P1575840368125832333.Spec : Prop :=
  ∀ n, P1575840368125832333.a n = A356898 n

end A356898

/-!
# A356899: Nonnegative numbers whose minimal and maximal tribonacci representations are the same.

The programs for A356899, the canonical program `A356899.P11987798286801387555` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356899 has offset 1).

The definition of A356899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356899.P5338777445740209541

`record[A356965(n)]`
-/

namespace A356899.P5338777445740209541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356899.P5338777445740209541

namespace A356899

/-- `record[A356965(n)]` -/
def P5338777445740209541.Spec : Prop :=
  ∀ n, P5338777445740209541.a n = A356899 (n + 1)

end A356899

/-! ## A356899.P2924133319620373005

`A356965(eq[n, A356965(n)])`
-/

namespace A356899.P2924133319620373005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A356899.P2924133319620373005

namespace A356899

/-- `A356965(eq[n, A356965(n)])` -/
def P2924133319620373005.Spec : Prop :=
  ∀ n, P2924133319620373005.a n = A356899 (n + 1)

end A356899

/-! ## A356899.P6466242840344371050

`A356965(lt[n, A356965(n)+1])`
-/

namespace A356899.P6466242840344371050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356965 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A356899.P6466242840344371050

namespace A356899

/-- `A356965(lt[n, A356965(n)+1])` -/
def P6466242840344371050.Spec : Prop :=
  ∀ n, P6466242840344371050.a n = A356899 (n + 1)

end A356899

/-! ## A356899.P7708340720488371247

`A356965(lt[n-1, A356965(n)])`
-/

namespace A356899.P7708340720488371247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356965 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356899.P7708340720488371247

namespace A356899

/-- `A356965(lt[n-1, A356965(n)])` -/
def P7708340720488371247.Spec : Prop :=
  ∀ n, P7708340720488371247.a n = A356899 (n + 1)

end A356899

/-! ## A356899.P18256358911360597480

`eq[1, A117546(n)]`
-/

namespace A356899.P18256358911360597480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117546 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356899.P18256358911360597480

namespace A356899

/-- `eq[1, A117546(n)]` -/
def P18256358911360597480.Spec : Prop :=
  ∀ n, (P18256358911360597480.a n : ℤ) = A356899 (n + 1)

end A356899

/-! ## A356899.P13492716067437379094

`eq[A278043(n), A352104(n)]`
-/

namespace A356899.P13492716067437379094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352104 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356899.P13492716067437379094

namespace A356899

/-- `eq[A278043(n), A352104(n)]` -/
def P13492716067437379094.Spec : Prop :=
  ∀ n, (P13492716067437379094.a n : ℤ) = A356899 (n + 1)

end A356899

/-! ## A356899.P173815147301322625

`eq[A278042(n), A356894(n)]`
-/

namespace A356899.P173815147301322625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356899.P173815147301322625

namespace A356899

/-- `eq[A278042(n), A356894(n)]` -/
def P173815147301322625.Spec : Prop :=
  ∀ n, (P173815147301322625.a n : ℤ) = A356899 (n + 1)

end A356899

/-! ## A356899.P11987798286801387555

`lt[A003726(n+1)-A003796(n+1), 1]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A356899

/-- `lt[A003726(n+1)-A003796(n+1), 1]` -/
def P11987798286801387555.Spec : Prop :=
  ∀ n, (P11987798286801387555.a n : ℤ) = A356899 (n + 1)

theorem P11987798286801387555.correct : P11987798286801387555.Spec := by
  intro n
  simp only [A356899, Nat.add_sub_cancel]

end A356899

/-! ## A356899.P8908158118709821080

`eq[0, A014082(A003796(n+1))]`
-/

namespace A356899.P8908158118709821080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A003796 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356899.P8908158118709821080

namespace A356899

/-- `eq[0, A014082(A003796(n+1))]` -/
def P8908158118709821080.Spec : Prop :=
  ∀ n, (P8908158118709821080.a n : ℤ) = A356899 (n + 1)

end A356899

/-! ## A356899.P16524043812196014391

`lt[A087117(A003726(n+1)), 3]`
-/

namespace A356899.P16524043812196014391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A003726 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A356899.P16524043812196014391

namespace A356899

/-- `lt[A087117(A003726(n+1)), 3]` -/
def P16524043812196014391.Spec : Prop :=
  ∀ n, (P16524043812196014391.a n : ℤ) = A356899 (n + 1)

end A356899

/-! ## A356899.P4947132754042988767

`eq[A294619(2*n+1), A329720(A003796(n+1))]`
-/

namespace A356899.P4947132754042988767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329720 (A003796 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356899.P4947132754042988767

namespace A356899

/-- `eq[A294619(2*n+1), A329720(A003796(n+1))]` -/
def P4947132754042988767.Spec : Prop :=
  ∀ n, (P4947132754042988767.a n : ℤ) = A356899 (n + 1)

end A356899

/-! ## A356899.P14464707123053178902

`A356964(A063037(n+1))`
-/

namespace A356899.P14464707123053178902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356964 (A063037 (n + 1)).toNat

end

end A356899.P14464707123053178902

namespace A356899

/-- `A356964(A063037(n+1))` -/
def P14464707123053178902.Spec : Prop :=
  ∀ n, P14464707123053178902.a n = A356899 (n + 1)

end A356899

/-! ## A356899.P13473359818225238744

`lt[A329720(2*A003796(n+1)), 2]`
-/

namespace A356899.P13473359818225238744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329720 (2 * A003796 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A356899.P13473359818225238744

namespace A356899

/-- `lt[A329720(2*A003796(n+1)), 2]` -/
def P13473359818225238744.Spec : Prop :=
  ∀ n, (P13473359818225238744.a n : ℤ) = A356899 (n + 1)

end A356899

