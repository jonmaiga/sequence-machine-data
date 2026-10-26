import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C020
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
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
# A394610: Number of connected bicolored graphs on n unlabeled nodes such that black nodes are not adjacent to each other.

The programs for A394610, there is no canonical definition to state claims against.
-/

/-! ## A394610.P290829846798183598

`A114614(a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A394610.P290829846798183598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A114614 (a (n - 1)).toNat

end

end A394610.P290829846798183598

/-! ## A394610.P17482085368583949326

`A170887(A100094(n))`
-/

namespace A394610.P17482085368583949326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170887 (A100094 n).toNat

end

end A394610.P17482085368583949326

/-!
# A394611: a(1) = 0. For n > 1, a(n) is the number of ways to write a(n-1) as the sum of two previous terms with distinct positions in the sequence.

The programs for A394611, there is no canonical definition to state claims against.
-/

/-! ## A394611.P13483247485441702998

`1-A397177(n+1)+n`
-/

namespace A394611.P13483247485441702998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A397177 (n + 1) + (n : ℤ)

end

end A394611.P13483247485441702998

/-!
# A394612: Records corresponding to A394361.

The programs for A394612, there is no canonical definition to state claims against.
-/

/-! ## A394612.P13808654888382067321

`A317804(n+3)/A001285(round(2^(n-1)))`
-/

namespace A394612.P13808654888382067321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317804 (n + 3) : ℚ) / (A001285 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat : ℚ)

end

end A394612.P13808654888382067321

/-! ## A394612.P11071681437152861095

`record[A046523(A345167(n+3))]`
-/

namespace A394612.P11071681437152861095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A345167 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A394612.P11071681437152861095

/-! ## A394612.P6904654464566335766

`filter[A345167(n+3), A322585(#)]`
-/

namespace A394612.P6904654464566335766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A394612.P6904654464566335766

/-! ## A394612.P15428005618969395822

`filter[A345167(n+3), A344438(#)]`
-/

namespace A394612.P15428005618969395822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344438 (f1 j).toNat = 1) n)

end

end A394612.P15428005618969395822

/-! ## A394612.P8645262891970914350

`filter[A374698(n+3), A344438(#)]`
-/

namespace A394612.P8645262891970914350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374698 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344438 (f1 j).toNat = 1) n)

end

end A394612.P8645262891970914350

/-!
# A394613: a(n) = a(n-1) + a(n-3) + a(n-4), a(0) = 1, a(1) = 4, a(2) = 16, a(3) = 20.

The programs for A394613, the canonical program `A394613.P2998779106927904544` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394613 has offset 0).

The definition of A394613 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A394613.P2998779106927904544`, by `A394613.P2998779106927904544.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394613.P2998779106927904544

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=20`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394613

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P2998779106927904544.Spec : Prop :=
  ∀ n, (P2998779106927904544.a n : ℤ) = A394613 n

theorem P2998779106927904544.correct : P2998779106927904544.Spec := by
  intro n
  simp only [A394613]

end A394613

/-!
# A394617: Number of 4-generated groups of order n: groups that have a generating set of size <= 4.

The programs for A394617, there is no canonical definition to state claims against.
-/

/-! ## A394617.P17575065138494565129

`A048266(A000001(n+1))`
-/

namespace A394617.P17575065138494565129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A000001 (n + 1)).toNat

end

end A394617.P17575065138494565129

/-! ## A394617.P3668537390061819742

`A048266(A201733(n+1))`
-/

namespace A394617.P3668537390061819742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A201733 (n + 1)).toNat

end

end A394617.P3668537390061819742

/-! ## A394617.P15818444397706960509

`A007966(A297420(n+1))`
-/

namespace A394617.P15818444397706960509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (A297420 (n + 1)).toNat

end

end A394617.P15818444397706960509

/-! ## A394617.P3924115041287688847

`A048266(A394618(n+1))`
-/

namespace A394617.P3924115041287688847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A394618 (n + 1)).toNat

end

end A394617.P3924115041287688847

/-! ## A394617.P4071220877758946635

`gcd(A389300(n), A394618(n+1))`
-/

namespace A394617.P4071220877758946635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A389300 n) (A394618 (n + 1))

end

end A394617.P4071220877758946635

/-!
# A394618: Number of 5-generated groups of order n: groups that have a generating set of size <= 5.

The programs for A394618, there is no canonical definition to state claims against.
-/

/-! ## A394618.P8758964389215013724

`A089867(A000001(n+1))`
-/

namespace A394618.P8758964389215013724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A000001 (n + 1)).toNat

end

end A394618.P8758964389215013724

/-! ## A394618.P15434328259515196850

`A000188(A297420(n+1))`
-/

namespace A394618.P15434328259515196850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A297420 (n + 1)).toNat

end

end A394618.P15434328259515196850

/-! ## A394618.P8259380473093323532

`A000196(A000001(n+1)²)`
-/

namespace A394618.P8259380473093323532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000001 (n + 1) ^ 2).toNat

end

end A394618.P8259380473093323532

/-! ## A394618.P15948567349879379277

`A000001(n)+Δ[A214526(A297420(n)+1)]`
-/

namespace A394618.P15948567349879379277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A297420 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n + (f1 (n + 1) - f1 n)

end

end A394618.P15948567349879379277

/-! ## A394618.P12920449598221653729

`A000001(n)+Δ[A003984(2*A297420(n))]`
-/

namespace A394618.P12920449598221653729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (2 * A297420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n + (f1 (n + 1) - f1 n)

end

end A394618.P12920449598221653729

/-! ## A394618.P4235036010701637583

`A000001(n)+Δ[A087061(2*A297420(n))]`
-/

namespace A394618.P4235036010701637583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (2 * A297420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n + (f1 (n + 1) - f1 n)

end

end A394618.P4235036010701637583

/-! ## A394618.P8835768056993642860

`A000001(n+1)%A247178(A022293(3*n+2))`
-/

namespace A394618.P8835768056993642860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000001 (n + 1)) (A247178 (A022293 (3 * n + 2)).toNat)

end

end A394618.P8835768056993642860

/-! ## A394618.P8944524113708902552

`A000001(n+1)%A035112(n+1)`
-/

namespace A394618.P8944524113708902552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000001 (n + 1)) (A035112 (n + 1))

end

end A394618.P8944524113708902552

/-!
# A394619: Number of divisors d | k such that d is neither squarefree nor squareful (in A332785) and k = A126706(n).

The programs for A394619, the canonical program `A394619.P12031009564495718433` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394619 has offset 1).

The definition of A394619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3866 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394619.P12031009564495718433

`A391713(A126706(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A394619

/-- `A391713(A126706(n+1))` -/
def P12031009564495718433.Spec : Prop :=
  ∀ n, P12031009564495718433.a n = A394619 (n + 1)

theorem P12031009564495718433.correct : P12031009564495718433.Spec := by
  intro n
  simp only [A394619, Nat.add_sub_cancel]

end A394619

/-! ## A394619.P900496437714775503

`A133780(A134157(n))`
-/

namespace A394619.P900496437714775503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133780 (A134157 n).toNat

end

end A394619.P900496437714775503

namespace A394619

/-- `A133780(A134157(n))` -/
def P900496437714775503.Spec : Prop :=
  ∀ n, P900496437714775503.a n = A394619 (n + 1)

end A394619

/-! ## A394619.P12607239858799125330

`A249973(A269856(n+2))`
-/

namespace A394619.P12607239858799125330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249973 (A269856 (n + 2)).toNat

end

end A394619.P12607239858799125330

namespace A394619

/-- `A249973(A269856(n+2))` -/
def P12607239858799125330.Spec : Prop :=
  ∀ n, P12607239858799125330.a n = A394619 (n + 1)

end A394619

/-! ## A394619.P8531670997923918814

`A066099(A003242(n)*A126768(n+1))`
-/

namespace A394619.P8531670997923918814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A003242 n * A126768 (n + 1)).toNat

end

end A394619.P8531670997923918814

namespace A394619

/-- `A066099(A003242(n)*A126768(n+1))` -/
def P8531670997923918814.Spec : Prop :=
  ∀ n, P8531670997923918814.a n = A394619 (n + 1)

end A394619

/-! ## A394619.P4182528181983818933

`A066099((A261984(n)+A261962(n))*A126768(n+1))`
-/

namespace A394619.P4182528181983818933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 ((A261984 n + A261962 n) * A126768 (n + 1)).toNat

end

end A394619.P4182528181983818933

namespace A394619

/-- `A066099((A261984(n)+A261962(n))*A126768(n+1))` -/
def P4182528181983818933.Spec : Prop :=
  ∀ n, P4182528181983818933.a n = A394619 (n + 1)

end A394619

/-!
# A394620: Number of relations on an n-set that are reflexive but neither symmetric nor transitive.

The programs for A394620, there is no canonical definition to state claims against.
-/

/-! ## A394620.P13627618368317952993

`2^(n*(n-1))-2^(n*(n-1)/2)-A000798(n)+A000110(n)`
-/

namespace A394620.P13627618368317952993
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((n : ℤ) * ((n : ℤ) - 1) : ℤ) : ℝ) - (2 : ℝ) ^ (((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 : ℝ) - (A000798 n : ℝ) + (A000110 n : ℝ)

end

end A394620.P13627618368317952993

/-!
# A394630: Least index k such that prime(k)^2 + n! is again the square of a prime, or 0 if no such prime exists.

The programs for A394630, there is no canonical definition to state claims against.
-/

/-! ## A394630.P4233377567030469755

`A000720(A394631(n)+1)`
-/

namespace A394630.P4233377567030469755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A394631 n + 1).toNat

end

end A394630.P4233377567030469755

/-! ## A394630.P9478348629611260290

`A230980(A394631(n))`
-/

namespace A394630.P9478348629611260290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A394631 n).toNat

end

end A394630.P9478348629611260290

/-! ## A394630.P7843260236351658322

`A316524(∏{p}[A394631(n), #])`
-/

namespace A394630.P7843260236351658322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A394630.P7843260236351658322

/-!
# A394633: Least index k such that prime(k)^2 - n! is again the square of a prime, or 0 if no such prime exists.

The programs for A394633, there is no canonical definition to state claims against.
-/

/-! ## A394633.P9929351696934393096

`A000720(A394632(n)+1)`
-/

namespace A394633.P9929351696934393096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A394632 n + 1).toNat

end

end A394633.P9929351696934393096

/-! ## A394633.P10795192022746855076

`A230980(A394632(n))`
-/

namespace A394633.P10795192022746855076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A394632 n).toNat

end

end A394633.P10795192022746855076

/-!
# A394639: Start of exactly five even numbers that are totient numbers (A002202).

The programs for A394639, there is no canonical definition to state claims against.
-/

/-! ## A394639.P17204024412787551404

`A266551(A156013(n+2))`
-/

namespace A394639.P17204024412787551404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266551 (A156013 (n + 2)).toNat

end

end A394639.P17204024412787551404

/-!
# A394641: a(n) is the number of digits in the canonical snowball representation of n.

The programs for A394641, there is no canonical definition to state claims against.
-/

/-! ## A394641.P1972492920048324695

`A084558(A397851(n))`
-/

namespace A394641.P1972492920048324695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A397851 n).toNat

end

end A394641.P1972492920048324695

/-! ## A394641.P6433370203104043121

`A200747(A298349(n))`
-/

namespace A394641.P6433370203104043121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200747 (A298349 n).toNat

end

end A394641.P6433370203104043121

/-! ## A394641.P4461616643574504305

`A001221(lcm(A101268(n), A263941(n+1)))`
-/

namespace A394641.P4461616643574504305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A101268 n) (A263941 (n + 1)))

end

end A394641.P4461616643574504305

/-!
# A394642: a(n) = (7*n)!/(n!*((2*n)!)^3).

The programs for A394642, the canonical program `A394642.P11416306177130536638` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394642 has offset 0).

The definition of A394642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394642.P11416306177130536638

`C(7*n, 2*n)*C(5*n, 2*n)*C(3*n, n)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394642

/-- `C(7*n, 2*n)*C(5*n, 2*n)*C(3*n, n)` -/
def P11416306177130536638.Spec : Prop :=
  ∀ n, (P11416306177130536638.a n : ℤ) = A394642 n

theorem P11416306177130536638.correct : P11416306177130536638.Spec := by
  intro n
  simp only [A394642]

end A394642

/-! ## A394642.P2264705437905899226

`A318107(A062725(n))`
-/

namespace A394642.P2264705437905899226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318107 (A062725 n).toNat

end

end A394642.P2264705437905899226

namespace A394642

/-- `A318107(A062725(n))` -/
def P2264705437905899226.Spec : Prop :=
  ∀ n, P2264705437905899226.a n = A394642 n

end A394642

/-!
# A394643: Total number of cells under all symmetric Dyck paths of semilength n in the first quadrant of the square grid.

The programs for A394643, there is no canonical definition to state claims against.
-/

/-! ## A394643.P6017312171042428796

`(A057571(n)+A001405(n)*n²)/2`
-/

namespace A394643.P6017312171042428796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057571 n + A001405 n * (n ^ 2 : ℤ) : ℚ) / 2

end

end A394643.P6017312171042428796

/-! ## A394643.P3673869536325417299

`A268496(A002620(n)+A000225(n))`
-/

namespace A394643.P3673869536325417299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268496 (A002620 n + A000225 n).toNat

end

end A394643.P3673869536325417299

/-!
# A394644: Expansion of e.g.f. exp((4/3)*x^3+x).

The programs for A394644, the canonical program `A394644.P4630803448087939545` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394644 has offset 0).

The definition of A394644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394644.P4630803448087939545

`a(n-1)+4*(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394644

/-- `a(n-1)+4*(n-1)*(n-2)*a(n-3)` -/
def P4630803448087939545.Spec : Prop :=
  ∀ n, P4630803448087939545.a n = A394644 n

theorem P4630803448087939545.correct : P4630803448087939545.Spec := by
  intro n
  simp only [A394644]

end A394644

/-! ## A394644.P12046620046352065922

`A016813(A193374(n)-1)`
-/

namespace A394644.P12046620046352065922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A193374 n - 1).toNat

end

end A394644.P12046620046352065922

namespace A394644

/-- `A016813(A193374(n)-1)` -/
def P12046620046352065922.Spec : Prop :=
  ∀ n, P12046620046352065922.a n = A394644 n

end A394644

/-! ## A394644.P2529201046573190448

`A066440(2*A000142(n))`
-/

namespace A394644.P2529201046573190448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066440 (2 * A000142 n).toNat

end

end A394644.P2529201046573190448

namespace A394644

/-- `A066440(2*A000142(n))` -/
def P2529201046573190448.Spec : Prop :=
  ∀ n, P2529201046573190448.a n = A394644 n

end A394644

/-!
# A394648: Rectangular array, read by descending antidiagonals: the offset sum array of the Thue-Morse sequence, A010060; see Comments.

The programs for A394648, there is no canonical definition to state claims against.
-/

/-! ## A394648.P8868330872249674191

`A293439(A100851(n))`
-/

namespace A394648.P8868330872249674191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293439 (A100851 n).toNat

end

end A394648.P8868330872249674191

/-! ## A394648.P17921411532577557404

`A293439(A100852(n))`
-/

namespace A394648.P17921411532577557404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293439 (A100852 n).toNat

end

end A394648.P17921411532577557404

/-! ## A394648.P6743948572971283353

`A010872(A004853(n+1))`
-/

namespace A394648.P6743948572971283353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A004853 (n + 1)).toNat

end

end A394648.P6743948572971283353

/-! ## A394648.P12183485798116642403

`A010872(A168659(3*n+2)+A006450(2*n+3))`
-/

namespace A394648.P12183485798116642403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A168659 (3 * n + 2) + A006450 (2 * n + 3)).toNat

end

end A394648.P12183485798116642403

/-! ## A394648.P12348170867226785882

`A190248(A135520(n))`
-/

namespace A394648.P12348170867226785882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190248 (A135520 n).toNat

end

end A394648.P12348170867226785882

/-!
# A394649: Rectangular array, read by descending antidiagonals: the offset sum array of the infinite Fibonacci word, A003849; see Comments.

The programs for A394649, there is no canonical definition to state claims against.
-/

/-! ## A394649.P3895610967345043979

`A125070(A100851(n))`
-/

namespace A394649.P3895610967345043979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125070 (A100851 n).toNat

end

end A394649.P3895610967345043979

/-! ## A394649.P9590287675782867197

`A125070(A100852(n))`
-/

namespace A394649.P9590287675782867197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125070 (A100852 n).toNat

end

end A394649.P9590287675782867197

/-! ## A394649.P539204886100327332

`A287524(A008578(n+1)*A205846(2*(n+1)))`
-/

namespace A394649.P539204886100327332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287524 (A008578 (n + 1) * A205846 (2 * (n + 1))).toNat

end

end A394649.P539204886100327332

/-! ## A394649.P14445702557911739479

`A056170(A247888(3*n+1)-A124766(n))`
-/

namespace A394649.P14445702557911739479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A247888 (3 * n + 1) - A124766 n).toNat

end

end A394649.P14445702557911739479

/-! ## A394649.P12455271664059994495

`A036580(or(A204518(n+1), A338915(n)))`
-/

namespace A394649.P12455271664059994495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 (Int.lor (A204518 (n + 1)) (A338915 n)).toNat

end

end A394649.P12455271664059994495

/-!
# A394651: a(n) = tau(n) + Sum_{p|n, p prime, gcd(p,n/p) = 1} (p-1).

The programs for A394651, the canonical program `A394651.P12518876512393771500` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394651 has offset 1).

The definition of A394651 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A063956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A394651.P12518876512393771500

`A000005(n+1)+A063956(n+1)-A056169(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A394651

/-- `A000005(n+1)+A063956(n+1)-A056169(n+1)` -/
def P12518876512393771500.Spec : Prop :=
  ∀ n, P12518876512393771500.a n = A394651 (n + 1)

theorem P12518876512393771500.correct : P12518876512393771500.Spec := by
  intro n
  simp only [A394651, Nat.add_sub_cancel]

end A394651

/-! ## A394651.P18056739804961925858

`A007503(n+1)-A394085(n+1)`
-/

namespace A394651.P18056739804961925858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A394085 (n + 1)

end

end A394651.P18056739804961925858

namespace A394651

/-- `A007503(n+1)-A394085(n+1)` -/
def P18056739804961925858.Spec : Prop :=
  ∀ n, P18056739804961925858.a n = A394651 (n + 1)

theorem P18056739804961925858.correct : P18056739804961925858.Spec := by
  intro n
  simp only [A394651, Nat.add_sub_cancel, A394651.P18056739804961925858.a, A394651.P12518876512393771500.a, A000005, A000005.P16091521709108585461.a, A007503, A007503.P13484425310514315912.a, A056169, A056169.P17430176249366647977.a, A063956, A063956.P13509344762830228615.f2, A063956.P13509344762830228615.f4, A063956.P13509344762830228615.f3, A063956.P13509344762830228615.f1, A063956.P13509344762830228615.a, A394085, A394085.P10152136709517601280.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P10258181745752134128.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A055231, A055231.P8962300905713718501.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A059841, A059841.P7264174615531153985.a, A071773, A071773.P10551485978970375506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A394651

/-!
# A394656: a(n) = binomial(n,3) + 4*binomial(n,4) + 10*binomial(n,5) + 20*binomial(n,6).

The programs for A394656, the canonical program `A394656.P12460803549318427871` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394656 has offset 0).

The definition of A394656 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, 3)+4*C(n, 4)+10*C(n, 5)+20*C(n, 6)` (program `A394656.P12460803549318427871`, by `A394656.P12460803549318427871.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394656.P12460803549318427871

`C(n, 3)+4*C(n, 4)+10*C(n, 5)+20*C(n, 6)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394656

/-- `C(n, 3)+4*C(n, 4)+10*C(n, 5)+20*C(n, 6)` -/
def P12460803549318427871.Spec : Prop :=
  ∀ n, (P12460803549318427871.a n : ℤ) = A394656 n

theorem P12460803549318427871.correct : P12460803549318427871.Spec := by
  intro n
  simp only [A394656]

end A394656

/-! ## A394656.P10718894364618988177

`n*(n-1)*(n-2)²*(n²-7*n+18)/36`
-/

namespace A394656.P10718894364618988177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) ^ 2 * ((n ^ 2 : ℤ) - (7 * n : ℤ) + 18) : ℚ) / 36

end

end A394656.P10718894364618988177

namespace A394656

/-- `n*(n-1)*(n-2)²*(n²-7*n+18)/36` -/
def P10718894364618988177.Spec : Prop :=
  ∀ n, P10718894364618988177.a n = (A394656 n : ℚ)

theorem P10718894364618988177.correct : P10718894364618988177.Spec := by
  intro n
  simp only [A394656, Nat.add_sub_cancel, A394656.P10718894364618988177.a, A394656.P12460803549318427871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A394656

/-! ## A394656.P5520390250157232182

`A002417(n+1)/A047927(n+3)*A395461(n)`
-/

namespace A394656.P5520390250157232182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002417 (n + 1) : ℚ) / (A047927 (n + 3) : ℚ) * (A395461 n : ℚ)

end

end A394656.P5520390250157232182

namespace A394656

/-- `A002417(n+1)/A047927(n+3)*A395461(n)` -/
def P5520390250157232182.Spec : Prop :=
  ∀ n, P5520390250157232182.a n = (A394656 n : ℚ)

end A394656

/-! ## A394656.P9252928674348929413

`A255591(A395461(n))`
-/

namespace A394656.P9252928674348929413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A395461 n).toNat

end

end A394656.P9252928674348929413

namespace A394656

/-- `A255591(A395461(n))` -/
def P9252928674348929413.Spec : Prop :=
  ∀ n, P9252928674348929413.a n = A394656 n

end A394656

/-!
# A394660: a(n) is the largest prime number such that prime(n)-a(n) is a 3-smooth number where prime(n) denotes the n-th prime number, or zero if no such number exists.

The programs for A394660, there is no canonical definition to state claims against.
-/

/-! ## A394660.P17861257755867302158

`A069675(n+1)%A122599(n+1)`
-/

namespace A394660.P17861257755867302158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069675 (n + 1)) (A122599 (n + 1))

end

end A394660.P17861257755867302158

/-!
# A394666: a(n) = n! mod (2*n - 1).

The programs for A394666, the canonical program `A394666.P6183646248450568136` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394666 has offset 1).

The definition of A394666 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)!%(2*(n+1)-1)` (program `A394666.P6183646248450568136`, by `A394666.P6183646248450568136.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394666.P6183646248450568136

`(n+1)!%(2*(n+1)-1)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394666

/-- `(n+1)!%(2*(n+1)-1)` -/
def P6183646248450568136.Spec : Prop :=
  ∀ n, P6183646248450568136.a n = A394666 (n + 1)

theorem P6183646248450568136.correct : P6183646248450568136.Spec := by
  intro n
  simp only [A394666, Nat.add_sub_cancel]

end A394666

/-! ## A394666.P7064712614186772254

`A062169((n+1)²+n²)`
-/

namespace A394666.P7064712614186772254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062169 ((n + 1) ^ 2 + n ^ 2)

end

end A394666.P7064712614186772254

namespace A394666

/-- `A062169((n+1)²+n²)` -/
def P7064712614186772254.Spec : Prop :=
  ∀ n, P7064712614186772254.a n = A394666 (n + 1)

end A394666

/-! ## A394666.P7686692219860399075

`∏[n+1]%Δ[n²]`
-/

namespace A394666.P7686692219860399075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A394666.P7686692219860399075

namespace A394666

/-- `∏[n+1]%Δ[n²]` -/
def P7686692219860399075.Spec : Prop :=
  ∀ n, P7686692219860399075.a n = A394666 (n + 1)

theorem P7686692219860399075.correct : P7686692219860399075.Spec := by
  intro n
  simp only [A394666, Nat.add_sub_cancel, A394666.P7686692219860399075.f1, A394666.P7686692219860399075.f2, A394666.P7686692219860399075.a, A394666.P6183646248450568136.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A394666

/-! ## A394666.P11302020809150506490

`abs(-(n+1)!%(2*n+1))`
-/

namespace A394666.P11302020809150506490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (-(Nat.factorial (n + 1) : ℤ)) (2 * n + 1 : ℤ)|

end

end A394666.P11302020809150506490

namespace A394666

/-- `abs(-(n+1)!%(2*n+1))` -/
def P11302020809150506490.Spec : Prop :=
  ∀ n, P11302020809150506490.a n = A394666 (n + 1)

end A394666

/-! ## A394666.P547289551071780180

`abs(∏[-(n+1)]%(2*n+1))`
-/

namespace A394666.P547289551071780180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (2 * n + 1 : ℤ)|

end

end A394666.P547289551071780180

namespace A394666

/-- `abs(∏[-(n+1)]%(2*n+1))` -/
def P547289551071780180.Spec : Prop :=
  ∀ n, P547289551071780180.a n = A394666 (n + 1)

end A394666

/-! ## A394666.P8839173849948814664

`-(-∏[n+1]%(2*n+1))`
-/

namespace A394666.P8839173849948814664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (2 * n + 1 : ℤ)

end

end A394666.P8839173849948814664

namespace A394666

/-- `-(-∏[n+1]%(2*n+1))` -/
def P8839173849948814664.Spec : Prop :=
  ∀ n, P8839173849948814664.a n = A394666 (n + 1)

theorem P8839173849948814664.correct : P8839173849948814664.Spec := by
  intro n
  simp only [A394666, Nat.add_sub_cancel, A394666.P8839173849948814664.f1, A394666.P8839173849948814664.a, A394666.P6183646248450568136.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A394666

/-!
# A394667: Integers which can be written as the sum of a prime and an anagram of that prime.

The programs for A394667, there is no canonical definition to state claims against.
-/

/-! ## A394667.P10327233176578163157

`A040063(A000244(n))*A152242(n+1)`
-/

namespace A394667.P10327233176578163157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040063 (A000244 n).toNat * A152242 (n + 1)

end

end A394667.P10327233176578163157

/-! ## A394667.P6446554538994814408

`A000005(A045535(n))*A152242(n+1)`
-/

namespace A394667.P6446554538994814408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A045535 n).toNat * A152242 (n + 1)

end

end A394667.P6446554538994814408

/-! ## A394667.P2729880304251701848

`A046698(A004811(n+1))*A152242(n+1)`
-/

namespace A394667.P2729880304251701848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A004811 (n + 1)).toNat * A152242 (n + 1)

end

end A394667.P2729880304251701848

/-! ## A394667.P1231088467679658725

`A043529(A083844(n+1))*A095405(n+1)`
-/

namespace A394667.P1231088467679658725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A083844 (n + 1)).toNat * A095405 (n + 1)

end

end A394667.P1231088467679658725

/-! ## A394667.P4895468101913807553

`A000034(A100458(n+1))*A152242(n+1)`
-/

namespace A394667.P4895468101913807553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A100458 (n + 1)).toNat * A152242 (n + 1)

end

end A394667.P4895468101913807553

/-!
# A394668: Number of partitions of n^2 into prime parts.

The programs for A394668, there is no canonical definition to state claims against.
-/

/-! ## A394668.P8190230233248868778

`A000607(n²)`
-/

namespace A394668.P8190230233248868778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (n ^ 2)

end

end A394668.P8190230233248868778

/-! ## A394668.P12197260832918066588

`gcd(floor(1/(n+1)), A000607(A000290(n)))`
-/

namespace A394668.P12197260832918066588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A000607 (A000290 n).toNat)

end

end A394668.P12197260832918066588

/-! ## A394668.P11930953399753849402

`A000607(A000290(n))+A000007(n+2)`
-/

namespace A394668.P11930953399753849402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A000290 n).toNat + A000007 (n + 2)

end

end A394668.P11930953399753849402

/-! ## A394668.P8434195796514582167

`or(A000607(A000290(n)), A163811(2*n))`
-/

namespace A394668.P8434195796514582167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000607 (A000290 n).toNat) (A163811 (2 * n))

end

end A394668.P8434195796514582167

/-! ## A394668.P12654404681249944140

`A035457(2*n+1)+A000607(A000290(n))`
-/

namespace A394668.P12654404681249944140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n + 1) + A000607 (A000290 n).toNat

end

end A394668.P12654404681249944140

/-! ## A394668.P5695346111322314142

`A241666(2*n+4)+A000607(A000290(n))`
-/

namespace A394668.P5695346111322314142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241666 (2 * n + 4) + A000607 (A000290 n).toNat

end

end A394668.P5695346111322314142

/-! ## A394668.P798033888557556367

`A000607(A000290(n))*A057427(2*n+3)`
-/

namespace A394668.P798033888557556367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A000290 n).toNat * A057427 (2 * n + 3)

end

end A394668.P798033888557556367

/-! ## A394668.P5496777052385003814

`A033683(2*n)+A000607(A002378(n)-n)`
-/

namespace A394668.P5496777052385003814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033683 (2 * n) + A000607 (A002378 n - (n : ℤ)).toNat

end

end A394668.P5496777052385003814

/-! ## A394668.P4466639171189343301

`A000607(A000290(n))%A286501(2*n+3)`
-/

namespace A394668.P4466639171189343301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000607 (A000290 n).toNat) (A286501 (2 * n + 3))

end

end A394668.P4466639171189343301

/-! ## A394668.P9906180311071745940

`A000607(A002378(n)-n)%A073919(2*n)`
-/

namespace A394668.P9906180311071745940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000607 (A002378 n - (n : ℤ)).toNat) (A073919 (2 * n))

end

end A394668.P9906180311071745940

/-! ## A394668.P17401102048800380764

`and(A000607(A000290(n)), A083329(3*n))`
-/

namespace A394668.P17401102048800380764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000607 (A000290 n).toNat) (A083329 (3 * n))

end

end A394668.P17401102048800380764

/-! ## A394668.P7641911127227908100

`A000607(A000290(n))%A198966(n)`
-/

namespace A394668.P7641911127227908100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000607 (A000290 n).toNat) (A198966 n)

end

end A394668.P7641911127227908100

/-!
# A394671: Power tower of ascending prime factors of n with multiplicity.

The programs for A394671, there is no canonical definition to state claims against.
-/

/-! ## A394671.P5507272376117077076

`A290109(A074736(n+1))`
-/

namespace A394671.P5507272376117077076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290109 (A074736 (n + 1)).toNat

end

end A394671.P5507272376117077076

/-! ## A394671.P3053414042921754394

`A304481(A394384(n+1))`
-/

namespace A394671.P3053414042921754394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304481 (A394384 (n + 1)).toNat

end

end A394671.P3053414042921754394

/-!
# A394673: Irregular triangle T(n, k), n > 0, k = 1..A282446(n), read by rows; the n-th row lists the recursive divisors of n (as defined in A282446).

The programs for A394673, there is no canonical definition to state claims against.
-/

/-! ## A394673.P3636454967626560901

`A027750(lt[A325690(n), A057773(n+1)])`
-/

namespace A394673.P3636454967626560901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325690 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A394673.P3636454967626560901

/-!
# A394676: a(1) = 1, a(n+1) as the smallest positive integer greater than a(n) that avoids violating the condition a(k) + a(k+1) + a(k+2) + a(k+3) is not term.

The programs for A394676, there is no canonical definition to state claims against.
-/

/-! ## A394676.P1733274690873917702

`lt[Δ[A101856(2*n+1)], n]`
-/

namespace A394676.P1733274690873917702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101856 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A394676.P1733274690873917702

/-! ## A394676.P6771077778547142568

`∑[A115576(n+2)]%A322710(n+3)`
-/

namespace A394676.P6771077778547142568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115576 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A322710 (n + 3))

end

end A394676.P6771077778547142568

/-!
# A394677: Row sums of A394670.

The programs for A394677, there is no canonical definition to state claims against.
-/

/-! ## A394677.P14312828362897115250

`A103205(A000142(n)*A236913(n))`
-/

namespace A394677.P14312828362897115250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 (A000142 n * A236913 n).toNat

end

end A394677.P14312828362897115250

/-! ## A394677.P5495421742567410605

`A174824(A000142(n)*A174013(n))`
-/

namespace A394677.P5495421742567410605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174824 (A000142 n * A174013 n).toNat

end

end A394677.P5495421742567410605

/-!
# A394678: a(n) = (n! - 1) mod n^2.

The programs for A394678, the canonical program `A394678.P14362963184433160294` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394678 has offset 1).

The definition of A394678 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)!-1)%(n+1)²` (program `A394678.P14362963184433160294`, by `A394678.P14362963184433160294.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394678.P14362963184433160294

`((n+1)!-1)%(n+1)²`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394678

/-- `((n+1)!-1)%(n+1)²` -/
def P14362963184433160294.Spec : Prop :=
  ∀ n, P14362963184433160294.a n = A394678 (n + 1)

theorem P14362963184433160294.correct : P14362963184433160294.Spec := by
  intro n
  simp only [A394678, Nat.add_sub_cancel]

end A394678

/-! ## A394678.P15924254522543551977

`∑[n*n!]%(n+1)²`
-/

namespace A394678.P15924254522543551977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) ^ 2

end

end A394678.P15924254522543551977

namespace A394678

/-- `∑[n*n!]%(n+1)²` -/
def P15924254522543551977.Spec : Prop :=
  ∀ n, (P15924254522543551977.a n : ℤ) = A394678 (n + 1)

end A394678

/-! ## A394678.P16393790094089503091

`(∏[n+1]-1)%(n+1)²`
-/

namespace A394678.P16393790094089503091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) ((n + 1) ^ 2 : ℤ)

end

end A394678.P16393790094089503091

namespace A394678

/-- `(∏[n+1]-1)%(n+1)²` -/
def P16393790094089503091.Spec : Prop :=
  ∀ n, P16393790094089503091.a n = A394678 (n + 1)

theorem P16393790094089503091.correct : P16393790094089503091.Spec := by
  intro n
  simp only [A394678, Nat.add_sub_cancel, A394678.P16393790094089503091.f1, A394678.P16393790094089503091.a, A394678.P14362963184433160294.a, SequenceMachineLib.memo_apply]
  try simp

end A394678

/-!
# A394679: Expansion of 2F1(1/4, 3/4; 1/2; 4*x/(1-x)^2)^2.

The programs for A394679, there is no canonical definition to state claims against.
-/

/-! ## A394679.P9211773812880296206

`or(A002375(A003954(n)), A007145(n+1))`
-/

namespace A394679.P9211773812880296206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002375 (A003954 n).toNat) (A007145 (n + 1))

end

end A394679.P9211773812880296206

/-!
# A394681: a(0) = 1 and a(n) = n^2*a(n-1) + n! for n > 0.

The programs for A394681, the canonical program `A394681.P1617660832264607447` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394681 has offset 0).

The definition of A394681 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*a(n-1)+n!` (program `A394681.P1617660832264607447`, by `A394681.P1617660832264607447.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394681.P1617660832264607447

`n²*a(n-1)+n!` with `a(0)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A394681

/-- `n²*a(n-1)+n!` -/
def P1617660832264607447.Spec : Prop :=
  ∀ n, (P1617660832264607447.a n : ℤ) = A394681 n

theorem P1617660832264607447.correct : P1617660832264607447.Spec := by
  intro n
  simp only [A394681]

end A394681

/-! ## A394681.P3179962784797098460

`(n*a(n-1)+(n-1)!)*n` with `a(0)=1`
-/

namespace A394681.P3179962784797098460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n * a (n - 1) + Nat.factorial ((n : ℤ) - 1).toNat) * n

end

end A394681.P3179962784797098460

namespace A394681

/-- `(n*a(n-1)+(n-1)!)*n` -/
def P3179962784797098460.Spec : Prop :=
  ∀ n, (P3179962784797098460.a n : ℤ) = A394681 n

end A394681

/-! ## A394681.P14025106025727273414

`n!*A000522(n)`
-/

namespace A394681.P14025106025727273414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000522 n

end

end A394681.P14025106025727273414

namespace A394681

/-- `n!*A000522(n)` -/
def P14025106025727273414.Spec : Prop :=
  ∀ n, P14025106025727273414.a n = A394681 n

end A394681

/-! ## A394681.P17497535493697106723

`A000142(n)*A000522(n)`
-/

namespace A394681.P17497535493697106723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000522 n

end

end A394681.P17497535493697106723

namespace A394681

/-- `A000142(n)*A000522(n)` -/
def P17497535493697106723.Spec : Prop :=
  ∀ n, P17497535493697106723.a n = A394681 n

end A394681

/-! ## A394681.P13468242567470709061

`A000142(n)+A000142(n)*A007526(n)`
-/

namespace A394681.P13468242567470709061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + A000142 n * A007526 n

end

end A394681.P13468242567470709061

namespace A394681

/-- `A000142(n)+A000142(n)*A007526(n)` -/
def P13468242567470709061.Spec : Prop :=
  ∀ n, P13468242567470709061.a n = A394681 n

end A394681

/-!
# A394683: a(n) = (m*p)^2 + 1 where p = A002496(n) is the n-th prime of the form m^2 + 1.

The programs for A394683, the canonical program `A394683.P11002460213357766663` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394683 has offset 1).

The definition of A394683 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382617, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A394683.P11002460213357766663

`A382617(n+1)²+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A394683

/-- `A382617(n+1)²+1` -/
def P11002460213357766663.Spec : Prop :=
  ∀ n, P11002460213357766663.a n = A394683 (n + 1)

theorem P11002460213357766663.correct : P11002460213357766663.Spec := by
  intro n
  simp only [A394683, Nat.add_sub_cancel]

end A394683

/-! ## A394683.P14746248557156974841

`A005574(n+1)²*A002496(n+1)²+1`
-/

namespace A394683.P14746248557156974841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) ^ 2 * A002496 (n + 1) ^ 2 + 1

end

end A394683.P14746248557156974841

namespace A394683

/-- `A005574(n+1)²*A002496(n+1)²+1` -/
def P14746248557156974841.Spec : Prop :=
  ∀ n, P14746248557156974841.a n = A394683 (n + 1)

theorem P14746248557156974841.correct : P14746248557156974841.Spec := by
  intro n
  simp only [A394683, Nat.add_sub_cancel, A394683.P14746248557156974841.a, A394683.P11002460213357766663.a, A002496, A002496.P13667531374760205001.a, A005574, A005574.P826988356271563688.a, A382617, A382617.P9446645730098561292.a, A121326, A121326.P7190985811209929169.a, A009005, A009005.P4556890301061570360.a, A054964, A054964.P645230808875844543.f1, A054964.P645230808875844543.a, A002522, A002522.P3778392011853271743.a, A333167, A333167.P7830250556896041600.a, A333169, A333169.P11111623842642408816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A394683

/-! ## A394683.P16524890516969621604

`A100104(A002496(n+1))`
-/

namespace A394683.P16524890516969621604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100104 (A002496 (n + 1)).toNat

end

end A394683.P16524890516969621604

namespace A394683

/-- `A100104(A002496(n+1))` -/
def P16524890516969621604.Spec : Prop :=
  ∀ n, P16524890516969621604.a n = A394683 (n + 1)

end A394683

/-! ## A394683.P1028648033279136187

`A100104(A382617(n+1)/A005574(n+1))`
-/

namespace A394683.P1028648033279136187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100104 (SequenceMachineLib.roundAway ((A382617 (n + 1) : ℚ) / (A005574 (n + 1) : ℚ))).toNat

end

end A394683.P1028648033279136187

namespace A394683

/-- `A100104(A382617(n+1)/A005574(n+1))` -/
def P1028648033279136187.Spec : Prop :=
  ∀ n, P1028648033279136187.a n = A394683 (n + 1)

end A394683

/-!
# A394684: Number of ordered pairs of integers (x,y) with 0 <= x <= y and x^2+y^2 < n^2.

The programs for A394684, there is no canonical definition to state claims against.
-/

/-! ## A394684.P1376583140770396335

`A036702(n)-A063014(n)`
-/

namespace A394684.P1376583140770396335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036702 n - A063014 n

end

end A394684.P1376583140770396335

/-! ## A394684.P10651340368163294522

`eq[0, A280317(n+1)]`
-/

namespace A394684.P10651340368163294522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280317 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A394684.P10651340368163294522

/-! ## A394684.P15654047976913429120

`A367066(A008822(n))`
-/

namespace A394684.P15654047976913429120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367066 (A008822 n).toNat

end

end A394684.P15654047976913429120

/-! ## A394684.P18145201179343311882

`A095201(A000960(n+1))`
-/

namespace A394684.P18145201179343311882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095201 (A000960 (n + 1)).toNat

end

end A394684.P18145201179343311882

/-! ## A394684.P501424312033662443

`A135676(A134914((n+1)²²))`
-/

namespace A394684.P501424312033662443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135676 (A134914 (((n + 1) ^ 2) ^ 2)).toNat

end

end A394684.P501424312033662443

/-!
# A394686: Primes, p, such that the sum of p and an anagram of itself produce another prime, q.

The programs for A394686, there is no canonical definition to state claims against.
-/

/-! ## A394686.P13951776300080230680

`eq[A326843(n), A342845(n)]`
-/

namespace A394686.P13951776300080230680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394686.P13951776300080230680

/-! ## A394686.P11970108290927383527

`eq[A326843(n), A374097(n)]`
-/

namespace A394686.P11970108290927383527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A394686.P11970108290927383527

/-! ## A394686.P16624708546643515192

`∩[A038616(n+1), A330859(n)]`
-/

namespace A394686.P16624708546643515192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330859 (n + 100)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394686.P16624708546643515192

/-! ## A394686.P2936288080755520746

`∩[A040169(n+1), A330859(n)]`
-/

namespace A394686.P2936288080755520746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330859 (n + 100)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394686.P2936288080755520746

/-!
# A394687: Number of ordered pairs of positive integers (a,b) with a < b such that b^2 - a^2 <= n.

The programs for A394687, the canonical program `A394687.P4586993483897580665` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394687 has offset 1).

The definition of A394687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394687.P4586993483897580665

`∑[A100073(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A394687

/-- `∑[A100073(n+1)]` -/
def P4586993483897580665.Spec : Prop :=
  ∀ n, P4586993483897580665.a n = A394687 (n + 1)

theorem P4586993483897580665.correct : P4586993483897580665.Spec := by
  intro n
  simp only [A394687, Nat.add_sub_cancel]

end A394687

/-! ## A394687.P13533036408772806597

`A064415(A320296(n+2))`
-/

namespace A394687.P13533036408772806597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A320296 (n + 2)).toNat

end

end A394687.P13533036408772806597

namespace A394687

/-- `A064415(A320296(n+2))` -/
def P13533036408772806597.Spec : Prop :=
  ∀ n, P13533036408772806597.a n = A394687 (n + 1)

end A394687

/-! ## A394687.P62884750937336505

`A209899(A344232(n+2))`
-/

namespace A394687.P62884750937336505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209899 (A344232 (n + 2)).toNat

end

end A394687.P62884750937336505

namespace A394687

/-- `A209899(A344232(n+2))` -/
def P62884750937336505.Spec : Prop :=
  ∀ n, P62884750937336505.a n = A394687 (n + 1)

end A394687

/-! ## A394687.P80341249371034301

`A179076(A162724(n+1))`
-/

namespace A394687.P80341249371034301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179076 (A162724 (n + 1)).toNat

end

end A394687.P80341249371034301

namespace A394687

/-- `A179076(A162724(n+1))` -/
def P80341249371034301.Spec : Prop :=
  ∀ n, P80341249371034301.a n = A394687 (n + 1)

end A394687

/-! ## A394687.P714375675056074499

`A302931(A188259(n+1))`
-/

namespace A394687.P714375675056074499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302931 (A188259 (n + 1)).toNat

end

end A394687.P714375675056074499

namespace A394687

/-- `A302931(A188259(n+1))` -/
def P714375675056074499.Spec : Prop :=
  ∀ n, P714375675056074499.a n = A394687 (n + 1)

end A394687

/-!
# A394692: Triangle read by rows: T(n,k) = (1/(2k)!) * Sum_{j=0..2k} (-1)^j * binomial(2k,j) * (1+k-j)^(2n).

The programs for A394692, there is no canonical definition to state claims against.
-/

/-! ## A394692.P14732199424524759201

`A364772(A109001(n))`
-/

namespace A394692.P14732199424524759201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364772 (A109001 n).toNat

end

end A394692.P14732199424524759201

/-!
# A394694: Number of occurrences of n in A081493.

The programs for A394694, there is no canonical definition to state claims against.
-/

/-! ## A394694.P3688943855948257180

`A288710(A028495(n))+A227481(2*n)`
-/

namespace A394694.P3688943855948257180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288710 (A028495 n).toNat + A227481 (2 * n)

end

end A394694.P3688943855948257180

/-! ## A394694.P11117403114225306655

`A066451(A192135(n+1))`
-/

namespace A394694.P11117403114225306655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066451 (A192135 (n + 1)).toNat

end

end A394694.P11117403114225306655

/-! ## A394694.P14506578762360703019

`A001227(n+3)-A320656(A000578(3*n+1))`
-/

namespace A394694.P14506578762360703019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 3) - A320656 (A000578 (3 * n + 1)).toNat

end

end A394694.P14506578762360703019

/-! ## A394694.P7596515684624149885

`A237271(A358522((n+1)²/∏{p}[n+1, #]))`
-/

namespace A394694.P7596515684624149885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A358522 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat).toNat

end

end A394694.P7596515684624149885

/-! ## A394694.P17598247339463838807

`A046951(A164941(n+1)+A056606(n))`
-/

namespace A394694.P17598247339463838807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A164941 (n + 1) + A056606 n).toNat

end

end A394694.P17598247339463838807

/-!
# A394698: a(n) is the number of different ways to move from A to B along grid paths in an equilateral triangular grid ABC of side n units such that the distance between A and each successive point of the path increases while the direction of movement changes at each grid point.

The programs for A394698, there is no canonical definition to state claims against.
-/

/-! ## A394698.P15549583999965539578

`A152173(n+3)+Δ[A086625(n)]`
-/

namespace A394698.P15549583999965539578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152173 (n + 3) + (f1 (n + 1) - f1 n)

end

end A394698.P15549583999965539578

/-! ## A394698.P8004769810376913326

`A086625(n+1)+A152173(n+3)-A086625(n)`
-/

namespace A394698.P8004769810376913326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086625 (n + 1) + (A152173 (n + 3) - A086625 n)

end

end A394698.P8004769810376913326

/-! ## A394698.P13177943983715199301

`A152173(n+3)+A152173(n+3)+A127389(n+1)`
-/

namespace A394698.P13177943983715199301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152173 (n + 3) + (A152173 (n + 3) + A127389 (n + 1))

end

end A394698.P13177943983715199301

/-! ## A394698.P2635759447902135800

`A152173(n+3)+A152173(n+2)+A152173(n+3)`
-/

namespace A394698.P2635759447902135800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152173 (n + 3) + (A152173 (n + 2) + A152173 (n + 3))

end

end A394698.P2635759447902135800

/-!
# A394699: Records in A008443.

The programs for A394699, there is no canonical definition to state claims against.
-/

/-! ## A394699.P1305401390948332669

`record[A008443(n)]`
-/

namespace A394699.P1305401390948332669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A394699.P1305401390948332669

/-! ## A394699.P6825794771140942358

`A008443(A394700(n+1))`
-/

namespace A394699.P6825794771140942358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008443 (A394700 (n + 1)).toNat

end

end A394699.P6825794771140942358

/-! ## A394699.P6456840908032932084

`record[A005869(n)/2]`
-/

namespace A394699.P6456840908032932084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005869 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A394699.P6456840908032932084

/-! ## A394699.P2132730835884092228

`record[A238872(2*n+1)]`
-/

namespace A394699.P2132730835884092228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238872 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A394699.P2132730835884092228

/-! ## A394699.P10204598678135709169

`record[A292511(n)]`
-/

namespace A394699.P10204598678135709169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A394699.P10204598678135709169

