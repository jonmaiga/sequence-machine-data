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
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A339901: a(n) = A339971(n) / gcd(A339809(2*n), A339971(n)).

The programs for A339901, there is no canonical definition to state claims against.
-/

/-! ## A339901.P5055353482328768807

`A339971(n)/A339899(n)`
-/

namespace A339901.P5055353482328768807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339971 n : ℚ) / (A339899 n : ℚ)

end

end A339901.P5055353482328768807

/-! ## A339901.P1634301781177651861

`A339971(n)/gcd(A339809(2*n), A339971(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A339901.P1634301781177651861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339971 n : ℚ) / (Int.gcd (A339809 (2 * n)) (A339971 n) : ℚ)

end

end A339901.P1634301781177651861

/-! ## A339901.P8463026978815531565

`A000265(A160595(A019565(2*n)))`
-/

namespace A339901.P8463026978815531565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A160595 (A019565 (2 * n)).toNat).toNat

end

end A339901.P8463026978815531565

/-! ## A339901.P8490207971753560230

`A340075(A019565(n))`
-/

namespace A339901.P8490207971753560230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340075 (A019565 n).toNat

end

end A339901.P8490207971753560230

/-! ## A339901.P14423731446010169085

`A340085(A019565(2*n))`
-/

namespace A339901.P14423731446010169085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340085 (A019565 (2 * n)).toNat

end

end A339901.P14423731446010169085

/-! ## A339901.P2094695814731675643

`A339972(floor(n/4))/A339899(n)`
-/

namespace A339901.P2094695814731675643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339972 ⌊(n : ℚ) / 4⌋.toNat : ℚ) / (A339899 n : ℚ)

end

end A339901.P2094695814731675643

/-! ## A339901.P295277415984272952

`or(1, A339972(A002265(n)))/A339899(n)`
-/

namespace A339901.P295277415984272952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (A339972 (A002265 n).toNat) : ℚ) / (A339899 n : ℚ)

end

end A339901.P295277415984272952

/-! ## A339901.P12266990231001454521

`A339971(n)/gcd(A339898(n), A339971(n))`
-/

namespace A339901.P12266990231001454521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339971 n : ℚ) / (Int.gcd (A339898 n) (A339971 n) : ℚ)

end

end A339901.P12266990231001454521

/-! ## A339901.P11625653445359506200

`∏{p}[A019565(n), A339903(#)]/A339899(n)`
-/

namespace A339901.P11625653445359506200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A339903 p : ℤ) : ℚ) / (A339899 n : ℚ)

end

end A339901.P11625653445359506200

/-! ## A339901.P18150387792738861062

`∏{p}[A019565(n), A339904(#)]/A339899(n)`
-/

namespace A339901.P18150387792738861062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A339904 p : ℤ) : ℚ) / (A339899 n : ℚ)

end

end A339901.P18150387792738861062

/-! ## A339901.P9562716894442719094

`∏{p}[A019565(n), A340074(#)]/A339899(n)`
-/

namespace A339901.P9562716894442719094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A340074 p : ℤ) : ℚ) / (A339899 n : ℚ)

end

end A339901.P9562716894442719094

/-!
# A339902: Number of prime divisors of A339821(n), counted with multiplicity.

The programs for A339902, the canonical program `A339902.P10845326846020407518` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339902 has offset 0).

The definition of A339902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339902.P16173085958420430538

`A001222(A339821(n))`
-/

namespace A339902.P16173085958420430538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A339821 n).toNat

end

end A339902.P16173085958420430538

namespace A339902

/-- `A001222(A339821(n))` -/
def P16173085958420430538.Spec : Prop :=
  ∀ n, P16173085958420430538.a n = A339902 n

end A339902

/-! ## A339902.P5913981543535271987

`A001222(A003972(A019565(n)))`
-/

namespace A339902.P5913981543535271987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003972 (A019565 n).toNat).toNat

end

end A339902.P5913981543535271987

namespace A339902

/-- `A001222(A003972(A019565(n)))` -/
def P5913981543535271987.Spec : Prop :=
  ∀ n, P5913981543535271987.a n = A339902 n

end A339902

/-! ## A339902.P11381271418787656829

`A001222(A000010(A019565(2*n)))`
-/

namespace A339902.P11381271418787656829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (A019565 (2 * n)).toNat).toNat

end

end A339902.P11381271418787656829

namespace A339902

/-- `A001222(A000010(A019565(2*n)))` -/
def P11381271418787656829.Spec : Prop :=
  ∀ n, P11381271418787656829.a n = A339902 n

end A339902

/-! ## A339902.P2259450236972195792

`∑{e}[A003959(A052330(n)), #]`
-/

namespace A339902.P2259450236972195792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A052330 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A339902.P2259450236972195792

namespace A339902

/-- `∑{e}[A003959(A052330(n)), #]` -/
def P2259450236972195792.Spec : Prop :=
  ∀ n, (P2259450236972195792.a n : ℤ) = A339902 n

end A339902

/-! ## A339902.P11606247797320288703

`∑{e}[A339821(n), #]`
-/

namespace A339902.P11606247797320288703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339821 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A339902.P11606247797320288703

namespace A339902

/-- `∑{e}[A339821(n), #]` -/
def P11606247797320288703.Spec : Prop :=
  ∀ n, (P11606247797320288703.a n : ℤ) = A339902 n

end A339902

/-! ## A339902.P284498023171885460

`∑{e}[A339820(2*n), #]`
-/

namespace A339902.P284498023171885460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339820 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A339902.P284498023171885460

namespace A339902

/-- `∑{e}[A339820(2*n), #]` -/
def P284498023171885460.Spec : Prop :=
  ∀ n, (P284498023171885460.a n : ℤ) = A339902 n

end A339902

/-! ## A339902.P10845326846020407518

`∑{e}[A290077(A124108(n)), #]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A339902

/-- `∑{e}[A290077(A124108(n)), #]` -/
def P10845326846020407518.Spec : Prop :=
  ∀ n, (P10845326846020407518.a n : ℤ) = A339902 n

theorem P10845326846020407518.correct : P10845326846020407518.Spec := by
  intro n
  simp only [A339902]

end A339902

/-! ## A339902.P18163949346426908919

`A347102(2*A121663(n))-1`
-/

namespace A339902.P18163949346426908919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347102 (2 * A121663 n).toNat - 1

end

end A339902.P18163949346426908919

namespace A339902

/-- `A347102(2*A121663(n))-1` -/
def P18163949346426908919.Spec : Prop :=
  ∀ n, P18163949346426908919.a n = A339902 n

end A339902

/-! ## A339902.P12703038322902578500

`∑{e}[A290077(A048678(2*n)), #]`
-/

namespace A339902.P12703038322902578500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290077 (A048678 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A339902.P12703038322902578500

namespace A339902

/-- `∑{e}[A290077(A048678(2*n)), #]` -/
def P12703038322902578500.Spec : Prop :=
  ∀ n, (P12703038322902578500.a n : ℤ) = A339902 n

end A339902

/-! ## A339902.P13012984825122742443

`A080773(A052330(n))`
-/

namespace A339902.P13012984825122742443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080773 (A052330 n).toNat

end

end A339902.P13012984825122742443

namespace A339902

/-- `A080773(A052330(n))` -/
def P13012984825122742443.Spec : Prop :=
  ∀ n, P13012984825122742443.a n = A339902 n

end A339902

/-! ## A339902.P3996577946282862305

`A001222(∑{d}[A052330(n), A003968(#)])`
-/

namespace A339902.P3996577946282862305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f1 n).natAbs, A003968 d).toNat

end

end A339902.P3996577946282862305

namespace A339902

/-- `A001222(∑{d}[A052330(n), A003968(#)])` -/
def P3996577946282862305.Spec : Prop :=
  ∀ n, P3996577946282862305.a n = A339902 n

end A339902

/-!
# A339903: Fully multiplicative with a(p) = A000265(q-1), where q = A151800(p), the next prime > p.

The programs for A339903, the canonical program `A339903.P3797102702327657861` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339903 has offset 1).

The definition of A339903 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A336466, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339903.P3797102702327657861

`A336466(A003961(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A339903

/-- `A336466(A003961(n+1))` -/
def P3797102702327657861.Spec : Prop :=
  ∀ n, P3797102702327657861.a n = A339903 (n + 1)

theorem P3797102702327657861.correct : P3797102702327657861.Spec := by
  intro n
  simp only [A339903, Nat.add_sub_cancel]

end A339903

/-! ## A339903.P5747593619058977713

`A000265(A339905(1+n))`
-/

namespace A339903.P5747593619058977713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A339905 (1 + n)).toNat

end

end A339903.P5747593619058977713

namespace A339903

/-- `A000265(A339905(1+n))` -/
def P5747593619058977713.Spec : Prop :=
  ∀ n, P5747593619058977713.a n = A339903 (n + 1)

end A339903

/-! ## A339903.P12161494794120378960

`A000265(A353793(n+1)/(n+1))`
-/

namespace A339903.P12161494794120378960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A353793 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A339903.P12161494794120378960

namespace A339903

/-- `A000265(A353793(n+1)/(n+1))` -/
def P12161494794120378960.Spec : Prop :=
  ∀ n, P12161494794120378960.a n = A339903 (n + 1)

end A339903

/-! ## A339903.P17933677922787075388

`A000265(A351456(n+1)-A351457(n+1))`
-/

namespace A339903.P17933677922787075388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A351456 (n + 1) - A351457 (n + 1)).toNat

end

end A339903.P17933677922787075388

namespace A339903

/-- `A000265(A351456(n+1)-A351457(n+1))` -/
def P17933677922787075388.Spec : Prop :=
  ∀ n, P17933677922787075388.a n = A339903 (n + 1)

theorem P17933677922787075388.correct : P17933677922787075388.Spec := by
  intro n
  simp only [A339903, Nat.add_sub_cancel, A339903.P17933677922787075388.a, A339903.P3797102702327657861.a, A000265, A000265.P16482698636471710744.a, A003961, A003961.P5996473960037614004.a, A336466, A336466.P16200719452775638290.a, A351456, A351456.P7640681049922300523.a, A351457, A351457.P4852068756587702856.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003958, A003958.P196685604458257440.a, A253885, A253885.P16715555451856890624.a, A339905, A339905.P13500807193007316440.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A243501, A243501.P10707292738867961998.a, A048673, A048673.P3613002930333742504.a, A120007, A120007.P17212889191585270917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A339903

/-! ## A339903.P17464961913287845296

`A000265(A003958(A003961(A000265(n+1))))`
-/

namespace A339903.P17464961913287845296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003958 (A003961 (A000265 (n + 1)).toNat).toNat).toNat

end

end A339903.P17464961913287845296

namespace A339903

/-- `A000265(A003958(A003961(A000265(n+1))))` -/
def P17464961913287845296.Spec : Prop :=
  ∀ n, P17464961913287845296.a n = A339903 (n + 1)

end A339903

/-! ## A339903.P2686449400649201495

`A003961(A064989(A353793(n+1)/(n+1)))`
-/

namespace A339903.P2686449400649201495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A064989 (SequenceMachineLib.roundAway ((A353793 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A339903.P2686449400649201495

namespace A339903

/-- `A003961(A064989(A353793(n+1)/(n+1)))` -/
def P2686449400649201495.Spec : Prop :=
  ∀ n, P2686449400649201495.a n = A339903 (n + 1)

end A339903

/-! ## A339903.P8031458101265998619

`A028234(2*A339905(n+1))`
-/

namespace A339903.P8031458101265998619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A339905 (n + 1)).toNat

end

end A339903.P8031458101265998619

namespace A339903

/-- `A028234(2*A339905(n+1))` -/
def P8031458101265998619.Spec : Prop :=
  ∀ n, P8031458101265998619.a n = A339903 (n + 1)

end A339903

/-! ## A339903.P14486898975071635456

`A336466(A045965(n+1))`
-/

namespace A339903.P14486898975071635456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A045965 (n + 1)).toNat

end

end A339903.P14486898975071635456

namespace A339903

/-- `A336466(A045965(n+1))` -/
def P14486898975071635456.Spec : Prop :=
  ∀ n, P14486898975071635456.a n = A339903 (n + 1)

end A339903

/-! ## A339903.P8484708627899521378

`A336466(A243501(n+1)-1)`
-/

namespace A339903.P8484708627899521378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A243501 (n + 1) - 1).toNat

end

end A339903.P8484708627899521378

namespace A339903

/-- `A336466(A243501(n+1)-1)` -/
def P8484708627899521378.Spec : Prop :=
  ∀ n, P8484708627899521378.a n = A339903 (n + 1)

theorem P8484708627899521378.correct : P8484708627899521378.Spec := by
  intro n
  simp only [A339903, Nat.add_sub_cancel, A339903.P8484708627899521378.a, A339903.P3797102702327657861.a, A003961, A003961.P5996473960037614004.a, A243501, A243501.P10707292738867961998.a, A336466, A336466.P16200719452775638290.a, A000265, A000265.P16482698636471710744.a, A003958, A003958.P196685604458257440.a, A048673, A048673.P3613002930333742504.a, A253885, A253885.P16715555451856890624.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A249745, A249745.P11390172490975782238.a, A249824, A249824.P7083060918856720053.a, A007310, A007310.P9946423629536973135.a, A064989, A064989.P13349672914146769936.a, A120007, A120007.P17212889191585270917.a, A243071, A243071.P12484383641158862297.a, A275716, A275716.P7951773903952206727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A339903

/-! ## A339903.P15645847762380594393

`A000265(A353791(A003961(n+1))/(n+1))`
-/

namespace A339903.P15645847762380594393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A353791 (A003961 (n + 1)).toNat : ℚ) / (n + 1 : ℚ))).toNat

end

end A339903.P15645847762380594393

namespace A339903

/-- `A000265(A353791(A003961(n+1))/(n+1))` -/
def P15645847762380594393.Spec : Prop :=
  ∀ n, P15645847762380594393.a n = A339903 (n + 1)

end A339903

/-! ## A339903.P4000222858028151578

`A336466(A249734(n+1))`
-/

namespace A339903.P4000222858028151578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A249734 (n + 1)).toNat

end

end A339903.P4000222858028151578

namespace A339903

/-- `A336466(A249734(n+1))` -/
def P4000222858028151578.Spec : Prop :=
  ∀ n, P4000222858028151578.a n = A339903 (n + 1)

end A339903

/-! ## A339903.P15797880190923042747

`gcd(A217858(n+1), A339905(n+1))`
-/

namespace A339903.P15797880190923042747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A217858 (n + 1)) (A339905 (n + 1))

end

end A339903.P15797880190923042747

namespace A339903

/-- `gcd(A217858(n+1), A339905(n+1))` -/
def P15797880190923042747.Spec : Prop :=
  ∀ n, (P15797880190923042747.a n : ℤ) = A339903 (n + 1)

end A339903

/-! ## A339903.P179629537822161749

`gcd(A053624(2*n+1), A339905(2*(n+1)))`
-/

namespace A339903.P179629537822161749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053624 (2 * n + 1)) (A339905 (2 * (n + 1)))

end

end A339903.P179629537822161749

namespace A339903

/-- `gcd(A053624(2*n+1), A339905(2*(n+1)))` -/
def P179629537822161749.Spec : Prop :=
  ∀ n, (P179629537822161749.a n : ℤ) = A339903 (n + 1)

end A339903

/-! ## A339903.P6319776705990613704

`gcd(A133221(n), A339905(n+1))`
-/

namespace A339903.P6319776705990613704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133221 n) (A339905 (n + 1))

end

end A339903.P6319776705990613704

namespace A339903

/-- `gcd(A133221(n), A339905(n+1))` -/
def P6319776705990613704.Spec : Prop :=
  ∀ n, (P6319776705990613704.a n : ℤ) = A339903 (n + 1)

end A339903

/-! ## A339903.P342093748263489753

`gcd(A055634(n), A339905(n+1))`
-/

namespace A339903.P342093748263489753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055634 n) (A339905 (n + 1))

end

end A339903.P342093748263489753

namespace A339903

/-- `gcd(A055634(n), A339905(n+1))` -/
def P342093748263489753.Spec : Prop :=
  ∀ n, (P342093748263489753.a n : ℤ) = A339903 (n + 1)

end A339903

/-!
# A339904: The odd part of {Euler totient function phi applied to the prime shifted n}: a(n) = A000265(A000010(A003961(n))).

The programs for A339904, the canonical program `A339904.P5171680979052193897` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339904 has offset 1).

The definition of A339904 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339904.P16052436414333235693

`A000265(A003972(n+1))`
-/

namespace A339904.P16052436414333235693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003972 (n + 1)).toNat

end

end A339904.P16052436414333235693

namespace A339904

/-- `A000265(A003972(n+1))` -/
def P16052436414333235693.Spec : Prop :=
  ∀ n, P16052436414333235693.a n = A339904 (n + 1)

end A339904

/-! ## A339904.P5171680979052193897

`A000265(A000010(A003961(n+1)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A339904

/-- `A000265(A000010(A003961(n+1)))` -/
def P5171680979052193897.Spec : Prop :=
  ∀ n, P5171680979052193897.a n = A339904 (n + 1)

theorem P5171680979052193897.correct : P5171680979052193897.Spec := by
  intro n
  simp only [A339904, Nat.add_sub_cancel]

end A339904

/-! ## A339904.P16321618991744100296

`A053575(A003961(n+1))`
-/

namespace A339904.P16321618991744100296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053575 (A003961 (n + 1)).toNat

end

end A339904.P16321618991744100296

namespace A339904

/-- `A053575(A003961(n+1))` -/
def P16321618991744100296.Spec : Prop :=
  ∀ n, P16321618991744100296.a n = A339904 (n + 1)

end A339904

/-! ## A339904.P16389433855145653961

`A340074(n+1)*A340075(n+1)`
-/

namespace A339904.P16389433855145653961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340074 (n + 1) * A340075 (n + 1)

end

end A339904.P16389433855145653961

namespace A339904

/-- `A340074(n+1)*A340075(n+1)` -/
def P16389433855145653961.Spec : Prop :=
  ∀ n, P16389433855145653961.a n = A339904 (n + 1)

end A339904

/-! ## A339904.P16084518522480505231

`A000265(A340071(n+1))*A340075(n+1)`
-/

namespace A339904.P16084518522480505231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A340071 (n + 1)).toNat * A340075 (n + 1)

end

end A339904.P16084518522480505231

namespace A339904

/-- `A000265(A340071(n+1))*A340075(n+1)` -/
def P16084518522480505231.Spec : Prop :=
  ∀ n, P16084518522480505231.a n = A339904 (n + 1)

end A339904

/-! ## A339904.P13183887898501423499

`A000265(A378521(n+1))`
-/

namespace A339904.P13183887898501423499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A378521 (n + 1)).toNat

end

end A339904.P13183887898501423499

namespace A339904

/-- `A000265(A378521(n+1))` -/
def P13183887898501423499.Spec : Prop :=
  ∀ n, P13183887898501423499.a n = A339904 (n + 1)

end A339904

/-! ## A339904.P2749593588506066581

`A000265(A340072(n+1)*A340074(n+1))`
-/

namespace A339904.P2749593588506066581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A340072 (n + 1) * A340074 (n + 1)).toNat

end

end A339904.P2749593588506066581

namespace A339904

/-- `A000265(A340072(n+1)*A340074(n+1))` -/
def P2749593588506066581.Spec : Prop :=
  ∀ n, P2749593588506066581.a n = A339904 (n + 1)

end A339904

/-! ## A339904.P13740153796592383208

`A000265(A340071(n+1))*A000265(A340072(n+1))`
-/

namespace A339904.P13740153796592383208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A340071 (n + 1)).toNat * A000265 (A340072 (n + 1)).toNat

end

end A339904.P13740153796592383208

namespace A339904

/-- `A000265(A340071(n+1))*A000265(A340072(n+1))` -/
def P13740153796592383208.Spec : Prop :=
  ∀ n, P13740153796592383208.a n = A339904 (n + 1)

end A339904

/-! ## A339904.P14999458096118272386

`A000265(A340147(n+1))*A000265(A340148(n+1))`
-/

namespace A339904.P14999458096118272386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A340147 (n + 1)).toNat * A000265 (A340148 (n + 1)).toNat

end

end A339904.P14999458096118272386

namespace A339904

/-- `A000265(A340147(n+1))*A000265(A340148(n+1))` -/
def P14999458096118272386.Spec : Prop :=
  ∀ n, P14999458096118272386.a n = A339904 (n + 1)

end A339904

/-! ## A339904.P2924001926518810120

`A000265(A337549(n+1)+1+n)`
-/

namespace A339904.P2924001926518810120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A337549 (n + 1) + 1 + (n : ℤ)).toNat

end

end A339904.P2924001926518810120

namespace A339904

/-- `A000265(A337549(n+1)+1+n)` -/
def P2924001926518810120.Spec : Prop :=
  ∀ n, P2924001926518810120.a n = A339904 (n + 1)

theorem P2924001926518810120.correct : P2924001926518810120.Spec := by
  intro n
  simp only [A339904, Nat.add_sub_cancel, A339904.P2924001926518810120.a, A339904.P5171680979052193897.a, A000010, A000010.P4673923239450215316.a, A000265, A000265.P16482698636471710744.a, A003961, A003961.P5996473960037614004.a, A337549, A337549.P3151164375738502961.a, A003557, A003557.P6364735403900941810.a, A003972, A003972.P2423200350467876597.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A253885, A253885.P16715555451856890624.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A243501, A243501.P10707292738867961998.a, A048673, A048673.P3613002930333742504.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A339904

/-! ## A339904.P1832977783493004520

`A000265(A000010(A045965(n+1)))`
-/

namespace A339904.P1832977783493004520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000010 (A045965 (n + 1)).toNat).toNat

end

end A339904.P1832977783493004520

namespace A339904

/-- `A000265(A000010(A045965(n+1)))` -/
def P1832977783493004520.Spec : Prop :=
  ∀ n, P1832977783493004520.a n = A339904 (n + 1)

end A339904

/-! ## A339904.P17742501383185954322

`A000265(A340071(n+1)*A340072(n+1))`
-/

namespace A339904.P17742501383185954322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A340071 (n + 1) * A340072 (n + 1)).toNat

end

end A339904.P17742501383185954322

namespace A339904

/-- `A000265(A340071(n+1)*A340072(n+1))` -/
def P17742501383185954322.Spec : Prop :=
  ∀ n, P17742501383185954322.a n = A339904 (n + 1)

end A339904

/-! ## A339904.P8749978388406256670

`A000265(A340071(n+1)*A340075(n+1))`
-/

namespace A339904.P8749978388406256670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A340071 (n + 1) * A340075 (n + 1)).toNat

end

end A339904.P8749978388406256670

namespace A339904

/-- `A000265(A340071(n+1)*A340075(n+1))` -/
def P8749978388406256670.Spec : Prop :=
  ∀ n, P8749978388406256670.a n = A339904 (n + 1)

end A339904

/-! ## A339904.P9257068920029285414

`A000265(A340147(n+1)*A340148(n+1))`
-/

namespace A339904.P9257068920029285414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A340147 (n + 1) * A340148 (n + 1)).toNat

end

end A339904.P9257068920029285414

namespace A339904

/-- `A000265(A340147(n+1)*A340148(n+1))` -/
def P9257068920029285414.Spec : Prop :=
  ∀ n, P9257068920029285414.a n = A339904 (n + 1)

end A339904

/-! ## A339904.P3617321631466194815

`A000265((A337544(n+1)+A003961(n+1))/2)`
-/

namespace A339904.P3617321631466194815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A337544 (n + 1) + A003961 (n + 1) : ℚ) / 2)).toNat

end

end A339904.P3617321631466194815

namespace A339904

/-- `A000265((A337544(n+1)+A003961(n+1))/2)` -/
def P3617321631466194815.Spec : Prop :=
  ∀ n, P3617321631466194815.a n = A339904 (n + 1)

end A339904

/-! ## A339904.P4482700335606183807

`A000265(A337544(n+1)+A003961(n+1))`
-/

namespace A339904.P4482700335606183807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A337544 (n + 1) + A003961 (n + 1)).toNat

end

end A339904.P4482700335606183807

namespace A339904

/-- `A000265(A337544(n+1)+A003961(n+1))` -/
def P4482700335606183807.Spec : Prop :=
  ∀ n, P4482700335606183807.a n = A339904 (n + 1)

end A339904

/-! ## A339904.P2869438350135100639

`A003961(A064989(A353789(n+1)/(n+1)))`
-/

namespace A339904.P2869438350135100639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A064989 (SequenceMachineLib.roundAway ((A353789 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A339904.P2869438350135100639

namespace A339904

/-- `A003961(A064989(A353789(n+1)/(n+1)))` -/
def P2869438350135100639.Spec : Prop :=
  ∀ n, P2869438350135100639.a n = A339904 (n + 1)

end A339904

/-! ## A339904.P3825117160678710243

`A053575(A045965(n+1))`
-/

namespace A339904.P3825117160678710243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053575 (A045965 (n + 1)).toNat

end

end A339904.P3825117160678710243

namespace A339904

/-- `A053575(A045965(n+1))` -/
def P3825117160678710243.Spec : Prop :=
  ∀ n, P3825117160678710243.a n = A339904 (n + 1)

end A339904

/-! ## A339904.P17830388674005620402

`A053575(A253885(n)+1)`
-/

namespace A339904.P17830388674005620402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053575 (A253885 n + 1).toNat

end

end A339904.P17830388674005620402

namespace A339904

/-- `A053575(A253885(n)+1)` -/
def P17830388674005620402.Spec : Prop :=
  ∀ n, P17830388674005620402.a n = A339904 (n + 1)

end A339904

/-! ## A339904.P4284872549104718844

`A053575(or(1, A253885(n)))`
-/

namespace A339904.P4284872549104718844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053575 (Int.lor 1 (A253885 n)).toNat

end

end A339904.P4284872549104718844

namespace A339904

/-- `A053575(or(1, A253885(n)))` -/
def P4284872549104718844.Spec : Prop :=
  ∀ n, P4284872549104718844.a n = A339904 (n + 1)

end A339904

/-!
# A339905: Fully multiplicative with a(prime(k)) = prime(k+1) - 1.

The programs for A339905, the canonical program `A339905.P13500807193007316440` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339905 has offset 1).

The definition of A339905 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A003961, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339905.P13500807193007316440

`A003958(A003961(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A339905

/-- `A003958(A003961(n+1))` -/
def P13500807193007316440.Spec : Prop :=
  ∀ n, P13500807193007316440.a n = A339905 (n + 1)

theorem P13500807193007316440.correct : P13500807193007316440.Spec := by
  intro n
  simp only [A339905, Nat.add_sub_cancel]

end A339905

/-! ## A339905.P12711097753529592460

`A353793(n+1)/(n+1)`
-/

namespace A339905.P12711097753529592460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353793 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A339905.P12711097753529592460

namespace A339905

/-- `A353793(n+1)/(n+1)` -/
def P12711097753529592460.Spec : Prop :=
  ∀ n, P12711097753529592460.a n = (A339905 (n + 1) : ℚ)

end A339905

/-! ## A339905.P17878028695171668219

`A351456(n+1)-A351457(n+1)`
-/

namespace A339905.P17878028695171668219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351456 (n + 1) - A351457 (n + 1)

end

end A339905.P17878028695171668219

namespace A339905

/-- `A351456(n+1)-A351457(n+1)` -/
def P17878028695171668219.Spec : Prop :=
  ∀ n, P17878028695171668219.a n = A339905 (n + 1)

theorem P17878028695171668219.correct : P17878028695171668219.Spec := by
  intro n
  simp only [A339905, Nat.add_sub_cancel, A339905.P17878028695171668219.a, A339905.P13500807193007316440.a, A003958, A003958.P196685604458257440.a, A003961, A003961.P5996473960037614004.a, A351456, A351456.P7640681049922300523.a, A351457, A351457.P4852068756587702856.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A253885, A253885.P16715555451856890624.a, A120007, A120007.P17212889191585270917.a, A243501, A243501.P10707292738867961998.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048673, A048673.P3613002930333742504.a, A061397, A061397.P17730824645895443051.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A339905

/-! ## A339905.P15106856402549288841

`A003958(A045965(n+1))`
-/

namespace A339905.P15106856402549288841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A045965 (n + 1)).toNat

end

end A339905.P15106856402549288841

namespace A339905

/-- `A003958(A045965(n+1))` -/
def P15106856402549288841.Spec : Prop :=
  ∀ n, P15106856402549288841.a n = A339905 (n + 1)

end A339905

/-! ## A339905.P7595718789831367066

`A003958(A253885(n)+1)`
-/

namespace A339905.P7595718789831367066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A253885 n + 1).toNat

end

end A339905.P7595718789831367066

namespace A339905

/-- `A003958(A253885(n)+1)` -/
def P7595718789831367066.Spec : Prop :=
  ∀ n, P7595718789831367066.a n = A339905 (n + 1)

end A339905

/-! ## A339905.P14402503171384809505

`A003958(A286385(n+1)+A000203(n+1))`
-/

namespace A339905.P14402503171384809505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A286385 (n + 1) + A000203 (n + 1)).toNat

end

end A339905.P14402503171384809505

namespace A339905

/-- `A003958(A286385(n+1)+A000203(n+1))` -/
def P14402503171384809505.Spec : Prop :=
  ∀ n, P14402503171384809505.a n = A339905 (n + 1)

theorem P14402503171384809505.correct : P14402503171384809505.Spec := by
  intro n
  simp only [A339905, Nat.add_sub_cancel, A339905.P14402503171384809505.a, A339905.P13500807193007316440.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003958, A003958.P196685604458257440.a, A003961, A003961.P5996473960037614004.a, A286385, A286385.P7583078268767377745.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A253885, A253885.P16715555451856890624.a, A120007, A120007.P17212889191585270917.a, A243501, A243501.P10707292738867961998.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048673, A048673.P3613002930333742504.a, A061397, A061397.P17730824645895443051.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A339905

/-! ## A339905.P8056391745191805726

`A003958(A348937(n+1)+A003415(n+1))`
-/

namespace A339905.P8056391745191805726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A348937 (n + 1) + A003415 (n + 1)).toNat

end

end A339905.P8056391745191805726

namespace A339905

/-- `A003958(A348937(n+1)+A003415(n+1))` -/
def P8056391745191805726.Spec : Prop :=
  ∀ n, P8056391745191805726.a n = A339905 (n + 1)

theorem P8056391745191805726.correct : P8056391745191805726.Spec := by
  intro n
  simp only [A339905, Nat.add_sub_cancel, A339905.P8056391745191805726.a, A339905.P13500807193007316440.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A003958, A003958.P196685604458257440.a, A003961, A003961.P5996473960037614004.a, A348937, A348937.P9014571055681436291.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A253885, A253885.P16715555451856890624.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A120007, A120007.P17212889191585270917.a, A243501, A243501.P10707292738867961998.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A048673, A048673.P3613002930333742504.a, A061397, A061397.P17730824645895443051.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A339905

/-! ## A339905.P5927657239816853989

`A003958(A340071(n+1)*A340073(n+1)+1)`
-/

namespace A339905.P5927657239816853989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A340071 (n + 1) * A340073 (n + 1) + 1).toNat

end

end A339905.P5927657239816853989

namespace A339905

/-- `A003958(A340071(n+1)*A340073(n+1)+1)` -/
def P5927657239816853989.Spec : Prop :=
  ∀ n, P5927657239816853989.a n = A339905 (n + 1)

end A339905

/-! ## A339905.P3641763393919334772

`A003958(A003973(n+1))-A351457(n+1)`
-/

namespace A339905.P3641763393919334772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A003973 (n + 1)).toNat - A351457 (n + 1)

end

end A339905.P3641763393919334772

namespace A339905

/-- `A003958(A003973(n+1))-A351457(n+1)` -/
def P3641763393919334772.Spec : Prop :=
  ∀ n, P3641763393919334772.a n = A339905 (n + 1)

theorem P3641763393919334772.correct : P3641763393919334772.Spec := by
  intro n
  simp only [A339905, Nat.add_sub_cancel, A339905.P3641763393919334772.a, A339905.P13500807193007316440.a, A003958, A003958.P196685604458257440.a, A003961, A003961.P5996473960037614004.a, A003973, A003973.P4846480468008244812.a, A351457, A351457.P4852068756587702856.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A253885, A253885.P16715555451856890624.a, A351456, A351456.P7640681049922300523.a, A120007, A120007.P17212889191585270917.a, A243501, A243501.P10707292738867961998.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048673, A048673.P3613002930333742504.a, A061397, A061397.P17730824645895443051.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A339905

/-! ## A339905.P4992896324487602027

`A003958(A297166(2*(n+1)))`
-/

namespace A339905.P4992896324487602027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A297166 (2 * (n + 1))).toNat

end

end A339905.P4992896324487602027

namespace A339905

/-- `A003958(A297166(2*(n+1)))` -/
def P4992896324487602027.Spec : Prop :=
  ∀ n, P4992896324487602027.a n = A339905 (n + 1)

end A339905

/-! ## A339905.P8432716898902191297

`A351442(A003961(n+1))-A351457(n+1)`
-/

namespace A339905.P8432716898902191297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351442 (A003961 (n + 1)).toNat - A351457 (n + 1)

end

end A339905.P8432716898902191297

namespace A339905

/-- `A351442(A003961(n+1))-A351457(n+1)` -/
def P8432716898902191297.Spec : Prop :=
  ∀ n, P8432716898902191297.a n = A339905 (n + 1)

theorem P8432716898902191297.correct : P8432716898902191297.Spec := by
  intro n
  simp only [A339905, Nat.add_sub_cancel, A339905.P8432716898902191297.a, A339905.P13500807193007316440.a, A003958, A003958.P196685604458257440.a, A003961, A003961.P5996473960037614004.a, A351442, A351442.P14048376927472810043.a, A351457, A351457.P4852068756587702856.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A253885, A253885.P16715555451856890624.a, A351456, A351456.P7640681049922300523.a, A120007, A120007.P17212889191585270917.a, A243501, A243501.P10707292738867961998.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048673, A048673.P3613002930333742504.a, A061397, A061397.P17730824645895443051.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A339905

/-! ## A339905.P9443394978324985557

`A351456(n+1)-A351445(A003961(n+1))`
-/

namespace A339905.P9443394978324985557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351456 (n + 1) - A351445 (A003961 (n + 1)).toNat

end

end A339905.P9443394978324985557

namespace A339905

/-- `A351456(n+1)-A351445(A003961(n+1))` -/
def P9443394978324985557.Spec : Prop :=
  ∀ n, P9443394978324985557.a n = A339905 (n + 1)

theorem P9443394978324985557.correct : P9443394978324985557.Spec := by
  intro n
  simp only [A339905, Nat.add_sub_cancel, A339905.P9443394978324985557.a, A339905.P13500807193007316440.a, A003958, A003958.P196685604458257440.a, A003961, A003961.P5996473960037614004.a, A351445, A351445.P15142338061005417043.a, A351456, A351456.P7640681049922300523.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A253885, A253885.P16715555451856890624.a, A120007, A120007.P17212889191585270917.a, A243501, A243501.P10707292738867961998.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048673, A048673.P3613002930333742504.a, A061397, A061397.P17730824645895443051.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A339905

/-! ## A339905.P5346521405132779033

`A333787(A253885(n)+1)`
-/

namespace A339905.P5346521405132779033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333787 (A253885 n + 1).toNat

end

end A339905.P5346521405132779033

namespace A339905

/-- `A333787(A253885(n)+1)` -/
def P5346521405132779033.Spec : Prop :=
  ∀ n, P5346521405132779033.a n = A339905 (n + 1)

end A339905

/-! ## A339905.P6114876119683079245

`A333787(A003961(2*n+1-n))`
-/

namespace A339905.P6114876119683079245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333787 (A003961 (2 * n + 1 - n)).toNat

end

end A339905.P6114876119683079245

namespace A339905

/-- `A333787(A003961(2*n+1-n))` -/
def P6114876119683079245.Spec : Prop :=
  ∀ n, P6114876119683079245.a n = A339905 (n + 1)

end A339905

/-! ## A339905.P7139215511074675222

`A003958(A283980(n+1))`
-/

namespace A339905.P7139215511074675222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A283980 (n + 1)).toNat

end

end A339905.P7139215511074675222

namespace A339905

/-- `A003958(A283980(n+1))` -/
def P7139215511074675222.Spec : Prop :=
  ∀ n, P7139215511074675222.a n = A339905 (n + 1)

end A339905

/-!
# A339906: Numbers k for which A339812(2k) >= A339902(k).

The programs for A339906, there is no canonical definition to state claims against.
-/

/-! ## A339906.P16803367839117135363

`eq[A089309(n), A280453(A280452(n))]`
-/

namespace A339906.P16803367839117135363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280453 (A280452 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339906.P16803367839117135363

/-!
# A339907: Odd squarefree numbers k > 1 for which the bigomega(phi(k)) <= bigomega(k-1), where bigomega gives the number of prime divisors, counted with multiplicity.

The programs for A339907, there is no canonical definition to state claims against.
-/

/-! ## A339907.P4099237493738920696

`eq[A035363(n), A262680(A326641(n))]`
-/

namespace A339907.P4099237493738920696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262680 (A326641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339907.P4099237493738920696

/-! ## A339907.P1429884961654860054

`record[∏{p}[record[A109874(n+3)]+1, #]]`
-/

namespace A339907.P1429884961654860054
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109874 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339907.P1429884961654860054

/-! ## A339907.P9946286429700943437

`∪[A000040(n+2), A196088(A335755(3*n+4))]`
-/

namespace A339907.P9946286429700943437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196088 (A335755 (3 * n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A339907.P9946286429700943437

/-! ## A339907.P7088233551649787892

`filter[A028769(n+1), A373993(#)]`
-/

namespace A339907.P7088233551649787892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373993 (f1 j).toNat = 1) n)

end

end A339907.P7088233551649787892

/-! ## A339907.P15470350671880723639

`filter[A308468(n+1), A353499(#)]`
-/

namespace A339907.P15470350671880723639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A339907.P15470350671880723639

/-!
# A339911: Numbers k > 1 for which bigomega(k) <= bigomega(k-1)/2, where bigomega gives the number of prime factors, counted with multiplicity.

The programs for A339911, the canonical program `A339911.P2031483591010587436` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339911 has offset 1).

The definition of A339911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1401 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339911.P2031483591010587436

`lt[A165831(n+2), A165824(2*(n+1))]+2`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A339911

/-- `lt[A165831(n+2), A165824(2*(n+1))]+2` -/
def P2031483591010587436.Spec : Prop :=
  ∀ n, (P2031483591010587436.a n : ℤ) = A339911 (n + 1)

theorem P2031483591010587436.correct : P2031483591010587436.Spec := by
  intro n
  simp only [A339911, Nat.add_sub_cancel]

end A339911

/-! ## A339911.P4934614485915683050

`lt[A001222(n+1), A001222(A257143(2*n))/2]+1`
-/

namespace A339911.P4934614485915683050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A257143 (2 * n)).toNat : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A339911.P4934614485915683050

namespace A339911

/-- `lt[A001222(n+1), A001222(A257143(2*n))/2]+1` -/
def P4934614485915683050.Spec : Prop :=
  ∀ n, (P4934614485915683050.a n : ℤ) = A339911 (n + 1)

end A339911

/-! ## A339911.P14152615210364645253

`lt[A335056(A335079(n+2)), A001222(n+1)]+2`
-/

namespace A339911.P14152615210364645253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335056 (A335079 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A339911.P14152615210364645253

namespace A339911

/-- `lt[A335056(A335079(n+2)), A001222(n+1)]+2` -/
def P14152615210364645253.Spec : Prop :=
  ∀ n, (P14152615210364645253.a n : ℤ) = A339911 (n + 1)

end A339911

/-! ## A339911.P3165681854627937819

`lt[A325836(2*n+1), A326034(n)+A325836(n)]`
-/

namespace A339911.P3165681854627937819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325836 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326034 n + A325836 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A339911.P3165681854627937819

namespace A339911

/-- `lt[A325836(2*n+1), A326034(n)+A325836(n)]` -/
def P3165681854627937819.Spec : Prop :=
  ∀ n, (P3165681854627937819.a n : ℤ) = A339911 (n + 1)

end A339911

/-! ## A339911.P7261197426724493543

`lt[A003415(n), A029931(A325836(n))]`
-/

namespace A339911.P7261197426724493543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A325836 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A339911.P7261197426724493543

namespace A339911

/-- `lt[A003415(n), A029931(A325836(n))]` -/
def P7261197426724493543.Spec : Prop :=
  ∀ n, (P7261197426724493543.a n : ℤ) = A339911 (n + 1)

end A339911

/-!
# A339912: Numbers k > 1 for which bigomega(k) < bigomega(k-1)/2, where bigomega gives the number of prime factors, counted with multiplicity.

The programs for A339912, the canonical program `A339912.P13681611232526830954` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339912 has offset 1).

The definition of A339912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1921 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339912.P13681611232526830954

`lt[A165831(n+2), A165824(n+1)]+2`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A339912

/-- `lt[A165831(n+2), A165824(n+1)]+2` -/
def P13681611232526830954.Spec : Prop :=
  ∀ n, (P13681611232526830954.a n : ℤ) = A339912 (n + 1)

theorem P13681611232526830954.correct : P13681611232526830954.Spec := by
  intro n
  simp only [A339912, Nat.add_sub_cancel]

end A339912

/-! ## A339912.P15320333392240510857

`lt[log2(A165825(n+3)), A001222(n+2)]+3`
-/

namespace A339912.P15320333392240510857
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A165825 (n + 3) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 3

end

end A339912.P15320333392240510857

namespace A339912

/-- `lt[log2(A165825(n+3)), A001222(n+2)]+3` -/
def P15320333392240510857.Spec : Prop :=
  ∀ n, (P15320333392240510857.a n : ℤ) = A339912 (n + 1)

end A339912

/-! ## A339912.P11367804125344975887

`lt[A001222(n+1), A001222(A257143(n))/2]+1`
-/

namespace A339912.P11367804125344975887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A257143 n).toNat : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A339912.P11367804125344975887

namespace A339912

/-- `lt[A001222(n+1), A001222(A257143(n))/2]+1` -/
def P11367804125344975887.Spec : Prop :=
  ∀ n, (P11367804125344975887.a n : ℤ) = A339912 (n + 1)

end A339912

/-! ## A339912.P14033544065694748454

`lt[∑{e}[n², #], ∑{e}[1-n, #]]`
-/

namespace A339912.P14033544065694748454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n).natAbs, Nat.factorization (f4 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A339912.P14033544065694748454

namespace A339912

/-- `lt[∑{e}[n², #], ∑{e}[1-n, #]]` -/
def P14033544065694748454.Spec : Prop :=
  ∀ n, (P14033544065694748454.a n : ℤ) = A339912 (n + 1)

end A339912

/-! ## A339912.P8863063802110202555

`lt[A319916(n), A003415(A004526(n))]`
-/

namespace A339912.P8863063802110202555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319916 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A004526 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A339912.P8863063802110202555

namespace A339912

/-- `lt[A319916(n), A003415(A004526(n))]` -/
def P8863063802110202555.Spec : Prop :=
  ∀ n, (P8863063802110202555.a n : ℤ) = A339912 (n + 1)

end A339912

/-!
# A339913: a(n) = x/gcd(n,x), where x = 1+A060681(n).

The programs for A339913, there is no canonical definition to state claims against.
-/

/-! ## A339913.P16219297945263643524

`(1+A060681(n+1))/A323071(n+1)`
-/

namespace A339913.P16219297945263643524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A060681 (n + 1) : ℚ) / (A323071 (n + 1) : ℚ)

end

end A339913.P16219297945263643524

/-! ## A339913.P923314505782356894

`(n+2-A032742(n+1))/A323071(n+1)`
-/

namespace A339913.P923314505782356894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - A032742 (n + 1) : ℚ) / (A323071 (n + 1) : ℚ)

end

end A339913.P923314505782356894

/-! ## A339913.P7408273706430086705

`(A032742(n+1)*A323072(n+1))%(n+2)`
-/

namespace A339913.P7408273706430086705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032742 (n + 1) * A323072 (n + 1)) (n + 2 : ℤ)

end

end A339913.P7408273706430086705

/-! ## A339913.P11288709403577979908

`(n-floor(n/A020639(n+1))+1)/A323071(n+1)`
-/

namespace A339913.P11288709403577979908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ⌊(n : ℚ) / (A020639 (n + 1) : ℚ)⌋ + 1 : ℚ) / (A323071 (n + 1) : ℚ)

end

end A339913.P11288709403577979908

/-! ## A339913.P7086326729098173482

`(A060681(n+1)+1)/gcd(A032742(n+1)-1, A020639(n+1))`
-/

namespace A339913.P7086326729098173482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060681 (n + 1) + 1 : ℚ) / (Int.gcd (A032742 (n + 1) - 1) (A020639 (n + 1)) : ℚ)

end

end A339913.P7086326729098173482

/-! ## A339913.P12517285573657994588

`A164306(A060681(n+1)+A000124(n))`
-/

namespace A339913.P12517285573657994588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A060681 (n + 1) + A000124 n).toNat

end

end A339913.P12517285573657994588

/-! ## A339913.P10116262367751405753

`A164306(A060681(n+1)+∑[A028310(n)])`
-/

namespace A339913.P10116262367751405753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A060681 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A339913.P10116262367751405753

/-! ## A339913.P5331231031452772484

`A164306(A342939(n+1)+A060681(n+1))`
-/

namespace A339913.P5331231031452772484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A342939 (n + 1) + A060681 (n + 1)).toNat

end

end A339913.P5331231031452772484

/-! ## A339913.P3271968730779863430

`A164306(A000124(n+1)-A032742(n+1))`
-/

namespace A339913.P3271968730779863430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A000124 (n + 1) - A032742 (n + 1)).toNat

end

end A339913.P3271968730779863430

/-! ## A339913.P11399223270719572624

`A164306(A000124(n)+n+1-(n+1)/A020639(n+1))`
-/

namespace A339913.P11399223270719572624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (SequenceMachineLib.roundAway ((A000124 n : ℚ) + ((n + 1 : ℚ) - (n + 1 : ℚ) / (A020639 (n + 1) : ℚ)))).toNat

end

end A339913.P11399223270719572624

/-! ## A339913.P4986689064085814823

`A164306(A342939(n+1)+n+1-(n+1)/A020639(n+1))`
-/

namespace A339913.P4986689064085814823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (SequenceMachineLib.roundAway ((A342939 (n + 1) : ℚ) + ((n + 1 : ℚ) - (n + 1 : ℚ) / (A020639 (n + 1) : ℚ)))).toNat

end

end A339913.P4986689064085814823

/-!
# A339914: Ordinal transform of sequence b(1) = 1, b(n) = A143771(n) for n > 1.

The programs for A339914, there is no canonical definition to state claims against.
-/

/-! ## A339914.P6060063658504638317

`A344771(∑[∑[A151622(n)]])`
-/

namespace A339914.P6060063658504638317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344771 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A339914.P6060063658504638317

/-! ## A339914.P10909161922552545764

`A344771(A151622(n)+1+n)`
-/

namespace A339914.P10909161922552545764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344771 (A151622 n + 1 + (n : ℤ)).toNat

end

end A339914.P10909161922552545764

/-! ## A339914.P3373444688160470204

`A344771(n+1)%A115809(n+1)`
-/

namespace A339914.P3373444688160470204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344771 (n + 1)) (A115809 (n + 1))

end

end A339914.P3373444688160470204

/-! ## A339914.P17826555906224284792

`A344771(n+1)+A000007(A011117(n))`
-/

namespace A339914.P17826555906224284792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344771 (n + 1) + A000007 (A011117 n).toNat

end

end A339914.P17826555906224284792

/-! ## A339914.P9293526245285448299

`gcd(A000122(A002865(n)), A344771(n+1))`
-/

namespace A339914.P9293526245285448299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 (A002865 n).toNat) (A344771 (n + 1))

end

end A339914.P9293526245285448299

/-!
# A339915: Number of divisors of n with the same number of decimal digits as n.

The programs for A339915, there is no canonical definition to state claims against.
-/

/-! ## A339915.P5475977683244895236

`A038548(A126616(n+1)*A239548(n+1))`
-/

namespace A339915.P5475977683244895236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A126616 (n + 1) * A239548 (n + 1)).toNat

end

end A339915.P5475977683244895236

/-! ## A339915.P7052872700278014383

`A242627(A001359(3*n+5)*A052423(n+1))`
-/

namespace A339915.P7052872700278014383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242627 (A001359 (3 * n + 5) * A052423 (n + 1)).toNat

end

end A339915.P7052872700278014383

/-! ## A339915.P4926301901201976802

`A000005(((n+1)/A350494(n+1))%A218431(n+1))`
-/

namespace A339915.P4926301901201976802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350494 (n + 1) : ℚ))) (A218431 (n + 1))).toNat

end

end A339915.P4926301901201976802

/-! ## A339915.P4556828431459930712

`gcd(A000005((n+1)/A350494(n+1)), A218431(n+1))`
-/

namespace A339915.P4556828431459930712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350494 (n + 1) : ℚ))).toNat) (A218431 (n + 1))

end

end A339915.P4556828431459930712

/-! ## A339915.P4897494412172541335

`A000005(gcd(A052382(n+1), A157685(3*n+4)))`
-/

namespace A339915.P4897494412172541335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A052382 (n + 1)) (A157685 (3 * n + 4)))

end

end A339915.P4897494412172541335

/-!
# A339916: The sum of 2^((d-1)/2) over all divisors of 2n+1.

The programs for A339916, the canonical program `A339916.P17032178087067500628` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339916 has offset 0).

The definition of A339916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339916.P7721946883895120870

`∑{d}[2*n+1, 2^(n%#)]`
-/

namespace A339916.P7721946883895120870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 2 ^ (n % d)

end

end A339916.P7721946883895120870

namespace A339916

/-- `∑{d}[2*n+1, 2^(n%#)]` -/
def P7721946883895120870.Spec : Prop :=
  ∀ n, (P7721946883895120870.a n : ℤ) = A339916 n

end A339916

/-! ## A339916.P16773408329133592422

`∑{d}[2*n+1, 2^floor(#/2)]`
-/

namespace A339916.P16773408329133592422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ (⌊(d : ℚ) / 2⌋ : ℤ)

end

end A339916.P16773408329133592422

namespace A339916

/-- `∑{d}[2*n+1, 2^floor(#/2)]` -/
def P16773408329133592422.Spec : Prop :=
  ∀ n, P16773408329133592422.a n = (A339916 n : ℚ)

end A339916

/-! ## A339916.P9326504328806276960

`A364034(Δ[n²])`
-/

namespace A339916.P9326504328806276960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364034 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A339916.P9326504328806276960

namespace A339916

/-- `A364034(Δ[n²])` -/
def P9326504328806276960.Spec : Prop :=
  ∀ n, P9326504328806276960.a n = A339916 n

end A339916

/-! ## A339916.P14573289290113527782

`record[A364034(n+1)]`
-/

namespace A339916.P14573289290113527782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339916.P14573289290113527782

namespace A339916

/-- `record[A364034(n+1)]` -/
def P14573289290113527782.Spec : Prop :=
  ∀ n, P14573289290113527782.a n = A339916 n

theorem P14573289290113527782.correct : P14573289290113527782.Spec := by
  intro n
  simp only [A339916, Nat.add_sub_cancel, A339916.P14573289290113527782.f1, A339916.P14573289290113527782.a, A339916.P17032178087067500628.f2, A339916.P17032178087067500628.f1, A339916.P17032178087067500628.a, A131575, A131575.P55044588801403838.a, A364034, A364034.P3967422730475427941.f1, A364034.P3967422730475427941.a, A131572, A131572.P9577111679709135137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A339916

/-! ## A339916.P17032178087067500628

`record[∑{d}[n+1, A131575(#)]]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A339916

/-- `record[∑{d}[n+1, A131575(#)]]` -/
def P17032178087067500628.Spec : Prop :=
  ∀ n, P17032178087067500628.a n = A339916 n

theorem P17032178087067500628.correct : P17032178087067500628.Spec := by
  intro n
  simp only [A339916]

end A339916

/-! ## A339916.P6789967748640044543

`record[∑{d}[A000265(n+1), A016116(#)]]`
-/

namespace A339916.P6789967748640044543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A016116 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339916.P6789967748640044543

namespace A339916

/-- `record[∑{d}[A000265(n+1), A016116(#)]]` -/
def P6789967748640044543.Spec : Prop :=
  ∀ n, P6789967748640044543.a n = A339916 n

end A339916

/-! ## A339916.P5843175166126416783

`record[∑{d}[A000265(n+1), A228693(#)]]`
-/

namespace A339916.P5843175166126416783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A228693 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339916.P5843175166126416783

namespace A339916

/-- `record[∑{d}[A000265(n+1), A228693(#)]]` -/
def P5843175166126416783.Spec : Prop :=
  ∀ n, P5843175166126416783.a n = A339916 n

end A339916

/-! ## A339916.P8028839078351984245

`A364034(2*n+1)+A007814(2*n+1)`
-/

namespace A339916.P8028839078351984245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364034 (2 * n + 1) + A007814 (2 * n + 1)

end

end A339916.P8028839078351984245

namespace A339916

/-- `A364034(2*n+1)+A007814(2*n+1)` -/
def P8028839078351984245.Spec : Prop :=
  ∀ n, P8028839078351984245.a n = A339916 n

end A339916

/-!
# A339917: Primes p such that p+k and p^2+k are prime, where k = (p^2-1)/6.

The programs for A339917, there is no canonical definition to state claims against.
-/

/-! ## A339917.P8104556761559745005

`∩[A360374(n+1), A391800(n+1)]`
-/

namespace A339917.P8104556761559745005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339917.P8104556761559745005

/-!
# A339918: a(n) = Sum_{k=1..n} floor(3*n/k).

The programs for A339918, the canonical program `A339918.P17540668078201323779` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339918 has offset 0).

The definition of A339918 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, floor(3*n/(#+1))]` (program `A339918.P17540668078201323779`, by `A339918.P17540668078201323779.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A339918.P17540668078201323779

`∑{#}[n-1, floor(3*n/(#+1))]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A339918

/-- `∑{#}[n-1, floor(3*n/(#+1))]` -/
def P17540668078201323779.Spec : Prop :=
  ∀ n, P17540668078201323779.a n = A339918 n

theorem P17540668078201323779.correct : P17540668078201323779.Spec := by
  intro n
  simp only [A339918]

end A339918

/-! ## A339918.P3435673733753579739

`A339919(n)+3*A006218(n)`
-/

namespace A339918.P3435673733753579739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339919 n + 3 * A006218 n

end

end A339918.P3435673733753579739

namespace A339918

/-- `A339919(n)+3*A006218(n)` -/
def P3435673733753579739.Spec : Prop :=
  ∀ n, P3435673733753579739.a n = A339918 n

end A339918

/-! ## A339918.P13148734605060684996

`A006218(3*n)-(A005843(n)+A004526(n))`
-/

namespace A339918.P13148734605060684996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (3 * n) - (A005843 n + A004526 n)

end

end A339918.P13148734605060684996

namespace A339918

/-- `A006218(3*n)-(A005843(n)+A004526(n))` -/
def P13148734605060684996.Spec : Prop :=
  ∀ n, P13148734605060684996.a n = A339918 n

end A339918

/-! ## A339918.P11954808216788161023

`A006218(3*n)-(A004526(3*n)+n)`
-/

namespace A339918.P11954808216788161023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (3 * n) - (A004526 (3 * n) + (n : ℤ))

end

end A339918.P11954808216788161023

namespace A339918

/-- `A006218(3*n)-(A004526(3*n)+n)` -/
def P11954808216788161023.Spec : Prop :=
  ∀ n, P11954808216788161023.a n = A339918 n

end A339918

/-! ## A339918.P5048091093870877835

`A110654(n)+A002541(A008486(n))`
-/

namespace A339918.P5048091093870877835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A002541 (A008486 n).toNat

end

end A339918.P5048091093870877835

namespace A339918

/-- `A110654(n)+A002541(A008486(n))` -/
def P5048091093870877835.Spec : Prop :=
  ∀ n, P5048091093870877835.a n = A339918 n

end A339918

/-! ## A339918.P5059584642789987270

`A006218(3*n)-A004526(3*n)-A004526(2*n)`
-/

namespace A339918.P5059584642789987270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (3 * n) - A004526 (3 * n) - A004526 (2 * n)

end

end A339918.P5059584642789987270

namespace A339918

/-- `A006218(3*n)-A004526(3*n)-A004526(2*n)` -/
def P5059584642789987270.Spec : Prop :=
  ∀ n, P5059584642789987270.a n = A339918 n

end A339918

/-! ## A339918.P5044502849858185529

`A006218(3*n)-A004526(5*n)`
-/

namespace A339918.P5044502849858185529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (3 * n) - A004526 (5 * n)

end

end A339918.P5044502849858185529

namespace A339918

/-- `A006218(3*n)-A004526(5*n)` -/
def P5044502849858185529.Spec : Prop :=
  ∀ n, P5044502849858185529.a n = A339918 n

end A339918

/-!
# A339919: a(n) = Sum_{k=1..n} (floor(3*n/k) - 3*floor(n/k)).

The programs for A339919, the canonical program `A339919.P4500069072032148210` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339919 has offset 0).

The definition of A339919 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, floor(3*n/(#+1))-3*floor(n/(#+1))]` (program `A339919.P4500069072032148210`, by `A339919.P4500069072032148210.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A339919.P4500069072032148210

`∑{#}[n-1, floor(3*n/(#+1))-3*floor(n/(#+1))]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A339919

/-- `∑{#}[n-1, floor(3*n/(#+1))-3*floor(n/(#+1))]` -/
def P4500069072032148210.Spec : Prop :=
  ∀ n, P4500069072032148210.a n = A339919 n

theorem P4500069072032148210.correct : P4500069072032148210.Spec := by
  intro n
  simp only [A339919]

end A339919

/-! ## A339919.P1107239849684330774

`A339918(n)-3*A006218(n)`
-/

namespace A339919.P1107239849684330774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339918 n - 3 * A006218 n

end

end A339919.P1107239849684330774

namespace A339919

/-- `A339918(n)-3*A006218(n)` -/
def P1107239849684330774.Spec : Prop :=
  ∀ n, P1107239849684330774.a n = A339919 n

end A339919

/-! ## A339919.P584687280224148809

`A339918(n)%A006218(A028310(n))`
-/

namespace A339919.P584687280224148809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339918 n) (A006218 (A028310 n).toNat)

end

end A339919.P584687280224148809

namespace A339919

/-- `A339918(n)%A006218(A028310(n))` -/
def P584687280224148809.Spec : Prop :=
  ∀ n, P584687280224148809.a n = A339919 n

end A339919

/-! ## A339919.P6588849640917729871

`A339918(n)-A008585(A006218(n))`
-/

namespace A339919.P6588849640917729871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339918 n - A008585 (A006218 n).toNat

end

end A339919.P6588849640917729871

namespace A339919

/-- `A339918(n)-A008585(A006218(n))` -/
def P6588849640917729871.Spec : Prop :=
  ∀ n, P6588849640917729871.a n = A339919 n

end A339919

/-! ## A339919.P13347393386887130897

`A006218(3*n)-A004526(5*n)-A008585(A054519(n)-1)`
-/

namespace A339919.P13347393386887130897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (3 * n) - A004526 (5 * n) - A008585 (A054519 n - 1).toNat

end

end A339919.P13347393386887130897

namespace A339919

/-- `A006218(3*n)-A004526(5*n)-A008585(A054519(n)-1)` -/
def P13347393386887130897.Spec : Prop :=
  ∀ n, P13347393386887130897.a n = A339919 n

end A339919

/-! ## A339919.P4508292870060270050

`(A006218(3*n)-A004526(5*n))%A008486(A054519(n)-1)`
-/

namespace A339919.P4508292870060270050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006218 (3 * n) - A004526 (5 * n)) (A008486 (A054519 n - 1).toNat)

end

end A339919.P4508292870060270050

namespace A339919

/-- `(A006218(3*n)-A004526(5*n))%A008486(A054519(n)-1)` -/
def P4508292870060270050.Spec : Prop :=
  ∀ n, P4508292870060270050.a n = A339919 n

end A339919

/-! ## A339919.P14037257134742282740

`A006218(3*n)-A004526(5*n)-A008585(A006590(n+1)-(n+1))`
-/

namespace A339919.P14037257134742282740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (3 * n) - A004526 (5 * n) - A008585 (A006590 (n + 1) - (n + 1 : ℤ)).toNat

end

end A339919.P14037257134742282740

namespace A339919

/-- `A006218(3*n)-A004526(5*n)-A008585(A006590(n+1)-(n+1))` -/
def P14037257134742282740.Spec : Prop :=
  ∀ n, P14037257134742282740.a n = A339919 n

end A339919

/-!
# A339920: Primes p such that p^2 - p*q + q^2 is prime, where q is the next prime after p.

The programs for A339920, there is no canonical definition to state claims against.
-/

/-! ## A339920.P16040526712232376416

`A151799(ceil(sqrt(A339698(n+1))))`
-/

namespace A339920.P16040526712232376416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 ⌈Real.sqrt (A339698 (n + 1) : ℝ)⌉.toNat

end

end A339920.P16040526712232376416

/-! ## A339920.P5373837030242577186

`A151799(round(sqrt(A339698(n+1))))`
-/

namespace A339920.P5373837030242577186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (SequenceMachineLib.roundAway (Real.sqrt (A339698 (n + 1) : ℝ))).toNat

end

end A339920.P5373837030242577186

/-! ## A339920.P3282910007475178401

`A007917(floor(sqrt(A339698(n+1))))`
-/

namespace A339920.P3282910007475178401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (Int.sqrt (A339698 (n + 1))).toNat

end

end A339920.P3282910007475178401

/-! ## A339920.P10898198285619372594

`A136548(ceil(sqrt(A339698(n+1))))`
-/

namespace A339920.P10898198285619372594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 ⌈Real.sqrt (A339698 (n + 1) : ℝ)⌉.toNat

end

end A339920.P10898198285619372594

/-! ## A339920.P8638856825892046294

`A136548(round(sqrt(A339698(n+1))))`
-/

namespace A339920.P8638856825892046294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (SequenceMachineLib.roundAway (Real.sqrt (A339698 (n + 1) : ℝ))).toNat

end

end A339920.P8638856825892046294

/-!
# A339926: Number of pairs of orthogonal diagonal Latin squares of order n.

The programs for A339926, there is no canonical definition to state claims against.
-/

/-! ## A339926.P4445064054677663991

`A287651(n+1)*(n+1)!²`
-/

namespace A339926.P4445064054677663991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287651 (n + 1) * (Nat.factorial (n + 1) ^ 2 : ℤ)

end

end A339926.P4445064054677663991

/-! ## A339926.P6481158084959651414

`A060817(n+1)²*A287651(n+1)`
-/

namespace A339926.P6481158084959651414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060817 (n + 1) ^ 2 * A287651 (n + 1)

end

end A339926.P6481158084959651414

/-! ## A339926.P15251390489162816705

`A109834(n+1)²*A287651(n+1)`
-/

namespace A339926.P15251390489162816705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109834 (n + 1) ^ 2 * A287651 (n + 1)

end

end A339926.P15251390489162816705

/-! ## A339926.P14711328053697509568

`A001044(A000015(n+1))*A287651(n+1)`
-/

namespace A339926.P14711328053697509568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001044 (A000015 (n + 1)).toNat * A287651 (n + 1)

end

end A339926.P14711328053697509568

/-! ## A339926.P451790351462798758

`A001044(A100994(n+1))*A287651(n+1)`
-/

namespace A339926.P451790351462798758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001044 (A100994 (n + 1)).toNat * A287651 (n + 1)

end

end A339926.P451790351462798758

/-!
# A339927: Number of partitions of n into two composite parts with the same number of divisors.

The programs for A339927, there is no canonical definition to state claims against.
-/

/-! ## A339927.P7274221522031913816

`A083894(A262876(2*n+1)+A000930(n+4))`
-/

namespace A339927.P7274221522031913816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083894 (A262876 (2 * n + 1) + A000930 (n + 4)).toNat

end

end A339927.P7274221522031913816

/-! ## A339927.P352019123895059826

`and(A117929(n+1), A300791(A000211(n)))`
-/

namespace A339927.P352019123895059826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117929 (n + 1)) (A300791 (A000211 n).toNat)

end

end A339927.P352019123895059826

/-! ## A339927.P1371427072994188206

`A086071(A250410(n+1)+A135204(2*(n+1)))`
-/

namespace A339927.P1371427072994188206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086071 (A250410 (n + 1) + A135204 (2 * (n + 1))).toNat

end

end A339927.P1371427072994188206

/-! ## A339927.P9067730495170068780

`and(A107018(A193722(2*(n+1))), A111858(n+1))`
-/

namespace A339927.P9067730495170068780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107018 (A193722 (2 * (n + 1))).toNat) (A111858 (n + 1))

end

end A339927.P9067730495170068780

/-! ## A339927.P9564159227199337810

`A002265(and(A002265(2*n+3), A365166(3*(n+1))))`
-/

namespace A339927.P9564159227199337810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.land (A002265 (2 * n + 3)) (A365166 (3 * (n + 1)))).toNat

end

end A339927.P9564159227199337810

/-!
# A339928: Numbers k such that the removal of all terminating even digits from k! leaves a prime.

The programs for A339928, there is no canonical definition to state claims against.
-/

/-! ## A339928.P17839013387845278889

`A051162(A005649(n)+11)`
-/

namespace A339928.P17839013387845278889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A005649 n + 11).toNat

end

end A339928.P17839013387845278889

/-! ## A339928.P12542528581303889314

`A134478(A005649(n)+11)`
-/

namespace A339928.P12542528581303889314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A005649 n + 11).toNat

end

end A339928.P12542528581303889314

/-!
# A339929: a(n+1) = a(n-1-a(n)^2) + 1, starting with a(1) = a(2) = 0.

The programs for A339929, the canonical program `A339929.P1957762430647391444` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339929 has offset 1).

The definition of A339929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A339929.P1957762430647391444

`a(n-2-a(n-1)²)+1` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A339929

/-- `a(n-2-a(n-1)²)+1` -/
def P1957762430647391444.Spec : Prop :=
  ∀ n, (P1957762430647391444.a n : ℤ) = A339929 (n + 1)

theorem P1957762430647391444.correct : P1957762430647391444.Spec := by
  intro n
  simp only [A339929, Nat.add_sub_cancel]

end A339929

/-! ## A339929.P2868644502494865114

`a(n-(a(n-1)²+2))+1` with `a(0)=0, a(1)=0`
-/

namespace A339929.P2868644502494865114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - (a (n - 1) ^ 2 + 2)) + 1

end

end A339929.P2868644502494865114

namespace A339929

/-- `a(n-(a(n-1)²+2))+1` -/
def P2868644502494865114.Spec : Prop :=
  ∀ n, (P2868644502494865114.a n : ℤ) = A339929 (n + 1)

end A339929

/-! ## A339929.P2274139799900278877

`a(n-(a(n-1)^2+2))+1` with `a(0)=0, a(1)=0`
-/

namespace A339929.P2274139799900278877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - (a (n - 1) ^ 2 + 2)) + 1

end

end A339929.P2274139799900278877

namespace A339929

/-- `a(n-(a(n-1)^2+2))+1` -/
def P2274139799900278877.Spec : Prop :=
  ∀ n, (P2274139799900278877.a n : ℤ) = A339929 (n + 1)

end A339929

/-! ## A339929.P11094486929455084053

`a(n-(a(n-1)*a(n-1)+2))+1` with `a(0)=0, a(1)=0`
-/

namespace A339929.P11094486929455084053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - (a (n - 1) * a (n - 1) + 2)) + 1

end

end A339929.P11094486929455084053

namespace A339929

/-- `a(n-(a(n-1)*a(n-1)+2))+1` -/
def P11094486929455084053.Spec : Prop :=
  ∀ n, (P11094486929455084053.a n : ℤ) = A339929 (n + 1)

end A339929

/-! ## A339929.P8997708584013003417

`a(n-A059100(a(n-1)))+1` with `a(0)=0, a(1)=0`
-/

namespace A339929.P8997708584013003417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a ((n : ℤ) - A059100 (a (n - 1))).toNat + 1

end

end A339929.P8997708584013003417

namespace A339929

/-- `a(n-A059100(a(n-1)))+1` -/
def P8997708584013003417.Spec : Prop :=
  ∀ n, (P8997708584013003417.a n : ℤ) = A339929 (n + 1)

theorem P8997708584013003417.correct : P8997708584013003417.Spec := by
  intro n
  simp only [A339929, Nat.add_sub_cancel, A339929.P8997708584013003417.a, A339929.P1957762430647391444.a, A059100, A059100.P4969484960020007252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A339929

/-!
# A339930: a(n+1) = a(n-2-a(n)^2) + 1, starting with a(1) = a(2) = a(3) = 0.

The programs for A339930, the canonical program `A339930.P17579193167111232448` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339930 has offset 1).

The definition of A339930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339930.P17579193167111232448

`a(n-(a(n-1)²+3))+1` with `a(0)=0, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A339930

/-- `a(n-(a(n-1)²+3))+1` -/
def P17579193167111232448.Spec : Prop :=
  ∀ n, (P17579193167111232448.a n : ℤ) = A339930 (n + 1)

theorem P17579193167111232448.correct : P17579193167111232448.Spec := by
  intro n
  simp only [A339930, Nat.add_sub_cancel]

end A339930

/-! ## A339930.P391834287100850021

`A001221(or(A056303(n+1), A200262(n+1)))`
-/

namespace A339930.P391834287100850021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A056303 (n + 1)) (A200262 (n + 1))).toNat

end

end A339930.P391834287100850021

namespace A339930

/-- `A001221(or(A056303(n+1), A200262(n+1)))` -/
def P391834287100850021.Spec : Prop :=
  ∀ n, P391834287100850021.a n = A339930 (n + 1)

end A339930

/-! ## A339930.P13690631210707354938

`A037819(A067298(n)+4)`
-/

namespace A339930.P13690631210707354938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (A067298 n + 4).toNat

end

end A339930.P13690631210707354938

namespace A339930

/-- `A037819(A067298(n)+4)` -/
def P13690631210707354938.Spec : Prop :=
  ∀ n, P13690631210707354938.a n = A339930 (n + 1)

end A339930

/-! ## A339930.P1736359464726633036

`A339931(ceil(log2(A274184(2*n+1))))`
-/

namespace A339930.P1736359464726633036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339931 ⌈Real.logb 2 (A274184 (2 * n + 1) : ℝ)⌉.toNat

end

end A339930.P1736359464726633036

namespace A339930

/-- `A339931(ceil(log2(A274184(2*n+1))))` -/
def P1736359464726633036.Spec : Prop :=
  ∀ n, P1736359464726633036.a n = A339930 (n + 1)

end A339930

/-! ## A339930.P15958349989854595719

`A339931(lt[A360068(3*n+4), A025047(n)])`
-/

namespace A339930.P15958349989854595719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360068 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339931 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A339930.P15958349989854595719

namespace A339930

/-- `A339931(lt[A360068(3*n+4), A025047(n)])` -/
def P15958349989854595719.Spec : Prop :=
  ∀ n, P15958349989854595719.a n = A339930 (n + 1)

end A339930

/-!
# A339931: a(n+1) = a(n-3-a(n)^2) + 1, starting with a(1) = a(2) = a(3) = a(4) = 0.

The programs for A339931, there is no canonical definition to state claims against.
-/

/-! ## A339931.P10357207131059932930

`A339932(A036741(n+1)+1)`
-/

namespace A339931.P10357207131059932930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339932 (A036741 (n + 1) + 1).toNat

end

end A339931.P10357207131059932930

/-! ## A339931.P14457474361278446289

`A339932(lt[A048683(3*n+2), A075499(3*n+1)])`
-/

namespace A339931.P14457474361278446289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048683 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075499 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339932 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A339931.P14457474361278446289

/-! ## A339931.P9579052465337764476

`A339932(A036741(n+2))`
-/

namespace A339931.P9579052465337764476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339932 (A036741 (n + 2)).toNat

end

end A339931.P9579052465337764476

/-! ## A339931.P10854199395755225967

`A339932(lt[7, A158983(n+5)])`
-/

namespace A339931.P10854199395755225967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158983 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339932 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A339931.P10854199395755225967

/-! ## A339931.P12035633496875833599

`A339932(lt[A330772(2*(n+2)), A019538(3*n+2)])`
-/

namespace A339931.P12035633496875833599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330772 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019538 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339932 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A339931.P12035633496875833599

/-!
# A339932: a(n+1) = a(n-4-a(n)^2) + 1, starting with a(1) = a(2) = a(3) = a(4) = a(5) = 0.

The programs for A339932, there is no canonical definition to state claims against.
-/

/-! ## A339932.P3862305965919698674

`A076489(A062410(n+1)-A257628(n))`
-/

namespace A339932.P3862305965919698674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (A062410 (n + 1) - A257628 n).toNat

end

end A339932.P3862305965919698674

/-! ## A339932.P15705671549822261722

`A076489(A072411(n+1)+A062410(n+1))`
-/

namespace A339932.P15705671549822261722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (A072411 (n + 1) + A062410 (n + 1)).toNat

end

end A339932.P15705671549822261722

/-! ## A339932.P4956942051152591255

`A076489(A188172(n+2)+A062410(n+1))`
-/

namespace A339932.P4956942051152591255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (A188172 (n + 2) + A062410 (n + 1)).toNat

end

end A339932.P4956942051152591255

/-!
# A339933: Number of partitions of n into two parts with the same sum of divisors.

The programs for A339933, there is no canonical definition to state claims against.
-/

/-! ## A339933.P16597052454344159614

`A307149(A096528(A131791(n)))^A035363(n)`
-/

namespace A339933.P16597052454344159614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307149 (A096528 (A131791 n).toNat).toNat : ℚ) ^ (A035363 n : ℤ)

end

end A339933.P16597052454344159614

/-! ## A339933.P4038256597894815722

`gcd(n%2, A016389(round((n+3)²/12)))`
-/

namespace A339933.P4038256597894815722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 2 : ℕ) : ℤ) (A016389 (SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)).toNat)

end

end A339933.P4038256597894815722

/-! ## A339933.P16914137209147364368

`(n%2)^A004605(A190939(n))`
-/

namespace A339933.P16914137209147364368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℚ) ^ (A004605 (A190939 n).toNat : ℤ)

end

end A339933.P16914137209147364368

/-! ## A339933.P15761197806153236000

`A093709(∏{d}[A019426(n+3), #])`
-/

namespace A339933.P15761197806153236000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A339933.P15761197806153236000

/-! ## A339933.P7195343344417992144

`A339367(2*n+3)^A079977(n)`
-/

namespace A339933.P7195343344417992144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339367 (2 * n + 3) : ℚ) ^ (A079977 n : ℤ)

end

end A339933.P7195343344417992144

/-!
# A339934: Number of compatible pairs (C,O) of coloring functions C:V(G) -> {1,2} and acyclic orientations O over all simple labeled graphs G on n nodes.

The programs for A339934, there is no canonical definition to state claims against.
-/

/-! ## A339934.P8505245931969861255

`A340798(∑[n+3])`
-/

namespace A339934.P8505245931969861255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340798 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339934.P8505245931969861255

/-! ## A339934.P1840167722881865749

`record[A097807(n)*A340798(n)]`
-/

namespace A339934.P1840167722881865749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A340798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339934.P1840167722881865749

/-! ## A339934.P18130031568912436250

`record[A340798(n)*A342770(n)]`
-/

namespace A339934.P18130031568912436250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340798 n * A342770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339934.P18130031568912436250

/-!
# A339936: Odd coreful abundant numbers: the odd terms of A308053.

The programs for A339936, there is no canonical definition to state claims against.
-/

/-! ## A339936.P6136065769854765653

`A094889(ceil(sqrt(A094860(3*(n+1)))))`
-/

namespace A339936.P6136065769854765653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094889 ⌈Real.sqrt (A094860 (3 * (n + 1)) : ℝ)⌉.toNat

end

end A339936.P6136065769854765653

/-!
# A339938: Odd non-coreful abundant numbers: the odd terms of A308127.

The programs for A339938, there is no canonical definition to state claims against.
-/

/-! ## A339938.P6947175753265475859

`A000027(∩[A333950(n+1), A348605(n+1)])`
-/

namespace A339938.P6947175753265475859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348605 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A339938.P6947175753265475859

/-! ## A339938.P15694890676514921774

`∩[A333950(A008407(n+1)%2+n+1), A348605(n+1)]`
-/

namespace A339938.P15694890676514921774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333950 (Int.tmod (A008407 (n + 1)) 2 + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339938.P15694890676514921774

/-! ## A339938.P189858869445379482

`filter[A348605(n+1), A212793(#)]`
-/

namespace A339938.P189858869445379482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A339938.P189858869445379482

/-! ## A339938.P9048319045385788739

`filter[A348605(n+1), A359471(#)]`
-/

namespace A339938.P9048319045385788739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A339938.P9048319045385788739

/-! ## A339938.P8923433987765550807

`∩[A333950(A033677((n+2)*(n+1))), A348605(n+1)]`
-/

namespace A339938.P8923433987765550807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333950 (A033677 ((n + 2) * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339938.P8923433987765550807

/-!
# A339941: Triangle read by rows: T(n,k) is the number of permutations of {1,...,n} whose longest embedded arithmetic progression has length k.

The programs for A339941, there is no canonical definition to state claims against.
-/

/-! ## A339941.P15550346360645299682

`A064672(ceil(2^(n-1))*A132393(n))`
-/

namespace A339941.P15550346360645299682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064672 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A132393 n).toNat

end

end A339941.P15550346360645299682

/-! ## A339941.P16354653055944251505

`A211318(A303948(n+1)%A275246(3*n+4))`
-/

namespace A339941.P16354653055944251505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (Int.tmod (A303948 (n + 1)) (A275246 (3 * n + 4))).toNat

end

end A339941.P16354653055944251505

/-! ## A339941.P6260282107892442317

`A168485(A187557(n))+A001045(A258170(n))`
-/

namespace A339941.P6260282107892442317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168485 (A187557 n).toNat + A001045 (A258170 n).toNat

end

end A339941.P6260282107892442317

/-!
# A339950: Numbers k such that all k-sections of the infinite Fibonacci word A014675 have just two different run-lengths.

The programs for A339950, there is no canonical definition to state claims against.
-/

/-! ## A339950.P4590150530025406912

`round(ϕ*floor(n*ϕ^3))+1`
-/

namespace A339950.P4590150530025406912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (⌊(n : ℝ) * Real.goldenRatio ^ 3⌋ : ℝ)) + 1

end

end A339950.P4590150530025406912

/-! ## A339950.P3888659958045116906

`(floor(2*ϕ*n)+floor(n*(ϕ+2))+1)^floor(atan(n+1))`
-/

namespace A339950.P3888659958045116906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊2 * (Real.goldenRatio * (n : ℝ))⌋ + (⌊(n : ℝ) * (Real.goldenRatio + 2)⌋ + 1) : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ)

end

end A339950.P3888659958045116906

/-! ## A339950.P15166814638736579444

`A007064(comp[ceil(ϕ*n)])`
-/

namespace A339950.P15166814638736579444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A339950.P15166814638736579444

/-! ## A339950.P1176525129035169622

`round(A284621(n+1)+ϕ*n)`
-/

namespace A339950.P1176525129035169622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A284621 (n + 1) : ℝ) + Real.goldenRatio * (n : ℝ))

end

end A339950.P1176525129035169622

/-! ## A339950.P17878548291005567236

`A184658(∑[runs[ceil(n/ϕ^3)]])`
-/

namespace A339950.P17878548291005567236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio ^ 3⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184658 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339950.P17878548291005567236

/-! ## A339950.P4223452441569242680

`A214990(floor(ϕ*comp[ceil(ϕ*n)]))`
-/

namespace A339950.P4223452441569242680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 ⌊Real.goldenRatio * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℝ)⌋.toNat

end

end A339950.P4223452441569242680

/-! ## A339950.P1629370251984529632

`A141105(2*floor(n*ϕ²)+1)/2`
-/

namespace A339950.P1629370251984529632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141105 (2 * ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ + 1).toNat : ℚ) / 2

end

end A339950.P1629370251984529632

/-! ## A339950.P8814144974603710256

`A188010(comp[ceil(ϕ*n)]+round(n*ϕ²))`
-/

namespace A339950.P8814144974603710256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188010 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + SequenceMachineLib.roundAway ((n : ℝ) * Real.goldenRatio ^ 2)).toNat

end

end A339950.P8814144974603710256

/-! ## A339950.P7652905836592015459

`A188188(comp[ceil(ϕ*n)]+round(n*ϕ²))`
-/

namespace A339950.P7652905836592015459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + SequenceMachineLib.roundAway ((n : ℝ) * Real.goldenRatio ^ 2)).toNat

end

end A339950.P7652905836592015459

/-! ## A339950.P3182906170148601197

`A188222(comp[ceil(ϕ*n)]+round(n*ϕ²))`
-/

namespace A339950.P3182906170148601197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188222 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + SequenceMachineLib.roundAway ((n : ℝ) * Real.goldenRatio ^ 2)).toNat

end

end A339950.P3182906170148601197

/-!
# A339951: Similar to A100787, but alternate with addition and multiplication instead. See Comments section for more information.

The programs for A339951, there is no canonical definition to state claims against.
-/

/-! ## A339951.P9898434684623624195

`∩[A026485(n+1), A072011(n+1)]`
-/

namespace A339951.P9898434684623624195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339951.P9898434684623624195

/-! ## A339951.P4988237596678234539

`∩[A072011(n+1), A135604(n+1)]`
-/

namespace A339951.P4988237596678234539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339951.P4988237596678234539

/-! ## A339951.P11047756372080848253

`∩[A026485(n+1), A224399(n+1)]`
-/

namespace A339951.P11047756372080848253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339951.P11047756372080848253

/-!
# A339952: Numbers that are the sum of an even square > 0 and an odd square.

The programs for A339952, the canonical program `A339952.P16856889474786655151` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339952 has offset 1).

The definition of A339952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339952.P12655717221350469710

`A339977(1+n)/2`
-/

namespace A339952.P12655717221350469710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339977 (1 + n) : ℚ) / 2

end

end A339952.P12655717221350469710

namespace A339952

/-- `A339977(1+n)/2` -/
def P12655717221350469710.Spec : Prop :=
  ∀ n, P12655717221350469710.a n = (A339952 (n + 1) : ℚ)

end A339952

/-! ## A339952.P16856889474786655151

`filter[2*n+1, A353814(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A339952

/-- `filter[2*n+1, A353814(#)]` -/
def P16856889474786655151.Spec : Prop :=
  ∀ n, (P16856889474786655151.a n : ℤ) = A339952 (n + 1)

theorem P16856889474786655151.correct : P16856889474786655151.Spec := by
  intro n
  simp only [A339952, Nat.add_sub_cancel]

end A339952

/-! ## A339952.P1828563890014550501

`∩[2*n+1, A097268(n+1)]`
-/

namespace A339952.P1828563890014550501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339952.P1828563890014550501

namespace A339952

/-- `∩[2*n+1, A097268(n+1)]` -/
def P1828563890014550501.Spec : Prop :=
  ∀ n, (P1828563890014550501.a n : ℤ) = A339952 (n + 1)

end A339952

/-! ## A339952.P2373244096412856197

`A000265(A339977(n+1))`
-/

namespace A339952.P2373244096412856197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A339977 (n + 1)).toNat

end

end A339952.P2373244096412856197

namespace A339952

/-- `A000265(A339977(n+1))` -/
def P2373244096412856197.Spec : Prop :=
  ∀ n, P2373244096412856197.a n = A339952 (n + 1)

end A339952

/-! ## A339952.P16553872720456792844

`record[lcm(2, A004431(n+1))/2]`
-/

namespace A339952.P16553872720456792844
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A004431 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339952.P16553872720456792844

namespace A339952

/-- `record[lcm(2, A004431(n+1))/2]` -/
def P16553872720456792844.Spec : Prop :=
  ∀ n, P16553872720456792844.a n = (A339952 (n + 1) : ℚ)

end A339952

/-! ## A339952.P13317638432660494380

`A004431(A024511(n+1))`
-/

namespace A339952.P13317638432660494380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (A024511 (n + 1)).toNat

end

end A339952.P13317638432660494380

namespace A339952

/-- `A004431(A024511(n+1))` -/
def P13317638432660494380.Spec : Prop :=
  ∀ n, P13317638432660494380.a n = A339952 (n + 1)

end A339952

/-! ## A339952.P11205074868626275577

`filter[A000404(n+1), #%2]`
-/

namespace A339952.P11205074868626275577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n)

end

end A339952.P11205074868626275577

namespace A339952

/-- `filter[A000404(n+1), #%2]` -/
def P11205074868626275577.Spec : Prop :=
  ∀ n, P11205074868626275577.a n = A339952 (n + 1)

end A339952

/-! ## A339952.P9765983158914758843

`A000404(A024516(n+1))`
-/

namespace A339952.P9765983158914758843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (A024516 (n + 1)).toNat

end

end A339952.P9765983158914758843

namespace A339952

/-- `A000404(A024516(n+1))` -/
def P9765983158914758843.Spec : Prop :=
  ∀ n, P9765983158914758843.a n = A339952 (n + 1)

end A339952

/-! ## A339952.P6312033074046187532

`4*lt[4, A005883(n)]+1`
-/

namespace A339952.P6312033074046187532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A339952.P6312033074046187532

namespace A339952

/-- `4*lt[4, A005883(n)]+1` -/
def P6312033074046187532.Spec : Prop :=
  ∀ n, (P6312033074046187532.a n : ℤ) = A339952 (n + 1)

end A339952

/-! ## A339952.P11217598106666372136

`∩[A000404(n+1), A016813(n)]`
-/

namespace A339952.P11217598106666372136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339952.P11217598106666372136

namespace A339952

/-- `∩[A000404(n+1), A016813(n)]` -/
def P11217598106666372136.Spec : Prop :=
  ∀ n, (P11217598106666372136.a n : ℤ) = A339952 (n + 1)

end A339952

/-! ## A339952.P943771068463199690

`∩[A004431(n+1), A016813(n)]`
-/

namespace A339952.P943771068463199690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339952.P943771068463199690

namespace A339952

/-- `∩[A004431(n+1), A016813(n)]` -/
def P943771068463199690.Spec : Prop :=
  ∀ n, (P943771068463199690.a n : ℤ) = A339952 (n + 1)

end A339952

/-! ## A339952.P1275857622737190042

`∩[A000404(n+1), A004273(n)]`
-/

namespace A339952.P1275857622737190042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339952.P1275857622737190042

namespace A339952

/-- `∩[A000404(n+1), A004273(n)]` -/
def P1275857622737190042.Spec : Prop :=
  ∀ n, (P1275857622737190042.a n : ℤ) = A339952 (n + 1)

end A339952

/-! ## A339952.P289017055911640786

`∩[A004273(n), A004431(n+1)]`
-/

namespace A339952.P289017055911640786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339952.P289017055911640786

namespace A339952

/-- `∩[A004273(n), A004431(n+1)]` -/
def P289017055911640786.Spec : Prop :=
  ∀ n, (P289017055911640786.a n : ℤ) = A339952 (n + 1)

end A339952

/-! ## A339952.P1794164277154663651

`∩[A000404(n+1), A060747(n)]`
-/

namespace A339952.P1794164277154663651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339952.P1794164277154663651

namespace A339952

/-- `∩[A000404(n+1), A060747(n)]` -/
def P1794164277154663651.Spec : Prop :=
  ∀ n, (P1794164277154663651.a n : ℤ) = A339952 (n + 1)

end A339952

/-! ## A339952.P10866467753624184533

`∩[A000404(n+1), A062545(n)]`
-/

namespace A339952.P10866467753624184533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339952.P10866467753624184533

namespace A339952

/-- `∩[A000404(n+1), A062545(n)]` -/
def P10866467753624184533.Spec : Prop :=
  ∀ n, (P10866467753624184533.a n : ℤ) = A339952 (n + 1)

end A339952

/-! ## A339952.P14056148140406098508

`∩[A004431(n+1), A060747(n)]`
-/

namespace A339952.P14056148140406098508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339952.P14056148140406098508

namespace A339952

/-- `∩[A004431(n+1), A060747(n)]` -/
def P14056148140406098508.Spec : Prop :=
  ∀ n, (P14056148140406098508.a n : ℤ) = A339952 (n + 1)

end A339952

/-! ## A339952.P15793118422548962422

`∩[A004431(n+1), A062545(n)]`
-/

namespace A339952.P15793118422548962422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339952.P15793118422548962422

namespace A339952

/-- `∩[A004431(n+1), A062545(n)]` -/
def P15793118422548962422.Spec : Prop :=
  ∀ n, (P15793118422548962422.a n : ℤ) = A339952 (n + 1)

end A339952

/-! ## A339952.P9528265665975059250

`∩[A004431(n+1), A130773(n)]`
-/

namespace A339952.P9528265665975059250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339952.P9528265665975059250

namespace A339952

/-- `∩[A004431(n+1), A130773(n)]` -/
def P9528265665975059250.Spec : Prop :=
  ∀ n, (P9528265665975059250.a n : ℤ) = A339952 (n + 1)

end A339952

/-! ## A339952.P11739892659861708228

`∩[A004274(n), A004431(n+1)]`
-/

namespace A339952.P11739892659861708228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339952.P11739892659861708228

namespace A339952

/-- `∩[A004274(n), A004431(n+1)]` -/
def P11739892659861708228.Spec : Prop :=
  ∀ n, (P11739892659861708228.a n : ℤ) = A339952 (n + 1)

end A339952

/-! ## A339952.P3366388252538086123

`∩[A004276(n), A004431(n+1)]`
-/

namespace A339952.P3366388252538086123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339952.P3366388252538086123

namespace A339952

/-- `∩[A004276(n), A004431(n+1)]` -/
def P3366388252538086123.Spec : Prop :=
  ∀ n, (P3366388252538086123.a n : ℤ) = A339952 (n + 1)

end A339952

/-!
# A339953: Primes of the form (p + 2*q + r)/6 where p, q and r are consecutive primes.

The programs for A339953, there is no canonical definition to state claims against.
-/

/-! ## A339953.P12258563396688037500

`(A151799(A339954(n+1))+2*A339954(n+1)+A151800(A339954(n+1)))/6`
-/

namespace A339953.P12258563396688037500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151799 (A339954 (n + 1)).toNat + 2 * A339954 (n + 1) + A151800 (A339954 (n + 1)).toNat : ℚ) / 6

end

end A339953.P12258563396688037500

/-! ## A339953.P6461244599845297482

`p?[A175676(A096277(n+2)/2)]`
-/

namespace A339953.P6461244599845297482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (SequenceMachineLib.roundAway ((A096277 (n + 2) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339953.P6461244599845297482

/-! ## A339953.P5757657291795540380

`p?[A283443(A096277(n+1))]`
-/

namespace A339953.P5757657291795540380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283443 (A096277 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339953.P5757657291795540380

/-! ## A339953.P15899722581199354887

`A155916(lt[0, A079197(n+1)])`
-/

namespace A339953.P15899722581199354887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155916 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A339953.P15899722581199354887

/-! ## A339953.P10296079763529463960

`p?[A333638(A333694(2*n+1))]`
-/

namespace A339953.P10296079763529463960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333638 (A333694 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339953.P10296079763529463960

/-!
# A339954: Primes q such that (p+2*q+r)/6 is a prime, where p,q,r are consecutive primes.

The programs for A339954, there is no canonical definition to state claims against.
-/

/-! ## A339954.P11824849824163462629

`A076272(3*A339953(n+1))`
-/

namespace A339954.P11824849824163462629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (3 * A339953 (n + 1)).toNat

end

end A339954.P11824849824163462629

/-! ## A339954.P5324109315612876053

`A076272(lcm(3, A339953(n+1)))`
-/

namespace A339954.P5324109315612876053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (Int.lcm 3 (A339953 (n + 1)))

end

end A339954.P5324109315612876053

/-!
# A339956: Numbers that are the sum of an even square s and an odd square t such that 0 < s < t.

The programs for A339956, there is no canonical definition to state claims against.
-/

/-! ## A339956.P4967388342049629343

`A166409(A065941(n)*A202057(n+1))`
-/

namespace A339956.P4967388342049629343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166409 (A065941 n * A202057 (n + 1)).toNat

end

end A339956.P4967388342049629343

/-!
# A339957: Primes in A240860 (up to sign).

The programs for A339957, there is no canonical definition to state claims against.
-/

/-! ## A339957.P16890622421395586026

`p?[p?[round(8*n/7)]²-a(n-1)]` with `a(0)=4`
-/

namespace A339957.P16890622421395586026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339957.P16890622421395586026

/-! ## A339957.P2996390370633083271

`p?[abs(A240860(n+1))]`
-/

namespace A339957.P2996390370633083271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A240860 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339957.P2996390370633083271

/-! ## A339957.P4152737842236549883

`p?[-A240860(n+2)]`
-/

namespace A339957.P4152737842236549883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A240860 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339957.P4152737842236549883

/-! ## A339957.P608123816004699398

`p?[∑[A069482(2*n+1)]]`
-/

namespace A339957.P608123816004699398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069482 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339957.P608123816004699398

/-! ## A339957.P2220786382026769237

`p?[A000040(n)²-a(n-1)]` with `a(0)=0`
-/

namespace A339957.P2220786382026769237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000040 n ^ 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339957.P2220786382026769237

/-!
# A339958: Composite numbers that are the sum of an even square > 0 and an odd square.

The programs for A339958, there is no canonical definition to state claims against.
-/

/-! ## A339958.P9576078180083883989

`filter[A339952(n+1), A005171(#)]`
-/

namespace A339958.P9576078180083883989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A339958.P9576078180083883989

/-! ## A339958.P15796373413916308782

`filter[A014076(n+1), A353814(#)]`
-/

namespace A339958.P15796373413916308782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A339958.P15796373413916308782

/-! ## A339958.P13627702816642615088

`filter[A000404(n+1), A373978(#)]`
-/

namespace A339958.P13627702816642615088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A339958.P13627702816642615088

/-! ## A339958.P16950266598938981419

`filter[A004431(n+1), A373978(#)]`
-/

namespace A339958.P16950266598938981419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A339958.P16950266598938981419

/-! ## A339958.P11403474660667352571

`filter[A339952(n+1), A066247(#)]`
-/

namespace A339958.P11403474660667352571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A339958.P11403474660667352571

/-! ## A339958.P17757135247877094147

`filter[A054520(n+1), A353814(#)]`
-/

namespace A339958.P17757135247877094147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A339958.P17757135247877094147

/-! ## A339958.P8877087186181099394

`filter[A071904(n+1), A353814(#)]`
-/

namespace A339958.P8877087186181099394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A339958.P8877087186181099394

/-! ## A339958.P1104135135959132381

`filter[A091113(n+1), A353814(#)]`
-/

namespace A339958.P1104135135959132381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A339958.P1104135135959132381

/-! ## A339958.P2682867730046723441

`filter[A085989(n+1), A373978(#)]`
-/

namespace A339958.P2682867730046723441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A339958.P2682867730046723441

/-! ## A339958.P8289594913139495531

`filter[A097268(n+1), A373978(#)]`
-/

namespace A339958.P8289594913139495531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A339958.P8289594913139495531

/-!
# A339959: Number of times the n-th prime (=A000040(n)) occurs in A033932.

The programs for A339959, there is no canonical definition to state claims against.
-/

/-! ## A339959.P15853175971495219165

`A162642(Δ[A131269(A001068(n))])`
-/

namespace A339959.P15853175971495219165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131269 (A001068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (f1 (n + 1) - f1 n).toNat

end

end A339959.P15853175971495219165

/-! ## A339959.P17740775680285636650

`A105970(A103922(n))%A002024(n+1)`
-/

namespace A339959.P17740775680285636650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105970 (A103922 n).toNat) (A002024 (n + 1))

end

end A339959.P17740775680285636650

/-! ## A339959.P9737117952126918560

`A056169(A218842(n+5)+A015888(n+2))`
-/

namespace A339959.P9737117952126918560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A218842 (n + 5) + A015888 (n + 2)).toNat

end

end A339959.P9737117952126918560

/-! ## A339959.P10062429980209261385

`A196563(xor(A000677(n+1), A363323(3*n+5)))`
-/

namespace A339959.P10062429980209261385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (Int.xor (A000677 (n + 1)) (A363323 (3 * n + 5))).toNat

end

end A339959.P10062429980209261385

/-! ## A339959.P4634850289369514710

`A000120(A000120(A328627(n)-A046523(n+1)))`
-/

namespace A339959.P4634850289369514710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 (A328627 n - A046523 (n + 1)).toNat).toNat

end

end A339959.P4634850289369514710

/-!
# A339960: Number of Hamiltonian circuits within parallelograms of size 8 X n on the triangular lattice.

The programs for A339960, there is no canonical definition to state claims against.
-/

/-! ## A339960.P3183596663807359318

`A339849(∑[a(n-1)+1])` with `a(0)=16, a(1)=15, a(2)=9, a(3)=10`
-/

namespace A339960.P3183596663807359318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [16, 15, 9, 10] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339849 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339960.P3183596663807359318

/-! ## A339960.P2195140507822351689

`A339849(A052905(n+4))`
-/

namespace A339960.P2195140507822351689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339849 (A052905 (n + 4)).toNat

end

end A339960.P2195140507822351689

/-!
# A339961: Number of Hamiltonian circuits within parallelograms of size 9 X n on the triangular lattice.

The programs for A339961, there is no canonical definition to state claims against.
-/

/-! ## A339961.P4240094104030625965

`A339849(A055999(n+5))`
-/

namespace A339961.P4240094104030625965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339849 (A055999 (n + 5)).toNat

end

end A339961.P4240094104030625965

/-!
# A339963: Numbers k such that gcd(k+1, sigma(k)) is 2.

The programs for A339963, the canonical program `A339963.P3504095214117337205` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339963 has offset 1).

The definition of A339963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6031 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339963.P3504095214117337205

`eq[2, A339964(n+2)]+2`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A339963

/-- `eq[2, A339964(n+2)]+2` -/
def P3504095214117337205.Spec : Prop :=
  ∀ n, (P3504095214117337205.a n : ℤ) = A339963 (n + 1)

theorem P3504095214117337205.correct : P3504095214117337205.Spec := by
  intro n
  simp only [A339963, Nat.add_sub_cancel]

end A339963

/-! ## A339963.P3577884554923298064

`eq[2, gcd(n+2, A000203(n+1))]+1`
-/

namespace A339963.P3577884554923298064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A000203 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A339963.P3577884554923298064

namespace A339963

/-- `eq[2, gcd(n+2, A000203(n+1))]+1` -/
def P3577884554923298064.Spec : Prop :=
  ∀ n, (P3577884554923298064.a n : ℤ) = A339963 (n + 1)

end A339963

/-! ## A339963.P13539342576032281755

`A020742(eq[2, A339964(A020742(n))])`
-/

namespace A339963.P13539342576032281755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339964 (A020742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339963.P13539342576032281755

namespace A339963

/-- `A020742(eq[2, A339964(A020742(n))])` -/
def P13539342576032281755.Spec : Prop :=
  ∀ n, P13539342576032281755.a n = A339963 (n + 1)

end A339963

/-! ## A339963.P13633779789336013622

`A005408(eq[n+1, A339966(2*n+1)])`
-/

namespace A339963.P13633779789336013622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339966 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339963.P13633779789336013622

namespace A339963

/-- `A005408(eq[n+1, A339966(2*n+1)])` -/
def P13633779789336013622.Spec : Prop :=
  ∀ n, P13633779789336013622.a n = A339963 (n + 1)

end A339963

/-! ## A339963.P5614145438540600981

`A005408(eq[2, A339964(A005408(n))])`
-/

namespace A339963.P5614145438540600981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339964 (A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339963.P5614145438540600981

namespace A339963

/-- `A005408(eq[2, A339964(A005408(n))])` -/
def P5614145438540600981.Spec : Prop :=
  ∀ n, P5614145438540600981.a n = A339963 (n + 1)

end A339963

/-! ## A339963.P14622167646980862538

`A020725(eq[2, A339964(n+1)])`
-/

namespace A339963.P14622167646980862538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339963.P14622167646980862538

namespace A339963

/-- `A020725(eq[2, A339964(n+1)])` -/
def P14622167646980862538.Spec : Prop :=
  ∀ n, P14622167646980862538.a n = A339963 (n + 1)

end A339963

/-! ## A339963.P543097471554599688

`A065475(eq[2, A339964(n+1)])`
-/

namespace A339963.P543097471554599688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339963.P543097471554599688

namespace A339963

/-- `A065475(eq[2, A339964(n+1)])` -/
def P543097471554599688.Spec : Prop :=
  ∀ n, P543097471554599688.a n = A339963 (n + 1)

end A339963

/-! ## A339963.P15495629883611819090

`A098180(eq[2, A339964(n+1)])`
-/

namespace A339963.P15495629883611819090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339963.P15495629883611819090

namespace A339963

/-- `A098180(eq[2, A339964(n+1)])` -/
def P15495629883611819090.Spec : Prop :=
  ∀ n, P15495629883611819090.a n = A339963 (n + 1)

end A339963

/-! ## A339963.P11239267840889265731

`A114637(eq[2, A339964(n+1)])`
-/

namespace A339963.P11239267840889265731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339963.P11239267840889265731

namespace A339963

/-- `A114637(eq[2, A339964(n+1)])` -/
def P11239267840889265731.Spec : Prop :=
  ∀ n, P11239267840889265731.a n = A339963 (n + 1)

end A339963

/-! ## A339963.P11588650957057470265

`A020725(eq[2*A339966(n+1), n+2])`
-/

namespace A339963.P11588650957057470265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339966 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n)

end

end A339963.P11588650957057470265

namespace A339963

/-- `A020725(eq[2*A339966(n+1), n+2])` -/
def P11588650957057470265.Spec : Prop :=
  ∀ n, P11588650957057470265.a n = A339963 (n + 1)

end A339963

/-! ## A339963.P29980028257618684

`A020725(eq[2, (n+2)/A339966(n+1)])`
-/

namespace A339963.P29980028257618684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A339966 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A339963.P29980028257618684

namespace A339963

/-- `A020725(eq[2, (n+2)/A339966(n+1)])` -/
def P29980028257618684.Spec : Prop :=
  ∀ n, P29980028257618684.a n = A339963 (n + 1)

end A339963

/-!
# A339964: a(n) = gcd(sigma(n), n+1).

The programs for A339964, the canonical program `A339964.P1584239668210612119` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339964 has offset 1).

The definition of A339964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000203(n+1), n+2)` (program `A339964.P1584239668210612119`, by `A339964.P1584239668210612119.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A339964.P1584239668210612119

`gcd(A000203(n+1), n+2)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A339964

/-- `gcd(A000203(n+1), n+2)` -/
def P1584239668210612119.Spec : Prop :=
  ∀ n, (P1584239668210612119.a n : ℤ) = A339964 (n + 1)

theorem P1584239668210612119.correct : P1584239668210612119.Spec := by
  intro n
  simp only [A339964, Nat.add_sub_cancel]

end A339964

/-! ## A339964.P13676029785798534846

`gcd(2+n, ∑{d}[n+1, #])`
-/

namespace A339964.P13676029785798534846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 + n) (∑ d ∈ Nat.divisors (f1 n), d)

end

end A339964.P13676029785798534846

namespace A339964

/-- `gcd(2+n, ∑{d}[n+1, #])` -/
def P13676029785798534846.Spec : Prop :=
  ∀ n, (P13676029785798534846.a n : ℤ) = A339964 (n + 1)

end A339964

/-! ## A339964.P14044635517286945795

`gcd(n+2, Δ[A160664(n)])`
-/

namespace A339964.P14044635517286945795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (f1 (n + 1) - f1 n)

end

end A339964.P14044635517286945795

namespace A339964

/-- `gcd(n+2, Δ[A160664(n)])` -/
def P14044635517286945795.Spec : Prop :=
  ∀ n, (P14044635517286945795.a n : ℤ) = A339964 (n + 1)

end A339964

/-! ## A339964.P3620743614446525956

`(n+2)/A339966(n+1)`
-/

namespace A339964.P3620743614446525956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A339966 (n + 1) : ℚ)

end

end A339964.P3620743614446525956

namespace A339964

/-- `(n+2)/A339966(n+1)` -/
def P3620743614446525956.Spec : Prop :=
  ∀ n, P3620743614446525956.a n = (A339964 (n + 1) : ℚ)

end A339964

/-! ## A339964.P4080089765177158431

`gcd(2+n, A000203(n+1))`
-/

namespace A339964.P4080089765177158431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 + n : ℤ) (A000203 (n + 1))

end

end A339964.P4080089765177158431

namespace A339964

/-- `gcd(2+n, A000203(n+1))` -/
def P4080089765177158431.Spec : Prop :=
  ∀ n, (P4080089765177158431.a n : ℤ) = A339964 (n + 1)

end A339964

/-! ## A339964.P2152551321660110649

`gcd(Δ[A330725(n)], A020725(n+1))`
-/

namespace A339964.P2152551321660110649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A020725 (n + 1))

end

end A339964.P2152551321660110649

namespace A339964

/-- `gcd(Δ[A330725(n)], A020725(n+1))` -/
def P2152551321660110649.Spec : Prop :=
  ∀ n, (P2152551321660110649.a n : ℤ) = A339964 (n + 1)

end A339964

/-! ## A339964.P7839669291116740179

`A000203(n+1)/A339965(n+1)`
-/

namespace A339964.P7839669291116740179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A339965 (n + 1) : ℚ)

end

end A339964.P7839669291116740179

namespace A339964

/-- `A000203(n+1)/A339965(n+1)` -/
def P7839669291116740179.Spec : Prop :=
  ∀ n, P7839669291116740179.a n = (A339964 (n + 1) : ℚ)

end A339964

/-! ## A339964.P2733617499522216628

`gcd(A017665(n+1), A048050(n+1))`
-/

namespace A339964.P2733617499522216628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017665 (n + 1)) (A048050 (n + 1))

end

end A339964.P2733617499522216628

namespace A339964

/-- `gcd(A017665(n+1), A048050(n+1))` -/
def P2733617499522216628.Spec : Prop :=
  ∀ n, (P2733617499522216628.a n : ℤ) = A339964 (n + 1)

end A339964

/-! ## A339964.P12241164298287121179

`gcd(A009242(n+1), A065475(n+1))`
-/

namespace A339964.P12241164298287121179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009242 (n + 1)) (A065475 (n + 1))

end

end A339964.P12241164298287121179

namespace A339964

/-- `gcd(A009242(n+1), A065475(n+1))` -/
def P12241164298287121179.Spec : Prop :=
  ∀ n, (P12241164298287121179.a n : ℤ) = A339964 (n + 1)

end A339964

/-! ## A339964.P9699642653696189129

`gcd(A064987(n+1), A114637(n+1))`
-/

namespace A339964.P9699642653696189129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064987 (n + 1)) (A114637 (n + 1))

end

end A339964.P9699642653696189129

namespace A339964

/-- `gcd(A064987(n+1), A114637(n+1))` -/
def P9699642653696189129.Spec : Prop :=
  ∀ n, (P9699642653696189129.a n : ℤ) = A339964 (n + 1)

end A339964

/-! ## A339964.P14879812313822919273

`gcd(A087156(n+1)+1, A272211(n+1))`
-/

namespace A339964.P14879812313822919273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087156 (n + 1) + 1) (A272211 (n + 1))

end

end A339964.P14879812313822919273

namespace A339964

/-- `gcd(A087156(n+1)+1, A272211(n+1))` -/
def P14879812313822919273.Spec : Prop :=
  ∀ n, (P14879812313822919273.a n : ℤ) = A339964 (n + 1)

end A339964

/-! ## A339964.P5392422693018544101

`gcd(1-A171463(n+1), A143348(n+1))`
-/

namespace A339964.P5392422693018544101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A171463 (n + 1)) (A143348 (n + 1))

end

end A339964.P5392422693018544101

namespace A339964

/-- `gcd(1-A171463(n+1), A143348(n+1))` -/
def P5392422693018544101.Spec : Prop :=
  ∀ n, (P5392422693018544101.a n : ℤ) = A339964 (n + 1)

end A339964

/-! ## A339964.P12637353163803382708

`gcd(A000027(n+2), A245092(2*n+1))`
-/

namespace A339964.P12637353163803382708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 2)) (A245092 (2 * n + 1))

end

end A339964.P12637353163803382708

namespace A339964

/-- `gcd(A000027(n+2), A245092(2*n+1))` -/
def P12637353163803382708.Spec : Prop :=
  ∀ n, (P12637353163803382708.a n : ℤ) = A339964 (n + 1)

end A339964

/-! ## A339964.P8014136749425336134

`gcd(A155085(n+1)+1, lcm(n+2, A280193(n)))`
-/

namespace A339964.P8014136749425336134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A155085 (n + 1) + 1) (Int.lcm (n + 2 : ℤ) (A280193 n) : ℤ)

end

end A339964.P8014136749425336134

namespace A339964

/-- `gcd(A155085(n+1)+1, lcm(n+2, A280193(n)))` -/
def P8014136749425336134.Spec : Prop :=
  ∀ n, (P8014136749425336134.a n : ℤ) = A339964 (n + 1)

end A339964

/-! ## A339964.P11821740834803419471

`gcd(A146076(n+1)+A000593(n+1), A028310(n)+2)`
-/

namespace A339964.P11821740834803419471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A146076 (n + 1) + A000593 (n + 1)) (A028310 n + 2)

end

end A339964.P11821740834803419471

namespace A339964

/-- `gcd(A146076(n+1)+A000593(n+1), A028310(n)+2)` -/
def P11821740834803419471.Spec : Prop :=
  ∀ n, (P11821740834803419471.a n : ℤ) = A339964 (n + 1)

end A339964

/-! ## A339964.P6182807574342565998

`gcd(A143348(n+1), A165754(A165754(n)))`
-/

namespace A339964.P6182807574342565998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143348 (n + 1)) (A165754 (A165754 n).toNat)

end

end A339964.P6182807574342565998

namespace A339964

/-- `gcd(A143348(n+1), A165754(A165754(n)))` -/
def P6182807574342565998.Spec : Prop :=
  ∀ n, (P6182807574342565998.a n : ℤ) = A339964 (n + 1)

end A339964

/-! ## A339964.P4740676051736847807

`gcd(A114637(n+1)+A076722(n+1), A076722(n+1))`
-/

namespace A339964.P4740676051736847807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114637 (n + 1) + A076722 (n + 1)) (A076722 (n + 1))

end

end A339964.P4740676051736847807

namespace A339964

/-- `gcd(A114637(n+1)+A076722(n+1), A076722(n+1))` -/
def P4740676051736847807.Spec : Prop :=
  ∀ n, (P4740676051736847807.a n : ℤ) = A339964 (n + 1)

end A339964

/-! ## A339964.P2213818377192053162

`gcd(A103517(n+1), A146076(2*(n+1)))/2`
-/

namespace A339964.P2213818377192053162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A103517 (n + 1)) (A146076 (2 * (n + 1))) : ℚ) / 2

end

end A339964.P2213818377192053162

namespace A339964

/-- `gcd(A103517(n+1), A146076(2*(n+1)))/2` -/
def P2213818377192053162.Spec : Prop :=
  ∀ n, P2213818377192053162.a n = (A339964 (n + 1) : ℚ)

end A339964

/-!
# A339965: a(n) = sigma(n) / gcd(sigma(n),n+1).

The programs for A339965, the canonical program `A339965.P9828748357291040484` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339965 has offset 1).

The definition of A339965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A339965.P9828748357291040484

`A000203(n+1)/A339964(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A339965

/-- `A000203(n+1)/A339964(n+1)` -/
def P9828748357291040484.Spec : Prop :=
  ∀ n, P9828748357291040484.a n = (A339965 (n + 1) : ℚ)

end A339965

/-! ## A339965.P6744169129321797387

`A000203(n+1)/gcd(A000203(n+1), n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A339965.P6744169129321797387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (n + 2 : ℤ) : ℚ)

end

end A339965.P6744169129321797387

namespace A339965

/-- `A000203(n+1)/gcd(A000203(n+1), n+2)` -/
def P6744169129321797387.Spec : Prop :=
  ∀ n, P6744169129321797387.a n = (A339965 (n + 1) : ℚ)

end A339965

/-! ## A339965.P6451483465151338104

`lcm(n+2, ∑{d}[n+1, #])/(n+2)`
-/

namespace A339965.P6451483465151338104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) (∑ d ∈ Nat.divisors (f1 n), d) : ℚ) / (n + 2 : ℚ)

end

end A339965.P6451483465151338104

namespace A339965

/-- `lcm(n+2, ∑{d}[n+1, #])/(n+2)` -/
def P6451483465151338104.Spec : Prop :=
  ∀ n, P6451483465151338104.a n = (A339965 (n + 1) : ℚ)

end A339965

/-! ## A339965.P16451621826830630736

`Δ[A160664(n)]/A339964(n+1)`
-/

namespace A339965.P16451621826830630736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A339964 (n + 1) : ℚ)

end

end A339965.P16451621826830630736

namespace A339965

/-- `Δ[A160664(n)]/A339964(n+1)` -/
def P16451621826830630736.Spec : Prop :=
  ∀ n, P16451621826830630736.a n = (A339965 (n + 1) : ℚ)

end A339965

/-! ## A339965.P6787848213605840863

`sqrt(A072861(n+1))/A339964(n+1)`
-/

namespace A339965.P6787848213605840863
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) / (A339964 (n + 1) : ℝ)

end

end A339965.P6787848213605840863

namespace A339965

/-- `sqrt(A072861(n+1))/A339964(n+1)` -/
def P6787848213605840863.Spec : Prop :=
  ∀ n, P6787848213605840863.a n = (A339965 (n + 1) : ℝ)

end A339965

/-! ## A339965.P9964952410904112880

`(A065475(n+1)+A048050(n+1))/A339964(n+1)`
-/

namespace A339965.P9964952410904112880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065475 (n + 1) + A048050 (n + 1) : ℚ) / (A339964 (n + 1) : ℚ)

end

end A339965.P9964952410904112880

namespace A339965

/-- `(A065475(n+1)+A048050(n+1))/A339964(n+1)` -/
def P9964952410904112880.Spec : Prop :=
  ∀ n, P9964952410904112880.a n = (A339965 (n + 1) : ℚ)

end A339965

/-! ## A339965.P6994791772187859984

`A009194(n+1)*A017665(n+1)/A339964(n+1)`
-/

namespace A339965.P6994791772187859984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009194 (n + 1) * A017665 (n + 1) : ℚ) / (A339964 (n + 1) : ℚ)

end

end A339965.P6994791772187859984

namespace A339965

/-- `A009194(n+1)*A017665(n+1)/A339964(n+1)` -/
def P6994791772187859984.Spec : Prop :=
  ∀ n, P6994791772187859984.a n = (A339965 (n + 1) : ℚ)

end A339965

/-! ## A339965.P1940047543975671003

`A146076(2*(n+1))/gcd(A103517(n+1), A146076(2*(n+1)))`
-/

namespace A339965.P1940047543975671003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146076 (2 * (n + 1)) : ℚ) / (Int.gcd (A103517 (n + 1)) (A146076 (2 * (n + 1))) : ℚ)

end

end A339965.P1940047543975671003

namespace A339965

/-- `A146076(2*(n+1))/gcd(A103517(n+1), A146076(2*(n+1)))` -/
def P1940047543975671003.Spec : Prop :=
  ∀ n, P1940047543975671003.a n = (A339965 (n + 1) : ℚ)

end A339965

/-!
# A339966: a(n) = (n+1) / gcd(sigma(n),n+1).

The programs for A339966, the canonical program `A339966.P4789354929879660060` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339966 has offset 1).

The definition of A339966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A339966.P4789354929879660060

`(n+2)/A339964(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A339966

/-- `(n+2)/A339964(n+1)` -/
def P4789354929879660060.Spec : Prop :=
  ∀ n, P4789354929879660060.a n = (A339966 (n + 1) : ℚ)

end A339966

/-! ## A339966.P7505652605503829213

`(n+2)/gcd(A000203(n+1), n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A339966.P7505652605503829213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Int.gcd (A000203 (n + 1)) (n + 2 : ℤ) : ℚ)

end

end A339966.P7505652605503829213

namespace A339966

/-- `(n+2)/gcd(A000203(n+1), n+2)` -/
def P7505652605503829213.Spec : Prop :=
  ∀ n, P7505652605503829213.a n = (A339966 (n + 1) : ℚ)

end A339966

/-! ## A339966.P13382822338505955947

`(n+2)/gcd(n+2, ∑{d}[n+1, #])`
-/

namespace A339966.P13382822338505955947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Nat.gcd (n + 2) (∑ d ∈ Nat.divisors (f1 n), d) : ℚ)

end

end A339966.P13382822338505955947

namespace A339966

/-- `(n+2)/gcd(n+2, ∑{d}[n+1, #])` -/
def P13382822338505955947.Spec : Prop :=
  ∀ n, P13382822338505955947.a n = (A339966 (n + 1) : ℚ)

end A339966

/-! ## A339966.P2311777237547511926

`(n+2)/gcd(A048050(n+1), A065475(n+1))`
-/

namespace A339966.P2311777237547511926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Int.gcd (A048050 (n + 1)) (A065475 (n + 1)) : ℚ)

end

end A339966.P2311777237547511926

namespace A339966

/-- `(n+2)/gcd(A048050(n+1), A065475(n+1))` -/
def P2311777237547511926.Spec : Prop :=
  ∀ n, P2311777237547511926.a n = (A339966 (n + 1) : ℚ)

end A339966

/-! ## A339966.P8783343697278755937

`lcm(n+2, A000203(2*n+1-n))/A000203(n+1)`
-/

namespace A339966.P8783343697278755937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 2 : ℤ) (A000203 (2 * n + 1 - n)) : ℚ) / (A000203 (n + 1) : ℚ)

end

end A339966.P8783343697278755937

namespace A339966

/-- `lcm(n+2, A000203(2*n+1-n))/A000203(n+1)` -/
def P8783343697278755937.Spec : Prop :=
  ∀ n, P8783343697278755937.a n = (A339966 (n + 1) : ℚ)

end A339966

/-! ## A339966.P13311959202353358987

`A020725(n+1)/gcd(A020725(n+1), A143348(n+1))`
-/

namespace A339966.P13311959202353358987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (n + 1) : ℚ) / (Int.gcd (A020725 (n + 1)) (A143348 (n + 1)) : ℚ)

end

end A339966.P13311959202353358987

namespace A339966

/-- `A020725(n+1)/gcd(A020725(n+1), A143348(n+1))` -/
def P13311959202353358987.Spec : Prop :=
  ∀ n, P13311959202353358987.a n = (A339966 (n + 1) : ℚ)

end A339966

/-! ## A339966.P9144640304912505128

`A000027(n+2)/gcd(A000027(n+2), A017665(n+1))`
-/

namespace A339966.P9144640304912505128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 2) : ℚ) / (Int.gcd (A000027 (n + 2)) (A017665 (n + 1)) : ℚ)

end

end A339966.P9144640304912505128

namespace A339966

/-- `A000027(n+2)/gcd(A000027(n+2), A017665(n+1))` -/
def P9144640304912505128.Spec : Prop :=
  ∀ n, P9144640304912505128.a n = (A339966 (n + 1) : ℚ)

end A339966

/-! ## A339966.P14778599251088057725

`lcm(A022998(n+2), A074400(n+1))/A074400(n+1)`
-/

namespace A339966.P14778599251088057725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A022998 (n + 2)) (A074400 (n + 1)) : ℚ) / (A074400 (n + 1) : ℚ)

end

end A339966.P14778599251088057725

namespace A339966

/-- `lcm(A022998(n+2), A074400(n+1))/A074400(n+1)` -/
def P14778599251088057725.Spec : Prop :=
  ∀ n, P14778599251088057725.a n = (A339966 (n + 1) : ℚ)

end A339966

/-! ## A339966.P12924405080724016067

`lcm(A076722(n+1), A131738(n+1))/A076722(n+1)`
-/

namespace A339966.P12924405080724016067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A076722 (n + 1)) (A131738 (n + 1)) : ℚ) / (A076722 (n + 1) : ℚ)

end

end A339966.P12924405080724016067

namespace A339966

/-- `lcm(A076722(n+1), A131738(n+1))/A076722(n+1)` -/
def P12924405080724016067.Spec : Prop :=
  ∀ n, P12924405080724016067.a n = (A339966 (n + 1) : ℚ)

end A339966

/-! ## A339966.P12640287485365931735

`A103517(n+1)/gcd(A103517(n+1), A146076(2*(n+1)))`
-/

namespace A339966.P12640287485365931735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 (n + 1) : ℚ) / (Int.gcd (A103517 (n + 1)) (A146076 (2 * (n + 1))) : ℚ)

end

end A339966.P12640287485365931735

namespace A339966

/-- `A103517(n+1)/gcd(A103517(n+1), A146076(2*(n+1)))` -/
def P12640287485365931735.Spec : Prop :=
  ∀ n, P12640287485365931735.a n = (A339966 (n + 1) : ℚ)

end A339966

/-!
# A339967: a(n) = gcd(sigma(n), n+2).

The programs for A339967, the canonical program `A339967.P7080650431531726574` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339967 has offset 1).

The definition of A339967 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000203(n+1), n+3)` (program `A339967.P7080650431531726574`, by `A339967.P7080650431531726574.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A339967.P7080650431531726574

`gcd(A000203(n+1), n+3)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A339967

/-- `gcd(A000203(n+1), n+3)` -/
def P7080650431531726574.Spec : Prop :=
  ∀ n, (P7080650431531726574.a n : ℤ) = A339967 (n + 1)

theorem P7080650431531726574.correct : P7080650431531726574.Spec := by
  intro n
  simp only [A339967, Nat.add_sub_cancel]

end A339967

/-! ## A339967.P12707503744941514315

`gcd(n+3, ∑{d}[n+1, #])`
-/

namespace A339967.P12707503744941514315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 3) (∑ d ∈ Nat.divisors (f1 n), d)

end

end A339967.P12707503744941514315

namespace A339967

/-- `gcd(n+3, ∑{d}[n+1, #])` -/
def P12707503744941514315.Spec : Prop :=
  ∀ n, (P12707503744941514315.a n : ℤ) = A339967 (n + 1)

end A339967

/-! ## A339967.P8743103247717433251

`gcd(n+3, Δ[A160664(n)])`
-/

namespace A339967.P8743103247717433251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (f1 (n + 1) - f1 n)

end

end A339967.P8743103247717433251

namespace A339967

/-- `gcd(n+3, Δ[A160664(n)])` -/
def P8743103247717433251.Spec : Prop :=
  ∀ n, (P8743103247717433251.a n : ℤ) = A339967 (n + 1)

end A339967

/-! ## A339967.P16062454437511471730

`gcd(3+n, A000203(n+1))`
-/

namespace A339967.P16062454437511471730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 + n : ℤ) (A000203 (n + 1))

end

end A339967.P16062454437511471730

namespace A339967

/-- `gcd(3+n, A000203(n+1))` -/
def P16062454437511471730.Spec : Prop :=
  ∀ n, (P16062454437511471730.a n : ℤ) = A339967 (n + 1)

end A339967

/-! ## A339967.P6519631650201263504

`gcd(A143348(n+1), A171463(n+1))`
-/

namespace A339967.P6519631650201263504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143348 (n + 1)) (A171463 (n + 1))

end

end A339967.P6519631650201263504

namespace A339967

/-- `gcd(A143348(n+1), A171463(n+1))` -/
def P6519631650201263504.Spec : Prop :=
  ∀ n, (P6519631650201263504.a n : ℤ) = A339967 (n + 1)

end A339967

/-! ## A339967.P18083017967403898924

`gcd(A243427(n+1), A339965(n+1))`
-/

namespace A339967.P18083017967403898924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A243427 (n + 1)) (A339965 (n + 1))

end

end A339967.P18083017967403898924

namespace A339967

/-- `gcd(A243427(n+1), A339965(n+1))` -/
def P18083017967403898924.Spec : Prop :=
  ∀ n, (P18083017967403898924.a n : ℤ) = A339967 (n + 1)

end A339967

/-! ## A339967.P17581601600485977872

`gcd(A339965(n+1)+A321883(n+1), A321883(n+1))`
-/

namespace A339967.P17581601600485977872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A339965 (n + 1) + A321883 (n + 1)) (A321883 (n + 1))

end

end A339967.P17581601600485977872

namespace A339967

/-- `gcd(A339965(n+1)+A321883(n+1), A321883(n+1))` -/
def P17581601600485977872.Spec : Prop :=
  ∀ n, (P17581601600485977872.a n : ℤ) = A339967 (n + 1)

end A339967

/-! ## A339967.P7527251822691809460

`gcd(1-A048050(n+1), A065475(A065475(n+1)))`
-/

namespace A339967.P7527251822691809460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A048050 (n + 1)) (A065475 (A065475 (n + 1)).toNat)

end

end A339967.P7527251822691809460

namespace A339967

/-- `gcd(1-A048050(n+1), A065475(A065475(n+1)))` -/
def P7527251822691809460.Spec : Prop :=
  ∀ n, (P7527251822691809460.a n : ℤ) = A339967 (n + 1)

end A339967

/-! ## A339967.P6492288884798400840

`gcd(Δ[A330725(n)], A028310(n+3))`
-/

namespace A339967.P6492288884798400840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A028310 (n + 3))

end

end A339967.P6492288884798400840

namespace A339967

/-- `gcd(Δ[A330725(n)], A028310(n+3))` -/
def P6492288884798400840.Spec : Prop :=
  ∀ n, (P6492288884798400840.a n : ℤ) = A339967 (n + 1)

end A339967

/-! ## A339967.P11017528456036082377

`gcd(A039653(n+1)+1, A242112(A028310(2*(n+2))))`
-/

namespace A339967.P11017528456036082377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039653 (n + 1) + 1) (A242112 (A028310 (2 * (n + 2))).toNat)

end

end A339967.P11017528456036082377

namespace A339967

/-- `gcd(A039653(n+1)+1, A242112(A028310(2*(n+2))))` -/
def P11017528456036082377.Spec : Prop :=
  ∀ n, (P11017528456036082377.a n : ℤ) = A339967 (n + 1)

end A339967

/-!
# A339968: Numbers k such that sigma(k) and k+2 are relatively prime, where sigma gives the sum of divisors of k.

The programs for A339968, the canonical program `A339968.P8749021637407557380` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339968 has offset 1).

The definition of A339968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339968.P8749021637407557380

`eq[1, A339967(n+1)]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A339968

/-- `eq[1, A339967(n+1)]+1` -/
def P8749021637407557380.Spec : Prop :=
  ∀ n, (P8749021637407557380.a n : ℤ) = A339968 (n + 1)

theorem P8749021637407557380.correct : P8749021637407557380.Spec := by
  intro n
  simp only [A339968, Nat.add_sub_cancel]

end A339968

/-! ## A339968.P4409558724320710488

`eq[1, gcd(n+3, A000203(n+1))]+1`
-/

namespace A339968.P4409558724320710488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A000203 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A339968.P4409558724320710488

namespace A339968

/-- `eq[1, gcd(n+3, A000203(n+1))]+1` -/
def P4409558724320710488.Spec : Prop :=
  ∀ n, (P4409558724320710488.a n : ℤ) = A339968 (n + 1)

end A339968

/-! ## A339968.P11418890942473479519

`record[A000027(n+1)/A339967(n+1)]`
-/

namespace A339968.P11418890942473479519
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A339967 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339968.P11418890942473479519

namespace A339968

/-- `record[A000027(n+1)/A339967(n+1)]` -/
def P11418890942473479519.Spec : Prop :=
  ∀ n, P11418890942473479519.a n = (A339968 (n + 1) : ℚ)

end A339968

/-! ## A339968.P18209744615045553684

`eq[ceil(sin(n)²), A339967(A028310(n))]`
-/

namespace A339968.P18209744615045553684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339967 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339968.P18209744615045553684

namespace A339968

/-- `eq[ceil(sin(n)²), A339967(A028310(n))]` -/
def P18209744615045553684.Spec : Prop :=
  ∀ n, (P18209744615045553684.a n : ℤ) = A339968 (n + 1)

end A339968

/-! ## A339968.P13691334411602549581

`eq[1, gcd(n+2, ∑{d}[n, #])]`
-/

namespace A339968.P13691334411602549581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339968.P13691334411602549581

namespace A339968

/-- `eq[1, gcd(n+2, ∑{d}[n, #])]` -/
def P13691334411602549581.Spec : Prop :=
  ∀ n, (P13691334411602549581.a n : ℤ) = A339968 (n + 1)

end A339968

/-!
# A339969: a(n) = gcd(n, A005940(1+n)).

The programs for A339969, the canonical program `A339969.P10391985741968629944` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339969 has offset 0).

The definition of A339969 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339969.P10391985741968629944

`gcd(n, A005940(1+n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A339969

/-- `gcd(n, A005940(1+n))` -/
def P10391985741968629944.Spec : Prop :=
  ∀ n, (P10391985741968629944.a n : ℤ) = A339969 n

theorem P10391985741968629944.correct : P10391985741968629944.Spec := by
  intro n
  simp only [A339969]

end A339969

/-! ## A339969.P3119081593596241073

`gcd(A005940(1+n), n)`
-/

namespace A339969.P3119081593596241073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005940 (1 + n)) (n : ℤ)

end

end A339969.P3119081593596241073

namespace A339969

/-- `gcd(A005940(1+n), n)` -/
def P3119081593596241073.Spec : Prop :=
  ∀ n, (P3119081593596241073.a n : ℤ) = A339969 n

end A339969

/-! ## A339969.P1233890715135438245

`gcd(2*n, A364502(n+1))`
-/

namespace A339969.P1233890715135438245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A364502 (n + 1))

end

end A339969.P1233890715135438245

namespace A339969

/-- `gcd(2*n, A364502(n+1))` -/
def P1233890715135438245.Spec : Prop :=
  ∀ n, (P1233890715135438245.a n : ℤ) = A339969 n

end A339969

/-! ## A339969.P5333644920319296863

`gcd(A324394(n)*A324395(n), A028310(n))`
-/

namespace A339969.P5333644920319296863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324394 n * A324395 n) (A028310 n)

end

end A339969.P5333644920319296863

namespace A339969

/-- `gcd(A324394(n)*A324395(n), A028310(n))` -/
def P5333644920319296863.Spec : Prop :=
  ∀ n, (P5333644920319296863.a n : ℤ) = A339969 n

end A339969

/-! ## A339969.P16049827219346118842

`gcd(n, A243353(A006068(n)))`
-/

namespace A339969.P16049827219346118842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A243353 (A006068 n).toNat)

end

end A339969.P16049827219346118842

namespace A339969

/-- `gcd(n, A243353(A006068(n)))` -/
def P16049827219346118842.Spec : Prop :=
  ∀ n, (P16049827219346118842.a n : ℤ) = A339969 n

end A339969

/-! ## A339969.P3246822124284944632

`gcd(A008486(n)-2*n, A337375(n)*A337376(n))`
-/

namespace A339969.P3246822124284944632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008486 n - (2 * n : ℤ)) (A337375 n * A337376 n)

end

end A339969.P3246822124284944632

namespace A339969

/-- `gcd(A008486(n)-2*n, A337375(n)*A337376(n))` -/
def P3246822124284944632.Spec : Prop :=
  ∀ n, (P3246822124284944632.a n : ℤ) = A339969 n

end A339969

/-! ## A339969.P17344643693895105980

`gcd(A028310(n), A279338(A279344(n)))`
-/

namespace A339969.P17344643693895105980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n) (A279338 (A279344 n).toNat)

end

end A339969.P17344643693895105980

namespace A339969

/-- `gcd(A028310(n), A279338(A279344(n)))` -/
def P17344643693895105980.Spec : Prop :=
  ∀ n, (P17344643693895105980.a n : ℤ) = A339969 n

end A339969

/-! ## A339969.P1658172996347103429

`gcd(A337375(n)*A337376(n), A110654(2*n))`
-/

namespace A339969.P1658172996347103429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A337375 n * A337376 n) (A110654 (2 * n))

end

end A339969.P1658172996347103429

namespace A339969

/-- `gcd(A337375(n)*A337376(n), A110654(2*n))` -/
def P1658172996347103429.Spec : Prop :=
  ∀ n, (P1658172996347103429.a n : ℤ) = A339969 n

end A339969

/-! ## A339969.P12794912365831888118

`gcd(47*n, A302026(A269387(n)))`
-/

namespace A339969.P12794912365831888118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (47 * n : ℤ) (A302026 (A269387 n).toNat)

end

end A339969.P12794912365831888118

namespace A339969

/-- `gcd(47*n, A302026(A269387(n)))` -/
def P12794912365831888118.Spec : Prop :=
  ∀ n, (P12794912365831888118.a n : ℤ) = A339969 n

end A339969

/-! ## A339969.P533922693336005565

`gcd(2*n, A322865(A253563(n)))`
-/

namespace A339969.P533922693336005565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A322865 (A253563 n).toNat)

end

end A339969.P533922693336005565

namespace A339969

/-- `gcd(2*n, A322865(A253563(n)))` -/
def P533922693336005565.Spec : Prop :=
  ∀ n, (P533922693336005565.a n : ℤ) = A339969 n

end A339969

/-! ## A339969.P12160432789954672112

`gcd(A322865(A253563(n))+n, A103164(n))`
-/

namespace A339969.P12160432789954672112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A322865 (A253563 n).toNat + (n : ℤ)) (A103164 n)

end

end A339969.P12160432789954672112

namespace A339969

/-- `gcd(A322865(A253563(n))+n, A103164(n))` -/
def P12160432789954672112.Spec : Prop :=
  ∀ n, (P12160432789954672112.a n : ℤ) = A339969 n

end A339969

/-!
# A339970: a(n) = A329697(A019565(2n)).

The programs for A339970, there is no canonical definition to state claims against.
-/

/-! ## A339970.P15103160033823330807

`A329697(A339971(n))+A000120(n)`
-/

namespace A339970.P15103160033823330807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A339971 n).toNat + A000120 n

end

end A339970.P15103160033823330807

/-! ## A339970.P16615669444621630788

`A329697(A019565(2*n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A339970.P16615669444621630788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A019565 (2 * n)).toNat

end

end A339970.P16615669444621630788

/-! ## A339970.P4798328247147023373

`A329697(A003961(A019565(n)))`
-/

namespace A339970.P4798328247147023373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A003961 (A019565 n).toNat).toNat

end

end A339970.P4798328247147023373

/-! ## A339970.P17956292475855556758

`∑{p}[A019565(n), A055178(#)]`
-/

namespace A339970.P17956292475855556758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A055178 p

end

end A339970.P17956292475855556758

/-! ## A339970.P6098832994612771299

`∑{p}[A019565(n), A096993(#)]`
-/

namespace A339970.P6098832994612771299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A096993 p

end

end A339970.P6098832994612771299

/-! ## A339970.P4914694534097570556

`∑{p}[A019565(n), A001221(A252868(#))]`
-/

namespace A339970.P4914694534097570556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 (A252868 p).toNat

end

end A339970.P4914694534097570556

/-! ## A339970.P16335435600361126827

`∑{p}[A019565(n), A124767(A118784(2*#))]`
-/

namespace A339970.P16335435600361126827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A124767 (A118784 (2 * p)).toNat

end

end A339970.P16335435600361126827

/-! ## A339970.P2792200253029719995

`A275024(A121663(n))`
-/

namespace A339970.P2792200253029719995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275024 (A121663 n).toNat

end

end A339970.P2792200253029719995

/-! ## A339970.P18172493246807987179

`A106486(n)-A002265(A106485(n))%2`
-/

namespace A339970.P18172493246807987179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 n - Int.tmod (A002265 (A106485 n).toNat) 2

end

end A339970.P18172493246807987179

/-! ## A339970.P17525076756628415632

`A106486(n)-A059906(A057301(A059906(n)))`
-/

namespace A339970.P17525076756628415632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 n - A059906 (A057301 (A059906 n).toNat).toNat

end

end A339970.P17525076756628415632

/-!
# A339971: Odd part of A339821(n).

The programs for A339971, there is no canonical definition to state claims against.
-/

/-! ## A339971.P7424766683491274727

`A339821(n)/A000079(A339822(n))`
-/

namespace A339971.P7424766683491274727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339821 n : ℚ) / (A000079 (A339822 n).toNat : ℚ)

end

end A339971.P7424766683491274727

/-! ## A339971.P16640981332980353542

`A000265(A339821(n))`
-/

namespace A339971.P16640981332980353542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A339821 n).toNat

end

end A339971.P16640981332980353542

/-! ## A339971.P9689213218737504072

`A336466(A003961(A019565(n)))`
-/

namespace A339971.P9689213218737504072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A003961 (A019565 n).toNat).toNat

end

end A339971.P9689213218737504072

/-! ## A339971.P6933820561903063918

`A053575(A019565(2*n))`
-/

namespace A339971.P6933820561903063918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053575 (A019565 (2 * n)).toNat

end

end A339971.P6933820561903063918

/-! ## A339971.P8527512435555368289

`A339972(floor(n/4))`
-/

namespace A339971.P8527512435555368289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339972 ⌊(n : ℚ) / 4⌋.toNat

end

end A339971.P8527512435555368289

/-! ## A339971.P14183505676487026845

`or(1, A339972(A002265(n)))`
-/

namespace A339971.P14183505676487026845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A339972 (A002265 n).toNat)

end

end A339971.P14183505676487026845

/-! ## A339971.P1520178553418685316

`A339899(n)*A339901(n)`
-/

namespace A339971.P1520178553418685316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339899 n * A339901 n

end

end A339971.P1520178553418685316

/-! ## A339971.P5018177981184719126

`∏{p}[A019565(n), A339903(#)]`
-/

namespace A339971.P5018177981184719126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A339903 p

end

end A339971.P5018177981184719126

/-! ## A339971.P5816176686973438470

`∏{p}[A019565(n), A339904(#)]`
-/

namespace A339971.P5816176686973438470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A339904 p

end

end A339971.P5816176686973438470

/-! ## A339971.P4332952111384545335

`∏{p}[A019565(n), A340074(#)]`
-/

namespace A339971.P4332952111384545335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A340074 p

end

end A339971.P4332952111384545335

/-! ## A339971.P17166825020483292446

`gcd(A217858(n+1), A339821(n))`
-/

namespace A339971.P17166825020483292446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A217858 (n + 1)) (A339821 n)

end

end A339971.P17166825020483292446

/-! ## A339971.P4570453305019049038

`gcd(A055634(n), A339821(n))`
-/

namespace A339971.P4570453305019049038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055634 n) (A339821 n)

end

end A339971.P4570453305019049038

/-!
# A339972: Odd part of phi(A019565(8*n)).

The programs for A339972, there is no canonical definition to state claims against.
-/

/-! ## A339972.P9434712425086534467

`A339971(4*n)`
-/

namespace A339972.P9434712425086534467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339971 (4 * n)

end

end A339972.P9434712425086534467

/-! ## A339972.P246536829925457577

`A000265(A339821(4*n))`
-/

namespace A339972.P246536829925457577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A339821 (4 * n)).toNat

end

end A339972.P246536829925457577

/-! ## A339972.P1119817863647346940

`A053575(A019565(8*n))`
-/

namespace A339972.P1119817863647346940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053575 (A019565 (8 * n)).toNat

end

end A339972.P1119817863647346940

/-! ## A339972.P10377864604146067460

`or(1, A339971(record[xor(3, n)]))`
-/

namespace A339972.P10377864604146067460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A339971 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A339972.P10377864604146067460

/-! ## A339972.P10800462878639908199

`A339899(4*n)*A339901(4*n)`
-/

namespace A339972.P10800462878639908199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339899 (4 * n) * A339901 (4 * n)

end

end A339972.P10800462878639908199

/-! ## A339972.P7275017696448000136

`A000027(A339971(record[xor(3, n)]))`
-/

namespace A339972.P7275017696448000136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A339971 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A339972.P7275017696448000136

/-! ## A339972.P104082910044361462

`∏{p}[A019565(4*n), A339903(#)]`
-/

namespace A339972.P104082910044361462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A339903 p

end

end A339972.P104082910044361462

/-!
# A339973: Numbers k for which A019565(2k)-1 is a multiple of A000265(phi(A019565(2k))).

The programs for A339973, there is no canonical definition to state claims against.
-/

/-! ## A339973.P1900991505035499092

`eq[0, A339898(n)]`
-/

namespace A339973.P1900991505035499092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A339973.P1900991505035499092

/-! ## A339973.P3290353849384011676

`eq[1, A339901(n)]`
-/

namespace A339973.P3290353849384011676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339901 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A339973.P3290353849384011676

/-! ## A339973.P4177730879223054275

`eq[A339899(n), A339971(n)]`
-/

namespace A339973.P4177730879223054275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339899 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339973.P4177730879223054275

/-! ## A339973.P5859367540075364668

`record[A000720(n+1)/A339901(A000720(n+1))]`
-/

namespace A339973.P5859367540075364668
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 (n + 1) : ℚ) / (A339901 (A000720 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339973.P5859367540075364668

/-! ## A339973.P5240748286026418922

`lt[A339901(n), A000005(A339900(n+1))]`
-/

namespace A339973.P5240748286026418922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339901 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A339900 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A339973.P5240748286026418922

/-!
# A339974: Odd primes that do not occur as the greatest prime divisor of any such odd composite k for which the odd part of phi(k) divides k-1.

The programs for A339974, there is no canonical definition to state claims against.
-/

/-! ## A339974.P266222378088788050

`or(A003629(A005117(n+1)), A033716(n))`
-/

namespace A339974.P266222378088788050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003629 (A005117 (n + 1)).toNat) (A033716 n)

end

end A339974.P266222378088788050

/-! ## A339974.P2204633438110956884

`p?[∑[A156311(A123993(n+1))]]`
-/

namespace A339974.P2204633438110956884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156311 (A123993 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339974.P2204633438110956884

/-!
# A339975: a(n) is the number of 0's minus the number of 1's among the first n terms of A337546.

The programs for A339975, there is no canonical definition to state claims against.
-/

/-! ## A339975.P15784656284641743676

`A100661(n+1)-A336722(A017318(n))`
-/

namespace A339975.P15784656284641743676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (n + 1) - A336722 (A017318 n).toNat

end

end A339975.P15784656284641743676

/-! ## A339975.P2990739804354692126

`C(A080468(n+2), A336722(A017318(n)))`
-/

namespace A339975.P2990739804354692126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080468 (n + 2)).toNat (A336722 (A017318 n).toNat).toNat

end

end A339975.P2990739804354692126

/-! ## A339975.P14438104027570890305

`A080468(n+2)%A080456(A127529(2*n))`
-/

namespace A339975.P14438104027570890305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080468 (n + 2)) (A080456 (A127529 (2 * n)).toNat)

end

end A339975.P14438104027570890305

/-! ## A339975.P11967308084699006

`A314026(A258774(n+1))%A100661(n+1)`
-/

namespace A339975.P11967308084699006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A314026 (A258774 (n + 1)).toNat) (A100661 (n + 1))

end

end A339975.P11967308084699006

/-! ## A339975.P2397161070186035578

`A154598(n+2)%A005811(∏{p}[n+1, #])`
-/

namespace A339975.P2397161070186035578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154598 (n + 2)) (A005811 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A339975.P2397161070186035578

/-!
# A339976: Numbers k such that exactly half of the first k terms of A337546 are 0's.

The programs for A339976, there is no canonical definition to state claims against.
-/

/-! ## A339976.P16067290678524804055

`eq[0, A339975(n)]`
-/

namespace A339976.P16067290678524804055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A339976.P16067290678524804055

/-! ## A339976.P2156660622186418656

`lt[A055645(A339975(n)²), 1]`
-/

namespace A339976.P2156660622186418656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 (A339975 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A339976.P2156660622186418656

/-! ## A339976.P12540045176248967499

`lt[abs(A339975(n)), A033999(n)]`
-/

namespace A339976.P12540045176248967499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A339975 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A339976.P12540045176248967499

/-! ## A339976.P12306451611202359115

`lt[abs(A339975(n)), A040001(n)]`
-/

namespace A339976.P12306451611202359115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A339975 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A339976.P12306451611202359115

/-! ## A339976.P4084351788268279369

`lt[A339975(n)², A267870(n)]`
-/

namespace A339976.P4084351788268279369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A339976.P4084351788268279369

/-! ## A339976.P3524634069308909840

`record[gcd(A005843(n), A339975(2*n))]`
-/

namespace A339976.P3524634069308909840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 n) (A339975 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339976.P3524634069308909840

/-! ## A339976.P1187397948070429771

`lt[A339975(n), A033999(A055645(n))]`
-/

namespace A339976.P1187397948070429771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A055645 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A339976.P1187397948070429771

/-!
# A339977: Sums of two distinct odd squares.

The programs for A339977, the canonical program `A339977.P17266099311985433094` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339977 has offset 1).

The definition of A339977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5924 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339977.P15086568517437350701

`2*A339952(n+1)`
-/

namespace A339977.P15086568517437350701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339952 (n + 1)

end

end A339977.P15086568517437350701

namespace A339977

/-- `2*A339952(n+1)` -/
def P15086568517437350701.Spec : Prop :=
  ∀ n, P15086568517437350701.a n = A339977 (n + 1)

end A339977

/-! ## A339977.P17008862011848612894

`record[lcm(2, A097268(n+1))]`
-/

namespace A339977.P17008862011848612894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A097268 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339977.P17008862011848612894

namespace A339977

/-- `record[lcm(2, A097268(n+1))]` -/
def P17008862011848612894.Spec : Prop :=
  ∀ n, (P17008862011848612894.a n : ℤ) = A339977 (n + 1)

end A339977

/-! ## A339977.P17266099311985433094

`filter[A097269(n+1), A353814(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A339977

/-- `filter[A097269(n+1), A353814(#)]` -/
def P17266099311985433094.Spec : Prop :=
  ∀ n, P17266099311985433094.a n = A339977 (n + 1)

theorem P17266099311985433094.correct : P17266099311985433094.Spec := by
  intro n
  simp only [A339977, Nat.add_sub_cancel]

end A339977

/-! ## A339977.P12374798525922402998

`record[lcm(2, A004431(n+1))]`
-/

namespace A339977.P12374798525922402998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A004431 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339977.P12374798525922402998

namespace A339977

/-- `record[lcm(2, A004431(n+1))]` -/
def P12374798525922402998.Spec : Prop :=
  ∀ n, (P12374798525922402998.a n : ℤ) = A339977 (n + 1)

end A339977

/-! ## A339977.P2624621758863336536

`2*A004431(A024511(n+1))`
-/

namespace A339977.P2624621758863336536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004431 (A024511 (n + 1)).toNat

end

end A339977.P2624621758863336536

namespace A339977

/-- `2*A004431(A024511(n+1))` -/
def P2624621758863336536.Spec : Prop :=
  ∀ n, P2624621758863336536.a n = A339977 (n + 1)

end A339977

/-! ## A339977.P9991818923471140686

`record[2*A000265(A004431(n+2))]`
-/

namespace A339977.P9991818923471140686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000265 (A004431 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339977.P9991818923471140686

namespace A339977

/-- `record[2*A000265(A004431(n+2))]` -/
def P9991818923471140686.Spec : Prop :=
  ∀ n, P9991818923471140686.a n = A339977 (n + 1)

end A339977

/-! ## A339977.P2806907004289893463

`2*A000404(A024516(n+1))`
-/

namespace A339977.P2806907004289893463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000404 (A024516 (n + 1)).toNat

end

end A339977.P2806907004289893463

namespace A339977

/-- `2*A000404(A024516(n+1))` -/
def P2806907004289893463.Spec : Prop :=
  ∀ n, P2806907004289893463.a n = A339977 (n + 1)

end A339977

/-! ## A339977.P6158407899239576432

`record[2*A000265(A000404(n+2))]`
-/

namespace A339977.P6158407899239576432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000265 (A000404 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339977.P6158407899239576432

namespace A339977

/-- `record[2*A000265(A000404(n+2))]` -/
def P6158407899239576432.Spec : Prop :=
  ∀ n, P6158407899239576432.a n = A339977 (n + 1)

end A339977

/-! ## A339977.P712326664453636409

`filter[A016825(n), A353814(#)]`
-/

namespace A339977.P712326664453636409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A339977.P712326664453636409

namespace A339977

/-- `filter[A016825(n), A353814(#)]` -/
def P712326664453636409.Spec : Prop :=
  ∀ n, P712326664453636409.a n = A339977 (n + 1)

end A339977

/-! ## A339977.P11379870556185899067

`filter[A017089(n), A353814(#)]`
-/

namespace A339977.P11379870556185899067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A339977.P11379870556185899067

namespace A339977

/-- `filter[A017089(n), A353814(#)]` -/
def P11379870556185899067.Spec : Prop :=
  ∀ n, P11379870556185899067.a n = A339977 (n + 1)

end A339977

/-! ## A339977.P3061066937147764326

`2*A016813(lt[1, A008441(n)])`
-/

namespace A339977.P3061066937147764326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016813 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A339977.P3061066937147764326

namespace A339977

/-- `2*A016813(lt[1, A008441(n)])` -/
def P3061066937147764326.Spec : Prop :=
  ∀ n, P3061066937147764326.a n = A339977 (n + 1)

end A339977

/-! ## A339977.P3342698354309742404

`filter[A019427(n+1), A353814(#)]`
-/

namespace A339977.P3342698354309742404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A339977.P3342698354309742404

namespace A339977

/-- `filter[A019427(n+1), A353814(#)]` -/
def P3342698354309742404.Spec : Prop :=
  ∀ n, P3342698354309742404.a n = A339977 (n + 1)

end A339977

/-! ## A339977.P14801795566776705763

`record[2*A000265(A024507(n+1))]`
-/

namespace A339977.P14801795566776705763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000265 (A024507 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339977.P14801795566776705763

namespace A339977

/-- `record[2*A000265(A024507(n+1))]` -/
def P14801795566776705763.Spec : Prop :=
  ∀ n, P14801795566776705763.a n = A339977 (n + 1)

end A339977

/-! ## A339977.P568039203868590262

`∩[A004431(n+1), A016825(n)]`
-/

namespace A339977.P568039203868590262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339977.P568039203868590262

namespace A339977

/-- `∩[A004431(n+1), A016825(n)]` -/
def P568039203868590262.Spec : Prop :=
  ∀ n, (P568039203868590262.a n : ℤ) = A339977 (n + 1)

end A339977

/-! ## A339977.P7957469037559050990

`∩[A004431(n+1), A017089(n)]`
-/

namespace A339977.P7957469037559050990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339977.P7957469037559050990

namespace A339977

/-- `∩[A004431(n+1), A017089(n)]` -/
def P7957469037559050990.Spec : Prop :=
  ∀ n, (P7957469037559050990.a n : ℤ) = A339977 (n + 1)

end A339977

/-! ## A339977.P2693084651359398049

`A004431(A024510(A024511(n+1)))`
-/

namespace A339977.P2693084651359398049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (A024510 (A024511 (n + 1)).toNat).toNat

end

end A339977.P2693084651359398049

namespace A339977

/-- `A004431(A024510(A024511(n+1)))` -/
def P2693084651359398049.Spec : Prop :=
  ∀ n, P2693084651359398049.a n = A339977 (n + 1)

end A339977

/-! ## A339977.P5505928641923204203

`filter[A113127(n), A353814(#)]`
-/

namespace A339977.P5505928641923204203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A339977.P5505928641923204203

namespace A339977

/-- `filter[A113127(n), A353814(#)]` -/
def P5505928641923204203.Spec : Prop :=
  ∀ n, P5505928641923204203.a n = A339977 (n + 1)

end A339977

/-! ## A339977.P10004556673708595821

`filter[A047473(n+1), A353814(#)]`
-/

namespace A339977.P10004556673708595821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A339977.P10004556673708595821

namespace A339977

/-- `filter[A047473(n+1), A353814(#)]` -/
def P10004556673708595821.Spec : Prop :=
  ∀ n, P10004556673708595821.a n = A339977 (n + 1)

end A339977

/-! ## A339977.P169008779737432073

`filter[A047524(n+1), A353814(#)]`
-/

namespace A339977.P169008779737432073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A339977.P169008779737432073

namespace A339977

/-- `filter[A047524(n+1), A353814(#)]` -/
def P169008779737432073.Spec : Prop :=
  ∀ n, P169008779737432073.a n = A339977 (n + 1)

end A339977

/-! ## A339977.P5370098697466358131

`filter[A073760(n+1), A353814(#)]`
-/

namespace A339977.P5370098697466358131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A339977.P5370098697466358131

namespace A339977

/-- `filter[A073760(n+1), A353814(#)]` -/
def P5370098697466358131.Spec : Prop :=
  ∀ n, P5370098697466358131.a n = A339977 (n + 1)

end A339977

/-!
# A339979: Coreful Zumkeller numbers: numbers whose set of coreful divisors can be partitioned into two disjoint sets of equal sum.

The programs for A339979, there is no canonical definition to state claims against.
-/

/-! ## A339979.P13854233557035357791

`eq[0, A103977(A336551(n+1)+1)]+1`
-/

namespace A339979.P13854233557035357791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (A336551 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A339979.P13854233557035357791

/-! ## A339979.P8748506071964522176

`eq[1, (A336563(n+1)-n)%4]+1`
-/

namespace A339979.P8748506071964522176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336563 (n + 1) - (n : ℤ)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A339979.P8748506071964522176

/-! ## A339979.P18203412820910566247

`eq[1, A179527(A003557(n+1))]+1`
-/

namespace A339979.P18203412820910566247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (A003557 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A339979.P18203412820910566247

/-!
# A339980: Coreful Zumkeller numbers (A339979) whose set of coreful divisors can be partitioned into two disjoint sets of equal sum in a single way.

The programs for A339980, there is no canonical definition to state claims against.
-/

/-! ## A339980.P17686878650316825658

`A339979(lt[A092763(n+1), A053167(n+1)])`
-/

namespace A339980.P17686878650316825658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339979 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A339980.P17686878650316825658

/-!
# A339981: Primitive coreful Zumkeller numbers: coreful Zumkeller numbers (A339979) having no coreful Zumkeller aliquot divisor.

The programs for A339981, there is no canonical definition to state claims against.
-/

/-! ## A339981.P9699691237961033685

`A053238(A000142(n))*A259231(n+1)`
-/

namespace A339981.P9699691237961033685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053238 (A000142 n).toNat * A259231 (n + 1)

end

end A339981.P9699691237961033685

/-! ## A339981.P6449304152253177766

`A266073(A124560(n)*A259231(n+1))`
-/

namespace A339981.P6449304152253177766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266073 (A124560 n * A259231 (n + 1)).toNat

end

end A339981.P6449304152253177766

/-! ## A339981.P3704962695040908383

`A266073(A259231(n+1)^A124560(n))`
-/

namespace A339981.P3704962695040908383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266073 (SequenceMachineLib.roundAway ((A259231 (n + 1) : ℚ) ^ (A124560 n : ℤ))).toNat

end

end A339981.P3704962695040908383

/-! ## A339981.P477612609461304155

`A000005(A053708(n+1))*A259231(n+1)`
-/

namespace A339981.P477612609461304155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053708 (n + 1)).toNat * A259231 (n + 1)

end

end A339981.P477612609461304155

/-!
# A339983: Coreful abundant numbers (A308053) with an even sum of coreful divisors (A057723) that are not coreful Zumkeller numbers (A339979).

The programs for A339983, there is no canonical definition to state claims against.
-/

/-! ## A339983.P5515579792491805651

`∑[54*A033715(A220254(3*(n+1)))]`
-/

namespace A339983.P5515579792491805651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  54 * A033715 (A220254 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339983.P5515579792491805651

/-! ## A339983.P13541324552323052078

`A008458(∩[A123064(n+1), A008458(n)])`
-/

namespace A339983.P13541324552323052078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A339983.P13541324552323052078

/-! ## A339983.P12707618710354642952

`A008588(∩[A123064(n+5), A008588(n)])`
-/

namespace A339983.P12707618710354642952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123064 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A339983.P12707618710354642952

/-!
# A339984: G.f.: g(x) * g(x^2), where g(x) is the g.f. of A000081.

The programs for A339984, there is no canonical definition to state claims against.
-/

/-! ## A339984.P1297806542340319810

`Δ[A261906(A000055(n))]`
-/

namespace A339984.P1297806542340319810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261906 (A000055 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339984.P1297806542340319810

/-! ## A339984.P1224697471342803121

`A335523(A036657(n)+1)`
-/

namespace A339984.P1224697471342803121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335523 (A036657 n + 1).toNat

end

end A339984.P1224697471342803121

/-! ## A339984.P4362304469484519774

`floor(A328668(A000013(n+1))/log2(7))`
-/

namespace A339984.P4362304469484519774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A328668 (A000013 (n + 1)).toNat : ℝ) / Real.logb 2 (7 : ℝ)⌋

end

end A339984.P4362304469484519774

/-!
# A339985: G.f.: g(x)^2 * g(x^2), where g(x) is the g.f. of A000081.

The programs for A339985, there is no canonical definition to state claims against.
-/

/-! ## A339985.P689304939653702466

`Δ[A177849(A255630(n))]`
-/

namespace A339985.P689304939653702466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A255630 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339985.P689304939653702466

/-! ## A339985.P13144318448999095159

`∑[A168201(A095344(n+1))]`
-/

namespace A339985.P13144318448999095159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A095344 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339985.P13144318448999095159

/-! ## A339985.P16784263639158935975

`floor(A014085(A001671(n))/10)`
-/

namespace A339985.P16784263639158935975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014085 (A001671 n).toNat : ℚ) / 10⌋

end

end A339985.P16784263639158935975

/-! ## A339985.P4221897907140389055

`A280951(∑[floor((n/2)²)])-A103284(n)`
-/

namespace A339985.P4221897907140389055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A103284 n

end

end A339985.P4221897907140389055

/-! ## A339985.P3325027300874163398

`round(A255678(n+1)/A255649(3*n+4))`
-/

namespace A339985.P3325027300874163398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A255678 (n + 1) : ℚ) / (A255649 (3 * n + 4) : ℚ))

end

end A339985.P3325027300874163398

/-!
# A339988: Prime numbers that are the sum of an odd square s and an even square t such that 0 < s < t.

The programs for A339988, there is no canonical definition to state claims against.
-/

/-! ## A339988.P2921607569088348482

`A002144(eq[2, gcd(2, A002330(n+1))])`
-/

namespace A339988.P2921607569088348482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A002330 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A339988.P2921607569088348482

/-! ## A339988.P1239570644318399239

`A002144(eq[1, (-1)^A002330(n+1)])`
-/

namespace A339988.P1239570644318399239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A002330 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A339988.P1239570644318399239

/-! ## A339988.P4741277925134931954

`A002144(eq[3, A070079(n+1)%4]+1)`
-/

namespace A339988.P4741277925134931954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070079 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A339988.P4741277925134931954

/-! ## A339988.P14388565730805681015

`A002313(eq[1, (-1)^A002330(n+1)]+1)`
-/

namespace A339988.P14388565730805681015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A002330 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A339988.P14388565730805681015

/-! ## A339988.P11421947036678327031

`A002144(eq[2, A020639(A002330(n+1))])`
-/

namespace A339988.P11421947036678327031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339988.P11421947036678327031

/-! ## A339988.P4529986834281053756

`p?[A002313(n+1)-A000035(A002330(n+1))]`
-/

namespace A339988.P4529986834281053756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1) - A000035 (A002330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339988.P4529986834281053756

/-! ## A339988.P632551897431008017

`p?[A000035(A014498(n+1))*A020882(n+1)]`
-/

namespace A339988.P632551897431008017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A014498 (n + 1)).toNat * A020882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339988.P632551897431008017

/-! ## A339988.P5994038313451976930

`p?[A007814(A087459(n+1))*A020882(n+1)]`
-/

namespace A339988.P5994038313451976930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A087459 (n + 1)).toNat * A020882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339988.P5994038313451976930

/-! ## A339988.P3369895262681647059

`p?[A000035(A002331(n+2))*A002313(n+2)]`
-/

namespace A339988.P3369895262681647059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002331 (n + 2)).toNat * A002313 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339988.P3369895262681647059

/-! ## A339988.P855245630268834737

`A002144(eq[A002331(n+2), A002972(n+1)]+1)`
-/

namespace A339988.P855245630268834737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002331 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A339988.P855245630268834737

/-!
# A339989: Primes that are the sum of an even square s and an odd square t such that 0 < s < t.

The programs for A339989, there is no canonical definition to state claims against.
-/

/-! ## A339989.P1950417936063426190

`A002144(eq[2, gcd(2, A002331(n+1))])`
-/

namespace A339989.P1950417936063426190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A002331 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A339989.P1950417936063426190

/-! ## A339989.P1206485708454192030

`A002144(eq[1, A070079(n+1)%4]+1)`
-/

namespace A339989.P1206485708454192030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070079 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A339989.P1206485708454192030

/-! ## A339989.P13322293809800419960

`A002313(eq[1, (-1)^A002331(n+1)]+1)`
-/

namespace A339989.P13322293809800419960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A002331 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A339989.P13322293809800419960

/-! ## A339989.P4196345014591916668

`p?[A002313(n+1)-A002331(n+1)%2]`
-/

namespace A339989.P4196345014591916668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1) - Int.tmod (A002331 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339989.P4196345014591916668

/-! ## A339989.P16627677207532523431

`A002144(eq[2, A020639(A002331(n+1))])`
-/

namespace A339989.P16627677207532523431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002331 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339989.P16627677207532523431

/-! ## A339989.P5240793305276491449

`p?[A020882(n+1)+A000035(A014498(n+1))]`
-/

namespace A339989.P5240793305276491449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) + A000035 (A014498 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339989.P5240793305276491449

/-! ## A339989.P15838221577015469349

`p?[A002313(n+1)-A000035(A002331(n+1))]`
-/

namespace A339989.P15838221577015469349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1) - A000035 (A002331 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339989.P15838221577015469349

/-! ## A339989.P200692011788866281

`p?[A000035(A002330(n+2))*A002313(n+2)]`
-/

namespace A339989.P200692011788866281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002330 (n + 2)).toNat * A002313 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339989.P200692011788866281

/-! ## A339989.P3712665934685716852

`A002144(eq[A002330(n+2), A002972(n+1)]+1)`
-/

namespace A339989.P3712665934685716852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A339989.P3712665934685716852

/-!
# A339990: Sums of two odd cubes.

The programs for A339990, there is no canonical definition to state claims against.
-/

/-! ## A339990.P9374407747362312531

`∑[A108370(A071053(n)²)]`
-/

namespace A339990.P9374407747362312531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108370 (A071053 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339990.P9374407747362312531

/-!
# A339992: Sums of two distinct odd cubes.

The programs for A339992, there is no canonical definition to state claims against.
-/

/-! ## A339992.P15404873037442207789

`filter[A339990(n+1), A373971(#)]`
-/

namespace A339992.P15404873037442207789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373971 (f1 j).toNat = 1) n)

end

end A339992.P15404873037442207789

/-! ## A339992.P609242519731331536

`∩[A024670(n+1), A339990(n+1)]`
-/

namespace A339992.P609242519731331536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339992.P609242519731331536

/-! ## A339992.P16888451421218655844

`∩[A114090(n+1), A339990(n+1)]`
-/

namespace A339992.P16888451421218655844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339992.P16888451421218655844

/-! ## A339992.P3685479208657298885

`∩[A290276(n+1), A339990(n+1)]`
-/

namespace A339992.P3685479208657298885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339992.P3685479208657298885

/-! ## A339992.P8290708080394254630

`∩[A307585(n+1), A339990(n+1)]`
-/

namespace A339992.P8290708080394254630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339992.P8290708080394254630

/-!
# A339993: Sums of two positive even cubes.

The programs for A339993, there is no canonical definition to state claims against.
-/

/-! ## A339993.P17883152314214725387

`8*A003325(n+1)`
-/

namespace A339993.P17883152314214725387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A003325 (n + 1)

end

end A339993.P17883152314214725387

/-! ## A339993.P7433913408082346585

`2*4*A003325(Δ[n²]-n)`
-/

namespace A339993.P7433913408082346585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (4 * A003325 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A339993.P7433913408082346585

/-! ## A339993.P2119651555813214450

`record[8*A003325(A344180(n))]`
-/

namespace A339993.P2119651555813214450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A003325 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339993.P2119651555813214450

/-! ## A339993.P8505119578673506437

`8*∪[A024670(n+1), A337529(n+1)]`
-/

namespace A339993.P8505119578673506437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A339993.P8505119578673506437

/-! ## A339993.P6720199812391825085

`8*∪[A202679(n+1), A294073(n+1)]`
-/

namespace A339993.P6720199812391825085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A339993.P6720199812391825085

/-! ## A339993.P13182539986836102966

`8*∪[∑[2*A003215(n)], A024670(n+1)]`
-/

namespace A339993.P13182539986836102966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003215 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A339993.P13182539986836102966

/-! ## A339993.P15362269200591698819

`8*∩[A004999(n+1), A051386(n+1)]`
-/

namespace A339993.P15362269200591698819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339993.P15362269200591698819

/-! ## A339993.P14194608078596958179

`record[8*A003325(A246694(n))]`
-/

namespace A339993.P14194608078596958179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A003325 (A246694 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339993.P14194608078596958179

/-! ## A339993.P3291982655526687342

`8*record[A003325(A263111(n))]`
-/

namespace A339993.P3291982655526687342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (A263111 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339993.P3291982655526687342

/-! ## A339993.P14930274232850455622

`8*lt[0, A280618(n)]`
-/

namespace A339993.P14930274232850455622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A339993.P14930274232850455622

/-! ## A339993.P15437082222323869797

`A008590(A003325(n+1))`
-/

namespace A339993.P15437082222323869797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A003325 (n + 1)).toNat

end

end A339993.P15437082222323869797

/-! ## A339993.P14474702602894899439

`A022144(or(A000038(n), A003325(n+1)))`
-/

namespace A339993.P14474702602894899439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (Int.lor (A000038 n) (A003325 (n + 1))).toNat

end

end A339993.P14474702602894899439

/-! ## A339993.P12156543964116376697

`A022144(A003325(n+1))+A000007(n+1)`
-/

namespace A339993.P12156543964116376697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A003325 (n + 1)).toNat + A000007 (n + 1)

end

end A339993.P12156543964116376697

/-! ## A339993.P11970927928541412008

`A022144(A003325(n+1)%A001235(n+1))`
-/

namespace A339993.P11970927928541412008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (Int.tmod (A003325 (n + 1)) (A001235 (n + 1))).toNat

end

end A339993.P11970927928541412008

/-! ## A339993.P4381745747107526268

`A017077(A003325(n+1))-gcd(2, A017077(n))`
-/

namespace A339993.P4381745747107526268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A003325 (n + 1)).toNat - (Int.gcd 2 (A017077 n) : ℤ)

end

end A339993.P4381745747107526268

/-! ## A339993.P3466111494837102158

`A017077(A003325(n+1))-A007318(C(2, n))`
-/

namespace A339993.P3466111494837102158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A003325 (n + 1)).toNat - A007318 (Nat.choose 2 n)

end

end A339993.P3466111494837102158

/-! ## A339993.P1087360551066208885

`A022144(A003325(n+1))%A000217(n+4)²`
-/

namespace A339993.P1087360551066208885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022144 (A003325 (n + 1)).toNat) (A000217 (n + 4) ^ 2)

end

end A339993.P1087360551066208885

/-! ## A339993.P14434489403767136630

`A017077(A003325(n+1))+or(-1, A000041(n))`
-/

namespace A339993.P14434489403767136630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (A003325 (n + 1)).toNat + Int.lor (-1) (A000041 n)

end

end A339993.P14434489403767136630

/-!
# A339994: Sums of two distinct nonzero even cubes.

The programs for A339994, there is no canonical definition to state claims against.
-/

/-! ## A339994.P7166592380918926952

`8*A024670(n+1)`
-/

namespace A339994.P7166592380918926952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A024670 (n + 1)

end

end A339994.P7166592380918926952

/-! ## A339994.P3494309140565935446

`record[8*A024670(A133310(n))]`
-/

namespace A339994.P3494309140565935446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A024670 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339994.P3494309140565935446

/-! ## A339994.P4534473845160987851

`∩[2*A268319(n+1), A339993(n+1)]`
-/

namespace A339994.P4534473845160987851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A268319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339994.P4534473845160987851

/-! ## A339994.P15849395289509724499

`∩[A024670(n+1), A339993(n+1)]`
-/

namespace A339994.P15849395289509724499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339994.P15849395289509724499

/-! ## A339994.P14407491423982558663

`∩[A114090(n+1), A339993(n+1)]`
-/

namespace A339994.P14407491423982558663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339994.P14407491423982558663

/-! ## A339994.P18018106126644216616

`8*filter[A051386(n+1), A373971(#)]`
-/

namespace A339994.P18018106126644216616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * f1 (SequenceMachineLib.nth (fun j => A373971 (f1 j).toNat = 1) n)

end

end A339994.P18018106126644216616

/-! ## A339994.P1596056100934317582

`∩[A307585(n+1), A339993(n+1)]`
-/

namespace A339994.P1596056100934317582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339994.P1596056100934317582

/-! ## A339994.P2365040704116831428

`8*lt[1, A280618(n)]`
-/

namespace A339994.P2365040704116831428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A339994.P2365040704116831428

/-! ## A339994.P6669763288988388982

`filter[A339993(n+1), A373971(#)]`
-/

namespace A339994.P6669763288988388982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373971 (f1 j).toNat = 1) n)

end

end A339994.P6669763288988388982

/-! ## A339994.P18112223733057231125

`A008590(A024670(n+1))`
-/

namespace A339994.P18112223733057231125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A024670 (n + 1)).toNat

end

end A339994.P18112223733057231125

/-! ## A339994.P11348152230814989041

`A022144(A024670(n+1)%A057847(n+1))`
-/

namespace A339994.P11348152230814989041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (Int.tmod (A024670 (n + 1)) (A057847 (n + 1))).toNat

end

end A339994.P11348152230814989041

/-! ## A339994.P3713255283815268011

`lcm(A022144(A024670(n+1)), A026605(n+1))`
-/

namespace A339994.P3713255283815268011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A022144 (A024670 (n + 1)).toNat) (A026605 (n + 1))

end

end A339994.P3713255283815268011

/-! ## A339994.P3299253267760407233

`A022144(A024670(n+1))/A007318(C(2, n))`
-/

namespace A339994.P3299253267760407233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022144 (A024670 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A339994.P3299253267760407233

/-! ## A339994.P14688381711226409232

`A022144(A024670(n+1))+C(2, A000203(n+2))`
-/

namespace A339994.P14688381711226409232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A024670 (n + 1)).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A339994.P14688381711226409232

/-! ## A339994.P2297632659521960105

`A022144(A024670(n+1))/A000108(gcd(n, n+1))`
-/

namespace A339994.P2297632659521960105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022144 (A024670 (n + 1)).toNat : ℚ) / (A000108 (Nat.gcd n (n + 1)) : ℚ)

end

end A339994.P2297632659521960105

/-! ## A339994.P3219820092025742050

`A022144(A024670(n+1))/A008683(n+1)²!`
-/

namespace A339994.P3219820092025742050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022144 (A024670 (n + 1)).toNat : ℚ) / (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℚ)

end

end A339994.P3219820092025742050

/-! ## A339994.P18004841152641203869

`A022144(A024670(n+1))%A157367(A017209(n))`
-/

namespace A339994.P18004841152641203869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022144 (A024670 (n + 1)).toNat) (A157367 (A017209 n).toNat)

end

end A339994.P18004841152641203869

/-! ## A339994.P4062338080021345825

`A022144(A024670(n+1)^A160338(n+1))`
-/

namespace A339994.P4062338080021345825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (SequenceMachineLib.roundAway ((A024670 (n + 1) : ℚ) ^ (A160338 (n + 1) : ℤ))).toNat

end

end A339994.P4062338080021345825

/-!
# A339995: Numbers that are the sum of an odd cube and a nonzero even cube.

The programs for A339995, there is no canonical definition to state claims against.
-/

/-! ## A339995.P11069859754182798740

`filter[2*n+1, A373971(#)]`
-/

namespace A339995.P11069859754182798740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373971 (f1 j) = 1) n)

end

end A339995.P11069859754182798740

/-! ## A339995.P1027040963586105404

`∩[2*n+1, A003325(n+1)]`
-/

namespace A339995.P1027040963586105404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339995.P1027040963586105404

/-! ## A339995.P2998401450230077318

`∩[2*n+1, A024670(n+1)]`
-/

namespace A339995.P2998401450230077318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339995.P2998401450230077318

/-! ## A339995.P4258187800900949775

`lt[or(1, n)+1, A280618(n)+n]`
-/

namespace A339995.P4258187800900949775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A339995.P4258187800900949775

/-! ## A339995.P494073754200295223

`A003325(A024666(n+1))`
-/

namespace A339995.P494073754200295223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (A024666 (n + 1)).toNat

end

end A339995.P494073754200295223

/-! ## A339995.P8859130324647148596

`A024670(A024672(n+1))`
-/

namespace A339995.P8859130324647148596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (A024672 (n + 1)).toNat

end

end A339995.P8859130324647148596

/-! ## A339995.P8855999843731332595

`record[A000265(A024670(n+1))]`
-/

namespace A339995.P8855999843731332595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A024670 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339995.P8855999843731332595

/-! ## A339995.P12697364467202843390

`record[A000265(A339994(n+1))]`
-/

namespace A339995.P12697364467202843390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A339994 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339995.P12697364467202843390

/-! ## A339995.P6813828652569613256

`record[A000265(A003325(n+2))]`
-/

namespace A339995.P6813828652569613256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003325 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339995.P6813828652569613256

/-! ## A339995.P16215177320339448374

`record[A000265(A339993(n+2))]`
-/

namespace A339995.P16215177320339448374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A339993 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339995.P16215177320339448374

/-!
# A339996: Numbers whose square is rotationally ambigrammatic with no trailing zeros.

The programs for A339996, there is no canonical definition to state claims against.
-/

/-! ## A339996.P7699605928355115162

`sqrt(A340164(n+1))`
-/

namespace A339996.P7699605928355115162
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A340164 (n + 1) : ℝ)

end

end A339996.P7699605928355115162

/-! ## A339996.P6695078252845149758

`A007318(∑[n])*A056926(A340164(n+1))`
-/

namespace A339996.P6695078252845149758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A056926 (A340164 (n + 1)).toNat

end

end A339996.P6695078252845149758

/-! ## A339996.P12366069340453481807

`A056926(A340164(n+1))%A000032(2*n+1)`
-/

namespace A339996.P12366069340453481807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056926 (A340164 (n + 1)).toNat) (A000032 (2 * n + 1))

end

end A339996.P12366069340453481807

/-! ## A339996.P15900694858604067595

`A000040(n+1)%2*A056926(A340164(n+1))`
-/

namespace A339996.P15900694858604067595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A056926 (A340164 (n + 1)).toNat

end

end A339996.P15900694858604067595

/-! ## A339996.P2207476455791598349

`A014963(10*(n+10))*A056926(A340164(n+1))`
-/

namespace A339996.P2207476455791598349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 10)) * A056926 (A340164 (n + 1)).toNat

end

end A339996.P2207476455791598349

/-!
# A339997: Numbers that are the sum of an odd cube s and an even cube t such that 0 < s < t.

The programs for A339997, there is no canonical definition to state claims against.
-/

/-! ## A339997.P6356540975620208505

`eq[A173677(n), A383135(n+1)]`
-/

namespace A339997.P6356540975620208505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173677 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383135 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339997.P6356540975620208505

/-! ## A339997.P8624350372258597368

`A339995(A004201(n+1)^A101479(n))`
-/

namespace A339997.P8624350372258597368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339995 (SequenceMachineLib.roundAway ((A004201 (n + 1) : ℚ) ^ (A101479 n : ℤ))).toNat

end

end A339997.P8624350372258597368

/-!
# A339998: Numbers that are the sum of an even cube s and an odd cube t such that 0 < s < t.

The programs for A339998, there is no canonical definition to state claims against.
-/

/-! ## A339998.P13546530724819335859

`or(A250120(n), A270795(A175249(2*(n+1))))`
-/

namespace A339998.P13546530724819335859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A250120 n) (A270795 (A175249 (2 * (n + 1))).toNat)

end

end A339998.P13546530724819335859

/-!
# A339999: Squares that are divisible by both the sum of their digits and the product of their nonzero digits.

The programs for A339999, there is no canonical definition to state claims against.
-/

/-! ## A339999.P978587921213179595

`∩[A342262(n+1), n²]`
-/

namespace A339999.P978587921213179595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342262 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A339999.P978587921213179595

/-! ## A339999.P14550098949186649092

`∩[A000290(n), A342262(n+1)]`
-/

namespace A339999.P14550098949186649092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339999.P14550098949186649092

/-! ## A339999.P6235839995173077929

`∩[A117676(n), A342262(n+1)]`
-/

namespace A339999.P6235839995173077929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117676 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339999.P6235839995173077929

/-! ## A339999.P5833549420944567520

`∩[A055471(n+1), A118547(n+1)]`
-/

namespace A339999.P5833549420944567520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339999.P5833549420944567520

/-! ## A339999.P13671768069461127573

`∩[A098121(n+1), A346537(n+1)]`
-/

namespace A339999.P13671768069461127573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339999.P13671768069461127573

