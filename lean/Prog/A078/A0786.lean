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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C049
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
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A078600: Number of permutation polynomials over F_q of degree < q-2, as q runs through the prime powers >= 2.

The programs for A078600, there is no canonical definition to state claims against.
-/

/-! ## A078600.P9072696451939926844

`C(A001222(A000182(n+1)), n+1)*(n+1)`
-/

namespace A078600.P9072696451939926844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A000182 (n + 1)).toNat).toNat (n + 1) * (n + 1)

end

end A078600.P9072696451939926844

/-!
# A078601: Number of ways to lace a shoe that has n pairs of eyelets, assuming the lacing satisfies certain conditions.

The programs for A078601, there is no canonical definition to state claims against.
-/

/-! ## A078601.P4830235977919961531

`A000203(A277309(n+1)-and(n, -2))`
-/

namespace A078601.P4830235977919961531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A277309 (n + 1) - Int.land (n : ℤ) (-2)).toNat

end

end A078601.P4830235977919961531

/-!
# A078602: Number of ways to lace a shoe that has n pairs of eyelets.

The programs for A078602, there is no canonical definition to state claims against.
-/

/-! ## A078602.P1438916899376654198

`2*A078675(n+1)-A078676(n+1)`
-/

namespace A078602.P1438916899376654198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078675 (n + 1) - A078676 (n + 1)

end

end A078602.P1438916899376654198

/-!
# A078603: Number of ways of arranging the numbers 1..n in a circle so that adjacent numbers do not differ by 1 mod n.

The programs for A078603, there is no canonical definition to state claims against.
-/

/-! ## A078603.P7642086653620817477

`A002816(n+1)*A040000(n)`
-/

namespace A078603.P7642086653620817477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002816 (n + 1) * A040000 n

end

end A078603.P7642086653620817477

/-! ## A078603.P14152488685708358148

`A002816(n+1)*A329683(n)`
-/

namespace A078603.P14152488685708358148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002816 (n + 1) * A329683 n

end

end A078603.P14152488685708358148

/-! ## A078603.P18314459850935745723

`A002816(n+1)*A046698(n+1)`
-/

namespace A078603.P18314459850935745723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002816 (n + 1) * A046698 (n + 1)

end

end A078603.P18314459850935745723

/-! ## A078603.P318319414659193950

`A002816(n+1)*A130130(floor(sqrt(4*n+1)))`
-/

namespace A078603.P318319414659193950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002816 (n + 1) * A130130 (Nat.sqrt (4 * n + 1))

end

end A078603.P318319414659193950

/-! ## A078603.P6216410209514281066

`((A001615(n+1)-1)%2+1)*A002816(n+1)`
-/

namespace A078603.P6216410209514281066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A001615 (n + 1) - 1) 2 + 1) * A002816 (n + 1)

end

end A078603.P6216410209514281066

/-! ## A078603.P7186286952163616658

`((A002322(2*(n+1))-1)%2+1)*A002816(n+1)`
-/

namespace A078603.P7186286952163616658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A002322 (2 * (n + 1)) - 1) 2 + 1) * A002816 (n + 1)

end

end A078603.P7186286952163616658

/-! ## A078603.P14620458323509906152

`A002816(n+1)*A020639((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A078603.P14620458323509906152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002816 (n + 1) * A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A078603.P14620458323509906152

/-! ## A078603.P10178400675475623118

`A002816(n+1)*A020639(A008458(n))`
-/

namespace A078603.P10178400675475623118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002816 (n + 1) * A020639 (A008458 n).toNat

end

end A078603.P10178400675475623118

/-! ## A078603.P15434044358235945461

`A000005(A006530(n+1))*A002816(n+1)`
-/

namespace A078603.P15434044358235945461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006530 (n + 1)).toNat * A002816 (n + 1)

end

end A078603.P15434044358235945461

/-!
# A078604: Largest prime factor of the integer formed by truncating the decimal expansion of Pi to n places.

The programs for A078604, the canonical program `A078604.P15352080251453312958` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078604 has offset 0).

The definition of A078604 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078604.P15352080251453312958

`A006530(A011545(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A078604

/-- `A006530(A011545(n))` -/
def P15352080251453312958.Spec : Prop :=
  ∀ n, P15352080251453312958.a n = A078604 n

theorem P15352080251453312958.correct : P15352080251453312958.Spec := by
  intro n
  simp only [A078604]

end A078604

/-!
# A078605: Sum of square displacements over all self-avoiding n-step walks on the cubic lattice with the first step specified. Numerator of mean square displacement s(n)=a(n)/(A001412(n)/6).

The programs for A078605, there is no canonical definition to state claims against.
-/

/-! ## A078605.P6894672339016147211

`A118313(n+1)/6`
-/

namespace A078605.P6894672339016147211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118313 (n + 1) : ℚ) / 6

end

end A078605.P6894672339016147211

/-! ## A078605.P4279488096177577116

`Δ[∑[A118313(n)]/6]`
-/

namespace A078605.P4279488096177577116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118313 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078605.P4279488096177577116

/-! ## A078605.P14944375752735631565

`record[ratio[A118313(A051340(n))]]`
-/

namespace A078605.P14944375752735631565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118313 (A051340 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078605.P14944375752735631565

/-! ## A078605.P12150890396859053994

`record[ratio[A118313(A152271(n))]]`
-/

namespace A078605.P12150890396859053994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118313 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078605.P12150890396859053994

/-! ## A078605.P11991750437597549758

`record[ratio[A118313(A158416(n))]]`
-/

namespace A078605.P11991750437597549758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118313 (A158416 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078605.P11991750437597549758

/-!
# A078607: Least positive integer x such that 2*x^n > (x+1)^n.

The programs for A078607, the canonical program `A078607.P257325090446418595` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078607 has offset 0).

The definition of A078607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078607.P257325090446418595

`round(n/log(2))+C(n, n²)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078607

/-- `round(n/log(2))+C(n, n²)` -/
def P257325090446418595.Spec : Prop :=
  ∀ n, P257325090446418595.a n = A078607 n

theorem P257325090446418595.correct : P257325090446418595.Spec := by
  intro n
  simp only [A078607]

end A078607

/-! ## A078607.P1534871012135736929

`round(n/log(2))+1-floor(atan(n))`
-/

namespace A078607.P1534871012135736929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.log (2 : ℝ)) + 1 - ⌊Real.arctan (n : ℝ)⌋

end

end A078607.P1534871012135736929

namespace A078607

/-- `round(n/log(2))+1-floor(atan(n))` -/
def P1534871012135736929.Spec : Prop :=
  ∀ n, P1534871012135736929.a n = A078607 n

end A078607

/-! ## A078607.P11803391176658425915

`ceil(round(n/log(2))+1-atan(n))`
-/

namespace A078607.P11803391176658425915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.roundAway ((n : ℝ) / Real.log (2 : ℝ)) + 1 : ℝ) - Real.arctan (n : ℝ)⌉

end

end A078607.P11803391176658425915

namespace A078607

/-- `ceil(round(n/log(2))+1-atan(n))` -/
def P11803391176658425915.Spec : Prop :=
  ∀ n, P11803391176658425915.a n = A078607 n

end A078607

/-! ## A078607.P4065268481769444581

`ceil((a(n-1)+2)/2^(1/n))` with `a(0)=1`
-/

namespace A078607.P4065268481769444581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) + 2 : ℝ) / (2 : ℝ) ^ (1 / (n : ℚ) : ℝ)⌉

end

end A078607.P4065268481769444581

namespace A078607

/-- `ceil((a(n-1)+2)/2^(1/n))` -/
def P4065268481769444581.Spec : Prop :=
  ∀ n, P4065268481769444581.a n = A078607 n

end A078607

/-! ## A078607.P6407270993380903082

`round(n/log(2))+A000010(n+1)%2`
-/

namespace A078607.P6407270993380903082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.log (2 : ℝ)) + Int.tmod (A000010 (n + 1)) 2

end

end A078607.P6407270993380903082

namespace A078607

/-- `round(n/log(2))+A000010(n+1)%2` -/
def P6407270993380903082.Spec : Prop :=
  ∀ n, P6407270993380903082.a n = A078607 n

end A078607

/-! ## A078607.P17566408807195223654

`round(n/log(2))+∑[n+3]%A006530(2*(n+1))`
-/

namespace A078607.P17566408807195223654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.log (2 : ℝ)) + Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A006530 (2 * (n + 1)))

end

end A078607.P17566408807195223654

namespace A078607

/-- `round(n/log(2))+∑[n+3]%A006530(2*(n+1))` -/
def P17566408807195223654.Spec : Prop :=
  ∀ n, P17566408807195223654.a n = A078607 n

end A078607

/-! ## A078607.P16205873943723639398

`A072633(n)-A157928(n)`
-/

namespace A078607.P16205873943723639398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072633 n - A157928 n

end

end A078607.P16205873943723639398

namespace A078607

/-- `A072633(n)-A157928(n)` -/
def P16205873943723639398.Spec : Prop :=
  ∀ n, P16205873943723639398.a n = A078607 n

end A078607

/-! ## A078607.P16444108868083918041

`round(log2(exp(n)+1))`
-/

namespace A078607.P16444108868083918041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.exp (n : ℝ) + 1))

end

end A078607.P16444108868083918041

namespace A078607

/-- `round(log2(exp(n)+1))` -/
def P16444108868083918041.Spec : Prop :=
  ∀ n, P16444108868083918041.a n = A078607 n

end A078607

/-! ## A078607.P3030214581637601156

`round(log2(A002459(n)))+1`
-/

namespace A078607.P3030214581637601156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A002459 n : ℝ)) + 1

end

end A078607.P3030214581637601156

namespace A078607

/-- `round(log2(A002459(n)))+1` -/
def P3030214581637601156.Spec : Prop :=
  ∀ n, P3030214581637601156.a n = A078607 n

end A078607

/-! ## A078607.P11401249879079993380

`round(log2(cosh(n)))+1`
-/

namespace A078607.P11401249879079993380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.cosh (n : ℝ))) + 1

end

end A078607.P11401249879079993380

namespace A078607

/-- `round(log2(cosh(n)))+1` -/
def P11401249879079993380.Spec : Prop :=
  ∀ n, P11401249879079993380.a n = A078607 n

end A078607

/-!
# A078608: a(n) = ceiling(2/(2^(1/n)-1)).

The programs for A078608, the canonical program `A078608.P6501304654114969480` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078608 has offset 1).

The definition of A078608 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(2/(2^(1/(n+1))-1))` (program `A078608.P6501304654114969480`, by `A078608.P6501304654114969480.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078608.P6501304654114969480

`ceil(2/(2^(1/(n+1))-1))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078608

/-- `ceil(2/(2^(1/(n+1))-1))` -/
def P6501304654114969480.Spec : Prop :=
  ∀ n, P6501304654114969480.a n = A078608 (n + 1)

theorem P6501304654114969480.correct : P6501304654114969480.Spec := by
  intro n
  simp only [A078608, Nat.add_sub_cancel]

end A078608

/-! ## A078608.P10110770395670118497

`A342831(n+1)-1`
-/

namespace A078608.P10110770395670118497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342831 (n + 1) - 1

end

end A078608.P10110770395670118497

namespace A078608

/-- `A342831(n+1)-1` -/
def P10110770395670118497.Spec : Prop :=
  ∀ n, P10110770395670118497.a n = A078608 (n + 1)

theorem P10110770395670118497.correct : P10110770395670118497.Spec := by
  intro n
  simp only [A078608, Nat.add_sub_cancel, A078608.P10110770395670118497.a, A078608.P6501304654114969480.a, A342831, A342831.P12803060676768052576.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078608

/-! ## A078608.P4520581104774260393

`floor(A005843(n+1)/log(2))`
-/

namespace A078608.P4520581104774260393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005843 (n + 1) : ℝ) / Real.log (2 : ℝ)⌋

end

end A078608.P4520581104774260393

namespace A078608

/-- `floor(A005843(n+1)/log(2))` -/
def P4520581104774260393.Spec : Prop :=
  ∀ n, P4520581104774260393.a n = A078608 (n + 1)

end A078608

/-! ## A078608.P18395038525744797510

`A307513(2*(n+1))`
-/

namespace A078608.P18395038525744797510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307513 (2 * (n + 1))

end

end A078608.P18395038525744797510

namespace A078608

/-- `A307513(2*(n+1))` -/
def P18395038525744797510.Spec : Prop :=
  ∀ n, P18395038525744797510.a n = A078608 (n + 1)

end A078608

/-! ## A078608.P3885510670941987604

`A059542(2*(n+1))-2*(n+1)`
-/

namespace A078608.P3885510670941987604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059542 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A078608.P3885510670941987604

namespace A078608

/-- `A059542(2*(n+1))-2*(n+1)` -/
def P3885510670941987604.Spec : Prop :=
  ∀ n, P3885510670941987604.a n = A078608 (n + 1)

end A078608

/-! ## A078608.P12786865442959240336

`∑[A022934(2*n+1)+A022934(2*n)]`
-/

namespace A078608.P12786865442959240336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022934 (2 * n + 1) + A022934 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078608.P12786865442959240336

namespace A078608

/-- `∑[A022934(2*n+1)+A022934(2*n)]` -/
def P12786865442959240336.Spec : Prop :=
  ∀ n, P12786865442959240336.a n = A078608 (n + 1)

end A078608

/-! ## A078608.P8960808899643350530

`A330213(2*(n+1))-A206807(2*(n+1))`
-/

namespace A078608.P8960808899643350530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330213 (2 * (n + 1)) - A206807 (2 * (n + 1))

end

end A078608.P8960808899643350530

namespace A078608

/-- `A330213(2*(n+1))-A206807(2*(n+1))` -/
def P8960808899643350530.Spec : Prop :=
  ∀ n, P8960808899643350530.a n = A078608 (n + 1)

end A078608

/-! ## A078608.P18242276000210756189

`A020703(A020703(floor(2*(n+1)/log(2))))`
-/

namespace A078608.P18242276000210756189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A020703 ⌊2 * ((n + 1 : ℝ) / Real.log (2 : ℝ))⌋.toNat).toNat

end

end A078608.P18242276000210756189

namespace A078608

/-- `A020703(A020703(floor(2*(n+1)/log(2))))` -/
def P18242276000210756189.Spec : Prop :=
  ∀ n, P18242276000210756189.a n = A078608 (n + 1)

end A078608

/-! ## A078608.P936377806114696162

`A023443(A342831(n+1))`
-/

namespace A078608.P936377806114696162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A342831 (n + 1)).toNat

end

end A078608.P936377806114696162

namespace A078608

/-- `A023443(A342831(n+1))` -/
def P936377806114696162.Spec : Prop :=
  ∀ n, P936377806114696162.a n = A078608 (n + 1)

end A078608

/-! ## A078608.P5627058334314873286

`A373112(2*(n+1))-1`
-/

namespace A078608.P5627058334314873286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373112 (2 * (n + 1)) - 1

end

end A078608.P5627058334314873286

namespace A078608

/-- `A373112(2*(n+1))-1` -/
def P5627058334314873286.Spec : Prop :=
  ∀ n, P5627058334314873286.a n = A078608 (n + 1)

end A078608

/-! ## A078608.P12815996356007724035

`A023443(A373112(2*(n+1)))`
-/

namespace A078608.P12815996356007724035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A373112 (2 * (n + 1))).toNat

end

end A078608.P12815996356007724035

namespace A078608

/-- `A023443(A373112(2*(n+1)))` -/
def P12815996356007724035.Spec : Prop :=
  ∀ n, P12815996356007724035.a n = A078608 (n + 1)

end A078608

/-! ## A078608.P5834271076204961428

`A140106(2*A342831(n+1))`
-/

namespace A078608.P5834271076204961428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A342831 (n + 1)).toNat

end

end A078608.P5834271076204961428

namespace A078608

/-- `A140106(2*A342831(n+1))` -/
def P5834271076204961428.Spec : Prop :=
  ∀ n, P5834271076204961428.a n = A078608 (n + 1)

end A078608

/-! ## A078608.P17786047711219039169

`A140106(A342831(n+1)+A342831(n+1)+1)`
-/

namespace A078608.P17786047711219039169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A342831 (n + 1) + (A342831 (n + 1) + 1)).toNat

end

end A078608.P17786047711219039169

namespace A078608

/-- `A140106(A342831(n+1)+A342831(n+1)+1)` -/
def P17786047711219039169.Spec : Prop :=
  ∀ n, P17786047711219039169.a n = A078608 (n + 1)

end A078608

/-! ## A078608.P9620393810835063561

`floor(log2(A116472(n+1)))`
-/

namespace A078608.P9620393810835063561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A116472 (n + 1)).toNat

end

end A078608.P9620393810835063561

namespace A078608

/-- `floor(log2(A116472(n+1)))` -/
def P9620393810835063561.Spec : Prop :=
  ∀ n, (P9620393810835063561.a n : ℤ) = A078608 (n + 1)

end A078608

/-! ## A078608.P14409119018832261281

`ceil(log2(cosh(2*(n+1))))`
-/

namespace A078608.P14409119018832261281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.cosh (2 * (n + 1) : ℝ))⌉

end

end A078608.P14409119018832261281

namespace A078608

/-- `ceil(log2(cosh(2*(n+1))))` -/
def P14409119018832261281.Spec : Prop :=
  ∀ n, P14409119018832261281.a n = A078608 (n + 1)

end A078608

/-! ## A078608.P7940949094009949206

`ceil(log2(sinh(2*(n+1))))`
-/

namespace A078608.P7940949094009949206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.sinh (2 * (n + 1) : ℝ))⌉

end

end A078608.P7940949094009949206

namespace A078608

/-- `ceil(log2(sinh(2*(n+1))))` -/
def P7940949094009949206.Spec : Prop :=
  ∀ n, P7940949094009949206.a n = A078608 (n + 1)

end A078608

/-! ## A078608.P6555853390406231148

`ceil(∑[log2(ratio[cosh(2*n)])])`
-/

namespace A078608.P6555853390406231148
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (2 * n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f2 (n + 1) / f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A078608.P6555853390406231148

namespace A078608

/-- `ceil(∑[log2(ratio[cosh(2*n)])])` -/
def P6555853390406231148.Spec : Prop :=
  ∀ n, P6555853390406231148.a n = A078608 (n + 1)

end A078608

/-!
# A078609: Least positive integer x such that 2*x^n>(x+3)^n.

The programs for A078609, the canonical program `A078609.P14524230340821819168` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078609 has offset 2).

The definition of A078609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078609.P14524230340821819168

`ceil(3/(2^(1/(n+2))-1))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078609

/-- `ceil(3/(2^(1/(n+2))-1))` -/
def P14524230340821819168.Spec : Prop :=
  ∀ n, P14524230340821819168.a n = A078609 (n + 2)

theorem P14524230340821819168.correct : P14524230340821819168.Spec := by
  intro n
  simp only [A078609, Nat.add_sub_cancel]

end A078609

/-! ## A078609.P13990108443493227828

`A248188(3*n+3)+A212793(A248164(n+1))`
-/

namespace A078609.P13990108443493227828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248188 (3 * n + 3) + A212793 (A248164 (n + 1)).toNat

end

end A078609.P13990108443493227828

namespace A078609

/-- `A248188(3*n+3)+A212793(A248164(n+1))` -/
def P13990108443493227828.Spec : Prop :=
  ∀ n, P13990108443493227828.a n = A078609 (n + 2)

end A078609

/-! ## A078609.P566578415465439337

`A248188(3*(n+1))+A000188(A006567(3*(n+1)))`
-/

namespace A078609.P566578415465439337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248188 (3 * (n + 1)) + A000188 (A006567 (3 * (n + 1))).toNat

end

end A078609.P566578415465439337

namespace A078609

/-- `A248188(3*(n+1))+A000188(A006567(3*(n+1)))` -/
def P566578415465439337.Spec : Prop :=
  ∀ n, P566578415465439337.a n = A078609 (n + 2)

end A078609

/-! ## A078609.P2721835121964970257

`A365552(A005529(n+1))+A059539(3*n+5)`
-/

namespace A078609.P2721835121964970257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365552 (A005529 (n + 1)).toNat + A059539 (3 * n + 5)

end

end A078609.P2721835121964970257

namespace A078609

/-- `A365552(A005529(n+1))+A059539(3*n+5)` -/
def P2721835121964970257.Spec : Prop :=
  ∀ n, P2721835121964970257.a n = A078609 (n + 2)

end A078609

/-! ## A078609.P449109976983366621

`A059539(3*n+5)+A004736(A000217(2*n+1))`
-/

namespace A078609.P449109976983366621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059539 (3 * n + 5) + A004736 (A000217 (2 * n + 1)).toNat

end

end A078609.P449109976983366621

namespace A078609

/-- `A059539(3*n+5)+A004736(A000217(2*n+1))` -/
def P449109976983366621.Spec : Prop :=
  ∀ n, P449109976983366621.a n = A078609 (n + 2)

end A078609

/-! ## A078609.P3403487457563458316

`A248188(3*(n+1))+A054531(A000217(2*(n+2)))`
-/

namespace A078609.P3403487457563458316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248188 (3 * (n + 1)) + A054531 (A000217 (2 * (n + 2))).toNat

end

end A078609.P3403487457563458316

namespace A078609

/-- `A248188(3*(n+1))+A054531(A000217(2*(n+2)))` -/
def P3403487457563458316.Spec : Prop :=
  ∀ n, P3403487457563458316.a n = A078609 (n + 2)

end A078609

/-! ## A078609.P1136864582943325649

`A248188(3*n+3)+A001065(A158035(n+1))`
-/

namespace A078609.P1136864582943325649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248188 (3 * n + 3) + A001065 (A158035 (n + 1)).toNat

end

end A078609.P1136864582943325649

namespace A078609

/-- `A248188(3*n+3)+A001065(A158035(n+1))` -/
def P1136864582943325649.Spec : Prop :=
  ∀ n, P1136864582943325649.a n = A078609 (n + 2)

end A078609

/-! ## A078609.P11609110554867024547

`A059539(3*n+5)+A054977(A033638(3*(n+1)))`
-/

namespace A078609.P11609110554867024547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059539 (3 * n + 5) + A054977 (A033638 (3 * (n + 1))).toNat

end

end A078609.P11609110554867024547

namespace A078609

/-- `A059539(3*n+5)+A054977(A033638(3*(n+1)))` -/
def P11609110554867024547.Spec : Prop :=
  ∀ n, P11609110554867024547.a n = A078609 (n + 2)

end A078609

/-! ## A078609.P4088742970130853427

`A130296(A054804(3*n+2))+A059539(3*n+5)`
-/

namespace A078609.P4088742970130853427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (A054804 (3 * n + 2)).toNat + A059539 (3 * n + 5)

end

end A078609.P4088742970130853427

namespace A078609

/-- `A130296(A054804(3*n+2))+A059539(3*n+5)` -/
def P4088742970130853427.Spec : Prop :=
  ∀ n, P4088742970130853427.a n = A078609 (n + 2)

end A078609

/-!
# A078610: Least m such that B(n!) = B(n!+m), where B(n) is the sum of binary digits of n.

The programs for A078610, there is no canonical definition to state claims against.
-/

/-! ## A078610.P3114993386867171632

`∑[A144463(A094216(n+1))]`
-/

namespace A078610.P3114993386867171632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144463 (A094216 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078610.P3114993386867171632

/-! ## A078610.P13121692168317792420

`∑[A324931(A322622(n+1))]`
-/

namespace A078610.P13121692168317792420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324931 (A322622 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078610.P13121692168317792420

/-! ## A078610.P10981920947883808177

`∑[A275924(A007318(n+4))]`
-/

namespace A078610.P10981920947883808177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275924 (A007318 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078610.P10981920947883808177

/-! ## A078610.P6788247094021844493

`∑[A275924(A059922(n+4))]`
-/

namespace A078610.P6788247094021844493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275924 (A059922 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078610.P6788247094021844493

/-!
# A078611: Radius of the shortest interval (of positive length) centered at prime(n) that has prime endpoints.

The programs for A078611, there is no canonical definition to state claims against.
-/

/-! ## A078611.P7024955182514745462

`A082467(A000040(n+3))`
-/

namespace A078611.P7024955182514745462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (A000040 (n + 3)).toNat

end

end A078611.P7024955182514745462

/-! ## A078611.P17725188328479552422

`2*A115206(n+3)`
-/

namespace A078611.P17725188328479552422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115206 (n + 3)

end

end A078611.P17725188328479552422

/-! ## A078611.P6215628807939520160

`A004277(A115206(n+3))`
-/

namespace A078611.P6215628807939520160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A115206 (n + 3)).toNat

end

end A078611.P6215628807939520160

/-! ## A078611.P16446822005450665393

`A078497(n+3)-A215848(n+1)`
-/

namespace A078611.P16446822005450665393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078497 (n + 3) - A215848 (n + 1)

end

end A078611.P16446822005450665393

/-! ## A078611.P4171743356068202172

`A215848(n+1)-A129758(n+3)`
-/

namespace A078611.P4171743356068202172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - A129758 (n + 3)

end

end A078611.P4171743356068202172

/-! ## A078611.P5813494808673723406

`A078497(n+3)-A000040(n+3)`
-/

namespace A078611.P5813494808673723406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078497 (n + 3) - A000040 (n + 3)

end

end A078611.P5813494808673723406

/-! ## A078611.P14110318393538210267

`A078496(A045344(n+2))-A045344(n+2)`
-/

namespace A078611.P14110318393538210267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078496 (A045344 (n + 2)).toNat - A045344 (n + 2)

end

end A078611.P14110318393538210267

/-! ## A078611.P13188420413946006652

`A078496(A065091(n+2))-A065091(n+2)`
-/

namespace A078611.P13188420413946006652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078496 (A065091 (n + 2)).toNat - A065091 (n + 2)

end

end A078611.P13188420413946006652

/-! ## A078611.P6821068955145148026

`A082467(A215848(n+1))`
-/

namespace A078611.P6821068955145148026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (A215848 (n + 1)).toNat

end

end A078611.P6821068955145148026

/-! ## A078611.P9204397938055611460

`A082467(A045344(n+2))`
-/

namespace A078611.P9204397938055611460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (A045344 (n + 2)).toNat

end

end A078611.P9204397938055611460

/-! ## A078611.P13999948927087744832

`A082467(A065091(n+2))`
-/

namespace A078611.P13999948927087744832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (A065091 (n + 2)).toNat

end

end A078611.P13999948927087744832

/-! ## A078611.P10702178753858725587

`A082467(A140475(n+2))`
-/

namespace A078611.P10702178753858725587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (A140475 (n + 2)).toNat

end

end A078611.P10702178753858725587

/-! ## A078611.P10137045047912272612

`A082467(p?[A066047(n+1)])`
-/

namespace A078611.P10137045047912272612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A078611.P10137045047912272612

/-! ## A078611.P12092342538064534871

`A082467(p?[A175212(n+1)])`
-/

namespace A078611.P12092342538064534871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A078611.P12092342538064534871

/-! ## A078611.P441267020772650900

`A082467(A172367(n+1)+4)`
-/

namespace A078611.P441267020772650900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (A172367 (n + 1) + 4).toNat

end

end A078611.P441267020772650900

/-! ## A078611.P9605975077634171949

`A204921(4*A000040(n+3))`
-/

namespace A078611.P9605975077634171949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204921 (4 * A000040 (n + 3)).toNat

end

end A078611.P9605975077634171949

/-!
# A078612: Number of transitions necessary for a Turing machine to compute the differences between consecutive primes (primes written in unary), when using the instruction table below.

The programs for A078612, the canonical program `A078612.P18002423566378534717` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078612 has offset 1).

The definition of A078612 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078612.P18002423566378534717

`A000040(n+2)-A000040(n+1)+(2*A000040(n+1)+3)*(A000040(n+1)+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078612

/-- `A000040(n+2)-A000040(n+1)+(2*A000040(n+1)+3)*(A000040(n+1)+1)` -/
def P18002423566378534717.Spec : Prop :=
  ∀ n, P18002423566378534717.a n = A078612 (n + 1)

theorem P18002423566378534717.correct : P18002423566378534717.Spec := by
  intro n
  simp only [A078612, Nat.add_sub_cancel]

end A078612

/-! ## A078612.P13252193627128276912

`A382097(n+1)+A048974(n+1)`
-/

namespace A078612.P13252193627128276912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382097 (n + 1) + A048974 (n + 1)

end

end A078612.P13252193627128276912

namespace A078612

/-- `A382097(n+1)+A048974(n+1)` -/
def P13252193627128276912.Spec : Prop :=
  ∀ n, P13252193627128276912.a n = A078612 (n + 1)

theorem P13252193627128276912.correct : P13252193627128276912.Spec := by
  intro n
  simp only [A078612, Nat.add_sub_cancel, A078612.P13252193627128276912.a, A078612.P18002423566378534717.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A048974, A048974.P12620924037349992420.a, A382097, A382097.P6504080317338827745.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078612

/-! ## A078612.P18086829384337272225

`A110833(n+1)+A110833(n+1)+A008864(n+2)`
-/

namespace A078612.P18086829384337272225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110833 (n + 1) + (A110833 (n + 1) + A008864 (n + 2))

end

end A078612.P18086829384337272225

namespace A078612

/-- `A110833(n+1)+A110833(n+1)+A008864(n+2)` -/
def P18086829384337272225.Spec : Prop :=
  ∀ n, P18086829384337272225.a n = A078612 (n + 1)

theorem P18086829384337272225.correct : P18086829384337272225.Spec := by
  intro n
  simp only [A078612, Nat.add_sub_cancel, A078612.P18086829384337272225.a, A078612.P18002423566378534717.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A110833, A110833.P2318291333998140493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078612

/-! ## A078612.P17757990445630437879

`A001223(n+1)+A000217(A089241(n+1))`
-/

namespace A078612.P17757990445630437879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + A000217 (A089241 (n + 1)).toNat

end

end A078612.P17757990445630437879

namespace A078612

/-- `A001223(n+1)+A000217(A089241(n+1))` -/
def P17757990445630437879.Spec : Prop :=
  ∀ n, P17757990445630437879.a n = A078612 (n + 1)

end A078612

/-! ## A078612.P11640428130347071942

`A056220(p?[round(8*n/7)]+1)+p?[2*n+1]+2`
-/

namespace A078612.P11640428130347071942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat + (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 2 : ℤ)

end

end A078612.P11640428130347071942

namespace A078612

/-- `A056220(p?[round(8*n/7)]+1)+p?[2*n+1]+2` -/
def P11640428130347071942.Spec : Prop :=
  ∀ n, P11640428130347071942.a n = A078612 (n + 1)

end A078612

/-! ## A078612.P11980266499822400414

`A033816(Δ[A007504(n)])+A001043(n+1)`
-/

namespace A078612.P11980266499822400414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033816 (f1 (n + 1) - f1 n).toNat + A001043 (n + 1)

end

end A078612.P11980266499822400414

namespace A078612

/-- `A033816(Δ[A007504(n)])+A001043(n+1)` -/
def P11980266499822400414.Spec : Prop :=
  ∀ n, P11980266499822400414.a n = A078612 (n + 1)

end A078612

/-! ## A078612.P13609375491435401884

`A014105(A008864(n+1))+A001223(n+1)`
-/

namespace A078612.P13609375491435401884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (A008864 (n + 1)).toNat + A001223 (n + 1)

end

end A078612.P13609375491435401884

namespace A078612

/-- `A014105(A008864(n+1))+A001223(n+1)` -/
def P13609375491435401884.Spec : Prop :=
  ∀ n, P13609375491435401884.a n = A078612 (n + 1)

end A078612

/-! ## A078612.P13869651423406599478

`A033816(A000040(n+1))+A001043(n+1)`
-/

namespace A078612.P13869651423406599478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033816 (A000040 (n + 1)).toNat + A001043 (n + 1)

end

end A078612.P13869651423406599478

namespace A078612

/-- `A033816(A000040(n+1))+A001043(n+1)` -/
def P13869651423406599478.Spec : Prop :=
  ∀ n, P13869651423406599478.a n = A078612 (n + 1)

end A078612

/-!
# A078613: Same numbers of distinct prime factors of forms 4*k+1 and 4*k+3.

The programs for A078613, the canonical program `A078613.P3015431349861428628` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078613 has offset 1).

The definition of A078613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078613.P3015431349861428628

`eq[0, A005094(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A078613

/-- `eq[0, A005094(n+1)]+1` -/
def P3015431349861428628.Spec : Prop :=
  ∀ n, (P3015431349861428628.a n : ℤ) = A078613 (n + 1)

theorem P3015431349861428628.correct : P3015431349861428628.Spec := by
  intro n
  simp only [A078613, Nat.add_sub_cancel]

end A078613

/-! ## A078613.P3592939202014845927

`eq[A005089(n+1), A005091(n+1)]+1`
-/

namespace A078613.P3592939202014845927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078613.P3592939202014845927

namespace A078613

/-- `eq[A005089(n+1), A005091(n+1)]+1` -/
def P3592939202014845927.Spec : Prop :=
  ∀ n, (P3592939202014845927.a n : ℤ) = A078613 (n + 1)

end A078613

/-! ## A078613.P14295413528936581145

`eq[A000007(n), A005094(A008574(n))]`
-/

namespace A078613.P14295413528936581145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078613.P14295413528936581145

namespace A078613

/-- `eq[A000007(n), A005094(A008574(n))]` -/
def P14295413528936581145.Spec : Prop :=
  ∀ n, (P14295413528936581145.a n : ℤ) = A078613 (n + 1)

end A078613

/-! ## A078613.P13417083821027453345

`eq[A000038(n), A005094(A008574(n))]`
-/

namespace A078613.P13417083821027453345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078613.P13417083821027453345

namespace A078613

/-- `eq[A000038(n), A005094(A008574(n))]` -/
def P13417083821027453345.Spec : Prop :=
  ∀ n, (P13417083821027453345.a n : ℤ) = A078613 (n + 1)

end A078613

/-! ## A078613.P17856915192151519197

`eq[A000007(n), A005094(A022144(n))]`
-/

namespace A078613.P17856915192151519197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078613.P17856915192151519197

namespace A078613

/-- `eq[A000007(n), A005094(A022144(n))]` -/
def P17856915192151519197.Spec : Prop :=
  ∀ n, (P17856915192151519197.a n : ℤ) = A078613 (n + 1)

end A078613

/-! ## A078613.P16548040704921883953

`eq[A000038(n), A005094(A022144(n))]`
-/

namespace A078613.P16548040704921883953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078613.P16548040704921883953

namespace A078613

/-- `eq[A000038(n), A005094(A022144(n))]` -/
def P16548040704921883953.Spec : Prop :=
  ∀ n, (P16548040704921883953.a n : ℤ) = A078613 (n + 1)

end A078613

/-! ## A078613.P15076759969336025514

`eq[A005089(n+1), A005089(A267099(n+1))]+1`
-/

namespace A078613.P15076759969336025514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005089 (A267099 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078613.P15076759969336025514

namespace A078613

/-- `eq[A005089(n+1), A005089(A267099(n+1))]+1` -/
def P15076759969336025514.Spec : Prop :=
  ∀ n, (P15076759969336025514.a n : ℤ) = A078613 (n + 1)

end A078613

/-! ## A078613.P8560166104917176581

`eq[A005091(n+1), A005091(A267099(n+1))]+1`
-/

namespace A078613.P8560166104917176581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005091 (A267099 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078613.P8560166104917176581

namespace A078613

/-- `eq[A005091(n+1), A005091(A267099(n+1))]+1` -/
def P8560166104917176581.Spec : Prop :=
  ∀ n, (P8560166104917176581.a n : ℤ) = A078613 (n + 1)

end A078613

/-!
# A078614: First differences of A072633.

The programs for A078614, the canonical program `A078614.P11556658287906924704` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078614 has offset 1).

The definition of A078614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2017 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078614.P11556658287906924704

`Δ[round(n/log(2))]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078614

/-- `Δ[round(n/log(2))]` -/
def P11556658287906924704.Spec : Prop :=
  ∀ n, P11556658287906924704.a n = A078614 (n + 1)

theorem P11556658287906924704.correct : P11556658287906924704.Spec := by
  intro n
  simp only [A078614, Nat.add_sub_cancel]

end A078614

/-!
# A078615: a(n) = rad(n)^2, where rad is the squarefree kernel of n (A007947).

The programs for A078615, the canonical program `A078615.P3889666147541299354` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078615 has offset 1).

The definition of A078615 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007947(n+1)²` (program `A078615.P3889666147541299354`, by `A078615.P3889666147541299354.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078615.P3889666147541299354

`A007947(n+1)²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078615

/-- `A007947(n+1)²` -/
def P3889666147541299354.Spec : Prop :=
  ∀ n, P3889666147541299354.a n = A078615 (n + 1)

theorem P3889666147541299354.correct : P3889666147541299354.Spec := by
  intro n
  simp only [A078615, Nat.add_sub_cancel]

end A078615

/-! ## A078615.P1503732226277313211

`∏{p}[1+n, #²]`
-/

namespace A078615.P1503732226277313211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p ^ 2

end

end A078615.P1503732226277313211

namespace A078615

/-- `∏{p}[1+n, #²]` -/
def P1503732226277313211.Spec : Prop :=
  ∀ n, (P1503732226277313211.a n : ℤ) = A078615 (n + 1)

end A078615

/-! ## A078615.P872300904081385010

`∏[ratio[∏{p}[n, #]]²]`
-/

namespace A078615.P872300904081385010
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℚ) / (f2 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078615.P872300904081385010

namespace A078615

/-- `∏[ratio[∏{p}[n, #]]²]` -/
def P872300904081385010.Spec : Prop :=
  ∀ n, P872300904081385010.a n = (A078615 (n + 1) : ℚ)

end A078615

/-! ## A078615.P17737790167865338904

`∏{p}[n+1, #]^2`
-/

namespace A078615.P17737790167865338904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), p) ^ 2

end

end A078615.P17737790167865338904

namespace A078615

/-- `∏{p}[n+1, #]^2` -/
def P17737790167865338904.Spec : Prop :=
  ∀ n, (P17737790167865338904.a n : ℤ) = A078615 (n + 1)

theorem P17737790167865338904.correct : P17737790167865338904.Spec := by
  intro n
  simp only [A078615, Nat.add_sub_cancel, A078615.P17737790167865338904.f1, A078615.P17737790167865338904.a, A078615.P3889666147541299354.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078615

/-! ## A078615.P10835343181615237677

`∏{p}[xor(n, -1), #]²`
-/

namespace A078615.P10835343181615237677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) ^ 2

end

end A078615.P10835343181615237677

namespace A078615

/-- `∏{p}[xor(n, -1), #]²` -/
def P10835343181615237677.Spec : Prop :=
  ∀ n, (P10835343181615237677.a n : ℤ) = A078615 (n + 1)

end A078615

/-! ## A078615.P8513769366324732025

`4^∑{p}[n+1, log2(#)]`
-/

namespace A078615.P8513769366324732025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ))

end

end A078615.P8513769366324732025

namespace A078615

/-- `4^∑{p}[n+1, log2(#)]` -/
def P8513769366324732025.Spec : Prop :=
  ∀ n, P8513769366324732025.a n = (A078615 (n + 1) : ℝ)

end A078615

/-! ## A078615.P14756002050635625981

`exp(∑{p}[n+1, log(#²)])`
-/

namespace A078615.P14756002050635625981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (p ^ 2 : ℝ))

end

end A078615.P14756002050635625981

namespace A078615

/-- `exp(∑{p}[n+1, log(#²)])` -/
def P14756002050635625981.Spec : Prop :=
  ∀ n, P14756002050635625981.a n = (A078615 (n + 1) : ℝ)

end A078615

/-! ## A078615.P9051183936008427828

`root(∏{p}[n+1, #], 1/2)`
-/

namespace A078615.P9051183936008427828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ) ^ (1 / ((1 : ℚ) / 2 : ℝ))

end

end A078615.P9051183936008427828

namespace A078615

/-- `root(∏{p}[n+1, #], 1/2)` -/
def P9051183936008427828.Spec : Prop :=
  ∀ n, P9051183936008427828.a n = (A078615 (n + 1) : ℝ)

end A078615

/-! ## A078615.P3717943894596708964

`∏{p}[2*n-(n-1), #]²`
-/

namespace A078615.P3717943894596708964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) ^ 2

end

end A078615.P3717943894596708964

namespace A078615

/-- `∏{p}[2*n-(n-1), #]²` -/
def P3717943894596708964.Spec : Prop :=
  ∀ n, (P3717943894596708964.a n : ℤ) = A078615 (n + 1)

end A078615

/-! ## A078615.P12604165118392047117

`A062953(n+1)²`
-/

namespace A078615.P12604165118392047117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1) ^ 2

end

end A078615.P12604165118392047117

namespace A078615

/-- `A062953(n+1)²` -/
def P12604165118392047117.Spec : Prop :=
  ∀ n, P12604165118392047117.a n = A078615 (n + 1)

end A078615

/-! ## A078615.P14840121318582552781

`A000290(∏{p}[n+1, #])`
-/

namespace A078615.P14840121318582552781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A078615.P14840121318582552781

namespace A078615

/-- `A000290(∏{p}[n+1, #])` -/
def P14840121318582552781.Spec : Prop :=
  ∀ n, P14840121318582552781.a n = A078615 (n + 1)

theorem P14840121318582552781.correct : P14840121318582552781.Spec := by
  intro n
  simp only [A078615, Nat.add_sub_cancel, A078615.P14840121318582552781.f1, A078615.P14840121318582552781.a, A078615.P3889666147541299354.a, A000290, A000290.P12206242496348924484.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078615

/-! ## A078615.P11532800207213513245

`A011262(∏{p}[n+1, #])`
-/

namespace A078615.P11532800207213513245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A078615.P11532800207213513245

namespace A078615

/-- `A011262(∏{p}[n+1, #])` -/
def P11532800207213513245.Spec : Prop :=
  ∀ n, P11532800207213513245.a n = A078615 (n + 1)

end A078615

/-! ## A078615.P5350121703720147951

`A048798(∏{p}[n+1, #])`
-/

namespace A078615.P5350121703720147951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A078615.P5350121703720147951

namespace A078615

/-- `A048798(∏{p}[n+1, #])` -/
def P5350121703720147951.Spec : Prop :=
  ∀ n, P5350121703720147951.a n = A078615 (n + 1)

end A078615

/-! ## A078615.P12447624331827381011

`A053143(∏{p}[n+1, #])`
-/

namespace A078615.P12447624331827381011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A078615.P12447624331827381011

namespace A078615

/-- `A053143(∏{p}[n+1, #])` -/
def P12447624331827381011.Spec : Prop :=
  ∀ n, P12447624331827381011.a n = A078615 (n + 1)

end A078615

/-! ## A078615.P5230560526028964104

`(A075423(n+1)+1)²`
-/

namespace A078615.P5230560526028964104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075423 (n + 1) + 1) ^ 2

end

end A078615.P5230560526028964104

namespace A078615

/-- `(A075423(n+1)+1)²` -/
def P5230560526028964104.Spec : Prop :=
  ∀ n, P5230560526028964104.a n = A078615 (n + 1)

theorem P5230560526028964104.correct : P5230560526028964104.Spec := by
  intro n
  simp only [A078615, Nat.add_sub_cancel, A078615.P5230560526028964104.a, A078615.P3889666147541299354.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A075423, A075423.P4628253282240293727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078615

/-! ## A078615.P13904212056197678667

`(1-A076618(n+1))²`
-/

namespace A078615.P13904212056197678667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A076618 (n + 1)) ^ 2

end

end A078615.P13904212056197678667

namespace A078615

/-- `(1-A076618(n+1))²` -/
def P13904212056197678667.Spec : Prop :=
  ∀ n, P13904212056197678667.a n = A078615 (n + 1)

theorem P13904212056197678667.correct : P13904212056197678667.Spec := by
  intro n
  simp only [A078615, Nat.add_sub_cancel, A078615.P13904212056197678667.a, A078615.P3889666147541299354.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A076618, A076618.P8099091245670450071.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078615

/-! ## A078615.P7171892830675720746

`A361264(n+1)/(n+1)`
-/

namespace A078615.P7171892830675720746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361264 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A078615.P7171892830675720746

namespace A078615

/-- `A361264(n+1)/(n+1)` -/
def P7171892830675720746.Spec : Prop :=
  ∀ n, P7171892830675720746.a n = (A078615 (n + 1) : ℚ)

end A078615

/-! ## A078615.P13557593505887180811

`A053143(A007948(n+1))`
-/

namespace A078615.P13557593505887180811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A007948 (n + 1)).toNat

end

end A078615.P13557593505887180811

namespace A078615

/-- `A053143(A007948(n+1))` -/
def P13557593505887180811.Spec : Prop :=
  ∀ n, P13557593505887180811.a n = A078615 (n + 1)

end A078615

/-! ## A078615.P1215172553518570618

`A053143(A066990(n+1))`
-/

namespace A078615.P1215172553518570618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A066990 (n + 1)).toNat

end

end A078615.P1215172553518570618

namespace A078615

/-- `A053143(A066990(n+1))` -/
def P1215172553518570618.Spec : Prop :=
  ∀ n, P1215172553518570618.a n = A078615 (n + 1)

end A078615

/-! ## A078615.P10611049299922480198

`A062503(A322590(n+1))`
-/

namespace A078615.P10611049299922480198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (A322590 (n + 1)).toNat

end

end A078615.P10611049299922480198

namespace A078615

/-- `A062503(A322590(n+1))` -/
def P10611049299922480198.Spec : Prop :=
  ∀ n, P10611049299922480198.a n = A078615 (n + 1)

end A078615

/-!
# A078616: a(n) = Sum_{k=0..n} A010815(k).

The programs for A078616, the canonical program `A078616.P11557008643438510974` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078616 has offset 0).

The definition of A078616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078616.P14943069494668662455

`∑[A010815(n)]`
-/

namespace A078616.P14943069494668662455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078616.P14943069494668662455

namespace A078616

/-- `∑[A010815(n)]` -/
def P14943069494668662455.Spec : Prop :=
  ∀ n, P14943069494668662455.a n = A078616 n

end A078616

/-! ## A078616.P8128363860083962175

`1-∑[A257628(n)]`
-/

namespace A078616.P8128363860083962175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078616.P8128363860083962175

namespace A078616

/-- `1-∑[A257628(n)]` -/
def P8128363860083962175.Spec : Prop :=
  ∀ n, P8128363860083962175.a n = A078616 n

end A078616

/-! ## A078616.P8383798088741862168

`∑[A274719(2*n)]`
-/

namespace A078616.P8383798088741862168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274719 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078616.P8383798088741862168

namespace A078616

/-- `∑[A274719(2*n)]` -/
def P8383798088741862168.Spec : Prop :=
  ∀ n, P8383798088741862168.a n = A078616 n

end A078616

/-! ## A078616.P5229911995282135049

`∑[A116916(n)]%2`
-/

namespace A078616.P5229911995282135049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A078616.P5229911995282135049

namespace A078616

/-- `∑[A116916(n)]%2` -/
def P5229911995282135049.Spec : Prop :=
  ∀ n, P5229911995282135049.a n = A078616 n

end A078616

/-! ## A078616.P261103242177048350

`∑[(-1)^n*A121373(n)]`
-/

namespace A078616.P261103242177048350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A121373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078616.P261103242177048350

namespace A078616

/-- `∑[(-1)^n*A121373(n)]` -/
def P261103242177048350.Spec : Prop :=
  ∀ n, P261103242177048350.a n = A078616 n

end A078616

/-! ## A078616.P12349513762719118946

`A274719(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A078616.P12349513762719118946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A274719 (n + n) + a (n - 1)

end

end A078616.P12349513762719118946

namespace A078616

/-- `A274719(n+n)+a(n-1)` -/
def P12349513762719118946.Spec : Prop :=
  ∀ n, P12349513762719118946.a n = A078616 n

end A078616

/-! ## A078616.P13872331031884544215

`A010815(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A078616.P13872331031884544215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010815 (n % (n + 1)) + a (n - 1)

end

end A078616.P13872331031884544215

namespace A078616

/-- `A010815(n%(n+1))+a(n-1)` -/
def P13872331031884544215.Spec : Prop :=
  ∀ n, P13872331031884544215.a n = A078616 n

end A078616

/-! ## A078616.P12734651237058493983

`A163810(A000703(n))`
-/

namespace A078616.P12734651237058493983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (A000703 n).toNat

end

end A078616.P12734651237058493983

namespace A078616

/-- `A163810(A000703(n))` -/
def P12734651237058493983.Spec : Prop :=
  ∀ n, P12734651237058493983.a n = A078616 n

end A078616

/-! ## A078616.P3937945690721299414

`A274719(∑[A257628(n)])`
-/

namespace A078616.P3937945690721299414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274719 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A078616.P3937945690721299414

namespace A078616

/-- `A274719(∑[A257628(n)])` -/
def P3937945690721299414.Spec : Prop :=
  ∀ n, P3937945690721299414.a n = A078616 n

end A078616

/-! ## A078616.P17862504080122442142

`A101455(A193832(n+1))`
-/

namespace A078616.P17862504080122442142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A193832 (n + 1)).toNat

end

end A078616.P17862504080122442142

namespace A078616

/-- `A101455(A193832(n+1))` -/
def P17862504080122442142.Spec : Prop :=
  ∀ n, P17862504080122442142.a n = A078616 n

end A078616

/-! ## A078616.P11557008643438510974

`1-A007877(A235963(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A078616

/-- `1-A007877(A235963(n))` -/
def P11557008643438510974.Spec : Prop :=
  ∀ n, P11557008643438510974.a n = A078616 n

theorem P11557008643438510974.correct : P11557008643438510974.Spec := by
  intro n
  simp only [A078616]

end A078616

/-! ## A078616.P157981038538003541

`Δ[A246575(n)]`
-/

namespace A078616.P157981038538003541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078616.P157981038538003541

namespace A078616

/-- `Δ[A246575(n)]` -/
def P157981038538003541.Spec : Prop :=
  ∀ n, P157981038538003541.a n = A078616 n

end A078616

/-! ## A078616.P10650734771391774544

`A246575(n+1)-A246575(n)`
-/

namespace A078616.P10650734771391774544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246575 (n + 1) - A246575 n

end

end A078616.P10650734771391774544

namespace A078616

/-- `A246575(n+1)-A246575(n)` -/
def P10650734771391774544.Spec : Prop :=
  ∀ n, P10650734771391774544.a n = A078616 n

end A078616

/-! ## A078616.P6487039944964274343

`2*A238208(n+1)-A096765(n+1)`
-/

namespace A078616.P6487039944964274343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238208 (n + 1) - A096765 (n + 1)

end

end A078616.P6487039944964274343

namespace A078616

/-- `2*A238208(n+1)-A096765(n+1)` -/
def P6487039944964274343.Spec : Prop :=
  ∀ n, P6487039944964274343.a n = A078616 n

end A078616

/-! ## A078616.P15686906381189207464

`A297054(n+1)+A297054(n)-A010815(n+1)`
-/

namespace A078616.P15686906381189207464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297054 (n + 1) + (A297054 n - A010815 (n + 1))

end

end A078616.P15686906381189207464

namespace A078616

/-- `A297054(n+1)+A297054(n)-A010815(n+1)` -/
def P15686906381189207464.Spec : Prop :=
  ∀ n, P15686906381189207464.a n = A078616 n

end A078616

/-! ## A078616.P11099810178676985431

`A238208(n+1)-A238215(n+1)`
-/

namespace A078616.P11099810178676985431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238208 (n + 1) - A238215 (n + 1)

end

end A078616.P11099810178676985431

namespace A078616

/-- `A238208(n+1)-A238215(n+1)` -/
def P11099810178676985431.Spec : Prop :=
  ∀ n, P11099810178676985431.a n = A078616 n

end A078616

/-! ## A078616.P12869028372830159729

`A096765(n+1)-2*A238215(n+1)`
-/

namespace A078616.P12869028372830159729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1) - 2 * A238215 (n + 1)

end

end A078616.P12869028372830159729

namespace A078616

/-- `A096765(n+1)-2*A238215(n+1)` -/
def P12869028372830159729.Spec : Prop :=
  ∀ n, P12869028372830159729.a n = A078616 n

end A078616

/-! ## A078616.P5968399886545083414

`A067661(n)-(A238215(n+1)+A238215(n))`
-/

namespace A078616.P5968399886545083414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n - (A238215 (n + 1) + A238215 n)

end

end A078616.P5968399886545083414

namespace A078616

/-- `A067661(n)-(A238215(n+1)+A238215(n))` -/
def P5968399886545083414.Spec : Prop :=
  ∀ n, P5968399886545083414.a n = A078616 n

end A078616

/-! ## A078616.P17364735703745728595

`∑[A010816(3*n)]%2`
-/

namespace A078616.P17364735703745728595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A078616.P17364735703745728595

namespace A078616

/-- `∑[A010816(3*n)]%2` -/
def P17364735703745728595.Spec : Prop :=
  ∀ n, P17364735703745728595.a n = A078616 n

end A078616

/-! ## A078616.P5845722646604335719

`∑[A286956(n)-n]`
-/

namespace A078616.P5845722646604335719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286956 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078616.P5845722646604335719

namespace A078616

/-- `∑[A286956(n)-n]` -/
def P5845722646604335719.Spec : Prop :=
  ∀ n, P5845722646604335719.a n = A078616 n

end A078616

/-!
# A078617: Floor(average of first n squares).

The programs for A078617, the canonical program `A078617.P1339470262902785836` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078617 has offset 1).

The definition of A078617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078617.P3314631558689692731

`ogf((1+x^2+x^3+x^4)/(1-2x+x^2-x^6+2x^7-x^8))`
-/

namespace A078617.P3314631558689692731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, 1, 1] [1, -2, 1, 0, 0, 0, -1, 2, -1] n

end

end A078617.P3314631558689692731

namespace A078617

/-- `ogf((1+x^2+x^3+x^4)/(1-2x+x^2-x^6+2x^7-x^8))` -/
def P3314631558689692731.Spec : Prop :=
  ∀ n, P3314631558689692731.a n = A078617 (n + 1)

end A078617

/-! ## A078617.P1339470262902785836

`floor(A000330(n+1)/(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078617

/-- `floor(A000330(n+1)/(n+1))` -/
def P1339470262902785836.Spec : Prop :=
  ∀ n, P1339470262902785836.a n = A078617 (n + 1)

theorem P1339470262902785836.correct : P1339470262902785836.Spec := by
  intro n
  simp only [A078617, Nat.add_sub_cancel]

end A078617

/-! ## A078617.P2231361473171964639

`∑[∑[7%gcd(6, n)]]`
-/

namespace A078617.P2231361473171964639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 % Nat.gcd 6 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078617.P2231361473171964639

namespace A078617

/-- `∑[∑[7%gcd(6, n)]]` -/
def P2231361473171964639.Spec : Prop :=
  ∀ n, (P2231361473171964639.a n : ℤ) = A078617 (n + 1)

end A078617

/-! ## A078617.P7666147424933487655

`∑[ceil(record[or(2, n)/3])]`
-/

namespace A078617.P7666147424933487655
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078617.P7666147424933487655

namespace A078617

/-- `∑[ceil(record[or(2, n)/3])]` -/
def P7666147424933487655.Spec : Prop :=
  ∀ n, P7666147424933487655.a n = A078617 (n + 1)

end A078617

/-! ## A078617.P12549750714653057461

`∑[ceil(record[xor(2, n)/3])]`
-/

namespace A078617.P12549750714653057461
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078617.P12549750714653057461

namespace A078617

/-- `∑[ceil(record[xor(2, n)/3])]` -/
def P12549750714653057461.Spec : Prop :=
  ∀ n, P12549750714653057461.a n = A078617 (n + 1)

end A078617

/-! ## A078617.P12287745560599953443

`∑[round(record[or(5, n)/6])]`
-/

namespace A078617.P12287745560599953443
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℚ) / 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078617.P12287745560599953443

namespace A078617

/-- `∑[round(record[or(5, n)/6])]` -/
def P12287745560599953443.Spec : Prop :=
  ∀ n, P12287745560599953443.a n = A078617 (n + 1)

end A078617

/-! ## A078617.P15632706783110945729

`∑[round(record[xor(5, n)/6])]`
-/

namespace A078617.P15632706783110945729
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 5 n : ℚ) / 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078617.P15632706783110945729

namespace A078617

/-- `∑[round(record[xor(5, n)/6])]` -/
def P15632706783110945729.Spec : Prop :=
  ∀ n, P15632706783110945729.a n = A078617 (n + 1)

end A078617

/-! ## A078617.P8481460854409813329

`floor((7/4+n)²/3)`
-/

namespace A078617.P8481460854409813329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((7 : ℚ) / 4 + (n : ℚ)) ^ 2 / 3⌋

end

end A078617.P8481460854409813329

namespace A078617

/-- `floor((7/4+n)²/3)` -/
def P8481460854409813329.Spec : Prop :=
  ∀ n, P8481460854409813329.a n = A078617 (n + 1)

end A078617

/-! ## A078617.P9856486139175058763

`∑[∑[((n+1)%2)^(n%3)]]`
-/

namespace A078617.P9856486139175058763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) % 2) ^ (n % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078617.P9856486139175058763

namespace A078617

/-- `∑[∑[((n+1)%2)^(n%3)]]` -/
def P9856486139175058763.Spec : Prop :=
  ∀ n, (P9856486139175058763.a n : ℤ) = A078617 (n + 1)

end A078617

/-! ## A078617.P10230436246308741446

`∑[∑[char[n*(n²+1)%3]]]`
-/

namespace A078617.P10230436246308741446
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n ^ 2 + 1) % 3)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078617.P10230436246308741446

namespace A078617

/-- `∑[∑[char[n*(n²+1)%3]]]` -/
def P10230436246308741446.Spec : Prop :=
  ∀ n, (P10230436246308741446.a n : ℤ) = A078617 (n + 1)

end A078617

/-! ## A078617.P17034132262526770279

`ceil((∑[comp[or(2, n)]]+1)/3)+n`
-/

namespace A078617.P17034132262526770279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 3⌉ + (n : ℤ)

end

end A078617.P17034132262526770279

namespace A078617

/-- `ceil((∑[comp[or(2, n)]]+1)/3)+n` -/
def P17034132262526770279.Spec : Prop :=
  ∀ n, P17034132262526770279.a n = A078617 (n + 1)

end A078617

/-! ## A078617.P7589984744895626215

`∑[∑[char[n*(2*and(1, n)+1)]]]`
-/

namespace A078617.P7589984744895626215
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * Nat.land 1 n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078617.P7589984744895626215

namespace A078617

/-- `∑[∑[char[n*(2*and(1, n)+1)]]]` -/
def P7589984744895626215.Spec : Prop :=
  ∀ n, (P7589984744895626215.a n : ℤ) = A078617 (n + 1)

end A078617

/-! ## A078617.P2161481137009690140

`∑[n-floor(a(n-3)/2)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A078617.P2161481137009690140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  (n : ℤ) - ⌊(f1 (n - 3) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078617.P2161481137009690140

namespace A078617

/-- `∑[n-floor(a(n-3)/2)]` -/
def P2161481137009690140.Spec : Prop :=
  ∀ n, P2161481137009690140.a n = A078617 (n + 1)

end A078617

/-! ## A078617.P16552098468866444657

`round((2*n+1)/(6*acot(n+3)))`
-/

namespace A078617.P16552098468866444657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℝ) / (6 * SequenceMachineLib.acot (n + 3 : ℝ)))

end

end A078617.P16552098468866444657

namespace A078617

/-- `round((2*n+1)/(6*acot(n+3)))` -/
def P16552098468866444657.Spec : Prop :=
  ∀ n, P16552098468866444657.a n = A078617 (n + 1)

end A078617

/-! ## A078617.P3957210911410591699

`∑[A096386(n)+1]`
-/

namespace A078617.P3957210911410591699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096386 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078617.P3957210911410591699

namespace A078617

/-- `∑[A096386(n)+1]` -/
def P3957210911410591699.Spec : Prop :=
  ∀ n, P3957210911410591699.a n = A078617 (n + 1)

end A078617

/-! ## A078617.P602852771486223046

`A171662(n)+1+n`
-/

namespace A078617.P602852771486223046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171662 n + 1 + (n : ℤ)

end

end A078617.P602852771486223046

namespace A078617

/-- `A171662(n)+1+n` -/
def P602852771486223046.Spec : Prop :=
  ∀ n, P602852771486223046.a n = A078617 (n + 1)

end A078617

/-! ## A078617.P1261434056933428038

`∑[∑[1-A354354(n)]]`
-/

namespace A078617.P1261434056933428038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A354354 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078617.P1261434056933428038

namespace A078617

/-- `∑[∑[1-A354354(n)]]` -/
def P1261434056933428038.Spec : Prop :=
  ∀ n, P1261434056933428038.a n = A078617 (n + 1)

end A078617

/-! ## A078617.P7544385905826269831

`∑[∑[A093719(n+3)]]`
-/

namespace A078617.P7544385905826269831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078617.P7544385905826269831

namespace A078617

/-- `∑[∑[A093719(n+3)]]` -/
def P7544385905826269831.Spec : Prop :=
  ∀ n, P7544385905826269831.a n = A078617 (n + 1)

end A078617

/-! ## A078617.P17285484942496301153

`round(A183857(n+1)/2)`
-/

namespace A078617.P17285484942496301153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A183857 (n + 1) : ℚ) / 2)

end

end A078617.P17285484942496301153

namespace A078617

/-- `round(A183857(n+1)/2)` -/
def P17285484942496301153.Spec : Prop :=
  ∀ n, P17285484942496301153.a n = A078617 (n + 1)

end A078617

/-! ## A078617.P7266346468478539670

`(n+1)²-∑[A047503(n+1)]`
-/

namespace A078617.P7266346468478539670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078617.P7266346468478539670

namespace A078617

/-- `(n+1)²-∑[A047503(n+1)]` -/
def P7266346468478539670.Spec : Prop :=
  ∀ n, P7266346468478539670.a n = A078617 (n + 1)

end A078617

/-!
# A078618: a(n) = floor(average of first n cubes).

The programs for A078618, the canonical program `A078618.P6665323330287046658` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078618 has offset 1).

The definition of A078618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078618.P6665323330287046658

`floor((n+1)*(n+2)²/4)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078618

/-- `floor((n+1)*(n+2)²/4)` -/
def P6665323330287046658.Spec : Prop :=
  ∀ n, P6665323330287046658.a n = A078618 (n + 1)

theorem P6665323330287046658.correct : P6665323330287046658.Spec := by
  intro n
  simp only [A078618, Nat.add_sub_cancel]

end A078618

/-! ## A078618.P831103395625110526

`ogf((1+x+3x^2+x^4)/(1-3x+3x^2-x^3-x^4+3x^5-3x^6+x^7))`
-/

namespace A078618.P831103395625110526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3, 0, 1] [1, -3, 3, -1, -1, 3, -3, 1] n

end

end A078618.P831103395625110526

namespace A078618

/-- `ogf((1+x+3x^2+x^4)/(1-3x+3x^2-x^3-x^4+3x^5-3x^6+x^7))` -/
def P831103395625110526.Spec : Prop :=
  ∀ n, P831103395625110526.a n = A078618 (n + 1)

end A078618

/-! ## A078618.P1715430719656575696

`round(cot((n+1)/∑[n+1]²))`
-/

namespace A078618.P1715430719656575696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot ((n + 1 : ℚ) / (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) : ℝ))

end

end A078618.P1715430719656575696

namespace A078618

/-- `round(cot((n+1)/∑[n+1]²))` -/
def P1715430719656575696.Spec : Prop :=
  ∀ n, P1715430719656575696.a n = A078618 (n + 1)

end A078618

/-! ## A078618.P13469120885937033043

`∑[∑[a(n-4)+6]]` with `a(0)=1, a(1)=2, a(2)=5, a(3)=5`
-/

namespace A078618.P13469120885937033043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 5] fun n f2 =>
  f2 (n - 4) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078618.P13469120885937033043

namespace A078618

/-- `∑[∑[a(n-4)+6]]` -/
def P13469120885937033043.Spec : Prop :=
  ∀ n, (P13469120885937033043.a n : ℤ) = A078618 (n + 1)

end A078618

/-! ## A078618.P1725888392142298485

`round((n+1)*cot((2/(n+2))²))`
-/

namespace A078618.P1725888392142298485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) * Real.cot ((2 / (n + 2 : ℚ)) ^ 2 : ℝ))

end

end A078618.P1725888392142298485

namespace A078618

/-- `round((n+1)*cot((2/(n+2))²))` -/
def P1725888392142298485.Spec : Prop :=
  ∀ n, P1725888392142298485.a n = A078618 (n + 1)

end A078618

/-! ## A078618.P12817634549710746627

`∑[∑[∑[floor(a(n-4))]]]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=0, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A078618.P12817634549710746627
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 0, 2] fun n f3 =>
  f3 (n - 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078618.P12817634549710746627

namespace A078618

/-- `∑[∑[∑[floor(a(n-4))]]]` -/
def P12817634549710746627.Spec : Prop :=
  ∀ n, (P12817634549710746627.a n : ℤ) = A078618 (n + 1)

end A078618

/-! ## A078618.P3470036434884428277

`floor(∑[A056106(n)-1]/4)+(n+1)²`
-/

namespace A078618.P3470036434884428277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌋ + ((n + 1) ^ 2 : ℤ)

end

end A078618.P3470036434884428277

namespace A078618

/-- `floor(∑[A056106(n)-1]/4)+(n+1)²` -/
def P3470036434884428277.Spec : Prop :=
  ∀ n, P3470036434884428277.a n = A078618 (n + 1)

end A078618

/-! ## A078618.P7612563878944084217

`round((∑[∑[A016873(n)-2*n]]-1)/2)`
-/

namespace A078618.P7612563878944084217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n - (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2)

end

end A078618.P7612563878944084217

namespace A078618

/-- `round((∑[∑[A016873(n)-2*n]]-1)/2)` -/
def P7612563878944084217.Spec : Prop :=
  ∀ n, P7612563878944084217.a n = A078618 (n + 1)

end A078618

/-! ## A078618.P13946140191485709634

`round((n*∑[n+2]+A004277(n)+1)/2)`
-/

namespace A078618.P13946140191485709634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) + (A004277 n + 1) : ℚ) / 2)

end

end A078618.P13946140191485709634

namespace A078618

/-- `round((n*∑[n+2]+A004277(n)+1)/2)` -/
def P13946140191485709634.Spec : Prop :=
  ∀ n, P13946140191485709634.a n = A078618 (n + 1)

end A078618

/-! ## A078618.P8090804688605459845

`∑[(n+1)²]-A390342(n+1)`
-/

namespace A078618.P8090804688605459845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A390342 (n + 1)

end

end A078618.P8090804688605459845

namespace A078618

/-- `∑[(n+1)²]-A390342(n+1)` -/
def P8090804688605459845.Spec : Prop :=
  ∀ n, P8090804688605459845.a n = A078618 (n + 1)

end A078618

/-! ## A078618.P12024771549310824679

`∑[A014848(n+1)-A011848(n)]`
-/

namespace A078618.P12024771549310824679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 (n + 1) - A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078618.P12024771549310824679

namespace A078618

/-- `∑[A014848(n+1)-A011848(n)]` -/
def P12024771549310824679.Spec : Prop :=
  ∀ n, P12024771549310824679.a n = A078618 (n + 1)

end A078618

/-! ## A078618.P524659818846588708

`A319007(n+2)-A002620(n+1)`
-/

namespace A078618.P524659818846588708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319007 (n + 2) - A002620 (n + 1)

end

end A078618.P524659818846588708

namespace A078618

/-- `A319007(n+2)-A002620(n+1)` -/
def P524659818846588708.Spec : Prop :=
  ∀ n, P524659818846588708.a n = A078618 (n + 1)

end A078618

/-! ## A078618.P7618963644004037400

`A000292(n+1)+A390346(n+1)+A000217(n)`
-/

namespace A078618.P7618963644004037400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A390346 (n + 1) + A000217 n)

end

end A078618.P7618963644004037400

namespace A078618

/-- `A000292(n+1)+A390346(n+1)+A000217(n)` -/
def P7618963644004037400.Spec : Prop :=
  ∀ n, P7618963644004037400.a n = A078618 (n + 1)

end A078618

/-! ## A078618.P2331955811273023271

`A000292(n+1)+A000292(n)-A390342(n+1)`
-/

namespace A078618.P2331955811273023271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A000292 n - A390342 (n + 1))

end

end A078618.P2331955811273023271

namespace A078618

/-- `A000292(n+1)+A000292(n)-A390342(n+1)` -/
def P2331955811273023271.Spec : Prop :=
  ∀ n, P2331955811273023271.a n = A078618 (n + 1)

end A078618

/-! ## A078618.P3747260058019082786

`A319007(n+2)-A004526(n+1)*A008619(n)`
-/

namespace A078618.P3747260058019082786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319007 (n + 2) - A004526 (n + 1) * A008619 n

end

end A078618.P3747260058019082786

namespace A078618

/-- `A319007(n+2)-A004526(n+1)*A008619(n)` -/
def P3747260058019082786.Spec : Prop :=
  ∀ n, P3747260058019082786.a n = A078618 (n + 1)

end A078618

/-! ## A078618.P9715594184806469016

`A011886(n+2)+∑[n+1]`
-/

namespace A078618.P9715594184806469016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011886 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A078618.P9715594184806469016

namespace A078618

/-- `A011886(n+2)+∑[n+1]` -/
def P9715594184806469016.Spec : Prop :=
  ∀ n, P9715594184806469016.a n = A078618 (n + 1)

end A078618

/-! ## A078618.P14223898337114123162

`ceil((n*A000124(n+2)+1)/2)`
-/

namespace A078618.P14223898337114123162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) * A000124 (n + 2) + 1 : ℚ) / 2⌉

end

end A078618.P14223898337114123162

namespace A078618

/-- `ceil((n*A000124(n+2)+1)/2)` -/
def P14223898337114123162.Spec : Prop :=
  ∀ n, P14223898337114123162.a n = A078618 (n + 1)

end A078618

/-! ## A078618.P3999305992782537513

`A011894(n+2)+A000292(n+1)`
-/

namespace A078618.P3999305992782537513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011894 (n + 2) + A000292 (n + 1)

end

end A078618.P3999305992782537513

namespace A078618

/-- `A011894(n+2)+A000292(n+1)` -/
def P3999305992782537513.Spec : Prop :=
  ∀ n, P3999305992782537513.a n = A078618 (n + 1)

end A078618

/-! ## A078618.P3330802812324320808

`A045947(n+1)+A004526(A001859(n+1))`
-/

namespace A078618.P3330802812324320808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045947 (n + 1) + A004526 (A001859 (n + 1)).toNat

end

end A078618.P3330802812324320808

namespace A078618

/-- `A045947(n+1)+A004526(A001859(n+1))` -/
def P3330802812324320808.Spec : Prop :=
  ∀ n, P3330802812324320808.a n = A078618 (n + 1)

end A078618

/-! ## A078618.P3953495693747240121

`A045947(n+1)+A004526(Δ[A045947(n+1)])`
-/

namespace A078618.P3953495693747240121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045947 (n + 1) + A004526 (f1 (n + 1) - f1 n).toNat

end

end A078618.P3953495693747240121

namespace A078618

/-- `A045947(n+1)+A004526(Δ[A045947(n+1)])` -/
def P3953495693747240121.Spec : Prop :=
  ∀ n, P3953495693747240121.a n = A078618 (n + 1)

end A078618

/-!
# A078619: Floor(average of first n factorials).

The programs for A078619, the canonical program `A078619.P1071406797044766145` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078619 has offset 1).

The definition of A078619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078619.P1071406797044766145

`floor(A007489(n+1)/(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078619

/-- `floor(A007489(n+1)/(n+1))` -/
def P1071406797044766145.Spec : Prop :=
  ∀ n, P1071406797044766145.a n = A078619 (n + 1)

theorem P1071406797044766145.correct : P1071406797044766145.Spec := by
  intro n
  simp only [A078619, Nat.add_sub_cancel]

end A078619

/-! ## A078619.P13142368901853603342

`floor(∑[(n+1)!]/(n+1))`
-/

namespace A078619.P13142368901853603342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)⌋

end

end A078619.P13142368901853603342

namespace A078619

/-- `floor(∑[(n+1)!]/(n+1))` -/
def P13142368901853603342.Spec : Prop :=
  ∀ n, P13142368901853603342.a n = A078619 (n + 1)

end A078619

/-! ## A078619.P15781271935064512782

`ceil((∑[(n+1)!]-n)/(n+1))`
-/

namespace A078619.P15781271935064512782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A078619.P15781271935064512782

namespace A078619

/-- `ceil((∑[(n+1)!]-n)/(n+1))` -/
def P15781271935064512782.Spec : Prop :=
  ∀ n, P15781271935064512782.a n = A078619 (n + 1)

end A078619

/-! ## A078619.P11866036620343050917

`floor(∑[(n+1)*a(n-1)]/(n+1))` with `a(0)=1`
-/

namespace A078619.P11866036620343050917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)⌋

end

end A078619.P11866036620343050917

namespace A078619

/-- `floor(∑[(n+1)*a(n-1)]/(n+1))` -/
def P11866036620343050917.Spec : Prop :=
  ∀ n, P11866036620343050917.a n = A078619 (n + 1)

end A078619

/-! ## A078619.P5529415465285459592

`ceil(A003422(n+2)/(n+1))-1`
-/

namespace A078619.P5529415465285459592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003422 (n + 2) : ℚ) / (n + 1 : ℚ)⌉ - 1

end

end A078619.P5529415465285459592

namespace A078619

/-- `ceil(A003422(n+2)/(n+1))-1` -/
def P5529415465285459592.Spec : Prop :=
  ∀ n, P5529415465285459592.a n = A078619 (n + 1)

end A078619

/-!
# A078620: Floor(average of first n Fibonacci numbers).

The programs for A078620, the canonical program `A078620.P4925693714063864972` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078620 has offset 1).

The definition of A078620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078620.P4925693714063864972

`floor(∑[a(n-1)+a(n-2)]/(n+1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078620

/-- `floor(∑[a(n-1)+a(n-2)]/(n+1))` -/
def P4925693714063864972.Spec : Prop :=
  ∀ n, P4925693714063864972.a n = A078620 (n + 1)

theorem P4925693714063864972.correct : P4925693714063864972.Spec := by
  intro n
  simp only [A078620, Nat.add_sub_cancel]

end A078620

/-! ## A078620.P18304396431974526128

`round(A215004(n)/(n+1))`
-/

namespace A078620.P18304396431974526128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A215004 n : ℚ) / (n + 1 : ℚ))

end

end A078620.P18304396431974526128

namespace A078620

/-- `round(A215004(n)/(n+1))` -/
def P18304396431974526128.Spec : Prop :=
  ∀ n, P18304396431974526128.a n = A078620 (n + 1)

end A078620

/-! ## A078620.P4838054105220587163

`floor((A020695(n)-1)/(n+1))`
-/

namespace A078620.P4838054105220587163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020695 n - 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A078620.P4838054105220587163

namespace A078620

/-- `floor((A020695(n)-1)/(n+1))` -/
def P4838054105220587163.Spec : Prop :=
  ∀ n, P4838054105220587163.a n = A078620 (n + 1)

end A078620

/-! ## A078620.P8410618953122472560

`floor(A000071(n+3)/(n+1))`
-/

namespace A078620.P8410618953122472560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000071 (n + 3) : ℚ) / (n + 1 : ℚ)⌋

end

end A078620.P8410618953122472560

namespace A078620

/-- `floor(A000071(n+3)/(n+1))` -/
def P8410618953122472560.Spec : Prop :=
  ∀ n, P8410618953122472560.a n = A078620 (n + 1)

end A078620

/-! ## A078620.P4215748106404917899

`floor(A226538(2*n)/(n+1))`
-/

namespace A078620.P4215748106404917899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A226538 (2 * n) : ℚ) / (n + 1 : ℚ)⌋

end

end A078620.P4215748106404917899

namespace A078620

/-- `floor(A226538(2*n)/(n+1))` -/
def P4215748106404917899.Spec : Prop :=
  ∀ n, P4215748106404917899.a n = A078620 (n + 1)

end A078620

/-! ## A078620.P8932979690934379262

`floor(∑[∑[A212804(n)]]/(n+1))`
-/

namespace A078620.P8932979690934379262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A078620.P8932979690934379262

namespace A078620

/-- `floor(∑[∑[A212804(n)]]/(n+1))` -/
def P8932979690934379262.Spec : Prop :=
  ∀ n, P8932979690934379262.a n = A078620 (n + 1)

end A078620

/-! ## A078620.P9327399555869628289

`floor(∑[A000045(n+1)]/(n+1))`
-/

namespace A078620.P9327399555869628289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A078620.P9327399555869628289

namespace A078620

/-- `floor(∑[A000045(n+1)]/(n+1))` -/
def P9327399555869628289.Spec : Prop :=
  ∀ n, P9327399555869628289.a n = A078620 (n + 1)

end A078620

/-! ## A078620.P17161291150616918310

`floor((A000045(n+3)-1)/(n+1))`
-/

namespace A078620.P17161291150616918310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (n + 3) - 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A078620.P17161291150616918310

namespace A078620

/-- `floor((A000045(n+3)-1)/(n+1))` -/
def P17161291150616918310.Spec : Prop :=
  ∀ n, P17161291150616918310.a n = A078620 (n + 1)

end A078620

/-! ## A078620.P13568712378755876185

`floor(A001595(n+2)/(2*(n+1)))`
-/

namespace A078620.P13568712378755876185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001595 (n + 2) : ℚ) / (2 * (n + 1) : ℚ)⌋

end

end A078620.P13568712378755876185

namespace A078620

/-- `floor(A001595(n+2)/(2*(n+1)))` -/
def P13568712378755876185.Spec : Prop :=
  ∀ n, P13568712378755876185.a n = A078620 (n + 1)

end A078620

/-! ## A078620.P7754116690077227342

`floor(A019274(n+3)/A004277(n+1))`
-/

namespace A078620.P7754116690077227342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019274 (n + 3) : ℚ) / (A004277 (n + 1) : ℚ)⌋

end

end A078620.P7754116690077227342

namespace A078620

/-- `floor(A019274(n+3)/A004277(n+1))` -/
def P7754116690077227342.Spec : Prop :=
  ∀ n, P7754116690077227342.a n = A078620 (n + 1)

end A078620

/-!
# A078621: Values of n such that Sum[ -(-1)^(k) n/k (n-1)/(k+1),{k,1,n}] (n!!) is an integer.

The programs for A078621, the canonical program `A078621.P18072575114299838667` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078621 has offset 1).

The definition of A078621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078621.P18072575114299838667

`ogf((1+4x+2x^2-6x^3-6x^4+4x^6)/(1-x-2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078621

/-- `ogf((1+4x+2x^2-6x^3-6x^4+4x^6)/(1-x-2x^2+2x^3))` -/
def P18072575114299838667.Spec : Prop :=
  ∀ n, P18072575114299838667.a n = A078621 (n + 1)

theorem P18072575114299838667.correct : P18072575114299838667.Spec := by
  intro n
  simp only [A078621, Nat.add_sub_cancel]

end A078621

/-! ## A078621.P6583166650689409245

`A267872(eq[xor(1, n+1), A231551(n)])`
-/

namespace A078621.P6583166650689409245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078621.P6583166650689409245

namespace A078621

/-- `A267872(eq[xor(1, n+1), A231551(n)])` -/
def P6583166650689409245.Spec : Prop :=
  ∀ n, P6583166650689409245.a n = A078621 (n + 1)

end A078621

/-! ## A078621.P12939423769193440761

`eq[A106249(n), A330925(n)]`
-/

namespace A078621.P12939423769193440761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078621.P12939423769193440761

namespace A078621

/-- `eq[A106249(n), A330925(n)]` -/
def P12939423769193440761.Spec : Prop :=
  ∀ n, (P12939423769193440761.a n : ℤ) = A078621 (n + 1)

end A078621

/-! ## A078621.P13135706438374870071

`A005408(record[A071044(n)%A008619(n)])`
-/

namespace A078621.P13135706438374870071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071044 n) (A008619 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078621.P13135706438374870071

namespace A078621

/-- `A005408(record[A071044(n)%A008619(n)])` -/
def P13135706438374870071.Spec : Prop :=
  ∀ n, P13135706438374870071.a n = A078621 (n + 1)

end A078621

/-! ## A078621.P17317470246993243622

`record[A000265(A153152(n)+A115510(n+1))]`
-/

namespace A078621.P17317470246993243622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A153152 n + A115510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078621.P17317470246993243622

namespace A078621

/-- `record[A000265(A153152(n)+A115510(n+1))]` -/
def P17317470246993243622.Spec : Prop :=
  ∀ n, P17317470246993243622.a n = A078621 (n + 1)

end A078621

/-!
# A078622: Primes of the form prime(n)*prime(n*2)+2.

The programs for A078622, there is no canonical definition to state claims against.
-/

/-! ## A078622.P17601496903491130455

`p?[A319613(n+1)+2]`
-/

namespace A078622.P17601496903491130455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319613 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078622.P17601496903491130455

/-! ## A078622.P7349378196085112159

`p?[A000040(n+1)*A031215(n+1)+2]`
-/

namespace A078622.P7349378196085112159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A031215 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078622.P7349378196085112159

/-! ## A078622.P11183406295404129692

`p?[A000040(2*(n+1))*A000040(n+1)+2]`
-/

namespace A078622.P11183406295404129692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) * A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078622.P11183406295404129692

/-! ## A078622.P9615026209910610226

`p?[lcm(A000040(n+1), A000040(n+2+n))+2]`
-/

namespace A078622.P9615026209910610226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000040 (n + 1)) (A000040 (n + 2 + n)) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078622.P9615026209910610226

/-! ## A078622.P9439348138146458295

`p?[record[A020639(n+2)]*A006005(2*(n+1))+2]`
-/

namespace A078622.P9439348138146458295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A006005 (2 * (n + 1)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078622.P9439348138146458295

/-!
# A078623: Number of matched parentheses and brackets of length n, where a closing bracket will close any remaining open parentheses back to the matching open bracket (as in some versions of LISP).

The programs for A078623, the canonical program `A078623.P1790025366754748345` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078623 has offset 0).

The definition of A078623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078623.P1790025366754748345

`∑{#}[n, (-1)^(n-#)*C(n, #)*A369618(#)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078623

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A369618(#)]` -/
def P1790025366754748345.Spec : Prop :=
  ∀ n, P1790025366754748345.a n = (A078623 n : ℚ)

end A078623

/-!
# A078624: Primes of the form 7*x^3 + 5*x^2 + 3*x + 2.

The programs for A078624, there is no canonical definition to state claims against.
-/

/-! ## A078624.P7414557398695426758

`p?[A130884(n)+n*(∑[8*n-1]+3)+1]`
-/

namespace A078624.P7414557398695426758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130884 n + ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j + 3) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078624.P7414557398695426758

/-!
# A078626: Primes p which concatenated with p+2 give a prime.

The programs for A078626, there is no canonical definition to state claims against.
-/

/-! ## A078626.P5939535848029688206

`p?[A034808(n+1)-2]`
-/

namespace A078626.P5939535848029688206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078626.P5939535848029688206

/-! ## A078626.P4074283496444736777

`p?[A032617(n+1)]`
-/

namespace A078626.P4074283496444736777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078626.P4074283496444736777

/-! ## A078626.P14251430356286808877

`∩[A002476(n+1), A032617(n+1)]`
-/

namespace A078626.P14251430356286808877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078626.P14251430356286808877

/-! ## A078626.P4195383338799527153

`∩[A007645(n+1), A032617(n+1)]`
-/

namespace A078626.P4195383338799527153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078626.P4195383338799527153

/-! ## A078626.P1794178930740484694

`∩[A032617(n+1), A045331(n+1)]`
-/

namespace A078626.P1794178930740484694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078626.P1794178930740484694

/-! ## A078626.P14071178039495942239

`∩[A032617(n+1), A045375(n+1)]`
-/

namespace A078626.P14071178039495942239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078626.P14071178039495942239

/-! ## A078626.P6477884869469449507

`∩[A032617(n+1), A040116(n+1)]`
-/

namespace A078626.P6477884869469449507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078626.P6477884869469449507

/-! ## A078626.P5760624671086106445

`∩[A032617(n+1), A325143(n+1)]`
-/

namespace A078626.P5760624671086106445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078626.P5760624671086106445

/-! ## A078626.P17045167649282516834

`∩[A032617(n+1), A045348(n+1)]`
-/

namespace A078626.P17045167649282516834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078626.P17045167649282516834

/-! ## A078626.P915153130450188123

`∩[A032617(n+1), A045371(n+1)]`
-/

namespace A078626.P915153130450188123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078626.P915153130450188123

/-! ## A078626.P13342976491898274473

`∩[A032617(n+1), A140557(n+1)]`
-/

namespace A078626.P13342976491898274473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078626.P13342976491898274473

/-! ## A078626.P14329394128875595769

`∩[A032617(n+1), A167464(n+1)]`
-/

namespace A078626.P14329394128875595769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078626.P14329394128875595769

/-! ## A078626.P15397622076380869921

`∩[A032617(n+1), A140562(n+1)]`
-/

namespace A078626.P15397622076380869921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078626.P15397622076380869921

/-! ## A078626.P88694244964441191

`∩[A032617(n+1), A140563(n+1)]`
-/

namespace A078626.P88694244964441191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078626.P88694244964441191

/-! ## A078626.P9178324205710771577

`∩[A032617(n+1), A138645(n+1)]`
-/

namespace A078626.P9178324205710771577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078626.P9178324205710771577

/-! ## A078626.P11769639461775007205

`∩[A032617(n+1), A049591(n+1)]`
-/

namespace A078626.P11769639461775007205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078626.P11769639461775007205

/-! ## A078626.P10931492889503287688

`∩[A032617(n+1), A067774(n+1)]`
-/

namespace A078626.P10931492889503287688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078626.P10931492889503287688

/-! ## A078626.P4650884629117568647

`∩[A032617(n+1), A053176(n+1)]`
-/

namespace A078626.P4650884629117568647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078626.P4650884629117568647

/-! ## A078626.P5704067351956198430

`∩[A000040(n+1), A032617(n+1)]`
-/

namespace A078626.P5704067351956198430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078626.P5704067351956198430

/-! ## A078626.P10838943152210325857

`∩[A004139(n+1), A032617(n+1)]`
-/

namespace A078626.P10838943152210325857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078626.P10838943152210325857

/-!
# A078627: Write n in binary; repeatedly sum the "digits" until reaching 1; a(n) = 1 + number of steps required.

The programs for A078627, the canonical program `A078627.P3590546256859518006` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078627 has offset 1).

The definition of A078627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078627.P7996561407152172079

`1+A180094(n+1)`
-/

namespace A078627.P7996561407152172079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A180094 (n + 1)

end

end A078627.P7996561407152172079

namespace A078627

/-- `1+A180094(n+1)` -/
def P7996561407152172079.Spec : Prop :=
  ∀ n, P7996561407152172079.a n = A078627 (n + 1)

end A078627

/-! ## A078627.P3590546256859518006

`1+a(A000120(n+1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A078627

/-- `1+a(A000120(n+1)-1)` -/
def P3590546256859518006.Spec : Prop :=
  ∀ n, (P3590546256859518006.a n : ℤ) = A078627 (n + 1)

theorem P3590546256859518006.correct : P3590546256859518006.Spec := by
  intro n
  simp only [A078627, Nat.add_sub_cancel]

end A078627

/-! ## A078627.P3866880641313772691

`a(n-∑[val(n+1, 2)])+1` with `a(0)=1`
-/

namespace A078627.P3866880641313772691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - ∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A078627.P3866880641313772691

namespace A078627

/-- `a(n-∑[val(n+1, 2)])+1` -/
def P3866880641313772691.Spec : Prop :=
  ∀ n, (P3866880641313772691.a n : ℤ) = A078627 (n + 1)

end A078627

/-! ## A078627.P17424354553726642823

`1+a(A048881(n))` with `a(0)=1`
-/

namespace A078627.P17424354553726642823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + a (A048881 n).toNat

end

end A078627.P17424354553726642823

namespace A078627

/-- `1+a(A048881(n))` -/
def P17424354553726642823.Spec : Prop :=
  ∀ n, (P17424354553726642823.a n : ℤ) = A078627 (n + 1)

end A078627

/-! ## A078627.P12782193043624023277

`a(log2(A048896(n)))+1` with `a(0)=1`
-/

namespace A078627.P12782193043624023277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway (Real.logb 2 (A048896 n : ℝ))).toNat + 1

end

end A078627.P12782193043624023277

namespace A078627

/-- `a(log2(A048896(n)))+1` -/
def P12782193043624023277.Spec : Prop :=
  ∀ n, (P12782193043624023277.a n : ℤ) = A078627 (n + 1)

end A078627

/-! ## A078627.P6497070073764000436

`a(n-∑[A007814(n+1)])+1` with `a(0)=1`
-/

namespace A078627.P6497070073764000436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A078627.P6497070073764000436

namespace A078627

/-- `a(n-∑[A007814(n+1)])+1` -/
def P6497070073764000436.Spec : Prop :=
  ∀ n, (P6497070073764000436.a n : ℤ) = A078627 (n + 1)

end A078627

/-! ## A078627.P928771487121100616

`a(A000120(A025480(n)))+1` with `a(0)=1`
-/

namespace A078627.P928771487121100616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A000120 (A025480 n).toNat).toNat + 1

end

end A078627.P928771487121100616

namespace A078627

/-- `a(A000120(A025480(n)))+1` -/
def P928771487121100616.Spec : Prop :=
  ∀ n, (P928771487121100616.a n : ℤ) = A078627 (n + 1)

end A078627

/-! ## A078627.P7217485504690963956

`a(A000120(A053645(n+1)))+1` with `a(0)=1`
-/

namespace A078627.P7217485504690963956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A000120 (A053645 (n + 1)).toNat).toNat + 1

end

end A078627.P7217485504690963956

namespace A078627

/-- `a(A000120(A053645(n+1)))+1` -/
def P7217485504690963956.Spec : Prop :=
  ∀ n, (P7217485504690963956.a n : ℤ) = A078627 (n + 1)

end A078627

/-! ## A078627.P2014959620932308796

`a(A000120(A129760(n+1)))+1` with `a(0)=1`
-/

namespace A078627.P2014959620932308796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A000120 (A129760 (n + 1)).toNat).toNat + 1

end

end A078627.P2014959620932308796

namespace A078627

/-- `a(A000120(A129760(n+1)))+1` -/
def P2014959620932308796.Spec : Prop :=
  ∀ n, (P2014959620932308796.a n : ℤ) = A078627 (n + 1)

end A078627

/-! ## A078627.P6384729107698701171

`A201219(n+1)+A000120(A000120(n+1))`
-/

namespace A078627.P6384729107698701171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201219 (n + 1) + A000120 (A000120 (n + 1)).toNat

end

end A078627.P6384729107698701171

namespace A078627

/-- `A201219(n+1)+A000120(A000120(n+1))` -/
def P6384729107698701171.Spec : Prop :=
  ∀ n, P6384729107698701171.a n = A078627 (n + 1)

end A078627

/-! ## A078627.P14387774073576244114

`a(A001222(A071044(n+1))-1)+1` with `a(0)=1`
-/

namespace A078627.P14387774073576244114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A001222 (A071044 (n + 1)).toNat - 1).toNat + 1

end

end A078627.P14387774073576244114

namespace A078627

/-- `a(A001222(A071044(n+1))-1)+1` -/
def P14387774073576244114.Spec : Prop :=
  ∀ n, (P14387774073576244114.a n : ℤ) = A078627 (n + 1)

end A078627

/-! ## A078627.P15127815041828447785

`a(A001222(A278222(n+1))-1)+1` with `a(0)=1`
-/

namespace A078627.P15127815041828447785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A001222 (A278222 (n + 1)).toNat - 1).toNat + 1

end

end A078627.P15127815041828447785

namespace A078627

/-- `a(A001222(A278222(n+1))-1)+1` -/
def P15127815041828447785.Spec : Prop :=
  ∀ n, (P15127815041828447785.a n : ℤ) = A078627 (n + 1)

end A078627

/-! ## A078627.P14245283675855935388

`a(A165277(A062877(n)))+1` with `a(0)=1`
-/

namespace A078627.P14245283675855935388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A165277 (A062877 n).toNat).toNat + 1

end

end A078627.P14245283675855935388

namespace A078627

/-- `a(A165277(A062877(n)))+1` -/
def P14245283675855935388.Spec : Prop :=
  ∀ n, (P14245283675855935388.a n : ℤ) = A078627 (n + 1)

end A078627

/-!
# A078628: Number of ways of arranging the numbers 1..n in a circle so that there is no consecutive triple i, i+1, i+2 or i, i-1, i-2 (mod n).

The programs for A078628, there is no canonical definition to state claims against.
-/

/-! ## A078628.P15542391274106415772

`round(atan(n+12))*A078673(n+1)`
-/

namespace A078628.P15542391274106415772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (n + 12 : ℝ)) * A078673 (n + 1)

end

end A078628.P15542391274106415772

/-! ## A078628.P3085550109606793190

`A078673(n+1)*A329683(n)`
-/

namespace A078628.P3085550109606793190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078673 (n + 1) * A329683 n

end

end A078628.P3085550109606793190

/-! ## A078628.P16023912332914873825

`A046698(n)!*A078673(n+1)`
-/

namespace A078628.P16023912332914873825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A046698 n).toNat : ℤ) * A078673 (n + 1)

end

end A078628.P16023912332914873825

/-! ## A078628.P9943908041514559006

`A046698(n+1)*A078673(n+1)`
-/

namespace A078628.P9943908041514559006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (n + 1) * A078673 (n + 1)

end

end A078628.P9943908041514559006

/-! ## A078628.P3232013693665609688

`A040001(4*C(n, 2))*A078673(n+1)`
-/

namespace A078628.P3232013693665609688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (4 * Nat.choose n 2) * A078673 (n + 1)

end

end A078628.P3232013693665609688

/-!
# A078629: Number of ways to lace a shoe that has n pairs of eyelets, assuming the lacing satisfies certain conditions.

The programs for A078629, there is no canonical definition to state claims against.
-/

/-! ## A078629.P10600465353636934906

`A078674(n+1)*A362914(n+1)`
-/

namespace A078629.P10600465353636934906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078674 (n + 1) * A362914 (n + 1)

end

end A078629.P10600465353636934906

/-! ## A078629.P9489911418121155330

`A078640(n+5)*A078674(n+1)`
-/

namespace A078629.P9489911418121155330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078640 (n + 5) * A078674 (n + 1)

end

end A078629.P9489911418121155330

/-!
# A078631: Denominators of coefficients of asymptotic expansion of probability p(n) (see A002816) in powers of 1/n.

The programs for A078631, there is no canonical definition to state claims against.
-/

/-! ## A078631.P6202471834730445581

`A294650(∏[A294640(n)])`
-/

namespace A078631.P6202471834730445581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294650 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A078631.P6202471834730445581

/-! ## A078631.P16183669939677229466

`A000265(n!/A089408(n))`
-/

namespace A078631.P16183669939677229466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (A089408 n : ℚ))).toNat

end

end A078631.P16183669939677229466

/-! ## A078631.P16511924263861892889

`A000265(A000142(n)/A089408(n))`
-/

namespace A078631.P16511924263861892889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A000142 n : ℚ) / (A089408 n : ℚ))).toNat

end

end A078631.P16511924263861892889

/-! ## A078631.P2053742917514559955

`A000265(A098558(n)/A089408(n))`
-/

namespace A078631.P2053742917514559955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A098558 n : ℚ) / (A089408 n : ℚ))).toNat

end

end A078631.P2053742917514559955

/-! ## A078631.P7095510756760448235

`A171435(A000142(n)/A089408(n))`
-/

namespace A078631.P7095510756760448235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (SequenceMachineLib.roundAway ((A000142 n : ℚ) / (A089408 n : ℚ))).toNat

end

end A078631.P7095510756760448235

/-!
# A078632: Number of geometric subsequences of [1,...,n] with integral successive-term ratio and length > 1.

The programs for A078632, the canonical program `A078632.P6780388354337714643` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078632 has offset 1).

The definition of A078632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078632.P6780388354337714643

`∑[A309891(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A078632

/-- `∑[A309891(n+1)]` -/
def P6780388354337714643.Spec : Prop :=
  ∀ n, P6780388354337714643.a n = A078632 (n + 1)

theorem P6780388354337714643.correct : P6780388354337714643.Spec := by
  intro n
  simp only [A078632, Nat.add_sub_cancel]

end A078632

/-! ## A078632.P11292966816322973961

`∑[A169594(n+1)-1]`
-/

namespace A078632.P11292966816322973961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169594 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078632.P11292966816322973961

namespace A078632

/-- `∑[A169594(n+1)-1]` -/
def P11292966816322973961.Spec : Prop :=
  ∀ n, P11292966816322973961.a n = A078632 (n + 1)

end A078632

/-! ## A078632.P16428067614503149344

`A078651(n+1)-(n+1)`
-/

namespace A078632.P16428067614503149344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078651 (n + 1) - (n + 1 : ℤ)

end

end A078632.P16428067614503149344

namespace A078632

/-- `A078651(n+1)-(n+1)` -/
def P16428067614503149344.Spec : Prop :=
  ∀ n, P16428067614503149344.a n = A078632 (n + 1)

end A078632

/-! ## A078632.P4629428937643404756

`∑[A351923(n+1)-(n+1)]`
-/

namespace A078632.P4629428937643404756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351923 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078632.P4629428937643404756

namespace A078632

/-- `∑[A351923(n+1)-(n+1)]` -/
def P4629428937643404756.Spec : Prop :=
  ∀ n, P4629428937643404756.a n = A078632 (n + 1)

theorem P4629428937643404756.correct : P4629428937643404756.Spec := by
  intro n
  simp only [A078632, Nat.add_sub_cancel, A078632.P4629428937643404756.f1, A078632.P4629428937643404756.a, A078632.P6780388354337714643.f1, A078632.P6780388354337714643.a, A309891, A309891.P3186262545884816110.a, A351923, A351923.P5900735276508586646.a, A169594, A169594.P8490939100282389348.f1, A169594.P8490939100282389348.a, A089723, A089723.P6186478602489897131.f1, A089723.P6186478602489897131.a, A052409, A052409.P7338948793466901153.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078632

/-! ## A078632.P7040049685598671004

`∑[∑{d}[n+1, A089723(#)]-1]`
-/

namespace A078632.P7040049685598671004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A089723 d - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078632.P7040049685598671004

namespace A078632

/-- `∑[∑{d}[n+1, A089723(#)]-1]` -/
def P7040049685598671004.Spec : Prop :=
  ∀ n, P7040049685598671004.a n = A078632 (n + 1)

end A078632

/-! ## A078632.P2586559720628681506

`∑[A023443(A169594(n+1))]`
-/

namespace A078632.P2586559720628681506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A169594 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078632.P2586559720628681506

namespace A078632

/-- `∑[A023443(A169594(n+1))]` -/
def P2586559720628681506.Spec : Prop :=
  ∀ n, P2586559720628681506.a n = A078632 (n + 1)

end A078632

/-! ## A078632.P8725515840919841449

`A001478(n+1)+∑[A169594(n+1)]`
-/

namespace A078632.P8725515840919841449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078632.P8725515840919841449

namespace A078632

/-- `A001478(n+1)+∑[A169594(n+1)]` -/
def P8725515840919841449.Spec : Prop :=
  ∀ n, P8725515840919841449.a n = A078632 (n + 1)

end A078632

/-! ## A078632.P14110067181929485091

`∑[∑{d}[n+1, A000005(A253641(#))]-1]`
-/

namespace A078632.P14110067181929485091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000005 (A253641 d).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078632.P14110067181929485091

namespace A078632

/-- `∑[∑{d}[n+1, A000005(A253641(#))]-1]` -/
def P14110067181929485091.Spec : Prop :=
  ∀ n, P14110067181929485091.a n = A078632 (n + 1)

end A078632

/-! ## A078632.P2781049655901924265

`A169594(sqrt(A000290(n+1)))-(1-a(n-1))` with `a(0)=0`
-/

namespace A078632.P2781049655901924265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A169594 (SequenceMachineLib.roundAway (Real.sqrt (A000290 (n + 1) : ℝ))).toNat - (1 - a (n - 1))

end

end A078632.P2781049655901924265

namespace A078632

/-- `A169594(sqrt(A000290(n+1)))-(1-a(n-1))` -/
def P2781049655901924265.Spec : Prop :=
  ∀ n, P2781049655901924265.a n = A078632 (n + 1)

end A078632

/-! ## A078632.P15026445693918387746

`∑[A056239(A293514(n+1))]`
-/

namespace A078632.P15026445693918387746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A293514 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078632.P15026445693918387746

namespace A078632

/-- `∑[A056239(A293514(n+1))]` -/
def P15026445693918387746.Spec : Prop :=
  ∀ n, P15026445693918387746.a n = A078632 (n + 1)

end A078632

/-!
# A078633: Smallest number of sticks of length 1 needed to construct n squares with sides of length 1.

The programs for A078633, the canonical program `A078633.P1348310311533674533` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078633 has offset 1).

The definition of A078633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078633.P1348310311533674533

`2*(n+1)+ceil(2*sqrt(n+1))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078633

/-- `2*(n+1)+ceil(2*sqrt(n+1))` -/
def P1348310311533674533.Spec : Prop :=
  ∀ n, P1348310311533674533.a n = A078633 (n + 1)

theorem P1348310311533674533.correct : P1348310311533674533.Spec := by
  intro n
  simp only [A078633, Nat.add_sub_cancel]

end A078633

/-! ## A078633.P6035944878036975719

`(4*(n+1)+A027709(n+1))/2`
-/

namespace A078633.P6035944878036975719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * (n + 1) : ℤ) + A027709 (n + 1) : ℚ) / 2

end

end A078633.P6035944878036975719

namespace A078633

/-- `(4*(n+1)+A027709(n+1))/2` -/
def P6035944878036975719.Spec : Prop :=
  ∀ n, P6035944878036975719.a n = (A078633 (n + 1) : ℚ)

theorem P6035944878036975719.correct : P6035944878036975719.Spec := by
  intro n
  simp only [A078633, Nat.add_sub_cancel, A078633.P6035944878036975719.a, A078633.P1348310311533674533.a, A027709, A027709.P11339494392271686754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A078633

/-! ## A078633.P6684776229629951477

`comp[∑[∑[n%2]]]+1+n`
-/

namespace A078633.P6684776229629951477
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 + n

end

end A078633.P6684776229629951477

namespace A078633

/-- `comp[∑[∑[n%2]]]+1+n` -/
def P6684776229629951477.Spec : Prop :=
  ∀ n, (P6684776229629951477.a n : ℤ) = A078633 (n + 1)

end A078633

/-! ## A078633.P4345281175612317799

`comp[∑[∑[and(1, n)]]]+n+1`
-/

namespace A078633.P4345281175612317799
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 1)

end

end A078633.P4345281175612317799

namespace A078633

/-- `comp[∑[∑[and(1, n)]]]+n+1` -/
def P4345281175612317799.Spec : Prop :=
  ∀ n, (P4345281175612317799.a n : ℤ) = A078633 (n + 1)

end A078633

/-! ## A078633.P15423959497607564854

`(A319879(n+1)+n)/2`
-/

namespace A078633.P15423959497607564854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319879 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A078633.P15423959497607564854

namespace A078633

/-- `(A319879(n+1)+n)/2` -/
def P15423959497607564854.Spec : Prop :=
  ∀ n, P15423959497607564854.a n = (A078633 (n + 1) : ℚ)

end A078633

/-! ## A078633.P8125881635050629255

`xor(A079813(n+1), A348005(n+1))`
-/

namespace A078633.P8125881635050629255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A079813 (n + 1)) (A348005 (n + 1))

end

end A078633.P8125881635050629255

namespace A078633

/-- `xor(A079813(n+1), A348005(n+1))` -/
def P8125881635050629255.Spec : Prop :=
  ∀ n, P8125881635050629255.a n = A078633 (n + 1)

end A078633

/-! ## A078633.P659727756937039713

`A123663(A080037(n+1))`
-/

namespace A078633.P659727756937039713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123663 (A080037 (n + 1)).toNat

end

end A078633.P659727756937039713

namespace A078633

/-- `A123663(A080037(n+1))` -/
def P659727756937039713.Spec : Prop :=
  ∀ n, P659727756937039713.a n = A078633 (n + 1)

end A078633

/-! ## A078633.P10552815020780481942

`A074147(A274428(n+1))`
-/

namespace A078633.P10552815020780481942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074147 (A274428 (n + 1)).toNat

end

end A078633.P10552815020780481942

namespace A078633

/-- `A074147(A274428(n+1))` -/
def P10552815020780481942.Spec : Prop :=
  ∀ n, P10552815020780481942.a n = A078633 (n + 1)

end A078633

/-! ## A078633.P11760917163189798564

`A266977(A183869(2*(2*n+1)))`
-/

namespace A078633.P11760917163189798564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 (A183869 (2 * (2 * n + 1))).toNat

end

end A078633.P11760917163189798564

namespace A078633

/-- `A266977(A183869(2*(2*n+1)))` -/
def P11760917163189798564.Spec : Prop :=
  ∀ n, P11760917163189798564.a n = A078633 (n + 1)

end A078633

/-! ## A078633.P2526007607539332136

`record[Δ[A043548(n+3)]]`
-/

namespace A078633.P2526007607539332136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043548 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078633.P2526007607539332136

namespace A078633

/-- `record[Δ[A043548(n+3)]]` -/
def P2526007607539332136.Spec : Prop :=
  ∀ n, P2526007607539332136.a n = A078633 (n + 1)

end A078633

/-! ## A078633.P1990891959823649246

`A004525(A227453(n+1))`
-/

namespace A078633.P1990891959823649246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A227453 (n + 1)).toNat

end

end A078633.P1990891959823649246

namespace A078633

/-- `A004525(A227453(n+1))` -/
def P1990891959823649246.Spec : Prop :=
  ∀ n, P1990891959823649246.a n = A078633 (n + 1)

end A078633

/-! ## A078633.P16174241677325321265

`record[Δ[A024832(n+3)]]`
-/

namespace A078633.P16174241677325321265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024832 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078633.P16174241677325321265

namespace A078633

/-- `record[Δ[A024832(n+3)]]` -/
def P16174241677325321265.Spec : Prop :=
  ∀ n, P16174241677325321265.a n = A078633 (n + 1)

end A078633

/-!
# A078634: E.g.f. exp( 1 - x - sqrt( 1 - 4*x + x^2 )).

The programs for A078634, there is no canonical definition to state claims against.
-/

/-! ## A078634.P9800993903095872247

`A156077(2*A091485(n+1))`
-/

namespace A078634.P9800993903095872247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (2 * A091485 (n + 1)).toNat

end

end A078634.P9800993903095872247

/-! ## A078634.P4903735261178117984

`A090353(n)+A027870(A326225(n))`
-/

namespace A078634.P4903735261178117984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090353 n + A027870 (A326225 n).toNat

end

end A078634.P4903735261178117984

/-!
# A078635: Number of partitions of n into perfect powers.

The programs for A078635, there is no canonical definition to state claims against.
-/

/-! ## A078635.P18446403595392294653

`A112344(n)+a(n-1)` with `a(0)=1`
-/

namespace A078635.P18446403595392294653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A112344 n + a (n - 1)

end

end A078635.P18446403595392294653

/-! ## A078635.P13561728882927947401

`∑[A112344(abs(2-n)+2)]`
-/

namespace A078635.P13561728882927947401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112344 (|2 - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078635.P13561728882927947401

/-! ## A078635.P14170290447710333196

`∑[A112344(floor(acot(n)+n))]+1`
-/

namespace A078635.P14170290447710333196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112344 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A078635.P14170290447710333196

/-! ## A078635.P3407017004460419427

`∑[A112344(C(n, n²)+n)]+1`
-/

namespace A078635.P3407017004460419427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112344 (Nat.choose n (n ^ 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A078635.P3407017004460419427

/-! ## A078635.P6605655219967626931

`∑[A112344(A028310(n))]+1`
-/

namespace A078635.P6605655219967626931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112344 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A078635.P6605655219967626931

/-! ## A078635.P4740966338018100333

`∑[A112344(n+1)]+1-A112344(n+1)`
-/

namespace A078635.P4740966338018100333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A112344 (n + 1))

end

end A078635.P4740966338018100333

/-! ## A078635.P12333695870110137580

`∑[A112344(val(A000040(n+1), 2)+n)]+1`
-/

namespace A078635.P12333695870110137580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112344 (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A078635.P12333695870110137580

/-! ## A078635.P9651897795790984183

`∑[A112344(A028310(n))^A057428(n)²]`
-/

namespace A078635.P9651897795790984183
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112344 (A028310 n).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078635.P9651897795790984183

/-! ## A078635.P2944475941441219958

`A286305(n)/A001511(A001844(n))`
-/

namespace A078635.P2944475941441219958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286305 n : ℚ) / (A001511 (A001844 n).toNat : ℚ)

end

end A078635.P2944475941441219958

/-! ## A078635.P14296005211008622938

`A286305(Δ[A110882(n)])*A286305(n)`
-/

namespace A078635.P14296005211008622938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286305 (f1 (n + 1) - f1 n).toNat * A286305 n

end

end A078635.P14296005211008622938

/-!
# A078636: a(n) = rad(n*(n+1)).

The programs for A078636, the canonical program `A078636.P9479642754949380679` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078636 has offset 1).

The definition of A078636 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007947((n+1)*(n+2))` (program `A078636.P9479642754949380679`, by `A078636.P9479642754949380679.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078636.P2875271683223535993

`A139131(n+1)*A014695(n+1)`
-/

namespace A078636.P2875271683223535993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139131 (n + 1) * A014695 (n + 1)

end

end A078636.P2875271683223535993

namespace A078636

/-- `A139131(n+1)*A014695(n+1)` -/
def P2875271683223535993.Spec : Prop :=
  ∀ n, P2875271683223535993.a n = A078636 (n + 1)

end A078636

/-! ## A078636.P9479642754949380679

`A007947((n+1)*(n+2))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078636

/-- `A007947((n+1)*(n+2))` -/
def P9479642754949380679.Spec : Prop :=
  ∀ n, P9479642754949380679.a n = A078636 (n + 1)

theorem P9479642754949380679.correct : P9479642754949380679.Spec := by
  intro n
  simp only [A078636, Nat.add_sub_cancel]

end A078636

/-! ## A078636.P5188294290158536444

`∏{p}[n+1, #]*∏{p}[n+2, #]`
-/

namespace A078636.P5188294290158536444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), p) * (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A078636.P5188294290158536444

namespace A078636

/-- `∏{p}[n+1, #]*∏{p}[n+2, #]` -/
def P5188294290158536444.Spec : Prop :=
  ∀ n, (P5188294290158536444.a n : ℤ) = A078636 (n + 1)

end A078636

/-! ## A078636.P3402585806817288126

`lcm(2, A139131(n+1))`
-/

namespace A078636.P3402585806817288126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A139131 (n + 1))

end

end A078636.P3402585806817288126

namespace A078636

/-- `lcm(2, A139131(n+1))` -/
def P3402585806817288126.Spec : Prop :=
  ∀ n, (P3402585806817288126.a n : ℤ) = A078636 (n + 1)

end A078636

/-! ## A078636.P4099450644764130521

`gcd(A078637(n+1), A086302(n))`
-/

namespace A078636.P4099450644764130521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078637 (n + 1)) (A086302 n)

end

end A078636.P4099450644764130521

namespace A078636

/-- `gcd(A078637(n+1), A086302(n))` -/
def P4099450644764130521.Spec : Prop :=
  ∀ n, (P4099450644764130521.a n : ℤ) = A078636 (n + 1)

end A078636

/-! ## A078636.P13519744121716024310

`gcd(A078638(n+1), A109116(n))`
-/

namespace A078636.P13519744121716024310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078638 (n + 1)) (A109116 n)

end

end A078636.P13519744121716024310

namespace A078636

/-- `gcd(A078638(n+1), A109116(n))` -/
def P13519744121716024310.Spec : Prop :=
  ∀ n, (P13519744121716024310.a n : ℤ) = A078636 (n + 1)

end A078636

/-! ## A078636.P276319633943037316

`lcm(A007947(n+1), A007947(n+2))`
-/

namespace A078636.P276319633943037316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007947 (n + 1)) (A007947 (n + 2))

end

end A078636.P276319633943037316

namespace A078636

/-- `lcm(A007947(n+1), A007947(n+2))` -/
def P276319633943037316.Spec : Prop :=
  ∀ n, (P276319633943037316.a n : ℤ) = A078636 (n + 1)

end A078636

/-! ## A078636.P7667904851577475728

`lcm(A099985(n+2), A099985(n+1))`
-/

namespace A078636.P7667904851577475728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A099985 (n + 2)) (A099985 (n + 1))

end

end A078636.P7667904851577475728

namespace A078636

/-- `lcm(A099985(n+2), A099985(n+1))` -/
def P7667904851577475728.Spec : Prop :=
  ∀ n, (P7667904851577475728.a n : ℤ) = A078636 (n + 1)

end A078636

/-! ## A078636.P14749030658325209335

`A014695(n+1)*A139131(n+1)`
-/

namespace A078636.P14749030658325209335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (n + 1) * A139131 (n + 1)

end

end A078636.P14749030658325209335

namespace A078636

/-- `A014695(n+1)*A139131(n+1)` -/
def P14749030658325209335.Spec : Prop :=
  ∀ n, P14749030658325209335.a n = A078636 (n + 1)

end A078636

/-! ## A078636.P12812696042637202032

`lcm(A062953(n+1), A062953(n+2))`
-/

namespace A078636.P12812696042637202032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062953 (n + 1)) (A062953 (n + 2))

end

end A078636.P12812696042637202032

namespace A078636

/-- `lcm(A062953(n+1), A062953(n+2))` -/
def P12812696042637202032.Spec : Prop :=
  ∀ n, (P12812696042637202032.a n : ℤ) = A078636 (n + 1)

end A078636

/-! ## A078636.P7443535402164848581

`2*A204455(n+1)*A204455(n+2)`
-/

namespace A078636.P7443535402164848581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A204455 (n + 1) * A204455 (n + 2))

end

end A078636.P7443535402164848581

namespace A078636

/-- `2*A204455(n+1)*A204455(n+2)` -/
def P7443535402164848581.Spec : Prop :=
  ∀ n, P7443535402164848581.a n = A078636 (n + 1)

end A078636

/-! ## A078636.P7202762934705527479

`A130658(n+2)*A139131(n+1)`
-/

namespace A078636.P7202762934705527479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130658 (n + 2) * A139131 (n + 1)

end

end A078636.P7202762934705527479

namespace A078636

/-- `A130658(n+2)*A139131(n+1)` -/
def P7202762934705527479.Spec : Prop :=
  ∀ n, P7202762934705527479.a n = A078636 (n + 1)

end A078636

/-! ## A078636.P16663100504935569602

`lcm(2, ∏{p}[∑[n+1], #])`
-/

namespace A078636.P16663100504935569602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A078636.P16663100504935569602

namespace A078636

/-- `lcm(2, ∏{p}[∑[n+1], #])` -/
def P16663100504935569602.Spec : Prop :=
  ∀ n, (P16663100504935569602.a n : ℤ) = A078636 (n + 1)

end A078636

/-! ## A078636.P6543359394470334251

`∏{p}[A083482(n+1), #]`
-/

namespace A078636.P6543359394470334251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083482 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078636.P6543359394470334251

namespace A078636

/-- `∏{p}[A083482(n+1), #]` -/
def P6543359394470334251.Spec : Prop :=
  ∀ n, (P6543359394470334251.a n : ℤ) = A078636 (n + 1)

end A078636

/-! ## A078636.P3925780644706673908

`∏{p}[∑[2*(n+1)], #]`
-/

namespace A078636.P3925780644706673908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A078636.P3925780644706673908

namespace A078636

/-- `∏{p}[∑[2*(n+1)], #]` -/
def P3925780644706673908.Spec : Prop :=
  ∀ n, (P3925780644706673908.a n : ℤ) = A078636 (n + 1)

end A078636

/-! ## A078636.P3244997952298413830

`or(2, ∏{p}[(n+1)*(n+2), #])`
-/

namespace A078636.P3244997952298413830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A078636.P3244997952298413830

namespace A078636

/-- `or(2, ∏{p}[(n+1)*(n+2), #])` -/
def P3244997952298413830.Spec : Prop :=
  ∀ n, (P3244997952298413830.a n : ℤ) = A078636 (n + 1)

end A078636

/-! ## A078636.P7761612742051161489

`abs(∏{p}[(n+1)*(n+2), -#])`
-/

namespace A078636.P7761612742051161489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ))|

end

end A078636.P7761612742051161489

namespace A078636

/-- `abs(∏{p}[(n+1)*(n+2), -#])` -/
def P7761612742051161489.Spec : Prop :=
  ∀ n, P7761612742051161489.a n = A078636 (n + 1)

end A078636

/-! ## A078636.P9005420360839855563

`∏{p}[(n+1)*(n+2), sqrt(#)]²`
-/

namespace A078636.P9005420360839855563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Real.sqrt (p : ℝ)) ^ 2

end

end A078636.P9005420360839855563

namespace A078636

/-- `∏{p}[(n+1)*(n+2), sqrt(#)]²` -/
def P9005420360839855563.Spec : Prop :=
  ∀ n, P9005420360839855563.a n = (A078636 (n + 1) : ℝ)

end A078636

/-! ## A078636.P993774798017285837

`sqrt(∏{p}[(n+1)²+n+1, #²])`
-/

namespace A078636.P993774798017285837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n), p ^ 2 : ℕ) : ℝ)

end

end A078636.P993774798017285837

namespace A078636

/-- `sqrt(∏{p}[(n+1)²+n+1, #²])` -/
def P993774798017285837.Spec : Prop :=
  ∀ n, P993774798017285837.a n = (A078636 (n + 1) : ℝ)

end A078636

/-! ## A078636.P17973789520515360780

`A099985(A069834(n+1))`
-/

namespace A078636.P17973789520515360780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099985 (A069834 (n + 1)).toNat

end

end A078636.P17973789520515360780

namespace A078636

/-- `A099985(A069834(n+1))` -/
def P17973789520515360780.Spec : Prop :=
  ∀ n, P17973789520515360780.a n = A078636 (n + 1)

end A078636

/-!
# A078637: a(n) = rad(n(n+1)(n+2)), where rad(m) is the largest squarefree number dividing m (see A007947).

The programs for A078637, the canonical program `A078637.P18100100390460065403` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078637 has offset 1).

The definition of A078637 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007947((n+1)*(n+2)*(n+3))` (program `A078637.P18100100390460065403`, by `A078637.P18100100390460065403.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078637.P3449017889750913495

`A007947(A033931(n+1))`
-/

namespace A078637.P3449017889750913495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A033931 (n + 1)).toNat

end

end A078637.P3449017889750913495

namespace A078637

/-- `A007947(A033931(n+1))` -/
def P3449017889750913495.Spec : Prop :=
  ∀ n, P3449017889750913495.a n = A078637 (n + 1)

end A078637

/-! ## A078637.P18100100390460065403

`A007947((n+1)*(n+2)*(n+3))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078637

/-- `A007947((n+1)*(n+2)*(n+3))` -/
def P18100100390460065403.Spec : Prop :=
  ∀ n, P18100100390460065403.a n = A078637 (n + 1)

theorem P18100100390460065403.correct : P18100100390460065403.Spec := by
  intro n
  simp only [A078637, Nat.add_sub_cancel]

end A078637

/-! ## A078637.P3689850445128524602

`gcd(A033486(n), A078638(n+1))`
-/

namespace A078637.P3689850445128524602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033486 n) (A078638 (n + 1))

end

end A078637.P3689850445128524602

namespace A078637

/-- `gcd(A033486(n), A078638(n+1))` -/
def P3689850445128524602.Spec : Prop :=
  ∀ n, (P3689850445128524602.a n : ℤ) = A078637 (n + 1)

end A078637

/-! ## A078637.P13097974812791464908

`lcm(A078636(n+1), A078636(n+2))`
-/

namespace A078637.P13097974812791464908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A078636 (n + 1)) (A078636 (n + 2))

end

end A078637.P13097974812791464908

namespace A078637

/-- `lcm(A078636(n+1), A078636(n+2))` -/
def P13097974812791464908.Spec : Prop :=
  ∀ n, (P13097974812791464908.a n : ℤ) = A078637 (n + 1)

end A078637

/-! ## A078637.P5324036390151364177

`A007947(n+2)*A007947(A005563(n+1))`
-/

namespace A078637.P5324036390151364177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2) * A007947 (A005563 (n + 1)).toNat

end

end A078637.P5324036390151364177

namespace A078637

/-- `A007947(n+2)*A007947(A005563(n+1))` -/
def P5324036390151364177.Spec : Prop :=
  ∀ n, P5324036390151364177.a n = A078637 (n + 1)

end A078637

/-! ## A078637.P15390657239668894004

`lcm(6, ∏{p}[∑[∑[n+1]], #])`
-/

namespace A078637.P15390657239668894004
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A078637.P15390657239668894004

namespace A078637

/-- `lcm(6, ∏{p}[∑[∑[n+1]], #])` -/
def P15390657239668894004.Spec : Prop :=
  ∀ n, (P15390657239668894004.a n : ℤ) = A078637 (n + 1)

end A078637

/-! ## A078637.P1256334531885241771

`gcd(A034386(A005843(n+4)), A303212(n+3))`
-/

namespace A078637.P1256334531885241771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 (A005843 (n + 4)).toNat) (A303212 (n + 3))

end

end A078637.P1256334531885241771

namespace A078637

/-- `gcd(A034386(A005843(n+4)), A303212(n+3))` -/
def P1256334531885241771.Spec : Prop :=
  ∀ n, (P1256334531885241771.a n : ℤ) = A078637 (n + 1)

end A078637

/-! ## A078637.P2940641620853904674

`∏{p}[A033931(n+1), #]`
-/

namespace A078637.P2940641620853904674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078637.P2940641620853904674

namespace A078637

/-- `∏{p}[A033931(n+1), #]` -/
def P2940641620853904674.Spec : Prop :=
  ∀ n, (P2940641620853904674.a n : ℤ) = A078637 (n + 1)

end A078637

/-! ## A078637.P13114292149829407592

`∏{p}[6*C(n+3, 3), #]`
-/

namespace A078637.P13114292149829407592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (n + 3) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A078637.P13114292149829407592

namespace A078637

/-- `∏{p}[6*C(n+3, 3), #]` -/
def P13114292149829407592.Spec : Prop :=
  ∀ n, (P13114292149829407592.a n : ℤ) = A078637 (n + 1)

end A078637

/-! ## A078637.P8210911786910021432

`∏{p}[A331433(n), #]`
-/

namespace A078637.P8210911786910021432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331433 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078637.P8210911786910021432

namespace A078637

/-- `∏{p}[A331433(n), #]` -/
def P8210911786910021432.Spec : Prop :=
  ∀ n, (P8210911786910021432.a n : ℤ) = A078637 (n + 1)

end A078637

/-!
# A078638: a(n) = rad(n*(n+1)*(n+2)*(n+3)).

The programs for A078638, the canonical program `A078638.P9804272124467291946` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078638 has offset 1).

The definition of A078638 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007947((n+1)*(n+2)*(n+3)*(n+4))` (program `A078638.P9804272124467291946`, by `A078638.P9804272124467291946.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078638.P9804272124467291946

`A007947((n+1)*(n+2)*(n+3)*(n+4))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078638

/-- `A007947((n+1)*(n+2)*(n+3)*(n+4))` -/
def P9804272124467291946.Spec : Prop :=
  ∀ n, P9804272124467291946.a n = A078638 (n + 1)

theorem P9804272124467291946.correct : P9804272124467291946.Spec := by
  intro n
  simp only [A078638, Nat.add_sub_cancel]

end A078638

/-! ## A078638.P13705343157640692303

`lcm(A007947(n+4), A078637(n+1))`
-/

namespace A078638.P13705343157640692303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007947 (n + 4)) (A078637 (n + 1))

end

end A078638.P13705343157640692303

namespace A078638

/-- `lcm(A007947(n+4), A078637(n+1))` -/
def P13705343157640692303.Spec : Prop :=
  ∀ n, (P13705343157640692303.a n : ℤ) = A078638 (n + 1)

end A078638

/-! ## A078638.P3270812254528927640

`lcm(A078637(n+2), A062953(n+1))`
-/

namespace A078638.P3270812254528927640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A078637 (n + 2)) (A062953 (n + 1))

end

end A078638.P3270812254528927640

namespace A078638

/-- `lcm(A078637(n+2), A062953(n+1))` -/
def P3270812254528927640.Spec : Prop :=
  ∀ n, (P3270812254528927640.a n : ℤ) = A078638 (n + 1)

end A078638

/-! ## A078638.P8967963741843872199

`lcm(A078636(n+1), A078636(n+3))`
-/

namespace A078638.P8967963741843872199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A078636 (n + 1)) (A078636 (n + 3))

end

end A078638.P8967963741843872199

namespace A078638

/-- `lcm(A078636(n+1), A078636(n+3))` -/
def P8967963741843872199.Spec : Prop :=
  ∀ n, (P8967963741843872199.a n : ℤ) = A078638 (n + 1)

end A078638

/-! ## A078638.P2157824507864891301

`A078636(∑[n+2])`
-/

namespace A078638.P2157824507864891301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078636 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078638.P2157824507864891301

namespace A078638

/-- `A078636(∑[n+2])` -/
def P2157824507864891301.Spec : Prop :=
  ∀ n, P2157824507864891301.a n = A078638 (n + 1)

end A078638

/-!
# A078639: Number of nonisomorphic graphic matroids of connected graphs on n vertices (equivalently, of rank n-1).

The programs for A078639, there is no canonical definition to state claims against.
-/

/-! ## A078639.P5950032692587110921

`A189663(A135922(n)+A000079(n))`
-/

namespace A078639.P5950032692587110921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A135922 n + A000079 n).toNat

end

end A078639.P5950032692587110921

/-! ## A078639.P1456916447303062563

`A173241(n)+A075988(A076324(n+1))`
-/

namespace A078639.P1456916447303062563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173241 n + A075988 (A076324 (n + 1)).toNat

end

end A078639.P1456916447303062563

/-! ## A078639.P16999214830776320453

`A026007(A263138(2*n+1))+A004526(A132105(n))`
-/

namespace A078639.P16999214830776320453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026007 (A263138 (2 * n + 1)).toNat + A004526 (A132105 n).toNat

end

end A078639.P16999214830776320453

/-!
# A078642: Numbers with two representations as the sum of two Fibonacci numbers.

The programs for A078642, the canonical program `A078642.P10542729900721948604` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078642 has offset 1).

The definition of A078642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078642.P13332633700088001317

`ogf((4+2x)/(1-x-x^2))`
-/

namespace A078642.P13332633700088001317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2] [1, -1, -1] n

end

end A078642.P13332633700088001317

namespace A078642

/-- `ogf((4+2x)/(1-x-x^2))` -/
def P13332633700088001317.Spec : Prop :=
  ∀ n, P13332633700088001317.a n = A078642 (n + 1)

end A078642

/-! ## A078642.P10542729900721948604

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078642

/-- `a(n-1)+a(n-2)` -/
def P10542729900721948604.Spec : Prop :=
  ∀ n, (P10542729900721948604.a n : ℤ) = A078642 (n + 1)

theorem P10542729900721948604.correct : P10542729900721948604.Spec := by
  intro n
  simp only [A078642, Nat.add_sub_cancel]

end A078642

/-! ## A078642.P4282524225364425873

`2*A000045(n+3)`
-/

namespace A078642.P4282524225364425873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 3)

end

end A078642.P4282524225364425873

namespace A078642

/-- `2*A000045(n+3)` -/
def P4282524225364425873.Spec : Prop :=
  ∀ n, P4282524225364425873.a n = A078642 (n + 1)

end A078642

/-! ## A078642.P17887321295115478047

`A000045(n+1)+A000045(n+4)`
-/

namespace A078642.P17887321295115478047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + A000045 (n + 4)

end

end A078642.P17887321295115478047

namespace A078642

/-- `A000045(n+1)+A000045(n+4)` -/
def P17887321295115478047.Spec : Prop :=
  ∀ n, P17887321295115478047.a n = A078642 (n + 1)

end A078642

/-! ## A078642.P3048337180733721466

`round(ϕ*a(n-1))` with `a(0)=4`
-/

namespace A078642.P3048337180733721466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A078642.P3048337180733721466

namespace A078642

/-- `round(ϕ*a(n-1))` -/
def P3048337180733721466.Spec : Prop :=
  ∀ n, P3048337180733721466.a n = A078642 (n + 1)

end A078642

/-! ## A078642.P6332543230714271178

`round(a(n-1)/(ϕ-1))` with `a(0)=4`
-/

namespace A078642.P6332543230714271178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (Real.goldenRatio - 1))

end

end A078642.P6332543230714271178

namespace A078642

/-- `round(a(n-1)/(ϕ-1))` -/
def P6332543230714271178.Spec : Prop :=
  ∀ n, P6332543230714271178.a n = A078642 (n + 1)

end A078642

/-! ## A078642.P10402101668725932168

`2*Δ[floor(ϕ*a(n-1))]` with `a(0)=4`
-/

namespace A078642.P10402101668725932168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A078642.P10402101668725932168

namespace A078642

/-- `2*Δ[floor(ϕ*a(n-1))]` -/
def P10402101668725932168.Spec : Prop :=
  ∀ n, P10402101668725932168.a n = A078642 (n + 1)

end A078642

/-! ## A078642.P6876790708385528317

`2*a(n-1)-a(n-3)` with `a(0)=4, a(1)=6, a(2)=10`
-/

namespace A078642.P6876790708385528317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6, 10] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A078642.P6876790708385528317

namespace A078642

/-- `2*a(n-1)-a(n-3)` -/
def P6876790708385528317.Spec : Prop :=
  ∀ n, P6876790708385528317.a n = A078642 (n + 1)

end A078642

/-! ## A078642.P9355476402948792747

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=4, a(1)=6, a(2)=10`
-/

namespace A078642.P9355476402948792747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6, 10] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A078642.P9355476402948792747

namespace A078642

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P9355476402948792747.Spec : Prop :=
  ∀ n, P9355476402948792747.a n = A078642 (n + 1)

end A078642

/-! ## A078642.P7920335583466706535

`A068922(n+2)`
-/

namespace A078642.P7920335583466706535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068922 (n + 2)

end

end A078642.P7920335583466706535

namespace A078642

/-- `A068922(n+2)` -/
def P7920335583466706535.Spec : Prop :=
  ∀ n, P7920335583466706535.a n = A078642 (n + 1)

end A078642

/-! ## A078642.P8529090183790306286

`A055389(n+3)`
-/

namespace A078642.P8529090183790306286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (n + 3)

end

end A078642.P8529090183790306286

namespace A078642

/-- `A055389(n+3)` -/
def P8529090183790306286.Spec : Prop :=
  ∀ n, P8529090183790306286.a n = A078642 (n + 1)

end A078642

/-! ## A078642.P11289690494917088469

`A128588(n+3)`
-/

namespace A078642.P11289690494917088469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128588 (n + 3)

end

end A078642.P11289690494917088469

namespace A078642

/-- `A128588(n+3)` -/
def P11289690494917088469.Spec : Prop :=
  ∀ n, P11289690494917088469.a n = A078642 (n + 1)

end A078642

/-! ## A078642.P8133129817091419

`A154691(n)+3`
-/

namespace A078642.P8133129817091419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 n + 3

end

end A078642.P8133129817091419

namespace A078642

/-- `A154691(n)+3` -/
def P8133129817091419.Spec : Prop :=
  ∀ n, P8133129817091419.a n = A078642 (n + 1)

end A078642

/-! ## A078642.P16109776527502492557

`A006355(n+4)`
-/

namespace A078642.P16109776527502492557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 4)

end

end A078642.P16109776527502492557

namespace A078642

/-- `A006355(n+4)` -/
def P16109776527502492557.Spec : Prop :=
  ∀ n, P16109776527502492557.a n = A078642 (n + 1)

end A078642

/-! ## A078642.P7035744124545467423

`2*A020695(n)`
-/

namespace A078642.P7035744124545467423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020695 n

end

end A078642.P7035744124545467423

namespace A078642

/-- `2*A020695(n)` -/
def P7035744124545467423.Spec : Prop :=
  ∀ n, P7035744124545467423.a n = A078642 (n + 1)

end A078642

/-! ## A078642.P13346051136476649061

`A118658(n+4)`
-/

namespace A078642.P13346051136476649061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 4)

end

end A078642.P13346051136476649061

namespace A078642

/-- `A118658(n+4)` -/
def P13346051136476649061.Spec : Prop :=
  ∀ n, P13346051136476649061.a n = A078642 (n + 1)

end A078642

/-! ## A078642.P14787440241490195520

`A168193(n)+4`
-/

namespace A078642.P14787440241490195520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168193 n + 4

end

end A078642.P14787440241490195520

namespace A078642

/-- `A168193(n)+4` -/
def P14787440241490195520.Spec : Prop :=
  ∀ n, P14787440241490195520.a n = A078642 (n + 1)

end A078642

/-! ## A078642.P14955516644740716203

`A163733(n+5)`
-/

namespace A078642.P14955516644740716203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163733 (n + 5)

end

end A078642.P14955516644740716203

namespace A078642

/-- `A163733(n+5)` -/
def P14955516644740716203.Spec : Prop :=
  ∀ n, P14955516644740716203.a n = A078642 (n + 1)

end A078642

/-! ## A078642.P17282527397646759382

`A198834(n+5)`
-/

namespace A078642.P17282527397646759382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198834 (n + 5)

end

end A078642.P17282527397646759382

namespace A078642

/-- `A198834(n+5)` -/
def P17282527397646759382.Spec : Prop :=
  ∀ n, P17282527397646759382.a n = A078642 (n + 1)

end A078642

/-! ## A078642.P17846175545642160862

`A001595(n+2)+1`
-/

namespace A078642.P17846175545642160862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (n + 2) + 1

end

end A078642.P17846175545642160862

namespace A078642

/-- `A001595(n+2)+1` -/
def P17846175545642160862.Spec : Prop :=
  ∀ n, P17846175545642160862.a n = A078642 (n + 1)

end A078642

/-!
# A078643: Numbers with exactly one representation as the sum of two Fibonacci numbers.

The programs for A078643, the canonical program `A078643.P15551770542448101721` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078643 has offset 1).

The definition of A078643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9861 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078643.P15551770542448101721

`A059389(comp[∑[n-1]]-char[1])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A078643

/-- `A059389(comp[∑[n-1]]-char[1])` -/
def P15551770542448101721.Spec : Prop :=
  ∀ n, P15551770542448101721.a n = A078643 (n + 1)

theorem P15551770542448101721.correct : P15551770542448101721.Spec := by
  intro n
  simp only [A078643, Nat.add_sub_cancel]

end A078643

/-! ## A078643.P18365303775448617975

`eq[1, A319395(n)]`
-/

namespace A078643.P18365303775448617975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078643.P18365303775448617975

namespace A078643

/-- `eq[1, A319395(n)]` -/
def P18365303775448617975.Spec : Prop :=
  ∀ n, (P18365303775448617975.a n : ℤ) = A078643 (n + 1)

end A078643

/-! ## A078643.P16324232249846260747

`record[(n+1)/a(A319395(n+1))]` with `a(0)=2, a(1)=1`
-/

namespace A078643.P16324232249846260747
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (n + 1 : ℚ) / f1 (A319395 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078643.P16324232249846260747

namespace A078643

/-- `record[(n+1)/a(A319395(n+1))]` -/
def P16324232249846260747.Spec : Prop :=
  ∀ n, P16324232249846260747.a n = (A078643 (n + 1) : ℚ)

end A078643

/-! ## A078643.P9193026156209368477

`lt[1, A001227(a(A319395(n))+2)]` with `a(0)=0`
-/

namespace A078643.P9193026156209368477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A001227 (f2 (A319395 n).toNat + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A078643.P9193026156209368477

namespace A078643

/-- `lt[1, A001227(a(A319395(n))+2)]` -/
def P9193026156209368477.Spec : Prop :=
  ∀ n, (P9193026156209368477.a n : ℤ) = A078643 (n + 1)

end A078643

/-! ## A078643.P17887701719900968918

`lt[A250221(a(A319395(n))+2), 0]` with `a(0)=1`
-/

namespace A078643.P17887701719900968918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A250221 (f1 (A319395 n).toNat + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A078643.P17887701719900968918

namespace A078643

/-- `lt[A250221(a(A319395(n))+2), 0]` -/
def P17887701719900968918.Spec : Prop :=
  ∀ n, (P17887701719900968918.a n : ℤ) = A078643 (n + 1)

end A078643

/-! ## A078643.P6590411095316376702

`lt[3, A304624(a(A319395(n))+2)]` with `a(0)=3`
-/

namespace A078643.P6590411095316376702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A304624 (f2 (A319395 n).toNat + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A078643.P6590411095316376702

namespace A078643

/-- `lt[3, A304624(a(A319395(n))+2)]` -/
def P6590411095316376702.Spec : Prop :=
  ∀ n, (P6590411095316376702.a n : ℤ) = A078643 (n + 1)

end A078643

/-! ## A078643.P17643625037431974148

`lt[A333773(a(A319395(n))+2), 0]` with `a(0)=10`
-/

namespace A078643.P17643625037431974148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  A333773 (f1 (A319395 n).toNat + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A078643.P17643625037431974148

namespace A078643

/-- `lt[A333773(a(A319395(n))+2), 0]` -/
def P17643625037431974148.Spec : Prop :=
  ∀ n, (P17643625037431974148.a n : ℤ) = A078643 (n + 1)

end A078643

/-! ## A078643.P12235803701089233948

`lt[1, A001221(3*(a(A319395(n))+2)+1)]` with `a(0)=0`
-/

namespace A078643.P12235803701089233948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A001221 (3 * (f2 (A319395 n).toNat + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A078643.P12235803701089233948

namespace A078643

/-- `lt[1, A001221(3*(a(A319395(n))+2)+1)]` -/
def P12235803701089233948.Spec : Prop :=
  ∀ n, (P12235803701089233948.a n : ℤ) = A078643 (n + 1)

end A078643

/-! ## A078643.P8541540844171500738

`lt[36*A336352(2*(a(A319395(n))+2)), 2]` with `a(0)=8`
-/

namespace A078643.P8541540844171500738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  36 * A336352 (2 * (f1 (A319395 n).toNat + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A078643.P8541540844171500738

namespace A078643

/-- `lt[36*A336352(2*(a(A319395(n))+2)), 2]` -/
def P8541540844171500738.Spec : Prop :=
  ∀ n, (P8541540844171500738.a n : ℤ) = A078643 (n + 1)

end A078643

/-! ## A078643.P16979863463397179558

`lt[A177499(2*n+1-A319395(n)), 5]`
-/

namespace A078643.P16979863463397179558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177499 ((2 * n + 1 : ℤ) - A319395 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A078643.P16979863463397179558

namespace A078643

/-- `lt[A177499(2*n+1-A319395(n)), 5]` -/
def P16979863463397179558.Spec : Prop :=
  ∀ n, (P16979863463397179558.a n : ℤ) = A078643 (n + 1)

end A078643

/-!
# A078644: a(n) = tau(2*n^2)/2.

The programs for A078644, the canonical program `A078644.P6430730718511426787` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078644 has offset 1).

The definition of A078644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078644.P6430730718511426787

`A361689(n+1)/2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A078644

/-- `A361689(n+1)/2` -/
def P6430730718511426787.Spec : Prop :=
  ∀ n, P6430730718511426787.a n = (A078644 (n + 1) : ℚ)

end A078644

/-! ## A078644.P11886769123055366048

`A000005(2*(n+1)²)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078644.P11886769123055366048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (2 * (n + 1) ^ 2) : ℚ) / 2

end

end A078644.P11886769123055366048

namespace A078644

/-- `A000005(2*(n+1)²)/2` -/
def P11886769123055366048.Spec : Prop :=
  ∀ n, P11886769123055366048.a n = (A078644 (n + 1) : ℚ)

end A078644

/-! ## A078644.P8530114242243101182

`∑{d}[n+1, A068068(#)]`
-/

namespace A078644.P8530114242243101182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068068 d

end

end A078644.P8530114242243101182

namespace A078644

/-- `∑{d}[n+1, A068068(#)]` -/
def P8530114242243101182.Spec : Prop :=
  ∀ n, P8530114242243101182.a n = A078644 (n + 1)

end A078644

/-! ## A078644.P558946561344364329

`(val(n+1, 2)+1)*A048691((n+1)/2^val(n+1, 2))`
-/

namespace A078644.P558946561344364329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A048691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A078644.P558946561344364329

namespace A078644

/-- `(val(n+1, 2)+1)*A048691((n+1)/2^val(n+1, 2))` -/
def P558946561344364329.Spec : Prop :=
  ∀ n, P558946561344364329.a n = A078644 (n + 1)

end A078644

/-! ## A078644.P16196124326531173333

`A001281(A361689(n+1))`
-/

namespace A078644.P16196124326531173333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A361689 (n + 1)).toNat

end

end A078644.P16196124326531173333

namespace A078644

/-- `A001281(A361689(n+1))` -/
def P16196124326531173333.Spec : Prop :=
  ∀ n, P16196124326531173333.a n = A078644 (n + 1)

end A078644

/-! ## A078644.P4265375489746417899

`A055081(n+1)-A270417(n+1)`
-/

namespace A078644.P4265375489746417899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055081 (n + 1) - A270417 (n + 1)

end

end A078644.P4265375489746417899

namespace A078644

/-- `A055081(n+1)-A270417(n+1)` -/
def P4265375489746417899.Spec : Prop :=
  ∀ n, P4265375489746417899.a n = A078644 (n + 1)

end A078644

/-! ## A078644.P11474013150953244006

`A156688(n+1)-A275367(n+1)`
-/

namespace A078644.P11474013150953244006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156688 (n + 1) - A275367 (n + 1)

end

end A078644.P11474013150953244006

namespace A078644

/-- `A156688(n+1)-A275367(n+1)` -/
def P11474013150953244006.Spec : Prop :=
  ∀ n, P11474013150953244006.a n = A078644 (n + 1)

end A078644

/-! ## A078644.P14535645226215655589

`A001511(n+1)*A275367(n+1)`
-/

namespace A078644.P14535645226215655589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A275367 (n + 1)

end

end A078644.P14535645226215655589

namespace A078644

/-- `A001511(n+1)*A275367(n+1)` -/
def P14535645226215655589.Spec : Prop :=
  ∀ n, P14535645226215655589.a n = A078644 (n + 1)

end A078644

/-! ## A078644.P17750122929442372801

`(A085058(n)-1)*A275367(n+1)`
-/

namespace A078644.P17750122929442372801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085058 n - 1) * A275367 (n + 1)

end

end A078644.P17750122929442372801

namespace A078644

/-- `(A085058(n)-1)*A275367(n+1)` -/
def P17750122929442372801.Spec : Prop :=
  ∀ n, P17750122929442372801.a n = A078644 (n + 1)

end A078644

/-! ## A078644.P15217659434003434423

`A356574(n+1)/A069735(n+1)`
-/

namespace A078644.P15217659434003434423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356574 (n + 1) : ℚ) / (A069735 (n + 1) : ℚ)

end

end A078644.P15217659434003434423

namespace A078644

/-- `A356574(n+1)/A069735(n+1)` -/
def P15217659434003434423.Spec : Prop :=
  ∀ n, P15217659434003434423.a n = (A078644 (n + 1) : ℚ)

end A078644

/-! ## A078644.P196395379299664581

`(1+A007814(n+1))*A275367(n+1)`
-/

namespace A078644.P196395379299664581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + A007814 (n + 1)) * A275367 (n + 1)

end

end A078644.P196395379299664581

namespace A078644

/-- `(1+A007814(n+1))*A275367(n+1)` -/
def P196395379299664581.Spec : Prop :=
  ∀ n, P196395379299664581.a n = A078644 (n + 1)

end A078644

/-! ## A078644.P5872325603193959636

`(A275367(n+1)+A048691(n+1))/2`
-/

namespace A078644.P5872325603193959636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275367 (n + 1) + A048691 (n + 1) : ℚ) / 2

end

end A078644.P5872325603193959636

namespace A078644

/-- `(A275367(n+1)+A048691(n+1))/2` -/
def P5872325603193959636.Spec : Prop :=
  ∀ n, P5872325603193959636.a n = (A078644 (n + 1) : ℚ)

end A078644

/-! ## A078644.P11464203483256500522

`(A329402(n+1)+A063647(n+1))/2`
-/

namespace A078644.P11464203483256500522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329402 (n + 1) + A063647 (n + 1) : ℚ) / 2

end

end A078644.P11464203483256500522

namespace A078644

/-- `(A329402(n+1)+A063647(n+1))/2` -/
def P11464203483256500522.Spec : Prop :=
  ∀ n, P11464203483256500522.a n = (A078644 (n + 1) : ℚ)

end A078644

/-! ## A078644.P9718101631793801945

`A275367(n+1)/2*A366839(n+1)`
-/

namespace A078644.P9718101631793801945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275367 (n + 1) : ℚ) / 2 * (A366839 (n + 1) : ℚ)

end

end A078644.P9718101631793801945

namespace A078644

/-- `A275367(n+1)/2*A366839(n+1)` -/
def P9718101631793801945.Spec : Prop :=
  ∀ n, P9718101631793801945.a n = (A078644 (n + 1) : ℚ)

end A078644

/-! ## A078644.P11872458796939449074

`∑{d}[n+1, A034444(#)*A035263((n+1)/#)]`
-/

namespace A078644.P11872458796939449074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A035263 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078644.P11872458796939449074

namespace A078644

/-- `∑{d}[n+1, A034444(#)*A035263((n+1)/#)]` -/
def P11872458796939449074.Spec : Prop :=
  ∀ n, P11872458796939449074.a n = A078644 (n + 1)

end A078644

/-! ## A078644.P17532725314173299475

`∑{d}[n+1, A008966(#)*A174273((n+1)/#)]`
-/

namespace A078644.P17532725314173299475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A174273 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078644.P17532725314173299475

namespace A078644

/-- `∑{d}[n+1, A008966(#)*A174273((n+1)/#)]` -/
def P17532725314173299475.Spec : Prop :=
  ∀ n, P17532725314173299475.a n = A078644 (n + 1)

end A078644

/-! ## A078644.P12705906181813525635

`∑{d}[n+1, A048691(#)*A154269((n+1)/#)]`
-/

namespace A078644.P12705906181813525635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078644.P12705906181813525635

namespace A078644

/-- `∑{d}[n+1, A048691(#)*A154269((n+1)/#)]` -/
def P12705906181813525635.Spec : Prop :=
  ∀ n, P12705906181813525635.a n = A078644 (n + 1)

end A078644

/-! ## A078644.P8979988696345474733

`∑{d}[n+1, A130054(#)*A159634((n+1)/#)]`
-/

namespace A078644.P8979988696345474733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A159634 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078644.P8979988696345474733

namespace A078644

/-- `∑{d}[n+1, A130054(#)*A159634((n+1)/#)]` -/
def P8979988696345474733.Spec : Prop :=
  ∀ n, P8979988696345474733.a n = A078644 (n + 1)

end A078644

/-! ## A078644.P1794731846431052877

`∑{d}[n+1, A000005(#)*A323239((n+1)/#)]`
-/

namespace A078644.P1794731846431052877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A323239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078644.P1794731846431052877

namespace A078644

/-- `∑{d}[n+1, A000005(#)*A323239((n+1)/#)]` -/
def P1794731846431052877.Spec : Prop :=
  ∀ n, P1794731846431052877.a n = A078644 (n + 1)

end A078644

/-! ## A078644.P3786281550548780481

`∑{d}[n+1, A001227(#)*A353627((n+1)/#)]`
-/

namespace A078644.P3786281550548780481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A353627 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078644.P3786281550548780481

namespace A078644

/-- `∑{d}[n+1, A001227(#)*A353627((n+1)/#)]` -/
def P3786281550548780481.Spec : Prop :=
  ∀ n, P3786281550548780481.a n = A078644 (n + 1)

end A078644

/-! ## A078644.P4094002229351131569

`∑{d}[(n+1)², 1/gcd(2, #)]`
-/

namespace A078644.P4094002229351131569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 1 / (Nat.gcd 2 d : ℚ)

end

end A078644.P4094002229351131569

namespace A078644

/-- `∑{d}[(n+1)², 1/gcd(2, #)]` -/
def P4094002229351131569.Spec : Prop :=
  ∀ n, P4094002229351131569.a n = (A078644 (n + 1) : ℚ)

end A078644

/-!
# A078646: Number of representations of n as a sum of two primes that are congruent modulo 3.

The programs for A078646, there is no canonical definition to state claims against.
-/

/-! ## A078646.P5084937665655284328

`A102677(A216952(n+1)*A240977(n))`
-/

namespace A078646.P5084937665655284328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A216952 (n + 1) * A240977 n).toNat

end

end A078646.P5084937665655284328

/-! ## A078646.P5262603277279823863

`A125005(A004526(n+11)+A001281(n+8))`
-/

namespace A078646.P5262603277279823863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A004526 (n + 11) + A001281 (n + 8)).toNat

end

end A078646.P5262603277279823863

/-! ## A078646.P14026386443478803052

`∑{e}[A376773(2*n+3), A318883(#)]`
-/

namespace A078646.P14026386443478803052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376773 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A318883 (Nat.factorization (f1 n).natAbs p)

end

end A078646.P14026386443478803052

/-! ## A078646.P1651142510184293582

`A276084(A334461(A230076(n+1)²))`
-/

namespace A078646.P1651142510184293582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (A334461 (A230076 (n + 1) ^ 2).toNat).toNat

end

end A078646.P1651142510184293582

/-! ## A078646.P8672444381697171407

`A011672(A127903(n+1))`
-/

namespace A078646.P8672444381697171407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011672 (A127903 (n + 1)).toNat

end

end A078646.P8672444381697171407

/-!
# A078648: Smallest integer that can be written in exactly n ways as the sum of two primes that are not congruent modulo 3.

The programs for A078648, there is no canonical definition to state claims against.
-/

/-! ## A078648.P6899143330552197548

`A087747(n+1)+2*char[1]`
-/

namespace A078648.P6899143330552197548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087747 (n + 1) + ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A078648.P6899143330552197548

/-! ## A078648.P13660470678617656691

`or(A087747(1+n), A130706(n))`
-/

namespace A078648.P13660470678617656691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087747 (1 + n)) (A130706 n)

end

end A078648.P13660470678617656691

/-! ## A078648.P12059291513676949952

`A324659(C(2, n)+1)+A087747(n+1)`
-/

namespace A078648.P12059291513676949952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324659 (Nat.choose 2 n + 1) + A087747 (n + 1)

end

end A078648.P12059291513676949952

/-! ## A078648.P17933340308505966431

`A105700(A008458(n))+A087747(n+1)`
-/

namespace A078648.P17933340308505966431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A008458 n).toNat + A087747 (n + 1)

end

end A078648.P17933340308505966431

/-! ## A078648.P13782115243695655732

`A105700(A008574(n))+A087747(n+1)`
-/

namespace A078648.P13782115243695655732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A008574 n).toNat + A087747 (n + 1)

end

end A078648.P13782115243695655732

/-! ## A078648.P8455853284652271332

`or(A000925(A003817(n)), A087747(n+1))`
-/

namespace A078648.P8455853284652271332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000925 (A003817 n).toNat) (A087747 (n + 1))

end

end A078648.P8455853284652271332

/-! ## A078648.P15767525046805508132

`A127648(A013646(n))+A087747(n+1)`
-/

namespace A078648.P15767525046805508132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 (A013646 n).toNat + A087747 (n + 1)

end

end A078648.P15767525046805508132

/-!
# A078649: Numbers n such that A000002(n)=A000002(n+1) where A000002 is the Kolakoski sequence.

The programs for A078649, the canonical program `A078649.P18369770188371927822` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078649 has offset 1).

The definition of A078649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078649.P17817811133147124485

`A216345(A013948(n+1))`
-/

namespace A078649.P17817811133147124485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (A013948 (n + 1)).toNat

end

end A078649.P17817811133147124485

namespace A078649

/-- `A216345(A013948(n+1))` -/
def P17817811133147124485.Spec : Prop :=
  ∀ n, P17817811133147124485.a n = A078649 (n + 1)

end A078649

/-! ## A078649.P3988251160863778065

`A013948(n+1)+n`
-/

namespace A078649.P3988251160863778065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1) + (n : ℤ)

end

end A078649.P3988251160863778065

namespace A078649

/-- `A013948(n+1)+n` -/
def P3988251160863778065.Spec : Prop :=
  ∀ n, P3988251160863778065.a n = A078649 (n + 1)

theorem P3988251160863778065.correct : P3988251160863778065.Spec := by
  intro n
  simp only [A078649, Nat.add_sub_cancel, A078649.P3988251160863778065.a, A078649.P18369770188371927822.f1, A078649.P18369770188371927822.a, A013947, A013947.P11385183315367073616.f1, A013947.P11385183315367073616.f2, A013947.P11385183315367073616.a, A013948, A013948.P3339504944308927508.a, A156242, A156242.P3233582996753599041.a, A156243, A156243.P395087012412145335.a, A054353, A054353.P17073753870339604188.f2, A054353.P17073753870339604188.f1, A054353.P17073753870339604188.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078649

/-! ## A078649.P15410644060797830697

`3*(n+1)-A156265(n+1)`
-/

namespace A078649.P15410644060797830697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A156265 (n + 1)

end

end A078649.P15410644060797830697

namespace A078649

/-- `3*(n+1)-A156265(n+1)` -/
def P15410644060797830697.Spec : Prop :=
  ∀ n, P15410644060797830697.a n = A078649 (n + 1)

theorem P15410644060797830697.correct : P15410644060797830697.Spec := by
  intro n
  simp only [A078649, Nat.add_sub_cancel, A078649.P15410644060797830697.a, A078649.P18369770188371927822.f1, A078649.P18369770188371927822.a, A013947, A013947.P11385183315367073616.f1, A013947.P11385183315367073616.f2, A013947.P11385183315367073616.a, A156265, A156265.P11083405800392652458.a, A156242, A156242.P3233582996753599041.a, A156243, A156243.P395087012412145335.a, A054353, A054353.P17073753870339604188.f2, A054353.P17073753870339604188.f1, A054353.P17073753870339604188.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078649

/-! ## A078649.P8308094570929510693

`eq[0, A249093(n+2)]+2+n`
-/

namespace A078649.P8308094570929510693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 + n

end

end A078649.P8308094570929510693

namespace A078649

/-- `eq[0, A249093(n+2)]+2+n` -/
def P8308094570929510693.Spec : Prop :=
  ∀ n, (P8308094570929510693.a n : ℤ) = A078649 (n + 1)

end A078649

/-! ## A078649.P4452861479544349549

`eq[0, A249094(n+2)]+2+n`
-/

namespace A078649.P4452861479544349549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249094 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 + n

end

end A078649.P4452861479544349549

namespace A078649

/-- `eq[0, A249094(n+2)]+2+n` -/
def P4452861479544349549.Spec : Prop :=
  ∀ n, (P4452861479544349549.a n : ℤ) = A078649 (n + 1)

end A078649

/-! ## A078649.P4528986365373425939

`eq[0, A249507(n+2)]+2+n`
-/

namespace A078649.P4528986365373425939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249507 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 + n

end

end A078649.P4528986365373425939

namespace A078649

/-- `eq[0, A249507(n+2)]+2+n` -/
def P4528986365373425939.Spec : Prop :=
  ∀ n, (P4528986365373425939.a n : ℤ) = A078649 (n + 1)

end A078649

/-! ## A078649.P18369770188371927822

`comp[A013947(n+1)-1]+1+n`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A078649

/-- `comp[A013947(n+1)-1]+1+n` -/
def P18369770188371927822.Spec : Prop :=
  ∀ n, (P18369770188371927822.a n : ℤ) = A078649 (n + 1)

theorem P18369770188371927822.correct : P18369770188371927822.Spec := by
  intro n
  simp only [A078649, Nat.add_sub_cancel]

end A078649

/-! ## A078649.P3976471747722011089

`∪[A074262(n+1), A074263(n+1)]`
-/

namespace A078649.P3976471747722011089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078649.P3976471747722011089

namespace A078649

/-- `∪[A074262(n+1), A074263(n+1)]` -/
def P3976471747722011089.Spec : Prop :=
  ∀ n, (P3976471747722011089.a n : ℤ) = A078649 (n + 1)

end A078649

/-! ## A078649.P1723131171043412984

`∪[A156244(n+1), A156245(n+1)]`
-/

namespace A078649.P1723131171043412984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078649.P1723131171043412984

namespace A078649

/-- `∪[A156244(n+1), A156245(n+1)]` -/
def P1723131171043412984.Spec : Prop :=
  ∀ n, (P1723131171043412984.a n : ℤ) = A078649 (n + 1)

end A078649

/-! ## A078649.P11008569149305088583

`∪[A074263(n+1), A156242(n+1)]+n`
-/

namespace A078649.P11008569149305088583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + n

end

end A078649.P11008569149305088583

namespace A078649

/-- `∪[A074263(n+1), A156242(n+1)]+n` -/
def P11008569149305088583.Spec : Prop :=
  ∀ n, (P11008569149305088583.a n : ℤ) = A078649 (n + 1)

end A078649

/-! ## A078649.P8452284901655084286

`A054353(n+1)+A054353(n+1)-A156268(n+1)`
-/

namespace A078649.P8452284901655084286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1) + (A054353 (n + 1) - A156268 (n + 1))

end

end A078649.P8452284901655084286

namespace A078649

/-- `A054353(n+1)+A054353(n+1)-A156268(n+1)` -/
def P8452284901655084286.Spec : Prop :=
  ∀ n, P8452284901655084286.a n = A078649 (n + 1)

theorem P8452284901655084286.correct : P8452284901655084286.Spec := by
  intro n
  simp only [A078649, Nat.add_sub_cancel, A078649.P8452284901655084286.a, A078649.P18369770188371927822.f1, A078649.P18369770188371927822.a, A013947, A013947.P11385183315367073616.f1, A013947.P11385183315367073616.f2, A013947.P11385183315367073616.a, A054353, A054353.P17073753870339604188.f2, A054353.P17073753870339604188.f1, A054353.P17073753870339604188.a, A156268, A156268.P6336594155207146855.a, A156242, A156242.P3233582996753599041.a, A156243, A156243.P395087012412145335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078649

/-! ## A078649.P15644763473283655717

`eq[2, A000002(n+1)]+1+n`
-/

namespace A078649.P15644763473283655717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 + n

end

end A078649.P15644763473283655717

namespace A078649

/-- `eq[2, A000002(n+1)]+1+n` -/
def P15644763473283655717.Spec : Prop :=
  ∀ n, (P15644763473283655717.a n : ℤ) = A078649 (n + 1)

end A078649

/-! ## A078649.P6551135439957034599

`eq[2, A078880(n+1)]+2+n`
-/

namespace A078649.P6551135439957034599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 + n

end

end A078649.P6551135439957034599

namespace A078649

/-- `eq[2, A078880(n+1)]+2+n` -/
def P6551135439957034599.Spec : Prop :=
  ∀ n, (P6551135439957034599.a n : ℤ) = A078649 (n + 1)

end A078649

/-! ## A078649.P7896600241542411663

`A054353(lt[1, A000002(n+1)])+1`
-/

namespace A078649.P7896600241542411663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A078649.P7896600241542411663

namespace A078649

/-- `A054353(lt[1, A000002(n+1)])+1` -/
def P7896600241542411663.Spec : Prop :=
  ∀ n, P7896600241542411663.a n = A078649 (n + 1)

end A078649

/-! ## A078649.P10995976069029532098

`A054353(eq[2, A000002(n+1)])+1`
-/

namespace A078649.P10995976069029532098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A078649.P10995976069029532098

namespace A078649

/-- `A054353(eq[2, A000002(n+1)])+1` -/
def P10995976069029532098.Spec : Prop :=
  ∀ n, P10995976069029532098.a n = A078649 (n + 1)

end A078649

/-! ## A078649.P16752004917506776796

`comp[A216345(n+1)-1]`
-/

namespace A078649.P16752004917506776796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A078649.P16752004917506776796

namespace A078649

/-- `comp[A216345(n+1)-1]` -/
def P16752004917506776796.Spec : Prop :=
  ∀ n, (P16752004917506776796.a n : ℤ) = A078649 (n + 1)

end A078649

/-! ## A078649.P13496575122875354912

`∑[runs[A074286(n+1)]+1]`
-/

namespace A078649.P13496575122875354912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078649.P13496575122875354912

namespace A078649

/-- `∑[runs[A074286(n+1)]+1]` -/
def P13496575122875354912.Spec : Prop :=
  ∀ n, (P13496575122875354912.a n : ℤ) = A078649 (n + 1)

end A078649

/-! ## A078649.P2961969840497596439

`eq[1, A049705(A028310(n))]+n`
-/

namespace A078649.P2961969840497596439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + n

end

end A078649.P2961969840497596439

namespace A078649

/-- `eq[1, A049705(A028310(n))]+n` -/
def P2961969840497596439.Spec : Prop :=
  ∀ n, (P2961969840497596439.a n : ℤ) = A078649 (n + 1)

end A078649

/-! ## A078649.P1286218515212269618

`A216345(eq[2, A000002(n+1)]+1)`
-/

namespace A078649.P1286218515212269618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078649.P1286218515212269618

namespace A078649

/-- `A216345(eq[2, A000002(n+1)]+1)` -/
def P1286218515212269618.Spec : Prop :=
  ∀ n, P1286218515212269618.a n = A078649 (n + 1)

end A078649

/-! ## A078649.P14617983304248475069

`A054353(lt[A049705(n+1), 2])+1`
-/

namespace A078649.P14617983304248475069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) + 1

end

end A078649.P14617983304248475069

namespace A078649

/-- `A054353(lt[A049705(n+1), 2])+1` -/
def P14617983304248475069.Spec : Prop :=
  ∀ n, P14617983304248475069.a n = A078649 (n + 1)

end A078649

/-!
# A078650: 2-A000002(n) where A000002 is the Kolakoski sequence.

The programs for A078650, the canonical program `A078650.P371792363212749957` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078650 has offset 1).

The definition of A078650 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2-A000002(n+1)` (program `A078650.P371792363212749957`, by `A078650.P371792363212749957.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078650.P371792363212749957

`2-A000002(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A078650

/-- `2-A000002(n+1)` -/
def P371792363212749957.Spec : Prop :=
  ∀ n, P371792363212749957.a n = A078650 (n + 1)

theorem P371792363212749957.correct : P371792363212749957.Spec := by
  intro n
  simp only [A078650, Nat.add_sub_cancel]

end A078650

/-! ## A078650.P13120124090009299597

`2-runs[a(n-gcd(2, a(a(n-2))))+1]` with `a(0)=1, a(1)=2`
-/

namespace A078650.P13120124090009299597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - Nat.gcd 2 (f1 (f1 (n - 2)))) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ)

end

end A078650.P13120124090009299597

namespace A078650

/-- `2-runs[a(n-gcd(2, a(a(n-2))))+1]` -/
def P13120124090009299597.Spec : Prop :=
  ∀ n, P13120124090009299597.a n = A078650 (n + 1)

end A078650

/-! ## A078650.P16485004421825200319

`2-runs[a(a(a(n-2))%2+n-2)+1]` with `a(0)=1, a(1)=2`
-/

namespace A078650.P16485004421825200319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (((f1 (f1 (n - 2)) % 2 : ℕ) : ℤ) + ((n : ℤ) - 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ)

end

end A078650.P16485004421825200319

namespace A078650

/-- `2-runs[a(a(a(n-2))%2+n-2)+1]` -/
def P16485004421825200319.Spec : Prop :=
  ∀ n, P16485004421825200319.a n = A078650 (n + 1)

end A078650

/-! ## A078650.P680788829895448774

`A160051(n)%2`
-/

namespace A078650.P680788829895448774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160051 n) 2

end

end A078650.P680788829895448774

namespace A078650

/-- `A160051(n)%2` -/
def P680788829895448774.Spec : Prop :=
  ∀ n, P680788829895448774.a n = A078650 (n + 1)

end A078650

/-! ## A078650.P11079521018774172569

`log2(A049705(n+1))`
-/

namespace A078650.P11079521018774172569
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A049705 (n + 1) : ℝ)

end

end A078650.P11079521018774172569

namespace A078650

/-- `log2(A049705(n+1))` -/
def P11079521018774172569.Spec : Prop :=
  ∀ n, P11079521018774172569.a n = (A078650 (n + 1) : ℝ)

end A078650

/-! ## A078650.P737221396196584894

`A079726(n+1)%2`
-/

namespace A078650.P737221396196584894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079726 (n + 1)) 2

end

end A078650.P737221396196584894

namespace A078650

/-- `A079726(n+1)%2` -/
def P737221396196584894.Spec : Prop :=
  ∀ n, P737221396196584894.a n = A078650 (n + 1)

end A078650

/-! ## A078650.P17764729615793545937

`A156253(n+1)%2`
-/

namespace A078650.P17764729615793545937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156253 (n + 1)) 2

end

end A078650.P17764729615793545937

namespace A078650

/-- `A156253(n+1)%2` -/
def P17764729615793545937.Spec : Prop :=
  ∀ n, P17764729615793545937.a n = A078650 (n + 1)

end A078650

/-! ## A078650.P8460337976038199914

`a(log2(A006928(n)))` with `a(0)=1, a(1)=0`
-/

namespace A078650.P8460337976038199914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (SequenceMachineLib.roundAway (Real.logb 2 (A006928 n : ℝ))).toNat

end

end A078650.P8460337976038199914

namespace A078650

/-- `a(log2(A006928(n)))` -/
def P8460337976038199914.Spec : Prop :=
  ∀ n, (P8460337976038199914.a n : ℤ) = A078650 (n + 1)

end A078650

/-! ## A078650.P1761316421691019452

`a(log2(A078880(n)))` with `a(0)=1, a(1)=0`
-/

namespace A078650.P1761316421691019452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (SequenceMachineLib.roundAway (Real.logb 2 (A078880 n : ℝ))).toNat

end

end A078650.P1761316421691019452

namespace A078650

/-- `a(log2(A078880(n)))` -/
def P1761316421691019452.Spec : Prop :=
  ∀ n, (P1761316421691019452.a n : ℤ) = A078650 (n + 1)

end A078650

/-! ## A078650.P14738760904265874486

`char[A013947(n+1)-1]`
-/

namespace A078650.P14738760904265874486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A078650.P14738760904265874486

namespace A078650

/-- `char[A013947(n+1)-1]` -/
def P14738760904265874486.Spec : Prop :=
  ∀ n, (P14738760904265874486.a n : ℤ) = A078650 (n + 1)

end A078650

/-! ## A078650.P11859959335301713336

`a(n-1)-A054354(n)` with `a(0)=1`
-/

namespace A078650.P11859959335301713336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A054354 n

end

end A078650.P11859959335301713336

namespace A078650

/-- `a(n-1)-A054354(n)` -/
def P11859959335301713336.Spec : Prop :=
  ∀ n, P11859959335301713336.a n = A078650 (n + 1)

end A078650

/-! ## A078650.P16206506917041626258

`A000002(C(n+1, n))%2`
-/

namespace A078650.P16206506917041626258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000002 (Nat.choose (n + 1) n)) 2

end

end A078650.P16206506917041626258

namespace A078650

/-- `A000002(C(n+1, n))%2` -/
def P16206506917041626258.Spec : Prop :=
  ∀ n, P16206506917041626258.a n = A078650 (n + 1)

end A078650

/-! ## A078650.P14776012769869046928

`and(1, A000002(-xor(n, -1)))`
-/

namespace A078650.P14776012769869046928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000002 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A078650.P14776012769869046928

namespace A078650

/-- `and(1, A000002(-xor(n, -1)))` -/
def P14776012769869046928.Spec : Prop :=
  ∀ n, P14776012769869046928.a n = A078650 (n + 1)

end A078650

/-! ## A078650.P10987660656195890611

`char[comp[A013948(n+1)-1]]`
-/

namespace A078650.P10987660656195890611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A078650.P10987660656195890611

namespace A078650

/-- `char[comp[A013948(n+1)-1]]` -/
def P10987660656195890611.Spec : Prop :=
  ∀ n, (P10987660656195890611.a n : ℤ) = A078650 (n + 1)

end A078650

/-! ## A078650.P10560629485747074333

`(a(n-1)-A156728(n))²` with `a(0)=1`
-/

namespace A078650.P10560629485747074333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - A156728 n) ^ 2

end

end A078650.P10560629485747074333

namespace A078650

/-- `(a(n-1)-A156728(n))²` -/
def P10560629485747074333.Spec : Prop :=
  ∀ n, P10560629485747074333.a n = A078650 (n + 1)

end A078650

/-! ## A078650.P227517651888060812

`A000035(A156253(n+1))`
-/

namespace A078650.P227517651888060812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A156253 (n + 1)).toNat

end

end A078650.P227517651888060812

namespace A078650

/-- `A000035(A156253(n+1))` -/
def P227517651888060812.Spec : Prop :=
  ∀ n, P227517651888060812.a n = A078650 (n + 1)

end A078650

/-! ## A078650.P2940130435421975414

`and(A060576(n), A160051(n))`
-/

namespace A078650.P2940130435421975414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A160051 n)

end

end A078650.P2940130435421975414

namespace A078650

/-- `and(A060576(n), A160051(n))` -/
def P2940130435421975414.Spec : Prop :=
  ∀ n, P2940130435421975414.a n = A078650 (n + 1)

end A078650

/-! ## A078650.P5670721487989428821

`and(A158388(n), A160051(n))`
-/

namespace A078650.P5670721487989428821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A160051 n)

end

end A078650.P5670721487989428821

namespace A078650

/-- `and(A158388(n), A160051(n))` -/
def P5670721487989428821.Spec : Prop :=
  ∀ n, P5670721487989428821.a n = A078650 (n + 1)

end A078650

/-! ## A078650.P14898786843485235333

`and(A160051(n), A179184(n))`
-/

namespace A078650.P14898786843485235333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160051 n) (A179184 n)

end

end A078650.P14898786843485235333

namespace A078650

/-- `and(A160051(n), A179184(n))` -/
def P14898786843485235333.Spec : Prop :=
  ∀ n, P14898786843485235333.a n = A078650 (n + 1)

end A078650

/-! ## A078650.P10854748009088642868

`A059841(n)-A074290(n+1)`
-/

namespace A078650.P10854748009088642868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n - A074290 (n + 1)

end

end A078650.P10854748009088642868

namespace A078650

/-- `A059841(n)-A074290(n+1)` -/
def P10854748009088642868.Spec : Prop :=
  ∀ n, P10854748009088642868.a n = A078650 (n + 1)

end A078650

/-!
# A078651: Number of increasing geometric-progression subsequences of [1,...,n] with integral successive-term ratio and length >= 1.

The programs for A078651, the canonical program `A078651.P6303332055214193158` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078651 has offset 1).

The definition of A078651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078651.P6303332055214193158

`∑[A169594(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A078651

/-- `∑[A169594(n+1)]` -/
def P6303332055214193158.Spec : Prop :=
  ∀ n, P6303332055214193158.a n = A078651 (n + 1)

theorem P6303332055214193158.correct : P6303332055214193158.Spec := by
  intro n
  simp only [A078651, Nat.add_sub_cancel]

end A078651

/-! ## A078651.P17560826849924343514

`∑[A309891(n+1)+1]`
-/

namespace A078651.P17560826849924343514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309891 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078651.P17560826849924343514

namespace A078651

/-- `∑[A309891(n+1)+1]` -/
def P17560826849924343514.Spec : Prop :=
  ∀ n, P17560826849924343514.a n = A078651 (n + 1)

theorem P17560826849924343514.correct : P17560826849924343514.Spec := by
  intro n
  simp only [A078651, Nat.add_sub_cancel, A078651.P17560826849924343514.f1, A078651.P17560826849924343514.a, A078651.P6303332055214193158.f1, A078651.P6303332055214193158.a, A169594, A169594.P8490939100282389348.f1, A169594.P8490939100282389348.a, A309891, A309891.P3186262545884816110.a, A089723, A089723.P6186478602489897131.f1, A089723.P6186478602489897131.a, A052409, A052409.P7338948793466901153.a, A051903, A051903.P10704508922429453281.f1, A051903.P10704508922429453281.a, A051904, A051904.P9263651810596342710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078651

/-! ## A078651.P11557379533717625027

`∑[A351923(n+1)-n]`
-/

namespace A078651.P11557379533717625027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351923 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078651.P11557379533717625027

namespace A078651

/-- `∑[A351923(n+1)-n]` -/
def P11557379533717625027.Spec : Prop :=
  ∀ n, P11557379533717625027.a n = A078651 (n + 1)

theorem P11557379533717625027.correct : P11557379533717625027.Spec := by
  intro n
  simp only [A078651, Nat.add_sub_cancel, A078651.P11557379533717625027.f1, A078651.P11557379533717625027.a, A078651.P6303332055214193158.f1, A078651.P6303332055214193158.a, A169594, A169594.P8490939100282389348.f1, A169594.P8490939100282389348.a, A351923, A351923.P5900735276508586646.a, A089723, A089723.P6186478602489897131.f1, A089723.P6186478602489897131.a, A309891, A309891.P3186262545884816110.a, A052409, A052409.P7338948793466901153.a, A051903, A051903.P10704508922429453281.f1, A051903.P10704508922429453281.a, A051904, A051904.P9263651810596342710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078651

/-! ## A078651.P14179905380493097391

`∑[∑{d}[n+1, A089723(#)]]`
-/

namespace A078651.P14179905380493097391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A089723 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078651.P14179905380493097391

namespace A078651

/-- `∑[∑{d}[n+1, A089723(#)]]` -/
def P14179905380493097391.Spec : Prop :=
  ∀ n, P14179905380493097391.a n = A078651 (n + 1)

end A078651

/-! ## A078651.P17598883198329388994

`A078632(n+1)+1+n`
-/

namespace A078651.P17598883198329388994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078632 (n + 1) + 1 + (n : ℤ)

end

end A078651.P17598883198329388994

namespace A078651

/-- `A078632(n+1)+1+n` -/
def P17598883198329388994.Spec : Prop :=
  ∀ n, P17598883198329388994.a n = A078651 (n + 1)

end A078651

/-! ## A078651.P12318267183309661135

`∑[∑{d}[n+1, A000005(A253641(#))]]`
-/

namespace A078651.P12318267183309661135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000005 (A253641 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078651.P12318267183309661135

namespace A078651

/-- `∑[∑{d}[n+1, A000005(A253641(#))]]` -/
def P12318267183309661135.Spec : Prop :=
  ∀ n, P12318267183309661135.a n = A078651 (n + 1)

end A078651

/-! ## A078651.P11308755594415380191

`∑[A056239(A293514(n+1))+1]`
-/

namespace A078651.P11308755594415380191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A293514 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078651.P11308755594415380191

namespace A078651

/-- `∑[A056239(A293514(n+1))+1]` -/
def P11308755594415380191.Spec : Prop :=
  ∀ n, P11308755594415380191.a n = A078651 (n + 1)

end A078651

/-!
# A078652: a(1)=1, a(2n)=nextprime(a(n-1)), a(2n+1)= sum of digits of all previous terms + 1.

The programs for A078652, there is no canonical definition to state claims against.
-/

/-! ## A078652.P14570883975271364719

`∑[A275692(A193335(3^n+1))]`
-/

namespace A078652.P14570883975271364719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275692 (A193335 (3 ^ n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078652.P14570883975271364719

/-! ## A078652.P5313494454539577547

`A291811(A000068(n+1)+A000055(n))`
-/

namespace A078652.P5313494454539577547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291811 (A000068 (n + 1) + A000055 n).toNat

end

end A078652.P5313494454539577547

/-! ## A078652.P5565353195825305392

`eq[A087061(A165046(n+1)), A087061(n)]`
-/

namespace A078652.P5565353195825305392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (A165046 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078652.P5565353195825305392

/-! ## A078652.P13549499139578803861

`A228652(n+2)-A000010(A001462(n+1))`
-/

namespace A078652.P13549499139578803861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228652 (n + 2) - A000010 (A001462 (n + 1)).toNat

end

end A078652.P13549499139578803861

/-! ## A078652.P8371566520820144934

`A228652(n+2)-A133502(A000040(n+2))`
-/

namespace A078652.P8371566520820144934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228652 (n + 2) - A133502 (A000040 (n + 2)).toNat

end

end A078652.P8371566520820144934

/-!
# A078653: a(n) = prime(k) where k = n-th prime congruent to 1 mod 4.

The programs for A078653, the canonical program `A078653.P10966428180401610920` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078653 has offset 1).

The definition of A078653 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078653.P10966428180401610920

`A000040(A002144(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078653

/-- `A000040(A002144(n+1))` -/
def P10966428180401610920.Spec : Prop :=
  ∀ n, P10966428180401610920.a n = A078653 (n + 1)

theorem P10966428180401610920.correct : P10966428180401610920.Spec := by
  intro n
  simp only [A078653, Nat.add_sub_cancel]

end A078653

/-! ## A078653.P17276121586744895402

`A006450(A080147(n+1))`
-/

namespace A078653.P17276121586744895402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A080147 (n + 1)).toNat

end

end A078653.P17276121586744895402

namespace A078653

/-- `A006450(A080147(n+1))` -/
def P17276121586744895402.Spec : Prop :=
  ∀ n, P17276121586744895402.a n = A078653 (n + 1)

end A078653

/-! ## A078653.P11131419185636113430

`∩[A006450(n+1), A031385(n+1)]`
-/

namespace A078653.P11131419185636113430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078653.P11131419185636113430

namespace A078653

/-- `∩[A006450(n+1), A031385(n+1)]` -/
def P11131419185636113430.Spec : Prop :=
  ∀ n, (P11131419185636113430.a n : ℤ) = A078653 (n + 1)

end A078653

/-! ## A078653.P8644644793552782394

`∩[A031385(n+1), A302596(n+1)]`
-/

namespace A078653.P8644644793552782394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078653.P8644644793552782394

namespace A078653

/-- `∩[A031385(n+1), A302596(n+1)]` -/
def P8644644793552782394.Spec : Prop :=
  ∀ n, (P8644644793552782394.a n : ℤ) = A078653 (n + 1)

end A078653

/-! ## A078653.P13644978312248854279

`∩[A031385(n+1), A302590(n+1)]`
-/

namespace A078653.P13644978312248854279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078653.P13644978312248854279

namespace A078653

/-- `∩[A031385(n+1), A302590(n+1)]` -/
def P13644978312248854279.Spec : Prop :=
  ∀ n, (P13644978312248854279.a n : ℤ) = A078653 (n + 1)

end A078653

/-! ## A078653.P8945068216960999504

`∩[A031385(n+1), A076610(n+1)]`
-/

namespace A078653.P8945068216960999504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078653.P8945068216960999504

namespace A078653

/-- `∩[A031385(n+1), A076610(n+1)]` -/
def P8945068216960999504.Spec : Prop :=
  ∀ n, (P8945068216960999504.a n : ℤ) = A078653 (n + 1)

end A078653

/-! ## A078653.P4275709838427738693

`A064988(A002144(1+n))`
-/

namespace A078653.P4275709838427738693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A002144 (1 + n)).toNat

end

end A078653.P4275709838427738693

namespace A078653

/-- `A064988(A002144(1+n))` -/
def P4275709838427738693.Spec : Prop :=
  ∀ n, P4275709838427738693.a n = A078653 (n + 1)

end A078653

/-! ## A078653.P17105503171777790968

`A031368(A119681(n+1))`
-/

namespace A078653.P17105503171777790968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (A119681 (n + 1)).toNat

end

end A078653.P17105503171777790968

namespace A078653

/-- `A031368(A119681(n+1))` -/
def P17105503171777790968.Spec : Prop :=
  ∀ n, P17105503171777790968.a n = A078653 (n + 1)

end A078653

/-! ## A078653.P17934881595780065253

`A120426(A002313(n+2))`
-/

namespace A078653.P17934881595780065253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A002313 (n + 2)).toNat

end

end A078653.P17934881595780065253

namespace A078653

/-- `A120426(A002313(n+2))` -/
def P17934881595780065253.Spec : Prop :=
  ∀ n, P17934881595780065253.a n = A078653 (n + 1)

end A078653

/-! ## A078653.P18405846813534324177

`A120426(A280084(n+2))`
-/

namespace A078653.P18405846813534324177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A280084 (n + 2)).toNat

end

end A078653.P18405846813534324177

namespace A078653

/-- `A120426(A280084(n+2))` -/
def P18405846813534324177.Spec : Prop :=
  ∀ n, P18405846813534324177.a n = A078653 (n + 1)

end A078653

/-! ## A078653.P3436837777979527864

`∩[A006450(n+1), A060191(n)]`
-/

namespace A078653.P3436837777979527864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078653.P3436837777979527864

namespace A078653

/-- `∩[A006450(n+1), A060191(n)]` -/
def P3436837777979527864.Spec : Prop :=
  ∀ n, (P3436837777979527864.a n : ℤ) = A078653 (n + 1)

end A078653

/-! ## A078653.P340897938194208930

`∩[A076610(n+1), A060191(n)]`
-/

namespace A078653.P340897938194208930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078653.P340897938194208930

namespace A078653

/-- `∩[A076610(n+1), A060191(n)]` -/
def P340897938194208930.Spec : Prop :=
  ∀ n, (P340897938194208930.a n : ℤ) = A078653 (n + 1)

end A078653

/-! ## A078653.P16437959960692155705

`∩[A302590(n+1), A060191(n)]`
-/

namespace A078653.P16437959960692155705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078653.P16437959960692155705

namespace A078653

/-- `∩[A302590(n+1), A060191(n)]` -/
def P16437959960692155705.Spec : Prop :=
  ∀ n, (P16437959960692155705.a n : ℤ) = A078653 (n + 1)

end A078653

/-! ## A078653.P9147649263971798660

`∩[A302596(n+1), A060191(n)]`
-/

namespace A078653.P9147649263971798660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078653.P9147649263971798660

namespace A078653

/-- `∩[A302596(n+1), A060191(n)]` -/
def P9147649263971798660.Spec : Prop :=
  ∀ n, (P9147649263971798660.a n : ℤ) = A078653 (n + 1)

end A078653

/-! ## A078653.P11301349186345027114

`A332806(A332807(A111744(2*n+1)))`
-/

namespace A078653.P11301349186345027114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332806 (A332807 (A111744 (2 * n + 1)).toNat).toNat

end

end A078653.P11301349186345027114

namespace A078653

/-- `A332806(A332807(A111744(2*n+1)))` -/
def P11301349186345027114.Spec : Prop :=
  ∀ n, P11301349186345027114.a n = A078653 (n + 1)

end A078653

/-! ## A078653.P10136154505492191767

`A060191(A104636(n+1))`
-/

namespace A078653.P10136154505492191767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 (A104636 (n + 1)).toNat

end

end A078653.P10136154505492191767

namespace A078653

/-- `A060191(A104636(n+1))` -/
def P10136154505492191767.Spec : Prop :=
  ∀ n, P10136154505492191767.a n = A078653 (n + 1)

end A078653

/-! ## A078653.P15947843107531787710

`A000040(p?[4*n+1])`
-/

namespace A078653.P15947843107531787710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A078653.P15947843107531787710

namespace A078653

/-- `A000040(p?[4*n+1])` -/
def P15947843107531787710.Spec : Prop :=
  ∀ n, P15947843107531787710.a n = A078653 (n + 1)

end A078653

/-! ## A078653.P4844552816585766712

`record[A000040(p?[and(n, n+2)])]`
-/

namespace A078653.P4844552816585766712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078653.P4844552816585766712

namespace A078653

/-- `record[A000040(p?[and(n, n+2)])]` -/
def P4844552816585766712.Spec : Prop :=
  ∀ n, P4844552816585766712.a n = A078653 (n + 1)

end A078653

/-! ## A078653.P14880629276975226052

`or(1, A000040(p?[a(n-1)+4]))` with `a(0)=1`
-/

namespace A078653.P14880629276975226052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000040 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A078653.P14880629276975226052

namespace A078653

/-- `or(1, A000040(p?[a(n-1)+4]))` -/
def P14880629276975226052.Spec : Prop :=
  ∀ n, P14880629276975226052.a n = A078653 (n + 1)

end A078653

/-! ## A078653.P16888943305170352018

`A045319(A152680(n+1))`
-/

namespace A078653.P16888943305170352018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A152680 (n + 1)).toNat

end

end A078653.P16888943305170352018

namespace A078653

/-- `A045319(A152680(n+1))` -/
def P16888943305170352018.Spec : Prop :=
  ∀ n, P16888943305170352018.a n = A078653 (n + 1)

end A078653

/-!
# A078654: a(n) = prime(k) where k = n-th prime congruent to 3 mod 4.

The programs for A078654, the canonical program `A078654.P8049831914724263825` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078654 has offset 1).

The definition of A078654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078654.P8049831914724263825

`A000040(A002145(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078654

/-- `A000040(A002145(n+1))` -/
def P8049831914724263825.Spec : Prop :=
  ∀ n, P8049831914724263825.a n = A078654 (n + 1)

theorem P8049831914724263825.correct : P8049831914724263825.Spec := by
  intro n
  simp only [A078654, Nat.add_sub_cancel]

end A078654

/-! ## A078654.P16044069131984749737

`A006450(A080148(n+1))`
-/

namespace A078654.P16044069131984749737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A080148 (n + 1)).toNat

end

end A078654.P16044069131984749737

namespace A078654

/-- `A006450(A080148(n+1))` -/
def P16044069131984749737.Spec : Prop :=
  ∀ n, P16044069131984749737.a n = A078654 (n + 1)

end A078654

/-! ## A078654.P16915853076496820563

`A031370(A005099(n+1))`
-/

namespace A078654.P16915853076496820563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031370 (A005099 (n + 1)).toNat

end

end A078654.P16915853076496820563

namespace A078654

/-- `A031370(A005099(n+1))` -/
def P16915853076496820563.Spec : Prop :=
  ∀ n, P16915853076496820563.a n = A078654 (n + 1)

end A078654

/-! ## A078654.P7186694165180340904

`∩[A006450(n+1), A031370(n+1)]`
-/

namespace A078654.P7186694165180340904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078654.P7186694165180340904

namespace A078654

/-- `∩[A006450(n+1), A031370(n+1)]` -/
def P7186694165180340904.Spec : Prop :=
  ∀ n, (P7186694165180340904.a n : ℤ) = A078654 (n + 1)

end A078654

/-! ## A078654.P6723849166004931839

`∩[A031370(n+1), A175247(n+1)]`
-/

namespace A078654.P6723849166004931839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078654.P6723849166004931839

namespace A078654

/-- `∩[A031370(n+1), A175247(n+1)]` -/
def P6723849166004931839.Spec : Prop :=
  ∀ n, (P6723849166004931839.a n : ℤ) = A078654 (n + 1)

end A078654

/-! ## A078654.P2138282466199365631

`∩[A031370(n+1), A302592(n+1)]`
-/

namespace A078654.P2138282466199365631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078654.P2138282466199365631

namespace A078654

/-- `∩[A031370(n+1), A302592(n+1)]` -/
def P2138282466199365631.Spec : Prop :=
  ∀ n, (P2138282466199365631.a n : ℤ) = A078654 (n + 1)

end A078654

/-! ## A078654.P1756203627705566423

`∩[A031370(n+1), A302596(n+1)]`
-/

namespace A078654.P1756203627705566423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078654.P1756203627705566423

namespace A078654

/-- `∩[A031370(n+1), A302596(n+1)]` -/
def P1756203627705566423.Spec : Prop :=
  ∀ n, (P1756203627705566423.a n : ℤ) = A078654 (n + 1)

end A078654

/-! ## A078654.P6500139424325709421

`∩[A031370(n+1), A302590(n+1)]`
-/

namespace A078654.P6500139424325709421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078654.P6500139424325709421

namespace A078654

/-- `∩[A031370(n+1), A302590(n+1)]` -/
def P6500139424325709421.Spec : Prop :=
  ∀ n, (P6500139424325709421.a n : ℤ) = A078654 (n + 1)

end A078654

/-! ## A078654.P11088490626902823578

`∩[A031370(n+1), A076610(n+1)]`
-/

namespace A078654.P11088490626902823578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078654.P11088490626902823578

namespace A078654

/-- `∩[A031370(n+1), A076610(n+1)]` -/
def P11088490626902823578.Spec : Prop :=
  ∀ n, (P11088490626902823578.a n : ℤ) = A078654 (n + 1)

end A078654

/-! ## A078654.P5155612241055366927

`A060192(A104635(n+1))`
-/

namespace A078654.P5155612241055366927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060192 (A104635 (n + 1)).toNat

end

end A078654.P5155612241055366927

namespace A078654

/-- `A060192(A104635(n+1))` -/
def P5155612241055366927.Spec : Prop :=
  ∀ n, P5155612241055366927.a n = A078654 (n + 1)

end A078654

/-! ## A078654.P5330067136995647660

`A120426(A045326(n+2))`
-/

namespace A078654.P5330067136995647660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A045326 (n + 2)).toNat

end

end A078654.P5330067136995647660

namespace A078654

/-- `A120426(A045326(n+2))` -/
def P5330067136995647660.Spec : Prop :=
  ∀ n, P5330067136995647660.a n = A078654 (n + 1)

end A078654

/-! ## A078654.P11061769936297200689

`∩[A031370(n+1), A302539(n+1)]`
-/

namespace A078654.P11061769936297200689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078654.P11061769936297200689

namespace A078654

/-- `∩[A031370(n+1), A302539(n+1)]` -/
def P11061769936297200689.Spec : Prop :=
  ∀ n, (P11061769936297200689.a n : ℤ) = A078654 (n + 1)

end A078654

/-! ## A078654.P15402310983862676978

`A108546(A332805(A339900(2*n+1)))`
-/

namespace A078654.P15402310983862676978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108546 (A332805 (A339900 (2 * n + 1)).toNat).toNat

end

end A078654.P15402310983862676978

namespace A078654

/-- `A108546(A332805(A339900(2*n+1)))` -/
def P15402310983862676978.Spec : Prop :=
  ∀ n, P15402310983862676978.a n = A078654 (n + 1)

end A078654

/-! ## A078654.P12261800564694374715

`A108546(A332805(A002145(A332807(A332805(n+1)))))`
-/

namespace A078654.P12261800564694374715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108546 (A332805 (A002145 (A332807 (A332805 (n + 1)).toNat).toNat).toNat).toNat

end

end A078654.P12261800564694374715

namespace A078654

/-- `A108546(A332805(A002145(A332807(A332805(n+1)))))` -/
def P12261800564694374715.Spec : Prop :=
  ∀ n, P12261800564694374715.a n = A078654 (n + 1)

end A078654

/-! ## A078654.P16089700625023703299

`A000040(p?[4*n-1])`
-/

namespace A078654.P16089700625023703299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A078654.P16089700625023703299

namespace A078654

/-- `A000040(p?[4*n-1])` -/
def P16089700625023703299.Spec : Prop :=
  ∀ n, P16089700625023703299.a n = A078654 (n + 1)

theorem P16089700625023703299.correct : P16089700625023703299.Spec := by
  intro n
  simp only [A078654, Nat.add_sub_cancel, A078654.P16089700625023703299.f1, A078654.P16089700625023703299.a, A078654.P8049831914724263825.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078654

/-! ## A078654.P9530684736541822663

`record[A000040(p?[or(2, n+1)])]`
-/

namespace A078654.P9530684736541822663
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078654.P9530684736541822663

namespace A078654

/-- `record[A000040(p?[or(2, n+1)])]` -/
def P9530684736541822663.Spec : Prop :=
  ∀ n, P9530684736541822663.a n = A078654 (n + 1)

end A078654

/-! ## A078654.P11219416132469721179

`A008578(A090658(n+1))`
-/

namespace A078654.P11219416132469721179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A090658 (n + 1)).toNat

end

end A078654.P11219416132469721179

namespace A078654

/-- `A008578(A090658(n+1))` -/
def P11219416132469721179.Spec : Prop :=
  ∀ n, P11219416132469721179.a n = A078654 (n + 1)

end A078654

/-! ## A078654.P1181905207789883947

`A046022(A089217(n+1))`
-/

namespace A078654.P1181905207789883947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A089217 (n + 1)).toNat

end

end A078654.P1181905207789883947

namespace A078654

/-- `A046022(A089217(n+1))` -/
def P1181905207789883947.Spec : Prop :=
  ∀ n, P1181905207789883947.a n = A078654 (n + 1)

end A078654

/-! ## A078654.P7666623050397817023

`A000040(A045326(n+2))`
-/

namespace A078654.P7666623050397817023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A045326 (n + 2)).toNat

end

end A078654.P7666623050397817023

namespace A078654

/-- `A000040(A045326(n+2))` -/
def P7666623050397817023.Spec : Prop :=
  ∀ n, P7666623050397817023.a n = A078654 (n + 1)

end A078654

/-! ## A078654.P10022371961137875845

`A045344(A281664(n+2))`
-/

namespace A078654.P10022371961137875845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A281664 (n + 2)).toNat

end

end A078654.P10022371961137875845

namespace A078654

/-- `A045344(A281664(n+2))` -/
def P10022371961137875845.Spec : Prop :=
  ∀ n, P10022371961137875845.a n = A078654 (n + 1)

end A078654

/-!
# A078655: a(n) = prime(k) where k = n-th prime congruent to 1 mod 6.

The programs for A078655, the canonical program `A078655.P10788547144845651585` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078655 has offset 1).

The definition of A078655 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002476, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078655.P10788547144845651585

`A000040(A002476(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A078655

/-- `A000040(A002476(n+1))` -/
def P10788547144845651585.Spec : Prop :=
  ∀ n, P10788547144845651585.a n = A078655 (n + 1)

theorem P10788547144845651585.correct : P10788547144845651585.Spec := by
  intro n
  simp only [A078655, Nat.add_sub_cancel]

end A078655

/-! ## A078655.P12934853789389506289

`A006450(A091178(n+1))`
-/

namespace A078655.P12934853789389506289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A091178 (n + 1)).toNat

end

end A078655.P12934853789389506289

namespace A078655

/-- `A006450(A091178(n+1))` -/
def P12934853789389506289.Spec : Prop :=
  ∀ n, P12934853789389506289.a n = A078655 (n + 1)

end A078655

/-! ## A078655.P3946160765913434788

`A006450(A171820(n+2))`
-/

namespace A078655.P3946160765913434788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A171820 (n + 2)).toNat

end

end A078655.P3946160765913434788

namespace A078655

/-- `A006450(A171820(n+2))` -/
def P3946160765913434788.Spec : Prop :=
  ∀ n, P3946160765913434788.a n = A078655 (n + 1)

end A078655

/-! ## A078655.P17979299629094598338

`∩[A006450(n+1), A031906(n+1)]`
-/

namespace A078655.P17979299629094598338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078655.P17979299629094598338

namespace A078655

/-- `∩[A006450(n+1), A031906(n+1)]` -/
def P17979299629094598338.Spec : Prop :=
  ∀ n, (P17979299629094598338.a n : ℤ) = A078655 (n + 1)

end A078655

/-! ## A078655.P2931531185185916254

`∩[A031906(n+1), A302596(n+1)]`
-/

namespace A078655.P2931531185185916254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078655.P2931531185185916254

namespace A078655

/-- `∩[A031906(n+1), A302596(n+1)]` -/
def P2931531185185916254.Spec : Prop :=
  ∀ n, (P2931531185185916254.a n : ℤ) = A078655 (n + 1)

end A078655

/-! ## A078655.P17994382020508873314

`∩[A031906(n+1), A302590(n+1)]`
-/

namespace A078655.P17994382020508873314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078655.P17994382020508873314

namespace A078655

/-- `∩[A031906(n+1), A302590(n+1)]` -/
def P17994382020508873314.Spec : Prop :=
  ∀ n, (P17994382020508873314.a n : ℤ) = A078655 (n + 1)

end A078655

/-! ## A078655.P17653752665416741994

`A031377(A153183(n+1))`
-/

namespace A078655.P17653752665416741994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 (A153183 (n + 1)).toNat

end

end A078655.P17653752665416741994

namespace A078655

/-- `A031377(A153183(n+1))` -/
def P17653752665416741994.Spec : Prop :=
  ∀ n, P17653752665416741994.a n = A078655 (n + 1)

end A078655

/-! ## A078655.P16776468010050651828

`∩[A006450(n+1), A031377(n+1)]`
-/

namespace A078655.P16776468010050651828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078655.P16776468010050651828

namespace A078655

/-- `∩[A006450(n+1), A031377(n+1)]` -/
def P16776468010050651828.Spec : Prop :=
  ∀ n, (P16776468010050651828.a n : ℤ) = A078655 (n + 1)

end A078655

/-! ## A078655.P17833950401065282829

`∩[A031377(n+1), A302590(n+1)]`
-/

namespace A078655.P17833950401065282829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078655.P17833950401065282829

namespace A078655

/-- `∩[A031377(n+1), A302590(n+1)]` -/
def P17833950401065282829.Spec : Prop :=
  ∀ n, (P17833950401065282829.a n : ℤ) = A078655 (n + 1)

end A078655

/-! ## A078655.P5143005876429545628

`∩[A031377(n+1), A302596(n+1)]`
-/

namespace A078655.P5143005876429545628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078655.P5143005876429545628

namespace A078655

/-- `∩[A031377(n+1), A302596(n+1)]` -/
def P5143005876429545628.Spec : Prop :=
  ∀ n, (P5143005876429545628.a n : ℤ) = A078655 (n + 1)

end A078655

/-! ## A078655.P13447672924609492160

`∩[A031377(n+1), A076610(n+1)]`
-/

namespace A078655.P13447672924609492160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078655.P13447672924609492160

namespace A078655

/-- `∩[A031377(n+1), A076610(n+1)]` -/
def P13447672924609492160.Spec : Prop :=
  ∀ n, (P13447672924609492160.a n : ℤ) = A078655 (n + 1)

end A078655

/-! ## A078655.P16916395890895120501

`∩[A031906(n+1), A076610(n+1)]`
-/

namespace A078655.P16916395890895120501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078655.P16916395890895120501

namespace A078655

/-- `∩[A031906(n+1), A076610(n+1)]` -/
def P16916395890895120501.Spec : Prop :=
  ∀ n, (P16916395890895120501.a n : ℤ) = A078655 (n + 1)

end A078655

/-! ## A078655.P7423768168352801496

`A120426(A007645(n+2))`
-/

namespace A078655.P7423768168352801496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A007645 (n + 2)).toNat

end

end A078655.P7423768168352801496

namespace A078655

/-- `A120426(A007645(n+2))` -/
def P7423768168352801496.Spec : Prop :=
  ∀ n, P7423768168352801496.a n = A078655 (n + 1)

end A078655

/-! ## A078655.P13492607757558936330

`A120426(A045375(n+2))`
-/

namespace A078655.P13492607757558936330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A045375 (n + 2)).toNat

end

end A078655.P13492607757558936330

namespace A078655

/-- `A120426(A045375(n+2))` -/
def P13492607757558936330.Spec : Prop :=
  ∀ n, P13492607757558936330.a n = A078655 (n + 1)

end A078655

/-! ## A078655.P16199520841890414136

`A031368(A177965(n+2))`
-/

namespace A078655.P16199520841890414136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (A177965 (n + 2)).toNat

end

end A078655.P16199520841890414136

namespace A078655

/-- `A031368(A177965(n+2))` -/
def P16199520841890414136.Spec : Prop :=
  ∀ n, P16199520841890414136.a n = A078655 (n + 1)

end A078655

/-! ## A078655.P7238833143639935668

`A120426(A123365(n+2))`
-/

namespace A078655.P7238833143639935668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A123365 (n + 2)).toNat

end

end A078655.P7238833143639935668

namespace A078655

/-- `A120426(A123365(n+2))` -/
def P7238833143639935668.Spec : Prop :=
  ∀ n, P7238833143639935668.a n = A078655 (n + 1)

end A078655

/-! ## A078655.P6316997220645282317

`A000040(p?[3*n+1])`
-/

namespace A078655.P6316997220645282317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A078655.P6316997220645282317

namespace A078655

/-- `A000040(p?[3*n+1])` -/
def P6316997220645282317.Spec : Prop :=
  ∀ n, P6316997220645282317.a n = A078655 (n + 1)

end A078655

/-! ## A078655.P17762654892406550336

`A000040(or(1, p?[a(n-1)+6]))` with `a(0)=1`
-/

namespace A078655.P17762654892406550336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A078655.P17762654892406550336

namespace A078655

/-- `A000040(or(1, p?[a(n-1)+6]))` -/
def P17762654892406550336.Spec : Prop :=
  ∀ n, P17762654892406550336.a n = A078655 (n + 1)

end A078655

/-! ## A078655.P268494196328937111

`A000040(or(1, ∑{d}[p?[3*n-2], #]-1))`
-/

namespace A078655.P268494196328937111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.lor 1 (((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1)).toNat

end

end A078655.P268494196328937111

namespace A078655

/-- `A000040(or(1, ∑{d}[p?[3*n-2], #]-1))` -/
def P268494196328937111.Spec : Prop :=
  ∀ n, P268494196328937111.a n = A078655 (n + 1)

end A078655

/-! ## A078655.P3987122380674672761

`A000040(A007645(n+2))`
-/

namespace A078655.P3987122380674672761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A007645 (n + 2)).toNat

end

end A078655.P3987122380674672761

namespace A078655

/-- `A000040(A007645(n+2))` -/
def P3987122380674672761.Spec : Prop :=
  ∀ n, P3987122380674672761.a n = A078655 (n + 1)

end A078655

/-!
# A078656: a(n) = prime(k) where k = n-th prime congruent to 1 mod 10.

The programs for A078656, the canonical program `A078656.P2820646494609425011` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078656 has offset 1).

The definition of A078656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078656.P2820646494609425011

`A006450(A049511(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A078656

/-- `A006450(A049511(n+1))` -/
def P2820646494609425011.Spec : Prop :=
  ∀ n, P2820646494609425011.a n = A078656 (n + 1)

theorem P2820646494609425011.correct : P2820646494609425011.Spec := by
  intro n
  simp only [A078656, Nat.add_sub_cancel]

end A078656

/-! ## A078656.P14610782510065328734

`∩[A006450(n+1), A031920(n+1)]`
-/

namespace A078656.P14610782510065328734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078656.P14610782510065328734

namespace A078656

/-- `∩[A006450(n+1), A031920(n+1)]` -/
def P14610782510065328734.Spec : Prop :=
  ∀ n, (P14610782510065328734.a n : ℤ) = A078656 (n + 1)

end A078656

/-! ## A078656.P7505035638408847948

`∩[A031920(n+1), A302596(n+1)]`
-/

namespace A078656.P7505035638408847948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078656.P7505035638408847948

namespace A078656

/-- `∩[A031920(n+1), A302596(n+1)]` -/
def P7505035638408847948.Spec : Prop :=
  ∀ n, (P7505035638408847948.a n : ℤ) = A078656 (n + 1)

end A078656

/-! ## A078656.P8552848732040225346

`∩[A006450(n+1), A031392(n+1)]`
-/

namespace A078656.P8552848732040225346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078656.P8552848732040225346

namespace A078656

/-- `∩[A006450(n+1), A031392(n+1)]` -/
def P8552848732040225346.Spec : Prop :=
  ∀ n, (P8552848732040225346.a n : ℤ) = A078656 (n + 1)

end A078656

/-! ## A078656.P12914238996991699519

`∩[A031392(n+1), A302596(n+1)]`
-/

namespace A078656.P12914238996991699519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078656.P12914238996991699519

namespace A078656

/-- `∩[A031392(n+1), A302596(n+1)]` -/
def P12914238996991699519.Spec : Prop :=
  ∀ n, (P12914238996991699519.a n : ℤ) = A078656 (n + 1)

end A078656

/-! ## A078656.P9819131187417363631

`∩[A031392(n+1), A302590(n+1)]`
-/

namespace A078656.P9819131187417363631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078656.P9819131187417363631

namespace A078656

/-- `∩[A031392(n+1), A302590(n+1)]` -/
def P9819131187417363631.Spec : Prop :=
  ∀ n, (P9819131187417363631.a n : ℤ) = A078656 (n + 1)

end A078656

/-! ## A078656.P12349830697228939908

`∩[A031920(n+1), A302590(n+1)]`
-/

namespace A078656.P12349830697228939908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078656.P12349830697228939908

namespace A078656

/-- `∩[A031920(n+1), A302590(n+1)]` -/
def P12349830697228939908.Spec : Prop :=
  ∀ n, (P12349830697228939908.a n : ℤ) = A078656 (n + 1)

end A078656

/-! ## A078656.P17815718987839440344

`∩[A031392(n+1), A076610(n+1)]`
-/

namespace A078656.P17815718987839440344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078656.P17815718987839440344

namespace A078656

/-- `∩[A031392(n+1), A076610(n+1)]` -/
def P17815718987839440344.Spec : Prop :=
  ∀ n, (P17815718987839440344.a n : ℤ) = A078656 (n + 1)

end A078656

/-! ## A078656.P845655597240090939

`∩[A031920(n+1), A076610(n+1)]`
-/

namespace A078656.P845655597240090939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078656.P845655597240090939

namespace A078656

/-- `∩[A031920(n+1), A076610(n+1)]` -/
def P845655597240090939.Spec : Prop :=
  ∀ n, (P845655597240090939.a n : ℤ) = A078656 (n + 1)

end A078656

/-! ## A078656.P18426945233126847818

`A120426(A030430(n+1))`
-/

namespace A078656.P18426945233126847818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A030430 (n + 1)).toNat

end

end A078656.P18426945233126847818

namespace A078656

/-- `A120426(A030430(n+1))` -/
def P18426945233126847818.Spec : Prop :=
  ∀ n, P18426945233126847818.a n = A078656 (n + 1)

end A078656

/-! ## A078656.P5754448291099576686

`A000040(p?[5*n+1])`
-/

namespace A078656.P5754448291099576686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A078656.P5754448291099576686

namespace A078656

/-- `A000040(p?[5*n+1])` -/
def P5754448291099576686.Spec : Prop :=
  ∀ n, P5754448291099576686.a n = A078656 (n + 1)

end A078656

/-! ## A078656.P9928623179430112891

`A000040(or(1, p?[a(n-1)+5]))` with `a(0)=1`
-/

namespace A078656.P9928623179430112891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A078656.P9928623179430112891

namespace A078656

/-- `A000040(or(1, p?[a(n-1)+5]))` -/
def P9928623179430112891.Spec : Prop :=
  ∀ n, P9928623179430112891.a n = A078656 (n + 1)

end A078656

/-! ## A078656.P3757218932384647277

`A000040(A030430(1+n))`
-/

namespace A078656.P3757218932384647277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A030430 (1 + n)).toNat

end

end A078656.P3757218932384647277

namespace A078656

/-- `A000040(A030430(1+n))` -/
def P3757218932384647277.Spec : Prop :=
  ∀ n, P3757218932384647277.a n = A078656 (n + 1)

end A078656

/-! ## A078656.P132718675103826115

`A000040(A045453(n+2))`
-/

namespace A078656.P132718675103826115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A045453 (n + 2)).toNat

end

end A078656.P132718675103826115

namespace A078656

/-- `A000040(A045453(n+2))` -/
def P132718675103826115.Spec : Prop :=
  ∀ n, P132718675103826115.a n = A078656 (n + 1)

end A078656

/-! ## A078656.P12476139305958535462

`A000040(record[A060954(n+1)])`
-/

namespace A078656.P12476139305958535462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078656.P12476139305958535462

namespace A078656

/-- `A000040(record[A060954(n+1)])` -/
def P12476139305958535462.Spec : Prop :=
  ∀ n, P12476139305958535462.a n = A078656 (n + 1)

end A078656

/-! ## A078656.P4765936524398952277

`A065091(A030430(n+1)-1)`
-/

namespace A078656.P4765936524398952277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A030430 (n + 1) - 1).toNat

end

end A078656.P4765936524398952277

namespace A078656

/-- `A065091(A030430(n+1)-1)` -/
def P4765936524398952277.Spec : Prop :=
  ∀ n, P4765936524398952277.a n = A078656 (n + 1)

end A078656

/-! ## A078656.P312246526444771821

`record[A000040(A006530(10*n+11))]`
-/

namespace A078656.P312246526444771821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A006530 (10 * n + 11)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078656.P312246526444771821

namespace A078656

/-- `record[A000040(A006530(10*n+11))]` -/
def P312246526444771821.Spec : Prop :=
  ∀ n, P312246526444771821.a n = A078656 (n + 1)

end A078656

/-! ## A078656.P1882061245366879793

`A000040(A275467(2*n+2*n+1))`
-/

namespace A078656.P1882061245366879793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A275467 (2 * n + (2 * n + 1))).toNat

end

end A078656.P1882061245366879793

namespace A078656

/-- `A000040(A275467(2*n+2*n+1))` -/
def P1882061245366879793.Spec : Prop :=
  ∀ n, P1882061245366879793.a n = A078656 (n + 1)

end A078656

/-! ## A078656.P5355699365057506718

`A000040(∩[10*n+1, A000040(n+2)])`
-/

namespace A078656.P5355699365057506718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A078656.P5355699365057506718

namespace A078656

/-- `A000040(∩[10*n+1, A000040(n+2)])` -/
def P5355699365057506718.Spec : Prop :=
  ∀ n, P5355699365057506718.a n = A078656 (n + 1)

end A078656

/-! ## A078656.P17799403479636722510

`A000040(∩[A000040(n+1), A016861(n)])`
-/

namespace A078656.P17799403479636722510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A078656.P17799403479636722510

namespace A078656

/-- `A000040(∩[A000040(n+1), A016861(n)])` -/
def P17799403479636722510.Spec : Prop :=
  ∀ n, P17799403479636722510.a n = A078656 (n + 1)

end A078656

/-!
# A078657: Expansion of 1/Product_{ n >= 2, n not of the form 2^k-1 } (1 - x^n).

The programs for A078657, there is no canonical definition to state claims against.
-/

/-! ## A078657.P11328122321024678902

`floor(A078658(n)-abs(sin(n)))`
-/

namespace A078657.P11328122321024678902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078658 n : ℝ) - |Real.sin (n : ℝ)|⌋

end

end A078657.P11328122321024678902

/-! ## A078657.P5640941363003981777

`A078658(n)+A057428(n)`
-/

namespace A078657.P5640941363003981777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078658 n + A057428 n

end

end A078657.P5640941363003981777

/-! ## A078657.P16195260992569408905

`A078658(n)-A057427(n)`
-/

namespace A078657.P16195260992569408905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078658 n - A057427 n

end

end A078657.P16195260992569408905

/-! ## A078657.P4799654641339630655

`A078658(n)-A000040(n+1)%2`
-/

namespace A078657.P4799654641339630655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078658 n - Int.tmod (A000040 (n + 1)) 2

end

end A078657.P4799654641339630655

/-! ## A078657.P3028661271669883535

`A078658(n)-A000045(n²%(n+1))`
-/

namespace A078657.P3028661271669883535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078658 n - A000045 (n ^ 2 % (n + 1))

end

end A078657.P3028661271669883535

/-! ## A078657.P12456372172536311325

`A000045(C(2, n+2))+A078658(n)-1`
-/

namespace A078657.P12456372172536311325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (n + 2)) + (A078658 n - 1)

end

end A078657.P12456372172536311325

/-!
# A078658: a(0) = 1; for n>0, a(n) = 1 + coefficient of x^n in expansion of 1/Product_{ n >= 2, n not of the form 2^k-1 } (1-x^n).

The programs for A078658, there is no canonical definition to state claims against.
-/

/-! ## A078658.P10563118120208455095

`A078657(round(sqrt(n²+1)))+1`
-/

namespace A078658.P10563118120208455095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078657 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1

end

end A078658.P10563118120208455095

/-! ## A078658.P4482272256085318844

`A157928(n+1)+A078657(n)`
-/

namespace A078658.P4482272256085318844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (n + 1) + A078657 n

end

end A078658.P4482272256085318844

/-! ## A078658.P7531529344467049302

`A057427(n)*A078657(n)+1`
-/

namespace A078658.P7531529344467049302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A078657 n + 1

end

end A078658.P7531529344467049302

/-! ## A078658.P6938333040251786851

`A264394(C(2, n+2))+A078657(n)`
-/

namespace A078658.P6938333040251786851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264394 (Nat.choose 2 (n + 2)) + A078657 n

end

end A078658.P6938333040251786851

/-! ## A078658.P15404088950410879009

`A085807(floor(1/(n+1)))+A078657(n)`
-/

namespace A078658.P15404088950410879009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085807 ⌊1 / (n + 1 : ℚ)⌋.toNat + A078657 n

end

end A078658.P15404088950410879009

/-! ## A078658.P16363887248868107270

`A078657(n)%A327871(n)+1`
-/

namespace A078658.P16363887248868107270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078657 n) (A327871 n) + 1

end

end A078658.P16363887248868107270

/-!
# A078659: Expansion of 1/Product_{ n >= 2, n not of the form 2^k-1 } (1+x^n).

The programs for A078659, there is no canonical definition to state claims against.
-/

/-! ## A078659.P17998018405180311882

`A014174(2*n)-A286106(A102726(n))`
-/

namespace A078659.P17998018405180311882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014174 (2 * n) - A286106 (A102726 n).toNat

end

end A078659.P17998018405180311882

/-! ## A078659.P4091733612128993427

`A016344(A014263(n+1)+n)`
-/

namespace A078659.P4091733612128993427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016344 (A014263 (n + 1) + (n : ℤ)).toNat

end

end A078659.P4091733612128993427

/-! ## A078659.P1950859553146281502

`A016386(5*A007092(n)+n)`
-/

namespace A078659.P1950859553146281502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016386 (5 * A007092 n + (n : ℤ)).toNat

end

end A078659.P1950859553146281502

/-! ## A078659.P8399119965981483388

`A016344(3*n)-A016340(3*n+4)`
-/

namespace A078659.P8399119965981483388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016344 (3 * n) - A016340 (3 * n + 4)

end

end A078659.P8399119965981483388

/-! ## A078659.P13803456189747769160

`A008683(∑[A033493(A187829(n+1))])`
-/

namespace A078659.P13803456189747769160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033493 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A078659.P13803456189747769160

/-!
# A078660: Expansion of Product_{ n >= 2, n not of the form 2^k-1 } (1+x^n).

The programs for A078660, there is no canonical definition to state claims against.
-/

/-! ## A078660.P13303283517315028866

`floor(A078661(n)-abs(sin(n)))`
-/

namespace A078660.P13303283517315028866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078661 n : ℝ) - |Real.sin (n : ℝ)|⌋

end

end A078660.P13303283517315028866

/-! ## A078660.P4454391119715071516

`A078661(abs(1-n)+1)-1`
-/

namespace A078660.P4454391119715071516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078661 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A078660.P4454391119715071516

/-! ## A078660.P915597125982406339

`abs(A078661(n)+A057428(n))`
-/

namespace A078660.P915597125982406339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078661 n + A057428 n|

end

end A078660.P915597125982406339

/-! ## A078660.P16797017845538144419

`abs(A054977(n)-A078661(n))`
-/

namespace A078660.P16797017845538144419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054977 n - A078661 n|

end

end A078660.P16797017845538144419

/-! ## A078660.P6560841227323170381

`abs(A057427(n)-A078661(n))`
-/

namespace A078660.P6560841227323170381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057427 n - A078661 n|

end

end A078660.P6560841227323170381

/-! ## A078660.P16109561641916737855

`A000007(n)+A078661(n)-1`
-/

namespace A078660.P16109561641916737855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A078661 n - 1)

end

end A078660.P16109561641916737855

/-! ## A078660.P568766065997196672

`A028310(n)+A078661(n)-(n+1)`
-/

namespace A078660.P568766065997196672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A078661 n - (n + 1 : ℤ))

end

end A078660.P568766065997196672

/-! ## A078660.P13707784599547552015

`(A036987(2*n)+1)*A078661(n)-1`
-/

namespace A078660.P13707784599547552015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036987 (2 * n) + 1) * A078661 n - 1

end

end A078660.P13707784599547552015

/-! ## A078660.P1470446173094200645

`A004277(n)+A078661(n)-(2*n+1)`
-/

namespace A078660.P1470446173094200645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (A078661 n - (2 * n + 1 : ℤ))

end

end A078660.P1470446173094200645

/-! ## A078660.P18259808921561781637

`A007318(A000124(n))+A078661(n)-(n+1)`
-/

namespace A078660.P18259808921561781637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat + (A078661 n - (n + 1 : ℤ))

end

end A078660.P18259808921561781637

/-!
# A078661: a(0) = 1; for n>0, a(n) = 1 + coefficient of x^n in expansion of Product_{ n >= 2, n not of the form 2^k-1 } (1+x^n).

The programs for A078661, there is no canonical definition to state claims against.
-/

/-! ## A078661.P9086205500389899468

`A078660(floor(acot(n)+n))+1`
-/

namespace A078661.P9086205500389899468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078660 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + 1

end

end A078661.P9086205500389899468

/-! ## A078661.P3202986814208859614

`A078660(floor(sqrt(n²+1)))+1`
-/

namespace A078661.P3202986814208859614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078660 (Nat.sqrt (n ^ 2 + 1)) + 1

end

end A078661.P3202986814208859614

/-! ## A078661.P3278375699487938874

`A078660(n)+1-A000007(n)`
-/

namespace A078661.P3278375699487938874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078660 n + 1 - A000007 n

end

end A078661.P3278375699487938874

/-! ## A078661.P1561640580040893489

`A057427(n)*A078660(n)+1`
-/

namespace A078661.P1561640580040893489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A078660 n + 1

end

end A078661.P1561640580040893489

/-! ## A078661.P16072657212317045876

`A078660(n)-and(1, A000010(n+2))+1`
-/

namespace A078661.P16072657212317045876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078660 n - Int.land 1 (A000010 (n + 2)) + 1

end

end A078661.P16072657212317045876

/-! ## A078661.P328056849350359646

`A078660(n)%A327871(n)+1`
-/

namespace A078661.P328056849350359646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078660 n) (A327871 n) + 1

end

end A078661.P328056849350359646

/-!
# A078662: Number of balanced numbers <= 2^n.

The programs for A078662, there is no canonical definition to state claims against.
-/

/-! ## A078662.P524503115466213905

`∑[A078555(n)]`
-/

namespace A078662.P524503115466213905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078662.P524503115466213905

/-! ## A078662.P4338690658117436868

`A078555(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A078662.P4338690658117436868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078555 n + a (A023443 n).toNat

end

end A078662.P4338690658117436868

/-! ## A078662.P1507409740411079196

`A078555(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A078662.P1507409740411079196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078555 n + a (A028310 n - 1).toNat

end

end A078662.P1507409740411079196

/-! ## A078662.P14794577143698406052

`A078555(A291290(3*n))+a(n-1)` with `a(0)=1`
-/

namespace A078662.P14794577143698406052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078555 (A291290 (3 * n)).toNat + a (n - 1)

end

end A078662.P14794577143698406052

/-! ## A078662.P646119925146045344

`A078555(A000007(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A078662.P646119925146045344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078555 (A000007 n + (n : ℤ)).toNat + a (n - 1)

end

end A078662.P646119925146045344

/-!
# A078663: a(n) = Sum_{i=1..n} Ulam(i), where Ulam(i) denotes the i-th Ulam number.

The programs for A078663, there is no canonical definition to state claims against.
-/

/-! ## A078663.P11291179849764872280

`∑[A002858(1+n)]`
-/

namespace A078663.P11291179849764872280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078663.P11291179849764872280

/-! ## A078663.P4221122795987862225

`∑[A048951(n+1)/2]`
-/

namespace A078663.P4221122795987862225
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048951 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078663.P4221122795987862225

/-! ## A078663.P4602020521220698169

`∑[A072832(n)+a(n-1)]` with `a(0)=1`
-/

namespace A078663.P4602020521220698169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A072832 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078663.P4602020521220698169

/-! ## A078663.P4145329113629272884

`A002858(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A078663.P4145329113629272884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002858 (n + 1) + a (n - 1)

end

end A078663.P4145329113629272884

/-! ## A078663.P12570226128313583391

`∑[∑[A072832(A028310(n))]]`
-/

namespace A078663.P12570226128313583391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072832 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078663.P12570226128313583391

/-! ## A078663.P15882129338026882247

`∑[∑[A072832(n+1)]+1-A072832(n+1)]`
-/

namespace A078663.P15882129338026882247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072832 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A072832 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078663.P15882129338026882247

/-! ## A078663.P17846649641593005007

`∑[∑[A072832(A065033(2*n))]]`
-/

namespace A078663.P17846649641593005007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072832 (A065033 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078663.P17846649641593005007

/-! ## A078663.P2613681766531855215

`∑[record[A002858(A126759(n))]]`
-/

namespace A078663.P2613681766531855215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078663.P2613681766531855215

/-! ## A078663.P14592039807098710307

`∑[∑[A072832(A233583(n+1))]]`
-/

namespace A078663.P14592039807098710307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072832 (A233583 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078663.P14592039807098710307

/-! ## A078663.P12845467404937555334

`∑[A001281(A048951(n+1))]`
-/

namespace A078663.P12845467404937555334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A048951 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078663.P12845467404937555334

/-! ## A078663.P14720327095039314228

`∑[A110654(A048951(n+1))%A000124(n+5)]`
-/

namespace A078663.P14720327095039314228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110654 (A048951 (n + 1)).toNat) (A000124 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078663.P14720327095039314228

/-! ## A078663.P15985350722245101904

`A000027(a(n-1)+A048951(n+1)/2)` with `a(0)=1`
-/

namespace A078663.P15985350722245101904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (A048951 (n + 1) : ℚ) / 2)).toNat

end

end A078663.P15985350722245101904

/-! ## A078663.P5839255074780033627

`∑[A002265(2*A048951(n+1))]`
-/

namespace A078663.P5839255074780033627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A048951 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078663.P5839255074780033627

/-!
# A078664: Number of divisors of the n-th Ulam number.

The programs for A078664, there is no canonical definition to state claims against.
-/

/-! ## A078664.P13975633087862023060

`A000005(A002858(n+1))`
-/

namespace A078664.P13975633087862023060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002858 (n + 1)).toNat

end

end A078664.P13975633087862023060

/-! ## A078664.P6154060276798792040

`∏{e}[A002858(n+1), #+1]`
-/

namespace A078664.P6154060276798792040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A078664.P6154060276798792040

/-! ## A078664.P7641225300099541295

`∑{d}[A002858(n+1), A007318(A002858(n+1)%#)]`
-/

namespace A078664.P7641225300099541295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007318 (Int.tmod (A002858 (n + 1)) (d : ℤ)).toNat

end

end A078664.P7641225300099541295

/-! ## A078664.P14907310683171859397

`A000005(A048951(n+1)/2)`
-/

namespace A078664.P14907310683171859397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A048951 (n + 1) : ℚ) / 2)).toNat

end

end A078664.P14907310683171859397

/-! ## A078664.P9097480700608048621

`A000005(∑[A072832(n+1)]+1-A072832(n+1))`
-/

namespace A078664.P9097480700608048621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A072832 (n + 1))).toNat

end

end A078664.P9097480700608048621

/-! ## A078664.P9080795024381254251

`A000005(A078663(n+2)-(A078663(n+1)+A072832(n+1)))`
-/

namespace A078664.P9080795024381254251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A078663 (n + 2) - (A078663 (n + 1) + A072832 (n + 1))).toNat

end

end A078664.P9080795024381254251

/-! ## A078664.P17442785354171797489

`∑{d}[A002858(n+1), A001316(A001316(#))-1]`
-/

namespace A078664.P17442785354171797489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A001316 (A001316 d).toNat - 1)

end

end A078664.P17442785354171797489

/-! ## A078664.P17688051205422230730

`A320111(2*A002858(n+1))`
-/

namespace A078664.P17688051205422230730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A002858 (n + 1)).toNat

end

end A078664.P17688051205422230730

/-! ## A078664.P8262400448259455852

`A069157(A048951(n+1))`
-/

namespace A078664.P8262400448259455852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A048951 (n + 1)).toNat

end

end A078664.P8262400448259455852

/-! ## A078664.P17660672148425588453

`A000005(A183534(∑[n+1]))`
-/

namespace A078664.P17660672148425588453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A183534 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A078664.P17660672148425588453

/-!
# A078665: Maximum absolute value of coefficients of characteristic polynomial of M_n, the n X n matrix m_(i,j) = i mod j.

The programs for A078665, there is no canonical definition to state claims against.
-/

/-! ## A078665.P12414082403039566624

`A195770((2*a(n-2)+a(n-3)+n+1)²)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A078665.P12414082403039566624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5] fun n a =>
  A195770 ((2 * a (n - 2) + (a (n - 3) + (n + 1 : ℤ))) ^ 2).toNat

end

end A078665.P12414082403039566624

/-! ## A078665.P15550362834292605820

`A066657(xor(28, A221100(n)))`
-/

namespace A078665.P15550362834292605820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (Int.xor 28 (A221100 n)).toNat

end

end A078665.P15550362834292605820

/-!
# A078666: Number of isomorphism classes of simple quadrangulations of the sphere having n+2 vertices and n faces, minimal degree 3, with orientation-reversing isomorphisms permitted.

The programs for A078666, there is no canonical definition to state claims against.
-/

/-! ## A078666.P15473993619968618384

`A078672(n+6)+A007022(n+6)`
-/

namespace A078666.P15473993619968618384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078672 (n + 6) + A007022 (n + 6)

end

end A078666.P15473993619968618384

/-! ## A078666.P6622025860176624772

`A007305(or(A002851(n), A032741(n)))`
-/

namespace A078666.P6622025860176624772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (Int.lor (A002851 n) (A032741 n)).toNat

end

end A078666.P6622025860176624772

/-! ## A078666.P9867820450960407924

`xor(A006774(A061219(n+1)), A339846(n+1))`
-/

namespace A078666.P9867820450960407924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006774 (A061219 (n + 1)).toNat) (A339846 (n + 1))

end

end A078666.P9867820450960407924

/-!
# A078667: Integers that occur more than once as the difference of the squares of two consecutive primes.

The programs for A078667, there is no canonical definition to state claims against.
-/

/-! ## A078667.P17161597958002023042

`A090784(A361045(∑[n]))`
-/

namespace A078667.P17161597958002023042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090784 (A361045 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A078667.P17161597958002023042

/-! ## A078667.P2581276777488596392

`A090784(A043316(n+1))`
-/

namespace A078667.P2581276777488596392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090784 (A043316 (n + 1)).toNat

end

end A078667.P2581276777488596392

/-! ## A078667.P2323705423904610283

`A090784(A044913(n+1))`
-/

namespace A078667.P2323705423904610283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090784 (A044913 (n + 1)).toNat

end

end A078667.P2323705423904610283

/-! ## A078667.P3382821951561232610

`A090784(A049872(n+1))`
-/

namespace A078667.P3382821951561232610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090784 (A049872 (n + 1)).toNat

end

end A078667.P3382821951561232610

/-! ## A078667.P13558669329404144147

`A090784(A061147(n+1))`
-/

namespace A078667.P13558669329404144147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090784 (A061147 (n + 1)).toNat

end

end A078667.P13558669329404144147

/-!
# A078668: Primes that are the difference between two powers: y^z - x^z = prime.

The programs for A078668, there is no canonical definition to state claims against.
-/

/-! ## A078668.P7067039971376585482

`∩[C(n+1, 63)+n, A000040(n+1)]`
-/

namespace A078668.P7067039971376585482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 63 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078668.P7067039971376585482

/-! ## A078668.P2544250524824329386

`A092950(A118848(n+1))`
-/

namespace A078668.P2544250524824329386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092950 (A118848 (n + 1)).toNat

end

end A078668.P2544250524824329386

/-! ## A078668.P13946937308662757870

`record[A006530(A367859(n+1)+1+n)]`
-/

namespace A078668.P13946937308662757870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A367859 (n + 1) + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078668.P13946937308662757870

/-! ## A078668.P16000831437242629034

`or(col(A217152(n+1)), A000040(n+1))`
-/

namespace A078668.P16000831437242629034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.triCol (A217152 (n + 1)).toNat : ℤ) (A000040 (n + 1))

end

end A078668.P16000831437242629034

/-! ## A078668.P1470822794899265036

`A000040(n+1)+60*A185284(2*n+1)`
-/

namespace A078668.P1470822794899265036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 60 * A185284 (2 * n + 1)

end

end A078668.P1470822794899265036

/-!
# A078670: Number of times n appears among the decimal digits of (n!)!.

The programs for A078670, there is no canonical definition to state claims against.
-/

/-! ## A078670.P9082088176998336316

`A077774(xor(2, A120732(n)))`
-/

namespace A078670.P9082088176998336316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077774 (Int.xor 2 (A120732 n)).toNat

end

end A078670.P9082088176998336316

/-! ## A078670.P4860742481025512053

`and(-3, A357581(A157003(n)))`
-/

namespace A078670.P4860742481025512053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A357581 (A157003 n).toNat)

end

end A078670.P4860742481025512053

/-!
# A078672: Number of simple 4-regular 4-edge-connected but not 3-connected plane graphs on n nodes.

The programs for A078672, there is no canonical definition to state claims against.
-/

/-! ## A078672.P11251645552063966346

`A078666(n+6)-A007022(n+6)`
-/

namespace A078672.P11251645552063966346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078666 (n + 6) - A007022 (n + 6)

end

end A078672.P11251645552063966346

/-! ## A078672.P9275274333554266213

`A212992(A193490(n+1))`
-/

namespace A078672.P9275274333554266213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212992 (A193490 (n + 1)).toNat

end

end A078672.P9275274333554266213

/-! ## A078672.P8782421518857044399

`A122297(A053731(n+2))`
-/

namespace A078672.P8782421518857044399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122297 (A053731 (n + 2)).toNat

end

end A078672.P8782421518857044399

/-! ## A078672.P4943792893356687155

`A122314(A056613(n+2))`
-/

namespace A078672.P4943792893356687155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122314 (A056613 (n + 2)).toNat

end

end A078672.P4943792893356687155

/-! ## A078672.P2240262386454482456

`A236567(∏[∏[A001826(n+1)]])`
-/

namespace A078672.P2240262386454482456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236567 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A078672.P2240262386454482456

/-!
# A078673: Number of ways of arranging the numbers 1..n in a circle so that there is no consecutive triple i, i+1, i+2 or i, i-1, i-2 (mod n).

The programs for A078673, there is no canonical definition to state claims against.
-/

/-! ## A078673.P15502115599100929349

`ceil(A078628(n+1)/2)`
-/

namespace A078673.P15502115599100929349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A078628 (n + 1) : ℚ) / 2⌉

end

end A078673.P15502115599100929349

/-! ## A078673.P11609295086655423747

`A078628(n+1)/A329683(n)`
-/

namespace A078673.P11609295086655423747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078628 (n + 1) : ℚ) / (A329683 n : ℚ)

end

end A078673.P11609295086655423747

/-! ## A078673.P15962966636112933519

`floor((A078628(A000027(n+1))+1)/2)`
-/

namespace A078673.P15962966636112933519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078628 (A000027 (n + 1)).toNat + 1 : ℚ) / 2⌋

end

end A078673.P15962966636112933519

/-! ## A078673.P2820430902421226226

`A078628(n+1)/A040000(floor(n/2))`
-/

namespace A078673.P2820430902421226226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078628 (n + 1) : ℚ) / (A040000 ⌊(n : ℚ) / 2⌋.toNat : ℚ)

end

end A078673.P2820430902421226226

/-! ## A078673.P5619555187992119412

`A078628(n+1)/A046698(A014430(n))`
-/

namespace A078673.P5619555187992119412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078628 (n + 1) : ℚ) / (A046698 (A014430 n).toNat : ℚ)

end

end A078673.P5619555187992119412

/-! ## A078673.P10907703275117303473

`A078628(n+1)/A046698(A046022(n+2)-1)`
-/

namespace A078673.P10907703275117303473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078628 (n + 1) : ℚ) / (A046698 (A046022 (n + 2) - 1).toNat : ℚ)

end

end A078673.P10907703275117303473

/-! ## A078673.P6322586008090335683

`A078628(n+1)/A046698(A019565(n))`
-/

namespace A078673.P6322586008090335683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078628 (n + 1) : ℚ) / (A046698 (A019565 n).toNat : ℚ)

end

end A078673.P6322586008090335683

/-!
# A078674: Number of ways to lace a shoe that has n pairs of eyelets, assuming the lacing satisfies certain conditions.

The programs for A078674, there is no canonical definition to state claims against.
-/

/-! ## A078674.P16011680770206155947

`A078629(n+1)/floor(sqrt(n+3))`
-/

namespace A078674.P16011680770206155947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078629 (n + 1) : ℚ) / (Nat.sqrt (n + 3) : ℚ)

end

end A078674.P16011680770206155947

/-!
# A078675: Number of ways to lace a shoe that has n pairs of eyelets.

The programs for A078675, there is no canonical definition to state claims against.
-/

/-! ## A078675.P62208904170741672

`(A078676(n+1)+A078602(n+1))/2`
-/

namespace A078675.P62208904170741672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078676 (n + 1) + A078602 (n + 1) : ℚ) / 2

end

end A078675.P62208904170741672

/-!
# A078676: Number of symmetric ways to lace a shoe that has n pairs of eyelets.

The programs for A078676, there is no canonical definition to state claims against.
-/

/-! ## A078676.P12864043915953372246

`2*A078675(n+1)-A078602(n+1)`
-/

namespace A078676.P12864043915953372246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078675 (n + 1) - A078602 (n + 1)

end

end A078676.P12864043915953372246

/-! ## A078676.P13797128526294189576

`A000165(n)-A008615(A356409(n))`
-/

namespace A078676.P13797128526294189576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n - A008615 (A356409 n).toNat

end

end A078676.P13797128526294189576

/-!
# A078677: Write n in binary; repeatedly sum the "digits" until reaching 1; a(n) = sum of these sums (including '1' and n itself).

The programs for A078677, the canonical program `A078677.P617724076357059573` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078677 has offset 1).

The definition of A078677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078677.P617724076357059573

`n+1+a(A000120(n+1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A078677

/-- `n+1+a(A000120(n+1)-1)` -/
def P617724076357059573.Spec : Prop :=
  ∀ n, (P617724076357059573.a n : ℤ) = A078677 (n + 1)

theorem P617724076357059573.correct : P617724076357059573.Spec := by
  intro n
  simp only [A078677, Nat.add_sub_cancel]

end A078677

/-! ## A078677.P10390857018673062494

`a(n-∑[val(n+1, 2)])+1+n` with `a(0)=1`
-/

namespace A078677.P10390857018673062494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - ∑ j ∈ Finset.range (n + 1), f1 j) + 1 + n

end

end A078677.P10390857018673062494

namespace A078677

/-- `a(n-∑[val(n+1, 2)])+1+n` -/
def P10390857018673062494.Spec : Prop :=
  ∀ n, (P10390857018673062494.a n : ℤ) = A078677 (n + 1)

end A078677

/-! ## A078677.P25024616112848992

`n+1+a(A048881(n))` with `a(0)=1`
-/

namespace A078677.P25024616112848992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + 1 + a (A048881 n).toNat

end

end A078677.P25024616112848992

namespace A078677

/-- `n+1+a(A048881(n))` -/
def P25024616112848992.Spec : Prop :=
  ∀ n, (P25024616112848992.a n : ℤ) = A078677 (n + 1)

end A078677

/-! ## A078677.P7504602648453784586

`a(log2(A048896(n)))+1+n` with `a(0)=1`
-/

namespace A078677.P7504602648453784586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway (Real.logb 2 (A048896 n : ℝ))).toNat + 1 + n

end

end A078677.P7504602648453784586

namespace A078677

/-- `a(log2(A048896(n)))+1+n` -/
def P7504602648453784586.Spec : Prop :=
  ∀ n, (P7504602648453784586.a n : ℤ) = A078677 (n + 1)

end A078677

/-! ## A078677.P3462445062795858833

`a(log2(Δ[A193494(n)]))+n+1` with `a(0)=1`
-/

namespace A078677.P3462445062795858833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193494 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway (Real.logb 2 (f1 (n + 1) - f1 n : ℝ))).toNat + (n + 1)

end

end A078677.P3462445062795858833

namespace A078677

/-- `a(log2(Δ[A193494(n)]))+n+1` -/
def P3462445062795858833.Spec : Prop :=
  ∀ n, (P3462445062795858833.a n : ℤ) = A078677 (n + 1)

end A078677

/-! ## A078677.P6635855138386047998

`a(n-A011371(n+1))+n+1` with `a(0)=1`
-/

namespace A078677.P6635855138386047998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A011371 (n + 1)).toNat + (n + 1)

end

end A078677.P6635855138386047998

namespace A078677

/-- `a(n-A011371(n+1))+n+1` -/
def P6635855138386047998.Spec : Prop :=
  ∀ n, (P6635855138386047998.a n : ℤ) = A078677 (n + 1)

theorem P6635855138386047998.correct : P6635855138386047998.Spec := by
  intro n
  simp only [A078677, Nat.add_sub_cancel, A078677.P6635855138386047998.a, A078677.P617724076357059573.a, A000120, A000120.P2816527436160941581.a, A011371, A011371.P12398255777927387864.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078677

/-! ## A078677.P12717339517901576348

`a(A000120(and(n, n+1)))+n+1` with `a(0)=1`
-/

namespace A078677.P12717339517901576348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A000120 (Nat.land n (n + 1))).toNat + (n + 1)

end

end A078677.P12717339517901576348

namespace A078677

/-- `a(A000120(and(n, n+1)))+n+1` -/
def P12717339517901576348.Spec : Prop :=
  ∀ n, (P12717339517901576348.a n : ℤ) = A078677 (n + 1)

end A078677

/-! ## A078677.P42960926750592543

`a(val(A000108(n), 2))+n+1` with `a(0)=1`
-/

namespace A078677.P42960926750592543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.valuation (A000108 n).toNat 2) + (n + 1)

end

end A078677.P42960926750592543

namespace A078677

/-- `a(val(A000108(n), 2))+n+1` -/
def P42960926750592543.Spec : Prop :=
  ∀ n, (P42960926750592543.a n : ℤ) = A078677 (n + 1)

end A078677

/-! ## A078677.P4165315662908028181

`a(A240857(∑[n]))+1+n` with `a(0)=1`
-/

namespace A078677.P4165315662908028181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A240857 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 1 + n

end

end A078677.P4165315662908028181

namespace A078677

/-- `a(A240857(∑[n]))+1+n` -/
def P4165315662908028181.Spec : Prop :=
  ∀ n, (P4165315662908028181.a n : ℤ) = A078677 (n + 1)

end A078677

/-!
# A078678: Number of binary strings with n 1's and n 0's avoiding zigzags, that is avoiding the substrings 101 and 010.

The programs for A078678, the canonical program `A078678.P11134181835227604986` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078678 has offset 0).

The definition of A078678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078678.P11134181835227604986

`∑{#}[n+floor(n/2), C(n-#+2*floor(#/3), floor(#/3))²]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078678

/-- `∑{#}[n+floor(n/2), C(n-#+2*floor(#/3), floor(#/3))²]` -/
def P11134181835227604986.Spec : Prop :=
  ∀ n, (P11134181835227604986.a n : ℤ) = A078678 n

theorem P11134181835227604986.correct : P11134181835227604986.Spec := by
  intro n
  simp only [A078678]

end A078678

/-! ## A078678.P13943573434619149656

`record[gcd(2, n+1)*A329703(n)]`
-/

namespace A078678.P13943573434619149656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A329703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078678.P13943573434619149656

namespace A078678

/-- `record[gcd(2, n+1)*A329703(n)]` -/
def P13943573434619149656.Spec : Prop :=
  ∀ n, P13943573434619149656.a n = A078678 n

end A078678

/-! ## A078678.P11384333888026707624

`record[A000034(n)*A088518(n)]`
-/

namespace A078678.P11384333888026707624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A088518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078678.P11384333888026707624

namespace A078678

/-- `record[A000034(n)*A088518(n)]` -/
def P11384333888026707624.Spec : Prop :=
  ∀ n, P11384333888026707624.a n = A078678 n

end A078678

/-! ## A078678.P14962251248774106204

`record[A003842((-1)^n+2)*A329703(n)]`
-/

namespace A078678.P14962251248774106204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 ((-1) ^ n + 2).toNat * A329703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078678.P14962251248774106204

namespace A078678

/-- `record[A003842((-1)^n+2)*A329703(n)]` -/
def P14962251248774106204.Spec : Prop :=
  ∀ n, P14962251248774106204.a n = A078678 n

end A078678

/-! ## A078678.P16857195080508354135

`A040000(n)*A088518(A004273(n))`
-/

namespace A078678.P16857195080508354135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A088518 (A004273 n).toNat

end

end A078678.P16857195080508354135

namespace A078678

/-- `A040000(n)*A088518(A004273(n))` -/
def P16857195080508354135.Spec : Prop :=
  ∀ n, P16857195080508354135.a n = A078678 n

end A078678

/-! ## A078678.P8666084085859141540

`A036453(n+1)*A088518(A004273(n))`
-/

namespace A078678.P8666084085859141540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A088518 (A004273 n).toNat

end

end A078678.P8666084085859141540

namespace A078678

/-- `A036453(n+1)*A088518(A004273(n))` -/
def P8666084085859141540.Spec : Prop :=
  ∀ n, P8666084085859141540.a n = A078678 n

end A078678

/-! ## A078678.P16991066566537423565

`A040000(n)*A088518(A004280(n+1))`
-/

namespace A078678.P16991066566537423565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A088518 (A004280 (n + 1)).toNat

end

end A078678.P16991066566537423565

namespace A078678

/-- `A040000(n)*A088518(A004280(n+1))` -/
def P16991066566537423565.Spec : Prop :=
  ∀ n, P16991066566537423565.a n = A078678 n

end A078678

/-! ## A078678.P11043133394769450128

`A125267(n)-Δ[A088518(A004273(n))]`
-/

namespace A078678.P11043133394769450128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125267 n - (f1 (n + 1) - f1 n)

end

end A078678.P11043133394769450128

namespace A078678

/-- `A125267(n)-Δ[A088518(A004273(n))]` -/
def P11043133394769450128.Spec : Prop :=
  ∀ n, P11043133394769450128.a n = A078678 n

end A078678

/-! ## A078678.P9177664033697223570

`A040000(n)*A132893(A002620(n))`
-/

namespace A078678.P9177664033697223570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A132893 (A002620 n).toNat

end

end A078678.P9177664033697223570

namespace A078678

/-- `A040000(n)*A132893(A002620(n))` -/
def P9177664033697223570.Spec : Prop :=
  ∀ n, P9177664033697223570.a n = A078678 n

end A078678

/-! ## A078678.P7751967573896188906

`sqrt(A381551(n))`
-/

namespace A078678.P7751967573896188906
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A381551 n : ℝ)

end

end A078678.P7751967573896188906

namespace A078678

/-- `sqrt(A381551(n))` -/
def P7751967573896188906.Spec : Prop :=
  ∀ n, P7751967573896188906.a n = (A078678 n : ℝ)

end A078678

/-!
# A078679: Number of Grand Motzkin paths of length n with no zigzags, that is with no factors UDU and DUD.

The programs for A078679, there is no canonical definition to state claims against.
-/

/-! ## A078679.P6271101186792879789

`A008611(2*A000645(n))`
-/

namespace A078679.P6271101186792879789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (2 * A000645 n).toNat

end

end A078679.P6271101186792879789

/-! ## A078679.P12978740747451474005

`A008611(A000645(n)+A000645(n))`
-/

namespace A078679.P12978740747451474005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A000645 n + A000645 n).toNat

end

end A078679.P12978740747451474005

/-! ## A078679.P3117967206336115861

`A008615(A083337(n))+A001006(n)`
-/

namespace A078679.P3117967206336115861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A083337 n).toNat + A001006 n

end

end A078679.P3117967206336115861

/-! ## A078679.P7106851402797944931

`A008619(A293006(n)+A011782(n))`
-/

namespace A078679.P7106851402797944931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A293006 n + A011782 n).toNat

end

end A078679.P7106851402797944931

/-! ## A078679.P5073636890660817265

`A008619(A293006(n)+A131577(n))`
-/

namespace A078679.P5073636890660817265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A293006 n + A131577 n).toNat

end

end A078679.P5073636890660817265

/-!
# A078680: Smallest m > 0 such that n*2^m + 1 is prime, or 0 if no such m exists.

The programs for A078680, there is no canonical definition to state claims against.
-/

/-! ## A078680.P10502851925502573867

`A040076(2*(n+1))+1`
-/

namespace A078680.P10502851925502573867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (2 * (n + 1)) + 1

end

end A078680.P10502851925502573867

/-! ## A078680.P11474467149553967561

`A040076(A103517(n))%A016922(n)+1`
-/

namespace A078680.P11474467149553967561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040076 (A103517 n).toNat) (A016922 n) + 1

end

end A078680.P11474467149553967561

/-! ## A078680.P15070160423854354106

`(A040076(A103517(n))+1)%A044602(n+1)`
-/

namespace A078680.P15070160423854354106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040076 (A103517 n).toNat + 1) (A044602 (n + 1))

end

end A078680.P15070160423854354106

/-! ## A078680.P15317300511213835786

`A063994(A001316(n))+A040076(A103517(n))`
-/

namespace A078680.P15317300511213835786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (A001316 n).toNat + A040076 (A103517 n).toNat

end

end A078680.P15317300511213835786

/-! ## A078680.P7509301409263415052

`A078588(A190435(n+1))+A040076(A103517(n))`
-/

namespace A078680.P7509301409263415052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (A190435 (n + 1)).toNat + A040076 (A103517 n).toNat

end

end A078680.P7509301409263415052

/-! ## A078680.P16752042301075927934

`A063994(A278225(n))+A040076(A103517(n))`
-/

namespace A078680.P16752042301075927934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (A278225 n).toNat + A040076 (A103517 n).toNat

end

end A078680.P16752042301075927934

/-! ## A078680.P1381097068552950501

`A063994(A137688(n))+A040076(A103517(n))`
-/

namespace A078680.P1381097068552950501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (A137688 n).toNat + A040076 (A103517 n).toNat

end

end A078680.P1381097068552950501

/-! ## A078680.P14383655477102669285

`A303709(A195942(n+1))+A040076(A103517(n))`
-/

namespace A078680.P14383655477102669285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 (A195942 (n + 1)).toNat + A040076 (A103517 n).toNat

end

end A078680.P14383655477102669285

/-!
# A078683: Least prime of the form n*2^m+1 for m>0, or 0 if there is no such prime.

The programs for A078683, there is no canonical definition to state claims against.
-/

/-! ## A078683.P3636296296921435829

`(n+1)*2^A078680(n+1)+1`
-/

namespace A078683.P3636296296921435829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (2 : ℚ) ^ (A078680 (n + 1) : ℤ) + 1

end

end A078683.P3636296296921435829

/-! ## A078683.P12109628159426669771

`(n+1)*A000051(A078680(n+1))-n`
-/

namespace A078683.P12109628159426669771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000051 (A078680 (n + 1)).toNat - (n : ℤ)

end

end A078683.P12109628159426669771

/-! ## A078683.P9097762351427074279

`A050921((n+1)*A010051(n+2)+n+1)`
-/

namespace A078683.P9097762351427074279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050921 ((n + 1 : ℤ) * A010051 (n + 2) + (n : ℤ) + 1).toNat

end

end A078683.P9097762351427074279

/-! ## A078683.P1896149675277555965

`A050921(2*(n+1))`
-/

namespace A078683.P1896149675277555965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050921 (2 * (n + 1))

end

end A078683.P1896149675277555965

/-! ## A078683.P11014812557512345864

`or(1, A050921(record[2-xor(1, -n)]))`
-/

namespace A078683.P11014812557512345864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A050921 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A078683.P11014812557512345864

/-!
# A078684: a(n) = 3^floor(n^2/4).

The programs for A078684, the canonical program `A078684.P4217233834367093128` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078684 has offset 0).

The definition of A078684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078684.P4217233834367093128

`3^floor(n²/4)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078684

/-- `3^floor(n²/4)` -/
def P4217233834367093128.Spec : Prop :=
  ∀ n, P4217233834367093128.a n = (A078684 n : ℚ)

end A078684

/-! ## A078684.P17320809814524390149

`9*a(n-2)²/a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=9`
-/

namespace A078684.P17320809814524390149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3, 9] fun n a =>
  9 * a (n - 2) ^ 2 / a (n - 4)

end

end A078684.P17320809814524390149

namespace A078684

/-- `9*a(n-2)²/a(n-4)` -/
def P17320809814524390149.Spec : Prop :=
  ∀ n, P17320809814524390149.a n = (A078684 n : ℚ)

end A078684

/-! ## A078684.P17627429865234926504

`∏[3^val(2^n, 4)]`
-/

namespace A078684.P17627429865234926504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (2 ^ n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078684.P17627429865234926504

namespace A078684

/-- `∏[3^val(2^n, 4)]` -/
def P17627429865234926504.Spec : Prop :=
  ∀ n, (P17627429865234926504.a n : ℤ) = A078684 n

end A078684

/-! ## A078684.P15550628644215543847

`∏[∏[runs[val(n+3, 4)]]]`
-/

namespace A078684.P15550628644215543847
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078684.P15550628644215543847

namespace A078684

/-- `∏[∏[runs[val(n+3, 4)]]]` -/
def P15550628644215543847.Spec : Prop :=
  ∀ n, (P15550628644215543847.a n : ℤ) = A078684 n

end A078684

/-! ## A078684.P14928588712715275621

`∏[3*a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A078684.P14928588712715275621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078684.P14928588712715275621

namespace A078684

/-- `∏[3*a(n-2)]` -/
def P14928588712715275621.Spec : Prop :=
  ∀ n, (P14928588712715275621.a n : ℤ) = A078684 n

end A078684

/-!
# A078685: Minimum value of |prime(n) - 2^x|.

The programs for A078685, the canonical program `A078685.P14940977753041883889` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078685 has offset 1).

The definition of A078685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078685.P14940977753041883889

`A053646(p?[abs(xor(n, -2))])`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078685

/-- `A053646(p?[abs(xor(n, -2))])` -/
def P14940977753041883889.Spec : Prop :=
  ∀ n, P14940977753041883889.a n = A078685 (n + 1)

theorem P14940977753041883889.correct : P14940977753041883889.Spec := by
  intro n
  simp only [A078685, Nat.add_sub_cancel]

end A078685

/-! ## A078685.P15093355098031377051

`A053646(Δ[A007504(n)])`
-/

namespace A078685.P15093355098031377051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (f1 (n + 1) - f1 n).toNat

end

end A078685.P15093355098031377051

namespace A078685

/-- `A053646(Δ[A007504(n)])` -/
def P15093355098031377051.Spec : Prop :=
  ∀ n, P15093355098031377051.a n = A078685 (n + 1)

end A078685

/-! ## A078685.P11860171458844696266

`A053646(record[A051698(n)])`
-/

namespace A078685.P11860171458844696266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078685.P11860171458844696266

namespace A078685

/-- `A053646(record[A051698(n)])` -/
def P11860171458844696266.Spec : Prop :=
  ∀ n, P11860171458844696266.a n = A078685 (n + 1)

end A078685

/-! ## A078685.P7394242960817837722

`A053646(record[A162753(n)])`
-/

namespace A078685.P7394242960817837722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078685.P7394242960817837722

namespace A078685

/-- `A053646(record[A162753(n)])` -/
def P7394242960817837722.Spec : Prop :=
  ∀ n, P7394242960817837722.a n = A078685 (n + 1)

end A078685

/-! ## A078685.P2318439477011465203

`A053646(A000040(n+1))`
-/

namespace A078685.P2318439477011465203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (A000040 (n + 1)).toNat

end

end A078685.P2318439477011465203

namespace A078685

/-- `A053646(A000040(n+1))` -/
def P2318439477011465203.Spec : Prop :=
  ∀ n, P2318439477011465203.a n = A078685 (n + 1)

end A078685

/-! ## A078685.P345587140192681033

`A053646(A006005(n+1))`
-/

namespace A078685.P345587140192681033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (A006005 (n + 1)).toNat

end

end A078685.P345587140192681033

namespace A078685

/-- `A053646(A006005(n+1))` -/
def P345587140192681033.Spec : Prop :=
  ∀ n, P345587140192681033.a n = A078685 (n + 1)

end A078685

/-! ## A078685.P3639542185681634062

`A053646(A008578(n+2))`
-/

namespace A078685.P3639542185681634062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (A008578 (n + 2)).toNat

end

end A078685.P3639542185681634062

namespace A078685

/-- `A053646(A008578(n+2))` -/
def P3639542185681634062.Spec : Prop :=
  ∀ n, P3639542185681634062.a n = A078685 (n + 1)

end A078685

/-! ## A078685.P1977702297076276809

`A053646(A075643(n+2))`
-/

namespace A078685.P1977702297076276809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (A075643 (n + 2)).toNat

end

end A078685.P1977702297076276809

namespace A078685

/-- `A053646(A075643(n+2))` -/
def P1977702297076276809.Spec : Prop :=
  ∀ n, P1977702297076276809.a n = A078685 (n + 1)

end A078685

/-! ## A078685.P12421877482865127758

`A053646(A182986(n+2))`
-/

namespace A078685.P12421877482865127758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (A182986 (n + 2)).toNat

end

end A078685.P12421877482865127758

namespace A078685

/-- `A053646(A182986(n+2))` -/
def P12421877482865127758.Spec : Prop :=
  ∀ n, P12421877482865127758.a n = A078685 (n + 1)

end A078685

/-!
# A078686: Primes prime(k) such that 2^k - prime(k) is also prime.

The programs for A078686, there is no canonical definition to state claims against.
-/

/-! ## A078686.P16557722083633133054

`A000040(A078583(1+n))`
-/

namespace A078686.P16557722083633133054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A078583 (1 + n)).toNat

end

end A078686.P16557722083633133054

/-! ## A078686.P13984017231861068645

`A008578(A078583(n+1)+1)`
-/

namespace A078686.P13984017231861068645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A078583 (n + 1) + 1).toNat

end

end A078686.P13984017231861068645

/-! ## A078686.P18369908735772362450

`A175787(A078583(n+1)+1)`
-/

namespace A078686.P18369908735772362450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A078583 (n + 1) + 1).toNat

end

end A078686.P18369908735772362450

/-! ## A078686.P1870412720876833343

`A182986(A078583(n+1)+1)`
-/

namespace A078686.P1870412720876833343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A078583 (n + 1) + 1).toNat

end

end A078686.P1870412720876833343

/-! ## A078686.P5668805155712474778

`A045344(A078583(n+1)-1)`
-/

namespace A078686.P5668805155712474778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A078583 (n + 1) - 1).toNat

end

end A078686.P5668805155712474778

/-!
# A078687: Number of x>=0 such that prime(n)-2^x is prime.

The programs for A078687, there is no canonical definition to state claims against.
-/

/-! ## A078687.P6107615650060121710

`A109925(A000040(n+1))`
-/

namespace A078687.P6107615650060121710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A000040 (n + 1)).toNat

end

end A078687.P6107615650060121710

/-! ## A078687.P456530252944011153

`A109925(A006005(1+n))`
-/

namespace A078687.P456530252944011153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A006005 (1 + n)).toNat

end

end A078687.P456530252944011153

/-! ## A078687.P6108001433234085139

`A109925(A008578(n+2))`
-/

namespace A078687.P6108001433234085139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A008578 (n + 2)).toNat

end

end A078687.P6108001433234085139

/-! ## A078687.P12022345130773866569

`A109925(A075643(n+2))`
-/

namespace A078687.P12022345130773866569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A075643 (n + 2)).toNat

end

end A078687.P12022345130773866569

/-! ## A078687.P12824805650182059265

`A109925(A182986(n+2))`
-/

namespace A078687.P12824805650182059265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A182986 (n + 2)).toNat

end

end A078687.P12824805650182059265

/-! ## A078687.P1216451435320944110

`A397307(A116974(n+2))`
-/

namespace A078687.P1216451435320944110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397307 (A116974 (n + 2)).toNat

end

end A078687.P1216451435320944110

/-! ## A078687.P12415729076287848768

`A109925(abs(Δ[A022837(n)]))`
-/

namespace A078687.P12415729076287848768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 |f1 (n + 1) - f1 n|.toNat

end

end A078687.P12415729076287848768

/-! ## A078687.P2692802362987628387

`A109925(abs(Δ[A117128(n)]))`
-/

namespace A078687.P2692802362987628387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 |f1 (n + 1) - f1 n|.toNat

end

end A078687.P2692802362987628387

/-! ## A078687.P17265955360321225749

`A109925(record[A006530(n+2)])`
-/

namespace A078687.P17265955360321225749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078687.P17265955360321225749

/-! ## A078687.P10858042960902639664

`A109925(record[A014963(n+2)])`
-/

namespace A078687.P10858042960902639664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078687.P10858042960902639664

/-! ## A078687.P11500258606323706137

`A109925(record[A020639(n+2)])`
-/

namespace A078687.P11500258606323706137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078687.P11500258606323706137

/-! ## A078687.P13958874706295908607

`A109925(A100484(n+1)/2)`
-/

namespace A078687.P13958874706295908607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A078687.P13958874706295908607

/-! ## A078687.P5784410749868347828

`A109925(eq[n, A000010(n+1)]+1)`
-/

namespace A078687.P5784410749868347828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078687.P5784410749868347828

/-! ## A078687.P11278092772585874699

`A109925(A098962(A099619(n+1)))`
-/

namespace A078687.P11278092772585874699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A098962 (A099619 (n + 1)).toNat).toNat

end

end A078687.P11278092772585874699

/-! ## A078687.P6708710420608534044

`A109925(A084937(A249602(n+1)))`
-/

namespace A078687.P6708710420608534044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A084937 (A249602 (n + 1)).toNat).toNat

end

end A078687.P6708710420608534044

/-! ## A078687.P17319612881123390388

`A109925(A257339(A257457(n+1)))`
-/

namespace A078687.P17319612881123390388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A257339 (A257457 (n + 1)).toNat).toNat

end

end A078687.P17319612881123390388

/-! ## A078687.P3762753555843600036

`A109925(A298865(A298866(n+1)))`
-/

namespace A078687.P3762753555843600036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A298865 (A298866 (n + 1)).toNat).toNat

end

end A078687.P3762753555843600036

/-! ## A078687.P6917179369859197522

`A350959(A102781(n+1))`
-/

namespace A078687.P6917179369859197522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350959 (A102781 (n + 1)).toNat

end

end A078687.P6917179369859197522

/-! ## A078687.P16866545586723263434

`A109925(A006530(A067563(n+1)))`
-/

namespace A078687.P16866545586723263434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A006530 (A067563 (n + 1)).toNat).toNat

end

end A078687.P16866545586723263434

/-!
# A078688: Continued fraction expansion of e^(1/4).

The programs for A078688, the canonical program `A078688.P11722093149302161848` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078688 has offset 0).

The definition of A078688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078688.P11722093149302161848

`ogf((1+2x-2x^2-2x^3+6x^4-6x^5+x^6)/(1-x-2x^3+2x^4+x^6-x^7))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078688

/-- `ogf((1+2x-2x^2-2x^3+6x^4-6x^5+x^6)/(1-x-2x^3+2x^4+x^6-x^7))` -/
def P11722093149302161848.Spec : Prop :=
  ∀ n, P11722093149302161848.a n = A078688 n

theorem P11722093149302161848.correct : P11722093149302161848.Spec := by
  intro n
  simp only [A078688]

end A078688

/-! ## A078688.P15823746183457586532

`∑[dr(3*n)%5]^(∑[n]%3)`
-/

namespace A078688.P15823746183457586532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * n : ℤ) % 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ ((∑ j ∈ Finset.range (n + 1), f2 j) % 3)

end

end A078688.P15823746183457586532

namespace A078688

/-- `∑[dr(3*n)%5]^(∑[n]%3)` -/
def P15823746183457586532.Spec : Prop :=
  ∀ n, (P15823746183457586532.a n : ℤ) = A078688 n

end A078688

/-! ## A078688.P15548368821230696536

`xor(4, a(n-3)+5)-1` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A078688.P15548368821230696536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1] fun n a =>
  Int.xor 4 (a (n - 3) + 5) - 1

end

end A078688.P15548368821230696536

namespace A078688

/-- `xor(4, a(n-3)+5)-1` -/
def P15548368821230696536.Spec : Prop :=
  ∀ n, P15548368821230696536.a n = A078688 n

end A078688

/-! ## A078688.P13851363142962716886

`5-xor(4, 1-a(n-3))` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A078688.P13851363142962716886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1] fun n a =>
  5 - Int.xor 4 (1 - a (n - 3))

end

end A078688.P13851363142962716886

namespace A078688

/-- `5-xor(4, 1-a(n-3))` -/
def P13851363142962716886.Spec : Prop :=
  ∀ n, P13851363142962716886.a n = A078688 n

end A078688

/-! ## A078688.P15635910595298342767

`a(n-3)+8%a(n-3)²` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A078688.P15635910595298342767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1] fun n a =>
  a (n - 3) + 8 % a (n - 3) ^ 2

end

end A078688.P15635910595298342767

namespace A078688

/-- `a(n-3)+8%a(n-3)²` -/
def P15635910595298342767.Spec : Prop :=
  ∀ n, (P15635910595298342767.a n : ℤ) = A078688 n

end A078688

/-! ## A078688.P16385358266798548271

`gcd(ceil(8*n/3), record[lcm(4, n+1)-3])`
-/

namespace A078688.P16385358266798548271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) : ℤ) - 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌈8 * ((n : ℚ) / 3)⌉ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A078688.P16385358266798548271

namespace A078688

/-- `gcd(ceil(8*n/3), record[lcm(4, n+1)-3])` -/
def P16385358266798548271.Spec : Prop :=
  ∀ n, (P16385358266798548271.a n : ℤ) = A078688 n

end A078688

/-! ## A078688.P12212094572336301486

`a(n-3)+4*2%a(n-3)` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A078688.P12212094572336301486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1] fun n a =>
  a (n - 3) + 4 * (2 % a (n - 3))

end

end A078688.P12212094572336301486

namespace A078688

/-- `a(n-3)+4*2%a(n-3)` -/
def P12212094572336301486.Spec : Prop :=
  ∀ n, (P12212094572336301486.a n : ℤ) = A078688 n

end A078688

/-! ## A078688.P11088112863902336868

`a(n-3)+4*and(2, a(n-3))` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A078688.P11088112863902336868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1] fun n a =>
  a (n - 3) + 4 * Nat.land 2 (a (n - 3))

end

end A078688.P11088112863902336868

namespace A078688

/-- `a(n-3)+4*and(2, a(n-3))` -/
def P11088112863902336868.Spec : Prop :=
  ∀ n, (P11088112863902336868.a n : ℤ) = A078688 n

end A078688

/-! ## A078688.P8657283976500207899

`gcd((2*n+1)/gcd(3, 1-n)+2*n, (n+2)%3)`
-/

namespace A078688.P8657283976500207899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) / (Int.gcd 3 (1 - (n : ℤ)) : ℚ) + (2 * n : ℚ))) (((n + 2) % 3 : ℕ) : ℤ)

end

end A078688.P8657283976500207899

namespace A078688

/-- `gcd((2*n+1)/gcd(3, 1-n)+2*n, (n+2)%3)` -/
def P8657283976500207899.Spec : Prop :=
  ∀ n, (P8657283976500207899.a n : ℤ) = A078688 n

end A078688

/-! ## A078688.P1535399355985520122

`gcd((2*n+1)%3, (n*(n+2))%(2*n+1+n))`
-/

namespace A078688.P1535399355985520122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((2 * n + 1) % 3) (n * (n + 2) % (2 * n + 1 + n))

end

end A078688.P1535399355985520122

namespace A078688

/-- `gcd((2*n+1)%3, (n*(n+2))%(2*n+1+n))` -/
def P1535399355985520122.Spec : Prop :=
  ∀ n, (P1535399355985520122.a n : ℤ) = A078688 n

end A078688

/-! ## A078688.P13284198615080464431

`2*comp[A004767(n)]*char[3*n+1]+1`
-/

namespace A078688.P13284198615080464431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n * (if ∃ j, f2 j = n then 1 else 0) + 1

end

end A078688.P13284198615080464431

namespace A078688

/-- `2*comp[A004767(n)]*char[3*n+1]+1` -/
def P13284198615080464431.Spec : Prop :=
  ∀ n, (P13284198615080464431.a n : ℤ) = A078688 n

end A078688

/-! ## A078688.P10695972610417931690

`gcd(A008576(n), A017077(n))`
-/

namespace A078688.P10695972610417931690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008576 n) (A017077 n)

end

end A078688.P10695972610417931690

namespace A078688

/-- `gcd(A008576(n), A017077(n))` -/
def P10695972610417931690.Spec : Prop :=
  ∀ n, (P10695972610417931690.a n : ℤ) = A078688 n

end A078688

/-! ## A078688.P16031164703919133756

`gcd(A017078(n), A301694(n))`
-/

namespace A078688.P16031164703919133756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017078 n) (A301694 n)

end

end A078688.P16031164703919133756

namespace A078688

/-- `gcd(A017078(n), A301694(n))` -/
def P16031164703919133756.Spec : Prop :=
  ∀ n, (P16031164703919133756.a n : ℤ) = A078688 n

end A078688

/-! ## A078688.P3754122771034497320

`2*A078689(n)-A058281(n)`
-/

namespace A078688.P3754122771034497320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078689 n - A058281 n

end

end A078688.P3754122771034497320

namespace A078688

/-- `2*A078689(n)-A058281(n)` -/
def P3754122771034497320.Spec : Prop :=
  ∀ n, P3754122771034497320.a n = A078688 n

end A078688

/-! ## A078688.P15762603146266441438

`(A267318(n)+A078689(n))/2`
-/

namespace A078688.P15762603146266441438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267318 n + A078689 n : ℚ) / 2

end

end A078688.P15762603146266441438

namespace A078688

/-- `(A267318(n)+A078689(n))/2` -/
def P15762603146266441438.Spec : Prop :=
  ∀ n, P15762603146266441438.a n = (A078688 n : ℚ)

end A078688

/-! ## A078688.P16372598486462981532

`gcd(A001533(n), A047529(n+1))`
-/

namespace A078688.P16372598486462981532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001533 n) (A047529 (n + 1))

end

end A078688.P16372598486462981532

namespace A078688

/-- `gcd(A001533(n), A047529(n+1))` -/
def P16372598486462981532.Spec : Prop :=
  ∀ n, (P16372598486462981532.a n : ℤ) = A078688 n

end A078688

/-! ## A078688.P5602235071392115622

`gcd(A017079(n), A047399(n+1))`
-/

namespace A078688.P5602235071392115622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017079 n) (A047399 (n + 1))

end

end A078688.P5602235071392115622

namespace A078688

/-- `gcd(A017079(n), A047399(n+1))` -/
def P5602235071392115622.Spec : Prop :=
  ∀ n, (P5602235071392115622.a n : ℤ) = A078688 n

end A078688

/-! ## A078688.P4909731085428165993

`gcd(A017080(n), A047400(n+1))`
-/

namespace A078688.P4909731085428165993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017080 n) (A047400 (n + 1))

end

end A078688.P4909731085428165993

namespace A078688

/-- `gcd(A017080(n), A047400(n+1))` -/
def P4909731085428165993.Spec : Prop :=
  ∀ n, (P4909731085428165993.a n : ℤ) = A078688 n

end A078688

/-! ## A078688.P5841631153311520951

`gcd(A017081(n), A047528(n+1))`
-/

namespace A078688.P5841631153311520951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017081 n) (A047528 (n + 1))

end

end A078688.P5841631153311520951

namespace A078688

/-- `gcd(A017081(n), A047528(n+1))` -/
def P5841631153311520951.Spec : Prop :=
  ∀ n, (P5841631153311520951.a n : ℤ) = A078688 n

end A078688

/-!
# A078689: Continued fraction expansion of e^(1/3).

The programs for A078689, the canonical program `A078689.P16500912651533532884` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078689 has offset 0).

The definition of A078689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078689.P16500912651533532884

`ogf((1+2x+x^2-x^3+4x^4-x^5)/(1-2x^3+x^6))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078689

/-- `ogf((1+2x+x^2-x^3+4x^4-x^5)/(1-2x^3+x^6))` -/
def P16500912651533532884.Spec : Prop :=
  ∀ n, P16500912651533532884.a n = A078689 n

theorem P16500912651533532884.correct : P16500912651533532884.Spec := by
  intro n
  simp only [A078689]

end A078689

/-! ## A078689.P2587054505479601422

`(2*n)^(∑[n]%3)`
-/

namespace A078689.P2587054505479601422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % 3)

end

end A078689.P2587054505479601422

namespace A078689

/-- `(2*n)^(∑[n]%3)` -/
def P2587054505479601422.Spec : Prop :=
  ∀ n, (P2587054505479601422.a n : ℤ) = A078689 n

end A078689

/-! ## A078689.P3873330202221479349

`gcd(1-n%3, 2*n)`
-/

namespace A078689.P3873330202221479349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - ((n % 3 : ℕ) : ℤ)) (2 * n : ℤ)

end

end A078689.P3873330202221479349

namespace A078689

/-- `gcd(1-n%3, 2*n)` -/
def P3873330202221479349.Spec : Prop :=
  ∀ n, (P3873330202221479349.a n : ℤ) = A078689 n

end A078689

/-! ## A078689.P9582146555797894428

`(2*n)^Δ[round(n/3)]`
-/

namespace A078689.P9582146555797894428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A078689.P9582146555797894428

namespace A078689

/-- `(2*n)^Δ[round(n/3)]` -/
def P9582146555797894428.Spec : Prop :=
  ∀ n, P9582146555797894428.a n = (A078689 n : ℚ)

end A078689

/-! ## A078689.P14358988096857096110

`C(2*n, ∑[n]²%3)`
-/

namespace A078689.P14358988096857096110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 % 3)

end

end A078689.P14358988096857096110

namespace A078689

/-- `C(2*n, ∑[n]²%3)` -/
def P14358988096857096110.Spec : Prop :=
  ∀ n, (P14358988096857096110.a n : ℤ) = A078689 n

end A078689

/-! ## A078689.P2431865647148874574

`C(2*n, C((n+1)%3, 2))`
-/

namespace A078689.P2431865647148874574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (Nat.choose ((n + 1) % 3) 2)

end

end A078689.P2431865647148874574

namespace A078689

/-- `C(2*n, C((n+1)%3, 2))` -/
def P2431865647148874574.Spec : Prop :=
  ∀ n, (P2431865647148874574.a n : ℤ) = A078689 n

end A078689

/-! ## A078689.P5381104335519046956

`∏{p}[n+2, (2*n)^val(#, 3)]`
-/

namespace A078689.P5381104335519046956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 * n) ^ SequenceMachineLib.valuation p 3

end

end A078689.P5381104335519046956

namespace A078689

/-- `∏{p}[n+2, (2*n)^val(#, 3)]` -/
def P5381104335519046956.Spec : Prop :=
  ∀ n, (P5381104335519046956.a n : ℤ) = A078689 n

end A078689

/-! ## A078689.P3787266923062982685

`sqrt((2*n)^(gcd(3, 1-n)-1))`
-/

namespace A078689.P3787266923062982685
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((2 * n : ℚ) ^ ((Int.gcd 3 (1 - (n : ℤ)) : ℤ) - 1 : ℤ) : ℝ)

end

end A078689.P3787266923062982685

namespace A078689

/-- `sqrt((2*n)^(gcd(3, 1-n)-1))` -/
def P3787266923062982685.Spec : Prop :=
  ∀ n, P3787266923062982685.a n = (A078689 n : ℝ)

end A078689

/-! ## A078689.P13507665267792935711

`C(2*n, val((1-n)²+3, 3))`
-/

namespace A078689.P13507665267792935711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (SequenceMachineLib.valuation ((1 - (n : ℤ)) ^ 2 + 3).toNat 3)

end

end A078689.P13507665267792935711

namespace A078689

/-- `C(2*n, val((1-n)²+3, 3))` -/
def P13507665267792935711.Spec : Prop :=
  ∀ n, (P13507665267792935711.a n : ℤ) = A078689 n

end A078689

/-! ## A078689.P12861007648166135833

`∏{p}[2*n+1, (2*n)^C(3, #)]`
-/

namespace A078689.P12861007648166135833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 * n) ^ Nat.choose 3 p

end

end A078689.P12861007648166135833

namespace A078689

/-- `∏{p}[2*n+1, (2*n)^C(3, #)]` -/
def P12861007648166135833.Spec : Prop :=
  ∀ n, (P12861007648166135833.a n : ℤ) = A078689 n

end A078689

/-! ## A078689.P2972297495299084541

`C(2*n, Δ[a(n-3)+1])` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A078689.P2972297495299084541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078689.P2972297495299084541

namespace A078689

/-- `C(2*n, Δ[a(n-3)+1])` -/
def P2972297495299084541.Spec : Prop :=
  ∀ n, (P2972297495299084541.a n : ℤ) = A078689 n

end A078689

/-! ## A078689.P14297044207719762644

`∏{p}[2*n+1, (2*n)^floor(3/#)]`
-/

namespace A078689.P14297044207719762644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 * n : ℚ) ^ (⌊3 / (p : ℚ)⌋ : ℤ)

end

end A078689.P14297044207719762644

namespace A078689

/-- `∏{p}[2*n+1, (2*n)^floor(3/#)]` -/
def P14297044207719762644.Spec : Prop :=
  ∀ n, P14297044207719762644.a n = (A078689 n : ℚ)

end A078689

/-! ## A078689.P13059928121715251784

`∏{e}[gcd(2*n+1, n-1)², n*#]`
-/

namespace A078689.P13059928121715251784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) ((n : ℤ) - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), n * Nat.factorization (f1 n) p

end

end A078689.P13059928121715251784

namespace A078689

/-- `∏{e}[gcd(2*n+1, n-1)², n*#]` -/
def P13059928121715251784.Spec : Prop :=
  ∀ n, (P13059928121715251784.a n : ℤ) = A078689 n

end A078689

/-! ## A078689.P16071060690387706599

`xor(2*n, (2*n+1)%lcm(3, 2*n+1))`
-/

namespace A078689.P16071060690387706599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) ((2 * n + 1) % Nat.lcm 3 (2 * n + 1))

end

end A078689.P16071060690387706599

namespace A078689

/-- `xor(2*n, (2*n+1)%lcm(3, 2*n+1))` -/
def P16071060690387706599.Spec : Prop :=
  ∀ n, (P16071060690387706599.a n : ℤ) = A078689 n

end A078689

/-! ## A078689.P8876575535143583530

`gcd(2*n, A057078(n))`
-/

namespace A078689.P8876575535143583530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A057078 n)

end

end A078689.P8876575535143583530

namespace A078689

/-- `gcd(2*n, A057078(n))` -/
def P8876575535143583530.Spec : Prop :=
  ∀ n, (P8876575535143583530.a n : ℤ) = A078689 n

end A078689

/-! ## A078689.P1267018314423065289

`C(2*n, ∑[A102283(n)])`
-/

namespace A078689.P1267018314423065289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A078689.P1267018314423065289

namespace A078689

/-- `C(2*n, ∑[A102283(n)])` -/
def P1267018314423065289.Spec : Prop :=
  ∀ n, (P1267018314423065289.a n : ℤ) = A078689 n

end A078689

/-! ## A078689.P12191624244794334828

`C(2*n, A047234(n+1))`
-/

namespace A078689.P12191624244794334828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (A047234 (n + 1)).toNat

end

end A078689.P12191624244794334828

namespace A078689

/-- `C(2*n, A047234(n+1))` -/
def P12191624244794334828.Spec : Prop :=
  ∀ n, (P12191624244794334828.a n : ℤ) = A078689 n

end A078689

/-! ## A078689.P7867180202261742916

`and(2*n+1, A131713(n))`
-/

namespace A078689.P7867180202261742916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (A131713 n)

end

end A078689.P7867180202261742916

namespace A078689

/-- `and(2*n+1, A131713(n))` -/
def P7867180202261742916.Spec : Prop :=
  ∀ n, P7867180202261742916.a n = A078689 n

end A078689

/-! ## A078689.P12450616394851044851

`gcd((2*n)², A047245(n+1))`
-/

namespace A078689.P12450616394851044851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n) ^ 2 : ℤ) (A047245 (n + 1))

end

end A078689.P12450616394851044851

namespace A078689

/-- `gcd((2*n)², A047245(n+1))` -/
def P12450616394851044851.Spec : Prop :=
  ∀ n, (P12450616394851044851.a n : ℤ) = A078689 n

end A078689

/-!
# A078690: Continued fraction expansion of e^(2/5).

The programs for A078690, the canonical program `A078690.P5186026872069477651` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078690 has offset 0).

The definition of A078690 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078690.P5186026872069477651

`ogf((1+2x+30x^2+12x^3+x^4-x^5+13x^6+30x^7+3x^8-x^9)/(1-2x^5+x^10))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078690

/-- `ogf((1+2x+30x^2+12x^3+x^4-x^5+13x^6+30x^7+3x^8-x^9)/(1-2x^5+x^10))` -/
def P5186026872069477651.Spec : Prop :=
  ∀ n, P5186026872069477651.a n = A078690 n

theorem P5186026872069477651.correct : P5186026872069477651.Spec := by
  intro n
  simp only [A078690]

end A078690

/-!
# A078691: Numbers k such that the k-th difference between 2 successive primes equals the squarefree part of k.

The programs for A078691, there is no canonical definition to state claims against.
-/

/-! ## A078691.P11693828518728206291

`eq[A001223(n+1), A007913(n+1)]+1`
-/

namespace A078691.P11693828518728206291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078691.P11693828518728206291

/-! ## A078691.P14925429337012486048

`eq[A001223(n+1)², A055491(n+1)]+1`
-/

namespace A078691.P14925429337012486048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078691.P14925429337012486048

/-! ## A078691.P1690056583116455870

`eq[A007913(A008574(n)), A054541(n+1)]`
-/

namespace A078691.P1690056583116455870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078691.P1690056583116455870

/-! ## A078691.P13301106016281118492

`eq[A007913(A028310(n)), A054541(n+1)]`
-/

namespace A078691.P13301106016281118492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078691.P13301106016281118492

/-! ## A078691.P5745501749522561710

`eq[(n+1)/A000188(n+1)², A000720(A082910(n+1))]+1`
-/

namespace A078691.P5745501749522561710
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000188 (n + 1) ^ 2 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A082910 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A078691.P5745501749522561710

/-!
# A078694: Numbers n such that floor(2*Pi*n) is prime.

The programs for A078694, there is no canonical definition to state claims against.
-/

/-! ## A078694.P10043078491486802566

`record[A273943(A062408(n+1)-2)]+1`
-/

namespace A078694.P10043078491486802566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A062408 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A078694.P10043078491486802566

/-! ## A078694.P431551556783506507

`record[A078898(A062408(n+1))]`
-/

namespace A078694.P431551556783506507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A062408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078694.P431551556783506507

/-! ## A078694.P17767030079072010019

`eq[1, A054024(A022844(abs(1-2*n)+1))]`
-/

namespace A078694.P17767030079072010019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A022844 (|1 - (2 * n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078694.P17767030079072010019

/-! ## A078694.P10632806372146914893

`A000720(p?[A073846(A062408(n))])`
-/

namespace A078694.P10632806372146914893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A062408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A078694.P10632806372146914893

/-! ## A078694.P6269045323365112899

`record[A142150(A142150(2*n+1)+A062408(n+1))]`
-/

namespace A078694.P6269045323365112899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A142150 (2 * n + 1) + A062408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078694.P6269045323365112899

/-! ## A078694.P3645610875867178495

`eq[0, A295520(floor(2*π*n))]`
-/

namespace A078694.P3645610875867178495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295520 ⌊2 * (Real.pi * (n : ℝ))⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078694.P3645610875867178495

/-! ## A078694.P13090455956689072580

`eq[1, A003415(A038130(n))]`
-/

namespace A078694.P13090455956689072580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A038130 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078694.P13090455956689072580

/-! ## A078694.P9370393101385163303

`eq[1, A053989(A004082(n+1))]`
-/

namespace A078694.P9370393101385163303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A004082 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078694.P9370393101385163303

/-!
# A078695: a(n+1) = a(n)+greatest prime divisor of a(n-1).

The programs for A078695, there is no canonical definition to state claims against.
-/

/-! ## A078695.P10693049325548348728

`a(n-1)+A006530(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A078695.P10693049325548348728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + A006530 (a (n - 2)).toNat

end

end A078695.P10693049325548348728

/-! ## A078695.P16617260934650663653

`A014963(A345941(a(n-2)))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A078695.P16617260934650663653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A014963 (A345941 (a (n - 2)).toNat).toNat + a (n - 1)

end

end A078695.P16617260934650663653

/-! ## A078695.P2441330943588689542

`A085392(2*a(n-2))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A078695.P2441330943588689542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A085392 (2 * a (n - 2)).toNat + a (n - 1)

end

end A078695.P2441330943588689542

/-! ## A078695.P12084092232365882891

`A102095(a(n-2))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A078695.P12084092232365882891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A102095 (a (n - 2)).toNat + a (n - 1)

end

end A078695.P12084092232365882891

/-! ## A078695.P4387581378924095118

`A327076(a(n-2))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A078695.P4387581378924095118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A327076 (a (n - 2)).toNat + a (n - 1)

end

end A078695.P4387581378924095118

/-!
# A078696: a(n+1)=a(n)+a(n-1) if a(n-1) odd, a(n+1)=a(n)+a(n-1)/2 if a(n-1) even.

The programs for A078696, the canonical program `A078696.P13796916932796652820` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078696 has offset 1).

The definition of A078696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 547 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078696.P13796916932796652820

`a(n-1)+lcm(2, a(n-2))/2` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078696

/-- `a(n-1)+lcm(2, a(n-2))/2` -/
def P13796916932796652820.Spec : Prop :=
  ∀ n, P13796916932796652820.a n = (A078696 (n + 1) : ℚ)

end A078696

/-! ## A078696.P16564404323378448623

`a(n-1)+a(n-2)/gcd(2, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A078696.P16564404323378448623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) / (Int.gcd 2 (SequenceMachineLib.roundAway (a (n - 2))) : ℚ)

end

end A078696.P16564404323378448623

namespace A078696

/-- `a(n-1)+a(n-2)/gcd(2, a(n-2))` -/
def P16564404323378448623.Spec : Prop :=
  ∀ n, P16564404323378448623.a n = (A078696 (n + 1) : ℚ)

end A078696

/-! ## A078696.P10107560370832679971

`a(n-1)+a(n-2)/(2-a(n-2)%2)` with `a(0)=1, a(1)=1`
-/

namespace A078696.P10107560370832679971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) / (2 - Int.tmod (SequenceMachineLib.roundAway (a (n - 2))) 2 : ℚ)

end

end A078696.P10107560370832679971

namespace A078696

/-- `a(n-1)+a(n-2)/(2-a(n-2)%2)` -/
def P10107560370832679971.Spec : Prop :=
  ∀ n, P10107560370832679971.a n = (A078696 (n + 1) : ℚ)

end A078696

/-! ## A078696.P16629569148340661820

`a(n-1)+a(n-2)/(2-and(1, a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A078696.P16629569148340661820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) / (2 - Int.land 1 (SequenceMachineLib.roundAway (a (n - 2))) : ℚ)

end

end A078696.P16629569148340661820

namespace A078696

/-- `a(n-1)+a(n-2)/(2-and(1, a(n-2)))` -/
def P16629569148340661820.Spec : Prop :=
  ∀ n, P16629569148340661820.a n = (A078696 (n + 1) : ℚ)

end A078696

/-! ## A078696.P9255740736798355040

`a(n-1)-a(n-2)/(and(1, a(n-2))-2)` with `a(0)=1, a(1)=1`
-/

namespace A078696.P9255740736798355040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - a (n - 2) / (Int.land 1 (SequenceMachineLib.roundAway (a (n - 2))) - 2 : ℚ)

end

end A078696.P9255740736798355040

namespace A078696

/-- `a(n-1)-a(n-2)/(and(1, a(n-2))-2)` -/
def P9255740736798355040.Spec : Prop :=
  ∀ n, P9255740736798355040.a n = (A078696 (n + 1) : ℚ)

end A078696

/-!
# A078698: Number of ways to lace a shoe that has n pairs of eyelets such that each eyelet has at least one direct connection to the opposite side.

The programs for A078698, there is no canonical definition to state claims against.
-/

/-! ## A078698.P7099800443137570450

`n!²*A051286(n+1)`
-/

namespace A078698.P7099800443137570450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℤ) * A051286 (n + 1)

end

end A078698.P7099800443137570450

/-! ## A078698.P2072952866528884594

`Δ[A110198(n)]*A001044(n)`
-/

namespace A078698.P2072952866528884594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001044 n

end

end A078698.P2072952866528884594

/-! ## A078698.P9160190896442631183

`A001044(n)*A051286(n+1)`
-/

namespace A078698.P9160190896442631183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001044 n * A051286 (n + 1)

end

end A078698.P9160190896442631183

/-! ## A078698.P15181301560595809603

`A000142(n)²*A051286(n+1)`
-/

namespace A078698.P15181301560595809603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n ^ 2 * A051286 (n + 1)

end

end A078698.P15181301560595809603

/-! ## A078698.P2680633807815046909

`A051286(n+1)*A110947(2*n+1)`
-/

namespace A078698.P2680633807815046909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 (n + 1) * A110947 (2 * n + 1)

end

end A078698.P2680633807815046909

/-!
# A078699: Primes p such that p^2-1 is a triangular number.

The programs for A078699, there is no canonical definition to state claims against.
-/

/-! ## A078699.P14393853272028862329

`ceil(sqrt(A227480(n+1)))`
-/

namespace A078699.P14393853272028862329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A227480 (n + 1) : ℝ)⌉

end

end A078699.P14393853272028862329

/-! ## A078699.P8159366886241191552

`sqrt(A227480(n+1)+A016168(n))`
-/

namespace A078699.P8159366886241191552
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A227480 (n + 1) + A016168 n : ℝ)

end

end A078699.P8159366886241191552

/-! ## A078699.P2956613626493728067

`sqrt(A227480(n+1)+A124778(n))`
-/

namespace A078699.P2956613626493728067
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A227480 (n + 1) + A124778 n : ℝ)

end

end A078699.P2956613626493728067

/-! ## A078699.P5464336853886964655

`sqrt(A229243(n)+A227480(n+1))`
-/

namespace A078699.P5464336853886964655
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A229243 n + A227480 (n + 1) : ℝ)

end

end A078699.P5464336853886964655

