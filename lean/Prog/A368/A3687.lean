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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C004
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
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
# A368700: Partial sums of A368699.

The programs for A368700, there is no canonical definition to state claims against.
-/

/-! ## A368700.P16074325637532885460

`∑[A368699(n)]`
-/

namespace A368700.P16074325637532885460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368700.P16074325637532885460

/-!
# A368701: a(n) = 1 if n satisfies the arithmetic differential equation 2n" - n' - 4 = 0, otherwise 0. Cf. A003415.

The programs for A368701, there is no canonical definition to state claims against.
-/

/-! ## A368701.P14849917264827890369

`char[A334261(n+1)-1]`
-/

namespace A368701.P14849917264827890369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334261 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A368701.P14849917264827890369

/-! ## A368701.P4593181095650109608

`and(A064911(n+1), A081516(n+5))`
-/

namespace A368701.P4593181095650109608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064911 (n + 1)) (A081516 (n + 5))

end

end A368701.P4593181095650109608

/-! ## A368701.P7619639562681701803

`A059841(or(A000566(n), A331600(n+1)))`
-/

namespace A368701.P7619639562681701803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (Int.lor (A000566 n) (A331600 (n + 1))).toNat

end

end A368701.P7619639562681701803

/-! ## A368701.P6150702055992555619

`and(∑[n+2]-1, A188014(6^∑{e}[n+1, #]))`
-/

namespace A368701.P6150702055992555619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (A188014 (6 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)))

end

end A368701.P6150702055992555619

/-! ## A368701.P15383834200887106775

`A000124(n)%A101211(5^∑{e}[n+1, #])`
-/

namespace A368701.P15383834200887106775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000124 n) (A101211 (5 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)))

end

end A368701.P15383834200887106775

/-! ## A368701.P15967040680106866553

`and(A010051(A082588(n+1)), A159790(n))`
-/

namespace A368701.P15967040680106866553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (A082588 (n + 1)).toNat) (A159790 n)

end

end A368701.P15967040680106866553

/-! ## A368701.P5177371441654871025

`A353477(A166661(n+1))+A353477(n+1)`
-/

namespace A368701.P5177371441654871025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353477 (A166661 (n + 1)).toNat + A353477 (n + 1)

end

end A368701.P5177371441654871025

/-! ## A368701.P10523831270877799352

`and(A000217(n+2), A010051(A082588(n+1)))`
-/

namespace A368701.P10523831270877799352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 (n + 2)) (A010051 (A082588 (n + 1)).toNat)

end

end A368701.P10523831270877799352

/-! ## A368701.P11153999654107272425

`A368997(n+1)*A368997(A137904(n+4))`
-/

namespace A368701.P11153999654107272425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368997 (n + 1) * A368997 (A137904 (n + 4)).toNat

end

end A368701.P11153999654107272425

/-!
# A368703: a(n) is the least integer k whose arithmetic derivative is equal to the n-th primorial, or 0 if no such k exists.

The programs for A368703, there is no canonical definition to state claims against.
-/

/-! ## A368703.P5802821970783196872

`A098699(A002110(n))`
-/

namespace A368703.P5802821970783196872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098699 (A002110 n).toNat

end

end A368703.P5802821970783196872

/-! ## A368703.P6178143857889168210

`A098699(A335069(n+1))`
-/

namespace A368703.P6178143857889168210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098699 (A335069 (n + 1)).toNat

end

end A368703.P6178143857889168210

/-!
# A368705: Number of squarefree numbers that are less than n, not dividing n, and relatively prime to n.

The programs for A368705, there is no canonical definition to state claims against.
-/

/-! ## A368705.P12872635949212853592

`A073311(n+1)-1`
-/

namespace A368705.P12872635949212853592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073311 (n + 1) - 1

end

end A368705.P12872635949212853592

/-! ## A368705.P16781363792538862209

`A023443(A073311(n+1))`
-/

namespace A368705.P16781363792538862209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A073311 (n + 1)).toNat

end

end A368705.P16781363792538862209

/-! ## A368705.P17386162922271034314

`A057918(A073311(n+1)²)`
-/

namespace A368705.P17386162922271034314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A073311 (n + 1) ^ 2).toNat

end

end A368705.P17386162922271034314

/-! ## A368705.P8868080769152078424

`A023444(A073311(n+1)+1)`
-/

namespace A368705.P8868080769152078424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A073311 (n + 1) + 1).toNat

end

end A368705.P8868080769152078424

/-! ## A368705.P514545972867682262

`A289207(A073311(n+1)+1)`
-/

namespace A368705.P514545972867682262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A073311 (n + 1) + 1).toNat

end

end A368705.P514545972867682262

/-! ## A368705.P17003344030650790768

`A046667(2*A073311(n+1))`
-/

namespace A368705.P17003344030650790768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A073311 (n + 1)).toNat

end

end A368705.P17003344030650790768

/-! ## A368705.P14519318623924519390

`A003986(C(A073311(n+1), 2))`
-/

namespace A368705.P14519318623924519390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (Nat.choose (A073311 (n + 1)).toNat 2)

end

end A368705.P14519318623924519390

/-! ## A368705.P15463979517933499910

`A070198(n)%A073311(n+1)`
-/

namespace A368705.P15463979517933499910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A073311 (n + 1))

end

end A368705.P15463979517933499910

/-! ## A368705.P17714614974365421621

`A109606(n+1)-A073312(n+1)`
-/

namespace A368705.P17714614974365421621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) - A073312 (n + 1)

end

end A368705.P17714614974365421621

/-! ## A368705.P16504016599659971384

`A072828(n+1)%A073311(n+1)`
-/

namespace A368705.P16504016599659971384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A073311 (n + 1))

end

end A368705.P16504016599659971384

/-!
# A368707: Number of length-n overlap-free binary words that are squares.

The programs for A368707, there is no canonical definition to state claims against.
-/

/-! ## A368707.P13754034549374061171

`and(A120227(A011776(n+1)), A232666(3*n))`
-/

namespace A368707.P13754034549374061171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A120227 (A011776 (n + 1)).toNat) (A232666 (3 * n))

end

end A368707.P13754034549374061171

/-! ## A368707.P7902322403517463691

`lcm(A231563(A161951(n+1)), A328577(n))`
-/

namespace A368707.P7902322403517463691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A231563 (A161951 (n + 1)).toNat) (A328577 n)

end

end A368707.P7902322403517463691

/-! ## A368707.P14137891076892569476

`A035171(A184644(n)*A371170(3*(n+1)))`
-/

namespace A368707.P14137891076892569476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035171 (A184644 n * A371170 (3 * (n + 1))).toNat

end

end A368707.P14137891076892569476

/-! ## A368707.P11868234315342648295

`lcm(A006530(A161951(n+1)), A231563(n+1))`
-/

namespace A368707.P11868234315342648295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006530 (A161951 (n + 1)).toNat) (A231563 (n + 1))

end

end A368707.P11868234315342648295

/-! ## A368707.P5029909910098731265

`lcm(A047947(A184644(n)), A231563(n+1))`
-/

namespace A368707.P5029909910098731265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A047947 (A184644 n).toNat) (A231563 (n + 1))

end

end A368707.P5029909910098731265

/-!
# A368708: a(n) = hypergeom([-1 - n, -n, 1 - n], [2, 3], -2).

The programs for A368708, there is no canonical definition to state claims against.
-/

/-! ## A368708.P945034844927377149

`A153395(n)+A046660(A153395(n))²`
-/

namespace A368708.P945034844927377149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153395 n + A046660 (A153395 n).toNat ^ 2

end

end A368708.P945034844927377149

/-!
# A368710: The maximal exponent in the prime factorization of the powerful numbers.

The programs for A368710, there is no canonical definition to state claims against.
-/

/-! ## A368710.P795353647581816739

`A051903(A001694(n+1))`
-/

namespace A368710.P795353647581816739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A001694 (n + 1)).toNat

end

end A368710.P795353647581816739

/-! ## A368710.P3638877279017660556

`A051903(sqrt(A374291(n+1)))`
-/

namespace A368710.P3638877279017660556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway (Real.sqrt (A374291 (n + 1) : ℝ))).toNat

end

end A368710.P3638877279017660556

/-! ## A368710.P17834075210461210672

`A051903(A224866(n+1)-1)`
-/

namespace A368710.P17834075210461210672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A224866 (n + 1) - 1).toNat

end

end A368710.P17834075210461210672

/-! ## A368710.P3056473619807754802

`A051903(∪[(n+1)², A320966(n+1)])`
-/

namespace A368710.P3056473619807754802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A368710.P3056473619807754802

/-! ## A368710.P6698574090438664207

`A051903(A084371(n+1)*A306458(n+1))`
-/

namespace A368710.P6698574090438664207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A084371 (n + 1) * A306458 (n + 1)).toNat

end

end A368710.P6698574090438664207

/-! ## A368710.P8101641754192147117

`A051903(A369429(n+1)*A369430(n+1))`
-/

namespace A368710.P8101641754192147117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A369429 (n + 1) * A369430 (n + 1)).toNat

end

end A368710.P8101641754192147117

/-! ## A368710.P8497974176466427157

`A051903(∪[A001597(n+1), A052486(n+1)])`
-/

namespace A368710.P8497974176466427157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A368710.P8497974176466427157

/-! ## A368710.P2986902191294868251

`A051903(∪[A001597(n+1), A102834(n+1)])`
-/

namespace A368710.P2986902191294868251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A368710.P2986902191294868251

/-! ## A368710.P2036811482868292380

`A051903(∪[A320966(n+1), A056166(n+1)])`
-/

namespace A368710.P2036811482868292380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A368710.P2036811482868292380

/-! ## A368710.P2076932430399163207

`val(A046523(sqrt(A374291(n+1))), 2)`
-/

namespace A368710.P2076932430399163207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046523 (SequenceMachineLib.roundAway (Real.sqrt (A374291 (n + 1) : ℝ))).toNat).toNat 2

end

end A368710.P2076932430399163207

/-! ## A368710.P8517028203546054631

`val(A046523(A224866(n+1)-1), 2)`
-/

namespace A368710.P8517028203546054631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046523 (A224866 (n + 1) - 1).toNat).toNat 2

end

end A368710.P8517028203546054631

/-! ## A368710.P18319731266401805526

`A372603(A001694(2*n+1-n))`
-/

namespace A368710.P18319731266401805526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372603 (A001694 (2 * n + 1 - n)).toNat

end

end A368710.P18319731266401805526

/-! ## A368710.P17194616394106162264

`A061395(A181819(A001694(n+1))²)`
-/

namespace A368710.P17194616394106162264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A181819 (A001694 (n + 1)).toNat ^ 2).toNat

end

end A368710.P17194616394106162264

/-!
# A368711: The maximal exponent in the prime factorization of the exponentially odd numbers (A268335).

The programs for A368711, the canonical program `A368711.P6715505457637909973` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368711 has offset 1).

The definition of A368711 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368711.P6715505457637909973

`A051903(A268335(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A368711

/-- `A051903(A268335(n+1))` -/
def P6715505457637909973.Spec : Prop :=
  ∀ n, P6715505457637909973.a n = A368711 (n + 1)

theorem P6715505457637909973.correct : P6715505457637909973.Spec := by
  intro n
  simp only [A368711, Nat.add_sub_cancel]

end A368711

/-! ## A368711.P16529923447459688726

`A051903(∪[A002035(n+1), A001848(n)])`
-/

namespace A368711.P16529923447459688726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001848 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A368711.P16529923447459688726

namespace A368711

/-- `A051903(∪[A002035(n+1), A001848(n)])` -/
def P16529923447459688726.Spec : Prop :=
  ∀ n, P16529923447459688726.a n = A368711 (n + 1)

end A368711

/-! ## A368711.P10810992689595849005

`A051903(record[A350390(n+1)])`
-/

namespace A368711.P10810992689595849005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A368711.P10810992689595849005

namespace A368711

/-- `A051903(record[A350390(n+1)])` -/
def P10810992689595849005.Spec : Prop :=
  ∀ n, P10810992689595849005.a n = A368711 (n + 1)

end A368711

/-! ## A368711.P9784339975103716735

`A372601(A268335(2*n+1-n))`
-/

namespace A368711.P9784339975103716735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372601 (A268335 (2 * n + 1 - n)).toNat

end

end A368711.P9784339975103716735

namespace A368711

/-- `A372601(A268335(2*n+1-n))` -/
def P9784339975103716735.Spec : Prop :=
  ∀ n, P9784339975103716735.a n = A368711 (n + 1)

end A368711

/-! ## A368711.P9205064100018855965

`A051903(record[gcd(n+1, A011262(n+1))])`
-/

namespace A368711.P9205064100018855965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A011262 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A368711.P9205064100018855965

namespace A368711

/-- `A051903(record[gcd(n+1, A011262(n+1))])` -/
def P9205064100018855965.Spec : Prop :=
  ∀ n, P9205064100018855965.a n = A368711 (n + 1)

end A368711

/-! ## A368711.P3302473882750145166

`A368472(n+1)-A065333(A051071(3*n+2))`
-/

namespace A368711.P3302473882750145166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368472 (n + 1) - A065333 (A051071 (3 * n + 2)).toNat

end

end A368711.P3302473882750145166

namespace A368711

/-- `A368472(n+1)-A065333(A051071(3*n+2))` -/
def P3302473882750145166.Spec : Prop :=
  ∀ n, P3302473882750145166.a n = A368711 (n + 1)

end A368711

/-! ## A368711.P15796742013261628093

`A000005(A367418(n+1))%A355303(A067722(n))`
-/

namespace A368711.P15796742013261628093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A367418 (n + 1)).toNat) (A355303 (A067722 n).toNat)

end

end A368711.P15796742013261628093

namespace A368711

/-- `A000005(A367418(n+1))%A355303(A067722(n))` -/
def P15796742013261628093.Spec : Prop :=
  ∀ n, P15796742013261628093.a n = A368711 (n + 1)

end A368711

/-! ## A368711.P12790792448033129711

`A368472(n+1)-A010054(A185069(n+1))`
-/

namespace A368711.P12790792448033129711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368472 (n + 1) - A010054 (A185069 (n + 1)).toNat

end

end A368711.P12790792448033129711

namespace A368711

/-- `A368472(n+1)-A010054(A185069(n+1))` -/
def P12790792448033129711.Spec : Prop :=
  ∀ n, P12790792448033129711.a n = A368711 (n + 1)

end A368711

/-! ## A368711.P13015017689988931398

`and(A051684(n+1), A368472(n+1))`
-/

namespace A368711.P13015017689988931398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051684 (n + 1)) (A368472 (n + 1))

end

end A368711.P13015017689988931398

namespace A368711

/-- `and(A051684(n+1), A368472(n+1))` -/
def P13015017689988931398.Spec : Prop :=
  ∀ n, P13015017689988931398.a n = A368711 (n + 1)

end A368711

/-! ## A368711.P17839123653856268722

`and(A294129(n+1), A368472(n+1))`
-/

namespace A368711.P17839123653856268722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A294129 (n + 1)) (A368472 (n + 1))

end

end A368711.P17839123653856268722

namespace A368711

/-- `and(A294129(n+1), A368472(n+1))` -/
def P17839123653856268722.Spec : Prop :=
  ∀ n, P17839123653856268722.a n = A368711 (n + 1)

end A368711

/-! ## A368711.P13479960853994876601

`and(A001189(n+1), A368472(n+1))`
-/

namespace A368711.P13479960853994876601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001189 (n + 1)) (A368472 (n + 1))

end

end A368711.P13479960853994876601

namespace A368711

/-- `and(A001189(n+1), A368472(n+1))` -/
def P13479960853994876601.Spec : Prop :=
  ∀ n, P13479960853994876601.a n = A368711 (n + 1)

end A368711

/-! ## A368711.P6378901964531492508

`A368472(n+1)%A000998(n)`
-/

namespace A368711.P6378901964531492508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368472 (n + 1)) (A000998 n)

end

end A368711.P6378901964531492508

namespace A368711

/-- `A368472(n+1)%A000998(n)` -/
def P6378901964531492508.Spec : Prop :=
  ∀ n, P6378901964531492508.a n = A368711 (n + 1)

end A368711

/-! ## A368711.P13585969809140587188

`and(A003817(n²), A368472(n+1))`
-/

namespace A368711.P13585969809140587188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (n ^ 2)) (A368472 (n + 1))

end

end A368711.P13585969809140587188

namespace A368711

/-- `and(A003817(n²), A368472(n+1))` -/
def P13585969809140587188.Spec : Prop :=
  ∀ n, P13585969809140587188.a n = A368711 (n + 1)

end A368711

/-! ## A368711.P6784859692564902712

`A368472(n+1)-A000007(n²)`
-/

namespace A368711.P6784859692564902712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368472 (n + 1) - A000007 (n ^ 2)

end

end A368711.P6784859692564902712

namespace A368711

/-- `A368472(n+1)-A000007(n²)` -/
def P6784859692564902712.Spec : Prop :=
  ∀ n, P6784859692564902712.a n = A368711 (n + 1)

end A368711

/-! ## A368711.P11279407731999578329

`A057427(n²)*A368472(n+1)`
-/

namespace A368711.P11279407731999578329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n ^ 2) * A368472 (n + 1)

end

end A368711.P11279407731999578329

namespace A368711

/-- `A057427(n²)*A368472(n+1)` -/
def P11279407731999578329.Spec : Prop :=
  ∀ n, P11279407731999578329.a n = A368711 (n + 1)

end A368711

/-! ## A368711.P6669856241464545015

`and(A038573(n²), A368472(n+1))`
-/

namespace A368711.P6669856241464545015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038573 (n ^ 2)) (A368472 (n + 1))

end

end A368711.P6669856241464545015

namespace A368711

/-- `and(A038573(n²), A368472(n+1))` -/
def P6669856241464545015.Spec : Prop :=
  ∀ n, P6669856241464545015.a n = A368711 (n + 1)

end A368711

/-!
# A368712: The maximal exponent in the prime factorization of the cubefree numbers.

The programs for A368712, the canonical program `A368712.P1920383267127000560` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368712 has offset 1).

The definition of A368712 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368712.P1920383267127000560

`A051903(A004709(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A368712

/-- `A051903(A004709(n+1))` -/
def P1920383267127000560.Spec : Prop :=
  ∀ n, P1920383267127000560.a n = A368712 (n + 1)

theorem P1920383267127000560.correct : P1920383267127000560.Spec := by
  intro n
  simp only [A368712, Nat.add_sub_cancel]

end A368712

/-! ## A368712.P12886591443052064227

`A061395(A358040(n+1))`
-/

namespace A368712.P12886591443052064227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A358040 (n + 1)).toNat

end

end A368712.P12886591443052064227

namespace A368712

/-- `A061395(A358040(n+1))` -/
def P12886591443052064227.Spec : Prop :=
  ∀ n, P12886591443052064227.a n = A368712 (n + 1)

end A368712

/-! ## A368712.P103953324188761927

`A325225(A358040(n+1)²)`
-/

namespace A368712.P103953324188761927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (A358040 (n + 1) ^ 2).toNat

end

end A368712.P103953324188761927

namespace A368712

/-- `A325225(A358040(n+1)²)` -/
def P103953324188761927.Spec : Prop :=
  ∀ n, P103953324188761927.a n = A368712 (n + 1)

end A368712

/-! ## A368712.P17328152042459664220

`A325225(A358040(n+1)^2)`
-/

namespace A368712.P17328152042459664220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (A358040 (n + 1) ^ 2).toNat

end

end A368712.P17328152042459664220

namespace A368712

/-- `A325225(A358040(n+1)^2)` -/
def P17328152042459664220.Spec : Prop :=
  ∀ n, P17328152042459664220.a n = A368712 (n + 1)

end A368712

/-! ## A368712.P16352218827355352147

`A051903(A160813(n+1)-A005117(n+1))`
-/

namespace A368712.P16352218827355352147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A160813 (n + 1) - A005117 (n + 1)).toNat

end

end A368712.P16352218827355352147

namespace A368712

/-- `A051903(A160813(n+1)-A005117(n+1))` -/
def P16352218827355352147.Spec : Prop :=
  ∀ n, P16352218827355352147.a n = A368712 (n + 1)

end A368712

/-! ## A368712.P8016383448092778814

`filter[A375766(n+1), A075439(#)]`
-/

namespace A368712.P8016383448092778814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075439 (f1 j).toNat = 1) n)

end

end A368712.P8016383448092778814

namespace A368712

/-- `filter[A375766(n+1), A075439(#)]` -/
def P8016383448092778814.Spec : Prop :=
  ∀ n, P8016383448092778814.a n = A368712 (n + 1)

end A368712

/-! ## A368712.P172873491247093269

`filter[A375766(n+1), A127693(#)]`
-/

namespace A368712.P172873491247093269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127693 (f1 j).toNat = 1) n)

end

end A368712.P172873491247093269

namespace A368712

/-- `filter[A375766(n+1), A127693(#)]` -/
def P172873491247093269.Spec : Prop :=
  ∀ n, P172873491247093269.a n = A368712 (n + 1)

end A368712

/-! ## A368712.P10911520914699485052

`filter[A391898(n+1), A076141(#)]`
-/

namespace A368712.P10911520914699485052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A076141 (f1 j).toNat = 1) n)

end

end A368712.P10911520914699485052

namespace A368712

/-- `filter[A391898(n+1), A076141(#)]` -/
def P10911520914699485052.Spec : Prop :=
  ∀ n, P10911520914699485052.a n = A368712 (n + 1)

end A368712

/-! ## A368712.P4208643279141148444

`filter[A391899(n+1), A076141(#)]`
-/

namespace A368712.P4208643279141148444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A076141 (f1 j).toNat = 1) n)

end

end A368712.P4208643279141148444

namespace A368712

/-- `filter[A391899(n+1), A076141(#)]` -/
def P4208643279141148444.Spec : Prop :=
  ∀ n, P4208643279141148444.a n = A368712 (n + 1)

end A368712

/-! ## A368712.P9795336797022611882

`A051903(record[∏{p}[n+1, gcd(n+1, #²)]])`
-/

namespace A368712.P9795336797022611882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.gcd (n + 1) (p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A368712.P9795336797022611882

namespace A368712

/-- `A051903(record[∏{p}[n+1, gcd(n+1, #²)]])` -/
def P9795336797022611882.Spec : Prop :=
  ∀ n, P9795336797022611882.a n = A368712 (n + 1)

end A368712

/-! ## A368712.P1029563400681913938

`A051903(record[A050985(n+1)])`
-/

namespace A368712.P1029563400681913938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A368712.P1029563400681913938

namespace A368712

/-- `A051903(record[A050985(n+1)])` -/
def P1029563400681913938.Spec : Prop :=
  ∀ n, P1029563400681913938.a n = A368712 (n + 1)

end A368712

/-! ## A368712.P17267145642259078034

`A185102(A004709(2*n+1-n))`
-/

namespace A368712.P17267145642259078034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185102 (A004709 (2 * n + 1 - n)).toNat

end

end A368712.P17267145642259078034

namespace A368712

/-- `A185102(A004709(2*n+1-n))` -/
def P17267145642259078034.Spec : Prop :=
  ∀ n, P17267145642259078034.a n = A368712 (n + 1)

end A368712

/-!
# A368713: The maximal exponent in the prime factorization of the nonsquarefree numbers.

The programs for A368713, the canonical program `A368713.P8093218634620274143` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368713 has offset 1).

The definition of A368713 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368713.P8093218634620274143

`A051903(A013929(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A368713

/-- `A051903(A013929(n+1))` -/
def P8093218634620274143.Spec : Prop :=
  ∀ n, P8093218634620274143.a n = A368713 (n + 1)

theorem P8093218634620274143.correct : P8093218634620274143.Spec := by
  intro n
  simp only [A368713, Nat.add_sub_cancel]

end A368713

/-! ## A368713.P2927731524331900239

`A067132(A084936(n+1))`
-/

namespace A368713.P2927731524331900239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (A084936 (n + 1)).toNat

end

end A368713.P2927731524331900239

namespace A368713

/-- `A067132(A084936(n+1))` -/
def P2927731524331900239.Spec : Prop :=
  ∀ n, P2927731524331900239.a n = A368713 (n + 1)

end A368713

/-! ## A368713.P15298729777585266410

`A051903(A368040(n+1))`
-/

namespace A368713.P15298729777585266410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A368040 (n + 1)).toNat

end

end A368713.P15298729777585266410

namespace A368713

/-- `A051903(A368040(n+1))` -/
def P15298729777585266410.Spec : Prop :=
  ∀ n, P15298729777585266410.a n = A368713 (n + 1)

end A368713

/-! ## A368713.P2908618338042424231

`A051903(lt[0, A105570(n)])`
-/

namespace A368713.P2908618338042424231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A368713.P2908618338042424231

namespace A368713

/-- `A051903(lt[0, A105570(n)])` -/
def P2908618338042424231.Spec : Prop :=
  ∀ n, P2908618338042424231.a n = A368713 (n + 1)

end A368713

/-! ## A368713.P9007992938703989232

`A051903(record[A105570(n+4)])`
-/

namespace A368713.P9007992938703989232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A368713.P9007992938703989232

namespace A368713

/-- `A051903(record[A105570(n+4)])` -/
def P9007992938703989232.Spec : Prop :=
  ∀ n, P9007992938703989232.a n = A368713 (n + 1)

end A368713

/-! ## A368713.P9700619879207151462

`A051903(comp[C(A083346(n+1), n)])`
-/

namespace A368713.P9700619879207151462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A083346 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A368713.P9700619879207151462

namespace A368713

/-- `A051903(comp[C(A083346(n+1), n)])` -/
def P9700619879207151462.Spec : Prop :=
  ∀ n, P9700619879207151462.a n = A368713 (n + 1)

end A368713

/-! ## A368713.P11387574964309377847

`A051903(lt[1, A008833(n+1)]+1)`
-/

namespace A368713.P11387574964309377847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A368713.P11387574964309377847

namespace A368713

/-- `A051903(lt[1, A008833(n+1)]+1)` -/
def P11387574964309377847.Spec : Prop :=
  ∀ n, P11387574964309377847.a n = A368713 (n + 1)

end A368713

/-! ## A368713.P6274297838756961162

`A051903(∪[A046790(n+1), A017113(n)])`
-/

namespace A368713.P6274297838756961162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A368713.P6274297838756961162

namespace A368713

/-- `A051903(∪[A046790(n+1), A017113(n)])` -/
def P6274297838756961162.Spec : Prop :=
  ∀ n, P6274297838756961162.a n = A368713 (n + 1)

end A368713

/-! ## A368713.P1090448644412881552

`A051903(A162966(n+2))`
-/

namespace A368713.P1090448644412881552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A162966 (n + 2)).toNat

end

end A368713.P1090448644412881552

namespace A368713

/-- `A051903(A162966(n+2))` -/
def P1090448644412881552.Spec : Prop :=
  ∀ n, P1090448644412881552.a n = A368713 (n + 1)

end A368713

/-!
# A368714: Numbers whose maximal exponent in their prime factorization is even.

The programs for A368714, there is no canonical definition to state claims against.
-/

/-! ## A368714.P15310935676052655078

`lt[0, A050513(A051903(n+1))]+1`
-/

namespace A368714.P15310935676052655078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050513 (A051903 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A368714.P15310935676052655078

/-! ## A368714.P17046834838031461155

`lt[A293456(A051903(n+1)+1), 2]+1`
-/

namespace A368714.P17046834838031461155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293456 (A051903 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A368714.P17046834838031461155

/-! ## A368714.P13610351273092146273

`eq[0, A381955(n+1)]+1`
-/

namespace A368714.P13610351273092146273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A368714.P13610351273092146273

/-! ## A368714.P13535362344038369855

`eq[1, A376139(n+1)]+1`
-/

namespace A368714.P13535362344038369855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376139 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A368714.P13535362344038369855

/-! ## A368714.P8928942958593695987

`lt[A375034(n+1), 1]+1`
-/

namespace A368714.P8928942958593695987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375034 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A368714.P8928942958593695987

/-! ## A368714.P12246424424254563282

`lt[val(42-A067132(n+1), 2), 1]+1`
-/

namespace A368714.P12246424424254563282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (42 - A067132 (n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A368714.P12246424424254563282

/-!
# A368715: Numbers that are not coprime to the maximal exponent in their prime factorization.

The programs for A368715, the canonical program `A368715.P15769954003463865528` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368715 has offset 1).

The definition of A368715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368715.P15769954003463865528

`lt[1, A381952(n+1)]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A368715

/-- `lt[1, A381952(n+1)]+1` -/
def P15769954003463865528.Spec : Prop :=
  ∀ n, (P15769954003463865528.a n : ℤ) = A368715 (n + 1)

theorem P15769954003463865528.correct : P15769954003463865528.Spec := by
  intro n
  simp only [A368715, Nat.add_sub_cancel]

end A368715

/-! ## A368715.P12141757377992785293

`A020725(lt[1, A381952(n+1)])`
-/

namespace A368715.P12141757377992785293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A368715.P12141757377992785293

namespace A368715

/-- `A020725(lt[1, A381952(n+1)])` -/
def P12141757377992785293.Spec : Prop :=
  ∀ n, P12141757377992785293.a n = A368715 (n + 1)

end A368715

/-! ## A368715.P12303071862339902235

`A137257(n+1)%A263925(n+1)²`
-/

namespace A368715.P12303071862339902235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137257 (n + 1)) (A263925 (n + 1) ^ 2)

end

end A368715.P12303071862339902235

namespace A368715

/-- `A137257(n+1)%A263925(n+1)²` -/
def P12303071862339902235.Spec : Prop :=
  ∀ n, P12303071862339902235.a n = A368715 (n + 1)

end A368715

/-! ## A368715.P6102111314223775294

`A137257(n+1)+A120325(A336792(n+1))`
-/

namespace A368715.P6102111314223775294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137257 (n + 1) + A120325 (A336792 (n + 1)).toNat

end

end A368715.P6102111314223775294

namespace A368715

/-- `A137257(n+1)+A120325(A336792(n+1))` -/
def P6102111314223775294.Spec : Prop :=
  ∀ n, P6102111314223775294.a n = A368715 (n + 1)

end A368715

/-! ## A368715.P13065792031470236482

`A137257(n+1)+A000007(A035608(2*n+1))`
-/

namespace A368715.P13065792031470236482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137257 (n + 1) + A000007 (A035608 (2 * n + 1)).toNat

end

end A368715.P13065792031470236482

namespace A368715

/-- `A137257(n+1)+A000007(A035608(2*n+1))` -/
def P13065792031470236482.Spec : Prop :=
  ∀ n, P13065792031470236482.a n = A368715 (n + 1)

end A368715

/-! ## A368715.P4671143917500944854

`A137257(n+1)+A007814(A139827(3*(n+1)))`
-/

namespace A368715.P4671143917500944854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137257 (n + 1) + A007814 (A139827 (3 * (n + 1))).toNat

end

end A368715.P4671143917500944854

namespace A368715

/-- `A137257(n+1)+A007814(A139827(3*(n+1)))` -/
def P4671143917500944854.Spec : Prop :=
  ∀ n, P4671143917500944854.a n = A368715 (n + 1)

end A368715

/-!
# A368716: a(n) = n! * Sum_{k=0..n} (-1)^(n-k) * k^3 / k!.

The programs for A368716, there is no canonical definition to state claims against.
-/

/-! ## A368716.P14826186742636205782

`n*(n²-a(n-1))` with `a(0)=0`
-/

namespace A368716.P14826186742636205782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ((n ^ 2 : ℤ) - a (n - 1))

end

end A368716.P14826186742636205782

/-! ## A368716.P12039057950069351029

`n^3-n*a(n-1)` with `a(0)=0`
-/

namespace A368716.P12039057950069351029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 3 : ℤ) - (n : ℤ) * a (n - 1)

end

end A368716.P12039057950069351029

/-! ## A368716.P17591578230336158925

`floor(n*(n*n-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A368716.P17591578230336158925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ((n * n : ℤ) - a (n - 1))

end

end A368716.P17591578230336158925

/-! ## A368716.P12625305610646574513

`(n-a(n-1)/n)*n*n` with `a(0)=0`
-/

namespace A368716.P12625305610646574513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((n : ℚ) - a (n - 1) / (n : ℚ)) * (n * n : ℚ)

end

end A368716.P12625305610646574513

/-! ## A368716.P14729793803739062127

`n*(∑[2*n]-(a(n-1)+n))` with `a(0)=0`
-/

namespace A368716.P14729793803739062127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + (n : ℤ)))

end

end A368716.P14729793803739062127

/-! ## A368716.P2636731940348475939

`n*(∑[2*n]-a(n-1)-n)` with `a(0)=0`
-/

namespace A368716.P2636731940348475939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1) - (n : ℤ))

end

end A368716.P2636731940348475939

/-! ## A368716.P13819404176272223824

`n*(1-(a(n-1)-n*n))-n` with `a(0)=0`
-/

namespace A368716.P13819404176272223824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (1 - (a (n - 1) - (n * n : ℤ))) - (n : ℤ)

end

end A368716.P13819404176272223824

/-!
# A368717: a(n) = n! * Sum_{k=0..n} (-1)^(n-k) * k^4 / k!.

The programs for A368717, there is no canonical definition to state claims against.
-/

/-! ## A368717.P8432589173812236743

`n*(n^3-a(n-1))` with `a(0)=0`
-/

namespace A368717.P8432589173812236743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ((n ^ 3 : ℤ) - a (n - 1))

end

end A368717.P8432589173812236743

/-! ## A368717.P11661764906614887527

`n²²-n*a(n-1)` with `a(0)=0`
-/

namespace A368717.P11661764906614887527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n ^ 2) ^ 2 : ℤ) - (n : ℤ) * a (n - 1)

end

end A368717.P11661764906614887527

/-! ## A368717.P15284662978356809917

`floor(n*(n*n*n-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A368717.P15284662978356809917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ((n * (n * n) : ℤ) - a (n - 1))

end

end A368717.P15284662978356809917

/-! ## A368717.P12040903729158270621

`n*n*(n*n-a(n-1)/n)` with `a(0)=0`
-/

namespace A368717.P12040903729158270621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * ((n : ℚ) * ((n * n : ℚ) - a (n - 1) / (n : ℚ)))

end

end A368717.P12040903729158270621

/-! ## A368717.P766752814522721832

`A002523(n)-xor(1, n*a(n-1))` with `a(0)=0`
-/

namespace A368717.P766752814522721832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002523 n - Int.xor 1 ((n : ℤ) * a (n - 1))

end

end A368717.P766752814522721832

/-!
# A368718: a(n) = n! * Sum_{k=0..n} (-1)^(n-k) * k^5 / k!.

The programs for A368718, there is no canonical definition to state claims against.
-/

/-! ## A368718.P17515404187961410556

`n*(n^4-a(n-1))` with `a(0)=0`
-/

namespace A368718.P17515404187961410556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ((n ^ 4 : ℤ) - a (n - 1))

end

end A368718.P17515404187961410556

/-! ## A368718.P8549051454165948228

`floor(n*(n²²-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A368718.P8549051454165948228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (((n ^ 2) ^ 2 : ℤ) - a (n - 1))

end

end A368718.P8549051454165948228

/-! ## A368718.P4215762813869191228

`n*round(n²²-a(n-1))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A368718.P4215762813869191228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (((n ^ 2) ^ 2 : ℤ) - a (n - 1))

end

end A368718.P4215762813869191228

/-! ## A368718.P8935819789861114448

`n*n²²-n*a(n-1)` with `a(0)=0`
-/

namespace A368718.P8935819789861114448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n * (n ^ 2) ^ 2 : ℤ) - (n : ℤ) * a (n - 1)

end

end A368718.P8935819789861114448

/-!
# A368719: a(n) = n! * Sum_{k=0..n} k^5 / k!.

The programs for A368719, the canonical program `A368719.P5897413852069234549` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368719 has offset 0).

The definition of A368719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368719.P5897413852069234549

`n*a(n-1)+n^5` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A368719

/-- `n*a(n-1)+n^5` -/
def P5897413852069234549.Spec : Prop :=
  ∀ n, (P5897413852069234549.a n : ℤ) = A368719 n

theorem P5897413852069234549.correct : P5897413852069234549.Spec := by
  intro n
  simp only [A368719]

end A368719

/-! ## A368719.P16938831950469593554

`lcm(n, a(n-1)+n^4)` with `a(0)=0`
-/

namespace A368719.P16938831950469593554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm n (a (n - 1) + n ^ 4)

end

end A368719.P16938831950469593554

namespace A368719

/-- `lcm(n, a(n-1)+n^4)` -/
def P16938831950469593554.Spec : Prop :=
  ∀ n, (P16938831950469593554.a n : ℤ) = A368719 n

end A368719

/-! ## A368719.P13398011603130650726

`n*(a(n-1)+n²²)` with `a(0)=0`
-/

namespace A368719.P13398011603130650726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (a (n - 1) + (n ^ 2) ^ 2)

end

end A368719.P13398011603130650726

namespace A368719

/-- `n*(a(n-1)+n²²)` -/
def P13398011603130650726.Spec : Prop :=
  ∀ n, (P13398011603130650726.a n : ℤ) = A368719 n

theorem P13398011603130650726.correct : P13398011603130650726.Spec := by
  intro n
  simp only [A368719, Nat.add_sub_cancel, A368719.P13398011603130650726.a, A368719.P5897413852069234549.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368719

/-! ## A368719.P370506048586216184

`n*(n^4-floor(-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A368719.P370506048586216184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ((n ^ 4 : ℤ) - (-a (n - 1)))

end

end A368719.P370506048586216184

namespace A368719

/-- `n*(n^4-floor(-a(n-1)))` -/
def P370506048586216184.Spec : Prop :=
  ∀ n, P370506048586216184.a n = A368719 n

end A368719

/-! ## A368719.P12443935019388351859

`n*(n^4-ceil(-a(n-1)))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A368719.P12443935019388351859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ((n ^ 4 : ℤ) - (-a (n - 1)))

end

end A368719.P12443935019388351859

namespace A368719

/-- `n*(n^4-ceil(-a(n-1)))` -/
def P12443935019388351859.Spec : Prop :=
  ∀ n, P12443935019388351859.a n = A368719 n

end A368719

/-! ## A368719.P14213635721258019092

`n*(n^4-round(-a(n-1)))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A368719.P14213635721258019092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ((n ^ 4 : ℤ) - (-a (n - 1)))

end

end A368719.P14213635721258019092

namespace A368719

/-- `n*(n^4-round(-a(n-1)))` -/
def P14213635721258019092.Spec : Prop :=
  ∀ n, P14213635721258019092.a n = A368719 n

end A368719

/-!
# A368725: a(n) = n! * Sum_{k=0..n} (-1)^(n-k) * k^n / k!.

The programs for A368725, there is no canonical definition to state claims against.
-/

/-! ## A368725.P17994612924177832590

`A368724(∑[4*n])`
-/

namespace A368725.P17994612924177832590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368724 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A368725.P17994612924177832590

/-! ## A368725.P17015281091401897445

`abs(A368724(A046092(n)))`
-/

namespace A368725.P17015281091401897445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A368724 (A046092 n).toNat|

end

end A368725.P17015281091401897445

/-!
# A368726: Number of non-isomorphic connected multiset partitions of weight n into singletons or pairs.

The programs for A368726, there is no canonical definition to state claims against.
-/

/-! ## A368726.P10284133133397392288

`A317710(A291857(n+2))`
-/

namespace A368726.P10284133133397392288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (A291857 (n + 2)).toNat

end

end A368726.P10284133133397392288

/-!
# A368727: Number of non-isomorphic connected multiset partitions of weight n into singletons or strict pairs.

The programs for A368727, there is no canonical definition to state claims against.
-/

/-! ## A368727.P9883101240402920336

`A361486(A108626(n))`
-/

namespace A368727.P9883101240402920336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361486 (A108626 n).toNat

end

end A368727.P9883101240402920336

/-! ## A368727.P13131243064606850270

`A350240(A151449(n))`
-/

namespace A368727.P13131243064606850270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350240 (A151449 n).toNat

end

end A368727.P13131243064606850270

/-! ## A368727.P17273561989149432685

`A204164(∑[A372212(n)])`
-/

namespace A368727.P17273561989149432685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A368727.P17273561989149432685

/-! ## A368727.P10389166318134499359

`A187496(3*n+2)+A146043((n+1)*C(9, C(n, 9)))`
-/

namespace A368727.P10389166318134499359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187496 (3 * n + 2) + A146043 ((n + 1) * Nat.choose 9 (Nat.choose n 9))

end

end A368727.P10389166318134499359

/-! ## A368727.P3536472622555324814

`A188021(n)+A057427(A001411(n))`
-/

namespace A368727.P3536472622555324814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188021 n + A057427 (A001411 n).toNat

end

end A368727.P3536472622555324814

/-!
# A368728: Numbers whose prime indices are 1, prime, or semiprime.

The programs for A368728, there is no canonical definition to state claims against.
-/

/-! ## A368728.P6311201660909578165

`lt[A340691(n+1), 3]+1`
-/

namespace A368728.P6311201660909578165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340691 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A368728.P6311201660909578165

/-! ## A368728.P16065915290436104038

`comp[∪[A368833(n+1), A004929(n)]]`
-/

namespace A368728.P16065915290436104038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368833 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004929 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A368728.P16065915290436104038

/-! ## A368728.P389096197027474525

`lt[A168036(A061395(n+1)), 2]+1`
-/

namespace A368728.P389096197027474525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (A061395 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A368728.P389096197027474525

/-! ## A368728.P3019333502124133860

`lt[A161916(2*n+1), A069893(n+1)]`
-/

namespace A368728.P3019333502124133860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161916 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368728.P3019333502124133860

/-! ## A368728.P6406269200515752237

`lt[A130654(A122135(n)), A069893(n+1)]`
-/

namespace A368728.P6406269200515752237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130654 (A122135 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368728.P6406269200515752237

/-!
# A368729: Numbers whose prime indices are prime or semiprime. MM-numbers of labeled multigraphs with loops and half-loops without isolated (uncovered) nodes.

The programs for A368729, there is no canonical definition to state claims against.
-/

/-! ## A368729.P16629465719021112590

`∩[2*n+1, A368728(n+1)]`
-/

namespace A368729.P16629465719021112590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368729.P16629465719021112590

/-! ## A368729.P12110488471030612709

`record[A000265(A368728(n+1))]`
-/

namespace A368729.P12110488471030612709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A368728 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368729.P12110488471030612709

/-! ## A368729.P583816670698757035

`filter[A368728(n+1), A000035(#)]`
-/

namespace A368729.P583816670698757035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A368729.P583816670698757035

/-! ## A368729.P3799540181551968587

`filter[A368728(n+1), A374134(#)]`
-/

namespace A368729.P3799540181551968587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A368729.P3799540181551968587

/-!
# A368730: Number of n-element sets of singletons or pairs of distinct elements of {1..n} with union {1..n}, or loop-graphs covering n vertices with n edges, such that it is not possible to choose a different element from each.

The programs for A368730, there is no canonical definition to state claims against.
-/

/-! ## A368730.P6544869104138690883

`A368596(n)+A368597(n)-A014068(n)`
-/

namespace A368730.P6544869104138690883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368596 n + A368597 n - A014068 n

end

end A368730.P6544869104138690883

/-! ## A368730.P6338453653631380987

`A093566(n)*A300667(A094788(n+2))`
-/

namespace A368730.P6338453653631380987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093566 n * A300667 (A094788 (n + 2)).toNat

end

end A368730.P6338453653631380987

/-! ## A368730.P3423597522996629658

`A026741(A129329(n)*A326451(2*n))`
-/

namespace A368730.P3423597522996629658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A129329 n * A326451 (2 * n)).toNat

end

end A368730.P3423597522996629658

/-!
# A368731: Number of non-isomorphic n-element sets of nonempty subsets of {1..n}.

The programs for A368731, there is no canonical definition to state claims against.
-/

/-! ## A368731.P10067664573235968697

`A371830(A052944(n))`
-/

namespace A368731.P10067664573235968697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371830 (A052944 n).toNat

end

end A368731.P10067664573235968697

/-! ## A368731.P2248812362376987489

`A371830(A132736(n))`
-/

namespace A368731.P2248812362376987489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371830 (A132736 n).toNat

end

end A368731.P2248812362376987489

/-! ## A368731.P17520326148371813123

`A371830(A000225(n)+n)`
-/

namespace A368731.P17520326148371813123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371830 (A000225 n + (n : ℤ)).toNat

end

end A368731.P17520326148371813123

/-! ## A368731.P2827937214030984950

`A371830(A000295(n+1))`
-/

namespace A368731.P2827937214030984950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371830 (A000295 (n + 1)).toNat

end

end A368731.P2827937214030984950

/-! ## A368731.P13709211312547164114

`A371830(A130103(n+1))`
-/

namespace A368731.P13709211312547164114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371830 (A130103 (n + 1)).toNat

end

end A368731.P13709211312547164114

/-!
# A368732: Primes whose index is one, another prime number, or a semiprime.

The programs for A368732, there is no canonical definition to state claims against.
-/

/-! ## A368732.P3445512081896177124

`A000040(A037143(n+1))`
-/

namespace A368732.P3445512081896177124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A037143 (n + 1)).toNat

end

end A368732.P3445512081896177124

/-! ## A368732.P10176923150021807348

`A008578(A037143(n+1)+1)`
-/

namespace A368732.P10176923150021807348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A037143 (n + 1) + 1).toNat

end

end A368732.P10176923150021807348

/-! ## A368732.P9026912169694677604

`A182986(A037143(n+1)+1)`
-/

namespace A368732.P9026912169694677604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A037143 (n + 1) + 1).toNat

end

end A368732.P9026912169694677604

/-! ## A368732.P2284573374572729600

`A324050(A037143(n+1)+1)`
-/

namespace A368732.P2284573374572729600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A037143 (n + 1) + 1).toNat

end

end A368732.P2284573374572729600

/-! ## A368732.P3540751274751881525

`A158611(A037143(n+1)+2)`
-/

namespace A368732.P3540751274751881525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A037143 (n + 1) + 2).toNat

end

end A368732.P3540751274751881525

/-! ## A368732.P15114844955715112498

`A073846(2*A037143(n+1))`
-/

namespace A368732.P15114844955715112498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A037143 (n + 1)).toNat

end

end A368732.P15114844955715112498

/-! ## A368732.P12557018615175490992

`A207790(2*A037143(n+1))`
-/

namespace A368732.P12557018615175490992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A037143 (n + 1)).toNat

end

end A368732.P12557018615175490992

/-! ## A368732.P144362868658359526

`A000040(eq[1, A102097(n+1)]+1)`
-/

namespace A368732.P144362868658359526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A368732.P144362868658359526

/-! ## A368732.P10742689323719575781

`A000040(lt[A216677(n+1), 2]+1)`
-/

namespace A368732.P10742689323719575781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216677 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A368732.P10742689323719575781

/-! ## A368732.P1944873084556735041

`A000040(lt[A300239(n+1), 2]+1)`
-/

namespace A368732.P1944873084556735041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300239 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A368732.P1944873084556735041

/-!
# A368733: a(n) = hypergeom([-1 - n, -n, 1 - n], [2, 3], -3).

The programs for A368733, there is no canonical definition to state claims against.
-/

/-! ## A368733.P5157807641554677623

`A111871(A304357(n+1))`
-/

namespace A368733.P5157807641554677623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111871 (A304357 (n + 1)).toNat

end

end A368733.P5157807641554677623

/-! ## A368733.P9595044138512814712

`A111871(A209621(n)+A034428(n))`
-/

namespace A368733.P9595044138512814712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111871 (A209621 n + A034428 n).toNat

end

end A368733.P9595044138512814712

/-!
# A368734: Four-column table read by rows where row n lists the entries of the 2 X 2 matrix M(n) used to form Bird tree and Drib tree rationals.

The programs for A368734, there is no canonical definition to state claims against.
-/

/-! ## A368734.P15746612976714469436

`A145171(A345282(n+2))`
-/

namespace A368734.P15746612976714469436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145171 (A345282 (n + 2)).toNat

end

end A368734.P15746612976714469436

/-! ## A368734.P6732369615668620739

`A140885(A350688(n))`
-/

namespace A368734.P6732369615668620739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140885 (A350688 n).toNat

end

end A368734.P6732369615668620739

/-! ## A368734.P6088679147012031725

`A176048(A215430(n+1))`
-/

namespace A368734.P6088679147012031725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176048 (A215430 (n + 1)).toNat

end

end A368734.P6088679147012031725

/-! ## A368734.P5762419761132246588

`A321101(A173510(n+1))`
-/

namespace A368734.P5762419761132246588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321101 (A173510 (n + 1)).toNat

end

end A368734.P5762419761132246588

/-! ## A368734.P17719196209159268450

`A190881(n+1)%A282518(n+2)`
-/

namespace A368734.P17719196209159268450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190881 (n + 1)) (A282518 (n + 2))

end

end A368734.P17719196209159268450

/-!
# A368736: a(n) = Sum_{k = 1..n} gcd(2*k+1, n).

The programs for A368736, the canonical program `A368736.P13188846224572175554` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368736 has offset 1).

The definition of A368736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368736.P2850620752137879841

`A106474(n)-A006579(n+1)`
-/

namespace A368736.P2850620752137879841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106474 n - A006579 (n + 1)

end

end A368736.P2850620752137879841

namespace A368736

/-- `A106474(n)-A006579(n+1)` -/
def P2850620752137879841.Spec : Prop :=
  ∀ n, P2850620752137879841.a n = A368736 (n + 1)

end A368736

/-! ## A368736.P13188846224572175554

`A000034(n)*A255655(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A368736

/-- `A000034(n)*A255655(n+1)` -/
def P13188846224572175554.Spec : Prop :=
  ∀ n, P13188846224572175554.a n = A368736 (n + 1)

theorem P13188846224572175554.correct : P13188846224572175554.Spec := by
  intro n
  simp only [A368736, Nat.add_sub_cancel]

end A368736

/-! ## A368736.P12779197728168951217

`A106475(n)+2*A006579(n+1)`
-/

namespace A368736.P12779197728168951217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106475 n + 2 * A006579 (n + 1)

end

end A368736.P12779197728168951217

namespace A368736

/-- `A106475(n)+2*A006579(n+1)` -/
def P12779197728168951217.Spec : Prop :=
  ∀ n, P12779197728168951217.a n = A368736 (n + 1)

end A368736

/-! ## A368736.P2068793357822326416

`A344372(n+1)/A001511(n+1)`
-/

namespace A368736.P2068793357822326416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344372 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A368736.P2068793357822326416

namespace A368736

/-- `A344372(n+1)/A001511(n+1)` -/
def P2068793357822326416.Spec : Prop :=
  ∀ n, P2068793357822326416.a n = (A368736 (n + 1) : ℚ)

end A368736

/-! ## A368736.P1741454257157109457

`gcd(A062803(n+1), A344372(n+1))`
-/

namespace A368736.P1741454257157109457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062803 (n + 1)) (A344372 (n + 1))

end

end A368736.P1741454257157109457

namespace A368736

/-- `gcd(A062803(n+1), A344372(n+1))` -/
def P1741454257157109457.Spec : Prop :=
  ∀ n, (P1741454257157109457.a n : ℤ) = A368736 (n + 1)

end A368736

/-! ## A368736.P8825702841600440961

`lcm(A006519(n+1), A255655(n+1))`
-/

namespace A368736.P8825702841600440961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A255655 (n + 1))

end

end A368736.P8825702841600440961

namespace A368736

/-- `lcm(A006519(n+1), A255655(n+1))` -/
def P8825702841600440961.Spec : Prop :=
  ∀ n, (P8825702841600440961.a n : ℤ) = A368736 (n + 1)

end A368736

/-! ## A368736.P6575131340348108333

`2*A018804(n+1)-A344372(n+1)`
-/

namespace A368736.P6575131340348108333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018804 (n + 1) - A344372 (n + 1)

end

end A368736.P6575131340348108333

namespace A368736

/-- `2*A018804(n+1)-A344372(n+1)` -/
def P6575131340348108333.Spec : Prop :=
  ∀ n, P6575131340348108333.a n = A368736 (n + 1)

end A368736

/-! ## A368736.P8316986964791146951

`∑{d}[n+1, A000010(#)*A000265((n+1)/#)]`
-/

namespace A368736.P8316986964791146951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368736.P8316986964791146951

namespace A368736

/-- `∑{d}[n+1, A000010(#)*A000265((n+1)/#)]` -/
def P8316986964791146951.Spec : Prop :=
  ∀ n, P8316986964791146951.a n = A368736 (n + 1)

end A368736

/-! ## A368736.P5982656592518948347

`∑{d}[n+1, A062570(#)*A193356((n+1)/#)]`
-/

namespace A368736.P5982656592518948347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368736.P5982656592518948347

namespace A368736

/-- `∑{d}[n+1, A062570(#)*A193356((n+1)/#)]` -/
def P5982656592518948347.Spec : Prop :=
  ∀ n, P5982656592518948347.a n = A368736 (n + 1)

end A368736

/-! ## A368736.P1557216152604507367

`∑{d}[n+1, A087003(#)*A245579((n+1)/#)]`
-/

namespace A368736.P1557216152604507367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A245579 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368736.P1557216152604507367

namespace A368736

/-- `∑{d}[n+1, A087003(#)*A245579((n+1)/#)]` -/
def P1557216152604507367.Spec : Prop :=
  ∀ n, P1557216152604507367.a n = A368736 (n + 1)

end A368736

/-! ## A368736.P17907291655648574602

`∑{d}[n+1, A067856(#)*A336475((n+1)/#)]`
-/

namespace A368736.P17907291655648574602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067856 d * A336475 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368736.P17907291655648574602

namespace A368736

/-- `∑{d}[n+1, A067856(#)*A336475((n+1)/#)]` -/
def P17907291655648574602.Spec : Prop :=
  ∀ n, P17907291655648574602.a n = A368736 (n + 1)

end A368736

/-! ## A368736.P4218179113561428544

`∑{d}[n+1, A109386(#)*A327276((n+1)/#)]`
-/

namespace A368736.P4218179113561428544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A109386 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368736.P4218179113561428544

namespace A368736

/-- `∑{d}[n+1, A109386(#)*A327276((n+1)/#)]` -/
def P4218179113561428544.Spec : Prop :=
  ∀ n, P4218179113561428544.a n = A368736 (n + 1)

end A368736

/-! ## A368736.P7045748264266711895

`∑{d}[n+1, A036987(#-1)*A255655((n+1)/#)]`
-/

namespace A368736.P7045748264266711895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A255655 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368736.P7045748264266711895

namespace A368736

/-- `∑{d}[n+1, A036987(#-1)*A255655((n+1)/#)]` -/
def P7045748264266711895.Spec : Prop :=
  ∀ n, P7045748264266711895.a n = A368736 (n + 1)

end A368736

/-! ## A368736.P2338490939217341675

`A018804(n+1)+A199084(n+1)-A193356(n+1)`
-/

namespace A368736.P2338490939217341675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) + (A199084 (n + 1) - A193356 (n + 1))

end

end A368736.P2338490939217341675

namespace A368736

/-- `A018804(n+1)+A199084(n+1)-A193356(n+1)` -/
def P2338490939217341675.Spec : Prop :=
  ∀ n, P2338490939217341675.a n = A368736 (n + 1)

end A368736

/-! ## A368736.P11584449068031674995

`A199084(n+1)+A344372(n+1)-A344371(n+1)`
-/

namespace A368736.P11584449068031674995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199084 (n + 1) + (A344372 (n + 1) - A344371 (n + 1))

end

end A368736.P11584449068031674995

namespace A368736

/-- `A199084(n+1)+A344372(n+1)-A344371(n+1)` -/
def P11584449068031674995.Spec : Prop :=
  ∀ n, P11584449068031674995.a n = A368736 (n + 1)

end A368736

/-! ## A368736.P3779311763619277590

`A062803(n+1)/A204988(n+1)`
-/

namespace A368736.P3779311763619277590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062803 (n + 1) : ℚ) / (A204988 (n + 1) : ℚ)

end

end A368736.P3779311763619277590

namespace A368736

/-- `A062803(n+1)/A204988(n+1)` -/
def P3779311763619277590.Spec : Prop :=
  ∀ n, P3779311763619277590.a n = (A368736 (n + 1) : ℚ)

end A368736

/-! ## A368736.P16542745503141610100

`A255655(A022998(n+1))`
-/

namespace A368736.P16542745503141610100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255655 (A022998 (n + 1)).toNat

end

end A368736.P16542745503141610100

namespace A368736

/-- `A255655(A022998(n+1))` -/
def P16542745503141610100.Spec : Prop :=
  ∀ n, P16542745503141610100.a n = A368736 (n + 1)

end A368736

/-! ## A368736.P13459608300281257004

`A255655(A257088(n+1))`
-/

namespace A368736.P13459608300281257004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255655 (A257088 (n + 1)).toNat

end

end A368736.P13459608300281257004

namespace A368736

/-- `A255655(A257088(n+1))` -/
def P13459608300281257004.Spec : Prop :=
  ∀ n, P13459608300281257004.a n = A368736 (n + 1)

end A368736

/-! ## A368736.P1612028504640881196

`A255655(A237420(n+1)+n+1)`
-/

namespace A368736.P1612028504640881196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255655 (A237420 (n + 1) + (n + 1 : ℤ)).toNat

end

end A368736.P1612028504640881196

namespace A368736

/-- `A255655(A237420(n+1)+n+1)` -/
def P1612028504640881196.Spec : Prop :=
  ∀ n, P1612028504640881196.a n = A368736 (n + 1)

end A368736

/-! ## A368736.P8082708218955411332

`A255655(2*(n+1))`
-/

namespace A368736.P8082708218955411332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255655 (2 * (n + 1))

end

end A368736.P8082708218955411332

namespace A368736

/-- `A255655(2*(n+1))` -/
def P8082708218955411332.Spec : Prop :=
  ∀ n, P8082708218955411332.a n = A368736 (n + 1)

end A368736

/-!
# A368737: a(n) = Sum_{k = 1..n} gcd(3*k, n).

The programs for A368737, there is no canonical definition to state claims against.
-/

/-! ## A368737.P17223980337754182712

`A018804(n+1)/A344372(n+1)*A368742(n+1)`
-/

namespace A368737.P17223980337754182712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℚ) / (A344372 (n + 1) : ℚ) * (A368742 (n + 1) : ℚ)

end

end A368737.P17223980337754182712

/-! ## A368737.P11482005336653311028

`A368742(2*(n+1))/4`
-/

namespace A368737.P11482005336653311028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368742 (2 * (n + 1)) : ℚ) / 4

end

end A368737.P11482005336653311028

/-! ## A368737.P2424867713524173363

`A008458(A018804(n+1))-A018804(3*(n+1))`
-/

namespace A368737.P2424867713524173363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A018804 (n + 1)).toNat - A018804 (3 * (n + 1))

end

end A368737.P2424867713524173363

/-! ## A368737.P15524318972890565898

`A008458(A018804(n+1))%A018804(3*n+3)`
-/

namespace A368737.P15524318972890565898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008458 (A018804 (n + 1)).toNat) (A018804 (3 * n + 3))

end

end A368737.P15524318972890565898

/-!
# A368738: a(n) = Sum_{k = 1..n} gcd(3*k + 1, n).

The programs for A368738, the canonical program `A368738.P15555068762873214386` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368738 has offset 1).

The definition of A368738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368738.P15555068762873214386

`∑{d}[n+1, A000010(#)*A038502((n+1)/#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A368738

/-- `∑{d}[n+1, A000010(#)*A038502((n+1)/#)]` -/
def P15555068762873214386.Spec : Prop :=
  ∀ n, P15555068762873214386.a n = A368738 (n + 1)

theorem P15555068762873214386.correct : P15555068762873214386.Spec := by
  intro n
  simp only [A368738, Nat.add_sub_cancel]

end A368738

/-! ## A368738.P5631738608896063409

`gcd(A008585(A018804(n+1)), A018804(3*(n+1)))`
-/

namespace A368738.P5631738608896063409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008585 (A018804 (n + 1)).toNat) (A018804 (3 * (n + 1)))

end

end A368738.P5631738608896063409

namespace A368738

/-- `gcd(A008585(A018804(n+1)), A018804(3*(n+1)))` -/
def P5631738608896063409.Spec : Prop :=
  ∀ n, (P5631738608896063409.a n : ℤ) = A368738 (n + 1)

end A368738

/-! ## A368738.P12900997755411576408

`gcd(A368737(n+1), A368739(A008458(2*(n+1))))`
-/

namespace A368738.P12900997755411576408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A368737 (n + 1)) (A368739 (A008458 (2 * (n + 1))).toNat)

end

end A368738.P12900997755411576408

namespace A368738

/-- `gcd(A368737(n+1), A368739(A008458(2*(n+1))))` -/
def P12900997755411576408.Spec : Prop :=
  ∀ n, (P12900997755411576408.a n : ℤ) = A368738 (n + 1)

end A368738

/-!
# A368739: a(n) = Sum_{k = 1..n} gcd(4*k, n).

The programs for A368739, the canonical program `A368739.P7919696125845404475` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368739 has offset 1).

The definition of A368739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368739.P7919696125845404475

`A000034(n)*A062803(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A368739

/-- `A000034(n)*A062803(n+1)` -/
def P7919696125845404475.Spec : Prop :=
  ∀ n, P7919696125845404475.a n = A368739 (n + 1)

theorem P7919696125845404475.correct : P7919696125845404475.Spec := by
  intro n
  simp only [A368739, Nat.add_sub_cancel]

end A368739

/-! ## A368739.P13289434105997612827

`(A000035(n)+1)*A062803(n+1)`
-/

namespace A368739.P13289434105997612827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A062803 (n + 1)

end

end A368739.P13289434105997612827

namespace A368739

/-- `(A000035(n)+1)*A062803(n+1)` -/
def P13289434105997612827.Spec : Prop :=
  ∀ n, P13289434105997612827.a n = A368739 (n + 1)

end A368739

/-! ## A368739.P14149476956411803517

`A040001(n+1)*A062803(n+1)`
-/

namespace A368739.P14149476956411803517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A062803 (n + 1)

end

end A368739.P14149476956411803517

namespace A368739

/-- `A040001(n+1)*A062803(n+1)` -/
def P14149476956411803517.Spec : Prop :=
  ∀ n, P14149476956411803517.a n = A368739 (n + 1)

end A368739

/-! ## A368739.P6164195345724471084

`A062803(n+1)*A134451(n+1)`
-/

namespace A368739.P6164195345724471084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062803 (n + 1) * A134451 (n + 1)

end

end A368739.P6164195345724471084

namespace A368739

/-- `A062803(n+1)*A134451(n+1)` -/
def P6164195345724471084.Spec : Prop :=
  ∀ n, P6164195345724471084.a n = A368739 (n + 1)

end A368739

/-! ## A368739.P4861384081799976887

`Δ[A001651(n+1)]*A062803(n+1)`
-/

namespace A368739.P4861384081799976887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A062803 (n + 1)

end

end A368739.P4861384081799976887

namespace A368739

/-- `Δ[A001651(n+1)]*A062803(n+1)` -/
def P4861384081799976887.Spec : Prop :=
  ∀ n, P4861384081799976887.a n = A368739 (n + 1)

end A368739

/-! ## A368739.P12017979373878933372

`A000034(n)²*A344371(A066043(n+1))`
-/

namespace A368739.P12017979373878933372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2 * A344371 (A066043 (n + 1)).toNat

end

end A368739.P12017979373878933372

namespace A368739

/-- `A000034(n)²*A344371(A066043(n+1))` -/
def P12017979373878933372.Spec : Prop :=
  ∀ n, P12017979373878933372.a n = A368739 (n + 1)

end A368739

/-! ## A368739.P9446309565745309408

`A327767(n+1)²*A344371(A066043(n+1))`
-/

namespace A368739.P9446309565745309408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327767 (n + 1) ^ 2 * A344371 (A066043 (n + 1)).toNat

end

end A368739.P9446309565745309408

namespace A368739

/-- `A327767(n+1)²*A344371(A066043(n+1))` -/
def P9446309565745309408.Spec : Prop :=
  ∀ n, P9446309565745309408.a n = A368739 (n + 1)

end A368739

/-! ## A368739.P8696477173031518392

`A022998(A062803(n+1))`
-/

namespace A368739.P8696477173031518392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A062803 (n + 1)).toNat

end

end A368739.P8696477173031518392

namespace A368739

/-- `A022998(A062803(n+1))` -/
def P8696477173031518392.Spec : Prop :=
  ∀ n, P8696477173031518392.a n = A368739 (n + 1)

end A368739

/-! ## A368739.P12691396404150882360

`A323072(2*A062803(n+1))`
-/

namespace A368739.P12691396404150882360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323072 (2 * A062803 (n + 1)).toNat

end

end A368739.P12691396404150882360

namespace A368739

/-- `A323072(2*A062803(n+1))` -/
def P12691396404150882360.Spec : Prop :=
  ∀ n, P12691396404150882360.a n = A368739 (n + 1)

end A368739

/-!
# A368741: a(n) = Sum_{k = 1..n} gcd(5*k + 1, n).

The programs for A368741, the canonical program `A368741.P3043197867533134676` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368741 has offset 1).

The definition of A368741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368741.P3043197867533134676

`∑{d}[n+1, A000010(#)*A132739((n+1)/#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A368741

/-- `∑{d}[n+1, A000010(#)*A132739((n+1)/#)]` -/
def P3043197867533134676.Spec : Prop :=
  ∀ n, P3043197867533134676.a n = A368741 (n + 1)

theorem P3043197867533134676.correct : P3043197867533134676.Spec := by
  intro n
  simp only [A368741, Nat.add_sub_cancel]

end A368741

/-!
# A368742: a(n) = Sum_{k = 1..n} gcd(6*k, n).

The programs for A368742, there is no canonical definition to state claims against.
-/

/-! ## A368742.P2504057109075612303

`A344372(n+1)*A368737(n+1)/A018804(n+1)`
-/

namespace A368742.P2504057109075612303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344372 (n + 1) * A368737 (n + 1) : ℚ) / (A018804 (n + 1) : ℚ)

end

end A368742.P2504057109075612303

/-! ## A368742.P4877577891885374582

`∑{d}[n+1, A036987(#-1)*A368737((n+1)/#)]`
-/

namespace A368742.P4877577891885374582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A368737 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368742.P4877577891885374582

/-! ## A368742.P9771300662064789612

`A008586(A368737(n+1))-A368737(2*(n+1))`
-/

namespace A368742.P9771300662064789612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A368737 (n + 1)).toNat - A368737 (2 * (n + 1))

end

end A368742.P9771300662064789612

/-!
# A368743: a(n) = Sum_{1 <= i, j <= n} gcd(i, j, n)^3.

The programs for A368743, the canonical program `A368743.P10210257910363366697` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368743 has offset 1).

The definition of A368743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368743.P6453490414050395834

`∑{d}[n+1, A000010(#)*A020478((n+1)/#)]`
-/

namespace A368743.P6453490414050395834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A020478 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368743.P6453490414050395834

namespace A368743

/-- `∑{d}[n+1, A000010(#)*A020478((n+1)/#)]` -/
def P6453490414050395834.Spec : Prop :=
  ∀ n, P6453490414050395834.a n = A368743 (n + 1)

end A368743

/-! ## A368743.P13299073750256866539

`∑{d}[n+1, A000056(#)*A069097((n+1)/#)]`
-/

namespace A368743.P13299073750256866539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A069097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368743.P13299073750256866539

namespace A368743

/-- `∑{d}[n+1, A000056(#)*A069097((n+1)/#)]` -/
def P13299073750256866539.Spec : Prop :=
  ∀ n, P13299073750256866539.a n = A368743 (n + 1)

end A368743

/-! ## A368743.P10210257910363366697

`∑{d}[n+1, A001158(#)*A321322((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A368743

/-- `∑{d}[n+1, A001158(#)*A321322((n+1)/#)]` -/
def P10210257910363366697.Spec : Prop :=
  ∀ n, P10210257910363366697.a n = A368743 (n + 1)

theorem P10210257910363366697.correct : P10210257910363366697.Spec := by
  intro n
  simp only [A368743, Nat.add_sub_cancel]

end A368743

/-! ## A368743.P17777872179475244216

`∑{d}[n+1, A002618(#)*A343497((n+1)/#)]`
-/

namespace A368743.P17777872179475244216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A343497 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368743.P17777872179475244216

namespace A368743

/-- `∑{d}[n+1, A002618(#)*A343497((n+1)/#)]` -/
def P17777872179475244216.Spec : Prop :=
  ∀ n, P17777872179475244216.a n = A368743 (n + 1)

end A368743

/-! ## A368743.P6540880277364948847

`∑{d}[n+1, A063445(#)*A328259((n+1)/#)]`
-/

namespace A368743.P6540880277364948847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063445 d * A328259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368743.P6540880277364948847

namespace A368743

/-- `∑{d}[n+1, A063445(#)*A328259((n+1)/#)]` -/
def P6540880277364948847.Spec : Prop :=
  ∀ n, P6540880277364948847.a n = A368743 (n + 1)

end A368743

/-! ## A368743.P16804471456495962885

`∑{d}[n+1, A029935(#)*A373061((n+1)/#)]`
-/

namespace A368743.P16804471456495962885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A373061 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368743.P16804471456495962885

namespace A368743

/-- `∑{d}[n+1, A029935(#)*A373061((n+1)/#)]` -/
def P16804471456495962885.Spec : Prop :=
  ∀ n, P16804471456495962885.a n = A368743 (n + 1)

end A368743

/-! ## A368743.P12636326852492813369

`∑{d}[n+1, A068963(#)*A338164((n+1)/#)]`
-/

namespace A368743.P12636326852492813369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068963 d * A338164 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368743.P12636326852492813369

namespace A368743

/-- `∑{d}[n+1, A068963(#)*A338164((n+1)/#)]` -/
def P12636326852492813369.Spec : Prop :=
  ∀ n, P12636326852492813369.a n = A368743 (n + 1)

end A368743

/-! ## A368743.P2356369900575900655

`∑{d}[n+1, A053191(#)*A360428((n+1)/#)]`
-/

namespace A368743.P2356369900575900655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A360428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368743.P2356369900575900655

namespace A368743

/-- `∑{d}[n+1, A053191(#)*A360428((n+1)/#)]` -/
def P2356369900575900655.Spec : Prop :=
  ∀ n, P2356369900575900655.a n = A368743 (n + 1)

end A368743

/-! ## A368743.P1520208851651225734

`∑{d}[n+1, A341772(#)*A350156((n+1)/#)]`
-/

namespace A368743.P1520208851651225734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341772 d * A350156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368743.P1520208851651225734

namespace A368743

/-- `∑{d}[n+1, A341772(#)*A350156((n+1)/#)]` -/
def P1520208851651225734.Spec : Prop :=
  ∀ n, P1520208851651225734.a n = A368743 (n + 1)

end A368743

/-!
# A368744: a(n) = Sum_{d|n} (-1)^(d+1)*phi(d), where phi(n) = A000010(n).

The programs for A368744, the canonical program `A368744.P6947469571873636079` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368744 has offset 1).

The definition of A368744 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368744.P6947469571873636079

`(2/A006519(n+1)-1)*(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A368744

/-- `(2/A006519(n+1)-1)*(n+1)` -/
def P6947469571873636079.Spec : Prop :=
  ∀ n, P6947469571873636079.a n = (A368744 (n + 1) : ℚ)

end A368744

/-! ## A368744.P350541003398981716

`A129343(n+1)-n`
-/

namespace A368744.P350541003398981716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129343 (n + 1) - (n : ℤ)

end

end A368744.P350541003398981716

namespace A368744

/-- `A129343(n+1)-n` -/
def P350541003398981716.Spec : Prop :=
  ∀ n, P350541003398981716.a n = A368744 (n + 1)

end A368744

/-! ## A368744.P18185476590670577232

`2*A000265(n+1)-(n+1)`
-/

namespace A368744.P18185476590670577232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000265 (n + 1) - (n + 1 : ℤ)

end

end A368744.P18185476590670577232

namespace A368744

/-- `2*A000265(n+1)-(n+1)` -/
def P18185476590670577232.Spec : Prop :=
  ∀ n, P18185476590670577232.a n = A368744 (n + 1)

end A368744

/-! ## A368744.P9735465143178084204

`n+1-2*A331739(n+1)`
-/

namespace A368744.P9735465143178084204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A331739 (n + 1)

end

end A368744.P9735465143178084204

namespace A368744

/-- `n+1-2*A331739(n+1)` -/
def P9735465143178084204.Spec : Prop :=
  ∀ n, P9735465143178084204.a n = A368744 (n + 1)

end A368744

/-! ## A368744.P10688779347446281834

`A016813(A025480(n))-n`
-/

namespace A368744.P10688779347446281834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A025480 n).toNat - (n : ℤ)

end

end A368744.P10688779347446281834

namespace A368744

/-- `A016813(A025480(n))-n` -/
def P10688779347446281834.Spec : Prop :=
  ∀ n, P10688779347446281834.a n = A368744 (n + 1)

end A368744

/-! ## A368744.P12367347832554604772

`A005408(A153733(n))-n`
-/

namespace A368744.P12367347832554604772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A153733 n).toNat - (n : ℤ)

end

end A368744.P12367347832554604772

namespace A368744

/-- `A005408(A153733(n))-n` -/
def P12367347832554604772.Spec : Prop :=
  ∀ n, P12367347832554604772.a n = A368744 (n + 1)

end A368744

/-! ## A368744.P7878495219512420453

`A000265(A339597(n))-n`
-/

namespace A368744.P7878495219512420453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A339597 n).toNat - (n : ℤ)

end

end A368744.P7878495219512420453

namespace A368744

/-- `A000265(A339597(n))-n` -/
def P7878495219512420453.Spec : Prop :=
  ∀ n, P7878495219512420453.a n = A368744 (n + 1)

end A368744

/-! ## A368744.P9499900768803598200

`A004273(A000265(n+1))-n`
-/

namespace A368744.P9499900768803598200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A000265 (n + 1)).toNat - (n : ℤ)

end

end A368744.P9499900768803598200

namespace A368744

/-- `A004273(A000265(n+1))-n` -/
def P9499900768803598200.Spec : Prop :=
  ∀ n, P9499900768803598200.a n = A368744 (n + 1)

end A368744

/-! ## A368744.P5337425888826646325

`A331739(n+1)+A328154(n+1)`
-/

namespace A368744.P5337425888826646325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331739 (n + 1) + A328154 (n + 1)

end

end A368744.P5337425888826646325

namespace A368744

/-- `A331739(n+1)+A328154(n+1)` -/
def P5337425888826646325.Spec : Prop :=
  ∀ n, P5337425888826646325.a n = A368744 (n + 1)

end A368744

/-! ## A368744.P6929871794515232670

`A000265(n+1)-A331739(n+1)`
-/

namespace A368744.P6929871794515232670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) - A331739 (n + 1)

end

end A368744.P6929871794515232670

namespace A368744

/-- `A000265(n+1)-A331739(n+1)` -/
def P6929871794515232670.Spec : Prop :=
  ∀ n, P6929871794515232670.a n = A368744 (n + 1)

end A368744

/-! ## A368744.P6844953531228939826

`A153733(n)+1-A331739(n+1)`
-/

namespace A368744.P6844953531228939826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n + (1 - A331739 (n + 1))

end

end A368744.P6844953531228939826

namespace A368744

/-- `A153733(n)+1-A331739(n+1)` -/
def P6844953531228939826.Spec : Prop :=
  ∀ n, P6844953531228939826.a n = A368744 (n + 1)

end A368744

/-! ## A368744.P7419145858705594265

`(1-A135481(n))*A000265(n+1)`
-/

namespace A368744.P7419145858705594265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A135481 n) * A000265 (n + 1)

end

end A368744.P7419145858705594265

namespace A368744

/-- `(1-A135481(n))*A000265(n+1)` -/
def P7419145858705594265.Spec : Prop :=
  ∀ n, P7419145858705594265.a n = A368744 (n + 1)

end A368744

/-! ## A368744.P1831114437953112539

`A042948(A000265(2*(n+1)))-n`
-/

namespace A368744.P1831114437953112539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A000265 (2 * (n + 1))).toNat - (n : ℤ)

end

end A368744.P1831114437953112539

namespace A368744

/-- `A042948(A000265(2*(n+1)))-n` -/
def P1831114437953112539.Spec : Prop :=
  ∀ n, P1831114437953112539.a n = A368744 (n + 1)

end A368744

/-! ## A368744.P13249725298942811101

`A004273(A171435(2*(n+1)))-n`
-/

namespace A368744.P13249725298942811101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A171435 (2 * (n + 1))).toNat - (n : ℤ)

end

end A368744.P13249725298942811101

namespace A368744

/-- `A004273(A171435(2*(n+1)))-n` -/
def P13249725298942811101.Spec : Prop :=
  ∀ n, P13249725298942811101.a n = A368744 (n + 1)

end A368744

/-! ## A368744.P2182083423220544441

`A000265(n+1)+A153733(n)-n`
-/

namespace A368744.P2182083423220544441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) + (A153733 n - (n : ℤ))

end

end A368744.P2182083423220544441

namespace A368744

/-- `A000265(n+1)+A153733(n)-n` -/
def P2182083423220544441.Spec : Prop :=
  ∀ n, P2182083423220544441.a n = A368744 (n + 1)

end A368744

/-! ## A368744.P1108496112125758062

`∑{d}[n+1, A062570(#)*A327767((n+1)/#)]`
-/

namespace A368744.P1108496112125758062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A327767 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368744.P1108496112125758062

namespace A368744

/-- `∑{d}[n+1, A062570(#)*A327767((n+1)/#)]` -/
def P1108496112125758062.Spec : Prop :=
  ∀ n, P1108496112125758062.a n = A368744 (n + 1)

end A368744

/-! ## A368744.P11853719787918562422

`A005843(A000265(A005843(n+1)))-(n+1)`
-/

namespace A368744.P11853719787918562422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000265 (A005843 (n + 1)).toNat).toNat - (n + 1 : ℤ)

end

end A368744.P11853719787918562422

namespace A368744

/-- `A005843(A000265(A005843(n+1)))-(n+1)` -/
def P11853719787918562422.Spec : Prop :=
  ∀ n, P11853719787918562422.a n = A368744 (n + 1)

end A368744

/-! ## A368744.P12770097293558215301

`A264596(n+1)+A025480(n)-A264596(n)`
-/

namespace A368744.P12770097293558215301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264596 (n + 1) + (A025480 n - A264596 n)

end

end A368744.P12770097293558215301

namespace A368744

/-- `A264596(n+1)+A025480(n)-A264596(n)` -/
def P12770097293558215301.Spec : Prop :=
  ∀ n, P12770097293558215301.a n = A368744 (n + 1)

end A368744

/-! ## A368744.P3116539628065321809

`A163575(n+1)+A331739(n+2)-A331739(n+1)`
-/

namespace A368744.P3116539628065321809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (n + 1) + (A331739 (n + 2) - A331739 (n + 1))

end

end A368744.P3116539628065321809

namespace A368744

/-- `A163575(n+1)+A331739(n+2)-A331739(n+1)` -/
def P3116539628065321809.Spec : Prop :=
  ∀ n, P3116539628065321809.a n = A368744 (n + 1)

end A368744

/-! ## A368744.P13644370943089561041

`A318578(A030101(A030101(n+1)))-n`
-/

namespace A368744.P13644370943089561041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318578 (A030101 (A030101 (n + 1)).toNat).toNat - (n : ℤ)

end

end A368744.P13644370943089561041

namespace A368744

/-- `A318578(A030101(A030101(n+1)))-n` -/
def P13644370943089561041.Spec : Prop :=
  ∀ n, P13644370943089561041.a n = A368744 (n + 1)

end A368744

/-!
# A368745: Triangular array read by rows: T(n, k) is the number of n X 2 Young tableaux with k vertical walls.

The programs for A368745, the canonical program `A368745.P15289978267782018387` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368745 has offset 0).

The definition of A368745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6836 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368745.P15289978267782018387

`A074909(n)*A168256(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A368745

/-- `A074909(n)*A168256(n)` -/
def P15289978267782018387.Spec : Prop :=
  ∀ n, P15289978267782018387.a n = A368745 n

theorem P15289978267782018387.correct : P15289978267782018387.Spec := by
  intro n
  simp only [A368745]

end A368745

/-! ## A368745.P14132559271266537955

`A000108(A003056(n))*A074909(n)`
-/

namespace A368745.P14132559271266537955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A003056 n).toNat * A074909 n

end

end A368745.P14132559271266537955

namespace A368745

/-- `A000108(A003056(n))*A074909(n)` -/
def P14132559271266537955.Spec : Prop :=
  ∀ n, P14132559271266537955.a n = A368745 n

end A368745

/-! ## A368745.P14484212199300593285

`A000108(A003056(n))*A135278((n-1)%(n+1))`
-/

namespace A368745.P14484212199300593285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A003056 n).toNat * A135278 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A368745.P14484212199300593285

namespace A368745

/-- `A000108(A003056(n))*A135278((n-1)%(n+1))` -/
def P14484212199300593285.Spec : Prop :=
  ∀ n, P14484212199300593285.a n = A368745 n

end A368745

/-! ## A368745.P18442655870836068027

`A356546(n)/A004736(n+1)`
-/

namespace A368745.P18442655870836068027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356546 n : ℚ) / (A004736 (n + 1) : ℚ)

end

end A368745.P18442655870836068027

namespace A368745

/-- `A356546(n)/A004736(n+1)` -/
def P18442655870836068027.Spec : Prop :=
  ∀ n, P18442655870836068027.a n = (A368745 n : ℚ)

end A368745

/-! ## A368745.P9939985816694561464

`A069466(n)/A093375(n+1)`
-/

namespace A368745.P9939985816694561464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069466 n : ℚ) / (A093375 (n + 1) : ℚ)

end

end A368745.P9939985816694561464

namespace A368745

/-- `A069466(n)/A093375(n+1)` -/
def P9939985816694561464.Spec : Prop :=
  ∀ n, P9939985816694561464.a n = (A368745 n : ℚ)

end A368745

/-!
# A368746: Compositions (ordered partitions) of n into odd parts where the first part must be a maximal part.

The programs for A368746, there is no canonical definition to state claims against.
-/

/-! ## A368746.P59520156545685465

`A002024(A000602(n+1))`
-/

namespace A368746.P59520156545685465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A000602 (n + 1)).toNat

end

end A368746.P59520156545685465

/-! ## A368746.P3957741817441219393

`A000194(2*A000602(n+1))`
-/

namespace A368746.P3957741817441219393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * A000602 (n + 1)).toNat

end

end A368746.P3957741817441219393

/-! ## A368746.P9070122510503415755

`A137735(A104882(n+1)-n)`
-/

namespace A368746.P9070122510503415755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A104882 (n + 1) - (n : ℤ)).toNat

end

end A368746.P9070122510503415755

/-! ## A368746.P2149721773951615534

`A111654(A341126(n+9)+A032305(n+1))`
-/

namespace A368746.P2149721773951615534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A341126 (n + 9) + A032305 (n + 1)).toNat

end

end A368746.P2149721773951615534

/-! ## A368746.P2303636726240559669

`A111654(A341145(2*(n+1))+A032305(n+1))`
-/

namespace A368746.P2303636726240559669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A341145 (2 * (n + 1) + 39) + A032305 (n + 1)).toNat

end

end A368746.P2303636726240559669

/-!
# A368747: Self-describing bit sequences from the beta transform.

The programs for A368747, there is no canonical definition to state claims against.
-/

/-! ## A368747.P7204748282102444624

`A038572(A275692(n+2))%A250120(n)`
-/

namespace A368747.P7204748282102444624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038572 (A275692 (n + 2)).toNat) (A250120 n)

end

end A368747.P7204748282102444624

/-! ## A368747.P14555593962711451218

`A038572(A275692(n+2)%A139250(n+1))`
-/

namespace A368747.P14555593962711451218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.tmod (A275692 (n + 2)) (A139250 (n + 1))).toNat

end

end A368747.P14555593962711451218

/-! ## A368747.P7430271542967433199

`A038572(A275692(n+2)-A171386(3*(n+1)))`
-/

namespace A368747.P7430271542967433199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A275692 (n + 2) - A171386 (3 * (n + 1))).toNat

end

end A368747.P7430271542967433199

/-! ## A368747.P5152351078605367268

`A038572(xor(A171386(3*(n+1)), A275692(n+2)))`
-/

namespace A368747.P5152351078605367268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.xor (A171386 (3 * (n + 1))) (A275692 (n + 2))).toNat

end

end A368747.P5152351078605367268

/-! ## A368747.P12998828944776815427

`A004526(A275692(n+2))`
-/

namespace A368747.P12998828944776815427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A275692 (n + 2)).toNat

end

end A368747.P12998828944776815427

/-! ## A368747.P11689514259842744828

`A001057(A275692(n+2)-1)`
-/

namespace A368747.P11689514259842744828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A275692 (n + 2) - 1).toNat

end

end A368747.P11689514259842744828

/-! ## A368747.P16982385947089046524

`A110654(A275692(n+2)-1)`
-/

namespace A368747.P16982385947089046524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A275692 (n + 2) - 1).toNat

end

end A368747.P16982385947089046524

/-! ## A368747.P10081914836122840948

`A032742(A275692(n+2))%A008000(n)`
-/

namespace A368747.P10081914836122840948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032742 (A275692 (n + 2)).toNat) (A008000 n)

end

end A368747.P10081914836122840948

/-! ## A368747.P7892634447858896331

`A026741(A275692(n+2)%A062136(n))`
-/

namespace A368747.P7892634447858896331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A275692 (n + 2)) (A062136 n)).toNat

end

end A368747.P7892634447858896331

/-! ## A368747.P4737106838047039406

`A026741(A275692(n+2)-A010051(2*(n+1)))`
-/

namespace A368747.P4737106838047039406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A275692 (n + 2) - A010051 (2 * (n + 1))).toNat

end

end A368747.P4737106838047039406

/-! ## A368747.P11073332365432861277

`A026741(A275692(n+2))%A267703(n+1)`
-/

namespace A368747.P11073332365432861277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 (A275692 (n + 2)).toNat) (A267703 (n + 1))

end

end A368747.P11073332365432861277

/-!
# A368748: a(n) is the number of numbers between prime(n) and prime(n+1) that are not prime powers.

The programs for A368748, the canonical program `A368748.P2060391924120103936` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368748 has offset 1).

The definition of A368748 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A080101, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368748.P2060391924120103936

`A001223(n+1)-A080101(n+1)-1`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A368748

/-- `A001223(n+1)-A080101(n+1)-1` -/
def P2060391924120103936.Spec : Prop :=
  ∀ n, P2060391924120103936.a n = A368748 (n + 1)

theorem P2060391924120103936.correct : P2060391924120103936.Spec := by
  intro n
  simp only [A368748, Nat.add_sub_cancel]

end A368748

/-! ## A368748.P15647449413966363422

`A373643(n+1)+A061398(n+1)`
-/

namespace A368748.P15647449413966363422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373643 (n + 1) + A061398 (n + 1)

end

end A368748.P15647449413966363422

namespace A368748

/-- `A373643(n+1)+A061398(n+1)` -/
def P15647449413966363422.Spec : Prop :=
  ∀ n, P15647449413966363422.a n = A368748 (n + 1)

end A368748

/-! ## A368748.P15922279477987574124

`A046933(n+1)-A080101(n+1)`
-/

namespace A368748.P15922279477987574124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) - A080101 (n + 1)

end

end A368748.P15922279477987574124

namespace A368748

/-- `A046933(n+1)-A080101(n+1)` -/
def P15922279477987574124.Spec : Prop :=
  ∀ n, P15922279477987574124.a n = A368748 (n + 1)

end A368748

/-! ## A368748.P7070350370303151361

`A001223(n+1)-A366833(n+1)`
-/

namespace A368748.P7070350370303151361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - A366833 (n + 1)

end

end A368748.P7070350370303151361

namespace A368748

/-- `A001223(n+1)-A366833(n+1)` -/
def P7070350370303151361.Spec : Prop :=
  ∀ n, P7070350370303151361.a n = A368748 (n + 1)

end A368748

/-! ## A368748.P2297652114385105730

`Δ[A378615(n+1)]`
-/

namespace A368748.P2297652114385105730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A368748.P2297652114385105730

namespace A368748

/-- `Δ[A378615(n+1)]` -/
def P2297652114385105730.Spec : Prop :=
  ∀ n, P2297652114385105730.a n = A368748 (n + 1)

end A368748

/-! ## A368748.P3598821458530832965

`A075526(n+1)-A366833(n+1)`
-/

namespace A368748.P3598821458530832965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (n + 1) - A366833 (n + 1)

end

end A368748.P3598821458530832965

namespace A368748

/-- `A075526(n+1)-A366833(n+1)` -/
def P3598821458530832965.Spec : Prop :=
  ∀ n, P3598821458530832965.a n = A368748 (n + 1)

end A368748

/-! ## A368748.P7394511944889044772

`A054541(n+2)-A366833(n+1)`
-/

namespace A368748.P7394511944889044772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2) - A366833 (n + 1)

end

end A368748.P7394511944889044772

namespace A368748

/-- `A054541(n+2)-A366833(n+1)` -/
def P7394511944889044772.Spec : Prop :=
  ∀ n, P7394511944889044772.a n = A368748 (n + 1)

end A368748

/-! ## A368748.P7278055606997129463

`A378615(n+2)-A378615(n+1)`
-/

namespace A368748.P7278055606997129463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378615 (n + 2) - A378615 (n + 1)

end

end A368748.P7278055606997129463

namespace A368748

/-- `A378615(n+2)-A378615(n+1)` -/
def P7278055606997129463.Spec : Prop :=
  ∀ n, P7278055606997129463.a n = A368748 (n + 1)

end A368748

/-! ## A368748.P16040251896751197662

`Δ[A000040(n+1)-A027883(n+1)]`
-/

namespace A368748.P16040251896751197662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A027883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A368748.P16040251896751197662

namespace A368748

/-- `Δ[A000040(n+1)-A027883(n+1)]` -/
def P16040251896751197662.Spec : Prop :=
  ∀ n, P16040251896751197662.a n = A368748 (n + 1)

end A368748

/-! ## A368748.P8857264845013804715

`A001223(n+1)+A027883(n+1)-A027883(n+2)`
-/

namespace A368748.P8857264845013804715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A027883 (n + 1) - A027883 (n + 2))

end

end A368748.P8857264845013804715

namespace A368748

/-- `A001223(n+1)+A027883(n+1)-A027883(n+2)` -/
def P8857264845013804715.Spec : Prop :=
  ∀ n, P8857264845013804715.a n = A368748 (n + 1)

end A368748

/-! ## A368748.P7573124402032950409

`A065890(n+2)-(A080101(n+1)+A065890(n+1))`
-/

namespace A368748.P7573124402032950409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 2) - (A080101 (n + 1) + A065890 (n + 1))

end

end A368748.P7573124402032950409

namespace A368748

/-- `A065890(n+2)-(A080101(n+1)+A065890(n+1))` -/
def P7573124402032950409.Spec : Prop :=
  ∀ n, P7573124402032950409.a n = A368748 (n + 1)

end A368748

/-! ## A368748.P18171459079893298112

`A000040(n+2)-(A366833(n+1)+A000040(n+1))`
-/

namespace A368748.P18171459079893298112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - (A366833 (n + 1) + A000040 (n + 1))

end

end A368748.P18171459079893298112

namespace A368748

/-- `A000040(n+2)-(A366833(n+1)+A000040(n+1))` -/
def P18171459079893298112.Spec : Prop :=
  ∀ n, P18171459079893298112.a n = A368748 (n + 1)

end A368748

/-! ## A368748.P7643135766787793316

`Δ[A006093(n+1)-A025528(A006093(n+1))]`
-/

namespace A368748.P7643135766787793316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A025528 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A368748.P7643135766787793316

namespace A368748

/-- `Δ[A006093(n+1)-A025528(A006093(n+1))]` -/
def P7643135766787793316.Spec : Prop :=
  ∀ n, P7643135766787793316.a n = A368748 (n + 1)

end A368748

/-!
# A368749: a(n) is the smallest prime p such that there are n numbers between p and nextprime(p) which are not prime powers.

The programs for A368749, there is no canonical definition to state claims against.
-/

/-! ## A368749.P17514145857759054270

`A075580(lt[A000032(n+1), A075580(n)])`
-/

namespace A368749.P17514145857759054270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075580 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A368749.P17514145857759054270

/-! ## A368749.P5320960641937007484

`A075580(lt[A000204(n+1), A075580(n)])`
-/

namespace A368749.P5320960641937007484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075580 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A368749.P5320960641937007484

/-! ## A368749.P15690083925038326894

`∪[A128342(n+1), A239087(A000045(2*n+3))]`
-/

namespace A368749.P15690083925038326894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239087 (A000045 (2 * n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A368749.P15690083925038326894

/-!
# A368750: Irregular triangle read by rows: T(n,k) is the number of atoms contained in the k-th balanced string of left/right parentheses of length 2*n, where strings within a row are in reverse lexicographical order.

The programs for A368750, there is no canonical definition to state claims against.
-/

/-! ## A368750.P11141225805868058133

`A368752(n+1)-A368751(n+1)`
-/

namespace A368750.P11141225805868058133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368752 (n + 1) - A368751 (n + 1)

end

end A368750.P11141225805868058133

/-! ## A368750.P11850303124681646599

`A366643(n+1)%A366625(A061645(n+1))`
-/

namespace A368750.P11850303124681646599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366643 (n + 1)) (A366625 (A061645 (n + 1)).toNat)

end

end A368750.P11850303124681646599

/-! ## A368750.P2341720487188822257

`A079632(A379316(3*n+5)+A079602(3*n+5))`
-/

namespace A368750.P2341720487188822257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079632 (A379316 (3 * n + 5) + A079602 (3 * n + 5)).toNat

end

end A368750.P2341720487188822257

/-! ## A368750.P18078258716062873285

`A354100(A245122(n+7)+3)`
-/

namespace A368750.P18078258716062873285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354100 (A245122 (n + 7) + 3).toNat

end

end A368750.P18078258716062873285

/-!
# A368751: Irregular triangle read by rows: T(n,k) is the number of co-atoms contained in the k-th balanced string of left/right parentheses of length 2*n, where strings within a row are in reverse lexicographical order.

The programs for A368751, there is no canonical definition to state claims against.
-/

/-! ## A368751.P2675285165198494778

`A368752(n+1)-A368750(n+1)`
-/

namespace A368751.P2675285165198494778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368752 (n + 1) - A368750 (n + 1)

end

end A368751.P2675285165198494778

/-! ## A368751.P5582122089603061856

`A003587(A356192(n+1))%A006968(n+4)`
-/

namespace A368751.P5582122089603061856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003587 (A356192 (n + 1)).toNat) (A006968 (n + 4))

end

end A368751.P5582122089603061856

/-! ## A368751.P12292800574722480423

`A368752(n+1)-A059984(A084033(n+1))`
-/

namespace A368751.P12292800574722480423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368752 (n + 1) - A059984 (A084033 (n + 1)).toNat

end

end A368751.P12292800574722480423

/-! ## A368751.P11757148121436936337

`A342595(∪[A093912(3*n+1), A267302(n+4)])`
-/

namespace A368751.P11757148121436936337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093912 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267302 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342595 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A368751.P11757148121436936337

/-! ## A368751.P16096133924737236692

`A194317(A290160(n))`
-/

namespace A368751.P16096133924737236692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194317 (A290160 n).toNat

end

end A368751.P16096133924737236692

/-!
# A368752: Irregular triangle read by rows: T(n,k) is the number of atoms + co-atoms contained in the k-th balanced string of left/right parentheses of length 2*n, where strings within a row are in reverse lexicographical order.

The programs for A368752, there is no canonical definition to state claims against.
-/

/-! ## A368752.P5760788458386554287

`A368751(n+1)+A368750(n+1)`
-/

namespace A368752.P5760788458386554287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368751 (n + 1) + A368750 (n + 1)

end

end A368752.P5760788458386554287

/-!
# A368755: Number of regions in the hyperoctahedral (or cocktail party) graph of order n.

The programs for A368755, there is no canonical definition to state claims against.
-/

/-! ## A368755.P16644150150651721634

`A394786(A258342(n))`
-/

namespace A368755.P16644150150651721634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394786 (A258342 n).toNat

end

end A368755.P16644150150651721634

/-!
# A368756: Number of vertices in the hyperoctahedral (or cocktail party) graph of order n.

The programs for A368756, there is no canonical definition to state claims against.
-/

/-! ## A368756.P15213998469839597665

`A232639(A007052(n)+A000010(n+2))`
-/

namespace A368756.P15213998469839597665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232639 (A007052 n + A000010 (n + 2)).toNat

end

end A368756.P15213998469839597665

/-!
# A368757: Number of edges in the hyperoctahedral (or cocktail party) graph of order n.

The programs for A368757, there is no canonical definition to state claims against.
-/

/-! ## A368757.P4698029724673174460

`A326910(A270127(n))`
-/

namespace A368757.P4698029724673174460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326910 (A270127 n).toNat

end

end A368757.P4698029724673174460

/-!
# A368759: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = n! * (1 + Sum_{j=0..n} j^k/j!).

The programs for A368759, there is no canonical definition to state claims against.
-/

/-! ## A368759.P2743134837493927460

`A337085(n)+A233543(n)`
-/

namespace A368759.P2743134837493927460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337085 n + A233543 n

end

end A368759.P2743134837493927460

/-! ## A368759.P13164765280916206799

`A337085(n)+A000142(A002262(n))`
-/

namespace A368759.P13164765280916206799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337085 n + A000142 (A002262 n).toNat

end

end A368759.P13164765280916206799

/-! ## A368759.P13385439782662999449

`A323621(A208748(n+1)%A194783(n+1))+A233543(n)`
-/

namespace A368759.P13385439782662999449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323621 (Int.tmod (A208748 (n + 1)) (A194783 (n + 1))).toNat + A233543 n

end

end A368759.P13385439782662999449

/-!
# A368760: a(n) = n! * (1 + Sum_{k=0..n} k^3 / k!).

The programs for A368760, the canonical program `A368760.P13471697153560600925` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368760 has offset 0).

The definition of A368760 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368760.P13471697153560600925

`n*a(n-1)+n^3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A368760

/-- `n*a(n-1)+n^3` -/
def P13471697153560600925.Spec : Prop :=
  ∀ n, (P13471697153560600925.a n : ℤ) = A368760 n

theorem P13471697153560600925.correct : P13471697153560600925.Spec := by
  intro n
  simp only [A368760]

end A368760

/-! ## A368760.P9996912955171863089

`n!+A337001(n)`
-/

namespace A368760.P9996912955171863089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + A337001 n

end

end A368760.P9996912955171863089

namespace A368760

/-- `n!+A337001(n)` -/
def P9996912955171863089.Spec : Prop :=
  ∀ n, P9996912955171863089.a n = A368760 n

end A368760

/-! ## A368760.P17004425201098186869

`n*(a(n-1)+n²)` with `a(0)=1`
-/

namespace A368760.P17004425201098186869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * (a (n - 1) + n ^ 2)

end

end A368760.P17004425201098186869

namespace A368760

/-- `n*(a(n-1)+n²)` -/
def P17004425201098186869.Spec : Prop :=
  ∀ n, (P17004425201098186869.a n : ℤ) = A368760 n

theorem P17004425201098186869.correct : P17004425201098186869.Spec := by
  intro n
  simp only [A368760, Nat.add_sub_cancel, A368760.P17004425201098186869.a, A368760.P13471697153560600925.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368760

/-! ## A368760.P7155376289618565037

`floor(n*(a(n-1)+n*n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A368760.P7155376289618565037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * (a (n - 1) + n * n)

end

end A368760.P7155376289618565037

namespace A368760

/-- `floor(n*(a(n-1)+n*n))` -/
def P7155376289618565037.Spec : Prop :=
  ∀ n, (P7155376289618565037.a n : ℤ) = A368760 n

theorem P7155376289618565037.correct : P7155376289618565037.Spec := by
  intro n
  simp only [A368760, Nat.add_sub_cancel, A368760.P7155376289618565037.a, A368760.P13471697153560600925.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368760

/-! ## A368760.P14277297511892757598

`n-n*(1-a(n-1)-n²)` with `a(0)=1`
-/

namespace A368760.P14277297511892757598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (n : ℤ) * (1 - a (n - 1) - (n ^ 2 : ℤ))

end

end A368760.P14277297511892757598

namespace A368760

/-- `n-n*(1-a(n-1)-n²)` -/
def P14277297511892757598.Spec : Prop :=
  ∀ n, P14277297511892757598.a n = A368760 n

end A368760

/-! ## A368760.P4388385945716310542

`n*(∑[2*n]+a(n-1)-n)` with `a(0)=1`
-/

namespace A368760.P4388385945716310542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (a (n - 1) - (n : ℤ)))

end

end A368760.P4388385945716310542

namespace A368760

/-- `n*(∑[2*n]+a(n-1)-n)` -/
def P4388385945716310542.Spec : Prop :=
  ∀ n, P4388385945716310542.a n = A368760 n

end A368760

/-! ## A368760.P3582874698022515307

`n*(∑[2*n]-(n-a(n-1)))` with `a(0)=1`
-/

namespace A368760.P3582874698022515307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - a (n - 1)))

end

end A368760.P3582874698022515307

namespace A368760

/-- `n*(∑[2*n]-(n-a(n-1)))` -/
def P3582874698022515307.Spec : Prop :=
  ∀ n, P3582874698022515307.a n = A368760 n

end A368760

/-!
# A368761: Number of labeled split graphs on n vertices such that {1..k} is independent and {k+1..n} is a clique for some k in {0..n}.

The programs for A368761, there is no canonical definition to state claims against.
-/

/-! ## A368761.P14379105588719398669

`Δ[A117402(n)]`
-/

namespace A368761.P14379105588719398669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A368761.P14379105588719398669

/-! ## A368761.P1506072757281321080

`A117402(n+1)-A117402(n)`
-/

namespace A368761.P1506072757281321080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117402 (n + 1) - A117402 n

end

end A368761.P1506072757281321080

/-! ## A368761.P4267047292445594440

`Δ[A337161(∑[n+3])]`
-/

namespace A368761.P4267047292445594440
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337161 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A368761.P4267047292445594440

/-!
# A368762: a(n) = n! * (1 + Sum_{k=0..n} binomial(k+1,2) / k!).

The programs for A368762, there is no canonical definition to state claims against.
-/

/-! ## A368762.P13920170489372913128

`∑[n]+n*a(n-1)` with `a(0)=1`
-/

namespace A368762.P13920170489372913128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n * a (n - 1)

end

end A368762.P13920170489372913128

/-! ## A368762.P5523427701843026981

`n*(a(n-1)+(n+1)/2)` with `a(0)=1`
-/

namespace A368762.P5523427701843026981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (a (n - 1) + (n + 1 : ℚ) / 2)

end

end A368762.P5523427701843026981

/-! ## A368762.P4526075192783187471

`floor(C(n+1, 2)+n*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A368762.P4526075192783187471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (n + 1) 2 + n * a (n - 1)

end

end A368762.P4526075192783187471

/-! ## A368762.P4698473274310418543

`n*a(n-1)-∑[n-2*n]` with `a(0)=1`
-/

namespace A368762.P4698473274310418543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368762.P4698473274310418543

/-! ## A368762.P17335133733344860850

`n*(1-((1-n)/2-a(n-1)))` with `a(0)=1`
-/

namespace A368762.P17335133733344860850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (1 - ((1 - (n : ℤ) : ℚ) / 2 - a (n - 1)))

end

end A368762.P17335133733344860850

/-! ## A368762.P8464311905216148192

`A038155(n)+A019464(2*n)`
-/

namespace A368762.P8464311905216148192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038155 n + A019464 (2 * n)

end

end A368762.P8464311905216148192

/-!
# A368763: a(n) = n! * (1 + Sum_{k=0..n} binomial(k+2,3) / k!).

The programs for A368763, there is no canonical definition to state claims against.
-/

/-! ## A368763.P2777533586901362113

`n!+A368574(n)`
-/

namespace A368763.P2777533586901362113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + A368574 n

end

end A368763.P2777533586901362113

/-! ## A368763.P13401471477453039755

`∑[∑[n]]+n*a(n-1)` with `a(0)=1`
-/

namespace A368763.P13401471477453039755
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n * a (n - 1)

end

end A368763.P13401471477453039755

/-! ## A368763.P8928719144536119598

`n*a(n-1)+C(n+2, 3)` with `a(0)=1`
-/

namespace A368763.P8928719144536119598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * a (n - 1) + Nat.choose (n + 2) 3

end

end A368763.P8928719144536119598

/-! ## A368763.P5699406351106714334

`lcm(n+1, n*(n+2))/6+a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A368763.P5699406351106714334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.lcm (n + 1) (n * (n + 2)) : ℚ) / 6 + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A368763.P5699406351106714334

/-! ## A368763.P729934847890485667

`A368574(n)+A000142(n)`
-/

namespace A368763.P729934847890485667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368574 n + A000142 n

end

end A368763.P729934847890485667

/-!
# A368764: a(n) = n! * (1 + Sum_{k=0..n} binomial(k+3,4) / k!).

The programs for A368764, there is no canonical definition to state claims against.
-/

/-! ## A368764.P5947503315028974377

`n!+A368575(n)`
-/

namespace A368764.P5947503315028974377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + A368575 n

end

end A368764.P5947503315028974377

/-! ## A368764.P9218685023604440987

`∑[∑[∑[n]]]+n*a(n-1)` with `a(0)=1`
-/

namespace A368764.P9218685023604440987
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n * a (n - 1)

end

end A368764.P9218685023604440987

/-! ## A368764.P16476752681780907052

`A368575(n)+A000142(n)`
-/

namespace A368764.P16476752681780907052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368575 n + A000142 n

end

end A368764.P16476752681780907052

/-! ## A368764.P17330679164240721656

`A368575(n)+A214078(n²)`
-/

namespace A368764.P17330679164240721656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368575 n + A214078 (n ^ 2)

end

end A368764.P17330679164240721656

/-! ## A368764.P5589201852392574741

`A368575(n)+A284997(3*(n+1))`
-/

namespace A368764.P5589201852392574741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368575 n + A284997 (3 * (n + 1))

end

end A368764.P5589201852392574741

/-!
# A368765: a(n) = n! * (1 + Sum_{k=0..n} (-1)^k * k / k!).

The programs for A368765, the canonical program `A368765.P14923609388915189094` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368765 has offset 0).

The definition of A368765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368765.P14923609388915189094

`(a(n-1)+(-1)^n)*n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A368765

/-- `(a(n-1)+(-1)^n)*n` -/
def P14923609388915189094.Spec : Prop :=
  ∀ n, P14923609388915189094.a n = A368765 n

theorem P14923609388915189094.correct : P14923609388915189094.Spec := by
  intro n
  simp only [A368765]

end A368765

/-! ## A368765.P4151061086645799757

`n*(a(n-1)+(-1)^n)` with `a(0)=1`
-/

namespace A368765.P4151061086645799757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (a (n - 1) + (-1) ^ n)

end

end A368765.P4151061086645799757

namespace A368765

/-- `n*(a(n-1)+(-1)^n)` -/
def P4151061086645799757.Spec : Prop :=
  ∀ n, P4151061086645799757.a n = A368765 n

end A368765

/-! ## A368765.P1614383657165291992

`n*(a(n-1)+1-2*n%2)` with `a(0)=1`
-/

namespace A368765.P1614383657165291992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (a (n - 1) + 1 - ((2 * (n % 2) : ℕ) : ℤ))

end

end A368765.P1614383657165291992

namespace A368765

/-- `n*(a(n-1)+1-2*n%2)` -/
def P1614383657165291992.Spec : Prop :=
  ∀ n, P1614383657165291992.a n = A368765 n

end A368765

/-! ## A368765.P8981863215289969308

`A002467(n)+(-1)^n`
-/

namespace A368765.P8981863215289969308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002467 n + (-1) ^ n

end

end A368765.P8981863215289969308

namespace A368765

/-- `A002467(n)+(-1)^n` -/
def P8981863215289969308.Spec : Prop :=
  ∀ n, P8981863215289969308.a n = A368765 n

end A368765

/-! ## A368765.P6664230974631600503

`A000142(n)+A033999(n)-A000166(n)`
-/

namespace A368765.P6664230974631600503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + (A033999 n - A000166 n)

end

end A368765.P6664230974631600503

namespace A368765

/-- `A000142(n)+A033999(n)-A000166(n)` -/
def P6664230974631600503.Spec : Prop :=
  ∀ n, P6664230974631600503.a n = A368765 n

end A368765

/-! ## A368765.P5287094373286236612

`A000142(n)+A000166(n)-A212291(n)`
-/

namespace A368765.P5287094373286236612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + (A000166 n - A212291 n)

end

end A368765.P5287094373286236612

namespace A368765

/-- `A000142(n)+A000166(n)-A212291(n)` -/
def P5287094373286236612.Spec : Prop :=
  ∀ n, P5287094373286236612.a n = A368765 n

end A368765

/-! ## A368765.P4962997593726507401

`A000240(n+1)+A002467(n)-A000166(n+1)`
-/

namespace A368765.P4962997593726507401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000240 (n + 1) + (A002467 n - A000166 (n + 1))

end

end A368765.P4962997593726507401

namespace A368765

/-- `A000240(n+1)+A002467(n)-A000166(n+1)` -/
def P4962997593726507401.Spec : Prop :=
  ∀ n, P4962997593726507401.a n = A368765 n

end A368765

/-!
# A368766: a(n) = n! * (1 + Sum_{k=0..n} (-1)^k * binomial(k+1,2) / k!).

The programs for A368766, there is no canonical definition to state claims against.
-/

/-! ## A368766.P4345483268448937202

`n*(-1)^n+n*(a(n-1)+gcd(n, n%2))-∑[n]` with `a(0)=1`
-/

namespace A368766.P4345483268448937202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (-1) ^ n + ((n : ℤ) * (a (n - 1) + (Nat.gcd n (n % 2) : ℤ)) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A368766.P4345483268448937202

/-! ## A368766.P8778540402104712812

`A368765(n)+A000387(n)`
-/

namespace A368766.P8778540402104712812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368765 n + A000387 n

end

end A368766.P8778540402104712812

/-! ## A368766.P5520854012322018370

`A368765(n)+A145225(∑[n])`
-/

namespace A368766.P5520854012322018370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368765 n + A145225 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A368766.P5520854012322018370

/-! ## A368766.P11916874627692710740

`A368765(n)+abs(1-A009281(n))`
-/

namespace A368766.P11916874627692710740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368765 n + |1 - A009281 n|

end

end A368766.P11916874627692710740

/-! ## A368766.P12496214207263318569

`A368765(n)+A000166(n)-A003221(n)`
-/

namespace A368766.P12496214207263318569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368765 n + (A000166 n - A003221 n)

end

end A368766.P12496214207263318569

/-! ## A368766.P842863746888199801

`A368765(n)+A008290(A133263(n)+char[1])`
-/

namespace A368766.P842863746888199801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368765 n + A008290 (A133263 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A368766.P842863746888199801

/-! ## A368766.P14200376165387714564

`A368765(n)+A145222(n+1)/(n+1)`
-/

namespace A368766.P14200376165387714564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368765 n : ℚ) + (A145222 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A368766.P14200376165387714564

/-! ## A368766.P18237524517662385368

`A368765(n)+A145223(n+2)/∑[n+1]`
-/

namespace A368766.P18237524517662385368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368765 n : ℚ) + (A145223 (n + 2) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A368766.P18237524517662385368

/-!
# A368767: a(n) = n! * (1 + Sum_{k=0..n} (-1)^k * binomial(k+2,3) / k!).

The programs for A368767, there is no canonical definition to state claims against.
-/

/-! ## A368767.P1877784916353283166

`A032032(n)*A237985(A071356(n))`
-/

namespace A368767.P1877784916353283166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032032 n * A237985 (A071356 n).toNat

end

end A368767.P1877784916353283166

/-! ## A368767.P15209810453247907097

`A059906(A109347(n+1))+A059204(n)`
-/

namespace A368767.P15209810453247907097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A109347 (n + 1)).toNat + A059204 n

end

end A368767.P15209810453247907097

/-!
# A368768: a(n) = n! * (1 + Sum_{k=0..n} (-1)^k * binomial(k+3,4) / k!).

The programs for A368768, there is no canonical definition to state claims against.
-/

/-! ## A368768.P5766142283323085862

`A048785(A343353(n))-A000788(n)`
-/

namespace A368768.P5766142283323085862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A343353 n).toNat - A000788 n

end

end A368768.P5766142283323085862

/-! ## A368768.P26804829695725268

`A097805(n)*A309276(A000108(n))`
-/

namespace A368768.P26804829695725268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A309276 (A000108 n).toNat

end

end A368768.P26804829695725268

/-!
# A368769: a(n) = (n!)^3 * Sum_{k=1..n} 1/(k!)^3.

The programs for A368769, the canonical program `A368769.P3101605460003030599` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368769 has offset 0).

The definition of A368769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368769.P3101605460003030599

`n^3*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A368769

/-- `n^3*a(n-1)+1` -/
def P3101605460003030599.Spec : Prop :=
  ∀ n, (P3101605460003030599.a n : ℤ) = A368769 n

theorem P3101605460003030599.correct : P3101605460003030599.Spec := by
  intro n
  simp only [A368769]

end A368769

/-! ## A368769.P5468364669649068180

`A217284(n)-n!^3`
-/

namespace A368769.P5468364669649068180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217284 n - (Nat.factorial n ^ 3 : ℤ)

end

end A368769.P5468364669649068180

namespace A368769

/-- `A217284(n)-n!^3` -/
def P5468364669649068180.Spec : Prop :=
  ∀ n, P5468364669649068180.a n = A368769 n

end A368769

/-! ## A368769.P7254713538473638944

`a(n-1)/n^(-3)+1` with `a(0)=0`
-/

namespace A368769.P7254713538473638944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-3 : ℤ) + 1

end

end A368769.P7254713538473638944

namespace A368769

/-- `a(n-1)/n^(-3)+1` -/
def P7254713538473638944.Spec : Prop :=
  ∀ n, P7254713538473638944.a n = (A368769 n : ℚ)

end A368769

/-! ## A368769.P1354492042834285733

`n*a(n-1)*n²+1` with `a(0)=0`
-/

namespace A368769.P1354492042834285733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * a (n - 1) * n ^ 2 + 1

end

end A368769.P1354492042834285733

namespace A368769

/-- `n*a(n-1)*n²+1` -/
def P1354492042834285733.Spec : Prop :=
  ∀ n, (P1354492042834285733.a n : ℤ) = A368769 n

theorem P1354492042834285733.correct : P1354492042834285733.Spec := by
  intro n
  simp only [A368769, Nat.add_sub_cancel, A368769.P1354492042834285733.a, A368769.P3101605460003030599.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368769

/-! ## A368769.P5039506354391132350

`n*n*n*a(n-1)+1` with `a(0)=0`
-/

namespace A368769.P5039506354391132350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (n * (n * a (n - 1))) + 1

end

end A368769.P5039506354391132350

namespace A368769

/-- `n*n*n*a(n-1)+1` -/
def P5039506354391132350.Spec : Prop :=
  ∀ n, (P5039506354391132350.a n : ℤ) = A368769 n

theorem P5039506354391132350.correct : P5039506354391132350.Spec := by
  intro n
  simp only [A368769, Nat.add_sub_cancel, A368769.P5039506354391132350.a, A368769.P3101605460003030599.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368769

/-!
# A368770: a(n) = (n!)^3 * Sum_{k=0..n} k/(k!)^3.

The programs for A368770, the canonical program `A368770.P17699194767205248339` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368770 has offset 0).

The definition of A368770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368770.P17699194767205248339

`n^3*a(n-1)+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A368770

/-- `n^3*a(n-1)+n` -/
def P17699194767205248339.Spec : Prop :=
  ∀ n, (P17699194767205248339.a n : ℤ) = A368770 n

theorem P17699194767205248339.correct : P17699194767205248339.Spec := by
  intro n
  simp only [A368770]

end A368770

/-! ## A368770.P7647857032175698457

`lcm(n^3, a(n-1))+n` with `a(0)=0`
-/

namespace A368770.P7647857032175698457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm (n ^ 3) (a (n - 1)) + n

end

end A368770.P7647857032175698457

namespace A368770

/-- `lcm(n^3, a(n-1))+n` -/
def P7647857032175698457.Spec : Prop :=
  ∀ n, (P7647857032175698457.a n : ℤ) = A368770 n

end A368770

/-! ## A368770.P10130433066238684590

`a(n-1)/n^(-3)+n` with `a(0)=0`
-/

namespace A368770.P10130433066238684590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-3 : ℤ) + (n : ℚ)

end

end A368770.P10130433066238684590

namespace A368770

/-- `a(n-1)/n^(-3)+n` -/
def P10130433066238684590.Spec : Prop :=
  ∀ n, P10130433066238684590.a n = (A368770 n : ℚ)

end A368770

/-! ## A368770.P2763702446011958121

`n*(n²*a(n-1)+1)` with `a(0)=0`
-/

namespace A368770.P2763702446011958121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (n ^ 2 * a (n - 1) + 1)

end

end A368770.P2763702446011958121

namespace A368770

/-- `n*(n²*a(n-1)+1)` -/
def P2763702446011958121.Spec : Prop :=
  ∀ n, (P2763702446011958121.a n : ℤ) = A368770 n

theorem P2763702446011958121.correct : P2763702446011958121.Spec := by
  intro n
  simp only [A368770, Nat.add_sub_cancel, A368770.P2763702446011958121.a, A368770.P17699194767205248339.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368770

/-! ## A368770.P13091521352231504556

`n*(n*n*a(n-1)+1)` with `a(0)=0`
-/

namespace A368770.P13091521352231504556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (n * (n * a (n - 1)) + 1)

end

end A368770.P13091521352231504556

namespace A368770

/-- `n*(n*n*a(n-1)+1)` -/
def P13091521352231504556.Spec : Prop :=
  ∀ n, (P13091521352231504556.a n : ℤ) = A368770 n

theorem P13091521352231504556.correct : P13091521352231504556.Spec := by
  intro n
  simp only [A368770, Nat.add_sub_cancel, A368770.P13091521352231504556.a, A368770.P17699194767205248339.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368770

/-!
# A368771: a(n) = (n!)^3 * Sum_{k=0..n} k^2/(k!)^3.

The programs for A368771, the canonical program `A368771.P1878061150997301806` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368771 has offset 0).

The definition of A368771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368771.P1878061150997301806

`n^3*a(n-1)+n²` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A368771

/-- `n^3*a(n-1)+n²` -/
def P1878061150997301806.Spec : Prop :=
  ∀ n, (P1878061150997301806.a n : ℤ) = A368771 n

theorem P1878061150997301806.correct : P1878061150997301806.Spec := by
  intro n
  simp only [A368771]

end A368771

/-! ## A368771.P16400565595378623277

`(n*a(n-1)+1)*n²` with `a(0)=0`
-/

namespace A368771.P16400565595378623277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (n * a (n - 1) + 1) * n ^ 2

end

end A368771.P16400565595378623277

namespace A368771

/-- `(n*a(n-1)+1)*n²` -/
def P16400565595378623277.Spec : Prop :=
  ∀ n, (P16400565595378623277.a n : ℤ) = A368771 n

theorem P16400565595378623277.correct : P16400565595378623277.Spec := by
  intro n
  simp only [A368771, Nat.add_sub_cancel, A368771.P16400565595378623277.a, A368771.P1878061150997301806.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368771

/-! ## A368771.P2027310716368306113

`n²*xor(1, n*a(n-1))` with `a(0)=0`
-/

namespace A368771.P2027310716368306113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n ^ 2 * Nat.xor 1 (n * a (n - 1))

end

end A368771.P2027310716368306113

namespace A368771

/-- `n²*xor(1, n*a(n-1))` -/
def P2027310716368306113.Spec : Prop :=
  ∀ n, (P2027310716368306113.a n : ℤ) = A368771 n

end A368771

/-! ## A368771.P8080058436092169041

`(a(n-1)+1/n)*n^3` with `a(0)=0`
-/

namespace A368771.P8080058436092169041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1 / (n : ℚ)) * (n ^ 3 : ℚ)

end

end A368771.P8080058436092169041

namespace A368771

/-- `(a(n-1)+1/n)*n^3` -/
def P8080058436092169041.Spec : Prop :=
  ∀ n, P8080058436092169041.a n = (A368771 n : ℚ)

end A368771

/-! ## A368771.P9532305327354374609

`n*n*(n*a(n-1)+1)` with `a(0)=0`
-/

namespace A368771.P9532305327354374609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (n * (n * a (n - 1) + 1))

end

end A368771.P9532305327354374609

namespace A368771

/-- `n*n*(n*a(n-1)+1)` -/
def P9532305327354374609.Spec : Prop :=
  ∀ n, (P9532305327354374609.a n : ℤ) = A368771 n

theorem P9532305327354374609.correct : P9532305327354374609.Spec := by
  intro n
  simp only [A368771, Nat.add_sub_cancel, A368771.P9532305327354374609.a, A368771.P1878061150997301806.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368771

/-!
# A368772: a(n) = (n!)^3 * Sum_{k=0..n} (k/k!)^3.

The programs for A368772, the canonical program `A368772.P7723830263713046757` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368772 has offset 0).

The definition of A368772 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368772.P7723830263713046757

`n^3*a(n-1)+n^3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A368772

/-- `n^3*a(n-1)+n^3` -/
def P7723830263713046757.Spec : Prop :=
  ∀ n, (P7723830263713046757.a n : ℤ) = A368772 n

theorem P7723830263713046757.correct : P7723830263713046757.Spec := by
  intro n
  simp only [A368772]

end A368772

/-! ## A368772.P5434147775251297214

`(a(n-1)+1)*n^3` with `a(0)=0`
-/

namespace A368772.P5434147775251297214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * n ^ 3

end

end A368772.P5434147775251297214

namespace A368772

/-- `(a(n-1)+1)*n^3` -/
def P5434147775251297214.Spec : Prop :=
  ∀ n, (P5434147775251297214.a n : ℤ) = A368772 n

end A368772

/-! ## A368772.P6458096346451235502

`(a(n-1)+1)/n^(-3)` with `a(0)=0`
-/

namespace A368772.P6458096346451235502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) / (n : ℚ) ^ (-3 : ℤ)

end

end A368772.P6458096346451235502

namespace A368772

/-- `(a(n-1)+1)/n^(-3)` -/
def P6458096346451235502.Spec : Prop :=
  ∀ n, P6458096346451235502.a n = (A368772 n : ℚ)

end A368772

/-! ## A368772.P1044886962623754017

`n*(a(n-1)+1)*n²` with `a(0)=0`
-/

namespace A368772.P1044886962623754017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * ((a (n - 1) + 1) * n ^ 2)

end

end A368772.P1044886962623754017

namespace A368772

/-- `n*(a(n-1)+1)*n²` -/
def P1044886962623754017.Spec : Prop :=
  ∀ n, (P1044886962623754017.a n : ℤ) = A368772 n

theorem P1044886962623754017.correct : P1044886962623754017.Spec := by
  intro n
  simp only [A368772, Nat.add_sub_cancel, A368772.P1044886962623754017.a, A368772.P7723830263713046757.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368772

/-! ## A368772.P4828168107396837458

`n*(a(n-1)+1)*n*n` with `a(0)=0`
-/

namespace A368772.P4828168107396837458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (a (n - 1) + 1) * (n * n)

end

end A368772.P4828168107396837458

namespace A368772

/-- `n*(a(n-1)+1)*n*n` -/
def P4828168107396837458.Spec : Prop :=
  ∀ n, (P4828168107396837458.a n : ℤ) = A368772 n

theorem P4828168107396837458.correct : P4828168107396837458.Spec := by
  intro n
  simp only [A368772, Nat.add_sub_cancel, A368772.P4828168107396837458.a, A368772.P7723830263713046757.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368772

/-!
# A368773: Antidiagonal sums of A059450.

The programs for A368773, there is no canonical definition to state claims against.
-/

/-! ## A368773.P9063964920927746749

`A005843(A138178(n))-A001003(n)`
-/

namespace A368773.P9063964920927746749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A138178 n).toNat - A001003 n

end

end A368773.P9063964920927746749

/-! ## A368773.P13770768040870752975

`A001650(A203716(n))`
-/

namespace A368773.P13770768040870752975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A203716 n).toNat

end

end A368773.P13770768040870752975

/-! ## A368773.P18162337564374118325

`A302597(A000991(n))`
-/

namespace A368773.P18162337564374118325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302597 (A000991 n).toNat

end

end A368773.P18162337564374118325

/-!
# A368774: a(n) is the number of distinct real roots of the polynomial whose coefficients are the digits of the binary expansion of n.

The programs for A368774, there is no canonical definition to state claims against.
-/

/-! ## A368774.P15232555587514488174

`A001221(gcd(A124546(n), A262356(n+1)))`
-/

namespace A368774.P15232555587514488174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A124546 n) (A262356 (n + 1)))

end

end A368774.P15232555587514488174

/-! ## A368774.P662846577636377159

`A285518(3*(n+1))+A010059(A133464(n))`
-/

namespace A368774.P662846577636377159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285518 (3 * (n + 1)) + A010059 (A133464 n).toNat

end

end A368774.P662846577636377159

/-! ## A368774.P1508466583275254903

`A324796(A245707(n+1))`
-/

namespace A368774.P1508466583275254903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324796 (A245707 (n + 1)).toNat

end

end A368774.P1508466583275254903

/-! ## A368774.P7375490363019420980

`∑{p}[n+1, A189921(A208021(#-1))]`
-/

namespace A368774.P7375490363019420980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A189921 (A208021 (p - 1)).toNat

end

end A368774.P7375490363019420980

/-! ## A368774.P4622851810073532528

`A284388(2*n+1)+A284388(A118021(n+1))`
-/

namespace A368774.P4622851810073532528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (2 * n + 1) + A284388 (A118021 (n + 1)).toNat

end

end A368774.P4622851810073532528

/-!
# A368775: a(n) = (n+1) * (n!)^3 * Sum_{k=0..n} 1/((k+1) * (k!)^3).

The programs for A368775, the canonical program `A368775.P4530756930650651016` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368775 has offset 0).

The definition of A368775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368775.P4530756930650651016

`(n+1)*n²*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A368775

/-- `(n+1)*n²*a(n-1)+1` -/
def P4530756930650651016.Spec : Prop :=
  ∀ n, (P4530756930650651016.a n : ℤ) = A368775 n

theorem P4530756930650651016.correct : P4530756930650651016.Spec := by
  intro n
  simp only [A368775]

end A368775

/-! ## A368775.P7604919210988984790

`2*n*a(n-1)*∑[n]+1` with `a(0)=1`
-/

namespace A368775.P7604919210988984790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n * (a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)) + 1

end

end A368775.P7604919210988984790

namespace A368775

/-- `2*n*a(n-1)*∑[n]+1` -/
def P7604919210988984790.Spec : Prop :=
  ∀ n, (P7604919210988984790.a n : ℤ) = A368775 n

end A368775

/-! ## A368775.P6261252102254897449

`(n+1)*n*n*a(n-1)+1` with `a(0)=1`
-/

namespace A368775.P6261252102254897449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * (n * (n * a (n - 1))) + 1

end

end A368775.P6261252102254897449

namespace A368775

/-- `(n+1)*n*n*a(n-1)+1` -/
def P6261252102254897449.Spec : Prop :=
  ∀ n, (P6261252102254897449.a n : ℤ) = A368775 n

theorem P6261252102254897449.correct : P6261252102254897449.Spec := by
  intro n
  simp only [A368775, Nat.add_sub_cancel, A368775.P6261252102254897449.a, A368775.P4530756930650651016.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368775

/-! ## A368775.P980550227038103871

`(n+1)*A368771(n)+1`
-/

namespace A368775.P980550227038103871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A368771 n + 1

end

end A368775.P980550227038103871

namespace A368775

/-- `(n+1)*A368771(n)+1` -/
def P980550227038103871.Spec : Prop :=
  ∀ n, P980550227038103871.a n = A368775 n

end A368775

/-! ## A368775.P2746313841089743107

`A368771(n+1)/(n+1)²`
-/

namespace A368775.P2746313841089743107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368771 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A368775.P2746313841089743107

namespace A368775

/-- `A368771(n+1)/(n+1)²` -/
def P2746313841089743107.Spec : Prop :=
  ∀ n, P2746313841089743107.a n = (A368775 n : ℚ)

end A368775

/-!
# A368776: a(n) = (n+1)^2 * (n!)^3 * Sum_{k=0..n} 1/((k+1)^2 * (k!)^3).

The programs for A368776, the canonical program `A368776.P14865978290933731884` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368776 has offset 0).

The definition of A368776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368776.P14865978290933731884

`(n+1)²*n*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A368776

/-- `(n+1)²*n*a(n-1)+1` -/
def P14865978290933731884.Spec : Prop :=
  ∀ n, (P14865978290933731884.a n : ℤ) = A368776 n

theorem P14865978290933731884.correct : P14865978290933731884.Spec := by
  intro n
  simp only [A368776]

end A368776

/-! ## A368776.P3214162628600153870

`lcm(n, lcm((n+1)², a(n-1)))+1` with `a(0)=1`
-/

namespace A368776.P3214162628600153870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm n (Nat.lcm ((n + 1) ^ 2) (a (n - 1))) + 1

end

end A368776.P3214162628600153870

namespace A368776

/-- `lcm(n, lcm((n+1)², a(n-1)))+1` -/
def P3214162628600153870.Spec : Prop :=
  ∀ n, (P3214162628600153870.a n : ℤ) = A368776 n

end A368776

/-! ## A368776.P14075598430381042399

`(n+1)*∑[2*n]*a(n-1)+1` with `a(0)=1`
-/

namespace A368776.P14075598430381042399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) * a (n - 1) + 1

end

end A368776.P14075598430381042399

namespace A368776

/-- `(n+1)*∑[2*n]*a(n-1)+1` -/
def P14075598430381042399.Spec : Prop :=
  ∀ n, (P14075598430381042399.a n : ℤ) = A368776 n

end A368776

/-! ## A368776.P9196403227574761950

`(n+1)*(n+1)*n*a(n-1)+1` with `a(0)=1`
-/

namespace A368776.P9196403227574761950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * ((n + 1) * (n * a (n - 1))) + 1

end

end A368776.P9196403227574761950

namespace A368776

/-- `(n+1)*(n+1)*n*a(n-1)+1` -/
def P9196403227574761950.Spec : Prop :=
  ∀ n, (P9196403227574761950.a n : ℤ) = A368776 n

theorem P9196403227574761950.correct : P9196403227574761950.Spec := by
  intro n
  simp only [A368776, Nat.add_sub_cancel, A368776.P9196403227574761950.a, A368776.P14865978290933731884.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368776

/-! ## A368776.P18116991495068888754

`A368770(n+1)/(n+1)`
-/

namespace A368776.P18116991495068888754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368770 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A368776.P18116991495068888754

namespace A368776

/-- `A368770(n+1)/(n+1)` -/
def P18116991495068888754.Spec : Prop :=
  ∀ n, P18116991495068888754.a n = (A368776 n : ℚ)

end A368776

/-!
# A368777: a(n) is the largest divisor of n that is a term of the sequence A003418, the least common multiple of the first k natural numbers.

The programs for A368777, there is no canonical definition to state claims against.
-/

/-! ## A368777.P8597599833486669180

`A003418((n+1)/A350509(n+1))`
-/

namespace A368777.P8597599833486669180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350509 (n + 1) : ℚ))).toNat

end

end A368777.P8597599833486669180

/-! ## A368777.P10766609246965240912

`A181063((n+1)/A350509(n+1))`
-/

namespace A368777.P10766609246965240912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181063 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350509 (n + 1) : ℚ))).toNat

end

end A368777.P10766609246965240912

/-! ## A368777.P7030636723399802267

`A328449((n+1)/A350509(n+1))`
-/

namespace A368777.P7030636723399802267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328449 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350509 (n + 1) : ℚ))).toNat

end

end A368777.P7030636723399802267

/-! ## A368777.P4792835198492429574

`A003418((n%2)^n*A055874(n+1))`
-/

namespace A368777.P4792835198492429574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 ((((n % 2) ^ n : ℕ) : ℤ) * A055874 (n + 1)).toNat

end

end A368777.P4792835198492429574

/-! ## A368777.P12356717591007802168

`A181063(A350509(n+1)-A350576(n+1))`
-/

namespace A368777.P12356717591007802168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181063 (A350509 (n + 1) - A350576 (n + 1)).toNat

end

end A368777.P12356717591007802168

/-! ## A368777.P14316691977588474365

`A328449(A350509(n+1)-A350576(n+1))`
-/

namespace A368777.P14316691977588474365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328449 (A350509 (n + 1) - A350576 (n + 1)).toNat

end

end A368777.P14316691977588474365

/-! ## A368777.P949486616653129298

`A181063(A055874(n+1)/A060680(2*(n+2)))`
-/

namespace A368777.P949486616653129298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181063 (SequenceMachineLib.roundAway ((A055874 (n + 1) : ℚ) / (A060680 (2 * (n + 2)) : ℚ))).toNat

end

end A368777.P949486616653129298

/-!
# A368779: The number of prime factors of the cubefree numbers, counted with multiplicity.

The programs for A368779, the canonical program `A368779.P11180727498613056618` is in `Seq.B011.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368779 has offset 1).

The definition of A368779 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A004709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368779.P11180727498613056618

`A001222(A004709(n+1))`

The canonical program, it is in `Seq.B011.C001`.
-/

namespace A368779

/-- `A001222(A004709(n+1))` -/
def P11180727498613056618.Spec : Prop :=
  ∀ n, P11180727498613056618.a n = A368779 (n + 1)

theorem P11180727498613056618.correct : P11180727498613056618.Spec := by
  intro n
  simp only [A368779, Nat.add_sub_cancel]

end A368779

/-! ## A368779.P16991021122842118722

`∑{e}[eq[1, A050361(n+1)]+1, #]`
-/

namespace A368779.P16991021122842118722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A368779.P16991021122842118722

namespace A368779

/-- `∑{e}[eq[1, A050361(n+1)]+1, #]` -/
def P16991021122842118722.Spec : Prop :=
  ∀ n, (P16991021122842118722.a n : ℤ) = A368779 (n + 1)

end A368779

/-! ## A368779.P9924515084560560478

`A003313(A358040(n+1))`
-/

namespace A368779.P9924515084560560478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A358040 (n + 1)).toNat

end

end A368779.P9924515084560560478

namespace A368779

/-- `A003313(A358040(n+1))` -/
def P9924515084560560478.Spec : Prop :=
  ∀ n, P9924515084560560478.a n = A368779 (n + 1)

end A368779

/-! ## A368779.P8626004627514359572

`A376366(n+1)+A376365(n+1)`
-/

namespace A368779.P8626004627514359572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376366 (n + 1) + A376365 (n + 1)

end

end A368779.P8626004627514359572

namespace A368779

/-- `A376366(n+1)+A376365(n+1)` -/
def P8626004627514359572.Spec : Prop :=
  ∀ n, P8626004627514359572.a n = A368779 (n + 1)

end A368779

/-! ## A368779.P7712638340936430511

`A366077(A004709(2*n+1-n))`
-/

namespace A368779.P7712638340936430511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366077 (A004709 (2 * n + 1 - n)).toNat

end

end A368779.P7712638340936430511

namespace A368779

/-- `A366077(A004709(2*n+1-n))` -/
def P7712638340936430511.Spec : Prop :=
  ∀ n, P7712638340936430511.a n = A368779 (n + 1)

end A368779

/-! ## A368779.P6342827582189563631

`A376365(n+1)+A056170(A004709(n+1))`
-/

namespace A368779.P6342827582189563631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376365 (n + 1) + A056170 (A004709 (n + 1)).toNat

end

end A368779.P6342827582189563631

namespace A368779

/-- `A376365(n+1)+A056170(A004709(n+1))` -/
def P6342827582189563631.Spec : Prop :=
  ∀ n, P6342827582189563631.a n = A368779 (n + 1)

end A368779

/-! ## A368779.P12326897217011396704

`A318464(A392365(n+1))`
-/

namespace A368779.P12326897217011396704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318464 (A392365 (n + 1)).toNat

end

end A368779.P12326897217011396704

namespace A368779

/-- `A318464(A392365(n+1))` -/
def P12326897217011396704.Spec : Prop :=
  ∀ n, P12326897217011396704.a n = A368779 (n + 1)

end A368779

/-! ## A368779.P15620058149181910004

`filter[A112623(n+1), A127247(#)]`
-/

namespace A368779.P15620058149181910004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127247 (f1 j).toNat = 1) n)

end

end A368779.P15620058149181910004

namespace A368779

/-- `filter[A112623(n+1), A127247(#)]` -/
def P15620058149181910004.Spec : Prop :=
  ∀ n, P15620058149181910004.a n = A368779 (n + 1)

end A368779

/-! ## A368779.P998869569354479329

`A362412(A004709(n+1)²)`
-/

namespace A368779.P998869569354479329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362412 (A004709 (n + 1) ^ 2).toNat

end

end A368779.P998869569354479329

namespace A368779

/-- `A362412(A004709(n+1)²)` -/
def P998869569354479329.Spec : Prop :=
  ∀ n, P998869569354479329.a n = A368779 (n + 1)

end A368779

/-!
# A368780: Cubefree numbers divisible by the square of their largest prime factor.

The programs for A368780, the canonical program `A368780.P14908881115909762671` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368780 has offset 1).

The definition of A368780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1044 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368780.P14952320035809602508

`filter[A070003(n+1), A212793(#)]`
-/

namespace A368780.P14952320035809602508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A368780.P14952320035809602508

namespace A368780

/-- `filter[A070003(n+1), A212793(#)]` -/
def P14952320035809602508.Spec : Prop :=
  ∀ n, P14952320035809602508.a n = A368780 (n + 1)

end A368780

/-! ## A368780.P14908881115909762671

`filter[A195212(n+1), A212793(#)]`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A368780

/-- `filter[A195212(n+1), A212793(#)]` -/
def P14908881115909762671.Spec : Prop :=
  ∀ n, P14908881115909762671.a n = A368780 (n + 1)

theorem P14908881115909762671.correct : P14908881115909762671.Spec := by
  intro n
  simp only [A368780, Nat.add_sub_cancel]

end A368780

/-! ## A368780.P15951831314686349331

`filter[A070003(n+1), A359429(#)]`
-/

namespace A368780.P15951831314686349331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A368780.P15951831314686349331

namespace A368780

/-- `filter[A070003(n+1), A359429(#)]` -/
def P15951831314686349331.Spec : Prop :=
  ∀ n, P15951831314686349331.a n = A368780 (n + 1)

end A368780

/-! ## A368780.P9997703116359941798

`filter[A195212(n+1), A359429(#)]`
-/

namespace A368780.P9997703116359941798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A368780.P9997703116359941798

namespace A368780

/-- `filter[A195212(n+1), A359429(#)]` -/
def P9997703116359941798.Spec : Prop :=
  ∀ n, P9997703116359941798.a n = A368780 (n + 1)

end A368780

/-! ## A368780.P344766149308739515

`filter[A354869(n+1), A359429(#)]`
-/

namespace A368780.P344766149308739515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A368780.P344766149308739515

namespace A368780

/-- `filter[A354869(n+1), A359429(#)]` -/
def P344766149308739515.Spec : Prop :=
  ∀ n, P344766149308739515.a n = A368780 (n + 1)

end A368780

/-! ## A368780.P7617561843678424645

`filter[A354869(n+2), A212793(#)]`
-/

namespace A368780.P7617561843678424645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354869 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A368780.P7617561843678424645

namespace A368780

/-- `filter[A354869(n+2), A212793(#)]` -/
def P7617561843678424645.Spec : Prop :=
  ∀ n, P7617561843678424645.a n = A368780 (n + 1)

end A368780

/-! ## A368780.P9727034469150746414

`filter[A067259(n+1), A319988(#)]`
-/

namespace A368780.P9727034469150746414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A368780.P9727034469150746414

namespace A368780

/-- `filter[A067259(n+1), A319988(#)]` -/
def P9727034469150746414.Spec : Prop :=
  ∀ n, P9727034469150746414.a n = A368780 (n + 1)

end A368780

/-! ## A368780.P4296377003891533863

`filter[A067259(n+1), A354868(#)]`
-/

namespace A368780.P4296377003891533863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A368780.P4296377003891533863

namespace A368780

/-- `filter[A067259(n+1), A354868(#)]` -/
def P4296377003891533863.Spec : Prop :=
  ∀ n, P4296377003891533863.a n = A368780 (n + 1)

end A368780

/-! ## A368780.P3023864154595125972

`∩[A067259(n+1), A070003(n+1)]`
-/

namespace A368780.P3023864154595125972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368780.P3023864154595125972

namespace A368780

/-- `∩[A067259(n+1), A070003(n+1)]` -/
def P3023864154595125972.Spec : Prop :=
  ∀ n, (P3023864154595125972.a n : ℤ) = A368780 (n + 1)

end A368780

/-! ## A368780.P145146001842305189

`∩[A067259(n+1), A195212(n+1)]`
-/

namespace A368780.P145146001842305189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368780.P145146001842305189

namespace A368780

/-- `∩[A067259(n+1), A195212(n+1)]` -/
def P145146001842305189.Spec : Prop :=
  ∀ n, (P145146001842305189.a n : ℤ) = A368780 (n + 1)

end A368780

/-! ## A368780.P2845248341404908758

`∩[A067259(n+1), A354869(n+1)]`
-/

namespace A368780.P2845248341404908758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368780.P2845248341404908758

namespace A368780

/-- `∩[A067259(n+1), A354869(n+1)]` -/
def P2845248341404908758.Spec : Prop :=
  ∀ n, (P2845248341404908758.a n : ℤ) = A368780 (n + 1)

end A368780

/-! ## A368780.P3613305862945856900

`filter[A342393(n+1), A319988(#)]`
-/

namespace A368780.P3613305862945856900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A368780.P3613305862945856900

namespace A368780

/-- `filter[A342393(n+1), A319988(#)]` -/
def P3613305862945856900.Spec : Prop :=
  ∀ n, P3613305862945856900.a n = A368780 (n + 1)

end A368780

/-! ## A368780.P10963962414043727884

`filter[A342393(n+1), A354868(#)]`
-/

namespace A368780.P10963962414043727884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A368780.P10963962414043727884

namespace A368780

/-- `filter[A342393(n+1), A354868(#)]` -/
def P10963962414043727884.Spec : Prop :=
  ∀ n, P10963962414043727884.a n = A368780 (n + 1)

end A368780

/-! ## A368780.P2601239306740083891

`∩[A070003(n+1), A342393(n+1)]`
-/

namespace A368780.P2601239306740083891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368780.P2601239306740083891

namespace A368780

/-- `∩[A070003(n+1), A342393(n+1)]` -/
def P2601239306740083891.Spec : Prop :=
  ∀ n, (P2601239306740083891.a n : ℤ) = A368780 (n + 1)

end A368780

/-! ## A368780.P1969196734016429650

`∩[A195212(n+1), A342393(n+1)]`
-/

namespace A368780.P1969196734016429650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368780.P1969196734016429650

namespace A368780

/-- `∩[A195212(n+1), A342393(n+1)]` -/
def P1969196734016429650.Spec : Prop :=
  ∀ n, (P1969196734016429650.a n : ℤ) = A368780 (n + 1)

end A368780

/-! ## A368780.P18224753336601647895

`∩[A342393(n+1), A354869(n+1)]`
-/

namespace A368780.P18224753336601647895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368780.P18224753336601647895

namespace A368780

/-- `∩[A342393(n+1), A354869(n+1)]` -/
def P18224753336601647895.Spec : Prop :=
  ∀ n, (P18224753336601647895.a n : ℤ) = A368780 (n + 1)

end A368780

/-! ## A368780.P12832783050213176910

`∩[A070003(n+1), A377880(n+1)]`
-/

namespace A368780.P12832783050213176910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368780.P12832783050213176910

namespace A368780

/-- `∩[A070003(n+1), A377880(n+1)]` -/
def P12832783050213176910.Spec : Prop :=
  ∀ n, (P12832783050213176910.a n : ℤ) = A368780 (n + 1)

end A368780

/-! ## A368780.P7897338575100003066

`∩[A195212(n+1), A377880(n+1)]`
-/

namespace A368780.P7897338575100003066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368780.P7897338575100003066

namespace A368780

/-- `∩[A195212(n+1), A377880(n+1)]` -/
def P7897338575100003066.Spec : Prop :=
  ∀ n, (P7897338575100003066.a n : ℤ) = A368780 (n + 1)

end A368780

/-! ## A368780.P14134820708311794179

`∩[A004709(n+1), A070003(n+1)]`
-/

namespace A368780.P14134820708311794179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368780.P14134820708311794179

namespace A368780

/-- `∩[A004709(n+1), A070003(n+1)]` -/
def P14134820708311794179.Spec : Prop :=
  ∀ n, (P14134820708311794179.a n : ℤ) = A368780 (n + 1)

end A368780

/-!
# A368781: The maximal exponent in the unique factorization of n in terms of distinct "Fermi-Dirac primes".

The programs for A368781, the canonical program `A368781.P2809207346067971306` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368781 has offset 1).

The definition of A368781 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368781.P2809207346067971306

`A053644(A051903(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A368781

/-- `A053644(A051903(n+1))` -/
def P2809207346067971306.Spec : Prop :=
  ∀ n, P2809207346067971306.a n = A368781 (n + 1)

theorem P2809207346067971306.correct : P2809207346067971306.Spec := by
  intro n
  simp only [A368781, Nat.add_sub_cancel]

end A368781

/-! ## A368781.P5953239839639103807

`A051903(A353897(n+1))`
-/

namespace A368781.P5953239839639103807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A353897 (n + 1)).toNat

end

end A368781.P5953239839639103807

namespace A368781

/-- `A051903(A353897(n+1))` -/
def P5953239839639103807.Spec : Prop :=
  ∀ n, P5953239839639103807.a n = A368781 (n + 1)

end A368781

/-! ## A368781.P15095472186891504496

`A053644(A267116(n+1))`
-/

namespace A368781.P15095472186891504496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A267116 (n + 1)).toNat

end

end A368781.P15095472186891504496

namespace A368781

/-- `A053644(A267116(n+1))` -/
def P15095472186891504496.Spec : Prop :=
  ∀ n, P15095472186891504496.a n = A368781 (n + 1)

end A368781

/-! ## A368781.P4077370862709633137

`A053644(A067132(n+1)-1)`
-/

namespace A368781.P4077370862709633137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A067132 (n + 1) - 1).toNat

end

end A368781.P4077370862709633137

namespace A368781

/-- `A053644(A067132(n+1)-1)` -/
def P4077370862709633137.Spec : Prop :=
  ∀ n, P4077370862709633137.a n = A368781 (n + 1)

end A368781

/-! ## A368781.P11174713909356385017

`A346701(2^∑{e}[n+1, val(#!, 2)])%∑{d}[n+1, #]`
-/

namespace A368781.P11174713909356385017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346701 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2))) ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A368781.P11174713909356385017

namespace A368781

/-- `A346701(2^∑{e}[n+1, val(#!, 2)])%∑{d}[n+1, #]` -/
def P11174713909356385017.Spec : Prop :=
  ∀ n, P11174713909356385017.a n = A368781 (n + 1)

end A368781

/-! ## A368781.P2593959409566841010

`A375359(A372329(n+1))`
-/

namespace A368781.P2593959409566841010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375359 (A372329 (n + 1)).toNat

end

end A368781.P2593959409566841010

namespace A368781

/-- `A375359(A372329(n+1))` -/
def P2593959409566841010.Spec : Prop :=
  ∀ n, P2593959409566841010.a n = A368781 (n + 1)

end A368781

/-! ## A368781.P14779300814383600045

`and(A051903(n+1), A347464(n+1))`
-/

namespace A368781.P14779300814383600045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051903 (n + 1)) (A347464 (n + 1))

end

end A368781.P14779300814383600045

namespace A368781

/-- `and(A051903(n+1), A347464(n+1))` -/
def P14779300814383600045.Spec : Prop :=
  ∀ n, P14779300814383600045.a n = A368781 (n + 1)

end A368781

/-! ## A368781.P15461834644272319208

`and(A157754(n+1), A347464(n+1))`
-/

namespace A368781.P15461834644272319208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157754 (n + 1)) (A347464 (n + 1))

end

end A368781.P15461834644272319208

namespace A368781

/-- `and(A157754(n+1), A347464(n+1))` -/
def P15461834644272319208.Spec : Prop :=
  ∀ n, P15461834644272319208.a n = A368781 (n + 1)

end A368781

/-! ## A368781.P5024287459469114636

`and(A267116(n+1), A347464(n+1))`
-/

namespace A368781.P5024287459469114636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267116 (n + 1)) (A347464 (n + 1))

end

end A368781.P5024287459469114636

namespace A368781

/-- `and(A267116(n+1), A347464(n+1))` -/
def P5024287459469114636.Spec : Prop :=
  ∀ n, P5024287459469114636.a n = A368781 (n + 1)

end A368781

/-! ## A368781.P8580193648517222102

`and(A347464(n+1), A375360(n+1))`
-/

namespace A368781.P8580193648517222102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A347464 (n + 1)) (A375360 (n + 1))

end

end A368781.P8580193648517222102

namespace A368781

/-- `and(A347464(n+1), A375360(n+1))` -/
def P8580193648517222102.Spec : Prop :=
  ∀ n, P8580193648517222102.a n = A368781 (n + 1)

end A368781

/-!
# A368782: Comma transform of A366487.

The programs for A368782, there is no canonical definition to state claims against.
-/

/-! ## A368782.P12429495751862956549

`A367610(A121805(n+2))`
-/

namespace A368782.P12429495751862956549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367610 (A121805 (n + 2)).toNat

end

end A368782.P12429495751862956549

/-!
# A368783: Lexicographic rank of the permutation which is the Eytzinger array layout of n elements.

The programs for A368783, there is no canonical definition to state claims against.
-/

/-! ## A368783.P9939946794266424279

`A141332(A002628(n)+2)`
-/

namespace A368783.P9939946794266424279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141332 (A002628 n + 2).toNat

end

end A368783.P9939946794266424279

/-! ## A368783.P18406530740178375897

`∑[∑[A106683(A176697(n))]]`
-/

namespace A368783.P18406530740178375897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (A176697 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368783.P18406530740178375897

/-!
# A368784: a(0) = 1. For n > 0, a(n) is the smallest integer k > n such that (Sum_{i = 1..n} i)/(Sum_{i = n + 1..k} i) < 1/n.

The programs for A368784, the canonical program `A368784.P13440686127812524868` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368784 has offset 0).

The definition of A368784 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368784.P13440686127812524868

`round(sqrt(n*(n+1)²+1))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A368784

/-- `round(sqrt(n*(n+1)²+1))` -/
def P13440686127812524868.Spec : Prop :=
  ∀ n, P13440686127812524868.a n = A368784 n

theorem P13440686127812524868.correct : P13440686127812524868.Spec := by
  intro n
  simp only [A368784]

end A368784

/-! ## A368784.P52223050992946485

`A000007(n)+round((n+1)*sqrt(n))`
-/

namespace A368784.P52223050992946485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + SequenceMachineLib.roundAway ((n + 1 : ℝ) * Real.sqrt (n : ℝ))

end

end A368784.P52223050992946485

namespace A368784

/-- `A000007(n)+round((n+1)*sqrt(n))` -/
def P52223050992946485.Spec : Prop :=
  ∀ n, P52223050992946485.a n = A368784 n

end A368784

/-! ## A368784.P18368789721894902265

`A028310(round((n+1)*sqrt(n)))`
-/

namespace A368784.P18368789721894902265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((n + 1 : ℝ) * Real.sqrt (n : ℝ))).toNat

end

end A368784.P18368789721894902265

namespace A368784

/-- `A028310(round((n+1)*sqrt(n)))` -/
def P18368789721894902265.Spec : Prop :=
  ∀ n, P18368789721894902265.a n = A368784 n

end A368784

/-! ## A368784.P12912029002081359977

`A002024((n+1)*∑[n]+1)`
-/

namespace A368784.P12912029002081359977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A368784.P12912029002081359977

namespace A368784

/-- `A002024((n+1)*∑[n]+1)` -/
def P12912029002081359977.Spec : Prop :=
  ∀ n, P12912029002081359977.a n = A368784 n

end A368784

/-! ## A368784.P14213586530734952757

`A003056((n+1)*∑[n])+1`
-/

namespace A368784.P14213586530734952757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)) + 1

end

end A368784.P14213586530734952757

namespace A368784

/-- `A003056((n+1)*∑[n])+1` -/
def P14213586530734952757.Spec : Prop :=
  ∀ n, P14213586530734952757.a n = A368784 n

end A368784

/-!
# A368787: a(n) = (n+1) * (n!)^2 * Sum_{k=1..n} 1/((k+1) * (k!)^2).

The programs for A368787, the canonical program `A368787.P17353261049206363369` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368787 has offset 0).

The definition of A368787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368787.P17353261049206363369

`(n+1)*n*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A368787

/-- `(n+1)*n*a(n-1)+1` -/
def P17353261049206363369.Spec : Prop :=
  ∀ n, (P17353261049206363369.a n : ℤ) = A368787 n

theorem P17353261049206363369.correct : P17353261049206363369.Spec := by
  intro n
  simp only [A368787]

end A368787

/-! ## A368787.P9393217435998060977

`A228229(n)-(n+1)*n!²`
-/

namespace A368787.P9393217435998060977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228229 n - ((n + 1) * Nat.factorial n ^ 2 : ℤ)

end

end A368787.P9393217435998060977

namespace A368787

/-- `A228229(n)-(n+1)*n!²` -/
def P9393217435998060977.Spec : Prop :=
  ∀ n, P9393217435998060977.a n = A368787 n

end A368787

/-! ## A368787.P13119190907823416181

`2*a(n-1)*∑[n]+1` with `a(0)=0`
-/

namespace A368787.P13119190907823416181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)) + 1

end

end A368787.P13119190907823416181

namespace A368787

/-- `2*a(n-1)*∑[n]+1` -/
def P13119190907823416181.Spec : Prop :=
  ∀ n, (P13119190907823416181.a n : ℤ) = A368787 n

end A368787

/-! ## A368787.P14349286037166232466

`(n²+n)*a(n-1)+1` with `a(0)=0`
-/

namespace A368787.P14349286037166232466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 2 + n) * a (n - 1) + 1

end

end A368787.P14349286037166232466

namespace A368787

/-- `(n²+n)*a(n-1)+1` -/
def P14349286037166232466.Spec : Prop :=
  ∀ n, (P14349286037166232466.a n : ℤ) = A368787 n

theorem P14349286037166232466.correct : P14349286037166232466.Spec := by
  intro n
  simp only [A368787, Nat.add_sub_cancel, A368787.P14349286037166232466.a, A368787.P17353261049206363369.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368787

/-! ## A368787.P1038952425117366881

`1-a(n-1)*∑[-2*n]` with `a(0)=0`
-/

namespace A368787.P1038952425117366881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A368787.P1038952425117366881

namespace A368787

/-- `1-a(n-1)*∑[-2*n]` -/
def P1038952425117366881.Spec : Prop :=
  ∀ n, P1038952425117366881.a n = A368787 n

end A368787

/-!
# A368788: a(n) = (n+1) * (n!)^3 * Sum_{k=1..n} 1/((k+1) * (k!)^3).

The programs for A368788, the canonical program `A368788.P13944002535238121677` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368788 has offset 0).

The definition of A368788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368788.P13944002535238121677

`(n+1)*n²*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A368788

/-- `(n+1)*n²*a(n-1)+1` -/
def P13944002535238121677.Spec : Prop :=
  ∀ n, (P13944002535238121677.a n : ℤ) = A368788 n

theorem P13944002535238121677.correct : P13944002535238121677.Spec := by
  intro n
  simp only [A368788]

end A368788

/-! ## A368788.P14958802835899844561

`A368775(n)-(n+1)*n!^3`
-/

namespace A368788.P14958802835899844561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368775 n - ((n + 1) * Nat.factorial n ^ 3 : ℤ)

end

end A368788.P14958802835899844561

namespace A368788

/-- `A368775(n)-(n+1)*n!^3` -/
def P14958802835899844561.Spec : Prop :=
  ∀ n, P14958802835899844561.a n = A368788 n

end A368788

/-! ## A368788.P9049295702126478682

`2*n*a(n-1)*∑[n]+1` with `a(0)=0`
-/

namespace A368788.P9049295702126478682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * n * (a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)) + 1

end

end A368788.P9049295702126478682

namespace A368788

/-- `2*n*a(n-1)*∑[n]+1` -/
def P9049295702126478682.Spec : Prop :=
  ∀ n, (P9049295702126478682.a n : ℤ) = A368788 n

end A368788

/-! ## A368788.P2256442527632761093

`(n+1)*n*n*a(n-1)+1` with `a(0)=0`
-/

namespace A368788.P2256442527632761093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1) * (n * (n * a (n - 1))) + 1

end

end A368788.P2256442527632761093

namespace A368788

/-- `(n+1)*n*n*a(n-1)+1` -/
def P2256442527632761093.Spec : Prop :=
  ∀ n, (P2256442527632761093.a n : ℤ) = A368788 n

theorem P2256442527632761093.correct : P2256442527632761093.Spec := by
  intro n
  simp only [A368788, Nat.add_sub_cancel, A368788.P2256442527632761093.a, A368788.P13944002535238121677.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368788

/-!
# A368789: a(n) = (n+1)^2 * (n!)^3 * Sum_{k=1..n} 1/((k+1)^2 * (k!)^3).

The programs for A368789, the canonical program `A368789.P4799468589908276936` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368789 has offset 0).

The definition of A368789 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368789.P4799468589908276936

`(n+1)²*n*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A368789

/-- `(n+1)²*n*a(n-1)+1` -/
def P4799468589908276936.Spec : Prop :=
  ∀ n, (P4799468589908276936.a n : ℤ) = A368789 n

theorem P4799468589908276936.correct : P4799468589908276936.Spec := by
  intro n
  simp only [A368789]

end A368789

/-! ## A368789.P16343580369904497146

`lcm(n, lcm((n+1)², a(n-1)))+1` with `a(0)=0`
-/

namespace A368789.P16343580369904497146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm n (Nat.lcm ((n + 1) ^ 2) (a (n - 1))) + 1

end

end A368789.P16343580369904497146

namespace A368789

/-- `lcm(n, lcm((n+1)², a(n-1)))+1` -/
def P16343580369904497146.Spec : Prop :=
  ∀ n, (P16343580369904497146.a n : ℤ) = A368789 n

end A368789

/-! ## A368789.P6367548556505157710

`(n+1)*∑[2*n]*a(n-1)+1` with `a(0)=0`
-/

namespace A368789.P6367548556505157710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) * a (n - 1) + 1

end

end A368789.P6367548556505157710

namespace A368789

/-- `(n+1)*∑[2*n]*a(n-1)+1` -/
def P6367548556505157710.Spec : Prop :=
  ∀ n, (P6367548556505157710.a n : ℤ) = A368789 n

end A368789

/-! ## A368789.P14240428150992380173

`(n+1)*(n+1)*n*a(n-1)+1` with `a(0)=0`
-/

namespace A368789.P14240428150992380173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1) * ((n + 1) * (n * a (n - 1))) + 1

end

end A368789.P14240428150992380173

namespace A368789

/-- `(n+1)*(n+1)*n*a(n-1)+1` -/
def P14240428150992380173.Spec : Prop :=
  ∀ n, (P14240428150992380173.a n : ℤ) = A368789 n

theorem P14240428150992380173.correct : P14240428150992380173.Spec := by
  intro n
  simp only [A368789, Nat.add_sub_cancel, A368789.P14240428150992380173.a, A368789.P4799468589908276936.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368789

/-!
# A368790: a(n) = (3*n-2)!!! * Sum_{k=0..n} 1/(3*k-2)!!!.

The programs for A368790, the canonical program `A368790.P16346072992935925239` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368790 has offset 0).

The definition of A368790 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368790.P16346072992935925239

`(3*n-2)*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A368790

/-- `(3*n-2)*a(n-1)+1` -/
def P16346072992935925239.Spec : Prop :=
  ∀ n, P16346072992935925239.a n = A368790 n

theorem P16346072992935925239.correct : P16346072992935925239.Spec := by
  intro n
  simp only [A368790]

end A368790

/-! ## A368790.P2782949824326977042

`1-(2-3*n)*a(n-1)` with `a(0)=1`
-/

namespace A368790.P2782949824326977042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (2 - (3 * n : ℤ)) * a (n - 1)

end

end A368790.P2782949824326977042

namespace A368790

/-- `1-(2-3*n)*a(n-1)` -/
def P2782949824326977042.Spec : Prop :=
  ∀ n, P2782949824326977042.a n = A368790 n

theorem P2782949824326977042.correct : P2782949824326977042.Spec := by
  intro n
  simp only [A368790, Nat.add_sub_cancel, A368790.P2782949824326977042.a, A368790.P16346072992935925239.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368790

/-! ## A368790.P1788377804293398055

`A362269(or(3*n, (n%2)^n))`
-/

namespace A368790.P1788377804293398055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362269 (Nat.lor (3 * n) ((n % 2) ^ n))

end

end A368790.P1788377804293398055

namespace A368790

/-- `A362269(or(3*n, (n%2)^n))` -/
def P1788377804293398055.Spec : Prop :=
  ∀ n, P1788377804293398055.a n = A368790 n

end A368790

/-! ## A368790.P17375515898668268458

`A362269(A008486(n))`
-/

namespace A368790.P17375515898668268458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362269 (A008486 n).toNat

end

end A368790.P17375515898668268458

namespace A368790

/-- `A362269(A008486(n))` -/
def P17375515898668268458.Spec : Prop :=
  ∀ n, P17375515898668268458.a n = A368790 n

end A368790

/-! ## A368790.P1796583036686263483

`A362269(A028310(3*n))`
-/

namespace A368790.P1796583036686263483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362269 (A028310 (3 * n)).toNat

end

end A368790.P1796583036686263483

namespace A368790

/-- `A362269(A028310(3*n))` -/
def P1796583036686263483.Spec : Prop :=
  ∀ n, P1796583036686263483.a n = A368790 n

end A368790

/-!
# A368791: a(n) = A008544(n) * Sum_{k=0..n} 1/A008544(k).

The programs for A368791, the canonical program `A368791.P12060264379967910574` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368791 has offset 0).

The definition of A368791 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368791.P12060264379967910574

`(3*n-1)*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A368791

/-- `(3*n-1)*a(n-1)+1` -/
def P12060264379967910574.Spec : Prop :=
  ∀ n, P12060264379967910574.a n = A368791 n

theorem P12060264379967910574.correct : P12060264379967910574.Spec := by
  intro n
  simp only [A368791]

end A368791

/-! ## A368791.P10438361439647366362

`1-(1-3*n)*a(n-1)` with `a(0)=1`
-/

namespace A368791.P10438361439647366362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (1 - (3 * n : ℤ)) * a (n - 1)

end

end A368791.P10438361439647366362

namespace A368791

/-- `1-(1-3*n)*a(n-1)` -/
def P10438361439647366362.Spec : Prop :=
  ∀ n, P10438361439647366362.a n = A368791 n

theorem P10438361439647366362.correct : P10438361439647366362.Spec := by
  intro n
  simp only [A368791, Nat.add_sub_cancel, A368791.P10438361439647366362.a, A368791.P12060264379967910574.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368791

/-! ## A368791.P12384627055430560075

`A362272(3*n+1)`
-/

namespace A368791.P12384627055430560075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362272 (3 * n + 1)

end

end A368791.P12384627055430560075

namespace A368791

/-- `A362272(3*n+1)` -/
def P12384627055430560075.Spec : Prop :=
  ∀ n, P12384627055430560075.a n = A368791 n

end A368791

/-! ## A368791.P14224235479429052389

`abs(A362272(A016777(n)))`
-/

namespace A368791.P14224235479429052389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A362272 (A016777 n).toNat|

end

end A368791.P14224235479429052389

namespace A368791

/-- `abs(A362272(A016777(n)))` -/
def P14224235479429052389.Spec : Prop :=
  ∀ n, P14224235479429052389.a n = A368791 n

end A368791

/-! ## A368791.P5746362022869122184

`record[A362272(n+1)/(n+1)]`
-/

namespace A368791.P5746362022869122184
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362272 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368791.P5746362022869122184

namespace A368791

/-- `record[A362272(n+1)/(n+1)]` -/
def P5746362022869122184.Spec : Prop :=
  ∀ n, P5746362022869122184.a n = (A368791 n : ℚ)

end A368791

/-!
# A368792: a(n) = (2*n-1)!! * Sum_{k=0..n} k/(2*k-1)!!.

The programs for A368792, the canonical program `A368792.P11131879615610086591` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368792 has offset 0).

The definition of A368792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368792.P11131879615610086591

`(2*n-1)*a(n-1)+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A368792

/-- `(2*n-1)*a(n-1)+n` -/
def P11131879615610086591.Spec : Prop :=
  ∀ n, P11131879615610086591.a n = A368792 n

theorem P11131879615610086591.correct : P11131879615610086591.Spec := by
  intro n
  simp only [A368792]

end A368792

/-! ## A368792.P10893840075641922778

`n-(1-2*n)*a(n-1)` with `a(0)=0`
-/

namespace A368792.P10893840075641922778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (1 - (2 * n : ℤ)) * a (n - 1)

end

end A368792.P10893840075641922778

namespace A368792

/-- `n-(1-2*n)*a(n-1)` -/
def P10893840075641922778.Spec : Prop :=
  ∀ n, P10893840075641922778.a n = A368792 n

theorem P10893840075641922778.correct : P10893840075641922778.Spec := by
  intro n
  simp only [A368792, Nat.add_sub_cancel, A368792.P10893840075641922778.a, A368792.P11131879615610086591.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368792

/-! ## A368792.P15636572398169926625

`A093303(n)/2`
-/

namespace A368792.P15636572398169926625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093303 n : ℚ) / 2

end

end A368792.P15636572398169926625

namespace A368792

/-- `A093303(n)/2` -/
def P15636572398169926625.Spec : Prop :=
  ∀ n, P15636572398169926625.a n = (A368792 n : ℚ)

end A368792

/-! ## A368792.P16475938508113533267

`A222559(2*n)/2`
-/

namespace A368792.P16475938508113533267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222559 (2 * n) : ℚ) / 2

end

end A368792.P16475938508113533267

namespace A368792

/-- `A222559(2*n)/2` -/
def P16475938508113533267.Spec : Prop :=
  ∀ n, P16475938508113533267.a n = (A368792 n : ℚ)

end A368792

/-! ## A368792.P1054161071485376262

`a(n-1)*A004273(n)+n` with `a(0)=0`
-/

namespace A368792.P1054161071485376262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * A004273 n + (n : ℤ)

end

end A368792.P1054161071485376262

namespace A368792

/-- `a(n-1)*A004273(n)+n` -/
def P1054161071485376262.Spec : Prop :=
  ∀ n, P1054161071485376262.a n = A368792 n

end A368792

/-!
# A368793: a(n) = (3*n-2)!!! * Sum_{k=0..n} k/(3*k-2)!!!.

The programs for A368793, the canonical program `A368793.P15471237530259373982` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368793 has offset 0).

The definition of A368793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368793.P15471237530259373982

`(3*n-2)*a(n-1)+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A368793

/-- `(3*n-2)*a(n-1)+n` -/
def P15471237530259373982.Spec : Prop :=
  ∀ n, P15471237530259373982.a n = A368793 n

theorem P15471237530259373982.correct : P15471237530259373982.Spec := by
  intro n
  simp only [A368793]

end A368793

/-! ## A368793.P957740228044318230

`n-(2-3*n)*a(n-1)` with `a(0)=0`
-/

namespace A368793.P957740228044318230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (2 - (3 * n : ℤ)) * a (n - 1)

end

end A368793.P957740228044318230

namespace A368793

/-- `n-(2-3*n)*a(n-1)` -/
def P957740228044318230.Spec : Prop :=
  ∀ n, P957740228044318230.a n = A368793 n

theorem P957740228044318230.correct : P957740228044318230.Spec := by
  intro n
  simp only [A368793, Nat.add_sub_cancel, A368793.P957740228044318230.a, A368793.P15471237530259373982.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A368793

/-!
# A368794: a(n) = (2*n-1)!! * Sum_{k=1..n} (-1)^(k-1)/(2*k-1)!!.

The programs for A368794, the canonical program `A368794.P17305726526449300857` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368794 has offset 0).

The definition of A368794 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368794.P17305726526449300857

`(2*n-1)*a(n-1)+(-1)^(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A368794

/-- `(2*n-1)*a(n-1)+(-1)^(n-1)` -/
def P17305726526449300857.Spec : Prop :=
  ∀ n, P17305726526449300857.a n = (A368794 n : ℚ)

end A368794

/-! ## A368794.P12939746279409562785

`xor(1, (2*n-1)*a(n-1))` with `a(0)=0`
-/

namespace A368794.P12939746279409562785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor 1 (((2 * n : ℤ) - 1) * a (n - 1))

end

end A368794.P12939746279409562785

namespace A368794

/-- `xor(1, (2*n-1)*a(n-1))` -/
def P12939746279409562785.Spec : Prop :=
  ∀ n, P12939746279409562785.a n = A368794 n

end A368794

/-! ## A368794.P17977132396573267708

`(2*n-1)*a(n-1)/gcd(n, a(n-1))-(-1)^n` with `a(0)=0, a(1)=1`
-/

namespace A368794.P17977132396573267708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((2 * n : ℤ) - 1 : ℚ) * (a (n - 1) / (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)) - ((-1) ^ n : ℚ)

end

end A368794.P17977132396573267708

namespace A368794

/-- `(2*n-1)*a(n-1)/gcd(n, a(n-1))-(-1)^n` -/
def P17977132396573267708.Spec : Prop :=
  ∀ n, P17977132396573267708.a n = (A368794 n : ℚ)

end A368794

/-! ## A368794.P15047536044131172477

`A165326(n)+(2*n-1)*a(n-1)/gcd(n, a(n-1))` with `a(0)=0`
-/

namespace A368794.P15047536044131172477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A165326 n : ℚ) + ((2 * n : ℤ) - 1 : ℚ) * (a (n - 1) / (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ))

end

end A368794.P15047536044131172477

namespace A368794

/-- `A165326(n)+(2*n-1)*a(n-1)/gcd(n, a(n-1))` -/
def P15047536044131172477.Spec : Prop :=
  ∀ n, P15047536044131172477.a n = (A368794 n : ℚ)

end A368794

/-!
# A368798: Lexicographically earliest sequence of nonnegative integers such that the doubly-infinite symmetric sequence b defined by b(n) = b(-n) = a(n) for any n >= 0 has no three equidistant equal terms.

The programs for A368798, there is no canonical definition to state claims against.
-/

/-! ## A368798.P11769045283122159460

`A001222(A384661(n+1)+A320448(n+1))`
-/

namespace A368798.P11769045283122159460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A384661 (n + 1) + A320448 (n + 1)).toNat

end

end A368798.P11769045283122159460

/-! ## A368798.P5949655316821312044

`A297034(A089851(n+1)*A207693(2*(n+1)))`
-/

namespace A368798.P5949655316821312044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297034 (A089851 (n + 1) * A207693 (2 * (n + 1))).toNat

end

end A368798.P5949655316821312044

