import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C010
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B004.C004
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A364800: The number of iterations that n requires to reach 1 under the map x -> A356874(x).

The programs for A364800, the canonical program `A364800.P7472220239797360408` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364800 has offset 1).

The definition of A364800 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356874, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364800.P7472220239797360408

`a(A356874(n+1)-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A364800

/-- `a(A356874(n+1)-1)+1` -/
def P7472220239797360408.Spec : Prop :=
  ∀ n, (P7472220239797360408.a n : ℤ) = A364800 (n + 1)

theorem P7472220239797360408.correct : P7472220239797360408.Spec := by
  intro n
  simp only [A364800, Nat.add_sub_cancel]

end A364800

/-! ## A364800.P10134939008075664972

`1+a(A356874(n+1)-1)` with `a(0)=0`
-/

namespace A364800.P10134939008075664972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A356874 (n + 1) - 1).toNat

end

end A364800.P10134939008075664972

namespace A364800

/-- `1+a(A356874(n+1)-1)` -/
def P10134939008075664972.Spec : Prop :=
  ∀ n, (P10134939008075664972.a n : ℤ) = A364800 (n + 1)

theorem P10134939008075664972.correct : P10134939008075664972.Spec := by
  intro n
  simp only [A364800, Nat.add_sub_cancel, A364800.P10134939008075664972.a, A364800.P7472220239797360408.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A364800

/-! ## A364800.P14573569524187155270

`a(floor((A022290(n+1)+1)/ϕ)-1)+1` with `a(0)=0`
-/

namespace A364800.P14573569524187155270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (⌊(A022290 (n + 1) + 1 : ℝ) / Real.goldenRatio⌋ - 1).toNat + 1

end

end A364800.P14573569524187155270

namespace A364800

/-- `a(floor((A022290(n+1)+1)/ϕ)-1)+1` -/
def P14573569524187155270.Spec : Prop :=
  ∀ n, (P14573569524187155270.a n : ℤ) = A364800 (n + 1)

end A364800

/-! ## A364800.P17957195567148917231

`A084556(A122291(n)%A122291(2*n+1))`
-/

namespace A364800.P17957195567148917231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (Int.tmod (A122291 n) (A122291 (2 * n + 1))).toNat

end

end A364800.P17957195567148917231

namespace A364800

/-- `A084556(A122291(n)%A122291(2*n+1))` -/
def P17957195567148917231.Spec : Prop :=
  ∀ n, P17957195567148917231.a n = A364800 (n + 1)

end A364800

/-! ## A364800.P13106258735856568821

`A084556(A122291(n)%A107861(n+1))`
-/

namespace A364800.P13106258735856568821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (Int.tmod (A122291 n) (A107861 (n + 1))).toNat

end

end A364800.P13106258735856568821

namespace A364800

/-- `A084556(A122291(n)%A107861(n+1))` -/
def P13106258735856568821.Spec : Prop :=
  ∀ n, P13106258735856568821.a n = A364800 (n + 1)

end A364800

/-!
# A364801: The number of iterations that n requires to reach a fixed point under the map x -> A022290(x).

The programs for A364801, the canonical program `A364801.P17417832708572255058` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364801 has offset 0).

The definition of A364801 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022290, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364801.P17417832708572255058

`a(A022290(n))+1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A364801

/-- `a(A022290(n))+1` -/
def P17417832708572255058.Spec : Prop :=
  ∀ n, (P17417832708572255058.a n : ℤ) = A364801 n

theorem P17417832708572255058.correct : P17417832708572255058.Spec := by
  intro n
  simp only [A364801]

end A364801

/-! ## A364801.P3734167192862274004

`1+a(A022290(n))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A364801.P3734167192862274004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  1 + a (A022290 n).toNat

end

end A364801.P3734167192862274004

namespace A364801

/-- `1+a(A022290(n))` -/
def P3734167192862274004.Spec : Prop :=
  ∀ n, (P3734167192862274004.a n : ℤ) = A364801 n

theorem P3734167192862274004.correct : P3734167192862274004.Spec := by
  intro n
  simp only [A364801, Nat.add_sub_cancel, A364801.P3734167192862274004.a, A364801.P17417832708572255058.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A364801

/-! ## A364801.P4483513073338913543

`1+a(A356874(A004526(n))+A356874(n))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A364801.P4483513073338913543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  1 + a (A356874 (A004526 n).toNat + A356874 n).toNat

end

end A364801.P4483513073338913543

namespace A364801

/-- `1+a(A356874(A004526(n))+A356874(n))` -/
def P4483513073338913543.Spec : Prop :=
  ∀ n, (P4483513073338913543.a n : ℤ) = A364801 n

end A364801

/-!
# A364802: Smallest number that reaches 1 after n iterations of the map x -> A356874(x).

The programs for A364802, there is no canonical definition to state claims against.
-/

/-! ## A364802.P11532448225485397637

`A247648(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A364802.P11532448225485397637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A247648 (a (n - 1)).toNat

end

end A364802.P11532448225485397637

/-! ## A364802.P8350317087890538202

`A003754(floor(ϕ*a(n-1))+1)` with `a(0)=1, a(1)=2`
-/

namespace A364802.P8350317087890538202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A003754 (⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋ + 1).toNat

end

end A364802.P8350317087890538202

/-! ## A364802.P15222079613078363113

`A385890(a(n-1)+1)-1` with `a(0)=1, a(1)=2`
-/

namespace A364802.P15222079613078363113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A385890 (a (n - 1) + 1).toNat - 1

end

end A364802.P15222079613078363113

/-!
# A364803: Smallest number that reaches a fixed point after n iterations of the map x -> A022290(x).

The programs for A364803, there is no canonical definition to state claims against.
-/

/-! ## A364803.P14421407363022858125

`A003754(a(n-1)+1)` with `a(0)=0, a(1)=4`
-/

namespace A364803.P14421407363022858125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  A003754 (a (n - 1) + 1).toNat

end

end A364803.P14421407363022858125

/-! ## A364803.P16969698511145006876

`fo[A364801(n)]`
-/

namespace A364803.P16969698511145006876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A364803.P16969698511145006876

/-!
# A364804: a(n) is the smallest number k such that the number of prime divisors (counted with multiplicity) of the n numbers from k through k+n-1 are in nondescending order.

The programs for A364804, there is no canonical definition to state claims against.
-/

/-! ## A364804.P5390888257765185983

`A361703(or(n, A361705(n)))`
-/

namespace A364804.P5390888257765185983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361703 (Int.lor (n : ℤ) (A361705 n)).toNat

end

end A364804.P5390888257765185983

/-! ## A364804.P14347846655508525462

`A242415(A361636(and(n, -2)))`
-/

namespace A364804.P14347846655508525462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242415 (A361636 (Int.land (n : ℤ) (-2)).toNat).toNat

end

end A364804.P14347846655508525462

/-! ## A364804.P7889316381883488019

`A361703(A006530((n+1)!))`
-/

namespace A364804.P7889316381883488019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361703 (A006530 (Nat.factorial (n + 1))).toNat

end

end A364804.P7889316381883488019

/-! ## A364804.P11076750259506297220

`A293507(or(1, A303166(n+1)))`
-/

namespace A364804.P11076750259506297220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293507 (Int.lor 1 (A303166 (n + 1))).toNat

end

end A364804.P11076750259506297220

/-!
# A364808: a(n) = sum of minimal runlengths of all the partitions of n.

The programs for A364808, there is no canonical definition to state claims against.
-/

/-! ## A364808.P16287436347644772410

`A086008(A362192(n+1))+A078392(n+1)`
-/

namespace A364808.P16287436347644772410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 (A362192 (n + 1)).toNat + A078392 (n + 1)

end

end A364808.P16287436347644772410

/-!
# A364809: Number of partitions of n with at most five part sizes.

The programs for A364809, there is no canonical definition to state claims against.
-/

/-! ## A364809.P18283768193982648004

`A000041(n)-A037812(A184945(n)+1)`
-/

namespace A364809.P18283768193982648004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A037812 (A184945 n + 1).toNat

end

end A364809.P18283768193982648004

/-! ## A364809.P9788202029235086590

`A000041(n)-A249344(A126637(3*n+5))`
-/

namespace A364809.P9788202029235086590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A249344 (A126637 (3 * n + 5)).toNat

end

end A364809.P9788202029235086590

/-! ## A364809.P12468842179110255007

`A000041(n)-char[A336776(n+2)]`
-/

namespace A364809.P12468842179110255007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336776 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A364809.P12468842179110255007

/-! ## A364809.P7501861969192752511

`A000041(n)-char[A104819(3*n+2)]`
-/

namespace A364809.P7501861969192752511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104819 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A364809.P7501861969192752511

/-! ## A364809.P6035294031780730410

`A000041(n)-∑{digits}[A325106(3*(n+1)), floor(#/9)]`
-/

namespace A364809.P6035294031780730410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => ⌊(x : ℚ) / 9⌋).sum

end

end A364809.P6035294031780730410

/-!
# A364811: Number of distinct residues x^4 (mod 2^n), x=0..2^n-1.

The programs for A364811, there is no canonical definition to state claims against.
-/

/-! ## A364811.P8279446607915423646

`ceil((2^n-1)/15)+1`
-/

namespace A364811.P8279446607915423646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 ^ n : ℤ) - 1 : ℚ) / 15⌉ + 1

end

end A364811.P8279446607915423646

/-! ## A364811.P16224736660816749491

`ceil((A000975(n)+10)/10)`
-/

namespace A364811.P16224736660816749491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000975 n + 10 : ℚ) / 10⌉

end

end A364811.P16224736660816749491

/-! ## A364811.P16259753207454215802

`ceil(A038500(3*n+1)+A328284(n+3)/5)`
-/

namespace A364811.P16259753207454215802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038500 (3 * n + 1) : ℚ) + (A328284 (n + 3) : ℚ) / 5⌉

end

end A364811.P16259753207454215802

/-! ## A364811.P16711675133312158941

`ceil(A054977(3*n+2)+A328284(n+3)/5)`
-/

namespace A364811.P16711675133312158941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054977 (3 * n + 2) : ℚ) + (A328284 (n + 3) : ℚ) / 5⌉

end

end A364811.P16711675133312158941

/-! ## A364811.P6526071778177016273

`A090701(A118406(n))`
-/

namespace A364811.P6526071778177016273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090701 (A118406 n).toNat

end

end A364811.P6526071778177016273

/-!
# A364812: Triangle of generalized binomial coefficients T(n,k) = ff(n)/(ff(k)*ff(n-k)) where ff(n) = A363838(n), the generalized factorial.

The programs for A364812, there is no canonical definition to state claims against.
-/

/-! ## A364812.P18189526954585815170

`A363838(row(n))/(A363838(col(n))*A363838(row(n)-col(n)))`
-/

namespace A364812.P18189526954585815170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363838 (SequenceMachineLib.triRow n) : ℚ) / (A363838 (SequenceMachineLib.triCol n) * A363838 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) : ℚ)

end

end A364812.P18189526954585815170

/-! ## A364812.P17149172240006353071

`A238453(n)/A173557(A048804(n)²)*A129439(n)`
-/

namespace A364812.P17149172240006353071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238453 n : ℚ) / (A173557 (A048804 n ^ 2).toNat : ℚ) * (A129439 n : ℚ)

end

end A364812.P17149172240006353071

/-! ## A364812.P6427221285792564662

`A001221(A202917(n)+2)*A129439(n)`
-/

namespace A364812.P6427221285792564662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A202917 n + 2).toNat * A129439 n

end

end A364812.P6427221285792564662

/-! ## A364812.P14417041058675920399

`(A112765(A022166(n))+1)*A129439(n)`
-/

namespace A364812.P14417041058675920399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A112765 (A022166 n).toNat + 1) * A129439 n

end

end A364812.P14417041058675920399

/-! ## A364812.P16083922201084838418

`A141709(A129453(n))%A350538(n+1)`
-/

namespace A364812.P16083922201084838418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141709 (A129453 n).toNat) (A350538 (n + 1))

end

end A364812.P16083922201084838418

/-!
# A364813: a(n) = Product_{k=2..n} k^ord(n, k) where ord(n, k) = 0 if k does not divide n, otherwise ord(n, k) = e where e is such that k^e divides n but k^(e + 1) does not.

The programs for A364813, the canonical program `A364813.P14630216106928931606` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364813 has offset 1).

The definition of A364813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364813.P14630216106928931606

`∏{d}[1+n, A175068(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A364813

/-- `∏{d}[1+n, A175068(#)]` -/
def P14630216106928931606.Spec : Prop :=
  ∀ n, P14630216106928931606.a n = A364813 (n + 1)

theorem P14630216106928931606.correct : P14630216106928931606.Spec := by
  intro n
  simp only [A364813, Nat.add_sub_cancel]

end A364813

/-! ## A364813.P6659312226951515490

`A364812(∑[n+1]+1)`
-/

namespace A364813.P6659312226951515490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364812 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A364813.P6659312226951515490

namespace A364813

/-- `A364812(∑[n+1]+1)` -/
def P6659312226951515490.Spec : Prop :=
  ∀ n, P6659312226951515490.a n = A364813 (n + 1)

end A364813

/-! ## A364813.P14051960409497488597

`(1+n)*A381885(n+1)`
-/

namespace A364813.P14051960409497488597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A381885 (n + 1)

end

end A364813.P14051960409497488597

namespace A364813

/-- `(1+n)*A381885(n+1)` -/
def P14051960409497488597.Spec : Prop :=
  ∀ n, P14051960409497488597.a n = A364813 (n + 1)

end A364813

/-! ## A364813.P11389314692051902626

`∏{d}[n+1, #]/∏{p}[n+1, #]*A287620(A287621(n+1))`
-/

namespace A364813.P11389314692051902626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * (A287620 (A287621 (n + 1)).toNat : ℚ)

end

end A364813.P11389314692051902626

namespace A364813

/-- `∏{d}[n+1, #]/∏{p}[n+1, #]*A287620(A287621(n+1))` -/
def P11389314692051902626.Spec : Prop :=
  ∀ n, P11389314692051902626.a n = (A364813 (n + 1) : ℚ)

end A364813

/-! ## A364813.P10591643047389520442

`A087652(n+1)*A166469(A000079(n))`
-/

namespace A364813.P10591643047389520442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087652 (n + 1) * A166469 (A000079 n).toNat

end

end A364813.P10591643047389520442

namespace A364813

/-- `A087652(n+1)*A166469(A000079(n))` -/
def P10591643047389520442.Spec : Prop :=
  ∀ n, P10591643047389520442.a n = A364813 (n + 1)

end A364813

/-!
# A364814: Numbers k whose largest divisor <= sqrt(k) is a power of 2, listing only the first such number with any given prime signature.

The programs for A364814, there is no canonical definition to state claims against.
-/

/-! ## A364814.P1452902856398144038

`record[A322327(A245606(n+1))]`
-/

namespace A364814.P1452902856398144038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322327 (A245606 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364814.P1452902856398144038

/-! ## A364814.P9224681951694292067

`eq[A124768(n), A267959(n)]`
-/

namespace A364814.P9224681951694292067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364814.P9224681951694292067

/-! ## A364814.P18378872434177898872

`eq[A089803(n), A330955(n)]`
-/

namespace A364814.P18378872434177898872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089803 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364814.P18378872434177898872

/-! ## A364814.P359822287603963854

`∑[A060594(∑[A178432(n)])]`
-/

namespace A364814.P359822287603963854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178432 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364814.P359822287603963854

/-! ## A364814.P16680115641378987842

`filter[A346729(n+1), A267959(#)]`
-/

namespace A364814.P16680115641378987842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267959 (f1 j).toNat = 1) n)

end

end A364814.P16680115641378987842

/-!
# A364818: Number of distinct prime divisors of A000129(n) (Pell numbers).

The programs for A364818, there is no canonical definition to state claims against.
-/

/-! ## A364818.P13258766478232219179

`A000005(n+1)-A079978(A185044(n))`
-/

namespace A364818.P13258766478232219179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A079978 (A185044 n).toNat

end

end A364818.P13258766478232219179

/-! ## A364818.P18138616478044126782

`A000005(n+1)-A105586(A383768(n+1))`
-/

namespace A364818.P18138616478044126782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A105586 (A383768 (n + 1)).toNat

end

end A364818.P18138616478044126782

/-! ## A364818.P13488771810325059844

`A000005(n+1)-A106465(A179664(n+1))`
-/

namespace A364818.P13488771810325059844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A106465 (A179664 (n + 1)).toNat

end

end A364818.P13488771810325059844

/-! ## A364818.P4538807301032017205

`A000005(n+1)-A070950(A290262(3*n+5))`
-/

namespace A364818.P4538807301032017205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A070950 (A290262 (3 * n + 5)).toNat

end

end A364818.P4538807301032017205

/-! ## A364818.P12556741144689070201

`∏{e}[n+1, #+1]-A010054(A098854(n+2))`
-/

namespace A364818.P12556741144689070201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A010054 (A098854 (n + 2)).toNat

end

end A364818.P12556741144689070201

/-!
# A364819: Number of permutations p of [n] such that max(|p(p(i)) - i|)=1.

The programs for A364819, there is no canonical definition to state claims against.
-/

/-! ## A364819.P10979633690314339198

`A364817(∑[n+1]+2)`
-/

namespace A364819.P10979633690314339198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364817 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A364819.P10979633690314339198

/-! ## A364819.P13565715216112928670

`A300586(A126867(n+2))`
-/

namespace A364819.P13565715216112928670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300586 (A126867 (n + 2)).toNat

end

end A364819.P13565715216112928670

/-! ## A364819.P1763254608027793603

`n*A035063(A005578(n))`
-/

namespace A364819.P1763254608027793603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A035063 (A005578 n).toNat

end

end A364819.P1763254608027793603

/-!
# A364820: a(n) is the smallest prime factor of the n-th Pell number A000129(n).

The programs for A364820, there is no canonical definition to state claims against.
-/

/-! ## A364820.P8895460853385462276

`A020639(A000129(n+2))`
-/

namespace A364820.P8895460853385462276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000129 (n + 2)).toNat

end

end A364820.P8895460853385462276

/-! ## A364820.P6821813253859927046

`A006530(A246556(A020639(n+2)))`
-/

namespace A364820.P6821813253859927046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A246556 (A020639 (n + 2)).toNat).toNat

end

end A364820.P6821813253859927046

/-! ## A364820.P12151706223327656495

`A020639(A246556(A020639((n+2)²)))`
-/

namespace A364820.P12151706223327656495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A246556 (A020639 ((n + 2) ^ 2)).toNat).toNat

end

end A364820.P12151706223327656495

/-! ## A364820.P12886720734750924152

`A246556(A020639((n+2)²²))`
-/

namespace A364820.P12886720734750924152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246556 (A020639 (((n + 2) ^ 2) ^ 2)).toNat

end

end A364820.P12886720734750924152

/-!
# A364822: Expansion of e.g.f. cosh(x) / (1 - 2*sinh(x)).

The programs for A364822, there is no canonical definition to state claims against.
-/

/-! ## A364822.P12861380007619073523

`(A000556(n)+A005923(n))/2`
-/

namespace A364822.P12861380007619073523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000556 n + A005923 n : ℚ) / 2

end

end A364822.P12861380007619073523

/-! ## A364822.P6805731624097561728

`(-1)^n*∑{#}[floor(n/2), A341724(C(n+1, 2)+2*#)]`
-/

namespace A364822.P6805731624097561728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ k ∈ Finset.range (f1 n + 1).toNat, A341724 (Nat.choose (n + 1) 2 + 2 * k))

end

end A364822.P6805731624097561728

/-! ## A364822.P15294439393698139765

`A005923(n)-floor(A000557(n)/2)`
-/

namespace A364822.P15294439393698139765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005923 n - ⌊(A000557 n : ℚ) / 2⌋

end

end A364822.P15294439393698139765

/-! ## A364822.P1027988950188943043

`A000557(n)+A000556(n)-A332257(n)`
-/

namespace A364822.P1027988950188943043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000557 n + A000556 n - A332257 n

end

end A364822.P1027988950188943043

/-! ## A364822.P10576015779425694211

`A332257(n)+A005923(n)-A000557(n)`
-/

namespace A364822.P10576015779425694211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332257 n + A005923 n - A000557 n

end

end A364822.P10576015779425694211

/-! ## A364822.P10942759533684371084

`A000556(n)+ceil(A245155(n)/2)-A332257(n)`
-/

namespace A364822.P10942759533684371084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000556 n + ⌈(A245155 n : ℚ) / 2⌉ - A332257 n

end

end A364822.P10942759533684371084

/-! ## A364822.P15599842274601822392

`A000556(n)+A000556(n)+A320352(n)-A332257(n)`
-/

namespace A364822.P15599842274601822392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000556 n + (A000556 n + A320352 n) - A332257 n

end

end A364822.P15599842274601822392

/-! ## A364822.P11801671308306013201

`A000556(n)+A040000(n)*A332257(n)-A332257(n)`
-/

namespace A364822.P11801671308306013201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000556 n + A040000 n * A332257 n - A332257 n

end

end A364822.P11801671308306013201

/-!
# A364823: Triangle read by rows: T(n,k) = number of possible positions for four connected discs in the game "Connect Four" played on a board with n columns and k rows, 4 <= k <= n.

The programs for A364823, there is no canonical definition to state claims against.
-/

/-! ## A364823.P13599451437878831902

`(2*(row(n)+1)+1)*(2*(col(n)+1)+1)+col(n)+1+row(n)`
-/

namespace A364823.P13599451437878831902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (SequenceMachineLib.triRow n + 1) + 1) * (2 * (SequenceMachineLib.triCol n + 1) + 1) + (SequenceMachineLib.triCol n + 1 + SequenceMachineLib.triRow n)

end

end A364823.P13599451437878831902

/-! ## A364823.P8280923641223339768

`A155151(1+n)+A051162(n)`
-/

namespace A364823.P8280923641223339768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (1 + n) + A051162 n

end

end A364823.P8280923641223339768

/-! ## A364823.P2664291090262765984

`A155156(n+1)+A108872(n+1)`
-/

namespace A364823.P2664291090262765984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) + A108872 (n + 1)

end

end A364823.P2664291090262765984

/-! ## A364823.P3963513506890352996

`A172292(n+1)+A094727(n+1)`
-/

namespace A364823.P3963513506890352996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) + A094727 (n + 1)

end

end A364823.P3963513506890352996

/-! ## A364823.P10613128491213333051

`A175966(2*A144562(n+1))`
-/

namespace A364823.P10613128491213333051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175966 (2 * A144562 (n + 1)).toNat

end

end A364823.P10613128491213333051

/-!
# A364824: Index of prime(n) in A067836, or -1 if prime(n) does not occur in it.

The programs for A364824, there is no canonical definition to state claims against.
-/

/-! ## A364824.P3844225952184153050

`fo[A062894(n+1)-1]+1`
-/

namespace A364824.P3844225952184153050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062894 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A364824.P3844225952184153050

/-!
# A364825: G.f. satisfies A(x) = 1 - x*A(x)^3 * (1 - 3*A(x)).

The programs for A364825, there is no canonical definition to state claims against.
-/

/-! ## A364825.P3341037026965575882

`A030059(A372315(n))-1`
-/

namespace A364825.P3341037026965575882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (A372315 n).toNat - 1

end

end A364825.P3341037026965575882

/-!
# A364828: a(n) is the number of regions inside a circle after inscribing (always starting from the same point), for each divisor d_i of n greater than 1, a regular d_i-gon.

The programs for A364828, there is no canonical definition to state claims against.
-/

/-! ## A364828.P5812636455502107650

`A364829(n+1)+n+1`
-/

namespace A364828.P5812636455502107650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364829 (n + 1) + (n + 1 : ℤ)

end

end A364828.P5812636455502107650

/-! ## A364828.P2591579243515530285

`A364829(1+n)+1+n`
-/

namespace A364828.P2591579243515530285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364829 (1 + n) + 1 + (n : ℤ)

end

end A364828.P2591579243515530285

/-!
# A364829: a(n) is the number of regions inside a regular n-gon after inscribing (always starting from the same point), for each proper divisor d_i of n greater than 1, a regular d_i-gon.

The programs for A364829, there is no canonical definition to state claims against.
-/

/-! ## A364829.P17907738712501867868

`A364828(n+1)-(n+1)`
-/

namespace A364829.P17907738712501867868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364828 (n + 1) - (n + 1 : ℤ)

end

end A364829.P17907738712501867868

/-! ## A364829.P6178414271674551434

`A023443(A364828(1+n)-n)`
-/

namespace A364829.P6178414271674551434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A364828 (1 + n) - (n : ℤ)).toNat

end

end A364829.P6178414271674551434

/-! ## A364829.P17862543340129400868

`abs(A364828(n+1)+A001478(n+1))`
-/

namespace A364829.P17862543340129400868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A364828 (n + 1) + A001478 (n + 1)|

end

end A364829.P17862543340129400868

/-! ## A364829.P12490045362976680780

`A395486(A392178(n+1))+A364828(n+1)`
-/

namespace A364829.P12490045362976680780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395486 (A392178 (n + 1)).toNat + A364828 (n + 1)

end

end A364829.P12490045362976680780

/-!
# A364830: a(n) is the number of line intersections (not coinciding with a vertex) inside a regular n-gon after inscribing (always starting from the same point), for each proper divisor d_i of n greater than 1, a regular d_i-gon.

The programs for A364830, there is no canonical definition to state claims against.
-/

/-! ## A364830.P10710200286407294453

`A364838(n+1)-(n+1)`
-/

namespace A364830.P10710200286407294453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364838 (n + 1) - (n + 1 : ℤ)

end

end A364830.P10710200286407294453

/-! ## A364830.P999598523544698631

`A023443(A364838(1+n)-n)`
-/

namespace A364830.P999598523544698631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A364838 (1 + n) - (n : ℤ)).toNat

end

end A364830.P999598523544698631

/-! ## A364830.P17495680804647033848

`abs(A364838(n+1)+A001478(n+1))`
-/

namespace A364830.P17495680804647033848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A364838 (n + 1) + A001478 (n + 1)|

end

end A364830.P17495680804647033848

/-! ## A364830.P620515694239421033

`A175126(2*(A364838(n+1)+A001478(n+1)))`
-/

namespace A364830.P620515694239421033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (2 * (A364838 (n + 1) + A001478 (n + 1))).toNat

end

end A364830.P620515694239421033

/-! ## A364830.P17543793739683790960

`(A364838(n+1)+A001478(n+1))*A057427(n)`
-/

namespace A364830.P17543793739683790960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A364838 (n + 1) + A001478 (n + 1)) * A057427 n

end

end A364830.P17543793739683790960

/-!
# A364831: Primes whose digits are prime and in nonincreasing order.

The programs for A364831, there is no canonical definition to state claims against.
-/

/-! ## A364831.P239308947615483058

`∩[A019546(n+1), A028867(n+1)]`
-/

namespace A364831.P239308947615483058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364831.P239308947615483058

/-! ## A364831.P12231532069409479102

`∩[A019546(n+1), A028912(n)]`
-/

namespace A364831.P12231532069409479102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028912 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364831.P12231532069409479102

/-! ## A364831.P13259581544851263593

`∩[A009996(n+1), A019546(n+1)]`
-/

namespace A364831.P13259581544851263593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364831.P13259581544851263593

/-! ## A364831.P1383612170356421020

`∩[A028867(n+1), A046034(n+1)]`
-/

namespace A364831.P1383612170356421020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364831.P1383612170356421020

/-! ## A364831.P16421572551607832352

`∩[A028867(n+1), A062087(n+1)]`
-/

namespace A364831.P16421572551607832352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364831.P16421572551607832352

/-!
# A364832: Rectangular array, read by descending antidiagonals, in which row n lists numbers m such that w(s,m) = n-1 (see comments for definition of w).

The programs for A364832, there is no canonical definition to state claims against.
-/

/-! ## A364832.P6402338179640880970

`A374611(A360646(n+1)%A336219(n+3))`
-/

namespace A364832.P6402338179640880970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374611 (Int.tmod (A360646 (n + 1)) (A336219 (n + 3))).toNat

end

end A364832.P6402338179640880970

/-! ## A364832.P6726341436868926520

`A374611(A360646(n+1))%A001606(2*(n+2))`
-/

namespace A364832.P6726341436868926520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374611 (A360646 (n + 1)).toNat) (A001606 (2 * (n + 2)))

end

end A364832.P6726341436868926520

/-!
# A364833: G.f. satisfies A(x) = 1 + x*A(x)^2/(1 - x^3*A(x)^3).

The programs for A364833, there is no canonical definition to state claims against.
-/

/-! ## A364833.P4244241869911840466

`A301832(A073790(n))`
-/

namespace A364833.P4244241869911840466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301832 (A073790 n).toNat

end

end A364833.P4244241869911840466

/-! ## A364833.P11733564716074827366

`A301832(A004881(n+1))`
-/

namespace A364833.P11733564716074827366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301832 (A004881 (n + 1)).toNat

end

end A364833.P11733564716074827366

/-! ## A364833.P14595203869351562822

`A301832(A004892(n+1))`
-/

namespace A364833.P14595203869351562822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301832 (A004892 (n + 1)).toNat

end

end A364833.P14595203869351562822

/-! ## A364833.P16492271812266270853

`A301832(A004903(n+1))`
-/

namespace A364833.P16492271812266270853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301832 (A004903 (n + 1)).toNat

end

end A364833.P16492271812266270853

/-! ## A364833.P15951427087765322179

`A301832(A004914(n+1))`
-/

namespace A364833.P15951427087765322179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301832 (A004914 (n + 1)).toNat

end

end A364833.P15951427087765322179

/-!
# A364834: Sum of positive integers <= n which are multiples of 2 or 5.

The programs for A364834, the canonical program `A364834.P10638082941698399586` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364834 has offset 1).

The definition of A364834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364834.P10638082941698399586

`∑[(1+n)%A370566(1+n)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A364834

/-- `∑[(1+n)%A370566(1+n)]` -/
def P10638082941698399586.Spec : Prop :=
  ∀ n, P10638082941698399586.a n = A364834 (n + 1)

theorem P10638082941698399586.correct : P10638082941698399586.Spec := by
  intro n
  simp only [A364834, Nat.add_sub_cancel]

end A364834

/-! ## A364834.P11664986507200332162

`∑[A000027(n+1)%A029471(A132741(n+1))]`
-/

namespace A364834.P11664986507200332162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A029471 (A132741 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364834.P11664986507200332162

namespace A364834

/-- `∑[A000027(n+1)%A029471(A132741(n+1))]` -/
def P11664986507200332162.Spec : Prop :=
  ∀ n, P11664986507200332162.a n = A364834 (n + 1)

end A364834

/-! ## A364834.P13271778485150917523

`∑[(n+1)*A035226(A014551(n)+1)]`
-/

namespace A364834.P13271778485150917523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A035226 (A014551 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364834.P13271778485150917523

namespace A364834

/-- `∑[(n+1)*A035226(A014551(n)+1)]` -/
def P13271778485150917523.Spec : Prop :=
  ∀ n, P13271778485150917523.a n = A364834 (n + 1)

end A364834

/-! ## A364834.P1922478625071631296

`∑[(n+1)*A285383(A000129(n)+1)]`
-/

namespace A364834.P1922478625071631296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285383 (A000129 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364834.P1922478625071631296

namespace A364834

/-- `∑[(n+1)*A285383(A000129(n)+1)]` -/
def P1922478625071631296.Spec : Prop :=
  ∀ n, P1922478625071631296.a n = A364834 (n + 1)

end A364834

/-! ## A364834.P16953941347815690878

`∑[∑{e}[A292118(n)^A005940(n+1), #]]`
-/

namespace A364834.P16953941347815690878
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292118 n : ℚ) ^ (A005940 (n + 1) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f2 n)).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364834.P16953941347815690878

namespace A364834

/-- `∑[∑{e}[A292118(n)^A005940(n+1), #]]` -/
def P16953941347815690878.Spec : Prop :=
  ∀ n, (P16953941347815690878.a n : ℤ) = A364834 (n + 1)

end A364834

/-!
# A364836: a(n) is the least positive integer that can be expressed as the sum of two distinct nonzero decimal palindromes in exactly n ways.

The programs for A364836, there is no canonical definition to state claims against.
-/

/-! ## A364836.P7834306112030972671

`A115336(n+1)+A010054(A005142(n))`
-/

namespace A364836.P7834306112030972671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115336 (n + 1) + A010054 (A005142 n).toNat

end

end A364836.P7834306112030972671

/-! ## A364836.P1436570070032862922

`A115356(A000757(n))+A115336(n+1)`
-/

namespace A364836.P1436570070032862922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115356 (A000757 n).toNat + A115336 (n + 1)

end

end A364836.P1436570070032862922

/-! ## A364836.P2252750771910348024

`or(A008966(A199874(n)), A115336(n+1))`
-/

namespace A364836.P2252750771910348024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008966 (A199874 n).toNat) (A115336 (n + 1))

end

end A364836.P2252750771910348024

/-! ## A364836.P8048302284701705886

`A115356(A115340(n+2))+A115336(n+1)`
-/

namespace A364836.P8048302284701705886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115356 (A115340 (n + 2)).toNat + A115336 (n + 1)

end

end A364836.P8048302284701705886

/-! ## A364836.P9074625078222844274

`or(A030308(A000045(2*(n+1))), A115336(n+1))`
-/

namespace A364836.P9074625078222844274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030308 (A000045 (2 * (n + 1))).toNat) (A115336 (n + 1))

end

end A364836.P9074625078222844274

/-!
# A364837: Initial digit of 2^(2^n) = A001146(n).

The programs for A364837, there is no canonical definition to state claims against.
-/

/-! ## A364837.P16178925912602772009

`A008952(2^n)`
-/

namespace A364837.P16178925912602772009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 (2 ^ n)

end

end A364837.P16178925912602772009

/-! ## A364837.P6892630835861224891

`dr(A008952(A000079(n)))`
-/

namespace A364837.P6892630835861224891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A008952 (A000079 n).toNat)

end

end A364837.P6892630835861224891

/-! ## A364837.P18006142690545120786

`dr(A008952(∑[A011782(n)]))`
-/

namespace A364837.P18006142690545120786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A008952 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A364837.P18006142690545120786

/-! ## A364837.P3041803318362883986

`dr(A008952(Δ[A000225(n)]))`
-/

namespace A364837.P3041803318362883986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A008952 (f1 (n + 1) - f1 n).toNat)

end

end A364837.P3041803318362883986

/-! ## A364837.P6121325711325952071

`dr(A008952(record[A117575(n)]))`
-/

namespace A364837.P6121325711325952071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A008952 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A364837.P6121325711325952071

/-!
# A364838: a(n) is the number of line intersections (including vertices) inside a regular n-gon after inscribing (always starting from the same point), for each proper divisor d_i of n greater than 1, a regular d_i-gon.

The programs for A364838, there is no canonical definition to state claims against.
-/

/-! ## A364838.P10864145227927482516

`A364830(n+1)+n+1`
-/

namespace A364838.P10864145227927482516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364830 (n + 1) + (n + 1 : ℤ)

end

end A364838.P10864145227927482516

/-! ## A364838.P5947496540371370705

`A364830(1+n)+1+n`
-/

namespace A364838.P5947496540371370705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364830 (1 + n) + 1 + (n : ℤ)

end

end A364838.P5947496540371370705

/-! ## A364838.P14664130981253648224

`A366077(A133910(n+1)!)²+1+n`
-/

namespace A364838.P14664130981253648224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366077 (Nat.factorial (A133910 (n + 1)).toNat) ^ 2 + 1 + (n : ℤ)

end

end A364838.P14664130981253648224

/-! ## A364838.P15747138536137400138

`(A128155(3*n+1)%A051119(n+1))²+1+n`
-/

namespace A364838.P15747138536137400138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128155 (3 * n + 1)) (A051119 (n + 1)) ^ 2 + 1 + (n : ℤ)

end

end A364838.P15747138536137400138

/-! ## A364838.P3216610847749287963

`and(n, A340389(A028234(n+1)))-A001478(n+1)`
-/

namespace A364838.P3216610847749287963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A340389 (A028234 (n + 1)).toNat) - A001478 (n + 1)

end

end A364838.P3216610847749287963

/-!
# A364839: Number of strict integer partitions of n such that some part can be written as a nonnegative linear combination of the others.

The programs for A364839, there is no canonical definition to state claims against.
-/

/-! ## A364839.P5891987632707533717

`A000009(n)-A364350(n)`
-/

namespace A364839.P5891987632707533717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A364350 n

end

end A364839.P5891987632707533717

/-! ## A364839.P7221368522210030070

`abs(A081360(n))-A364350(n)`
-/

namespace A364839.P7221368522210030070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A364350 n

end

end A364839.P7221368522210030070

/-! ## A364839.P12294958854514431190

`∑[A087897(n)]-A364350(n)`
-/

namespace A364839.P12294958854514431190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A364350 n

end

end A364839.P12294958854514431190

/-! ## A364839.P7912928668093901571

`A364916(∑[n])-A364350(n)`
-/

namespace A364839.P7912928668093901571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (∑ j ∈ Finset.range (n + 1), f1 j) - A364350 n

end

end A364839.P7912928668093901571

/-! ## A364839.P8174983953666576451

`A111133(n)+1-A364350(n)`
-/

namespace A364839.P8174983953666576451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + 1 - A364350 n

end

end A364839.P8174983953666576451

/-! ## A364839.P7748076733183785722

`ceil(A333147(n)/2)-A364350(n)`
-/

namespace A364839.P7748076733183785722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333147 n : ℚ) / 2⌉ - A364350 n

end

end A364839.P7748076733183785722

/-! ## A364839.P8184277730079277871

`A219347(A000124(n))-A364350(n)`
-/

namespace A364839.P8184277730079277871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (A000124 n).toNat - A364350 n

end

end A364839.P8184277730079277871

/-! ## A364839.P1425634532057488195

`A057428(n)+A052839(n)-A364350(n)`
-/

namespace A364839.P1425634532057488195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A052839 n - A364350 n

end

end A364839.P1425634532057488195

/-! ## A364839.P919645584939603918

`A096765(n)+A025147(n)-A364350(n)`
-/

namespace A364839.P919645584939603918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 n + A025147 n - A364350 n

end

end A364839.P919645584939603918

/-! ## A364839.P1214630508225165637

`A096765(n+1)+A096765(n)-A364350(n)`
-/

namespace A364839.P1214630508225165637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1) + (A096765 n - A364350 n)

end

end A364839.P1214630508225165637

/-!
# A364840: Numbers k such that the product of the first k primes - 1 is a semiprime.

The programs for A364840, there is no canonical definition to state claims against.
-/

/-! ## A364840.P981740505166478497

`A000720(A250294(1+n))`
-/

namespace A364840.P981740505166478497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A250294 (1 + n)).toNat

end

end A364840.P981740505166478497

/-! ## A364840.P9428980399363523180

`A003963(A250294(n+1))`
-/

namespace A364840.P9428980399363523180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A250294 (n + 1)).toNat

end

end A364840.P9428980399363523180

/-! ## A364840.P6946926896286766072

`A204892(A250294(n+1)-2)`
-/

namespace A364840.P6946926896286766072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A250294 (n + 1) - 2).toNat

end

end A364840.P6946926896286766072

/-! ## A364840.P10544489794366098961

`∑{d}[A250294(n+1), A056239(#)]`
-/

namespace A364840.P10544489794366098961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A364840.P10544489794366098961

/-! ## A364840.P1495716917546066522

`∑{d}[A250294(n+1), A252464(#)]`
-/

namespace A364840.P1495716917546066522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A252464 d

end

end A364840.P1495716917546066522

/-!
# A364841: Number of subsets S of {1..n} containing no element equal to the sum of a k-multiset of elements of S, for any 2 <= k <= |S|.

The programs for A364841, there is no canonical definition to state claims against.
-/

/-! ## A364841.P11761675837693663824

`A000196(A027375(n+4))-A080571(n+5)`
-/

namespace A364841.P11761675837693663824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A027375 (n + 4)).toNat - A080571 (n + 5)

end

end A364841.P11761675837693663824

/-! ## A364841.P17004803007853752647

`A401834(A213331(n+1))`
-/

namespace A364841.P17004803007853752647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401834 (A213331 (n + 1)).toNat

end

end A364841.P17004803007853752647

/-! ## A364841.P15464351570059215576

`ceil((A232721(ceil((A141096(n+2)+n²)/4))+n²)/4)`
-/

namespace A364841.P15464351570059215576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232721 ⌈(A141096 (n + 2) + (n ^ 2 : ℤ) : ℚ) / 4⌉.toNat + (n ^ 2 : ℤ) : ℚ) / 4⌉

end

end A364841.P15464351570059215576

/-! ## A364841.P9401004999007948411

`A056556(A056272(n))+A002088(n)`
-/

namespace A364841.P9401004999007948411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A056272 n).toNat + A002088 n

end

end A364841.P9401004999007948411

/-! ## A364841.P8515072132033747927

`A265063(n)-A001221(A006318(n))`
-/

namespace A364841.P8515072132033747927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265063 n - A001221 (A006318 n).toNat

end

end A364841.P8515072132033747927

/-!
# A364842: Table read by antidiagonals: row n gives the Euler transform of the sequence (2,...,2,0,0,...) that contains n 2's followed by 0's.

The programs for A364842, there is no canonical definition to state claims against.
-/

/-! ## A364842.P11489189071451120195

`A094937(A343863(n))`
-/

namespace A364842.P11489189071451120195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094937 (A343863 n).toNat

end

end A364842.P11489189071451120195

/-! ## A364842.P7198388617145441677

`and(A181842(n+1), A319769(A181842(n+1)))`
-/

namespace A364842.P7198388617145441677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A181842 (n + 1)) (A319769 (A181842 (n + 1)).toNat)

end

end A364842.P7198388617145441677

/-! ## A364842.P14885590008694319509

`A374433(A133031(n+1))+A365515(n+1)`
-/

namespace A364842.P14885590008694319509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374433 (A133031 (n + 1)).toNat + A365515 (n + 1)

end

end A364842.P14885590008694319509

/-! ## A364842.P1376267829149464885

`A116925(n)+A102683(A026563(n))`
-/

namespace A364842.P1376267829149464885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 n + A102683 (A026563 n).toNat

end

end A364842.P1376267829149464885

/-! ## A364842.P10199915739899737087

`A055457(A116406(n))*A065158(n+1)`
-/

namespace A364842.P10199915739899737087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055457 (A116406 n).toNat * A065158 (n + 1)

end

end A364842.P10199915739899737087

/-!
# A364843: Integers are repeated in runs of 1, 2, 3, ... Each new integer (following a run) is given the value of its sequence index value.

The programs for A364843, there is no canonical definition to state claims against.
-/

/-! ## A364843.P14499513686478635347

`1+n-col(n)`
-/

namespace A364843.P14499513686478635347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ((n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A364843.P14499513686478635347

/-! ## A364843.P8469214038112093216

`1-(col(n)-n)`
-/

namespace A364843.P8469214038112093216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((SequenceMachineLib.triCol n : ℤ) - (n : ℤ))

end

end A364843.P8469214038112093216

/-! ## A364843.P5577096280534244335

`∑{#}[row(n), #]+1`
-/

namespace A364843.P5577096280534244335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), k + 1

end

end A364843.P5577096280534244335

/-! ## A364843.P9673253463682554000

`∑{#}[2, C(row(n), #)]`
-/

namespace A364843.P9673253463682554000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (SequenceMachineLib.triRow n) k

end

end A364843.P9673253463682554000

/-! ## A364843.P13708558502095910941

`C(fp[∑[n]], 2)+1`
-/

namespace A364843.P13708558502095910941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => n < f1 j) 0) 2 + 1

end

end A364843.P13708558502095910941

/-! ## A364843.P2187752115357676377

`row(n)+gcd(T(n-1,k), T(n-1,k-1))` with `a(0)=1`
-/

namespace A364843.P2187752115357676377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triRow n + Nat.gcd (SequenceMachineLib.triUp a n) (SequenceMachineLib.triUpLeft a n)

end

end A364843.P2187752115357676377

/-! ## A364843.P6965679285511509245

`1+C(∑[char[∑[n]]], 2)`
-/

namespace A364843.P6965679285511509245
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A364843.P6965679285511509245

/-! ## A364843.P5903794333995553606

`C(row(n)+1, 2)+1`
-/

namespace A364843.P5903794333995553606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n + 1) 2 + 1

end

end A364843.P5903794333995553606

/-! ## A364843.P1241400527853372510

`-(col(n)+xor(n, -1))`
-/

namespace A364843.P1241400527853372510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((SequenceMachineLib.triCol n : ℤ) + Int.xor (n : ℤ) (-1))

end

end A364843.P1241400527853372510

/-! ## A364843.P14097578035406436889

`fp[fp[(n+1)*char[∑[n]]]]`
-/

namespace A364843.P14097578035406436889
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f1 j) 0

end

end A364843.P14097578035406436889

/-!
# A364847: Number of conjugacy classes in the group SL(2, Z_n), up to conjugacy in GL(2, Z_n).

The programs for A364847, there is no canonical definition to state claims against.
-/

/-! ## A364847.P8327009588563084940

`∑{d}[n+1, #*A060594((n+1)/#)]`
-/

namespace A364847.P8327009588563084940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A060594 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364847.P8327009588563084940

/-! ## A364847.P13008212139698710154

`∑{d}[n+1, A000010(#)*A092089((n+1)/#)]`
-/

namespace A364847.P13008212139698710154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A092089 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364847.P13008212139698710154

/-! ## A364847.P3531754342477052605

`∑{d}[n+1, A000203(#)*A114643((n+1)/#)]`
-/

namespace A364847.P3531754342477052605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A114643 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364847.P3531754342477052605

/-! ## A364847.P7889388356578580984

`∑{d}[n+1, A063659(#)*A145390((n+1)/#)]`
-/

namespace A364847.P7889388356578580984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A145390 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364847.P7889388356578580984

/-! ## A364847.P17846727004959621651

`∑{d}[n+1, A097012(#)*A114643((n+1)/#)]`
-/

namespace A364847.P17846727004959621651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A097012 d * A114643 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364847.P17846727004959621651

/-! ## A364847.P6530506957914056655

`∑{d}[n+1, A034444(#)*A348173((n+1)/#)]`
-/

namespace A364847.P6530506957914056655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A348173 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364847.P6530506957914056655

/-!
# A364849: Number of even parity alternating permutations of [1..n] starting with an odd integer.

The programs for A364849, there is no canonical definition to state claims against.
-/

/-! ## A364849.P5647502804359155429

`∏[fp[acot(n-1)+2*n]]`
-/

namespace A364849.P5647502804359155429
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ) + (2 * n : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A364849.P5647502804359155429

/-! ## A364849.P18069873960489127869

`∏[n-a(n-1)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A364849.P18069873960489127869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n f1 =>
  (n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A364849.P18069873960489127869

/-! ## A364849.P14020032569196053462

`round(∏[round(sqrt(n²+1)/2)]/2)`
-/

namespace A364849.P14020032569196053462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2)

end

end A364849.P14020032569196053462

/-! ## A364849.P5088792090561835028

`a(n-1)*ceil(n/2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A364849.P5088792090561835028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 1) * ⌈(n : ℚ) / 2⌉

end

end A364849.P5088792090561835028

/-! ## A364849.P11877014874233357062

`round(n/2)*a(n-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A364849.P11877014874233357062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2) * a (n - 1)

end

end A364849.P11877014874233357062

/-! ## A364849.P7754377358188324883

`floor((n-floor(n/2))*a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A364849.P7754377358188324883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  ((n : ℤ) - ⌊(n : ℚ) / 2⌋) * a (n - 1)

end

end A364849.P7754377358188324883

/-! ## A364849.P5441600582921792485

`ceil(A010551(n)/2)`
-/

namespace A364849.P5441600582921792485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010551 n : ℚ) / 2⌉

end

end A364849.P5441600582921792485

/-! ## A364849.P17950264444357336848

`ceil(∏[A065033(n)]/2)`
-/

namespace A364849.P17950264444357336848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A364849.P17950264444357336848

/-!
# A364850: a(n) = negated numerator of A014963(n)*A023900(n)/2.

The programs for A364850, there is no canonical definition to state claims against.
-/

/-! ## A364850.P8752273165349680648

`A155457(∏{p}[n+1, #])*A297381(n+1)`
-/

namespace A364850.P8752273165349680648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155457 (∏ p ∈ Nat.primeFactors (f1 n), p) * A297381 (n + 1)

end

end A364850.P8752273165349680648

/-! ## A364850.P8367608527230856231

`A155457((-1)^n+n)*A297381(n+1)`
-/

namespace A364850.P8367608527230856231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155457 ((-1) ^ n + (n : ℤ)).toNat * A297381 (n + 1)

end

end A364850.P8367608527230856231

/-! ## A364850.P3058833107527265973

`A155457(C(n+1, n))*A297381(n+1)`
-/

namespace A364850.P3058833107527265973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155457 (Nat.choose (n + 1) n) * A297381 (n + 1)

end

end A364850.P3058833107527265973

/-!
# A364852: Number of paths in the n-Lucas cube graph.

The programs for A364852, there is no canonical definition to state claims against.
-/

/-! ## A364852.P8397480519602093473

`A272071(∑[n^(n+1)])`
-/

namespace A364852.P8397480519602093473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272071 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364852.P8397480519602093473

/-!
# A364856: Triangle read by rows: T(n,k) is the number of k-dimensional faces of the n-dimensional Kunz cone, 0 <= k <= n.

The programs for A364856, there is no canonical definition to state claims against.
-/

/-! ## A364856.P10256541339694166999

`A092333(A176560(n))`
-/

namespace A364856.P10256541339694166999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092333 (A176560 n).toNat

end

end A364856.P10256541339694166999

/-! ## A364856.P3358444474523858507

`A277760(A022173(n))`
-/

namespace A364856.P3358444474523858507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277760 (A022173 n).toNat

end

end A364856.P3358444474523858507

/-! ## A364856.P6156191629967446039

`A348674(A022175(n))`
-/

namespace A364856.P6156191629967446039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348674 (A022175 n).toNat

end

end A364856.P6156191629967446039

/-! ## A364856.P8320549879174418531

`A120456(A299904(n))`
-/

namespace A364856.P8320549879174418531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120456 (A299904 n).toNat

end

end A364856.P8320549879174418531

/-! ## A364856.P3375907588398410516

`A125978(A331406(n))`
-/

namespace A364856.P3375907588398410516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125978 (A331406 n).toNat

end

end A364856.P3375907588398410516

/-!
# A364860: Greater of a pair of S-amicable numbers k < m such that s(k) = m and s(m) = k, where s(k) = A364858(k).

The programs for A364860, there is no canonical definition to state claims against.
-/

/-! ## A364860.P13159898566843502852

`A294888(A364859(n+1))`
-/

namespace A364860.P13159898566843502852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (A364859 (n + 1)).toNat

end

end A364860.P13159898566843502852

/-!
# A364861: Numbers k such that k and k+1 are both S-abundant numbers (A181487).

The programs for A364861, there is no canonical definition to state claims against.
-/

/-! ## A364861.P7529371682609993215

`A328327(lt[A283084(n), A321659(2*(n+1))])`
-/

namespace A364861.P7529371682609993215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283084 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321659 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328327 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A364861.P7529371682609993215

/-!
# A364865: G.f. satisfies A(x) = 1 + x*A(x)^4 / (1 + x*A(x)^4).

The programs for A364865, there is no canonical definition to state claims against.
-/

/-! ## A364865.P12405510317436769870

`A239161(A149012(n))`
-/

namespace A364865.P12405510317436769870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239161 (A149012 n).toNat

end

end A364865.P12405510317436769870

/-! ## A364865.P292593504312924107

`xor(A008676(A032443(n+1)), A326459(3*n+1))`
-/

namespace A364865.P292593504312924107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008676 (A032443 (n + 1)).toNat) (A326459 (3 * n + 1))

end

end A364865.P292593504312924107

/-!
# A364866: G.f. satisfies A(x) = 1 + x*A(x)^5 / (1 + x*A(x)^5).

The programs for A364866, there is no canonical definition to state claims against.
-/

/-! ## A364866.P10371981042120430751

`A002264(A372415(n)+A000032(n))`
-/

namespace A364866.P10371981042120430751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A372415 n + A000032 n).toNat

end

end A364866.P10371981042120430751

/-! ## A364866.P512654305495615150

`A004277(A001090(n))/A004277(n)`
-/

namespace A364866.P512654305495615150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A001090 n).toNat : ℚ) / (A004277 n : ℚ)

end

end A364866.P512654305495615150

/-!
# A364867: Primes p such that the multiplicative order of 9 modulo p is (p-1)/2.

The programs for A364867, there is no canonical definition to state claims against.
-/

/-! ## A364867.P5185147084194810545

`A005843(record[A053452(n+4)])+1`
-/

namespace A364867.P5185147084194810545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053452 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A364867.P5185147084194810545

/-! ## A364867.P17940991864127465037

`2*record[A054717(n+3)]+1`
-/

namespace A364867.P17940991864127465037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054717 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A364867.P17940991864127465037

/-! ## A364867.P6064146063752930039

`2*eq[n, A054717(2*n+1)]+1`
-/

namespace A364867.P6064146063752930039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054717 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364867.P6064146063752930039

/-! ## A364867.P16585401028405630577

`A005408(record[A054717(2*n+3)])`
-/

namespace A364867.P16585401028405630577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054717 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A364867.P16585401028405630577

/-! ## A364867.P8839039610212090758

`record[A144396(A054717(n+1)+A000007(n))]`
-/

namespace A364867.P8839039610212090758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A054717 (n + 1) + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364867.P8839039610212090758

/-! ## A364867.P8724221966860158202

`record[A144396(A359170(n+1)+A054717(n+1))]`
-/

namespace A364867.P8724221966860158202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A359170 (n + 1) + A054717 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364867.P8724221966860158202

/-! ## A364867.P6413290945166378719

`A000040(eq[2, A211454(n+1)]+1)`
-/

namespace A364867.P6413290945166378719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A364867.P6413290945166378719

/-!
# A364868: Numbers k such that 4*k+1 is the norm of a Gaussian prime.

The programs for A364868, the canonical program `A364868.P4386631434435275963` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364868 has offset 1).

The definition of A364868 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055025, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364868.P4386631434435275963

`(A055025(n+2)-1)/4`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A364868

/-- `(A055025(n+2)-1)/4` -/
def P4386631434435275963.Spec : Prop :=
  ∀ n, P4386631434435275963.a n = (A364868 (n + 1) : ℚ)

end A364868

/-! ## A364868.P9625124810728013380

`∑[runs[A295996(n)]]`
-/

namespace A364868.P9625124810728013380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295996 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364868.P9625124810728013380

namespace A364868

/-- `∑[runs[A295996(n)]]` -/
def P9625124810728013380.Spec : Prop :=
  ∀ n, (P9625124810728013380.a n : ℤ) = A364868 (n + 1)

end A364868

/-! ## A364868.P4451609600168028547

`lt[A295996(abs(1-n)), A295996(n)]`
-/

namespace A364868.P4451609600168028547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295996 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295996 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364868.P4451609600168028547

namespace A364868

/-- `lt[A295996(abs(1-n)), A295996(n)]` -/
def P4451609600168028547.Spec : Prop :=
  ∀ n, (P4451609600168028547.a n : ℤ) = A364868 (n + 1)

end A364868

/-! ## A364868.P17125252886436351882

`lt[0, A055028(4*n+1)]`
-/

namespace A364868.P17125252886436351882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055028 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A364868.P17125252886436351882

namespace A364868

/-- `lt[0, A055028(4*n+1)]` -/
def P17125252886436351882.Spec : Prop :=
  ∀ n, (P17125252886436351882.a n : ℤ) = A364868 (n + 1)

end A364868

/-! ## A364868.P16750685390698038390

`eq[2, A046081(4*n+1)]`
-/

namespace A364868.P16750685390698038390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364868.P16750685390698038390

namespace A364868

/-- `eq[2, A046081(4*n+1)]` -/
def P16750685390698038390.Spec : Prop :=
  ∀ n, (P16750685390698038390.a n : ℤ) = A364868 (n + 1)

end A364868

/-! ## A364868.P8066528262449246094

`lt[1, A055029(4*n+1)+1]`
-/

namespace A364868.P8066528262449246094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (4 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A364868.P8066528262449246094

namespace A364868

/-- `lt[1, A055029(4*n+1)+1]` -/
def P8066528262449246094.Spec : Prop :=
  ∀ n, (P8066528262449246094.a n : ℤ) = A364868 (n + 1)

end A364868

/-! ## A364868.P12912945088568553709

`A002265(A055025(n+2))`
-/

namespace A364868.P12912945088568553709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A055025 (n + 2)).toNat

end

end A364868.P12912945088568553709

namespace A364868

/-- `A002265(A055025(n+2))` -/
def P12912945088568553709.Spec : Prop :=
  ∀ n, P12912945088568553709.a n = A364868 (n + 1)

end A364868

/-!
# A364869: Numbers k such that 6*k+1 is the norm of an Eisenstein prime.

The programs for A364869, there is no canonical definition to state claims against.
-/

/-! ## A364869.P7962976943496603119

`(A055664(n+3)-1)/6`
-/

namespace A364869.P7962976943496603119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055664 (n + 3) - 1 : ℚ) / 6

end

end A364869.P7962976943496603119

/-! ## A364869.P8392391183995474565

`floor(A055664(n+3)/6)`
-/

namespace A364869.P8392391183995474565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055664 (n + 3) : ℚ) / 6⌋

end

end A364869.P8392391183995474565

/-! ## A364869.P14718600423011605906

`round(A055664(3+n)/6)`
-/

namespace A364869.P14718600423011605906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A055664 (3 + n) : ℚ) / 6)

end

end A364869.P14718600423011605906

/-! ## A364869.P12526045282554699554

`eq[2, A338170(6*n+1)]`
-/

namespace A364869.P12526045282554699554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338170 (6 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364869.P12526045282554699554

/-! ## A364869.P14089415128277212177

`eq[A290739(n), A380218(3*n)]/2`
-/

namespace A364869.P14089415128277212177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290739 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380218 (3 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A364869.P14089415128277212177

/-! ## A364869.P5430896262879531796

`A110654(eq[A290739(n), A380218(3*n)])`
-/

namespace A364869.P5430896262879531796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290739 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380218 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A364869.P5430896262879531796

/-! ## A364869.P6463623997573513044

`∑[runs[A135462(A016969(n))]]`
-/

namespace A364869.P6463623997573513044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135462 (A016969 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364869.P6463623997573513044

/-! ## A364869.P6717203266851256599

`A001057(lt[A001065(3*n+4), A182298(n)])`
-/

namespace A364869.P6717203266851256599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A364869.P6717203266851256599

/-!
# A364870: Array read by ascending antidiagonals: A(n, k) = (n + k)^n, with k >= 0.

The programs for A364870, the canonical program `A364870.P11219805872941961478` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364870 has offset 0).

The definition of A364870 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364870.P11219805872941961478

`(row(n)-col(n)+col(n))^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364870

/-- `(row(n)-col(n)+col(n))^(row(n)-col(n))` -/
def P11219805872941961478.Spec : Prop :=
  ∀ n, P11219805872941961478.a n = (A364870 n : ℚ)

end A364870

/-! ## A364870.P4237585684022227134

`row(n)^(row(n)-col(n))`
-/

namespace A364870.P4237585684022227134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A364870.P4237585684022227134

namespace A364870

/-- `row(n)^(row(n)-col(n))` -/
def P4237585684022227134.Spec : Prop :=
  ∀ n, P4237585684022227134.a n = (A364870 n : ℚ)

end A364870

/-! ## A364870.P9899042395963787539

`row(n)^row(n)/row(n)^col(n)`
-/

namespace A364870.P9899042395963787539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n ^ SequenceMachineLib.triRow n : ℚ) / (SequenceMachineLib.triRow n ^ SequenceMachineLib.triCol n : ℚ)

end

end A364870.P9899042395963787539

namespace A364870

/-- `row(n)^row(n)/row(n)^col(n)` -/
def P9899042395963787539.Spec : Prop :=
  ∀ n, P9899042395963787539.a n = (A364870 n : ℚ)

end A364870

/-! ## A364870.P6803444749417722554

`row(n)^A025581(n)`
-/

namespace A364870.P6803444749417722554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℚ) ^ (A025581 n : ℤ)

end

end A364870.P6803444749417722554

namespace A364870

/-- `row(n)^A025581(n)` -/
def P6803444749417722554.Spec : Prop :=
  ∀ n, P6803444749417722554.a n = (A364870 n : ℚ)

end A364870

/-! ## A364870.P6672045050856782546

`row(n)^log2(A130321(n))`
-/

namespace A364870.P6672045050856782546
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℝ) ^ (Real.logb 2 (A130321 n : ℝ))

end

end A364870.P6672045050856782546

namespace A364870

/-- `row(n)^log2(A130321(n))` -/
def P6672045050856782546.Spec : Prop :=
  ∀ n, P6672045050856782546.a n = (A364870 n : ℝ)

end A364870

/-! ## A364870.P14313624843377527033

`row(n)^col(A061579(n))`
-/

namespace A364870.P14313624843377527033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n ^ SequenceMachineLib.triCol (A061579 n).toNat

end

end A364870.P14313624843377527033

namespace A364870

/-- `row(n)^col(A061579(n))` -/
def P14313624843377527033.Spec : Prop :=
  ∀ n, (P14313624843377527033.a n : ℤ) = A364870 n

end A364870

/-! ## A364870.P13195721794851201415

`row(n)^A025669(n+1)`
-/

namespace A364870.P13195721794851201415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℚ) ^ (A025669 (n + 1) : ℤ)

end

end A364870.P13195721794851201415

namespace A364870

/-- `row(n)^A025669(n+1)` -/
def P13195721794851201415.Spec : Prop :=
  ∀ n, P13195721794851201415.a n = (A364870 n : ℚ)

end A364870

/-! ## A364870.P18031670455435078034

`row(n)^A025683(n+1)`
-/

namespace A364870.P18031670455435078034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℚ) ^ (A025683 (n + 1) : ℤ)

end

end A364870.P18031670455435078034

namespace A364870

/-- `row(n)^A025683(n+1)` -/
def P18031670455435078034.Spec : Prop :=
  ∀ n, P18031670455435078034.a n = (A364870 n : ℚ)

end A364870

/-! ## A364870.P16380908807505766293

`A079901(∑[2*n]%comp[∑[n]])`
-/

namespace A364870.P16380908807505766293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A364870.P16380908807505766293

namespace A364870

/-- `A079901(∑[2*n]%comp[∑[n]])` -/
def P16380908807505766293.Spec : Prop :=
  ∀ n, P16380908807505766293.a n = A364870 n

end A364870

/-! ## A364870.P1666461476471594727

`A079901(∑[char[∑[n]]]²-n-1)`
-/

namespace A364870.P1666461476471594727
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A364870.P1666461476471594727

namespace A364870

/-- `A079901(∑[char[∑[n]]]²-n-1)` -/
def P1666461476471594727.Spec : Prop :=
  ∀ n, P1666461476471594727.a n = A364870 n

end A364870

/-!
# A364871: a(n) = B(n) - A(n), where A(1) = 0, B(1) = 1, and sequences A and B are the lexicographically earliest sequences that start with their respective first terms and contain no term whose binary expansion is the concatenation of any two earlier terms in that sequence.

The programs for A364871, there is no canonical definition to state claims against.
-/

/-! ## A364871.P6796524835230338446

`A365018(n+1)-A365017(n+1)`
-/

namespace A364871.P6796524835230338446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365018 (n + 1) - A365017 (n + 1)

end

end A364871.P6796524835230338446

/-!
# A364874: A packing coloring for the one-way infinite path using only the first 8 prime numbers.

The programs for A364874, there is no canonical definition to state claims against.
-/

/-! ## A364874.P8985334762121466608

`A276076(A087088(n+1)!)`
-/

namespace A364874.P8985334762121466608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 (Nat.factorial (A087088 (n + 1)).toNat)

end

end A364874.P8985334762121466608

/-! ## A364874.P17064150643779322792

`A000040(A087088(n+1)%A210484(n+1))`
-/

namespace A364874.P17064150643779322792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A087088 (n + 1)) (A210484 (n + 1))).toNat

end

end A364874.P17064150643779322792

/-! ## A364874.P3232446530500144307

`A000040(A379668(3*n+2)+A087088(n+1))`
-/

namespace A364874.P3232446530500144307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A379668 (3 * n + 2) + A087088 (n + 1)).toNat

end

end A364874.P3232446530500144307

/-! ## A364874.P5731169532910545304

`A000040(A087088(n+1))%A244360(n+4)`
-/

namespace A364874.P5731169532910545304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A087088 (n + 1)).toNat) (A244360 (n + 4))

end

end A364874.P5731169532910545304

/-! ## A364874.P9700294000033585120

`A010051(A224391(n+1))+A000040(A087088(n+1))`
-/

namespace A364874.P9700294000033585120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A224391 (n + 1)).toNat + A000040 (A087088 (n + 1)).toNat

end

end A364874.P9700294000033585120

/-!
# A364878: Triangle read by rows: T(n,k), 0 <= k <= n, is the smallest number that has n distinct prime factors, k of which are unique.

The programs for A364878, the canonical program `A364878.P8420984608544847247` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364878 has offset 0).

The definition of A364878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364878.P8420984608544847247

`A002110(row(n)-col(n))*A002110(row(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A364878

/-- `A002110(row(n)-col(n))*A002110(row(n))` -/
def P8420984608544847247.Spec : Prop :=
  ∀ n, P8420984608544847247.a n = A364878 n

theorem P8420984608544847247.correct : P8420984608544847247.Spec := by
  intro n
  simp only [A364878]

end A364878

/-! ## A364878.P4964388137131579905

`A181821(A175840(n))`
-/

namespace A364878.P4964388137131579905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A175840 n).toNat

end

end A364878.P4964388137131579905

namespace A364878

/-- `A181821(A175840(n))` -/
def P4964388137131579905.Spec : Prop :=
  ∀ n, P4964388137131579905.a n = A364878 n

end A364878

/-! ## A364878.P17757903549592078808

`A086141(A130328(n))`
-/

namespace A364878.P17757903549592078808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086141 (A130328 n).toNat

end

end A364878.P17757903549592078808

namespace A364878

/-- `A086141(A130328(n))` -/
def P17757903549592078808.Spec : Prop :=
  ∀ n, P17757903549592078808.a n = A364878 n

end A364878

/-!
# A364879: a(n) is the smallest number k such that (sum of composites <= k) / (sum of primes <= k) >= n.

The programs for A364879, there is no canonical definition to state claims against.
-/

/-! ## A364879.P4295685322940444374

`record[A133265(n)*A241175(n+1)]`
-/

namespace A364879.P4295685322940444374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 n * A241175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364879.P4295685322940444374

/-! ## A364879.P3405434522514441913

`A108461(A000698(n))*A187884(n+1)`
-/

namespace A364879.P3405434522514441913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108461 (A000698 n).toNat * A187884 (n + 1)

end

end A364879.P3405434522514441913

/-!
# A364880: a(0) = 0. If a(n-1) is a novel term, a(n) = a(a(n-1)); otherwise a(n) is the number of distinct terms occurring prior to a(n-1) which are <= a(n-1).

The programs for A364880, there is no canonical definition to state claims against.
-/

/-! ## A364880.P10765584833035883000

`col(comp[A059503(A344330(3*n+2))])`
-/

namespace A364880.P10765584833035883000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059503 (A344330 (3 * n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A364880.P10765584833035883000

/-! ## A364880.P15422589844317143671

`col(comp[A136218(A325038(3*n+5))])`
-/

namespace A364880.P15422589844317143671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136218 (A325038 (3 * n + 5)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A364880.P15422589844317143671

/-! ## A364880.P300002128167706546

`A002262(lt[A333381(3*n), A059268(n+1)])`
-/

namespace A364880.P300002128167706546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A364880.P300002128167706546

/-! ## A364880.P9343303383598585717

`A002262(lt[A000008(n), A017666(2*n+3)])`
-/

namespace A364880.P9343303383598585717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A364880.P9343303383598585717

/-! ## A364880.P9903989515187815487

`A002262(lt[A333381(3*n), A002260(n+2)])`
-/

namespace A364880.P9903989515187815487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A364880.P9903989515187815487

/-!
# A364881: First significant digit of the decimal expansion of n/(2^n).

The programs for A364881, there is no canonical definition to state claims against.
-/

/-! ## A364881.P18276536495800170879

`A052038(A053638(n+1))`
-/

namespace A364881.P18276536495800170879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A053638 (n + 1)).toNat

end

end A364881.P18276536495800170879

/-! ## A364881.P2890018724922650807

`A052038(A065482(n+1))`
-/

namespace A364881.P2890018724922650807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A065482 (n + 1)).toNat

end

end A364881.P2890018724922650807

/-!
# A364883: Consider the Fermat quotient for base n: Fq(n,k) = (n^(p - 1) - 1)/p, where p = prime(k), for k >= 1. a(n) is the least k >= 1 such that Fq(n,j) is divisible by n^2 - 1 for all j >= k.

The programs for A364883, there is no canonical definition to state claims against.
-/

/-! ## A364883.P11222994914771805180

`A003977(A093074(2+n))`
-/

namespace A364883.P11222994914771805180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003977 (A093074 (2 + n)).toNat

end

end A364883.P11222994914771805180

/-! ## A364883.P12596071140275177257

`A252489(A005563(1+n))+1`
-/

namespace A364883.P12596071140275177257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252489 (A005563 (1 + n)).toNat + 1

end

end A364883.P12596071140275177257

/-! ## A364883.P13945244586504449111

`A003963(A093074(n+2))+1`
-/

namespace A364883.P13945244586504449111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A093074 (n + 2)).toNat + 1

end

end A364883.P13945244586504449111

/-! ## A364883.P7045653711820453453

`A056239(2*A093074(2+n))`
-/

namespace A364883.P7045653711820453453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A093074 (2 + n)).toNat

end

end A364883.P7045653711820453453

/-! ## A364883.P4102542650824912306

`A252489(A093074(n+2)-1)+1`
-/

namespace A364883.P4102542650824912306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252489 (A093074 (n + 2) - 1).toNat + 1

end

end A364883.P4102542650824912306

/-! ## A364883.P8353110267181952890

`A252464(A074399(n+1)*A074399(n+2))`
-/

namespace A364883.P8353110267181952890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A074399 (n + 1) * A074399 (n + 2)).toNat

end

end A364883.P8353110267181952890

/-! ## A364883.P8644599996036783968

`A300118(A093074(n+2)+A000007(n))`
-/

namespace A364883.P8644599996036783968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300118 (A093074 (n + 2) + A000007 n).toNat

end

end A364883.P8644599996036783968

/-! ## A364883.P10525675892546727766

`A300118(A093074(n+2))%A005878(n)`
-/

namespace A364883.P10525675892546727766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300118 (A093074 (n + 2)).toNat) (A005878 n)

end

end A364883.P10525675892546727766

/-! ## A364883.P12417870500720570657

`A300118(A093074(n+2)%A001126(n+1))`
-/

namespace A364883.P12417870500720570657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300118 (Int.tmod (A093074 (n + 2)) (A001126 (n + 1))).toNat

end

end A364883.P12417870500720570657

/-! ## A364883.P3375310991027090938

`A061395(∑[∑[3*(n+1)]])+1`
-/

namespace A364883.P3375310991027090938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A364883.P3375310991027090938

/-!
# A364884: Triangle T(n, k), n > 0, k = 1..n, read by rows; T(1, 1) = 1, and for n > 1, k = 1..n, T(n, k) is the least unseen multiple of the k-th term of the flattened sequence .

The programs for A364884, there is no canonical definition to state claims against.
-/

/-! ## A364884.P17168418203014577535

`fo[A364887(n+1)-1]+1`
-/

namespace A364884.P17168418203014577535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364887 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A364884.P17168418203014577535

/-! ## A364884.P9780240188827101311

`A280864(n+1)+A240868(A014382(n))`
-/

namespace A364884.P9780240188827101311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (n + 1) + A240868 (A014382 n).toNat

end

end A364884.P9780240188827101311

/-! ## A364884.P17787410514871012731

`A280864(n+1)+A212619(A294617(n))`
-/

namespace A364884.P17787410514871012731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (n + 1) + A212619 (A294617 n).toNat

end

end A364884.P17787410514871012731

/-! ## A364884.P1135926428178121007

`A280864(n+1)+A058348(A018350(n+1))`
-/

namespace A364884.P1135926428178121007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (n + 1) + A058348 (A018350 (n + 1)).toNat

end

end A364884.P1135926428178121007

/-! ## A364884.P2991065455849557218

`A280864(n+1)+A184955(A047592(n+1))`
-/

namespace A364884.P2991065455849557218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (n + 1) + A184955 (A047592 (n + 1)).toNat

end

end A364884.P2991065455849557218

/-!
# A364885: Triangle T(n, k), n >= 0, k = 0..n, read by rows; T(0, 0) = 0, and for any n > 0, k = 0..n, T(n, k) is the least number obtained by turning a 0 into a 1 in the binary expansion of the k-th term of the (0-based) flattened sequence.

The programs for A364885, there is no canonical definition to state claims against.
-/

/-! ## A364885.P7938925718072981640

`fo[A365080(n)]`
-/

namespace A364885.P7938925718072981640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365080 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A364885.P7938925718072981640

/-! ## A364885.P3818964199529817221

`A006369(A039274(n+1)%A320355(n+1))`
-/

namespace A364885.P3818964199529817221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (Int.tmod (A039274 (n + 1)) (A320355 (n + 1))).toNat

end

end A364885.P3818964199529817221

/-! ## A364885.P11690116951002479854

`A156552(A280864(n+1)%A270339(3*n+4))`
-/

namespace A364885.P11690116951002479854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (Int.tmod (A280864 (n + 1)) (A270339 (3 * n + 4))).toNat

end

end A364885.P11690116951002479854

/-! ## A364885.P4780759908065861432

`A156552(A358267(n+1)%A183208(3*n+5))`
-/

namespace A364885.P4780759908065861432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (Int.tmod (A358267 (n + 1)) (A183208 (3 * n + 5))).toNat

end

end A364885.P4780759908065861432

/-!
# A364887: Inverse permutation to A364884.

The programs for A364887, there is no canonical definition to state claims against.
-/

/-! ## A364887.P2422179579351753539

`fo[A364884(n+1)-1]+1`
-/

namespace A364887.P2422179579351753539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364884 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A364887.P2422179579351753539

/-! ## A364887.P5733419982864958610

`A280741(n+1)+A004788(A184946(3*n))`
-/

namespace A364887.P5733419982864958610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (n + 1) + A004788 (A184946 (3 * n)).toNat

end

end A364887.P5733419982864958610

/-! ## A364887.P9162879679966878663

`A056239(lcm(A108951(2*(n+1)), A116505(2*(n+1))))`
-/

namespace A364887.P9162879679966878663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lcm (A108951 (2 * (n + 1))) (A116505 (2 * (n + 1))))

end

end A364887.P9162879679966878663

/-! ## A364887.P12525102415602705802

`A004788(A184946(3*n))+A372064(n+1)+A304741(n+1)`
-/

namespace A364887.P12525102415602705802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004788 (A184946 (3 * n)).toNat + (A372064 (n + 1) + A304741 (n + 1))

end

end A364887.P12525102415602705802

/-!
# A364891: Triangle read by rows: T(n,k) = (-1)^(k-1)*Sum_{j=0..k-1} (-1)^j*(p(n - j*(2*j + 1)) - p(n - (j + 1)*(2*j + 1))), where p(n) = A000041(n) is the number of partitions of n, and 1 <= k <= n.

The programs for A364891, there is no canonical definition to state claims against.
-/

/-! ## A364891.P8179355716915208550

`A113686(A004896(n+1))-A395862(n)`
-/

namespace A364891.P8179355716915208550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113686 (A004896 (n + 1)).toNat - A395862 n

end

end A364891.P8179355716915208550

/-!
# A364892: Row sums of A364891.

The programs for A364892, there is no canonical definition to state claims against.
-/

/-! ## A364892.P3893437411563509718

`A372825(A347206(n))`
-/

namespace A364892.P3893437411563509718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372825 (A347206 n).toNat

end

end A364892.P3893437411563509718

/-! ## A364892.P5984599989162449700

`A111660(A126796(n+1))`
-/

namespace A364892.P5984599989162449700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A126796 (n + 1)).toNat

end

end A364892.P5984599989162449700

/-! ## A364892.P15916081003089964918

`A111660(A229816(n)-A374020(n+1))`
-/

namespace A364892.P15916081003089964918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A229816 n - A374020 (n + 1)).toNat

end

end A364892.P15916081003089964918

/-! ## A364892.P13028986714338105395

`A353090(A328545(n)+1)`
-/

namespace A364892.P13028986714338105395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353090 (A328545 n + 1).toNat

end

end A364892.P13028986714338105395

/-! ## A364892.P3555316035729361371

`A325535(n)-A284468(A196993(n+1))`
-/

namespace A364892.P3555316035729361371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325535 n - A284468 (A196993 (n + 1)).toNat

end

end A364892.P3555316035729361371

/-!
# A364893: a(n) is the minimal positive value of m such that A325433(2m, 2n+1) > A364891(2m, 2n+1).

The programs for A364893, there is no canonical definition to state claims against.
-/

/-! ## A364893.P500755215264578122

`A002378(2*n+3)-A055642(A195309(2*n+1))`
-/

namespace A364893.P500755215264578122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (2 * n + 3) - A055642 (A195309 (2 * n + 1)).toNat

end

end A364893.P500755215264578122

/-! ## A364893.P17449671241530424513

`A002939(n+2)-A055642(A000070(2*(n+1)))`
-/

namespace A364893.P17449671241530424513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 (n + 2) - A055642 (A000070 (2 * (n + 1))).toNat

end

end A364893.P17449671241530424513

/-! ## A364893.P16422771718128483209

`A002378(2*n+3)-A055642(A116645(3*n+4))`
-/

namespace A364893.P16422771718128483209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (2 * n + 3) - A055642 (A116645 (3 * n + 4)).toNat

end

end A364893.P16422771718128483209

/-! ## A364893.P11955802892226676970

`A035100(A018034(n))+A000290(2*n+3)`
-/

namespace A364893.P11955802892226676970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035100 (A018034 n).toNat + A000290 (2 * n + 3)

end

end A364893.P11955802892226676970

/-! ## A364893.P12136223345513436587

`A002378(2*(n+2))-A169865(2*(n+2))`
-/

namespace A364893.P12136223345513436587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (2 * (n + 2)) - A169865 (2 * (n + 2))

end

end A364893.P12136223345513436587

/-!
# A364894: a(n) = floor(4*n^2 + 7*n - sqrt(n)*log(n)) - floor(n/3).

The programs for A364894, the canonical program `A364894.P13156001567958523882` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364894 has offset 1).

The definition of A364894 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4*(n+1)²+7*(n+1)-sqrt(n+1)*log(n+1))-floor((n+1)/3)` (program `A364894.P13156001567958523882`, by `A364894.P13156001567958523882.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A364894.P13156001567958523882

`floor(4*(n+1)²+7*(n+1)-sqrt(n+1)*log(n+1))-floor((n+1)/3)`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A364894

/-- `floor(4*(n+1)²+7*(n+1)-sqrt(n+1)*log(n+1))-floor((n+1)/3)` -/
def P13156001567958523882.Spec : Prop :=
  ∀ n, P13156001567958523882.a n = A364894 (n + 1)

theorem P13156001567958523882.correct : P13156001567958523882.Spec := by
  intro n
  simp only [A364894, Nat.add_sub_cancel]

end A364894

/-! ## A364894.P7136695331362448808

`A245207(2*(n+1))^A000579(n)!`
-/

namespace A364894.P7136695331362448808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245207 (2 * (n + 1)) ^ Nat.factorial (A000579 n).toNat

end

end A364894.P7136695331362448808

namespace A364894

/-- `A245207(2*(n+1))^A000579(n)!` -/
def P7136695331362448808.Spec : Prop :=
  ∀ n, P7136695331362448808.a n = A364894 (n + 1)

end A364894

/-! ## A364894.P14928150570341928347

`A245207(2*(n+1))^A245169(n)!`
-/

namespace A364894.P14928150570341928347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245207 (2 * (n + 1)) ^ Nat.factorial (A245169 n).toNat

end

end A364894.P14928150570341928347

namespace A364894

/-- `A245207(2*(n+1))^A245169(n)!` -/
def P14928150570341928347.Spec : Prop :=
  ∀ n, P14928150570341928347.a n = A364894 (n + 1)

end A364894

