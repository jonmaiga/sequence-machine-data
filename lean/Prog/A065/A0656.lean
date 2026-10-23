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
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A065600: Triangle T(n,k) giving number of Dyck paths of length 2n with exactly k hills (0 <= k <= n).

The programs for A065600, there is no canonical definition to state claims against.
-/

/-! ## A065600.P9041100461902409031

`2*A158815(n)-A124392(n)`
-/

namespace A065600.P9041100461902409031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158815 n - A124392 n

end

end A065600.P9041100461902409031

/-! ## A065600.P7797862013129854728

`A096794(n+1)/A059268(n)`
-/

namespace A065600.P7797862013129854728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096794 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A065600.P7797862013129854728

/-! ## A065600.P6545962110505805996

`A096794(n+1)/A000079(A002262(n))`
-/

namespace A065600.P6545962110505805996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096794 (n + 1) : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A065600.P6545962110505805996

/-! ## A065600.P7987992850970010459

`A096794(n+1)/A003958(A036561(n))`
-/

namespace A065600.P7987992850970010459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096794 (n + 1) : ℚ) / (A003958 (A036561 n).toNat : ℚ)

end

end A065600.P7987992850970010459

/-! ## A065600.P15531266036482687758

`A096794(n+1)/A003958(A099884(n))`
-/

namespace A065600.P15531266036482687758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096794 (n + 1) : ℚ) / (A003958 (A099884 n).toNat : ℚ)

end

end A065600.P15531266036482687758

/-! ## A065600.P10869759831919046509

`A096794(n+1)/A130321(A061579(n))`
-/

namespace A065600.P10869759831919046509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096794 (n + 1) : ℚ) / (A130321 (A061579 n).toNat : ℚ)

end

end A065600.P10869759831919046509

/-! ## A065600.P9210134099721258685

`A096794(n+1)/A011782(A002260(n+1))`
-/

namespace A065600.P9210134099721258685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096794 (n + 1) : ℚ) / (A011782 (A002260 (n + 1)).toNat : ℚ)

end

end A065600.P9210134099721258685

/-!
# A065601: Number of Dyck paths of length 2n with exactly 1 hill.

The programs for A065601, there is no canonical definition to state claims against.
-/

/-! ## A065601.P15821412475907839562

`A065600(∑[n]+1)`
-/

namespace A065601.P15821412475907839562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A065601.P15821412475907839562

/-! ## A065601.P2554313061582773660

`A289447(n)+A126983(n+1)`
-/

namespace A065601.P2554313061582773660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289447 n + A126983 (n + 1)

end

end A065601.P2554313061582773660

/-! ## A065601.P737403924183734093

`A289447(n)-A000957(n+1)`
-/

namespace A065601.P737403924183734093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289447 n - A000957 (n + 1)

end

end A065601.P737403924183734093

/-! ## A065601.P6676661957387377455

`A065600(A000124(n))+round(char[2*n]/10)`
-/

namespace A065601.P6676661957387377455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 (A000124 n).toNat + SequenceMachineLib.roundAway (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / 10)

end

end A065601.P6676661957387377455

/-! ## A065601.P4433913385665021993

`A057427(n)*A065600(A000124(n))`
-/

namespace A065601.P4433913385665021993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A065600 (A000124 n).toNat

end

end A065601.P4433913385665021993

/-! ## A065601.P18235006881672868967

`A065600(A000124(n))*A158388(n)`
-/

namespace A065601.P18235006881672868967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 (A000124 n).toNat * A158388 n

end

end A065601.P18235006881672868967

/-! ## A065601.P7401529939827441876

`lcm(A020985(n), A065600(A000124(n)))`
-/

namespace A065601.P7401529939827441876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A065600 (A000124 n).toNat)

end

end A065601.P7401529939827441876

/-! ## A065601.P12229455271977881609

`A008683(A006881(n+1))*A065600(A000124(n))`
-/

namespace A065601.P12229455271977881609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006881 (n + 1)).toNat * A065600 (A000124 n).toNat

end

end A065601.P12229455271977881609

/-! ## A065601.P16165215715478686855

`A065600(A000124(n))*A088705(A175684(n))`
-/

namespace A065601.P16165215715478686855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 (A000124 n).toNat * A088705 (A175684 n).toNat

end

end A065601.P16165215715478686855

/-! ## A065601.P9298925524962006713

`A065600(A000124(n))%A016295(n)`
-/

namespace A065601.P9298925524962006713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065600 (A000124 n).toNat) (A016295 n)

end

end A065601.P9298925524962006713

/-!
# A065602: Triangle T(n,k) giving number of hill-free Dyck paths of length 2n and having height of first peak equal to k.

The programs for A065602, there is no canonical definition to state claims against.
-/

/-! ## A065602.P3294752265033267318

`A167772(comp[∑[n]])`
-/

namespace A065602.P3294752265033267318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167772 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A065602.P3294752265033267318

/-! ## A065602.P4736570092240484666

`Δ[record[∑[A237619(n)]]]`
-/

namespace A065602.P4736570092240484666
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065602.P4736570092240484666

/-! ## A065602.P9478346142517716150

`A237619(lt[1, A166278(n)])`
-/

namespace A065602.P9478346142517716150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A065602.P9478346142517716150

/-! ## A065602.P7190266876739667642

`A237619(lt[1, A180662(n)])`
-/

namespace A065602.P7190266876739667642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A065602.P7190266876739667642

/-! ## A065602.P17773360822459574927

`A237619(lt[1, A213191(n)])`
-/

namespace A065602.P17773360822459574927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A065602.P17773360822459574927

/-! ## A065602.P7853151748654795648

`A237619(lt[1, A292193(n)])`
-/

namespace A065602.P7853151748654795648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A065602.P7853151748654795648

/-!
# A065603: Transposition diameter: maximal number of moves in an optimal sorting of n objects by moving blocks.

The programs for A065603, there is no canonical definition to state claims against.
-/

/-! ## A065603.P3819807234815098856

`ceil(∑[n]^cot(20))`
-/

namespace A065603.P3819807234815098856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (Real.cot (20 : ℝ))⌉

end

end A065603.P3819807234815098856

/-! ## A065603.P8790993114684907148

`ceil(n*acot(atan(n)))`
-/

namespace A065603.P8790993114684907148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * SequenceMachineLib.acot (Real.arctan (n : ℝ))⌉

end

end A065603.P8790993114684907148

/-! ## A065603.P17200756215910125697

`ceil(lt[tan(n), 1]/2)`
-/

namespace A065603.P17200756215910125697
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n : ℚ) / 2⌉

end

end A065603.P17200756215910125697

/-!
# A065605: The (3^n)-th composite number.

The programs for A065605, there is no canonical definition to state claims against.
-/

/-! ## A065605.P12607793471362455127

`A099861(A007051(n))`
-/

namespace A065605.P12607793471362455127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099861 (A007051 n).toNat

end

end A065605.P12607793471362455127

/-! ## A065605.P191500891174287225

`A099861(A003462(n)+1)`
-/

namespace A065605.P191500891174287225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099861 (A003462 n + 1).toNat

end

end A065605.P191500891174287225

/-! ## A065605.P15382501285628753901

`A099861(A124302(n+1))`
-/

namespace A065605.P15382501285628753901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099861 (A124302 (n + 1)).toNat

end

end A065605.P15382501285628753901

/-! ## A065605.P18350670129296341423

`A099861(A034472(n)/2)`
-/

namespace A065605.P18350670129296341423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099861 (SequenceMachineLib.roundAway ((A034472 n : ℚ) / 2)).toNat

end

end A065605.P18350670129296341423

/-! ## A065605.P17783995377562985609

`A099861((A168607(n)+3)/2-2)`
-/

namespace A065605.P17783995377562985609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099861 (SequenceMachineLib.roundAway ((A168607 n + 3 : ℚ) / 2 - 2)).toNat

end

end A065605.P17783995377562985609

/-!
# A065606: The (7^n)-th composite number.

The programs for A065606, there is no canonical definition to state claims against.
-/

/-! ## A065606.P7826699758227426873

`A002808(7^n)`
-/

namespace A065606.P7826699758227426873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (7 ^ n)

end

end A065606.P7826699758227426873

/-! ## A065606.P5490573720273884757

`A018252(7^n+1)`
-/

namespace A065606.P5490573720273884757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (7 ^ n + 1)

end

end A065606.P5490573720273884757

/-!
# A065607: Related to reciprocal Pythagorean triples: 1/a(n)^2 + 1/k^2 = 1/j^2 has an integer solution (k,j) with k

The programs for A065607, there is no canonical definition to state claims against.
-/

/-! ## A065607.P999988199900965973

`∑[and(21, A056639(A036638(n)))]`
-/

namespace A065607.P999988199900965973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 21 (A056639 ((A036638 n).toNat + 16))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065607.P999988199900965973

/-! ## A065607.P10192089615609053314

`4*A111684(A017257(n))`
-/

namespace A065607.P10192089615609053314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A111684 (A017257 n).toNat

end

end A065607.P10192089615609053314

/-! ## A065607.P8595472772778552411

`A133640(A017089(n))+16`
-/

namespace A065607.P8595472772778552411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133640 (A017089 n).toNat + 16

end

end A065607.P8595472772778552411

/-! ## A065607.P5208111544147752286

`record[∑[A273505(A124570(n+1))]]`
-/

namespace A065607.P5208111544147752286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 (A124570 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065607.P5208111544147752286

/-!
# A065608: Sum of divisors of n minus the number of divisors of n.

The programs for A065608, the canonical program `A065608.P12445239359989980431` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065608 has offset 1).

The definition of A065608 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065608.P12445239359989980431

`A000203(n+1)-A000005(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065608

/-- `A000203(n+1)-A000005(n+1)` -/
def P12445239359989980431.Spec : Prop :=
  ∀ n, P12445239359989980431.a n = A065608 (n + 1)

theorem P12445239359989980431.correct : P12445239359989980431.Spec := by
  intro n
  simp only [A065608, Nat.add_sub_cancel]

end A065608

/-! ## A065608.P2049638729583077331

`A342527(n+1)-A062968(n+1)`
-/

namespace A065608.P2049638729583077331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342527 (n + 1) - A062968 (n + 1)

end

end A065608.P2049638729583077331

namespace A065608

/-- `A342527(n+1)-A062968(n+1)` -/
def P2049638729583077331.Spec : Prop :=
  ∀ n, P2049638729583077331.a n = A065608 (n + 1)

end A065608

/-! ## A065608.P15281823742858328406

`∑{d}[n+1, #-1]`
-/

namespace A065608.P15281823742858328406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1)

end

end A065608.P15281823742858328406

namespace A065608

/-- `∑{d}[n+1, #-1]` -/
def P15281823742858328406.Spec : Prop :=
  ∀ n, P15281823742858328406.a n = A065608 (n + 1)

end A065608

/-! ## A065608.P3800365433308825580

`abs(∑{d}[n+1, n%-#])`
-/

namespace A065608.P3800365433308825580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), Int.tmod (n : ℤ) (-(d : ℤ))|

end

end A065608.P3800365433308825580

namespace A065608

/-- `abs(∑{d}[n+1, n%-#])` -/
def P3800365433308825580.Spec : Prop :=
  ∀ n, P3800365433308825580.a n = A065608 (n + 1)

end A065608

/-! ## A065608.P4280603834463571425

`abs(∑{d}[2*n-(n-1), 1-#])`
-/

namespace A065608.P4280603834463571425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n).natAbs, (1 - (d : ℤ))|

end

end A065608.P4280603834463571425

namespace A065608

/-- `abs(∑{d}[2*n-(n-1), 1-#])` -/
def P4280603834463571425.Spec : Prop :=
  ∀ n, P4280603834463571425.a n = A065608 (n + 1)

end A065608

/-! ## A065608.P7686291990176126431

`-∑{d}[2*n-(n-1), 1-#]`
-/

namespace A065608.P7686291990176126431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n).natAbs, (1 - (d : ℤ)))

end

end A065608.P7686291990176126431

namespace A065608

/-- `-∑{d}[2*n-(n-1), 1-#]` -/
def P7686291990176126431.Spec : Prop :=
  ∀ n, P7686291990176126431.a n = A065608 (n + 1)

end A065608

/-! ## A065608.P4487861296099406831

`A158901(n+1)-1`
-/

namespace A065608.P4487861296099406831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158901 (n + 1) - 1

end

end A065608.P4487861296099406831

namespace A065608

/-- `A158901(n+1)-1` -/
def P4487861296099406831.Spec : Prop :=
  ∀ n, P4487861296099406831.a n = A065608 (n + 1)

end A065608

/-! ## A065608.P11193190670831768650

`A152770(n+1)+n`
-/

namespace A065608.P11193190670831768650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (n + 1) + (n : ℤ)

end

end A065608.P11193190670831768650

namespace A065608

/-- `A152770(n+1)+n` -/
def P11193190670831768650.Spec : Prop :=
  ∀ n, P11193190670831768650.a n = A065608 (n + 1)

end A065608

/-! ## A065608.P11987264032140686440

`A137319(n+1)-(n+1)`
-/

namespace A065608.P11987264032140686440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137319 (n + 1) - (n + 1 : ℤ)

end

end A065608.P11987264032140686440

namespace A065608

/-- `A137319(n+1)-(n+1)` -/
def P11987264032140686440.Spec : Prop :=
  ∀ n, P11987264032140686440.a n = A065608 (n + 1)

end A065608

/-! ## A065608.P11258073818930690396

`A330866(n+1)/(n+1)`
-/

namespace A065608.P11258073818930690396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330866 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A065608.P11258073818930690396

namespace A065608

/-- `A330866(n+1)/(n+1)` -/
def P11258073818930690396.Spec : Prop :=
  ∀ n, P11258073818930690396.a n = (A065608 (n + 1) : ℚ)

end A065608

/-! ## A065608.P1401491552558773493

`2*n+1-A152864(n+1)`
-/

namespace A065608.P1401491552558773493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A152864 (n + 1)

end

end A065608.P1401491552558773493

namespace A065608

/-- `2*n+1-A152864(n+1)` -/
def P1401491552558773493.Spec : Prop :=
  ∀ n, P1401491552558773493.a n = A065608 (n + 1)

end A065608

/-! ## A065608.P8628268893326550340

`Δ[A160664(n)-A006218(n)]`
-/

namespace A065608.P8628268893326550340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n - A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065608.P8628268893326550340

namespace A065608

/-- `Δ[A160664(n)-A006218(n)]` -/
def P8628268893326550340.Spec : Prop :=
  ∀ n, P8628268893326550340.a n = A065608 (n + 1)

end A065608

/-! ## A065608.P1257334747756773513

`A006218(n)-A098798(n+1)`
-/

namespace A065608.P1257334747756773513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - A098798 (n + 1)

end

end A065608.P1257334747756773513

namespace A065608

/-- `A006218(n)-A098798(n+1)` -/
def P1257334747756773513.Spec : Prop :=
  ∀ n, P1257334747756773513.a n = A065608 (n + 1)

end A065608

/-! ## A065608.P6013969122693850123

`A253145(n)%A344622(n+1)`
-/

namespace A065608.P6013969122693850123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253145 n) (A344622 (n + 1))

end

end A065608.P6013969122693850123

namespace A065608

/-- `A253145(n)%A344622(n+1)` -/
def P6013969122693850123.Spec : Prop :=
  ∀ n, P6013969122693850123.a n = A065608 (n + 1)

end A065608

/-! ## A065608.P9525629008722021059

`A000203(n+1)-Δ[A006218(n)]`
-/

namespace A065608.P9525629008722021059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (f1 (n + 1) - f1 n)

end

end A065608.P9525629008722021059

namespace A065608

/-- `A000203(n+1)-Δ[A006218(n)]` -/
def P9525629008722021059.Spec : Prop :=
  ∀ n, P9525629008722021059.a n = A065608 (n + 1)

end A065608

/-! ## A065608.P2489334377869221726

`A000203(n+1)-Δ[A054519(n)]`
-/

namespace A065608.P2489334377869221726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (f1 (n + 1) - f1 n)

end

end A065608.P2489334377869221726

namespace A065608

/-- `A000203(n+1)-Δ[A054519(n)]` -/
def P2489334377869221726.Spec : Prop :=
  ∀ n, P2489334377869221726.a n = A065608 (n + 1)

end A065608

/-! ## A065608.P15697914238160679155

`Δ[A160664(n)]-A000005(n+1)`
-/

namespace A065608.P15697914238160679155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000005 (n + 1)

end

end A065608.P15697914238160679155

namespace A065608

/-- `Δ[A160664(n)]-A000005(n+1)` -/
def P15697914238160679155.Spec : Prop :=
  ∀ n, P15697914238160679155.a n = A065608 (n + 1)

end A065608

/-! ## A065608.P9958173137696089148

`A046520(n+1)+A000010(n+1)`
-/

namespace A065608.P9958173137696089148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046520 (n + 1) + A000010 (n + 1)

end

end A065608.P9958173137696089148

namespace A065608

/-- `A046520(n+1)+A000010(n+1)` -/
def P9958173137696089148.Spec : Prop :=
  ∀ n, P9958173137696089148.a n = A065608 (n + 1)

end A065608

/-! ## A065608.P15586265996044936450

`A049820(n+1)+A001065(n+1)`
-/

namespace A065608.P15586265996044936450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + A001065 (n + 1)

end

end A065608.P15586265996044936450

namespace A065608

/-- `A049820(n+1)+A001065(n+1)` -/
def P15586265996044936450.Spec : Prop :=
  ∀ n, P15586265996044936450.a n = A065608 (n + 1)

end A065608

/-! ## A065608.P11127723050031375138

`A063070(n+1)+A051612(n+1)`
-/

namespace A065608.P11127723050031375138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063070 (n + 1) + A051612 (n + 1)

end

end A065608.P11127723050031375138

namespace A065608

/-- `A063070(n+1)+A051612(n+1)` -/
def P11127723050031375138.Spec : Prop :=
  ∀ n, P11127723050031375138.a n = A065608 (n + 1)

end A065608

/-!
# A065609: Positive m such that when written in binary, no rotated value of m is greater than m.

The programs for A065609, there is no canonical definition to state claims against.
-/

/-! ## A065609.P5149562307584080581

`record[gcd(n+1, A163380(n+1))]`
-/

namespace A065609.P5149562307584080581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A163380 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065609.P5149562307584080581

/-! ## A065609.P935643654476310382

`A163380(eq[n+1, A163380(n+1)]+1)`
-/

namespace A065609.P935643654476310382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163380 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A065609.P935643654476310382

/-! ## A065609.P3225335284369155930

`A163380(record[2*(n+1)-A163380(n+1)])`
-/

namespace A065609.P3225335284369155930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A163380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163380 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065609.P3225335284369155930

/-! ## A065609.P9121173423759462913

`record[gcd(A123108(n), A257697(n))]`
-/

namespace A065609.P9121173423759462913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A123108 n) (A257697 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065609.P9121173423759462913

/-! ## A065609.P15818197576794492511

`eq[n, A028310(A257697(2*n+1))]`
-/

namespace A065609.P15818197576794492511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A257697 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065609.P15818197576794492511

/-! ## A065609.P9338310637245301929

`eq[A028310(n), A257697(A103517(n)-1)]`
-/

namespace A065609.P9338310637245301929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257697 (A103517 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A065609.P9338310637245301929

/-! ## A065609.P1867157667366436123

`∩[A329396(n+1), A368747(n)]`
-/

namespace A065609.P1867157667366436123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065609.P1867157667366436123

/-! ## A065609.P1147251689279819002

`record[n+1-A086427(A163380(n+1)-(n+1))]`
-/

namespace A065609.P1147251689279819002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A086427 (A163380 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065609.P1147251689279819002

/-!
# A065611: Let k be the least integer such that n^2 + Sum_{m=1..k} m^2 is a perfect square, then a(n) is the resulting square.

The programs for A065611, there is no canonical definition to state claims against.
-/

/-! ## A065611.P10098636013495236488

`A065612(n)²`
-/

namespace A065611.P10098636013495236488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065612 n ^ 2

end

end A065611.P10098636013495236488

/-! ## A065611.P18367284230592975968

`A065612(2*n-n)^2`
-/

namespace A065611.P18367284230592975968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065612 (2 * n - n) ^ 2

end

end A065611.P18367284230592975968

/-! ## A065611.P4635781636947194102

`floor(A065612(n)^(2-A000007(n)))`
-/

namespace A065611.P4635781636947194102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065612 n : ℚ) ^ (2 - A000007 n : ℤ)⌋

end

end A065611.P4635781636947194102

/-! ## A065611.P4310734635834544592

`A065612(n)*A065612(n%A000040(n+1))`
-/

namespace A065611.P4310734635834544592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065612 n * A065612 (Int.tmod (n : ℤ) (A000040 (n + 1))).toNat

end

end A065611.P4310734635834544592

/-! ## A065611.P14729558811277253153

`A008585(n)%3+A065612(n)^(2-A000007(n))`
-/

namespace A065611.P14729558811277253153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A008585 n) 3 : ℚ) + (A065612 n : ℚ) ^ (2 - A000007 n : ℤ)

end

end A065611.P14729558811277253153

/-! ## A065611.P2255393682358320370

`(A065612(n)+A000007(A014963(n+1)))*A065612(n)`
-/

namespace A065611.P2255393682358320370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065612 n + A000007 (A014963 (n + 1)).toNat) * A065612 n

end

end A065611.P2255393682358320370

/-! ## A065611.P2073287336601989856

`A065612(n)^(2-A000007(n))/A014963(A000217(n+6))`
-/

namespace A065611.P2073287336601989856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065612 n : ℚ) ^ (2 - A000007 n : ℤ) / (A014963 (A000217 (n + 6)).toNat : ℚ)

end

end A065611.P2073287336601989856

/-!
# A065612: Square roots of terms in A065611.

The programs for A065612, there is no canonical definition to state claims against.
-/

/-! ## A065612.P14367556090661851599

`sqrt(A065611(n))`
-/

namespace A065612.P14367556090661851599
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065611 n : ℝ)

end

end A065612.P14367556090661851599

/-! ## A065612.P13915279417886723036

`sqrt(n²+A000330(A065610(n)))`
-/

namespace A065612.P13915279417886723036
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n ^ 2 : ℤ) + A000330 (A065610 n).toNat : ℝ)

end

end A065612.P13915279417886723036

/-! ## A065612.P3740810353132237651

`root(A065611(n), p?[A065310(n+1)])`
-/

namespace A065612.P3740810353132237651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065310 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A065611 n : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A065612.P3740810353132237651

/-! ## A065612.P5508192599466903888

`root(A065611(n), 2)*char[A001057(n)]`
-/

namespace A065612.P5508192599466903888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A065611 n : ℝ) ^ (1 / (2 : ℝ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)

end

end A065612.P5508192599466903888

/-! ## A065612.P16038965672766550054

`root(A065611(n), 2)*char[A004442(n)]`
-/

namespace A065612.P16038965672766550054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A065611 n : ℝ) ^ (1 / (2 : ℝ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)

end

end A065612.P16038965672766550054

/-! ## A065612.P7281168827171036163

`root(A065611(n), 2%A007304(n+1))`
-/

namespace A065612.P7281168827171036163
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A065611 n : ℝ) ^ (1 / (Int.tmod 2 (A007304 (n + 1)) : ℝ))

end

end A065612.P7281168827171036163

/-! ## A065612.P5462720360628424253

`root(A065611(n), 2)%A075337(n+1)²`
-/

namespace A065612.P5462720360628424253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A065611 n : ℝ) ^ (1 / (2 : ℝ)))) (A075337 (n + 1) ^ 2)

end

end A065612.P5462720360628424253

/-! ## A065612.P4686843117716689976

`root(A065611(n), A001316(A001316(n)))`
-/

namespace A065612.P4686843117716689976
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A065611 n : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A065612.P4686843117716689976

/-! ## A065612.P6104088044053318383

`A008683(A053742(n))+root(A065611(n), 2)`
-/

namespace A065612.P6104088044053318383
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008683 (A053742 n).toNat : ℝ) + (A065611 n : ℝ) ^ (1 / (2 : ℝ))

end

end A065612.P6104088044053318383

/-! ## A065612.P8043868465577957363

`root(A065611(n), 2)*A014963(A006881(n+1))`
-/

namespace A065612.P8043868465577957363
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A065611 n : ℝ) ^ (1 / (2 : ℝ)) * (A014963 (A006881 (n + 1)).toNat : ℝ)

end

end A065612.P8043868465577957363

/-!
# A065613: a(n) = floor(log(n)*2^n/n).

The programs for A065613, the canonical program `A065613.P2720830873747882225` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065613 has offset 1).

The definition of A065613 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log(n+1)*2^(n+1)/(n+1))` (program `A065613.P2720830873747882225`, by `A065613.P2720830873747882225.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065613.P2720830873747882225

`floor(log(n+1)*2^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065613

/-- `floor(log(n+1)*2^(n+1)/(n+1))` -/
def P2720830873747882225.Spec : Prop :=
  ∀ n, P2720830873747882225.a n = A065613 (n + 1)

theorem P2720830873747882225.correct : P2720830873747882225.Spec := by
  intro n
  simp only [A065613, Nat.add_sub_cancel]

end A065613

/-! ## A065613.P10630757363315984746

`A065615(n+1)+A057428(n)`
-/

namespace A065613.P10630757363315984746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065615 (n + 1) + A057428 n

end

end A065613.P10630757363315984746

namespace A065613

/-- `A065615(n+1)+A057428(n)` -/
def P10630757363315984746.Spec : Prop :=
  ∀ n, P10630757363315984746.a n = A065613 (n + 1)

end A065613

/-! ## A065613.P11618225614134617086

`A065615(n+1)-A057427(n)`
-/

namespace A065613.P11618225614134617086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065615 (n + 1) - A057427 n

end

end A065613.P11618225614134617086

namespace A065613

/-- `A065615(n+1)-A057427(n)` -/
def P11618225614134617086.Spec : Prop :=
  ∀ n, P11618225614134617086.a n = A065613 (n + 1)

end A065613

/-! ## A065613.P11845183946188102614

`A065615(n+1)-char[A052938(n)]`
-/

namespace A065613.P11845183946188102614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065615 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A065613.P11845183946188102614

namespace A065613

/-- `A065615(n+1)-char[A052938(n)]` -/
def P11845183946188102614.Spec : Prop :=
  ∀ n, P11845183946188102614.a n = A065613 (n + 1)

end A065613

/-! ## A065613.P13014396502718832576

`A065615(n+1)-A019433(2*n)`
-/

namespace A065613.P13014396502718832576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065615 (n + 1) - A019433 (2 * n)

end

end A065613.P13014396502718832576

namespace A065613

/-- `A065615(n+1)-A019433(2*n)` -/
def P13014396502718832576.Spec : Prop :=
  ∀ n, P13014396502718832576.a n = A065613 (n + 1)

end A065613

/-! ## A065613.P2760669213404915714

`A065615(n+1)-char[A038722(n+1)]`
-/

namespace A065613.P2760669213404915714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065615 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A065613.P2760669213404915714

namespace A065613

/-- `A065615(n+1)-char[A038722(n+1)]` -/
def P2760669213404915714.Spec : Prop :=
  ∀ n, P2760669213404915714.a n = A065613 (n + 1)

end A065613

/-! ## A065613.P11125416876113760895

`A065615(n+1)-A065614(n²%(n+1)+1)`
-/

namespace A065613.P11125416876113760895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065615 (n + 1) - A065614 (n ^ 2 % (n + 1) + 1)

end

end A065613.P11125416876113760895

namespace A065613

/-- `A065615(n+1)-A065614(n²%(n+1)+1)` -/
def P11125416876113760895.Spec : Prop :=
  ∀ n, P11125416876113760895.a n = A065613 (n + 1)

end A065613

/-! ## A065613.P8985909415833576713

`A065615(n+1)-A000035(A004273(n))`
-/

namespace A065613.P8985909415833576713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065615 (n + 1) - A000035 (A004273 n).toNat

end

end A065613.P8985909415833576713

namespace A065613

/-- `A065615(n+1)-A000035(A004273(n))` -/
def P8985909415833576713.Spec : Prop :=
  ∀ n, P8985909415833576713.a n = A065613 (n + 1)

end A065613

/-! ## A065613.P10092811356044515679

`A065615(n+1)-A019433(A005843(n))²`
-/

namespace A065613.P10092811356044515679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065615 (n + 1) - A019433 (A005843 n).toNat ^ 2

end

end A065613.P10092811356044515679

namespace A065613

/-- `A065615(n+1)-A019433(A005843(n))²` -/
def P10092811356044515679.Spec : Prop :=
  ∀ n, P10092811356044515679.a n = A065613 (n + 1)

end A065613

/-! ## A065613.P1893401768665914687

`A065615(n+1)-A001222(A008578(n+1))`
-/

namespace A065613.P1893401768665914687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065615 (n + 1) - A001222 (A008578 (n + 1)).toNat

end

end A065613.P1893401768665914687

namespace A065613

/-- `A065615(n+1)-A001222(A008578(n+1))` -/
def P1893401768665914687.Spec : Prop :=
  ∀ n, P1893401768665914687.a n = A065613 (n + 1)

end A065613

/-! ## A065613.P10628284994297986989

`A065615(n+1)-A124625(A000079(A000120(n)))`
-/

namespace A065613.P10628284994297986989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065615 (n + 1) - A124625 (A000079 (A000120 n).toNat).toNat

end

end A065613.P10628284994297986989

namespace A065613

/-- `A065615(n+1)-A124625(A000079(A000120(n)))` -/
def P10628284994297986989.Spec : Prop :=
  ∀ n, P10628284994297986989.a n = A065613 (n + 1)

end A065613

/-! ## A065613.P16226813883737598043

`A065615(n+1)-A124625(A000010(A016789(n)))`
-/

namespace A065613.P16226813883737598043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065615 (n + 1) - A124625 (A000010 (A016789 n).toNat).toNat

end

end A065613.P16226813883737598043

namespace A065613

/-- `A065615(n+1)-A124625(A000010(A016789(n)))` -/
def P16226813883737598043.Spec : Prop :=
  ∀ n, P16226813883737598043.a n = A065613 (n + 1)

end A065613

/-! ## A065613.P8607607562474002314

`A065615(n+1)-A124625(A000010(A160144(n)))`
-/

namespace A065613.P8607607562474002314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065615 (n + 1) - A124625 (A000010 (A160144 n).toNat).toNat

end

end A065613.P8607607562474002314

namespace A065613

/-- `A065615(n+1)-A124625(A000010(A160144(n)))` -/
def P8607607562474002314.Spec : Prop :=
  ∀ n, P8607607562474002314.a n = A065613 (n + 1)

end A065613

/-! ## A065613.P7197429518140825061

`(A065615(n+1)-1)%A065614(n+2)`
-/

namespace A065613.P7197429518140825061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065615 (n + 1) - 1) (A065614 (n + 2))

end

end A065613.P7197429518140825061

namespace A065613

/-- `(A065615(n+1)-1)%A065614(n+2)` -/
def P7197429518140825061.Spec : Prop :=
  ∀ n, P7197429518140825061.a n = A065613 (n + 1)

end A065613

/-! ## A065613.P12513353435942639462

`A065615(n+1)-A124625(A000010(n+1)*A124625(n))`
-/

namespace A065613.P12513353435942639462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065615 (n + 1) - A124625 (A000010 (n + 1) * A124625 n).toNat

end

end A065613.P12513353435942639462

namespace A065613

/-- `A065615(n+1)-A124625(A000010(n+1)*A124625(n))` -/
def P12513353435942639462.Spec : Prop :=
  ∀ n, P12513353435942639462.a n = A065613 (n + 1)

end A065613

/-!
# A065614: a(n) = round(log(n)*2^n/n).

The programs for A065614, the canonical program `A065614.P319803417945957386` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065614 has offset 1).

The definition of A065614 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(log(n+1)*2^(n+1)/(n+1))` (program `A065614.P319803417945957386`, by `A065614.P319803417945957386.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065614.P319803417945957386

`round(log(n+1)*2^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065614

/-- `round(log(n+1)*2^(n+1)/(n+1))` -/
def P319803417945957386.Spec : Prop :=
  ∀ n, P319803417945957386.a n = A065614 (n + 1)

theorem P319803417945957386.correct : P319803417945957386.Spec := by
  intro n
  simp only [A065614, Nat.add_sub_cancel]

end A065614

/-! ## A065614.P285292479944434290

`A065615(n+1)-A000035(A033490(n+2))`
-/

namespace A065614.P285292479944434290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065615 (n + 1) - A000035 (A033490 (n + 2)).toNat

end

end A065614.P285292479944434290

namespace A065614

/-- `A065615(n+1)-A000035(A033490(n+2))` -/
def P285292479944434290.Spec : Prop :=
  ∀ n, P285292479944434290.a n = A065614 (n + 1)

end A065614

/-! ## A065614.P3043446767099899874

`A005041(A227373(n))-1+n`
-/

namespace A065614.P3043446767099899874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A227373 n).toNat - 1 + (n : ℤ)

end

end A065614.P3043446767099899874

namespace A065614

/-- `A005041(A227373(n))-1+n` -/
def P3043446767099899874.Spec : Prop :=
  ∀ n, P3043446767099899874.a n = A065614 (n + 1)

end A065614

/-! ## A065614.P10698743117524524025

`A066247(A227373(n+1))+floor(2^(n+1)/(n+1)*log(n+1))`
-/

namespace A065614.P10698743117524524025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A227373 (n + 1)).toNat + ⌊((2 ^ (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ) * Real.log (n + 1 : ℝ)⌋

end

end A065614.P10698743117524524025

namespace A065614

/-- `A066247(A227373(n+1))+floor(2^(n+1)/(n+1)*log(n+1))` -/
def P10698743117524524025.Spec : Prop :=
  ∀ n, P10698743117524524025.a n = A065614 (n + 1)

end A065614

/-! ## A065614.P13259862083512854927

`A172471(∑[A149879(n)-1])`
-/

namespace A065614.P13259862083512854927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149879 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065614.P13259862083512854927

namespace A065614

/-- `A172471(∑[A149879(n)-1])` -/
def P13259862083512854927.Spec : Prop :=
  ∀ n, P13259862083512854927.a n = A065614 (n + 1)

end A065614

/-!
# A065615: a(n) = ceiling(log(n)*2^n/n).

The programs for A065615, the canonical program `A065615.P13536214938280925636` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065615 has offset 1).

The definition of A065615 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(log(n+1)*2^(n+1)/(n+1))` (program `A065615.P13536214938280925636`, by `A065615.P13536214938280925636.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065615.P13536214938280925636

`ceil(log(n+1)*2^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065615

/-- `ceil(log(n+1)*2^(n+1)/(n+1))` -/
def P13536214938280925636.Spec : Prop :=
  ∀ n, P13536214938280925636.a n = A065615 (n + 1)

theorem P13536214938280925636.correct : P13536214938280925636.Spec := by
  intro n
  simp only [A065615, Nat.add_sub_cancel]

end A065615

/-! ## A065615.P5702306112919160173

`A065613(n+1)+A057427(n)`
-/

namespace A065615.P5702306112919160173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065613 (n + 1) + A057427 n

end

end A065615.P5702306112919160173

namespace A065615

/-- `A065613(n+1)+A057427(n)` -/
def P5702306112919160173.Spec : Prop :=
  ∀ n, P5702306112919160173.a n = A065615 (n + 1)

end A065615

/-! ## A065615.P12409786032347016211

`A065613(n+1)-A057428(n)`
-/

namespace A065615.P12409786032347016211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065613 (n + 1) - A057428 n

end

end A065615.P12409786032347016211

namespace A065615

/-- `A065613(n+1)-A057428(n)` -/
def P12409786032347016211.Spec : Prop :=
  ∀ n, P12409786032347016211.a n = A065615 (n + 1)

end A065615

/-! ## A065615.P7011077626196475927

`A065613(n+1)+char[A246694(n)]`
-/

namespace A065615.P7011077626196475927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246694 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065613 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A065615.P7011077626196475927

namespace A065615

/-- `A065613(n+1)+char[A246694(n)]` -/
def P7011077626196475927.Spec : Prop :=
  ∀ n, P7011077626196475927.a n = A065615 (n + 1)

end A065615

/-! ## A065615.P7162302933004354665

`A065613(n+1)+char[A003602(n+1)]`
-/

namespace A065615.P7162302933004354665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065613 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A065615.P7162302933004354665

namespace A065615

/-- `A065613(n+1)+char[A003602(n+1)]` -/
def P7162302933004354665.Spec : Prop :=
  ∀ n, P7162302933004354665.a n = A065615 (n + 1)

end A065615

/-! ## A065615.P12482763211222975710

`A065613(n+1)+char[A225047(n+1)]`
-/

namespace A065615.P12482763211222975710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225047 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065613 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A065615.P12482763211222975710

namespace A065615

/-- `A065613(n+1)+char[A225047(n+1)]` -/
def P12482763211222975710.Spec : Prop :=
  ∀ n, P12482763211222975710.a n = A065615 (n + 1)

end A065615

/-! ## A065615.P13282999672220811001

`A065613(n+1)+A000035(A256263(n))`
-/

namespace A065615.P13282999672220811001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065613 (n + 1) + A000035 (A256263 n).toNat

end

end A065615.P13282999672220811001

namespace A065615

/-- `A065613(n+1)+A000035(A256263(n))` -/
def P13282999672220811001.Spec : Prop :=
  ∀ n, P13282999672220811001.a n = A065615 (n + 1)

end A065615

/-! ## A065615.P16798863956166202395

`A080545(p?[A261931(n)])+A065613(n+1)`
-/

namespace A065615.P16798863956166202395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A065613 (n + 1)

end

end A065615.P16798863956166202395

namespace A065615

/-- `A080545(p?[A261931(n)])+A065613(n+1)` -/
def P16798863956166202395.Spec : Prop :=
  ∀ n, P16798863956166202395.a n = A065615 (n + 1)

end A065615

/-! ## A065615.P10359964104547484820

`A115878(A089191(n+1))+A065613(n+1)`
-/

namespace A065615.P10359964104547484820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (A089191 (n + 1)).toNat + A065613 (n + 1)

end

end A065615.P10359964104547484820

namespace A065615

/-- `A115878(A089191(n+1))+A065613(n+1)` -/
def P10359964104547484820.Spec : Prop :=
  ∀ n, P10359964104547484820.a n = A065615 (n + 1)

end A065615

/-! ## A065615.P2632842509570824211

`A241919(A278523(n+1))+A065613(n+1)`
-/

namespace A065615.P2632842509570824211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (A278523 (n + 1)).toNat + A065613 (n + 1)

end

end A065615.P2632842509570824211

namespace A065615

/-- `A241919(A278523(n+1))+A065613(n+1)` -/
def P2632842509570824211.Spec : Prop :=
  ∀ n, P2632842509570824211.a n = A065615 (n + 1)

end A065615

/-! ## A065615.P7521053710190918946

`A065613(n+1)+A002262(1-A002262(n)+n)`
-/

namespace A065615.P7521053710190918946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065613 (n + 1) + A002262 (1 - A002262 n + (n : ℤ)).toNat

end

end A065615.P7521053710190918946

namespace A065615

/-- `A065613(n+1)+A002262(1-A002262(n)+n)` -/
def P7521053710190918946.Spec : Prop :=
  ∀ n, P7521053710190918946.a n = A065615 (n + 1)

end A065615

/-!
# A065616: a(n) = floor(log_2(n)*2^n/n).

The programs for A065616, the canonical program `A065616.P13918067892437015974` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065616 has offset 1).

The definition of A065616 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log2(n+1)*2^(n+1)/(n+1))` (program `A065616.P13918067892437015974`, by `A065616.P13918067892437015974.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065616.P13918067892437015974

`floor(log2(n+1)*2^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065616

/-- `floor(log2(n+1)*2^(n+1)/(n+1))` -/
def P13918067892437015974.Spec : Prop :=
  ∀ n, P13918067892437015974.a n = A065616 (n + 1)

theorem P13918067892437015974.correct : P13918067892437015974.Spec := by
  intro n
  simp only [A065616, Nat.add_sub_cancel]

end A065616

/-! ## A065616.P10120651178785774346

`A065618(n+1)-A043545(n)`
-/

namespace A065616.P10120651178785774346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065618 (n + 1) - A043545 n

end

end A065616.P10120651178785774346

namespace A065616

/-- `A065618(n+1)-A043545(n)` -/
def P10120651178785774346.Spec : Prop :=
  ∀ n, P10120651178785774346.a n = A065616 (n + 1)

end A065616

/-! ## A065616.P3913555364263079690

`A065618(n+1)-A162777(A048896(n))`
-/

namespace A065616.P3913555364263079690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065618 (n + 1) - A162777 (A048896 n).toNat

end

end A065616.P3913555364263079690

namespace A065616

/-- `A065618(n+1)-A162777(A048896(n))` -/
def P3913555364263079690.Spec : Prop :=
  ∀ n, P3913555364263079690.a n = A065616 (n + 1)

end A065616

/-! ## A065616.P5760857329057411818

`A065618(n+1)-A060576(A003602(n+1))`
-/

namespace A065616.P5760857329057411818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065618 (n + 1) - A060576 (A003602 (n + 1)).toNat

end

end A065616.P5760857329057411818

namespace A065616

/-- `A065618(n+1)-A060576(A003602(n+1))` -/
def P5760857329057411818.Spec : Prop :=
  ∀ n, P5760857329057411818.a n = A065616 (n + 1)

end A065616

/-! ## A065616.P4060411129745988422

`A065618(n+1)-A060576(A173557(n+1))`
-/

namespace A065616.P4060411129745988422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065618 (n + 1) - A060576 (A173557 (n + 1)).toNat

end

end A065616.P4060411129745988422

namespace A065616

/-- `A065618(n+1)-A060576(A173557(n+1))` -/
def P4060411129745988422.Spec : Prop :=
  ∀ n, P4060411129745988422.a n = A065616 (n + 1)

end A065616

/-! ## A065616.P3986688586990081374

`A065618(n+1)-A257290(A186719(A335904(n+1)²+1))`
-/

namespace A065616.P3986688586990081374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065618 (n + 1) - A257290 (A186719 (A335904 (n + 1) ^ 2 + 1).toNat).toNat

end

end A065616.P3986688586990081374

namespace A065616

/-- `A065618(n+1)-A257290(A186719(A335904(n+1)²+1))` -/
def P3986688586990081374.Spec : Prop :=
  ∀ n, P3986688586990081374.a n = A065616 (n + 1)

end A065616

/-!
# A065617: a(n) = round(log_2(n)*2^n/n).

The programs for A065617, the canonical program `A065617.P14848530249574948336` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065617 has offset 1).

The definition of A065617 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(log2(n+1)*2^(n+1)/(n+1))` (program `A065617.P14848530249574948336`, by `A065617.P14848530249574948336.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065617.P14848530249574948336

`round(log2(n+1)*2^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065617

/-- `round(log2(n+1)*2^(n+1)/(n+1))` -/
def P14848530249574948336.Spec : Prop :=
  ∀ n, P14848530249574948336.a n = A065617 (n + 1)

theorem P14848530249574948336.correct : P14848530249574948336.Spec := by
  intro n
  simp only [A065617, Nat.add_sub_cancel]

end A065617

/-! ## A065617.P15753032671380092942

`A284508(A309761(n+1))+A065616(n+1)`
-/

namespace A065617.P15753032671380092942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284508 (A309761 (n + 1)).toNat + A065616 (n + 1)

end

end A065617.P15753032671380092942

namespace A065617

/-- `A284508(A309761(n+1))+A065616(n+1)` -/
def P15753032671380092942.Spec : Prop :=
  ∀ n, P15753032671380092942.a n = A065617 (n + 1)

end A065617

/-! ## A065617.P7531144614079775970

`A122840(A065616(n+5))+A065616(n+1)`
-/

namespace A065617.P7531144614079775970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A065616 (n + 5)).toNat + A065616 (n + 1)

end

end A065617.P7531144614079775970

namespace A065617

/-- `A122840(A065616(n+5))+A065616(n+1)` -/
def P7531144614079775970.Spec : Prop :=
  ∀ n, P7531144614079775970.a n = A065617 (n + 1)

end A065617

/-! ## A065617.P10222613124859769040

`A065618(n+1)+A284508(A309761(n+1))-A043545(n)`
-/

namespace A065617.P10222613124859769040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065618 (n + 1) + (A284508 (A309761 (n + 1)).toNat - A043545 n)

end

end A065617.P10222613124859769040

namespace A065617

/-- `A065618(n+1)+A284508(A309761(n+1))-A043545(n)` -/
def P10222613124859769040.Spec : Prop :=
  ∀ n, P10222613124859769040.a n = A065617 (n + 1)

end A065617

/-! ## A065617.P12626198090824804838

`A055679(A267226(n+1)-A351874(n))`
-/

namespace A065617.P12626198090824804838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A267226 (n + 1) - A351874 n).toNat

end

end A065617.P12626198090824804838

namespace A065617

/-- `A055679(A267226(n+1)-A351874(n))` -/
def P12626198090824804838.Spec : Prop :=
  ∀ n, P12626198090824804838.a n = A065617 (n + 1)

end A065617

/-!
# A065618: a(n) = ceiling(log_2(n)*2^n/n).

The programs for A065618, the canonical program `A065618.P2874956495138809541` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065618 has offset 1).

The definition of A065618 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(log2(n+1)*2^(n+1)/(n+1))` (program `A065618.P2874956495138809541`, by `A065618.P2874956495138809541.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065618.P2874956495138809541

`ceil(log2(n+1)*2^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065618

/-- `ceil(log2(n+1)*2^(n+1)/(n+1))` -/
def P2874956495138809541.Spec : Prop :=
  ∀ n, P2874956495138809541.a n = A065618 (n + 1)

theorem P2874956495138809541.correct : P2874956495138809541.Spec := by
  intro n
  simp only [A065618, Nat.add_sub_cancel]

end A065618

/-! ## A065618.P382593083675231011

`A065616(n+1)+A043545(n)`
-/

namespace A065618.P382593083675231011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065616 (n + 1) + A043545 n

end

end A065618.P382593083675231011

namespace A065618

/-- `A065616(n+1)+A043545(n)` -/
def P382593083675231011.Spec : Prop :=
  ∀ n, P382593083675231011.a n = A065618 (n + 1)

end A065618

/-! ## A065618.P3226684908677505871

`A347523(n+1)+A065616(n+1)`
-/

namespace A065618.P3226684908677505871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 (n + 1) + A065616 (n + 1)

end

end A065618.P3226684908677505871

namespace A065618

/-- `A347523(n+1)+A065616(n+1)` -/
def P3226684908677505871.Spec : Prop :=
  ∀ n, P3226684908677505871.a n = A065618 (n + 1)

end A065618

/-! ## A065618.P8740590735635960600

`A065616(n+1)--1%A000120(n+1)`
-/

namespace A065618.P8740590735635960600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065616 (n + 1) - Int.tmod (-1) (A000120 (n + 1))

end

end A065618.P8740590735635960600

namespace A065618

/-- `A065616(n+1)--1%A000120(n+1)` -/
def P8740590735635960600.Spec : Prop :=
  ∀ n, P8740590735635960600.a n = A065618 (n + 1)

end A065618

/-! ## A065618.P9441544638234852521

`A065616(n+1)+A058663(A048896(n))`
-/

namespace A065618.P9441544638234852521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065616 (n + 1) + A058663 (A048896 n).toNat

end

end A065618.P9441544638234852521

namespace A065618

/-- `A065616(n+1)+A058663(A048896(n))` -/
def P9441544638234852521.Spec : Prop :=
  ∀ n, P9441544638234852521.a n = A065618 (n + 1)

end A065618

/-!
# A065619: Expansion of e.g.f. x * (tan(x) + sec(x)).

The programs for A065619, there is no canonical definition to state claims against.
-/

/-! ## A065619.P831171742425596112

`(n+1)*A000111(n)`
-/

namespace A065619.P831171742425596112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000111 n

end

end A065619.P831171742425596112

/-! ## A065619.P938319353941591375

`A104345(∑[n+1]+1)`
-/

namespace A065619.P938319353941591375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104345 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A065619.P938319353941591375

/-! ## A065619.P15390308145476334835

`A104346(∑[n+1]+1)`
-/

namespace A065619.P15390308145476334835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104346 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A065619.P15390308145476334835

/-! ## A065619.P3661627233916559751

`A109449(∑[n+1]+1)`
-/

namespace A065619.P3661627233916559751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A065619.P3661627233916559751

/-! ## A065619.P2699360839028665453

`abs((n+1)*A346838(n))`
-/

namespace A065619.P2699360839028665453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A346838 n|

end

end A065619.P2699360839028665453

/-! ## A065619.P4359051908576339809

`(n+1)*abs(A247453(∑[n]))`
-/

namespace A065619.P4359051908576339809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * |A247453 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A065619.P4359051908576339809

/-! ## A065619.P12605862354507214032

`(n+1)*ceil(A001250(n)/2)`
-/

namespace A065619.P12605862354507214032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(A001250 n : ℚ) / 2⌉

end

end A065619.P12605862354507214032

/-! ## A065619.P2955970252447825321

`(n+1)*A008282(∑[n]+1)`
-/

namespace A065619.P2955970252447825321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008282 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A065619.P2955970252447825321

/-! ## A065619.P9608212862658334031

`(n+1)*A010094(∑[n+1])`
-/

namespace A065619.P9608212862658334031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010094 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065619.P9608212862658334031

/-! ## A065619.P9262562145650721500

`(n+1)*A229892(∑[n]+1)`
-/

namespace A065619.P9262562145650721500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A229892 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A065619.P9262562145650721500

/-!
# A065620: a(0)=0; thereafter a(2n) = 2a(n), a(2n+1) = -2a(n) + 1.

The programs for A065620, the canonical program `A065620.P132964274324401119` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065620 has offset 0).

The definition of A065620 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265263, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065620.P14508158539900877307

`-A104895(n)`
-/

namespace A065620.P14508158539900877307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A104895 n

end

end A065620.P14508158539900877307

namespace A065620

/-- `-A104895(n)` -/
def P14508158539900877307.Spec : Prop :=
  ∀ n, P14508158539900877307.a n = A065620 n

end A065620

/-! ## A065620.P17871508515209962874

`A246160(n)-A246159(n)`
-/

namespace A065620.P17871508515209962874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246160 n - A246159 n

end

end A065620.P17871508515209962874

namespace A065620

/-- `A246160(n)-A246159(n)` -/
def P17871508515209962874.Spec : Prop :=
  ∀ n, P17871508515209962874.a n = A065620 n

end A065620

/-! ## A065620.P132964274324401119

`(2*A265263(n)-n)*(2*A010060(n)-1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A065620

/-- `(2*A265263(n)-n)*(2*A010060(n)-1)` -/
def P132964274324401119.Spec : Prop :=
  ∀ n, P132964274324401119.a n = A065620 n

theorem P132964274324401119.correct : P132964274324401119.Spec := by
  intro n
  simp only [A065620]

end A065620

/-! ## A065620.P17392832271549773259

`A104895(xor(1, n))+1`
-/

namespace A065620.P17392832271549773259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (Nat.xor 1 n) + 1

end

end A065620.P17392832271549773259

namespace A065620

/-- `A104895(xor(1, n))+1` -/
def P17392832271549773259.Spec : Prop :=
  ∀ n, P17392832271549773259.a n = A065620 n

end A065620

/-! ## A065620.P12472708445616826666

`ceil(A104895(2*n+1)/2)`
-/

namespace A065620.P12472708445616826666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104895 (2 * n + 1) : ℚ) / 2⌉

end

end A065620.P12472708445616826666

namespace A065620

/-- `ceil(A104895(2*n+1)/2)` -/
def P12472708445616826666.Spec : Prop :=
  ∀ n, P12472708445616826666.a n = A065620 n

end A065620

/-! ## A065620.P11867114833780071721

`A057428(n)*A104895(n)`
-/

namespace A065620.P11867114833780071721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A104895 n

end

end A065620.P11867114833780071721

namespace A065620

/-- `A057428(n)*A104895(n)` -/
def P11867114833780071721.Spec : Prop :=
  ∀ n, P11867114833780071721.a n = A065620 n

end A065620

/-! ## A065620.P16416844320769593565

`A104895(A033999(n)+n)+1`
-/

namespace A065620.P16416844320769593565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (A033999 n + (n : ℤ)).toNat + 1

end

end A065620.P16416844320769593565

namespace A065620

/-- `A104895(A033999(n)+n)+1` -/
def P16416844320769593565.Spec : Prop :=
  ∀ n, P16416844320769593565.a n = A065620 n

end A065620

/-! ## A065620.P9771078600016753229

`A000038(n+1)-A104895(n)`
-/

namespace A065620.P9771078600016753229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A104895 n

end

end A065620.P9771078600016753229

namespace A065620

/-- `A000038(n+1)-A104895(n)` -/
def P9771078600016753229.Spec : Prop :=
  ∀ n, P9771078600016753229.a n = A065620 n

end A065620

/-! ## A065620.P6633761533468672092

`A104895(n)*A153881(n+1)`
-/

namespace A065620.P6633761533468672092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 n * A153881 (n + 1)

end

end A065620.P6633761533468672092

namespace A065620

/-- `A104895(n)*A153881(n+1)` -/
def P6633761533468672092.Spec : Prop :=
  ∀ n, P6633761533468672092.a n = A065620 n

end A065620

/-! ## A065620.P3880288714077463370

`(A000007(n)-1)*A104895(n)`
-/

namespace A065620.P3880288714077463370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n - 1) * A104895 n

end

end A065620.P3880288714077463370

namespace A065620

/-- `(A000007(n)-1)*A104895(n)` -/
def P3880288714077463370.Spec : Prop :=
  ∀ n, P3880288714077463370.a n = A065620 n

end A065620

/-! ## A065620.P3493879277403986113

`(A000038(n)-1)*A104895(n)`
-/

namespace A065620.P3493879277403986113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n - 1) * A104895 n

end

end A065620.P3493879277403986113

namespace A065620

/-- `(A000038(n)-1)*A104895(n)` -/
def P3493879277403986113.Spec : Prop :=
  ∀ n, P3493879277403986113.a n = A065620 n

end A065620

/-! ## A065620.P10596760977560165530

`A104895(n)-A104895(2*n)`
-/

namespace A065620.P10596760977560165530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 n - A104895 (2 * n)

end

end A065620.P10596760977560165530

namespace A065620

/-- `A104895(n)-A104895(2*n)` -/
def P10596760977560165530.Spec : Prop :=
  ∀ n, P10596760977560165530.a n = A065620 n

end A065620

/-! ## A065620.P9329542929147812956

`Δ[A104895(n)]-A104895(n+1)`
-/

namespace A065620.P9329542929147812956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A104895 (n + 1)

end

end A065620.P9329542929147812956

namespace A065620

/-- `Δ[A104895(n)]-A104895(n+1)` -/
def P9329542929147812956.Spec : Prop :=
  ∀ n, P9329542929147812956.a n = A065620 n

end A065620

/-! ## A065620.P1983123564280168949

`char[A025292(n+1)]-A104895(n)`
-/

namespace A065620.P1983123564280168949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025292 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A104895 n

end

end A065620.P1983123564280168949

namespace A065620

/-- `char[A025292(n+1)]-A104895(n)` -/
def P1983123564280168949.Spec : Prop :=
  ∀ n, P1983123564280168949.a n = A065620 n

end A065620

/-! ## A065620.P13123915544138750293

`C(n, A000040(n+1))-A104895(n)`
-/

namespace A065620.P13123915544138750293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (A000040 (n + 1)).toNat : ℤ) - A104895 n

end

end A065620.P13123915544138750293

namespace A065620

/-- `C(n, A000040(n+1))-A104895(n)` -/
def P13123915544138750293.Spec : Prop :=
  ∀ n, P13123915544138750293.a n = A065620 n

end A065620

/-! ## A065620.P17125891260079152842

`C(n, A000203(n+1))-A104895(n)`
-/

namespace A065620.P17125891260079152842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (A000203 (n + 1)).toNat : ℤ) - A104895 n

end

end A065620.P17125891260079152842

namespace A065620

/-- `C(n, A000203(n+1))-A104895(n)` -/
def P17125891260079152842.Spec : Prop :=
  ∀ n, P17125891260079152842.a n = A065620 n

end A065620

/-! ## A065620.P18210423191575508471

`A000035(A001316(n+1))-A104895(n)`
-/

namespace A065620.P18210423191575508471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001316 (n + 1)).toNat - A104895 n

end

end A065620.P18210423191575508471

namespace A065620

/-- `A000035(A001316(n+1))-A104895(n)` -/
def P18210423191575508471.Spec : Prop :=
  ∀ n, P18210423191575508471.a n = A065620 n

end A065620

/-! ## A065620.P12156177694847348493

`A010059(A268669(n+1))-A104895(n)`
-/

namespace A065620.P12156177694847348493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A268669 (n + 1)).toNat - A104895 n

end

end A065620.P12156177694847348493

namespace A065620

/-- `A010059(A268669(n+1))-A104895(n)` -/
def P12156177694847348493.Spec : Prop :=
  ∀ n, P12156177694847348493.a n = A065620 n

end A065620

/-! ## A065620.P11727084737518792405

`2-(A104895(n)+A001316(A001316(n)))`
-/

namespace A065620.P11727084737518792405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A104895 n + A001316 (A001316 n).toNat)

end

end A065620.P11727084737518792405

namespace A065620

/-- `2-(A104895(n)+A001316(A001316(n)))` -/
def P11727084737518792405.Spec : Prop :=
  ∀ n, P11727084737518792405.a n = A065620 n

end A065620

/-! ## A065620.P11861271385098645980

`A104895(n)/(A010060(n)-A001285(n))`
-/

namespace A065620.P11861271385098645980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104895 n : ℚ) / (A010060 n - A001285 n : ℚ)

end

end A065620.P11861271385098645980

namespace A065620

/-- `A104895(n)/(A010060(n)-A001285(n))` -/
def P11861271385098645980.Spec : Prop :=
  ∀ n, P11861271385098645980.a n = (A065620 n : ℚ)

end A065620

/-!
# A065621: Reversing binary representation of n. Converting sum of powers of 2 in binary representation of a(n) to alternating sum gives n.

The programs for A065621, the canonical program `A065621.P7428635038631224963` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065621 has offset 1).

The definition of A065621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065621.P7428635038631224963

`xor(n, 2*n+1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065621

/-- `xor(n, 2*n+1)` -/
def P7428635038631224963.Spec : Prop :=
  ∀ n, (P7428635038631224963.a n : ℤ) = A065621 (n + 1)

theorem P7428635038631224963.correct : P7428635038631224963.Spec := by
  intro n
  simp only [A065621, Nat.add_sub_cancel]

end A065621

/-! ## A065621.P10824814728243726213

`A003188(2*(n+1)-1)`
-/

namespace A065621.P10824814728243726213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (2 * (n + 1) - 1)

end

end A065621.P10824814728243726213

namespace A065621

/-- `A003188(2*(n+1)-1)` -/
def P10824814728243726213.Spec : Prop :=
  ∀ n, P10824814728243726213.a n = A065621 (n + 1)

end A065621

/-! ## A065621.P17358515778827874251

`A048724(n)-(-1)^(n+1)`
-/

namespace A065621.P17358515778827874251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n - (-1) ^ (n + 1)

end

end A065621.P17358515778827874251

namespace A065621

/-- `A048724(n)-(-1)^(n+1)` -/
def P17358515778827874251.Spec : Prop :=
  ∀ n, P17358515778827874251.a n = A065621 (n + 1)

end A065621

/-! ## A065621.P3663244758764455813

`xor(n+1, record[xor(1, n)])+1`
-/

namespace A065621.P3663244758764455813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + 1

end

end A065621.P3663244758764455813

namespace A065621

/-- `xor(n+1, record[xor(1, n)])+1` -/
def P3663244758764455813.Spec : Prop :=
  ∀ n, (P3663244758764455813.a n : ℤ) = A065621 (n + 1)

end A065621

/-! ## A065621.P3561020026046765791

`root(xor(n, n+1+n), 2)²`
-/

namespace A065621.P3561020026046765791
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.xor n (n + 1 + n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A065621.P3561020026046765791

namespace A065621

/-- `root(xor(n, n+1+n), 2)²` -/
def P3561020026046765791.Spec : Prop :=
  ∀ n, P3561020026046765791.a n = (A065621 (n + 1) : ℝ)

end A065621

/-! ## A065621.P7818524035970523041

`abs(xor(n, (n+1)²-n²))`
-/

namespace A065621.P7818524035970523041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (((n + 1) ^ 2 : ℤ) - (n ^ 2 : ℤ))|

end

end A065621.P7818524035970523041

namespace A065621

/-- `abs(xor(n, (n+1)²-n²))` -/
def P7818524035970523041.Spec : Prop :=
  ∀ n, P7818524035970523041.a n = A065621 (n + 1)

end A065621

/-! ## A065621.P10156641166746547055

`1-xor(1, -xor(n-1, 2*n))`
-/

namespace A065621.P10156641166746547055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.xor 1 (-Int.xor ((n : ℤ) - 1) (2 * n : ℤ))

end

end A065621.P10156641166746547055

namespace A065621

/-- `1-xor(1, -xor(n-1, 2*n))` -/
def P10156641166746547055.Spec : Prop :=
  ∀ n, P10156641166746547055.a n = A065621 (n + 1)

end A065621

/-! ## A065621.P6845699961427279986

`xor(2*n, Δ[n*2*n])/2`
-/

namespace A065621.P6845699961427279986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (2 * n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2

end

end A065621.P6845699961427279986

namespace A065621

/-- `xor(2*n, Δ[n*2*n])/2` -/
def P6845699961427279986.Spec : Prop :=
  ∀ n, P6845699961427279986.a n = (A065621 (n + 1) : ℚ)

end A065621

/-! ## A065621.P11178872813369765667

`or(n+1, 2*n)-and(n, 2*n)`
-/

namespace A065621.P11178872813369765667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor (n + 1) (2 * n) : ℤ) - (Nat.land n (2 * n) : ℤ)

end

end A065621.P11178872813369765667

namespace A065621

/-- `or(n+1, 2*n)-and(n, 2*n)` -/
def P11178872813369765667.Spec : Prop :=
  ∀ n, P11178872813369765667.a n = A065621 (n + 1)

end A065621

/-! ## A065621.P3028629808648907141

`and(2*n, -(4*(n+1)))+n+1`
-/

namespace A065621.P3028629808648907141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(4 * (n + 1) : ℤ)) + (n + 1 : ℤ)

end

end A065621.P3028629808648907141

namespace A065621

/-- `and(2*n, -(4*(n+1)))+n+1` -/
def P3028629808648907141.Spec : Prop :=
  ∀ n, P3028629808648907141.a n = A065621 (n + 1)

end A065621

/-! ## A065621.P11942945559050455593

`n-or(4*n+2, -(2*n+1))`
-/

namespace A065621.P11942945559050455593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor (4 * n + 2 : ℤ) (-(2 * n + 1 : ℤ))

end

end A065621.P11942945559050455593

namespace A065621

/-- `n-or(4*n+2, -(2*n+1))` -/
def P11942945559050455593.Spec : Prop :=
  ∀ n, P11942945559050455593.a n = A065621 (n + 1)

end A065621

/-! ## A065621.P4533393622982266803

`2*(n-and(n, 2*n+1))+n+1`
-/

namespace A065621.P4533393622982266803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - (Nat.land n (2 * n + 1) : ℤ)) + (n + 1 : ℤ)

end

end A065621.P4533393622982266803

namespace A065621

/-- `2*(n-and(n, 2*n+1))+n+1` -/
def P4533393622982266803.Spec : Prop :=
  ∀ n, P4533393622982266803.a n = A065621 (n + 1)

end A065621

/-! ## A065621.P4349722981877982757

`A268669(A277823(n+1))`
-/

namespace A065621.P4349722981877982757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (A277823 (n + 1)).toNat

end

end A065621.P4349722981877982757

namespace A065621

/-- `A268669(A277823(n+1))` -/
def P4349722981877982757.Spec : Prop :=
  ∀ n, P4349722981877982757.a n = A065621 (n + 1)

end A065621

/-! ## A065621.P7807900500689838589

`A062383(n)+A038556(n)`
-/

namespace A065621.P7807900500689838589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n + A038556 n

end

end A065621.P7807900500689838589

namespace A065621

/-- `A062383(n)+A038556(n)` -/
def P7807900500689838589.Spec : Prop :=
  ∀ n, P7807900500689838589.a n = A065621 (n + 1)

end A065621

/-! ## A065621.P16683560717620246015

`A268669(A003188(2*n+1))`
-/

namespace A065621.P16683560717620246015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (A003188 (2 * n + 1)).toNat

end

end A065621.P16683560717620246015

namespace A065621

/-- `A268669(A003188(2*n+1))` -/
def P16683560717620246015.Spec : Prop :=
  ∀ n, P16683560717620246015.a n = A065621 (n + 1)

end A065621

/-! ## A065621.P3024306044137592650

`A047239(n+1)-A048728(n)`
-/

namespace A065621.P3024306044137592650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047239 (n + 1) - A048728 n

end

end A065621.P3024306044137592650

namespace A065621

/-- `A047239(n+1)-A048728(n)` -/
def P3024306044137592650.Spec : Prop :=
  ∀ n, P3024306044137592650.a n = A065621 (n + 1)

end A065621

/-! ## A065621.P920693114717433995

`A286548(2*n+1)+2*n+1`
-/

namespace A065621.P920693114717433995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 (2 * n + 1) + (2 * n + 1 : ℤ)

end

end A065621.P920693114717433995

namespace A065621

/-- `A286548(2*n+1)+2*n+1` -/
def P920693114717433995.Spec : Prop :=
  ∀ n, P920693114717433995.a n = A065621 (n + 1)

end A065621

/-! ## A065621.P11252374409755574426

`A000069(A003188(n)+1)`
-/

namespace A065621.P11252374409755574426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A003188 n + 1).toNat

end

end A065621.P11252374409755574426

namespace A065621

/-- `A000069(A003188(n)+1)` -/
def P11252374409755574426.Spec : Prop :=
  ∀ n, P11252374409755574426.a n = A065621 (n + 1)

end A065621

/-! ## A065621.P17536314327000430220

`A000069(A105081(n+1))`
-/

namespace A065621.P17536314327000430220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A105081 (n + 1)).toNat

end

end A065621.P17536314327000430220

namespace A065621

/-- `A000069(A105081(n+1))` -/
def P17536314327000430220.Spec : Prop :=
  ∀ n, P17536314327000430220.a n = A065621 (n + 1)

end A065621

/-! ## A065621.P8002984668113680413

`A277901(A000069(n+1))`
-/

namespace A065621.P8002984668113680413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277901 (A000069 (n + 1)).toNat

end

end A065621.P8002984668113680413

namespace A065621

/-- `A277901(A000069(n+1))` -/
def P8002984668113680413.Spec : Prop :=
  ∀ n, P8002984668113680413.a n = A065621 (n + 1)

end A065621

/-!
# A065622: Numerator of 1 - (3/4)^n - frac((3/2)^n), where frac(x) = x - floor(x).

The programs for A065622, the canonical program `A065622.P3252005977964471814` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065622 has offset 0).

The definition of A065622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065622.P16041063853379923792

`A005061(n)-A002380(n)*A000079(n)`
-/

namespace A065622.P16041063853379923792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 n - A002380 n * A000079 n

end

end A065622.P16041063853379923792

namespace A065622

/-- `A005061(n)-A002380(n)*A000079(n)` -/
def P16041063853379923792.Spec : Prop :=
  ∀ n, P16041063853379923792.a n = A065622 n

end A065622

/-! ## A065622.P3252005977964471814

`4^n*(1+floor((3/2)^n))-3^n-6^n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065622

/-- `4^n*(1+floor((3/2)^n))-3^n-6^n` -/
def P3252005977964471814.Spec : Prop :=
  ∀ n, P3252005977964471814.a n = A065622 n

theorem P3252005977964471814.correct : P3252005977964471814.Spec := by
  intro n
  simp only [A065622]

end A065622

/-! ## A065622.P193109687515052861

`(A005061(n)-(6^n)%(4^n))%A000400(n)`
-/

namespace A065622.P193109687515052861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005061 n - ((6 ^ n % 4 ^ n : ℕ) : ℤ)) (A000400 n)

end

end A065622.P193109687515052861

namespace A065622

/-- `(A005061(n)-(6^n)%(4^n))%A000400(n)` -/
def P193109687515052861.Spec : Prop :=
  ∀ n, P193109687515052861.a n = A065622 n

end A065622

/-!
# A065623: a(n) = floor(abs(cos(n)/cos(2n))).

The programs for A065623, the canonical program `A065623.P14161991079757764054` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065623 has offset 0).

The definition of A065623 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(abs(cos(n)/cos(2*n)))` (program `A065623.P14161991079757764054`, by `A065623.P14161991079757764054.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065623.P14161991079757764054

`floor(abs(cos(n)/cos(2*n)))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065623

/-- `floor(abs(cos(n)/cos(2*n)))` -/
def P14161991079757764054.Spec : Prop :=
  ∀ n, P14161991079757764054.a n = A065623 n

theorem P14161991079757764054.correct : P14161991079757764054.Spec := by
  intro n
  simp only [A065623]

end A065623

/-! ## A065623.P14700308423737263320

`and(A000201(A000071(n+6)), A104714(n+8))`
-/

namespace A065623.P14700308423737263320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000201 (A000071 (n + 6)).toNat) (A104714 (n + 8))

end

end A065623.P14700308423737263320

namespace A065623

/-- `and(A000201(A000071(n+6)), A104714(n+8))` -/
def P14700308423737263320.Spec : Prop :=
  ∀ n, P14700308423737263320.a n = A065623 n

end A065623

/-! ## A065623.P6909272411016106201

`A144955(A014710(n)*A144955(A067345(n+1)))`
-/

namespace A065623.P6909272411016106201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144955 (A014710 n * A144955 (A067345 (n + 1)).toNat).toNat

end

end A065623.P6909272411016106201

namespace A065623

/-- `A144955(A014710(n)*A144955(A067345(n+1)))` -/
def P6909272411016106201.Spec : Prop :=
  ∀ n, P6909272411016106201.a n = A065623 n

end A065623

/-! ## A065623.P8590870663014313530

`A227140(A052980(n))%A010888(3*n+4)`
-/

namespace A065623.P8590870663014313530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227140 (A052980 n).toNat) (A010888 (3 * n + 4))

end

end A065623.P8590870663014313530

namespace A065623

/-- `A227140(A052980(n))%A010888(3*n+4)` -/
def P8590870663014313530.Spec : Prop :=
  ∀ n, P8590870663014313530.a n = A065623 n

end A065623

/-! ## A065623.P15801164693284987114

`A258978(2*n+3)%A040330(A000079(n+1))`
-/

namespace A065623.P15801164693284987114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258978 (2 * n + 3)) (A040330 (A000079 (n + 1)).toNat)

end

end A065623.P15801164693284987114

namespace A065623

/-- `A258978(2*n+3)%A040330(A000079(n+1))` -/
def P15801164693284987114.Spec : Prop :=
  ∀ n, P15801164693284987114.a n = A065623 n

end A065623

/-!
# A065627: Permutation of N induced by rotating the node 2 right in the infinite planar binary tree. The second row of A065625. Inverse of A065628.

The programs for A065627, there is no canonical definition to state claims against.
-/

/-! ## A065627.P2026053778854861068

`A054429(A065630(A054429(n+1)))`
-/

namespace A065627.P2026053778854861068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065630 (A054429 (n + 1)).toNat).toNat

end

end A065627.P2026053778854861068

/-! ## A065627.P15545855999174161455

`A057114(A065631(A057115(n+1)))`
-/

namespace A065627.P15545855999174161455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057114 (A065631 (A057115 (n + 1)).toNat).toNat

end

end A065627.P15545855999174161455

/-! ## A065627.P6656786870007173880

`A057114(A065631(A065626(∑[n])))`
-/

namespace A065627.P6656786870007173880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057114 (A065631 (A065626 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A065627.P6656786870007173880

/-! ## A065627.P9652362351153581375

`A065625(∑[n+1]+1)`
-/

namespace A065627.P9652362351153581375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065625 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A065627.P9652362351153581375

/-!
# A065628: Permutation of N induced by rotating the node 2 left in the infinite planar binary tree. The second row of A065626. Inverse of A065627.

The programs for A065628, there is no canonical definition to state claims against.
-/

/-! ## A065628.P2652810512498932402

`A054429(A065629(A054429(n+1)))`
-/

namespace A065628.P2652810512498932402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065629 (A054429 (n + 1)).toNat).toNat

end

end A065628.P2652810512498932402

/-! ## A065628.P9003697138968862910

`A057114(A065632(A057115(n+1)))`
-/

namespace A065628.P9003697138968862910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057114 (A065632 (A057115 (n + 1)).toNat).toNat

end

end A065628.P9003697138968862910

/-! ## A065628.P5544331534603644149

`A117120(A065627(A117120(n+1)))`
-/

namespace A065628.P5544331534603644149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117120 (A065627 (A117120 (n + 1)).toNat).toNat

end

end A065628.P5544331534603644149

/-! ## A065628.P13012041864615427

`A057115(A057115(A065629(A057114(n+1))))`
-/

namespace A065628.P13012041864615427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057115 (A057115 (A065629 (A057114 (n + 1)).toNat).toNat).toNat

end

end A065628.P13012041864615427

/-! ## A065628.P17577446920062915692

`A057114(A065632(A065626(∑[n])))`
-/

namespace A065628.P17577446920062915692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057114 (A065632 (A065626 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A065628.P17577446920062915692

/-! ## A065628.P11284506276595970292

`A065626(∑[n+1]+1)`
-/

namespace A065628.P11284506276595970292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065626 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A065628.P11284506276595970292

/-!
# A065629: Permutation of N induced by rotating the node 3 right in the infinite planar binary tree. The third row of A065625. Inverse of A065630.

The programs for A065629, there is no canonical definition to state claims against.
-/

/-! ## A065629.P11882636930009719538

`A054429(A065628(A054429(n+1)))`
-/

namespace A065629.P11882636930009719538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065628 (A054429 (n + 1)).toNat).toNat

end

end A065629.P11882636930009719538

/-! ## A065629.P8374322181627845538

`A054429(A057114(A065632(A054429(A057114(n+1)))))`
-/

namespace A065629.P8374322181627845538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A057114 (A065632 (A054429 (A057114 (n + 1)).toNat).toNat).toNat).toNat

end

end A065629.P8374322181627845538

/-! ## A065629.P17860952313445341229

`A057114(A057114(A065628(A057115(n+1))))`
-/

namespace A065629.P17860952313445341229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057114 (A057114 (A065628 (A057115 (n + 1)).toNat).toNat).toNat

end

end A065629.P17860952313445341229

/-! ## A065629.P1612756342342694670

`A057115(A065637(A057114(n+1)))`
-/

namespace A065629.P1612756342342694670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057115 (A065637 (A057114 (n + 1)).toNat).toNat

end

end A065629.P1612756342342694670

/-! ## A065629.P12138132986817358571

`A057115(A065637(A065625(∑[n])))`
-/

namespace A065629.P12138132986817358571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057115 (A065637 (A065625 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A065629.P12138132986817358571

/-! ## A065629.P15355416928135321766

`A065625(A134869(n+2)+1)`
-/

namespace A065629.P15355416928135321766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065625 (A134869 (n + 2) + 1).toNat

end

end A065629.P15355416928135321766

/-! ## A065629.P3221849562227234468

`A065625(A167614(n+1)-1)`
-/

namespace A065629.P3221849562227234468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065625 (A167614 (n + 1) - 1).toNat

end

end A065629.P3221849562227234468

/-!
# A065630: Permutation of N induced by rotating the node 3 left in the infinite planar binary tree. The third row of A065626. Inverse of A065629.

The programs for A065630, there is no canonical definition to state claims against.
-/

/-! ## A065630.P15108155058669416698

`A054429(A065627(A054429(n+1)))`
-/

namespace A065630.P15108155058669416698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065627 (A054429 (n + 1)).toNat).toNat

end

end A065630.P15108155058669416698

/-! ## A065630.P12358060908254790609

`A117120(A065629(A117120(n+1)))`
-/

namespace A065630.P12358060908254790609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117120 (A065629 (A117120 (n + 1)).toNat).toNat

end

end A065630.P12358060908254790609

/-! ## A065630.P13043959692894385979

`A057114(A065627(A057115(A057115(n+1))))`
-/

namespace A065630.P13043959692894385979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057114 (A065627 (A057115 (A057115 (n + 1)).toNat).toNat).toNat

end

end A065630.P13043959692894385979

/-! ## A065630.P14810831991398922508

`A057115(A065638(A057114(n+1)))`
-/

namespace A065630.P14810831991398922508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057115 (A065638 (A057114 (n + 1)).toNat).toNat

end

end A065630.P14810831991398922508

/-! ## A065630.P11704830022497262887

`A065626(A000124(n+2)+1)`
-/

namespace A065630.P11704830022497262887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065626 (A000124 (n + 2) + 1).toNat

end

end A065630.P11704830022497262887

/-! ## A065630.P13335396614547583548

`A065626(A167614(n+1)-1)`
-/

namespace A065630.P13335396614547583548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065626 (A167614 (n + 1) - 1).toNat

end

end A065630.P13335396614547583548

/-!
# A065631: Permutation of N induced by rotating the node 4 right in the infinite planar binary tree. The fourth row of A065625. Inverse of A065632.

The programs for A065631, there is no canonical definition to state claims against.
-/

/-! ## A065631.P855185139606955454

`A057115(A065627(A057114(n+1)))`
-/

namespace A065631.P855185139606955454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057115 (A065627 (A057114 (n + 1)).toNat).toNat

end

end A065631.P855185139606955454

/-! ## A065631.P2186653099265517048

`A054429(A065638(A054429(n+1)))`
-/

namespace A065631.P2186653099265517048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065638 (A054429 (n + 1)).toNat).toNat

end

end A065631.P2186653099265517048

/-! ## A065631.P11347969456314276251

`A057114(A065639(A057115(n+1)))`
-/

namespace A065631.P11347969456314276251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057114 (A065639 (A057115 (n + 1)).toNat).toNat

end

end A065631.P11347969456314276251

/-! ## A065631.P12870767319035605329

`A065627(A065639(A065628(n+1)))`
-/

namespace A065631.P12870767319035605329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065627 (A065639 (A065628 (n + 1)).toNat).toNat

end

end A065631.P12870767319035605329

/-! ## A065631.P13656138263091121415

`A065628(A065634(A065627(A065627(n+1))))`
-/

namespace A065631.P13656138263091121415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065628 (A065634 (A065627 (A065627 (n + 1)).toNat).toNat).toNat

end

end A065631.P13656138263091121415

/-! ## A065631.P13958389393277215826

`A065625(A167614(n+2))`
-/

namespace A065631.P13958389393277215826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065625 (A167614 (n + 2)).toNat

end

end A065631.P13958389393277215826

/-!
# A065632: Permutation of N induced by rotating the node 4 left in the infinite planar binary tree. The fourth row of A065626. Inverse of A065631.

The programs for A065632, there is no canonical definition to state claims against.
-/

/-! ## A065632.P494867915347686828

`A057115(A065628(A057114(n+1)))`
-/

namespace A065632.P494867915347686828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057115 (A065628 (A057114 (n + 1)).toNat).toNat

end

end A065632.P494867915347686828

/-! ## A065632.P6039910183227112909

`A054429(A065637(A054429(n+1)))`
-/

namespace A065632.P6039910183227112909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065637 (A054429 (n + 1)).toNat).toNat

end

end A065632.P6039910183227112909

/-! ## A065632.P8630894036641257965

`A057114(A065640(A057115(n+1)))`
-/

namespace A065632.P8630894036641257965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057114 (A065640 (A057115 (n + 1)).toNat).toNat

end

end A065632.P8630894036641257965

/-! ## A065632.P2756024025182249232

`A065627(A065640(A065628(n+1)))`
-/

namespace A065632.P2756024025182249232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065627 (A065640 (A065628 (n + 1)).toNat).toNat

end

end A065632.P2756024025182249232

/-! ## A065632.P559493373832049597

`A057114(A065640(A059893(A065260(A059893(n+1)))))`
-/

namespace A065632.P559493373832049597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057114 (A065640 (A059893 (A065260 (A059893 (n + 1)).toNat).toNat).toNat).toNat

end

end A065632.P559493373832049597

/-! ## A065632.P16115442116779097785

`A065626(A167614(n+2))`
-/

namespace A065632.P16115442116779097785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065626 (A167614 (n + 2)).toNat

end

end A065632.P16115442116779097785

/-!
# A065633: Permutation of N induced by rotating the node 5 right in the infinite planar binary tree. The fifth row of A065625. Inverse of A065634.

The programs for A065633, there is no canonical definition to state claims against.
-/

/-! ## A065633.P9588430328233468638

`A054429(A065636(A054429(n+1)))`
-/

namespace A065633.P9588430328233468638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065636 (A054429 (n + 1)).toNat).toNat

end

end A065633.P9588430328233468638

/-! ## A065633.P11838411539350742885

`A057115(A065635(A057114(n+1)))`
-/

namespace A065633.P11838411539350742885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057115 (A065635 (A057114 (n + 1)).toNat).toNat

end

end A065633.P11838411539350742885

/-! ## A065633.P8411118172405899958

`A065627(A065627(A065632(A065628(n+1))))`
-/

namespace A065633.P8411118172405899958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065627 (A065627 (A065632 (A065628 (n + 1)).toNat).toNat).toNat

end

end A065633.P8411118172405899958

/-! ## A065633.P12579538307561143393

`A065625(A347553(n+7)-n)`
-/

namespace A065633.P12579538307561143393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065625 (A347553 (n + 7) - (n : ℤ)).toNat

end

end A065633.P12579538307561143393

/-! ## A065633.P17692103191388224808

`A065625(A000217(n+5)-(n+1))`
-/

namespace A065633.P17692103191388224808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065625 (A000217 (n + 5) - (n + 1 : ℤ)).toNat

end

end A065633.P17692103191388224808

/-!
# A065634: Permutation of N induced by rotating the node 5 left in the infinite planar binary tree. The fifth row of A065626. Inverse of A065633.

The programs for A065634, there is no canonical definition to state claims against.
-/

/-! ## A065634.P14378154647627837942

`A054429(A065635(A054429(n+1)))`
-/

namespace A065634.P14378154647627837942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065635 (A054429 (n + 1)).toNat).toNat

end

end A065634.P14378154647627837942

/-! ## A065634.P10062847882763343716

`A117120(A065631(A117120(n+1)))`
-/

namespace A065634.P10062847882763343716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117120 (A065631 (A117120 (n + 1)).toNat).toNat

end

end A065634.P10062847882763343716

/-! ## A065634.P12911337955845159870

`A054429(A057114(A065633(A054429(A057114(n+1)))))`
-/

namespace A065634.P12911337955845159870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A057114 (A065633 (A054429 (A057114 (n + 1)).toNat).toNat).toNat).toNat

end

end A065634.P12911337955845159870

/-! ## A065634.P16906549979724063712

`A065627(A065631(A065628(A065628(n+1))))`
-/

namespace A065634.P16906549979724063712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065627 (A065631 (A065628 (A065628 (n + 1)).toNat).toNat).toNat

end

end A065634.P16906549979724063712

/-!
# A065635: Permutation of N induced by rotating the node 6 right in the infinite planar binary tree. The sixth row of A065625. Inverse of A065636.

The programs for A065635, there is no canonical definition to state claims against.
-/

/-! ## A065635.P14689591417886068087

`A054429(A065634(A054429(n+1)))`
-/

namespace A065635.P14689591417886068087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065634 (A054429 (n + 1)).toNat).toNat

end

end A065635.P14689591417886068087

/-! ## A065635.P8937300599713952934

`A057114(A065633(A057115(n+1)))`
-/

namespace A065635.P8937300599713952934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057114 (A065633 (A057115 (n + 1)).toNat).toNat

end

end A065635.P8937300599713952934

/-! ## A065635.P6661791063384947021

`A065630(A065638(A065629(A065629(n+1))))`
-/

namespace A065635.P6661791063384947021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065630 (A065638 (A065629 (A065629 (n + 1)).toNat).toNat).toNat

end

end A065635.P6661791063384947021

/-! ## A065635.P2869035501466082146

`A065625(A052905(n+4)-A000027(2*n+3))`
-/

namespace A065635.P2869035501466082146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065625 (A052905 (n + 4) - A000027 (2 * n + 3)).toNat

end

end A065635.P2869035501466082146

/-!
# A065636: Permutation of N induced by rotating the node 6 left in the infinite planar binary tree. The sixth row of A065626. Inverse of A065635.

The programs for A065636, there is no canonical definition to state claims against.
-/

/-! ## A065636.P833753388387381117

`A054429(A065633(A054429(n+1)))`
-/

namespace A065636.P833753388387381117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065633 (A054429 (n + 1)).toNat).toNat

end

end A065636.P833753388387381117

/-! ## A065636.P11182162849052449185

`A117120(A065637(A117120(n+1)))`
-/

namespace A065636.P11182162849052449185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117120 (A065637 (A117120 (n + 1)).toNat).toNat

end

end A065636.P11182162849052449185

/-! ## A065636.P3419437864258020607

`A065630(A065630(A065637(A065629(n+1))))`
-/

namespace A065636.P3419437864258020607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065630 (A065630 (A065637 (A065629 (n + 1)).toNat).toNat).toNat

end

end A065636.P3419437864258020607

/-!
# A065637: Permutation of N induced by rotating the node 7 right in the infinite planar binary tree. The seventh row of A065625. Inverse of A065638.

The programs for A065637, there is no canonical definition to state claims against.
-/

/-! ## A065637.P15527720761856682857

`A054429(A065632(A054429(n+1)))`
-/

namespace A065637.P15527720761856682857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065632 (A054429 (n + 1)).toNat).toNat

end

end A065637.P15527720761856682857

/-! ## A065637.P8132239985002995495

`A057114(A065629(A057115(n+1)))`
-/

namespace A065637.P8132239985002995495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057114 (A065629 (A057115 (n + 1)).toNat).toNat

end

end A065637.P8132239985002995495

/-! ## A065637.P17325566912048293647

`A057114(A065629(A065626(∑[n])))`
-/

namespace A065637.P17325566912048293647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057114 (A065629 (A065626 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A065637.P17325566912048293647

/-!
# A065638: Permutation of N induced by rotating the node 7 left in the infinite planar binary tree. The seventh row of A065626. Inverse of A065637.

The programs for A065638, there is no canonical definition to state claims against.
-/

/-! ## A065638.P11090607525065980825

`A054429(A065631(A054429(n+1)))`
-/

namespace A065638.P11090607525065980825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065631 (A054429 (n + 1)).toNat).toNat

end

end A065638.P11090607525065980825

/-! ## A065638.P7218322296662220220

`A054429(A057115(A054429(A065630(A057115(n+1)))))`
-/

namespace A065638.P7218322296662220220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A057115 (A054429 (A065630 (A057115 (n + 1)).toNat).toNat).toNat).toNat

end

end A065638.P7218322296662220220

/-! ## A065638.P13493411730459304919

`A065629(A065635(A065630(A065630(n+1))))`
-/

namespace A065638.P13493411730459304919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065629 (A065635 (A065630 (A065630 (n + 1)).toNat).toNat).toNat

end

end A065638.P13493411730459304919

/-! ## A065638.P8249716508149776158

`A065626(A167499(n+5)+1)`
-/

namespace A065638.P8249716508149776158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065626 (A167499 (n + 5) + 1).toNat

end

end A065638.P8249716508149776158

/-! ## A065638.P5412370967477275614

`A065626(A052905(n+3)+11)`
-/

namespace A065638.P5412370967477275614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065626 (A052905 (n + 3) + 11).toNat

end

end A065638.P5412370967477275614

/-!
# A065639: Permutation of N induced by rotating the node 8 right in the infinite planar binary tree. The eighth row of A065625. Inverse of A065640.

The programs for A065639, there is no canonical definition to state claims against.
-/

/-! ## A065639.P1192337745463699633

`A057115(A065631(A057114(n+1)))`
-/

namespace A065639.P1192337745463699633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057115 (A065631 (A057114 (n + 1)).toNat).toNat

end

end A065639.P1192337745463699633

/-! ## A065639.P10084266377390237814

`A065628(A065631(A065627(n+1)))`
-/

namespace A065639.P10084266377390237814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065628 (A065631 (A065627 (n + 1)).toNat).toNat

end

end A065639.P10084266377390237814

/-!
# A065640: Permutation of N induced by rotating the node 8 left in the infinite planar binary tree. The eighth row of A065626. Inverse of A065639.

The programs for A065640, there is no canonical definition to state claims against.
-/

/-! ## A065640.P15342929400058563276

`A057115(A065632(A057114(n+1)))`
-/

namespace A065640.P15342929400058563276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057115 (A065632 (A057114 (n + 1)).toNat).toNat

end

end A065640.P15342929400058563276

/-! ## A065640.P15455909486732225031

`A057115(A065632(A054429(A057115(A054429(n+1)))))`
-/

namespace A065640.P15455909486732225031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057115 (A065632 (A054429 (A057115 (A054429 (n + 1)).toNat).toNat).toNat).toNat

end

end A065640.P15455909486732225031

/-! ## A065640.P13351214677477121041

`A065628(A065632(A065627(n+1)))`
-/

namespace A065640.P13351214677477121041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065628 (A065632 (A065627 (n + 1)).toNat).toNat

end

end A065640.P13351214677477121041

/-! ## A065640.P15768160675737226572

`A000189(37*(n+1)²)`
-/

namespace A065640.P15768160675737226572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (37 * (n + 1) ^ 2)

end

end A065640.P15768160675737226572

/-! ## A065640.P9157614493768676478

`A039958(A129196(n))`
-/

namespace A065640.P9157614493768676478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039958 (A129196 n).toNat

end

end A065640.P9157614493768676478

/-!
# A065641: Smallest number with persistence n for the sort-and-subtract-sequence.

The programs for A065641, there is no canonical definition to state claims against.
-/

/-! ## A065641.P15119284362948065598

`A197652(eq[A110655(n), A156354(n)])`
-/

namespace A065641.P15119284362948065598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A065641.P15119284362948065598

/-! ## A065641.P7915178597319271223

`lt[A004159(n), A026791(A000603(n+3))]`
-/

namespace A065641.P7915178597319271223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026791 (A000603 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065641.P7915178597319271223

/-!
# A065642: a(1) = 1; for n > 1, a(n) = Min {m > n | m has same prime factors as n ignoring multiplicity}.

The programs for A065642, there is no canonical definition to state claims against.
-/

/-! ## A065642.P2884734735979419981

`(n+1)*A285336(n+1)/A285337(n+1)`
-/

namespace A065642.P2884734735979419981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A285336 (n + 1) : ℚ) / (A285337 (n + 1) : ℚ))

end

end A065642.P2884734735979419981

/-! ## A065642.P10603800401568065683

`A285109(n+1)-A091009(A182988(n))`
-/

namespace A065642.P10603800401568065683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285109 (n + 1) - A091009 (A182988 n).toNat

end

end A065642.P10603800401568065683

/-! ## A065642.P11945045631257409578

`(A028233(n+1)-A010054(A028282(2*n+3)))*A007947(n+1)`
-/

namespace A065642.P11945045631257409578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028233 (n + 1) - A010054 (A028282 (2 * n + 3)).toNat) * A007947 (n + 1)

end

end A065642.P11945045631257409578

/-! ## A065642.P12465155219814296952

`A015052(n+1)*A034684(A077168(n))`
-/

namespace A065642.P12465155219814296952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (n + 1) * A034684 (A077168 n).toNat

end

end A065642.P12465155219814296952

/-! ## A065642.P443242923709341352

`A002034(A010786(n+1))*A020639(n+1)`
-/

namespace A065642.P443242923709341352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A010786 (n + 1)).toNat * A020639 (n + 1)

end

end A065642.P443242923709341352

/-!
# A065643: Smallest integer value > 1 of the form floor((3/2)^k)/floor((3/2)^n).

The programs for A065643, there is no canonical definition to state claims against.
-/

/-! ## A065643.P17435388859751274057

`A002379(A065644(n+1))/A002379(n+1)`
-/

namespace A065643.P17435388859751274057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002379 (A065644 (n + 1)).toNat : ℚ) / (A002379 (n + 1) : ℚ)

end

end A065643.P17435388859751274057

/-!
# A065646: Denominators of convergents to twin prime constant.

The programs for A065646, there is no canonical definition to state claims against.
-/

/-! ## A065646.P13014377259496643322

`a(n-2)+a(n-1)*A065645(n)` with `a(0)=1, a(1)=1`
-/

namespace A065646.P13014377259496643322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A065645 n

end

end A065646.P13014377259496643322

/-! ## A065646.P14497802187354055207

`A066657(n^n-C(n, 2))`
-/

namespace A065646.P14497802187354055207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (n ^ n - Nat.choose n 2)

end

end A065646.P14497802187354055207

/-!
# A065647: Numerators of convergents to twin prime constant.

The programs for A065647, there is no canonical definition to state claims against.
-/

/-! ## A065647.P16678282280379249653

`a(n-2)+a(n-1)*A065645(n)` with `a(0)=0, a(1)=1`
-/

namespace A065647.P16678282280379249653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) * A065645 n

end

end A065647.P16678282280379249653

/-! ## A065647.P7546923457344263633

`A008676(A041671(n+1))`
-/

namespace A065647.P7546923457344263633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A041671 (n + 1)).toNat

end

end A065647.P7546923457344263633

/-! ## A065647.P8744285344393048092

`A008676(ratio[A041671(n)]*A041671(n))`
-/

namespace A065647.P8744285344393048092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A041671 n : ℚ))).toNat

end

end A065647.P8744285344393048092

/-!
# A065648: a(0) = 1 and for n > 0: a(n) = number of indices 0 <= i <= n with A033307(i)=A033307(n), where A033307 is the sequence of decimal digits of Champernowne's constant 0.123456789101112131415...

The programs for A065648, there is no canonical definition to state claims against.
-/

/-! ## A065648.P5283220054241412920

`A256100(A261334(A065649(n))+1)`
-/

namespace A065648.P5283220054241412920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256100 (A261334 (A065649 n).toNat + 1).toNat

end

end A065648.P5283220054241412920

/-! ## A065648.P3470458591732528481

`A008616(A065649(n)-A007376(n))`
-/

namespace A065648.P3470458591732528481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A065649 n - A007376 n).toNat

end

end A065648.P3470458591732528481

/-!
# A065649: Permutation of nonnegative integers based on Champernowne's constant 0.123456789101112131415...

The programs for A065649, there is no canonical definition to state claims against.
-/

/-! ## A065649.P17066875252509294528

`A261293(A065650(n))`
-/

namespace A065649.P17066875252509294528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261293 (A065650 n).toNat

end

end A065649.P17066875252509294528

/-! ## A065649.P11908329551272788836

`A065650(lt[A261294(n), 15])`
-/

namespace A065649.P11908329551272788836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261294 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A065649.P11908329551272788836

/-! ## A065649.P5750145878610336281

`A004186(xor(n, A131488(A346520(n))))`
-/

namespace A065649.P5750145878610336281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (Int.xor (n : ℤ) (A131488 (A346520 n).toNat)).toNat

end

end A065649.P5750145878610336281

/-!
# A065650: Inverse permutation to A065649.

The programs for A065650, there is no canonical definition to state claims against.
-/

/-! ## A065650.P976008716976265481

`A065649(A261294(n))`
-/

namespace A065650.P976008716976265481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065649 (A261294 n).toNat

end

end A065650.P976008716976265481

/-! ## A065650.P3158106207886243472

`A064223(n+1)-A153152(A120263(A089408(n)))`
-/

namespace A065650.P3158106207886243472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064223 (n + 1) - A153152 (A120263 (A089408 n).toNat).toNat

end

end A065650.P3158106207886243472

/-!
# A065651: a(n) = Sum_{k=1..n} (-1)^tau(k) = n - 2*floor(sqrt(n)).

The programs for A065651, the canonical program `A065651.P6946383518765194660` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065651 has offset 2).

The definition of A065651 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+2-2*floor(sqrt(n+2))` (program `A065651.P6946383518765194660`, by `A065651.P6946383518765194660.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065651.P6946383518765194660

`n+2-2*floor(sqrt(n+2))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065651

/-- `n+2-2*floor(sqrt(n+2))` -/
def P6946383518765194660.Spec : Prop :=
  ∀ n, P6946383518765194660.a n = A065651 (n + 2)

theorem P6946383518765194660.correct : P6946383518765194660.Spec := by
  intro n
  simp only [A065651, Nat.add_sub_cancel]

end A065651

/-! ## A065651.P17981024050596344999

`(n*floor(sqrt(n+2)))%(n+2)`
-/

namespace A065651.P17981024050596344999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.sqrt (n + 2) % (n + 2)

end

end A065651.P17981024050596344999

namespace A065651

/-- `(n*floor(sqrt(n+2)))%(n+2)` -/
def P17981024050596344999.Spec : Prop :=
  ∀ n, (P17981024050596344999.a n : ℤ) = A065651 (n + 2)

end A065651

/-! ## A065651.P11711004897883874333

`A023443(∑[A158387(n+2)])`
-/

namespace A065651.P11711004897883874333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158387 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065651.P11711004897883874333

namespace A065651

/-- `A023443(∑[A158387(n+2)])` -/
def P11711004897883874333.Spec : Prop :=
  ∀ n, P11711004897883874333.a n = A065651 (n + 2)

end A065651

/-! ## A065651.P11589979023307683274

`∑[A057428(n)^A000005(n+2)]`
-/

namespace A065651.P11589979023307683274
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) ^ (A000005 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065651.P11589979023307683274

namespace A065651

/-- `∑[A057428(n)^A000005(n+2)]` -/
def P11589979023307683274.Spec : Prop :=
  ∀ n, P11589979023307683274.a n = (A065651 (n + 2) : ℚ)

end A065651

/-! ## A065651.P4950622276313073292

`∑[A134824(n)^A000005(n+2)]`
-/

namespace A065651.P4950622276313073292
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134824 n : ℚ) ^ (A000005 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065651.P4950622276313073292

namespace A065651

/-- `∑[A134824(n)^A000005(n+2)]` -/
def P4950622276313073292.Spec : Prop :=
  ∀ n, P4950622276313073292.a n = (A065651 (n + 2) : ℚ)

end A065651

/-! ## A065651.P7715091306850436300

`abs(∑[A000122(n+2)]-n)`
-/

namespace A065651.P7715091306850436300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A065651.P7715091306850436300

namespace A065651

/-- `abs(∑[A000122(n+2)]-n)` -/
def P7715091306850436300.Spec : Prop :=
  ∀ n, P7715091306850436300.a n = A065651 (n + 2)

end A065651

/-! ## A065651.P13436485430308270102

`∑[Δ[A098141(n+1)]%(n+1)]`
-/

namespace A065651.P13436485430308270102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098141 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065651.P13436485430308270102

namespace A065651

/-- `∑[Δ[A098141(n+1)]%(n+1)]` -/
def P13436485430308270102.Spec : Prop :=
  ∀ n, P13436485430308270102.a n = A065651 (n + 2)

end A065651

/-! ## A065651.P13268728467670408057

`∑[A057428(n)^A003973(n+2)]`
-/

namespace A065651.P13268728467670408057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) ^ (A003973 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065651.P13268728467670408057

namespace A065651

/-- `∑[A057428(n)^A003973(n+2)]` -/
def P13268728467670408057.Spec : Prop :=
  ∀ n, P13268728467670408057.a n = (A065651 (n + 2) : ℚ)

end A065651

/-! ## A065651.P12071390175309363125

`abs(n+3-A001650(n+3))`
-/

namespace A065651.P12071390175309363125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 3 : ℤ) - A001650 (n + 3)|

end

end A065651.P12071390175309363125

namespace A065651

/-- `abs(n+3-A001650(n+3))` -/
def P12071390175309363125.Spec : Prop :=
  ∀ n, P12071390175309363125.a n = A065651 (n + 2)

end A065651

/-! ## A065651.P8578987342243473688

`∑[A001221(A008578(n+1))-A000122(n+2)]`
-/

namespace A065651.P8578987342243473688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008578 (n + 1)).toNat - A000122 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065651.P8578987342243473688

namespace A065651

/-- `∑[A001221(A008578(n+1))-A000122(n+2)]` -/
def P8578987342243473688.Spec : Prop :=
  ∀ n, P8578987342243473688.a n = A065651 (n + 2)

end A065651

/-! ## A065651.P3178857772057904460

`∑[A062157(2*n)*A062157(A000005(n+2))]`
-/

namespace A065651.P3178857772057904460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * n) * A062157 (A000005 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065651.P3178857772057904460

namespace A065651

/-- `∑[A062157(2*n)*A062157(A000005(n+2))]` -/
def P3178857772057904460.Spec : Prop :=
  ∀ n, P3178857772057904460.a n = A065651 (n + 2)

end A065651

/-!
# A065653: a(0) = 0, a(1) = 1, a(n) = a(n-2)*a(n-2) + 2 for n > 1.

The programs for A065653, the canonical program `A065653.P3135961964413243920` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065653 has offset 0).

The definition of A065653 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)*a(n-2)+2` (program `A065653.P3135961964413243920`, by `A065653.P3135961964413243920.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065653.P13797638131720103948

`2+a(n-2)²` with `a(0)=0, a(1)=1`
-/

namespace A065653.P13797638131720103948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 + a (n - 2) ^ 2

end

end A065653.P13797638131720103948

namespace A065653

/-- `2+a(n-2)²` -/
def P13797638131720103948.Spec : Prop :=
  ∀ n, (P13797638131720103948.a n : ℤ) = A065653 n

theorem P13797638131720103948.correct : P13797638131720103948.Spec := by
  intro n
  simp only [A065653, Nat.add_sub_cancel, A065653.P13797638131720103948.a, A065653.P3135961964413243920.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A065653

/-! ## A065653.P3135961964413243920

`a(n-2)*a(n-2)+2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065653

/-- `a(n-2)*a(n-2)+2` -/
def P3135961964413243920.Spec : Prop :=
  ∀ n, (P3135961964413243920.a n : ℤ) = A065653 n

theorem P3135961964413243920.correct : P3135961964413243920.Spec := by
  intro n
  simp only [A065653]

end A065653

/-! ## A065653.P470770331490097338

`or(2, a(n-2)²)` with `a(0)=0, a(1)=1`
-/

namespace A065653.P470770331490097338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.lor 2 (a (n - 2) ^ 2)

end

end A065653.P470770331490097338

namespace A065653

/-- `or(2, a(n-2)²)` -/
def P470770331490097338.Spec : Prop :=
  ∀ n, (P470770331490097338.a n : ℤ) = A065653 n

end A065653

/-! ## A065653.P17824583500606855311

`xor(2, a(n-2)²)` with `a(0)=0, a(1)=1`
-/

namespace A065653.P17824583500606855311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.xor 2 (a (n - 2) ^ 2)

end

end A065653.P17824583500606855311

namespace A065653

/-- `xor(2, a(n-2)²)` -/
def P17824583500606855311.Spec : Prop :=
  ∀ n, (P17824583500606855311.a n : ℤ) = A065653 n

end A065653

/-! ## A065653.P8933462426423155212

`a(n-2)^2+2` with `a(0)=0, a(1)=1`
-/

namespace A065653.P8933462426423155212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) ^ 2 + 2

end

end A065653.P8933462426423155212

namespace A065653

/-- `a(n-2)^2+2` -/
def P8933462426423155212.Spec : Prop :=
  ∀ n, (P8933462426423155212.a n : ℤ) = A065653 n

theorem P8933462426423155212.correct : P8933462426423155212.Spec := by
  intro n
  simp only [A065653, Nat.add_sub_cancel, A065653.P8933462426423155212.a, A065653.P3135961964413243920.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A065653

/-!
# A065654: Fixed points for A065652, a permutation of the natural numbers.

The programs for A065654, the canonical program `A065654.P18056448944285858251` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065654 has offset 0).

The definition of A065654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065654.P18056448944285858251

`(A065653(n)+A065653(n+1)-1)/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065654

/-- `(A065653(n)+A065653(n+1)-1)/2` -/
def P18056448944285858251.Spec : Prop :=
  ∀ n, P18056448944285858251.a n = (A065654 n : ℚ)

end A065654

/-! ## A065654.P1716633077568253330

`floor((A065653(n+1)+A065653(n))/2)`
-/

namespace A065654.P1716633077568253330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065653 (n + 1) + A065653 n : ℚ) / 2⌋

end

end A065654.P1716633077568253330

namespace A065654

/-- `floor((A065653(n+1)+A065653(n))/2)` -/
def P1716633077568253330.Spec : Prop :=
  ∀ n, P1716633077568253330.a n = A065654 n

end A065654

/-! ## A065654.P7945315310652203423

`A065653(n)+A004524(Δ[A065653(n)])`
-/

namespace A065654.P7945315310652203423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065653 n + A004524 (f1 (n + 1) - f1 n).toNat

end

end A065654.P7945315310652203423

namespace A065654

/-- `A065653(n)+A004524(Δ[A065653(n)])` -/
def P7945315310652203423.Spec : Prop :=
  ∀ n, P7945315310652203423.a n = A065654 n

end A065654

/-! ## A065654.P16500764755744495364

`A065653(n)+A004526(Δ[A065653(n)])`
-/

namespace A065654.P16500764755744495364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065653 n + A004526 (f1 (n + 1) - f1 n).toNat

end

end A065654.P16500764755744495364

namespace A065654

/-- `A065653(n)+A004526(Δ[A065653(n)])` -/
def P16500764755744495364.Spec : Prop :=
  ∀ n, P16500764755744495364.a n = A065654 n

end A065654

/-!
# A065657: Numbers m that minimize | k / EulerPhi(k) - golden ratio phi | when k runs over all the numbers with the same number of digits as m.

The programs for A065657, there is no canonical definition to state claims against.
-/

/-! ## A065657.P3277484575987486109

`A110108(A052971(n+1))`
-/

namespace A065657.P3277484575987486109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110108 (A052971 (n + 1)).toNat

end

end A065657.P3277484575987486109

/-!
# A065659: The table of permutations of N, each row induced by the rotation (to the left) of the n-th node in the infinite binary "decimal" fraction tree.

The programs for A065659, there is no canonical definition to state claims against.
-/

/-! ## A065659.P13851220861448096870

`A167865(A383605(n)+A267199(n+3))`
-/

namespace A065659.P13851220861448096870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (A383605 n + A267199 (n + 3)).toNat

end

end A065659.P13851220861448096870

/-!
# A065660: Permutation of N induced by rotating the node 1 (the top node) right in the infinite planar binary tree shown at A065658.

The programs for A065660, there is no canonical definition to state claims against.
-/

/-! ## A065660.P11736783930420670993

`A065658(∑[n])`
-/

namespace A065660.P11736783930420670993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065658 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065660.P11736783930420670993

/-! ## A065660.P1048346987572379004

`and(-1, A065658(A000217(n)))`
-/

namespace A065660.P1048346987572379004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A065658 (A000217 n).toNat)

end

end A065660.P1048346987572379004

/-! ## A065660.P13132140103912864325

`A065658(C(n+1, 2))%A080124(n+1)`
-/

namespace A065660.P13132140103912864325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065658 (Nat.choose (n + 1) 2)) (A080124 (n + 1))

end

end A065660.P13132140103912864325

/-! ## A065660.P6715201347313755241

`A000027(A065658(n-Δ[-C(n, 3)]))`
-/

namespace A065660.P6715201347313755241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A065658 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat).toNat

end

end A065660.P6715201347313755241

/-! ## A065660.P9509219934928409017

`A054429(A065661(A054429(n+1)))`
-/

namespace A065660.P9509219934928409017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065661 (A054429 (n + 1)).toNat).toNat

end

end A065660.P9509219934928409017

/-!
# A065661: Permutation of N induced by rotating the node 1 (the top node) left in the infinite planar binary tree shown at A065658.

The programs for A065661, there is no canonical definition to state claims against.
-/

/-! ## A065661.P6041921297006799308

`A065659(∑[n])`
-/

namespace A065661.P6041921297006799308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065659 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065661.P6041921297006799308

/-! ## A065661.P17700659479476157557

`and(-1, A065659(A000217(n)))`
-/

namespace A065661.P17700659479476157557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A065659 (A000217 n).toNat)

end

end A065661.P17700659479476157557

/-! ## A065661.P14013228270383953330

`A065659(A000217(n))%A091027(n)`
-/

namespace A065661.P14013228270383953330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065659 (A000217 n).toNat) (A091027 n)

end

end A065661.P14013228270383953330

/-! ## A065661.P11690198287840338828

`A065659(A000217(n))+A061397(2*(n+2))`
-/

namespace A065661.P11690198287840338828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065659 (A000217 n).toNat + A061397 (2 * (n + 2))

end

end A065661.P11690198287840338828

/-! ## A065661.P16814397011479171227

`A000027(A065659(C(n+1, 2)))`
-/

namespace A065661.P16814397011479171227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A065659 (Nat.choose (n + 1) 2)).toNat

end

end A065661.P16814397011479171227

/-!
# A065662: Permutation of N induced by rotating the node 2 right in the infinite planar binary tree shown at A065658.

The programs for A065662, there is no canonical definition to state claims against.
-/

/-! ## A065662.P16483470186747185354

`A065658(∑[n+1]+1)`
-/

namespace A065662.P16483470186747185354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065658 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A065662.P16483470186747185354

/-!
# A065663: Permutation of N induced by rotating the node 2 left in the infinite planar binary tree shown at A065658.

The programs for A065663, there is no canonical definition to state claims against.
-/

/-! ## A065663.P16042006539416489172

`A065659(∑[n+1]+1)`
-/

namespace A065663.P16042006539416489172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065659 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A065663.P16042006539416489172

/-! ## A065663.P6897441388587586097

`A054429(A065664(A054429(n+1)))`
-/

namespace A065663.P6897441388587586097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065664 (A054429 (n + 1)).toNat).toNat

end

end A065663.P6897441388587586097

/-!
# A065664: Permutation of N induced by rotating the node 3 right in the infinite planar binary tree shown at A065658.

The programs for A065664, there is no canonical definition to state claims against.
-/

/-! ## A065664.P8140634275361005396

`A065658(A000124(n+2)+1)`
-/

namespace A065664.P8140634275361005396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065658 (A000124 (n + 2) + 1).toNat

end

end A065664.P8140634275361005396

/-! ## A065664.P12625515783808481538

`A065658(A134869(n+2)+1)`
-/

namespace A065664.P12625515783808481538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065658 (A134869 (n + 2) + 1).toNat

end

end A065664.P12625515783808481538

/-! ## A065664.P7794798831610867246

`A065658(A167614(n+1)-1)`
-/

namespace A065664.P7794798831610867246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065658 (A167614 (n + 1) - 1).toNat

end

end A065664.P7794798831610867246

/-! ## A065664.P15256755236305040700

`A065658(A000217(n+2)+2)`
-/

namespace A065664.P15256755236305040700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065658 (A000217 (n + 2) + 2).toNat

end

end A065664.P15256755236305040700

/-! ## A065664.P14785445053433986313

`A054429(A065663(A054429(n+1)))`
-/

namespace A065664.P14785445053433986313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065663 (A054429 (n + 1)).toNat).toNat

end

end A065664.P14785445053433986313

/-!
# A065665: Permutation of N induced by rotating the node 3 left in the infinite planar binary tree shown at A065658.

The programs for A065665, there is no canonical definition to state claims against.
-/

/-! ## A065665.P9714996709341309310

`A065659(A055998(n)+5)`
-/

namespace A065665.P9714996709341309310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065659 (A055998 n + 5).toNat

end

end A065665.P9714996709341309310

/-! ## A065665.P11943963937688014045

`A065659(eq[2, A002262(n)])`
-/

namespace A065665.P11943963937688014045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065659 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065665.P11943963937688014045

/-! ## A065665.P9725042282515257402

`A065659(A134869(n+2)+1)`
-/

namespace A065665.P9725042282515257402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065659 (A134869 (n + 2) + 1).toNat

end

end A065665.P9725042282515257402

/-! ## A065665.P4840636719509755524

`A065659(A167614(n+1)-1)`
-/

namespace A065665.P4840636719509755524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065659 (A167614 (n + 1) - 1).toNat

end

end A065665.P4840636719509755524

/-! ## A065665.P8665393035593832747

`A065659(A000217(n+2)+2)`
-/

namespace A065665.P8665393035593832747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065659 (A000217 (n + 2) + 2).toNat

end

end A065665.P8665393035593832747

/-!
# A065666: Permutation of N induced by rotating the node 4 right in the infinite planar binary tree shown at A065658.

The programs for A065666, there is no canonical definition to state claims against.
-/

/-! ## A065666.P12232094401042963734

`A054429(A065673(A054429(n+1)))`
-/

namespace A065666.P12232094401042963734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065673 (A054429 (n + 1)).toNat).toNat

end

end A065666.P12232094401042963734

/-! ## A065666.P3122362583010611666

`lcm(n+1, A226933(C(n, 6)))`
-/

namespace A065666.P3122362583010611666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A226933 (Nat.choose n 6))

end

end A065666.P3122362583010611666

/-! ## A065666.P1579758630607364106

`(n+1)*A046594(a(n-1)²)` with `a(0)=1`
-/

namespace A065666.P1579758630607364106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A046594 (a (n - 1) ^ 2).toNat

end

end A065666.P1579758630607364106

/-! ## A065666.P16664737027602382735

`A232980(a(n-1))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7`
-/

namespace A065666.P16664737027602382735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 6, 7] fun n a =>
  A232980 (a (n - 1)).toNat

end

end A065666.P16664737027602382735

/-!
# A065667: Permutation of N induced by rotating the node 4 left in the infinite planar binary tree shown at A065658.

The programs for A065667, there is no canonical definition to state claims against.
-/

/-! ## A065667.P18205667737172488183

`A065659(A167614(n+2))`
-/

namespace A065667.P18205667737172488183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065659 (A167614 (n + 2)).toNat

end

end A065667.P18205667737172488183

/-! ## A065667.P7095279592970188565

`A065659(A000217(n+3)+3)`
-/

namespace A065667.P7095279592970188565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065659 (A000217 (n + 3) + 3).toNat

end

end A065667.P7095279592970188565

/-! ## A065667.P12963934361544370333

`A065659(A152948(n+5)+1)`
-/

namespace A065667.P12963934361544370333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065659 (A152948 (n + 5) + 1).toNat

end

end A065667.P12963934361544370333

/-! ## A065667.P2780382779990372657

`A065659(A166136(n+1)+n)`
-/

namespace A065667.P2780382779990372657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065659 (A166136 (n + 1) + (n : ℤ)).toNat

end

end A065667.P2780382779990372657

/-! ## A065667.P228581700862846339

`A054429(A065672(A054429(n+1)))`
-/

namespace A065667.P228581700862846339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065672 (A054429 (n + 1)).toNat).toNat

end

end A065667.P228581700862846339

/-!
# A065668: Permutation of N induced by rotating the node 5 right in the infinite planar binary tree shown at A065658.

The programs for A065668, there is no canonical definition to state claims against.
-/

/-! ## A065668.P9793513454367134406

`A065658(A167614(n+3)+1)`
-/

namespace A065668.P9793513454367134406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065658 (A167614 (n + 3) + 1).toNat

end

end A065668.P9793513454367134406

/-! ## A065668.P6906019395727916360

`A065658(A167499(n+3)-1)`
-/

namespace A065668.P6906019395727916360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065658 (A167499 (n + 3) - 1).toNat

end

end A065668.P6906019395727916360

/-! ## A065668.P16487068878438829975

`A065658(eq[6, A131818(n+1)]-1)`
-/

namespace A065668.P16487068878438829975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065658 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A065668.P16487068878438829975

/-! ## A065668.P1929015513096397195

`A065658(A000038(n+1)+A155212(n)+12)`
-/

namespace A065668.P1929015513096397195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065658 (A000038 (n + 1) + (A155212 n + 12)).toNat

end

end A065668.P1929015513096397195

/-! ## A065668.P640453257391731069

`A054429(A065671(A054429(n+1)))`
-/

namespace A065668.P640453257391731069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065671 (A054429 (n + 1)).toNat).toNat

end

end A065668.P640453257391731069

/-!
# A065669: Permutation of N induced by rotating the node 5 left in the infinite planar binary tree shown at A065658.

The programs for A065669, there is no canonical definition to state claims against.
-/

/-! ## A065669.P10750031296289880139

`A065659(A167614(n+3)+1)`
-/

namespace A065669.P10750031296289880139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065659 (A167614 (n + 3) + 1).toNat

end

end A065669.P10750031296289880139

/-! ## A065669.P9491887994487959099

`A065659(A000124(n+4)+3)`
-/

namespace A065669.P9491887994487959099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065659 (A000124 (n + 4) + 3).toNat

end

end A065669.P9491887994487959099

/-!
# A065670: Permutation of N induced by rotating the node 6 right in the infinite planar binary tree shown at A065658.

The programs for A065670, there is no canonical definition to state claims against.
-/

/-! ## A065670.P17297972550882099965

`A065658(A167499(n+4))`
-/

namespace A065670.P17297972550882099965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065658 (A167499 (n + 4)).toNat

end

end A065670.P17297972550882099965

/-! ## A065670.P2686781544349953599

`A065658(A056115(n)+20)`
-/

namespace A065670.P2686781544349953599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065658 (A056115 n + 20).toNat

end

end A065670.P2686781544349953599

/-! ## A065670.P14691077195857902913

`A065658(A167614(n+4)+2)`
-/

namespace A065670.P14691077195857902913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065658 (A167614 (n + 4) + 2).toNat

end

end A065670.P14691077195857902913

/-! ## A065670.P9940451915463319487

`A065658(A052905(n+2)+10)`
-/

namespace A065670.P9940451915463319487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065658 (A052905 (n + 2) + 10).toNat

end

end A065670.P9940451915463319487

/-! ## A065670.P16441155458602813329

`A065658(A000217(n+6)-(n+1))`
-/

namespace A065670.P16441155458602813329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065658 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A065670.P16441155458602813329

/-!
# A065671: Permutation of N induced by rotating the node 6 left in the infinite planar binary tree shown at A065658.

The programs for A065671, there is no canonical definition to state claims against.
-/

/-! ## A065671.P11471901593058822397

`A065659(A167614(n+4)+2)`
-/

namespace A065671.P11471901593058822397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065659 (A167614 (n + 4) + 2).toNat

end

end A065671.P11471901593058822397

/-! ## A065671.P16589120161587579053

`A065659(A000096(n+4)+6)`
-/

namespace A065671.P16589120161587579053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065659 (A000096 (n + 4) + 6).toNat

end

end A065671.P16589120161587579053

/-! ## A065671.P6017534241006561901

`A054429(A065668(A054429(n+1)))`
-/

namespace A065671.P6017534241006561901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065668 (A054429 (n + 1)).toNat).toNat

end

end A065671.P6017534241006561901

/-!
# A065672: Permutation of N induced by rotating the node 7 right in the infinite planar binary tree shown at A065658.

The programs for A065672, there is no canonical definition to state claims against.
-/

/-! ## A065672.P5095141033982625870

`A147001(A226290(n))+n`
-/

namespace A065672.P5095141033982625870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147001 (A226290 n).toNat + (n : ℤ)

end

end A065672.P5095141033982625870

/-! ## A065672.P12643579977164238348

`record[∑[A060184(A171229(n))]]`
-/

namespace A065672.P12643579977164238348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060184 (A171229 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065672.P12643579977164238348

/-! ## A065672.P4235317040390979468

`record[∑[A077917(A185036(n))]]`
-/

namespace A065672.P4235317040390979468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077917 (A185036 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065672.P4235317040390979468

/-! ## A065672.P11287017490576404851

`record[∑[A077917(A185236(n))]]`
-/

namespace A065672.P11287017490576404851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077917 (A185236 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065672.P11287017490576404851

/-! ## A065672.P4825733807933575687

`record[∑[A220074(A056940(n))]]`
-/

namespace A065672.P4825733807933575687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220074 (A056940 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065672.P4825733807933575687

/-!
# A065673: Permutation of N induced by rotating the node 7 left in the infinite planar binary tree shown at A065658.

The programs for A065673, there is no canonical definition to state claims against.
-/

/-! ## A065673.P18081995384741398614

`A065659(A166136(n+5))`
-/

namespace A065673.P18081995384741398614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065659 (A166136 (n + 5)).toNat

end

end A065673.P18081995384741398614

/-! ## A065673.P2856733691655972405

`A054429(A065666(A054429(n+1)))`
-/

namespace A065673.P2856733691655972405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A065666 (A054429 (n + 1)).toNat).toNat

end

end A065673.P2856733691655972405

/-! ## A065673.P12906371133749079112

`A086617(A089455(n+1))+n`
-/

namespace A065673.P12906371133749079112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086617 (A089455 (n + 1)).toNat + (n : ℤ)

end

end A065673.P12906371133749079112

/-! ## A065673.P8838685450972235523

`A326679(A036601(n))+1+n`
-/

namespace A065673.P8838685450972235523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326679 (A036601 n).toNat + 1 + (n : ℤ)

end

end A065673.P8838685450972235523

/-! ## A065673.P678764318831323700

`A361598(A205295(n+1))+n`
-/

namespace A065673.P678764318831323700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361598 (A205295 (n + 1)).toNat + (n : ℤ)

end

end A065673.P678764318831323700

/-!
# A065675: The exponent of 2 in the fractions of the range ]0,1[ Stern-Brocot tree (A007305/A007306) [1/2, 1/3, 2/3, 1/4, 2/5, 3/5, 3/4, 1/5, 2/7, 3/8, 3/7, 4/7, 5/8, 5/7, 4/5, ...].

The programs for A065675, there is no canonical definition to state claims against.
-/

/-! ## A065675.P430970865162776291

`A065676(lt[n, xor(n, floor(n/2))])`
-/

namespace A065675.P430970865162776291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A065675.P430970865162776291

/-! ## A065675.P276834852216321193

`A065676(2^floor(log2(n+1))+n+1)`
-/

namespace A065675.P276834852216321193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065676 (2 ^ Nat.log 2 (n + 1) + (n + 1))

end

end A065675.P276834852216321193

/-! ## A065675.P1411741079080877685

`A065676(n+1)-A065676(lt[n, 2*and(n, 2*n)])`
-/

namespace A065675.P1411741079080877685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065676 (n + 1) - A065676 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A065675.P1411741079080877685

/-! ## A065675.P7013282288563225220

`A065676(n+1)-A065676(A004755(n+1))`
-/

namespace A065675.P7013282288563225220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065676 (n + 1) - A065676 (A004755 (n + 1)).toNat

end

end A065675.P7013282288563225220

/-! ## A065675.P13108379315434671991

`A065676(n+1)-A065676(A004760(n+3))`
-/

namespace A065675.P13108379315434671991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065676 (n + 1) - A065676 (A004760 (n + 3)).toNat

end

end A065675.P13108379315434671991

/-!
# A065676: The exponent of 2 in the fractions of the whole ]0, inf[ Stern-Brocot tree (A007305/A047679) [1/1, 1/2, 2/1, 1/3, 2/3, 3/2, 3/1, 1/4, 2/5, 3/5, 3/4, 4/3, 5/3, 5/2, 4/1, ...].

The programs for A065676, there is no canonical definition to state claims against.
-/

/-! ## A065676.P14398356438828348672

`A065620(val(A273671(n+1), 2))`
-/

namespace A065676.P14398356438828348672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (SequenceMachineLib.valuation (A273671 (n + 1)).toNat 2)

end

end A065676.P14398356438828348672

/-! ## A065676.P3046097724177558872

`A065675(n+1)-A065675(A054429(n+1))`
-/

namespace A065676.P3046097724177558872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065675 (n + 1) - A065675 (A054429 (n + 1)).toNat

end

end A065676.P3046097724177558872

/-! ## A065676.P14948713431818563751

`A065675(n+1)-A065675(A346306(Δ[n²])/2)`
-/

namespace A065676.P14948713431818563751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065675 (n + 1) - A065675 (SequenceMachineLib.roundAway ((A346306 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)).toNat

end

end A065676.P14948713431818563751

/-! ## A065676.P2665465233644119354

`A065675(n+1)-A065675(Δ[A073121(n+1)]-(n+2))`
-/

namespace A065676.P2665465233644119354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065675 (n + 1) - A065675 (f1 (n + 1) - f1 n - (n + 2 : ℤ)).toNat

end

end A065676.P2665465233644119354

/-! ## A065676.P18120178558781482895

`A065675(n+1)-A065675(A004756(n+1)-A144396(n+1))`
-/

namespace A065676.P18120178558781482895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065675 (n + 1) - A065675 (A004756 (n + 1) - A144396 (n + 1)).toNat

end

end A065676.P18120178558781482895

/-!
# A065677: Maximal Diffy_length for quadruples of numbers <= n.

The programs for A065677, there is no canonical definition to state claims against.
-/

/-! ## A065677.P15979111790753113238

`comp[A065678(n)-1+n]-n`
-/

namespace A065677.P15979111790753113238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065678 n - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A065677.P15979111790753113238

/-!
# A065679: If n is even, a(n) = n^2 else a(n) = n.

The programs for A065679, the canonical program `A065679.P9126163303677744787` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065679 has offset 0).

The definition of A065679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065679.P9126163303677744787

`n^((n+1)%2+1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065679

/-- `n^((n+1)%2+1)` -/
def P9126163303677744787.Spec : Prop :=
  ∀ n, (P9126163303677744787.a n : ℤ) = A065679 n

theorem P9126163303677744787.correct : P9126163303677744787.Spec := by
  intro n
  simp only [A065679]

end A065679

/-! ## A065679.P760966543951684389

`n^gcd(2, n)`
-/

namespace A065679.P760966543951684389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.gcd 2 n

end

end A065679.P760966543951684389

namespace A065679

/-- `n^gcd(2, n)` -/
def P760966543951684389.Spec : Prop :=
  ∀ n, (P760966543951684389.a n : ℤ) = A065679 n

end A065679

/-! ## A065679.P9597041460374381557

`n^(2-n%2)`
-/

namespace A065679.P9597041460374381557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (2 - ((n % 2 : ℕ) : ℤ) : ℤ)

end

end A065679.P9597041460374381557

namespace A065679

/-- `n^(2-n%2)` -/
def P9597041460374381557.Spec : Prop :=
  ∀ n, P9597041460374381557.a n = (A065679 n : ℚ)

end A065679

/-! ## A065679.P1306471051058068251

`n^(2-and(1, n))`
-/

namespace A065679.P1306471051058068251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (2 - (Nat.land 1 n : ℤ) : ℤ)

end

end A065679.P1306471051058068251

namespace A065679

/-- `n^(2-and(1, n))` -/
def P1306471051058068251.Spec : Prop :=
  ∀ n, P1306471051058068251.a n = (A065679 n : ℚ)

end A065679

/-! ## A065679.P16937357875168486441

`n^abs(or(n, -2))`
-/

namespace A065679.P16937357875168486441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (|Int.lor (n : ℤ) (-2)| : ℤ)

end

end A065679.P16937357875168486441

namespace A065679

/-- `n^abs(or(n, -2))` -/
def P16937357875168486441.Spec : Prop :=
  ∀ n, P16937357875168486441.a n = (A065679 n : ℚ)

end A065679

/-! ## A065679.P2421274198024497955

`n^-or(n, -2)`
-/

namespace A065679.P2421274198024497955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (-Int.lor (n : ℤ) (-2) : ℤ)

end

end A065679.P2421274198024497955

namespace A065679

/-- `n^-or(n, -2)` -/
def P2421274198024497955.Spec : Prop :=
  ∀ n, P2421274198024497955.a n = (A065679 n : ℚ)

end A065679

/-! ## A065679.P9205541669494925854

`n^(char[2*n]+1)`
-/

namespace A065679.P9205541669494925854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A065679.P9205541669494925854

namespace A065679

/-- `n^(char[2*n]+1)` -/
def P9205541669494925854.Spec : Prop :=
  ∀ n, (P9205541669494925854.a n : ℤ) = A065679 n

end A065679

/-! ## A065679.P1042507757770816241

`n²/n^and(1, n)`
-/

namespace A065679.P1042507757770816241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (n ^ Nat.land 1 n : ℚ)

end

end A065679.P1042507757770816241

namespace A065679

/-- `n²/n^and(1, n)` -/
def P1042507757770816241.Spec : Prop :=
  ∀ n, P1042507757770816241.a n = (A065679 n : ℚ)

end A065679

/-! ## A065679.P2181468266283762424

`gcd(lcm(2, n)-n, n²)`
-/

namespace A065679.P2181468266283762424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((Nat.lcm 2 n : ℤ) - (n : ℤ)) (n ^ 2 : ℤ)

end

end A065679.P2181468266283762424

namespace A065679

/-- `gcd(lcm(2, n)-n, n²)` -/
def P2181468266283762424.Spec : Prop :=
  ∀ n, (P2181468266283762424.a n : ℤ) = A065679 n

end A065679

/-! ## A065679.P2480988990903830927

`n²/C(n, and(1, n))`
-/

namespace A065679.P2480988990903830927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (Nat.choose n (Nat.land 1 n) : ℚ)

end

end A065679.P2480988990903830927

namespace A065679

/-- `n²/C(n, and(1, n))` -/
def P2480988990903830927.Spec : Prop :=
  ∀ n, P2480988990903830927.a n = (A065679 n : ℚ)

end A065679

/-! ## A065679.P13130664388095367749

`n*n^and(1, n+1)`
-/

namespace A065679.P13130664388095367749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ Nat.land 1 (n + 1)

end

end A065679.P13130664388095367749

namespace A065679

/-- `n*n^and(1, n+1)` -/
def P13130664388095367749.Spec : Prop :=
  ∀ n, (P13130664388095367749.a n : ℤ) = A065679 n

theorem P13130664388095367749.correct : P13130664388095367749.Spec := by
  intro n
  simp only [A065679, Nat.add_sub_cancel, A065679.P13130664388095367749.a, A065679.P9126163303677744787.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A065679

/-! ## A065679.P4593832592074319064

`n*C(n, (n+3)%2)`
-/

namespace A065679.P4593832592074319064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose n ((n + 3) % 2)

end

end A065679.P4593832592074319064

namespace A065679

/-- `n*C(n, (n+3)%2)` -/
def P4593832592074319064.Spec : Prop :=
  ∀ n, (P4593832592074319064.a n : ℤ) = A065679 n

end A065679

/-! ## A065679.P2869861222054294980

`n*C(n, and(1, n+1))`
-/

namespace A065679.P2869861222054294980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose n (Nat.land 1 (n + 1))

end

end A065679.P2869861222054294980

namespace A065679

/-- `n*C(n, and(1, n+1))` -/
def P2869861222054294980.Spec : Prop :=
  ∀ n, (P2869861222054294980.a n : ℤ) = A065679 n

end A065679

/-! ## A065679.P15491730684780413603

`n*C(n, 1-and(1, n))`
-/

namespace A065679.P15491730684780413603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose n (1 - (Nat.land 1 n : ℤ)).toNat

end

end A065679.P15491730684780413603

namespace A065679

/-- `n*C(n, 1-and(1, n))` -/
def P15491730684780413603.Spec : Prop :=
  ∀ n, (P15491730684780413603.a n : ℤ) = A065679 n

end A065679

/-! ## A065679.P6280034798023338575

`n*n/C(n, and(1, n))`
-/

namespace A065679.P6280034798023338575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n : ℚ) / (Nat.choose n (Nat.land 1 n) : ℚ))

end

end A065679.P6280034798023338575

namespace A065679

/-- `n*n/C(n, and(1, n))` -/
def P6280034798023338575.Spec : Prop :=
  ∀ n, P6280034798023338575.a n = (A065679 n : ℚ)

end A065679

/-! ## A065679.P12843946423717796396

`n*C(n, C(n, and(1, n)))`
-/

namespace A065679.P12843946423717796396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose n (Nat.choose n (Nat.land 1 n))

end

end A065679.P12843946423717796396

namespace A065679

/-- `n*C(n, C(n, and(1, n)))` -/
def P12843946423717796396.Spec : Prop :=
  ∀ n, (P12843946423717796396.a n : ℤ) = A065679 n

end A065679

/-! ## A065679.P7062760817246909641

`n*n^val(n²+2, 2)`
-/

namespace A065679.P7062760817246909641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ SequenceMachineLib.valuation (n ^ 2 + 2) 2

end

end A065679.P7062760817246909641

namespace A065679

/-- `n*n^val(n²+2, 2)` -/
def P7062760817246909641.Spec : Prop :=
  ∀ n, (P7062760817246909641.a n : ℤ) = A065679 n

end A065679

/-! ## A065679.P12765752261534486587

`n²/gcd(2*n, or(1, n))`
-/

namespace A065679.P12765752261534486587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (Nat.gcd (2 * n) (Nat.lor 1 n) : ℚ)

end

end A065679.P12765752261534486587

namespace A065679

/-- `n²/gcd(2*n, or(1, n))` -/
def P12765752261534486587.Spec : Prop :=
  ∀ n, P12765752261534486587.a n = (A065679 n : ℚ)

end A065679

/-! ## A065679.P13139622290687988445

`gcd(2*n*floor(n/2), n*n)`
-/

namespace A065679.P13139622290687988445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * ((n : ℤ) * ⌊(n : ℚ) / 2⌋)) (n * n : ℤ)

end

end A065679.P13139622290687988445

namespace A065679

/-- `gcd(2*n*floor(n/2), n*n)` -/
def P13139622290687988445.Spec : Prop :=
  ∀ n, (P13139622290687988445.a n : ℤ) = A065679 n

end A065679

/-! ## A065679.P17903781186140664292

`n*floor(n²/(a(n-1)+1))` with `a(0)=0`
-/

namespace A065679.P17903781186140664292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ⌊(n ^ 2 : ℚ) / (a (n - 1) + 1 : ℚ)⌋

end

end A065679.P17903781186140664292

namespace A065679

/-- `n*floor(n²/(a(n-1)+1))` -/
def P17903781186140664292.Spec : Prop :=
  ∀ n, P17903781186140664292.a n = A065679 n

end A065679

/-!
# A065680: Number of primes <= prime(n) which begin with a 1.

The programs for A065680, the canonical program `A065680.P1696660172782244765` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065680 has offset 1).

The definition of A065680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065680.P1696660172782244765

`∑[round(acot(A077648(n+1)))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065680

/-- `∑[round(acot(A077648(n+1)))]` -/
def P1696660172782244765.Spec : Prop :=
  ∀ n, P1696660172782244765.a n = A065680 (n + 1)

theorem P1696660172782244765.correct : P1696660172782244765.Spec := by
  intro n
  simp only [A065680, Nat.add_sub_cancel]

end A065680

/-! ## A065680.P16834614090245183573

`∑[C(A001511(2*n+3), A077648(n+1))]`
-/

namespace A065680.P16834614090245183573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001511 (2 * n + 3)).toNat (A077648 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065680.P16834614090245183573

namespace A065680

/-- `∑[C(A001511(2*n+3), A077648(n+1))]` -/
def P16834614090245183573.Spec : Prop :=
  ∀ n, (P16834614090245183573.a n : ℤ) = A065680 (n + 1)

end A065680

/-! ## A065680.P4113996444122835027

`∑[A357299(A000040(n+1))-1]`
-/

namespace A065680.P4113996444122835027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357299 (A000040 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065680.P4113996444122835027

namespace A065680

/-- `∑[A357299(A000040(n+1))-1]` -/
def P4113996444122835027.Spec : Prop :=
  ∀ n, P4113996444122835027.a n = A065680 (n + 1)

end A065680

/-! ## A065680.P16115583556461973417

`∑[round(10/A138840(n+1))]`
-/

namespace A065680.P16115583556461973417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (10 / (A138840 (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065680.P16115583556461973417

namespace A065680

/-- `∑[round(10/A138840(n+1))]` -/
def P16115583556461973417.Spec : Prop :=
  ∀ n, P16115583556461973417.a n = A065680 (n + 1)

end A065680

/-! ## A065680.P11912444190686710457

`∑[A280827(A001750(n+1))]`
-/

namespace A065680.P11912444190686710457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280827 (A001750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065680.P11912444190686710457

namespace A065680

/-- `∑[A280827(A001750(n+1))]` -/
def P11912444190686710457.Spec : Prop :=
  ∀ n, P11912444190686710457.a n = A065680 (n + 1)

end A065680

/-! ## A065680.P11614647702772214340

`∑[A280827(5*p?[A250246(n+1)])]`
-/

namespace A065680.P11614647702772214340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280827 (5 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065680.P11614647702772214340

namespace A065680

/-- `∑[A280827(5*p?[A250246(n+1)])]` -/
def P11614647702772214340.Spec : Prop :=
  ∀ n, P11614647702772214340.a n = A065680 (n + 1)

end A065680

/-!
# A065681: Number of primes <= prime(n) which begin with a 2.

The programs for A065681, there is no canonical definition to state claims against.
-/

/-! ## A065681.P12544291303062959940

`∑[round(A171036(n+1)/A001748(n+1))]`
-/

namespace A065681.P12544291303062959940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A171036 (n + 1) : ℚ) / (A001748 (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065681.P12544291303062959940

/-! ## A065681.P4130372796573764224

`∑[round(A171036(n+1)/A001750(n+1))]`
-/

namespace A065681.P4130372796573764224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A171036 (n + 1) : ℚ) / (A001750 (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065681.P4130372796573764224

/-! ## A065681.P277305890760705230

`∑[abs(A014029(A004087(n+1)))]`
-/

namespace A065681.P277305890760705230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014029 (A004087 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065681.P277305890760705230

/-! ## A065681.P7479056207841415646

`∑[val(n+2, A000030(A000040(n+1))+n)]`
-/

namespace A065681.P7479056207841415646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) (A000030 (A000040 (n + 1)).toNat + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065681.P7479056207841415646

/-! ## A065681.P3920454002316550836

`∑[A014029(A004087(n+1))^A001316(n)]`
-/

namespace A065681.P3920454002316550836
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014029 (A004087 (n + 1)).toNat : ℚ) ^ (A001316 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065681.P3920454002316550836

/-!
# A065682: Number of primes <= prime(n) which begin with a 3.

The programs for A065682, the canonical program `A065682.P15404421544339977332` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065682 has offset 1).

The definition of A065682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065682.P15404421544339977332

`∑[(4%A077648(n+1))%4]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065682

/-- `∑[(4%A077648(n+1))%4]` -/
def P15404421544339977332.Spec : Prop :=
  ∀ n, P15404421544339977332.a n = A065682 (n + 1)

theorem P15404421544339977332.correct : P15404421544339977332.Spec := by
  intro n
  simp only [A065682, Nat.add_sub_cancel]

end A065682

/-! ## A065682.P2307142716804841052

`∑[A023531(((-1)^n*A004087(n+1)%10)²)]`
-/

namespace A065682.P2307142716804841052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (((-1) ^ n * Int.tmod (A004087 (n + 1)) 10) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065682.P2307142716804841052

namespace A065682

/-- `∑[A023531(((-1)^n*A004087(n+1)%10)²)]` -/
def P2307142716804841052.Spec : Prop :=
  ∀ n, P2307142716804841052.a n = A065682 (n + 1)

end A065682

/-! ## A065682.P501331172248295009

`A065684(A359908(n+1)+A065684(2*(n+1)))`
-/

namespace A065682.P501331172248295009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065684 (A359908 (n + 1) + A065684 (2 * (n + 1))).toNat

end

end A065682.P501331172248295009

namespace A065682

/-- `A065684(A359908(n+1)+A065684(2*(n+1)))` -/
def P501331172248295009.Spec : Prop :=
  ∀ n, P501331172248295009.a n = A065682 (n + 1)

end A065682

/-! ## A065682.P4441969659074923785

`∑[A036987(A000194(A302720(n+1)))]`
-/

namespace A065682.P4441969659074923785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A000194 (A302720 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065682.P4441969659074923785

namespace A065682

/-- `∑[A036987(A000194(A302720(n+1)))]` -/
def P4441969659074923785.Spec : Prop :=
  ∀ n, P4441969659074923785.a n = A065682 (n + 1)

end A065682

/-! ## A065682.P587518577736429203

`A014202(∑[A010054(A058199(n+1))])`
-/

namespace A065682.P587518577736429203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A058199 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014202 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065682.P587518577736429203

namespace A065682

/-- `A014202(∑[A010054(A058199(n+1))])` -/
def P587518577736429203.Spec : Prop :=
  ∀ n, P587518577736429203.a n = A065682 (n + 1)

end A065682

/-! ## A065682.P2079822776247704651

`A004525(floor(log2(A346309(n+1))))`
-/

namespace A065682.P2079822776247704651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Nat.log 2 (A346309 (n + 1)).toNat)

end

end A065682.P2079822776247704651

namespace A065682

/-- `A004525(floor(log2(A346309(n+1))))` -/
def P2079822776247704651.Spec : Prop :=
  ∀ n, P2079822776247704651.a n = A065682 (n + 1)

end A065682

/-! ## A065682.P9765233064884182801

`A065684(∑[A000034(A013609(n))])`
-/

namespace A065682.P9765233064884182801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A013609 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065684 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065682.P9765233064884182801

namespace A065682

/-- `A065684(∑[A000034(A013609(n))])` -/
def P9765233064884182801.Spec : Prop :=
  ∀ n, P9765233064884182801.a n = A065682 (n + 1)

end A065682

/-! ## A065682.P10454755226468168752

`A065684(A101358(n))`
-/

namespace A065682.P10454755226468168752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065684 (A101358 n).toNat

end

end A065682.P10454755226468168752

namespace A065682

/-- `A065684(A101358(n))` -/
def P10454755226468168752.Spec : Prop :=
  ∀ n, P10454755226468168752.a n = A065682 (n + 1)

end A065682

/-!
# A065683: Number of primes <= prime(n) which begin with a 4.

The programs for A065683, the canonical program `A065683.P16875126102504137122` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065683 has offset 1).

The definition of A065683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065683.P16875126102504137122

`∑[A316865(A137589(n+1))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A065683

/-- `∑[A316865(A137589(n+1))]` -/
def P16875126102504137122.Spec : Prop :=
  ∀ n, P16875126102504137122.a n = A065683 (n + 1)

theorem P16875126102504137122.correct : P16875126102504137122.Spec := by
  intro n
  simp only [A065683, Nat.add_sub_cancel]

end A065683

/-! ## A065683.P13782182757879647294

`∑[val(A000030(A000040(n+1))+2, 6)]`
-/

namespace A065683.P13782182757879647294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000030 (A000040 (n + 1)).toNat + 2).toNat 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065683.P13782182757879647294

namespace A065683

/-- `∑[val(A000030(A000040(n+1))+2, 6)]` -/
def P13782182757879647294.Spec : Prop :=
  ∀ n, (P13782182757879647294.a n : ℤ) = A065683 (n + 1)

end A065683

/-! ## A065683.P15372909115410388835

`∑[A316865(A138840(n+1))]`
-/

namespace A065683.P15372909115410388835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A138840 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065683.P15372909115410388835

namespace A065683

/-- `∑[A316865(A138840(n+1))]` -/
def P15372909115410388835.Spec : Prop :=
  ∀ n, P15372909115410388835.a n = A065683 (n + 1)

end A065683

/-! ## A065683.P10866178098737742786

`∑[A023531(A052905(n+2)+A004087(n+1)%10)]`
-/

namespace A065683.P10866178098737742786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A052905 (n + 2) + Int.tmod (A004087 (n + 1)) 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065683.P10866178098737742786

namespace A065683

/-- `∑[A023531(A052905(n+2)+A004087(n+1)%10)]` -/
def P10866178098737742786.Spec : Prop :=
  ∀ n, P10866178098737742786.a n = A065683 (n + 1)

end A065683

/-! ## A065683.P83573158192600885

`∑[A025458(A331852(n-n%3))]`
-/

namespace A065683.P83573158192600885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 (A331852 (n - n % 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065683.P83573158192600885

namespace A065683

/-- `∑[A025458(A331852(n-n%3))]` -/
def P83573158192600885.Spec : Prop :=
  ∀ n, P83573158192600885.a n = A065683 (n + 1)

end A065683

/-! ## A065683.P10517352209522478619

`∑[val(A113733(A081607(n)), 3)]`
-/

namespace A065683.P10517352209522478619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A113733 (A081607 n).toNat).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065683.P10517352209522478619

namespace A065683

/-- `∑[val(A113733(A081607(n)), 3)]` -/
def P10517352209522478619.Spec : Prop :=
  ∀ n, (P10517352209522478619.a n : ℤ) = A065683 (n + 1)

end A065683

/-!
# A065684: Number of primes <= prime(n) which begin with a 5.

The programs for A065684, the canonical program `A065684.P16389121019470855818` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065684 has offset 1).

The definition of A065684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065684.P16389121019470855818

`∑[val(A077648(n+1), 5)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065684

/-- `∑[val(A077648(n+1), 5)]` -/
def P16389121019470855818.Spec : Prop :=
  ∀ n, (P16389121019470855818.a n : ℤ) = A065684 (n + 1)

theorem P16389121019470855818.correct : P16389121019470855818.Spec := by
  intro n
  simp only [A065684, Nat.add_sub_cancel]

end A065684

/-! ## A065684.P15366096799759747294

`∑[A316866(A137589(n+1))]`
-/

namespace A065684.P15366096799759747294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A137589 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065684.P15366096799759747294

namespace A065684

/-- `∑[A316866(A137589(n+1))]` -/
def P15366096799759747294.Spec : Prop :=
  ∀ n, P15366096799759747294.a n = A065684 (n + 1)

end A065684

/-! ## A065684.P5814057678146089092

`∑[val(A133019(n+1), A001750(n+1))]`
-/

namespace A065684.P5814057678146089092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A133019 (n + 1)).toNat (A001750 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065684.P5814057678146089092

namespace A065684

/-- `∑[val(A133019(n+1), A001750(n+1))]` -/
def P5814057678146089092.Spec : Prop :=
  ∀ n, (P5814057678146089092.a n : ℤ) = A065684 (n + 1)

end A065684

/-! ## A065684.P11896090605515353914

`∑[A079998(A004087(n+1))]`
-/

namespace A065684.P11896090605515353914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A004087 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065684.P11896090605515353914

namespace A065684

/-- `∑[A079998(A004087(n+1))]` -/
def P11896090605515353914.Spec : Prop :=
  ∀ n, P11896090605515353914.a n = A065684 (n + 1)

end A065684

/-! ## A065684.P13470772809105201406

`∑[val(A000030(A000040(n+1)), 5)]`
-/

namespace A065684.P13470772809105201406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000030 (A000040 (n + 1)).toNat).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065684.P13470772809105201406

namespace A065684

/-- `∑[val(A000030(A000040(n+1)), 5)]` -/
def P13470772809105201406.Spec : Prop :=
  ∀ n, (P13470772809105201406.a n : ℤ) = A065684 (n + 1)

end A065684

/-! ## A065684.P10734910928418091520

`A001222(∏[gcd(5, A004087(n+1))])`
-/

namespace A065684.P10734910928418091520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A004087 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A065684.P10734910928418091520

namespace A065684

/-- `A001222(∏[gcd(5, A004087(n+1))])` -/
def P10734910928418091520.Spec : Prop :=
  ∀ n, P10734910928418091520.a n = A065684 (n + 1)

end A065684

/-! ## A065684.P16532895299471525565

`A004216(A018252(A009440(n+1)%A001704(n+1)))`
-/

namespace A065684.P16532895299471525565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A018252 (Int.tmod (A009440 (n + 1)) (A001704 (n + 1))).toNat).toNat

end

end A065684.P16532895299471525565

namespace A065684

/-- `A004216(A018252(A009440(n+1)%A001704(n+1)))` -/
def P16532895299471525565.Spec : Prop :=
  ∀ n, P16532895299471525565.a n = A065684 (n + 1)

end A065684

/-! ## A065684.P14957397071369710105

`∑[A073424(A027688(A168056(n)))]`
-/

namespace A065684.P14957397071369710105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A027688 (A168056 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065684.P14957397071369710105

namespace A065684

/-- `∑[A073424(A027688(A168056(n)))]` -/
def P14957397071369710105.Spec : Prop :=
  ∀ n, P14957397071369710105.a n = A065684 (n + 1)

end A065684

/-! ## A065684.P18431143845689360973

`A065682(A206767(n+1))`
-/

namespace A065684.P18431143845689360973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065682 (A206767 (n + 1)).toNat

end

end A065684.P18431143845689360973

namespace A065684

/-- `A065682(A206767(n+1))` -/
def P18431143845689360973.Spec : Prop :=
  ∀ n, P18431143845689360973.a n = A065684 (n + 1)

end A065684

/-!
# A065685: Number of primes <= prime(n) which begin with a 6.

The programs for A065685, the canonical program `A065685.P897262154083078228` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065685 has offset 1).

The definition of A065685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065685.P897262154083078228

`∑[val(A077648(n+1), 6)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065685

/-- `∑[val(A077648(n+1), 6)]` -/
def P897262154083078228.Spec : Prop :=
  ∀ n, (P897262154083078228.a n : ℤ) = A065685 (n + 1)

theorem P897262154083078228.correct : P897262154083078228.Spec := by
  intro n
  simp only [A065685, Nat.add_sub_cancel]

end A065685

/-! ## A065685.P17481888204561367581

`∑[val(A000030(A137589(n+1)), 6)]`
-/

namespace A065685.P17481888204561367581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000030 (A137589 (n + 1)).toNat).toNat 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065685.P17481888204561367581

namespace A065685

/-- `∑[val(A000030(A137589(n+1)), 6)]` -/
def P17481888204561367581.Spec : Prop :=
  ∀ n, (P17481888204561367581.a n : ℤ) = A065685 (n + 1)

end A065685

/-! ## A065685.P3350208819272392325

`∑[floor(A081998(n)/A171031(n+1))]`
-/

namespace A065685.P3350208819272392325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081998 n : ℚ) / (A171031 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065685.P3350208819272392325

namespace A065685

/-- `∑[floor(A081998(n)/A171031(n+1))]` -/
def P3350208819272392325.Spec : Prop :=
  ∀ n, P3350208819272392325.a n = A065685 (n + 1)

end A065685

/-! ## A065685.P4833014059638145415

`∑[val(A274206(A004087(n+1)), 6)]`
-/

namespace A065685.P4833014059638145415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A274206 (A004087 (n + 1)).toNat).toNat 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065685.P4833014059638145415

namespace A065685

/-- `∑[val(A274206(A004087(n+1)), 6)]` -/
def P4833014059638145415.Spec : Prop :=
  ∀ n, (P4833014059638145415.a n : ℤ) = A065685 (n + 1)

end A065685

/-! ## A065685.P12027598829282721806

`∑[val(A000030(A000040(n+1))+2, 8)]`
-/

namespace A065685.P12027598829282721806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000030 (A000040 (n + 1)).toNat + 2).toNat 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065685.P12027598829282721806

namespace A065685

/-- `∑[val(A000030(A000040(n+1))+2, 8)]` -/
def P12027598829282721806.Spec : Prop :=
  ∀ n, (P12027598829282721806.a n : ℤ) = A065685 (n + 1)

end A065685

/-! ## A065685.P4483284442434622861

`A217921(A113010(A004001(n+1)))`
-/

namespace A065685.P4483284442434622861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217921 (A113010 (A004001 (n + 1)).toNat).toNat

end

end A065685.P4483284442434622861

namespace A065685

/-- `A217921(A113010(A004001(n+1)))` -/
def P4483284442434622861.Spec : Prop :=
  ∀ n, P4483284442434622861.a n = A065685 (n + 1)

end A065685

/-! ## A065685.P14400233761846043209

`∑[A185013(A185328(n+1))]`
-/

namespace A065685.P14400233761846043209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 (A185328 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065685.P14400233761846043209

namespace A065685

/-- `∑[A185013(A185328(n+1))]` -/
def P14400233761846043209.Spec : Prop :=
  ∀ n, P14400233761846043209.a n = A065685 (n + 1)

end A065685

/-! ## A065685.P13129981630785236575

`∑[val(A220652(n+1), 64)]`
-/

namespace A065685.P13129981630785236575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A220652 (n + 1)).toNat 64

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065685.P13129981630785236575

namespace A065685

/-- `∑[val(A220652(n+1), 64)]` -/
def P13129981630785236575.Spec : Prop :=
  ∀ n, (P13129981630785236575.a n : ℤ) = A065685 (n + 1)

end A065685

/-! ## A065685.P3103026859159995992

`A065687(A299497(n))`
-/

namespace A065685.P3103026859159995992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065687 (A299497 n).toNat

end

end A065685.P3103026859159995992

namespace A065685

/-- `A065687(A299497(n))` -/
def P3103026859159995992.Spec : Prop :=
  ∀ n, P3103026859159995992.a n = A065685 (n + 1)

end A065685

/-! ## A065685.P14447755196805649105

`A355480(A211020((2*n)²))`
-/

namespace A065685.P14447755196805649105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355480 (A211020 ((2 * n) ^ 2)).toNat

end

end A065685.P14447755196805649105

namespace A065685

/-- `A355480(A211020((2*n)²))` -/
def P14447755196805649105.Spec : Prop :=
  ∀ n, P14447755196805649105.a n = A065685 (n + 1)

end A065685

/-!
# A065686: Number of primes <= prime(n) which begin with a 7.

The programs for A065686, the canonical program `A065686.P3443444841372550912` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065686 has offset 1).

The definition of A065686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065686.P3443444841372550912

`∑[val(A077648(n+1), 7)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065686

/-- `∑[val(A077648(n+1), 7)]` -/
def P3443444841372550912.Spec : Prop :=
  ∀ n, (P3443444841372550912.a n : ℤ) = A065686 (n + 1)

theorem P3443444841372550912.correct : P3443444841372550912.Spec := by
  intro n
  simp only [A065686, Nat.add_sub_cancel]

end A065686

/-! ## A065686.P3349653308960645945

`∑[val(A000030(A137589(n+1)), 7)]`
-/

namespace A065686.P3349653308960645945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000030 (A137589 (n + 1)).toNat).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065686.P3349653308960645945

namespace A065686

/-- `∑[val(A000030(A137589(n+1)), 7)]` -/
def P3349653308960645945.Spec : Prop :=
  ∀ n, (P3349653308960645945.a n : ℤ) = A065686 (n + 1)

end A065686

/-! ## A065686.P11422759578747763114

`∑[floor(A081998(n)/A171038(n+1))]`
-/

namespace A065686.P11422759578747763114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081998 n : ℚ) / (A171038 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065686.P11422759578747763114

namespace A065686

/-- `∑[floor(A081998(n)/A171038(n+1))]` -/
def P11422759578747763114.Spec : Prop :=
  ∀ n, P11422759578747763114.a n = A065686 (n + 1)

end A065686

/-! ## A065686.P10300629170597938752

`∑[val(A274206(A004087(n+1)), 7)]`
-/

namespace A065686.P10300629170597938752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A274206 (A004087 (n + 1)).toNat).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065686.P10300629170597938752

namespace A065686

/-- `∑[val(A274206(A004087(n+1)), 7)]` -/
def P10300629170597938752.Spec : Prop :=
  ∀ n, (P10300629170597938752.a n : ℤ) = A065686 (n + 1)

end A065686

/-! ## A065686.P1146676775205450104

`∑[val(A000030(A000040(n+1))+1, 8)]`
-/

namespace A065686.P1146676775205450104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000030 (A000040 (n + 1)).toNat + 1).toNat 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065686.P1146676775205450104

namespace A065686

/-- `∑[val(A000030(A000040(n+1))+1, 8)]` -/
def P1146676775205450104.Spec : Prop :=
  ∀ n, (P1146676775205450104.a n : ℤ) = A065686 (n + 1)

end A065686

/-! ## A065686.P13546417343866764676

`A001222(∏[gcd(7, A077648(n+1))])`
-/

namespace A065686.P13546417343866764676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A077648 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A065686.P13546417343866764676

namespace A065686

/-- `A001222(∏[gcd(7, A077648(n+1))])` -/
def P13546417343866764676.Spec : Prop :=
  ∀ n, P13546417343866764676.a n = A065686 (n + 1)

end A065686

/-! ## A065686.P3935260292953491002

`∑[val(A179686(n+3), A179382(2*n+5))]`
-/

namespace A065686.P3935260292953491002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A179686 (n + 3)).toNat (A179382 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065686.P3935260292953491002

namespace A065686

/-- `∑[val(A179686(n+3), A179382(2*n+5))]` -/
def P3935260292953491002.Spec : Prop :=
  ∀ n, (P3935260292953491002.a n : ℤ) = A065686 (n + 1)

end A065686

/-! ## A065686.P7657374950677917930

`∑[A134361(n+6)%2]`
-/

namespace A065686.P7657374950677917930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134361 (n + 6)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065686.P7657374950677917930

namespace A065686

/-- `∑[A134361(n+6)%2]` -/
def P7657374950677917930.Spec : Prop :=
  ∀ n, P7657374950677917930.a n = A065686 (n + 1)

end A065686

/-!
# A065687: Number of primes <= prime(n) which begin with an 8.

The programs for A065687, the canonical program `A065687.P2261015865180936265` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065687 has offset 1).

The definition of A065687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065687.P2261015865180936265

`∑[val(A077648(n+1), 8)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065687

/-- `∑[val(A077648(n+1), 8)]` -/
def P2261015865180936265.Spec : Prop :=
  ∀ n, (P2261015865180936265.a n : ℤ) = A065687 (n + 1)

theorem P2261015865180936265.correct : P2261015865180936265.Spec := by
  intro n
  simp only [A065687, Nat.add_sub_cancel]

end A065687

/-! ## A065687.P4262661921447707503

`∑[val(A000030(A000040(n+1)), 8)]`
-/

namespace A065687.P4262661921447707503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000030 (A000040 (n + 1)).toNat).toNat 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065687.P4262661921447707503

namespace A065687

/-- `∑[val(A000030(A000040(n+1)), 8)]` -/
def P4262661921447707503.Spec : Prop :=
  ∀ n, (P4262661921447707503.a n : ℤ) = A065687 (n + 1)

end A065687

/-! ## A065687.P11808301162064979650

`A046698(C(A368700(n), 3))`
-/

namespace A065687.P11808301162064979650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (Nat.choose (A368700 n).toNat 3)

end

end A065687.P11808301162064979650

namespace A065687

/-- `A046698(C(A368700(n), 3))` -/
def P11808301162064979650.Spec : Prop :=
  ∀ n, P11808301162064979650.a n = A065687 (n + 1)

end A065687

/-! ## A065687.P4198692199669152343

`A065685(A208746(n+1))`
-/

namespace A065687.P4198692199669152343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065685 (A208746 (n + 1)).toNat

end

end A065687.P4198692199669152343

namespace A065687

/-- `A065685(A208746(n+1))` -/
def P4198692199669152343.Spec : Prop :=
  ∀ n, P4198692199669152343.a n = A065687 (n + 1)

end A065687

/-! ## A065687.P8036226815607917760

`∑[A121373(∑[n+24])]`
-/

namespace A065687.P8036226815607917760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 24

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065687.P8036226815607917760

namespace A065687

/-- `∑[A121373(∑[n+24])]` -/
def P8036226815607917760.Spec : Prop :=
  ∀ n, P8036226815607917760.a n = A065687 (n + 1)

end A065687

/-! ## A065687.P16711506631009694939

`∑[A068494(Δ[A246076(n+1)])]`
-/

namespace A065687.P16711506631009694939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246076 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068494 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065687.P16711506631009694939

namespace A065687

/-- `∑[A068494(Δ[A246076(n+1)])]` -/
def P16711506631009694939.Spec : Prop :=
  ∀ n, P16711506631009694939.a n = A065687 (n + 1)

end A065687

/-! ## A065687.P5660787581179465974

`∑[A069846(Δ[A246076(n+1)])]`
-/

namespace A065687.P5660787581179465974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246076 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069846 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065687.P5660787581179465974

namespace A065687

/-- `∑[A069846(Δ[A246076(n+1)])]` -/
def P5660787581179465974.Spec : Prop :=
  ∀ n, P5660787581179465974.a n = A065687 (n + 1)

end A065687

/-! ## A065687.P10149354576950948085

`∑[A240328(A270042(n+7))]`
-/

namespace A065687.P10149354576950948085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (A270042 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065687.P10149354576950948085

namespace A065687

/-- `∑[A240328(A270042(n+7))]` -/
def P10149354576950948085.Spec : Prop :=
  ∀ n, P10149354576950948085.a n = A065687 (n + 1)

end A065687

/-! ## A065687.P7549706734137653092

`∑[A088722(A056107(floor(n/2)))]`
-/

namespace A065687.P7549706734137653092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088722 (A056107 ⌊(n : ℚ) / 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065687.P7549706734137653092

namespace A065687

/-- `∑[A088722(A056107(floor(n/2)))]` -/
def P7549706734137653092.Spec : Prop :=
  ∀ n, P7549706734137653092.a n = A065687 (n + 1)

end A065687

/-! ## A065687.P1001507920174231053

`∑[A185016(A264595(n)+2)]`
-/

namespace A065687.P1001507920174231053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A264595 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065687.P1001507920174231053

namespace A065687

/-- `∑[A185016(A264595(n)+2)]` -/
def P1001507920174231053.Spec : Prop :=
  ∀ n, P1001507920174231053.a n = A065687 (n + 1)

end A065687

/-! ## A065687.P4837291551282354249

`A262679(n)%A157639(n+1)`
-/

namespace A065687.P4837291551282354249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262679 n) (A157639 (n + 1))

end

end A065687.P4837291551282354249

namespace A065687

/-- `A262679(n)%A157639(n+1)` -/
def P4837291551282354249.Spec : Prop :=
  ∀ n, P4837291551282354249.a n = A065687 (n + 1)

end A065687

/-!
# A065689: a(1) = 0; for n > 1, a(n) is the smallest square > a(n-1) with a(n-1) forming its final digits.

The programs for A065689, there is no canonical definition to state claims against.
-/

/-! ## A065689.P4955709180148687203

`A065690(n+1)²`
-/

namespace A065689.P4955709180148687203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065690 (n + 1) ^ 2

end

end A065689.P4955709180148687203

/-! ## A065689.P5612589848222469246

`record[A065690(A137734(n))²]`
-/

namespace A065689.P5612589848222469246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065690 (A137734 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065689.P5612589848222469246

/-! ## A065689.P13385677259926564702

`A065690(n+1)^sqrt(A040002(n))`
-/

namespace A065689.P13385677259926564702
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A065690 (n + 1) : ℝ) ^ (Real.sqrt (A040002 n : ℝ))

end

end A065689.P13385677259926564702

/-! ## A065689.P1286426173750047899

`A065690(n+1)^A014963(A001316(n))`
-/

namespace A065689.P1286426173750047899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065690 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A065689.P1286426173750047899

/-! ## A065689.P12758118526864989857

`A065690(n+1)^A000040(A208615(n))`
-/

namespace A065689.P12758118526864989857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065690 (n + 1) : ℚ) ^ (A000040 (A208615 n).toNat : ℤ)

end

end A065689.P12758118526864989857

/-!
# A065690: a(1) = 0; for n > 1, a(n) is the square root of the smallest square > a(n-1)^2 with a(n-1)^2 forming its final digits.

The programs for A065690, there is no canonical definition to state claims against.
-/

/-! ## A065690.P13157036932756758186

`sqrt(A065689(n+1))`
-/

namespace A065690.P13157036932756758186
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065689 (n + 1) : ℝ)

end

end A065690.P13157036932756758186

/-! ## A065690.P6304321670176301024

`A065689(A065672(n+1))^(1/2)`
-/

namespace A065690.P6304321670176301024
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A065689 (A065672 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A065690.P6304321670176301024

/-! ## A065690.P12354808812159144844

`A065689(n+1)^(A259094(n+1)/2)`
-/

namespace A065690.P12354808812159144844
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A065689 (n + 1) : ℝ) ^ ((A259094 (n + 1) : ℚ) / 2 : ℝ)

end

end A065690.P12354808812159144844

/-!
# A065691: a(1) = 0; for n > 1, a(n) is the smallest integer > 0 such that the concatenation a(n)a(n-1)...a(2)a(1) is a square.

The programs for A065691, there is no canonical definition to state claims against.
-/

/-! ## A065691.P6435318380216408795

`A107802(A134959(n))-3`
-/

namespace A065691.P6435318380216408795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107802 (A134959 n).toNat - 3

end

end A065691.P6435318380216408795

/-!
# A065692: Braided power sequence: this is b(n+1) = 3*b(n) + 2*d(n) - c(n), A065693 is c(n+1) = 3*c(n) + 2*b(n) - d(n) and A065694 is d(n+1) = 3*d(n) + 2*c(n) - b(n), starting with b(0) = 0, c(0) = 1 and d(0) = 2.

The programs for A065692, the canonical program `A065692.P15749156932814241604` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065692 has offset 0).

The definition of A065692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065692.P15749156932814241604

`9*a(n-1)-33*a(n-2)+52*a(n-3)` with `a(0)=0, a(1)=3, a(2)=24`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065692

/-- `9*a(n-1)-33*a(n-2)+52*a(n-3)` -/
def P15749156932814241604.Spec : Prop :=
  ∀ n, P15749156932814241604.a n = A065692 n

theorem P15749156932814241604.correct : P15749156932814241604.Spec := by
  intro n
  simp only [A065692]

end A065692

/-!
# A065693: Braided power sequence: A065692 is b(n+1) = 3*b(n) + 2*d(n) - c(n), this is c(n+1) = 3*c(n) + 2*b(n) - d(n) and A065694 is d(n+1) = 3*d(n) + 2*c(n) - b(n), starting with b(0) = 0, c(0) = 1 and d(0) = 2.

The programs for A065693, the canonical program `A065693.P18352274278328952649` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065693 has offset 0).

The definition of A065693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065693.P18352274278328952649

`9*a(n-1)-33*a(n-2)+52*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065693

/-- `9*a(n-1)-33*a(n-2)+52*a(n-3)` -/
def P18352274278328952649.Spec : Prop :=
  ∀ n, P18352274278328952649.a n = A065693 n

theorem P18352274278328952649.correct : P18352274278328952649.Spec := by
  intro n
  simp only [A065693]

end A065693

/-! ## A065693.P8564152981256563971

`A110654(A376456(n+1)-A139030(n))`
-/

namespace A065693.P8564152981256563971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A376456 (n + 1) - A139030 n).toNat

end

end A065693.P8564152981256563971

namespace A065693

/-- `A110654(A376456(n+1)-A139030(n))` -/
def P8564152981256563971.Spec : Prop :=
  ∀ n, P8564152981256563971.a n = A065693 n

end A065693

/-!
# A065694: Braided power sequence: A065692 is b(n+1) = 3*b(n) + 2*d(n) - c(n), A065693 is c(n+1) = 3*c(n) + 2*b(n) - d(n) and this is d(n+1) = 3*d(n) + 2*c(n) - b(n), starting with b(0) = 0, c(0) = 1 and d(0) = 2.

The programs for A065694, the canonical program `A065694.P5412418138732673378` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065694 has offset 0).

The definition of A065694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065694.P5412418138732673378

`9*a(n-1)-33*a(n-2)+52*a(n-3)` with `a(0)=2, a(1)=8, a(2)=23`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A065694

/-- `9*a(n-1)-33*a(n-2)+52*a(n-3)` -/
def P5412418138732673378.Spec : Prop :=
  ∀ n, P5412418138732673378.a n = A065694 n

theorem P5412418138732673378.correct : P5412418138732673378.Spec := by
  intro n
  simp only [A065694]

end A065694

/-! ## A065694.P2015644246217535344

`A187187(Δ[Δ[A065692(n)]])`
-/

namespace A065694.P2015644246217535344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065692 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (f1 (n + 1) - f1 n).toNat

end

end A065694.P2015644246217535344

namespace A065694

/-- `A187187(Δ[Δ[A065692(n)]])` -/
def P2015644246217535344.Spec : Prop :=
  ∀ n, P2015644246217535344.a n = A065694 n

end A065694

