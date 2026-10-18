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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
# A385500: Expansion of e.g.f. exp( -LambertW(-arctanh(x)) ).

The programs for A385500, there is no canonical definition to state claims against.
-/

/-! ## A385500.P2607531183692109064

`A347020(n)-A127324(A035051(n))`
-/

namespace A385500.P2607531183692109064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347020 n - A127324 (A035051 n).toNat

end

end A385500.P2607531183692109064

/-! ## A385500.P1631077111632986131

`A207569(n)-A331416(A000108(n))`
-/

namespace A385500.P1631077111632986131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207569 n - A331416 (A000108 n).toNat

end

end A385500.P1631077111632986131

/-!
# A385501: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-arctanh(x)) ).

The programs for A385501, there is no canonical definition to state claims against.
-/

/-! ## A385501.P5055776608289829715

`n!/2^n*A138020(n)`
-/

namespace A385501.P5055776608289829715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (2 ^ n : ℚ) * (A138020 n : ℚ)

end

end A385501.P5055776608289829715

/-! ## A385501.P16001134148026055108

`A383555(n)+A057356(A273954(n))`
-/

namespace A385501.P16001134148026055108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383555 n + A057356 (A273954 n).toNat

end

end A385501.P16001134148026055108

/-!
# A385502: E.g.f. A(x) satisfies A(x) = exp( arctanh(x * A(x)) / A(x) ).

The programs for A385502, there is no canonical definition to state claims against.
-/

/-! ## A385502.P1825673601872675660

`A128539(abs(1-n)!)`
-/

namespace A385502.P1825673601872675660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128539 (Nat.factorial |1 - (n : ℤ)|.toNat)

end

end A385502.P1825673601872675660

/-! ## A385502.P4803326181459853342

`A297595(lcm(n, a(n-1))+1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A385502.P4803326181459853342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A297595 (Int.lcm (n : ℤ) (a (n - 1)) + 1)

end

end A385502.P4803326181459853342

/-!
# A385503: Popular primes.

The programs for A385503, there is no canonical definition to state claims against.
-/

/-! ## A385503.P8478498783115944249

`A006530(gcd(A289661(n+1), A289662(n+1)))`
-/

namespace A385503.P8478498783115944249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A289661 (n + 1)) (A289662 (n + 1)))

end

end A385503.P8478498783115944249

/-! ## A385503.P3849741921405027316

`∩[A100725(n+1), A124661(n+1)]`
-/

namespace A385503.P3849741921405027316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385503.P3849741921405027316

/-! ## A385503.P15292254364585258517

`A124661(A077168(n))`
-/

namespace A385503.P15292254364585258517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124661 (A077168 n).toNat

end

end A385503.P15292254364585258517

/-! ## A385503.P11990729283218612611

`A124661(A391184(2^n))`
-/

namespace A385503.P11990729283218612611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124661 (A391184 (2 ^ n)).toNat

end

end A385503.P11990729283218612611

/-! ## A385503.P12256286958301432754

`A183098(A124661(n+1)²)`
-/

namespace A385503.P12256286958301432754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183098 (A124661 (n + 1) ^ 2).toNat

end

end A385503.P12256286958301432754

/-!
# A385504: Binomially timely primes: primes prime(k) that do not arrive late in comparison with the binomially weighted average of prime(1) .. prime(2k-1).

The programs for A385504, there is no canonical definition to state claims against.
-/

/-! ## A385504.P14201921328773697202

`∩[A078668(n+1), A072388(n)]`
-/

namespace A385504.P14201921328773697202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072388 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385504.P14201921328773697202

/-! ## A385504.P3320290701878970045

`∩[A216437(n+1), A329990(n+1)]`
-/

namespace A385504.P3320290701878970045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385504.P3320290701878970045

/-! ## A385504.P13158943973979760886

`eq[A003415(n), A383498(A122480(n+1))]`
-/

namespace A385504.P13158943973979760886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383498 (A122480 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385504.P13158943973979760886

/-! ## A385504.P10110939196187007268

`A320003(A328358(n))+A155777(n+1)`
-/

namespace A385504.P10110939196187007268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320003 (A328358 n).toNat + A155777 (n + 1)

end

end A385504.P10110939196187007268

/-!
# A385507: a(n) = v(1 + F(2*n - 1)), where F(x) = (3*x + 1)/2^v(3*x + 1), x is any odd natural number, and v(y) is the 2-adic valuation of y.

The programs for A385507, the canonical program `A385507.P8812681663359870477` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385507 has offset 1).

The definition of A385507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5461 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385507.P8812681663359870477

`A089309(3*n+2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A385507

/-- `A089309(3*n+2)` -/
def P8812681663359870477.Spec : Prop :=
  ∀ n, P8812681663359870477.a n = A385507 (n + 1)

theorem P8812681663359870477.correct : P8812681663359870477.Spec := by
  intro n
  simp only [A385507, Nat.add_sub_cancel]

end A385507

/-! ## A385507.P5908986594770977032

`A050603(A075677(n+1))`
-/

namespace A385507.P5908986594770977032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A075677 (n + 1)).toNat

end

end A385507.P5908986594770977032

namespace A385507

/-- `A050603(A075677(n+1))` -/
def P5908986594770977032.Spec : Prop :=
  ∀ n, P5908986594770977032.a n = A385507 (n + 1)

end A385507

/-! ## A385507.P16291442681106681498

`A007814(A075677(n+1)+1)`
-/

namespace A385507.P16291442681106681498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A075677 (n + 1) + 1).toNat

end

end A385507.P16291442681106681498

namespace A385507

/-- `A007814(A075677(n+1)+1)` -/
def P16291442681106681498.Spec : Prop :=
  ∀ n, P16291442681106681498.a n = A385507 (n + 1)

end A385507

/-! ## A385507.P12447196414979631647

`A375782(A075677(n+1)+1)`
-/

namespace A385507.P12447196414979631647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375782 (A075677 (n + 1) + 1).toNat

end

end A385507.P12447196414979631647

namespace A385507

/-- `A375782(A075677(n+1)+1)` -/
def P12447196414979631647.Spec : Prop :=
  ∀ n, P12447196414979631647.a n = A385507 (n + 1)

end A385507

/-! ## A385507.P12600613237003394641

`A007814(A139391(2*n+1)+1)`
-/

namespace A385507.P12600613237003394641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A139391 (2 * n + 1) + 1).toNat

end

end A385507.P12600613237003394641

namespace A385507

/-- `A007814(A139391(2*n+1)+1)` -/
def P12600613237003394641.Spec : Prop :=
  ∀ n, P12600613237003394641.a n = A385507 (n + 1)

end A385507

/-! ## A385507.P16664771282806906202

`A337821(A165355(2*n+1))+1`
-/

namespace A385507.P16664771282806906202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337821 (A165355 (2 * n + 1)).toNat + 1

end

end A385507.P16664771282806906202

namespace A385507

/-- `A337821(A165355(2*n+1))+1` -/
def P16664771282806906202.Spec : Prop :=
  ∀ n, P16664771282806906202.a n = A385507 (n + 1)

end A385507

/-! ## A385507.P2699792284750548755

`A001511(A003602(2*n+n+2))`
-/

namespace A385507.P2699792284750548755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A003602 (2 * n + (n + 2))).toNat

end

end A385507.P2699792284750548755

namespace A385507

/-- `A001511(A003602(2*n+n+2))` -/
def P2699792284750548755.Spec : Prop :=
  ∀ n, P2699792284750548755.a n = A385507 (n + 1)

end A385507

/-! ## A385507.P15378438055931080502

`A090996(A030101(2*n+n+2))`
-/

namespace A385507.P15378438055931080502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A030101 (2 * n + (n + 2))).toNat

end

end A385507.P15378438055931080502

namespace A385507

/-- `A090996(A030101(2*n+n+2))` -/
def P15378438055931080502.Spec : Prop :=
  ∀ n, P15378438055931080502.a n = A385507 (n + 1)

end A385507

/-! ## A385507.P15761328330642829517

`A089310(A017629(n))`
-/

namespace A385507.P15761328330642829517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089310 (A017629 n).toNat

end

end A385507.P15761328330642829517

namespace A385507

/-- `A089310(A017629(n))` -/
def P15761328330642829517.Spec : Prop :=
  ∀ n, P15761328330642829517.a n = A385507 (n + 1)

end A385507

/-! ## A385507.P1129735265771214252

`A302035(A269387(2*n+n+2))`
-/

namespace A385507.P1129735265771214252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302035 (A269387 (2 * n + (n + 2))).toNat

end

end A385507.P1129735265771214252

namespace A385507

/-- `A302035(A269387(2*n+n+2))` -/
def P1129735265771214252.Spec : Prop :=
  ∀ n, P1129735265771214252.a n = A385507 (n + 1)

end A385507

/-! ## A385507.P9843137558162680121

`A089310(A350051(n))`
-/

namespace A385507.P9843137558162680121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089310 (A350051 n).toNat

end

end A385507.P9843137558162680121

namespace A385507

/-- `A089310(A350051(n))` -/
def P9843137558162680121.Spec : Prop :=
  ∀ n, P9843137558162680121.a n = A385507 (n + 1)

end A385507

/-! ## A385507.P1206432672178461349

`A089310(A350052(n))`
-/

namespace A385507.P1206432672178461349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089310 (A350052 n).toNat

end

end A385507.P1206432672178461349

namespace A385507

/-- `A089310(A350052(n))` -/
def P1206432672178461349.Spec : Prop :=
  ∀ n, P1206432672178461349.a n = A385507 (n + 1)

end A385507

/-! ## A385507.P9616161326056386512

`A089310(A194999(n+2))`
-/

namespace A385507.P9616161326056386512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089310 (A194999 (n + 2)).toNat

end

end A385507.P9616161326056386512

namespace A385507

/-- `A089310(A194999(n+2))` -/
def P9616161326056386512.Spec : Prop :=
  ∀ n, P9616161326056386512.a n = A385507 (n + 1)

end A385507

/-!
# A385513: The numbers of people in the "SpellUnder-Down" variant of the Josephus problem such that the last person is freed.

The programs for A385513, there is no canonical definition to state claims against.
-/

/-! ## A385513.P1202370251378449178

`record[C(A380204(n+1), n)]`
-/

namespace A385513.P1202370251378449178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A380204 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385513.P1202370251378449178

/-!
# A385514: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(2*n+1,k) * binomial(2*n-k,n-k).

The programs for A385514, there is no canonical definition to state claims against.
-/

/-! ## A385514.P18377406659190735945

`A193842(∑[4*n])`
-/

namespace A385514.P18377406659190735945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A385514.P18377406659190735945

/-! ## A385514.P9062285116381126854

`A193843(∑[4*n])`
-/

namespace A385514.P9062285116381126854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193843 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A385514.P9062285116381126854

/-! ## A385514.P18314773492305423197

`A119673(A056220(n+1))`
-/

namespace A385514.P18314773492305423197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A056220 (n + 1)).toNat

end

end A385514.P18314773492305423197

/-! ## A385514.P16252155988127515325

`A119673(eq[1, A114327(n)])`
-/

namespace A385514.P16252155988127515325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A385514.P16252155988127515325

/-! ## A385514.P1451817847801257013

`A119673(A000217(2*n+1)+n)`
-/

namespace A385514.P1451817847801257013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A000217 (2 * n + 1) + (n : ℤ)).toNat

end

end A385514.P1451817847801257013

/-!
# A385515: Repdigit numbers whose square does not contain the repeated digit.

The programs for A385515, there is no canonical definition to state claims against.
-/

/-! ## A385515.P5295196248446491019

`∩[A029783(n+1), A193460(n+1)]`
-/

namespace A385515.P5295196248446491019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385515.P5295196248446491019

/-! ## A385515.P15396942538980274528

`∩[A029783(n+1), A160818(n+1)]`
-/

namespace A385515.P15396942538980274528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385515.P15396942538980274528

/-! ## A385515.P6630650936670425262

`∩[A029783(n+1), A010785(n)]`
-/

namespace A385515.P6630650936670425262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385515.P6630650936670425262

/-! ## A385515.P12131717731542686426

`eq[A061901(n), A109072(n)]`
-/

namespace A385515.P12131717731542686426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061901 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109072 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385515.P12131717731542686426

/-! ## A385515.P15258686767059001790

`eq[A076493(n), A151949(n)]`
-/

namespace A385515.P15258686767059001790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076493 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385515.P15258686767059001790

/-!
# A385516: Perfect powers whose digits are in strictly decreasing order.

The programs for A385516, there is no canonical definition to state claims against.
-/

/-! ## A385516.P10435415391909005260

`A355063(lt[(n+1)/2^val(n+1, 2), ∏{p}[n+1, #+1]])`
-/

namespace A385516.P10435415391909005260
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355063 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A385516.P10435415391909005260

/-! ## A385516.P4737458025902073126

`A355063(∑[A064094(n)])`
-/

namespace A385516.P4737458025902073126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355063 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A385516.P4737458025902073126

/-! ## A385516.P12915525489704793725

`A385517(A045745(n+1))`
-/

namespace A385516.P12915525489704793725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385517 (A045745 (n + 1)).toNat

end

end A385516.P12915525489704793725

/-! ## A385516.P10536665610703120067

`A385517(A090563(n+1))`
-/

namespace A385516.P10536665610703120067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385517 (A090563 (n + 1)).toNat

end

end A385516.P10536665610703120067

/-! ## A385516.P14839430232854071839

`A385517(A174323(n+1))`
-/

namespace A385516.P14839430232854071839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385517 (A174323 (n + 1)).toNat

end

end A385516.P14839430232854071839

/-!
# A385517: Perfect powers whose digits are in nonincreasing order.

The programs for A385517, there is no canonical definition to state claims against.
-/

/-! ## A385517.P4605757514670089345

`∩[A001597(n+1), A009996(n+1)]`
-/

namespace A385517.P4605757514670089345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385517.P4605757514670089345

/-!
# A385520: Expansion of Product_{k>0} ((1 - q^(2*k))*(1 - q^(6*k))^3)/((1 - q^k)*(1 - q^(3*k))*(1 - q^(4*k))*(1 - q^(12*k))).

The programs for A385520, there is no canonical definition to state claims against.
-/

/-! ## A385520.P8647803069049608229

`abs(A293306(n))`
-/

namespace A385520.P8647803069049608229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293306 n|

end

end A385520.P8647803069049608229

/-! ## A385520.P14311611555364296048

`A033999(n)*A293306(n)`
-/

namespace A385520.P14311611555364296048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A293306 n

end

end A385520.P14311611555364296048

/-! ## A385520.P8722191942703227228

`gcd(A000038(n), A293306(n))`
-/

namespace A385520.P8722191942703227228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A293306 n)

end

end A385520.P8722191942703227228

/-! ## A385520.P1666603983678878115

`lcm(A020985(n), A293306(n))`
-/

namespace A385520.P1666603983678878115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A293306 n)

end

end A385520.P1666603983678878115

/-! ## A385520.P195897690658850283

`abs(A293305(A090288(n+1)))`
-/

namespace A385520.P195897690658850283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293305 (A090288 (n + 1)).toNat|

end

end A385520.P195897690658850283

/-!
# A385531: Numbers x such that there exist three integers 00 such that sigma(x)^2 = sigma(y)^2 = sigma(z)^2 = x^2 + y^2 + z^2 + t^2.

The programs for A385531, there is no canonical definition to state claims against.
-/

/-! ## A385531.P5524518300993131388

`A385810(A024647(n+1))`
-/

namespace A385531.P5524518300993131388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385810 (A024647 (n + 1)).toNat

end

end A385531.P5524518300993131388

/-! ## A385531.P12024720249922258013

`A385810(A024648(n+1))`
-/

namespace A385531.P12024720249922258013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385810 (A024648 (n + 1)).toNat

end

end A385531.P12024720249922258013

/-! ## A385531.P6850894597008316550

`A385810(A024649(n+1))`
-/

namespace A385531.P6850894597008316550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385810 (A024649 (n + 1)).toNat

end

end A385531.P6850894597008316550

/-!
# A385532: Second prepended column of the tribonacci array of the second kind, A385436.

The programs for A385532, the canonical program `A385532.P17146396601814636055` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385532 has offset 1).

The definition of A385532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385532.P17146396601814636055

`n-∑[char[A140101(n)]]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A385532

/-- `n-∑[char[A140101(n)]]` -/
def P17146396601814636055.Spec : Prop :=
  ∀ n, P17146396601814636055.a n = A385532 (n + 1)

theorem P17146396601814636055.correct : P17146396601814636055.Spec := by
  intro n
  simp only [A385532, Nat.add_sub_cancel]

end A385532

/-! ## A385532.P8461776108723308377

`n-(A385533(n+1)+2)`
-/

namespace A385532.P8461776108723308377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A385533 (n + 1) + 2)

end

end A385532.P8461776108723308377

namespace A385532

/-- `n-(A385533(n+1)+2)` -/
def P8461776108723308377.Spec : Prop :=
  ∀ n, P8461776108723308377.a n = A385532 (n + 1)

end A385532

/-! ## A385532.P15177500186998727502

`∑[char[A140100(n+1)]]-1`
-/

namespace A385532.P15177500186998727502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A385532.P15177500186998727502

namespace A385532

/-- `∑[char[A140100(n+1)]]-1` -/
def P15177500186998727502.Spec : Prop :=
  ∀ n, P15177500186998727502.a n = A385532 (n + 1)

end A385532

/-! ## A385532.P10195685054375287229

`A385533(A288463(n+1))`
-/

namespace A385532.P10195685054375287229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385533 (A288463 (n + 1)).toNat

end

end A385532.P10195685054375287229

namespace A385532

/-- `A385533(A288463(n+1))` -/
def P10195685054375287229.Spec : Prop :=
  ∀ n, P10195685054375287229.a n = A385532 (n + 1)

end A385532

/-! ## A385532.P7115680046420860897

`A023444(n)-A385533(n+1)`
-/

namespace A385532.P7115680046420860897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 n - A385533 (n + 1)

end

end A385532.P7115680046420860897

namespace A385532

/-- `A023444(n)-A385533(n+1)` -/
def P7115680046420860897.Spec : Prop :=
  ∀ n, P7115680046420860897.a n = A385532 (n + 1)

end A385532

/-! ## A385532.P9729164824928774673

`A353086(n+1)-1`
-/

namespace A385532.P9729164824928774673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353086 (n + 1) - 1

end

end A385532.P9729164824928774673

namespace A385532

/-- `A353086(n+1)-1` -/
def P9729164824928774673.Spec : Prop :=
  ∀ n, P9729164824928774673.a n = A385532 (n + 1)

end A385532

/-! ## A385532.P3584574360621084135

`A023443(A353086(n+1))`
-/

namespace A385532.P3584574360621084135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A353086 (n + 1)).toNat

end

end A385532.P3584574360621084135

namespace A385532

/-- `A023443(A353086(n+1))` -/
def P3584574360621084135.Spec : Prop :=
  ∀ n, P3584574360621084135.a n = A385532 (n + 1)

end A385532

/-! ## A385532.P1017853141992636652

`n-(A353090(n+1)+1)`
-/

namespace A385532.P1017853141992636652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A353090 (n + 1) + 1)

end

end A385532.P1017853141992636652

namespace A385532

/-- `n-(A353090(n+1)+1)` -/
def P1017853141992636652.Spec : Prop :=
  ∀ n, P1017853141992636652.a n = A385532 (n + 1)

end A385532

/-! ## A385532.P7967538405795362374

`A023443(n)-A353090(n+1)`
-/

namespace A385532.P7967538405795362374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n - A353090 (n + 1)

end

end A385532.P7967538405795362374

namespace A385532

/-- `A023443(n)-A353090(n+1)` -/
def P7967538405795362374.Spec : Prop :=
  ∀ n, P7967538405795362374.a n = A385532 (n + 1)

end A385532

/-! ## A385532.P15749120605860377910

`A353083(n+1)-(A353084(n+1)+A351631(n+2))`
-/

namespace A385532.P15749120605860377910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353083 (n + 1) - (A353084 (n + 1) + A351631 (n + 2))

end

end A385532.P15749120605860377910

namespace A385532

/-- `A353083(n+1)-(A353084(n+1)+A351631(n+2))` -/
def P15749120605860377910.Spec : Prop :=
  ∀ n, P15749120605860377910.a n = A385532 (n + 1)

end A385532

/-!
# A385533: Third prepended column of the tribonacci array of the second kind, A385436.

The programs for A385533, the canonical program `A385533.P17951931454137274781` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385533 has offset 1).

The definition of A385533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385533.P14372237244117473774

`∑[char[A140101(n)]]-2`
-/

namespace A385533.P14372237244117473774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A385533.P14372237244117473774

namespace A385533

/-- `∑[char[A140101(n)]]-2` -/
def P14372237244117473774.Spec : Prop :=
  ∀ n, P14372237244117473774.a n = A385533 (n + 1)

end A385533

/-! ## A385533.P17951931454137274781

`n-(A385532(n+1)+2)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A385533

/-- `n-(A385532(n+1)+2)` -/
def P17951931454137274781.Spec : Prop :=
  ∀ n, P17951931454137274781.a n = A385533 (n + 1)

theorem P17951931454137274781.correct : P17951931454137274781.Spec := by
  intro n
  simp only [A385533, Nat.add_sub_cancel]

end A385533

/-! ## A385533.P10900622997732999829

`n-(∑[char[A140100(n+1)]]+1)`
-/

namespace A385533.P10900622997732999829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A385533.P10900622997732999829

namespace A385533

/-- `n-(∑[char[A140100(n+1)]]+1)` -/
def P10900622997732999829.Spec : Prop :=
  ∀ n, P10900622997732999829.a n = A385533 (n + 1)

end A385533

/-! ## A385533.P14233147805251449329

`A023444(n)-A385532(n+1)`
-/

namespace A385533.P14233147805251449329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 n - A385532 (n + 1)

end

end A385533.P14233147805251449329

namespace A385533

/-- `A023444(n)-A385532(n+1)` -/
def P14233147805251449329.Spec : Prop :=
  ∀ n, P14233147805251449329.a n = A385533 (n + 1)

end A385533

/-! ## A385533.P15225591662456830399

`A351631(n+1)-A288463(n+1)`
-/

namespace A385533.P15225591662456830399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351631 (n + 1) - A288463 (n + 1)

end

end A385533.P15225591662456830399

namespace A385533

/-- `A351631(n+1)-A288463(n+1)` -/
def P15225591662456830399.Spec : Prop :=
  ∀ n, P15225591662456830399.a n = A385533 (n + 1)

end A385533

/-! ## A385533.P12780854520129620236

`n-(A353086(n+1)+1)`
-/

namespace A385533.P12780854520129620236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A353086 (n + 1) + 1)

end

end A385533.P12780854520129620236

namespace A385533

/-- `n-(A353086(n+1)+1)` -/
def P12780854520129620236.Spec : Prop :=
  ∀ n, P12780854520129620236.a n = A385533 (n + 1)

end A385533

/-! ## A385533.P7272315586776531015

`A023443(n)-A353086(n+1)`
-/

namespace A385533.P7272315586776531015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n - A353086 (n + 1)

end

end A385533.P7272315586776531015

namespace A385533

/-- `A023443(n)-A353086(n+1)` -/
def P7272315586776531015.Spec : Prop :=
  ∀ n, P7272315586776531015.a n = A385533 (n + 1)

end A385533

/-! ## A385533.P13365395693440356808

`A353090(n+1)-1`
-/

namespace A385533.P13365395693440356808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353090 (n + 1) - 1

end

end A385533.P13365395693440356808

namespace A385533

/-- `A353090(n+1)-1` -/
def P13365395693440356808.Spec : Prop :=
  ∀ n, P13365395693440356808.a n = A385533 (n + 1)

end A385533

/-! ## A385533.P7479855038446822600

`A023443(A353090(n+1))`
-/

namespace A385533.P7479855038446822600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A353090 (n + 1)).toNat

end

end A385533.P7479855038446822600

namespace A385533

/-- `A023443(A353090(n+1))` -/
def P7479855038446822600.Spec : Prop :=
  ∀ n, P7479855038446822600.a n = A385533 (n + 1)

end A385533

/-!
# A385538: First differences of A184859.

The programs for A385538, the canonical program `A385538.P4395357012811371764` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385538 has offset 1).

The definition of A385538 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A184859, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A385538.P4395357012811371764

`A184859(n+2)-A184859(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A385538

/-- `A184859(n+2)-A184859(n+1)` -/
def P4395357012811371764.Spec : Prop :=
  ∀ n, P4395357012811371764.a n = A385538 (n + 1)

theorem P4395357012811371764.correct : P4395357012811371764.Spec := by
  intro n
  simp only [A385538, Nat.add_sub_cancel]

end A385538

/-! ## A385538.P17445079889073348505

`Δ[A184859(n+1)]`
-/

namespace A385538.P17445079889073348505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A385538.P17445079889073348505

namespace A385538

/-- `Δ[A184859(n+1)]` -/
def P17445079889073348505.Spec : Prop :=
  ∀ n, P17445079889073348505.a n = A385538 (n + 1)

theorem P17445079889073348505.correct : P17445079889073348505.Spec := by
  intro n
  simp only [A385538, Nat.add_sub_cancel, A385538.P17445079889073348505.f1, A385538.P17445079889073348505.a, A385538.P4395357012811371764.a, SequenceMachineLib.memo_apply]

end A385538

/-! ## A385538.P11448242656186198563

`Δ[p?[round(ϕ*n)]]`
-/

namespace A385538.P11448242656186198563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A385538.P11448242656186198563

namespace A385538

/-- `Δ[p?[round(ϕ*n)]]` -/
def P11448242656186198563.Spec : Prop :=
  ∀ n, P11448242656186198563.a n = A385538 (n + 1)

end A385538

/-! ## A385538.P928542392798038068

`Δ[A000040(A184861(n+1))]`
-/

namespace A385538.P928542392798038068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A184861 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A385538.P928542392798038068

namespace A385538

/-- `Δ[A000040(A184861(n+1))]` -/
def P928542392798038068.Spec : Prop :=
  ∀ n, P928542392798038068.a n = A385538 (n + 1)

end A385538

/-! ## A385538.P9793583058170306770

`Δ[record[A007431(A007067(n))]]`
-/

namespace A385538.P9793583058170306770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (A007067 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A385538.P9793583058170306770

namespace A385538

/-- `Δ[record[A007431(A007067(n))]]` -/
def P9793583058170306770.Spec : Prop :=
  ∀ n, P9793583058170306770.a n = A385538 (n + 1)

end A385538

/-! ## A385538.P15755149550886879429

`Δ[∩[A000040(n+1), A007067(n)]]`
-/

namespace A385538.P15755149550886879429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A385538.P15755149550886879429

namespace A385538

/-- `Δ[∩[A000040(n+1), A007067(n)]]` -/
def P15755149550886879429.Spec : Prop :=
  ∀ n, P15755149550886879429.a n = A385538 (n + 1)

end A385538

/-!
# A385540: Number of values of nonnegative s < n such that s^s == (-s)^s == s (mod n).

The programs for A385540, there is no canonical definition to state claims against.
-/

/-! ## A385540.P1914004531322378338

`A384781(n+1)+A385729(n+1)-A385103(n+1)`
-/

namespace A385540.P1914004531322378338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384781 (n + 1) + (A385729 (n + 1) - A385103 (n + 1))

end

end A385540.P1914004531322378338

/-! ## A385540.P34719867901339366

`A266843(A002350(3*n+1))+A243055(n+1)`
-/

namespace A385540.P34719867901339366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266843 (A002350 (3 * n + 1)).toNat + A243055 (n + 1)

end

end A385540.P34719867901339366

/-!
# A385541: Number of divisors of n such that d^d == (-d)^d == d (mod n).

The programs for A385541, there is no canonical definition to state claims against.
-/

/-! ## A385541.P9536137356092472594

`A384854(n+1)+A385731(n+1)-A385392(n+1)`
-/

namespace A385541.P9536137356092472594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384854 (n + 1) + (A385731 (n + 1) - A385392 (n + 1))

end

end A385541.P9536137356092472594

/-! ## A385541.P9758765112233926653

`A056832(A244804(n+1))`
-/

namespace A385541.P9758765112233926653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (A244804 (n + 1)).toNat

end

end A385541.P9758765112233926653

/-! ## A385541.P10608836772527353181

`A101660(A158272(n+2))`
-/

namespace A385541.P10608836772527353181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101660 (A158272 (n + 2)).toNat

end

end A385541.P10608836772527353181

/-! ## A385541.P15894706882424367579

`A056832(A284923(n+2))`
-/

namespace A385541.P15894706882424367579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (A284923 (n + 2)).toNat

end

end A385541.P15894706882424367579

/-! ## A385541.P17608152359897324730

`A281007(A286253(n+2))`
-/

namespace A385541.P17608152359897324730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281007 (A286253 (n + 2)).toNat

end

end A385541.P17608152359897324730

/-!
# A385542: The sum of the aliquot divisors of n that are powerful.

The programs for A385542, the canonical program `A385542.P8790659879283915129` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385542 has offset 1).

The definition of A385542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385542.P8790659879283915129

`∑{d}[n+1, A157658(#)*A183097((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A385542

/-- `∑{d}[n+1, A157658(#)*A183097((n+1)/#)]` -/
def P8790659879283915129.Spec : Prop :=
  ∀ n, P8790659879283915129.a n = A385542 (n + 1)

theorem P8790659879283915129.correct : P8790659879283915129.Spec := by
  intro n
  simp only [A385542, Nat.add_sub_cancel]

end A385542

/-! ## A385542.P2629410143089266046

`A091051(n+1)%A208750(A000124(n))`
-/

namespace A385542.P2629410143089266046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091051 (n + 1)) (A208750 (A000124 n).toNat)

end

end A385542.P2629410143089266046

namespace A385542

/-- `A091051(n+1)%A208750(A000124(n))` -/
def P2629410143089266046.Spec : Prop :=
  ∀ n, P2629410143089266046.a n = A385542 (n + 1)

end A385542

/-! ## A385542.P16424743828585996572

`A183097(n+1)%A002260(A001844(n))`
-/

namespace A385542.P16424743828585996572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183097 (n + 1)) (A002260 (A001844 n).toNat)

end

end A385542.P16424743828585996572

namespace A385542

/-- `A183097(n+1)%A002260(A001844(n))` -/
def P16424743828585996572.Spec : Prop :=
  ∀ n, P16424743828585996572.a n = A385542 (n + 1)

end A385542

/-! ## A385542.P1671229234924044312

`A206773(A317358(n+1)^A001222(n+1))`
-/

namespace A385542.P1671229234924044312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206773 (SequenceMachineLib.roundAway ((A317358 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ))).toNat

end

end A385542.P1671229234924044312

namespace A385542

/-- `A206773(A317358(n+1)^A001222(n+1))` -/
def P1671229234924044312.Spec : Prop :=
  ∀ n, P1671229234924044312.a n = A385542 (n + 1)

end A385542

/-! ## A385542.P17935688158990776140

`A366990(n+1)%A090106(n+1)`
-/

namespace A385542.P17935688158990776140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366990 (n + 1)) (A090106 (n + 1))

end

end A385542.P17935688158990776140

namespace A385542

/-- `A366990(n+1)%A090106(n+1)` -/
def P17935688158990776140.Spec : Prop :=
  ∀ n, P17935688158990776140.a n = A385542 (n + 1)

end A385542

/-!
# A385543: G.f. A(x) satisfies A(x) = Sum_{k>=0} x^k * A(k^2*x).

The programs for A385543, there is no canonical definition to state claims against.
-/

/-! ## A385543.P8967796052570058564

`A208243(n+1)+A038572(A289020(n))`
-/

namespace A385543.P8967796052570058564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208243 (n + 1) + A038572 (A289020 n).toNat

end

end A385543.P8967796052570058564

/-! ## A385543.P7936260958807699855

`A077028(A015473(n)*A235130(n+1))`
-/

namespace A385543.P7936260958807699855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (A015473 n * A235130 (n + 1)).toNat

end

end A385543.P7936260958807699855

/-!
# A385544: G.f. A(x) satisfies A(x) = 1 + Sum_{k>=1} k * x^k * A(k*x).

The programs for A385544, there is no canonical definition to state claims against.
-/

/-! ## A385544.P3857551607858750858

`A237194(A257201(n+1))`
-/

namespace A385544.P3857551607858750858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237194 (A257201 (n + 1)).toNat

end

end A385544.P3857551607858750858

/-! ## A385544.P8666333165233729029

`A371632(A349310(n)+A054993(n))`
-/

namespace A385544.P8666333165233729029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371632 (A349310 n + A054993 n).toNat

end

end A385544.P8666333165233729029

/-!
# A385546: E.g.f. A(x) satisfies A(x) = Sum_{k>=0} x^k/k! * A(2*k*x).

The programs for A385546, there is no canonical definition to state claims against.
-/

/-! ## A385546.P17332092075824403393

`A334282(n)-A181735(A260916(n))`
-/

namespace A385546.P17332092075824403393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334282 n - A181735 (A260916 n).toNat

end

end A385546.P17332092075824403393

/-!
# A385547: E.g.f. A(x) satisfies A(x) = Sum_{k>=0} x^k/k! * A(k^2*x).

The programs for A385547, there is no canonical definition to state claims against.
-/

/-! ## A385547.P18313227129903565357

`A260431(n!²)`
-/

namespace A385547.P18313227129903565357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260431 (Nat.factorial n ^ 2)

end

end A385547.P18313227129903565357

/-!
# A385548: E.g.f. A(x) satisfies A(x) = 1 + Sum_{k>=1} k * x^k/k! * A(k*x).

The programs for A385548, there is no canonical definition to state claims against.
-/

/-! ## A385548.P18442241383224762324

`A365661(C(∑[n²]+2, 2))`
-/

namespace A385548.P18442241383224762324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365661 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) 2)

end

end A385548.P18442241383224762324

/-!
# A385552: Period of {binomial(N,n) mod 5: N in Z}.

The programs for A385552, the canonical program `A385552.P12696242286888131710` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385552 has offset 0).

The definition of A385552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 626 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385552.P12696242286888131710

`5*a(floor(n/5))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A385552

/-- `5*a(floor(n/5))` -/
def P12696242286888131710.Spec : Prop :=
  ∀ n, (P12696242286888131710.a n : ℤ) = A385552 n

theorem P12696242286888131710.correct : P12696242286888131710.Spec := by
  intro n
  simp only [A385552]

end A385552

/-! ## A385552.P12930256413158007306

`a(n-1)+4*(n-n%a(n-1))` with `a(0)=1`
-/

namespace A385552.P12930256413158007306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 4 * ((n : ℤ) - Int.tmod (n : ℤ) (a (n - 1)))

end

end A385552.P12930256413158007306

namespace A385552

/-- `a(n-1)+4*(n-n%a(n-1))` -/
def P12930256413158007306.Spec : Prop :=
  ∀ n, P12930256413158007306.a n = A385552 n

end A385552

/-! ## A385552.P4856617532439343463

`A385554(n)/A062383(n)`
-/

namespace A385552.P4856617532439343463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385554 n : ℚ) / (A062383 n : ℚ)

end

end A385552.P4856617532439343463

namespace A385552

/-- `A385554(n)/A062383(n)` -/
def P4856617532439343463.Spec : Prop :=
  ∀ n, P4856617532439343463.a n = (A385552 n : ℚ)

end A385552

/-! ## A385552.P2655434010601418147

`gcd(A017334(n), A385554(n))`
-/

namespace A385552.P2655434010601418147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017334 n) (A385554 n)

end

end A385552.P2655434010601418147

namespace A385552

/-- `gcd(A017334(n), A385554(n))` -/
def P2655434010601418147.Spec : Prop :=
  ∀ n, (P2655434010601418147.a n : ℤ) = A385552 n

end A385552

/-! ## A385552.P678474356043108452

`A385554(n)/A053644(2*n+1)`
-/

namespace A385552.P678474356043108452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385554 n : ℚ) / (A053644 (2 * n + 1) : ℚ)

end

end A385552.P678474356043108452

namespace A385552

/-- `A385554(n)/A053644(2*n+1)` -/
def P678474356043108452.Spec : Prop :=
  ∀ n, P678474356043108452.a n = (A385552 n : ℚ)

end A385552

/-! ## A385552.P16106941394058764596

`A064235(n+1)/A385553(n)*A385554(n)`
-/

namespace A385552.P16106941394058764596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064235 (n + 1) : ℚ) / (A385553 n : ℚ) * (A385554 n : ℚ)

end

end A385552.P16106941394058764596

namespace A385552

/-- `A064235(n+1)/A385553(n)*A385554(n)` -/
def P16106941394058764596.Spec : Prop :=
  ∀ n, P16106941394058764596.a n = (A385552 n : ℚ)

end A385552

/-! ## A385552.P15521735056081586622

`A000265(A385554(n))`
-/

namespace A385552.P15521735056081586622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A385554 n).toNat

end

end A385552.P15521735056081586622

namespace A385552

/-- `A000265(A385554(n))` -/
def P15521735056081586622.Spec : Prop :=
  ∀ n, P15521735056081586622.a n = A385552 n

end A385552

/-! ## A385552.P16852186896390784211

`A165826(A151970(n+1))`
-/

namespace A385552.P16852186896390784211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (A151970 (n + 1)).toNat

end

end A385552.P16852186896390784211

namespace A385552

/-- `A165826(A151970(n+1))` -/
def P16852186896390784211.Spec : Prop :=
  ∀ n, P16852186896390784211.a n = A385552 n

end A385552

/-!
# A385553: Period of {binomial(N,n) mod 6: N in Z}.

The programs for A385553, the canonical program `A385553.P5498376679823547533` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385553 has offset 0).

The definition of A385553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385553.P5498376679823547533

`A062383(n)*A064235(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A385553

/-- `A062383(n)*A064235(n+1)` -/
def P5498376679823547533.Spec : Prop :=
  ∀ n, P5498376679823547533.a n = A385553 n

theorem P5498376679823547533.correct : P5498376679823547533.Spec := by
  intro n
  simp only [A385553]

end A385553

/-! ## A385553.P4712741321015704806

`2^ceil(log2(n+1))*3^∑[char[3^n]]`
-/

namespace A385553.P4712741321015704806
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) * (3 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A385553.P4712741321015704806

namespace A385553

/-- `2^ceil(log2(n+1))*3^∑[char[3^n]]` -/
def P4712741321015704806.Spec : Prop :=
  ∀ n, P4712741321015704806.a n = (A385553 n : ℚ)

end A385553

/-! ## A385553.P17988422773286083112

`A349593(A000217(n+5)+n)`
-/

namespace A385553.P17988422773286083112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349593 (A000217 (n + 5) + (n : ℤ)).toNat

end

end A385553.P17988422773286083112

namespace A385553

/-- `A349593(A000217(n+5)+n)` -/
def P17988422773286083112.Spec : Prop :=
  ∀ n, P17988422773286083112.a n = A385553 n

end A385553

/-!
# A385554: Period of {binomial(N,n) mod 10: N in Z}.

The programs for A385554, the canonical program `A385554.P5664007560876723036` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385554 has offset 0).

The definition of A385554 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385552, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A385554.P5664007560876723036

`A062383(n)*A385552(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A385554

/-- `A062383(n)*A385552(n)` -/
def P5664007560876723036.Spec : Prop :=
  ∀ n, P5664007560876723036.a n = A385554 n

theorem P5664007560876723036.correct : P5664007560876723036.Spec := by
  intro n
  simp only [A385554]

end A385554

/-! ## A385554.P12682726328199121193

`A053644(2*n+1)*A385552(n)`
-/

namespace A385554.P12682726328199121193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * n + 1) * A385552 n

end

end A385554.P12682726328199121193

namespace A385554

/-- `A053644(2*n+1)*A385552(n)` -/
def P12682726328199121193.Spec : Prop :=
  ∀ n, P12682726328199121193.a n = A385554 n

end A385554

/-! ## A385554.P14462715666192810309

`A385552(n)/A064235(n+1)*A385553(n)`
-/

namespace A385554.P14462715666192810309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385552 n : ℚ) / (A064235 (n + 1) : ℚ) * (A385553 n : ℚ)

end

end A385554.P14462715666192810309

namespace A385554

/-- `A385552(n)/A064235(n+1)*A385553(n)` -/
def P14462715666192810309.Spec : Prop :=
  ∀ n, P14462715666192810309.a n = (A385554 n : ℚ)

end A385554

/-! ## A385554.P14178976497778861176

`A000027(2^ceil(log2(n+1))*A385552(n))`
-/

namespace A385554.P14178976497778861176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) * (A385552 n : ℚ))).toNat

end

end A385554.P14178976497778861176

namespace A385554

/-- `A000027(2^ceil(log2(n+1))*A385552(n))` -/
def P14178976497778861176.Spec : Prop :=
  ∀ n, P14178976497778861176.a n = A385554 n

end A385554

/-!
# A385555: Period of {binomial(N,3) mod n: N in Z}.

The programs for A385555, the canonical program `A385555.P3319066329953152229` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385555 has offset 1).

The definition of A385555 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385555.P3319066329953152229

`(n+1)*gcd(6, n+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A385555

/-- `(n+1)*gcd(6, n+1)` -/
def P3319066329953152229.Spec : Prop :=
  ∀ n, (P3319066329953152229.a n : ℤ) = A385555 (n + 1)

theorem P3319066329953152229.correct : P3319066329953152229.Spec := by
  intro n
  simp only [A385555, Nat.add_sub_cancel]

end A385555

/-! ## A385555.P9559789797836588457

`(n+1)*A089128(n+1)`
-/

namespace A385555.P9559789797836588457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A089128 (n + 1)

end

end A385555.P9559789797836588457

namespace A385555

/-- `(n+1)*A089128(n+1)` -/
def P9559789797836588457.Spec : Prop :=
  ∀ n, P9559789797836588457.a n = A385555 (n + 1)

end A385555

/-! ## A385555.P10045547335575780154

`gcd((n+2)^5+n, (n+1)²)`
-/

namespace A385555.P10045547335575780154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 2) ^ 5 + n) ((n + 1) ^ 2)

end

end A385555.P10045547335575780154

namespace A385555

/-- `gcd((n+2)^5+n, (n+1)²)` -/
def P10045547335575780154.Spec : Prop :=
  ∀ n, (P10045547335575780154.a n : ℤ) = A385555 (n + 1)

end A385555

/-! ## A385555.P9486552343376619571

`(n+1)²/gcd(C(n+3, 3), ∑[n+2])`
-/

namespace A385555.P9486552343376619571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Nat.gcd (Nat.choose (n + 3) 3) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A385555.P9486552343376619571

namespace A385555

/-- `(n+1)²/gcd(C(n+3, 3), ∑[n+2])` -/
def P9486552343376619571.Spec : Prop :=
  ∀ n, P9486552343376619571.a n = (A385555 (n + 1) : ℚ)

end A385555

/-! ## A385555.P8192540656139282108

`(n+1)^3/A129202(n)`
-/

namespace A385555.P8192540656139282108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / (A129202 n : ℚ)

end

end A385555.P8192540656139282108

namespace A385555

/-- `(n+1)^3/A129202(n)` -/
def P8192540656139282108.Spec : Prop :=
  ∀ n, P8192540656139282108.a n = (A385555 (n + 1) : ℚ)

end A385555

/-! ## A385555.P3788040456179938366

`(n+1)²²/A129196(n)`
-/

namespace A385555.P3788040456179938366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℚ) / (A129196 n : ℚ)

end

end A385555.P3788040456179938366

namespace A385555

/-- `(n+1)²²/A129196(n)` -/
def P3788040456179938366.Spec : Prop :=
  ∀ n, P3788040456179938366.a n = (A385555 (n + 1) : ℚ)

end A385555

/-! ## A385555.P4877871896546567300

`(n+1)²/A060789(n+1)`
-/

namespace A385555.P4877871896546567300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A060789 (n + 1) : ℚ)

end

end A385555.P4877871896546567300

namespace A385555

/-- `(n+1)²/A060789(n+1)` -/
def P4877871896546567300.Spec : Prop :=
  ∀ n, P4877871896546567300.a n = (A385555 (n + 1) : ℚ)

end A385555

/-! ## A385555.P5229910641916869071

`(n+1)*(2-A291574(n+1))`
-/

namespace A385555.P5229910641916869071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A291574 (n + 1))

end

end A385555.P5229910641916869071

namespace A385555

/-- `(n+1)*(2-A291574(n+1))` -/
def P5229910641916869071.Spec : Prop :=
  ∀ n, P5229910641916869071.a n = A385555 (n + 1)

end A385555

/-! ## A385555.P16012058286869338820

`A000034(n)*A203648(n+1)`
-/

namespace A385555.P16012058286869338820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A203648 (n + 1)

end

end A385555.P16012058286869338820

namespace A385555

/-- `A000034(n)*A203648(n+1)` -/
def P16012058286869338820.Spec : Prop :=
  ∀ n, P16012058286869338820.a n = A385555 (n + 1)

end A385555

/-! ## A385555.P288287384985955825

`A385556(n+1)/A000034(n)`
-/

namespace A385555.P288287384985955825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385556 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A385555.P288287384985955825

namespace A385555

/-- `A385556(n+1)/A000034(n)` -/
def P288287384985955825.Spec : Prop :=
  ∀ n, P288287384985955825.a n = (A385555 (n + 1) : ℚ)

end A385555

/-! ## A385555.P6715055031764375086

`lcm(A158496(n), A203648(n+1))`
-/

namespace A385555.P6715055031764375086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158496 n) (A203648 (n + 1))

end

end A385555.P6715055031764375086

namespace A385555

/-- `lcm(A158496(n), A203648(n+1))` -/
def P6715055031764375086.Spec : Prop :=
  ∀ n, (P6715055031764375086.a n : ℤ) = A385555 (n + 1)

end A385555

/-! ## A385555.P2337037006499224001

`(n+1)*A065331(A007947(n+1))`
-/

namespace A385555.P2337037006499224001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A065331 (A007947 (n + 1)).toNat

end

end A385555.P2337037006499224001

namespace A385555

/-- `(n+1)*A065331(A007947(n+1))` -/
def P2337037006499224001.Spec : Prop :=
  ∀ n, P2337037006499224001.a n = A385555 (n + 1)

end A385555

/-! ## A385555.P2321471105820859155

`A242603(n+1)*A370182(n+1)`
-/

namespace A385555.P2321471105820859155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242603 (n + 1) * A370182 (n + 1)

end

end A385555.P2321471105820859155

namespace A385555

/-- `A242603(n+1)*A370182(n+1)` -/
def P2321471105820859155.Spec : Prop :=
  ∀ n, P2321471105820859155.a n = A385555 (n + 1)

end A385555

/-! ## A385555.P1272767057552846642

`(n+1)*A370182(A370180(n+1))`
-/

namespace A385555.P1272767057552846642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A370182 (A370180 (n + 1)).toNat

end

end A385555.P1272767057552846642

namespace A385555

/-- `(n+1)*A370182(A370180(n+1))` -/
def P1272767057552846642.Spec : Prop :=
  ∀ n, P1272767057552846642.a n = A385555 (n + 1)

end A385555

/-! ## A385555.P5574368084745130722

`A370567(n+1)/A268354(n+1)`
-/

namespace A385555.P5574368084745130722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370567 (n + 1) : ℚ) / (A268354 (n + 1) : ℚ)

end

end A385555.P5574368084745130722

namespace A385555

/-- `A370567(n+1)/A268354(n+1)` -/
def P5574368084745130722.Spec : Prop :=
  ∀ n, P5574368084745130722.a n = (A385555 (n + 1) : ℚ)

end A385555

/-! ## A385555.P10536193172009086365

`(n+1)²/A051176(A026741(n+1))`
-/

namespace A385555.P10536193172009086365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A051176 (A026741 (n + 1)).toNat : ℚ)

end

end A385555.P10536193172009086365

namespace A385555

/-- `(n+1)²/A051176(A026741(n+1))` -/
def P10536193172009086365.Spec : Prop :=
  ∀ n, P10536193172009086365.a n = (A385555 (n + 1) : ℚ)

end A385555

/-! ## A385555.P56618815990516465

`A129196(n)/(A060789(n+1)*A060789(n+1))`
-/

namespace A385555.P56618815990516465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129196 n : ℚ) / (A060789 (n + 1) * A060789 (n + 1) : ℚ)

end

end A385555.P56618815990516465

namespace A385555

/-- `A129196(n)/(A060789(n+1)*A060789(n+1))` -/
def P56618815990516465.Spec : Prop :=
  ∀ n, P56618815990516465.a n = (A385555 (n + 1) : ℚ)

end A385555

/-! ## A385555.P17052050086619854434

`A022998(n+1)/A385559(n+1)*A385560(n+1)`
-/

namespace A385555.P17052050086619854434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022998 (n + 1) : ℚ) / (A385559 (n + 1) : ℚ) * (A385560 (n + 1) : ℚ)

end

end A385555.P17052050086619854434

namespace A385555

/-- `A022998(n+1)/A385559(n+1)*A385560(n+1)` -/
def P17052050086619854434.Spec : Prop :=
  ∀ n, P17052050086619854434.a n = (A385555 (n + 1) : ℚ)

end A385555

/-! ## A385555.P1707682527626421065

`A109047(n+1)/A070293(n+1)*A283442(n+1)`
-/

namespace A385555.P1707682527626421065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109047 (n + 1) : ℚ) / (A070293 (n + 1) : ℚ) * (A283442 (n + 1) : ℚ)

end

end A385555.P1707682527626421065

namespace A385555

/-- `A109047(n+1)/A070293(n+1)*A283442(n+1)` -/
def P1707682527626421065.Spec : Prop :=
  ∀ n, P1707682527626421065.a n = (A385555 (n + 1) : ℚ)

end A385555

/-!
# A385556: Period of {binomial(N,4) mod n: N in Z}.

The programs for A385556, the canonical program `A385556.P15405264877329185066` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385556 has offset 1).

The definition of A385556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385556.P15405264877329185066

`(n+1)*gcd(n+1, 6)*(2-(n+1)%2)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A385556

/-- `(n+1)*gcd(n+1, 6)*(2-(n+1)%2)` -/
def P15405264877329185066.Spec : Prop :=
  ∀ n, P15405264877329185066.a n = A385556 (n + 1)

theorem P15405264877329185066.correct : P15405264877329185066.Spec := by
  intro n
  simp only [A385556, Nat.add_sub_cancel]

end A385556

/-! ## A385556.P17375142578252565012

`(n+1)*A089128(n+1)*A000034(n)`
-/

namespace A385556.P17375142578252565012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A089128 (n + 1) * A000034 n

end

end A385556.P17375142578252565012

namespace A385556

/-- `(n+1)*A089128(n+1)*A000034(n)` -/
def P17375142578252565012.Spec : Prop :=
  ∀ n, P17375142578252565012.a n = A385556 (n + 1)

end A385556

/-! ## A385556.P15623068393183530500

`(n+1)*gcd(n+1, 6)*gcd(n+1, 2)`
-/

namespace A385556.P15623068393183530500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd (n + 1) 6 * Nat.gcd (n + 1) 2

end

end A385556.P15623068393183530500

namespace A385556

/-- `(n+1)*gcd(n+1, 6)*gcd(n+1, 2)` -/
def P15623068393183530500.Spec : Prop :=
  ∀ n, (P15623068393183530500.a n : ℤ) = A385556 (n + 1)

end A385556

/-! ## A385556.P5054288155651630220

`A146308(n+1)-6`
-/

namespace A385556.P5054288155651630220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146308 (n + 1) - 6

end

end A385556.P5054288155651630220

namespace A385556

/-- `A146308(n+1)-6` -/
def P5054288155651630220.Spec : Prop :=
  ∀ n, P5054288155651630220.a n = A385556 (n + 1)

end A385556

/-! ## A385556.P4569284297827608822

`gcd(A069779(n), A100214(n))`
-/

namespace A385556.P4569284297827608822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069779 n) (A100214 n)

end

end A385556.P4569284297827608822

namespace A385556

/-- `gcd(A069779(n), A100214(n))` -/
def P4569284297827608822.Spec : Prop :=
  ∀ n, (P4569284297827608822.a n : ℤ) = A385556 (n + 1)

end A385556

/-! ## A385556.P7627525150927764601

`A010685(n)*A203648(n+1)`
-/

namespace A385556.P7627525150927764601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n * A203648 (n + 1)

end

end A385556.P7627525150927764601

namespace A385556

/-- `A010685(n)*A203648(n+1)` -/
def P7627525150927764601.Spec : Prop :=
  ∀ n, P7627525150927764601.a n = A385556 (n + 1)

end A385556

/-! ## A385556.P14182993666396906149

`A000034(n)*A385555(n+1)`
-/

namespace A385556.P14182993666396906149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A385555 (n + 1)

end

end A385556.P14182993666396906149

namespace A385556

/-- `A000034(n)*A385555(n+1)` -/
def P14182993666396906149.Spec : Prop :=
  ∀ n, P14182993666396906149.a n = A385556 (n + 1)

end A385556

/-! ## A385556.P1884777802841127139

`gcd(A069079(n), A385557(n+1))`
-/

namespace A385556.P1884777802841127139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069079 n) (A385557 (n + 1))

end

end A385556.P1884777802841127139

namespace A385556

/-- `gcd(A069079(n), A385557(n+1))` -/
def P1884777802841127139.Spec : Prop :=
  ∀ n, (P1884777802841127139.a n : ℤ) = A385556 (n + 1)

end A385556

/-! ## A385556.P5773532577911104098

`gcd(A218133(n), A270437(n+1))`
-/

namespace A385556.P5773532577911104098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A218133 n) (A270437 (n + 1))

end

end A385556.P5773532577911104098

namespace A385556

/-- `gcd(A218133(n), A270437(n+1))` -/
def P5773532577911104098.Spec : Prop :=
  ∀ n, (P5773532577911104098.a n : ℤ) = A385556 (n + 1)

end A385556

/-! ## A385556.P11942191860973375352

`gcd(A157371(n), A385558(n+1))`
-/

namespace A385556.P11942191860973375352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157371 n) (A385558 (n + 1))

end

end A385556.P11942191860973375352

namespace A385556

/-- `gcd(A157371(n), A385558(n+1))` -/
def P11942191860973375352.Spec : Prop :=
  ∀ n, (P11942191860973375352.a n : ℤ) = A385556 (n + 1)

end A385556

/-! ## A385556.P14690047966629831863

`A385560(n+1)/A165743(n+1)`
-/

namespace A385556.P14690047966629831863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385560 (n + 1) : ℚ) / (A165743 (n + 1) : ℚ)

end

end A385556.P14690047966629831863

namespace A385556

/-- `A385560(n+1)/A165743(n+1)` -/
def P14690047966629831863.Spec : Prop :=
  ∀ n, P14690047966629831863.a n = (A385556 (n + 1) : ℚ)

end A385556

/-! ## A385556.P15027156334319712570

`gcd(A067726(n+1), A221465(n+1))`
-/

namespace A385556.P15027156334319712570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067726 (n + 1)) (A221465 (n + 1))

end

end A385556.P15027156334319712570

namespace A385556

/-- `gcd(A067726(n+1), A221465(n+1))` -/
def P15027156334319712570.Spec : Prop :=
  ∀ n, (P15027156334319712570.a n : ℤ) = A385556 (n + 1)

end A385556

/-! ## A385556.P12700635654644990121

`gcd(A192845(n+1), A328148(n+1))`
-/

namespace A385556.P12700635654644990121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A192845 (n + 1)) (A328148 (n + 1))

end

end A385556.P12700635654644990121

namespace A385556

/-- `gcd(A192845(n+1), A328148(n+1))` -/
def P12700635654644990121.Spec : Prop :=
  ∀ n, (P12700635654644990121.a n : ℤ) = A385556 (n + 1)

end A385556

/-! ## A385556.P13165983684235097610

`gcd(A180413(n+1), A361264(n+1))`
-/

namespace A385556.P13165983684235097610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A180413 (n + 1)) (A361264 (n + 1))

end

end A385556.P13165983684235097610

namespace A385556

/-- `gcd(A180413(n+1), A361264(n+1))` -/
def P13165983684235097610.Spec : Prop :=
  ∀ n, (P13165983684235097610.a n : ℤ) = A385556 (n + 1)

end A385556

/-! ## A385556.P17745478821987598453

`gcd(A187287(n+1), A385559(n+1))`
-/

namespace A385556.P17745478821987598453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A187287 (n + 1)) (A385559 (n + 1))

end

end A385556.P17745478821987598453

namespace A385556

/-- `gcd(A187287(n+1), A385559(n+1))` -/
def P17745478821987598453.Spec : Prop :=
  ∀ n, (P17745478821987598453.a n : ℤ) = A385556 (n + 1)

end A385556

/-! ## A385556.P12850214905881817886

`(n+1)*A370566(A370182(A370180(n+1)))`
-/

namespace A385556.P12850214905881817886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A370566 (A370182 (A370180 (n + 1)).toNat).toNat

end

end A385556.P12850214905881817886

namespace A385556

/-- `(n+1)*A370566(A370182(A370180(n+1)))` -/
def P12850214905881817886.Spec : Prop :=
  ∀ n, P12850214905881817886.a n = A385556 (n + 1)

end A385556

/-! ## A385556.P3585609874221276275

`A022998(n+1)/A385558(n+1)*A385560(n+1)`
-/

namespace A385556.P3585609874221276275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022998 (n + 1) : ℚ) / (A385558 (n + 1) : ℚ) * (A385560 (n + 1) : ℚ)

end

end A385556.P3585609874221276275

namespace A385556

/-- `A022998(n+1)/A385558(n+1)*A385560(n+1)` -/
def P3585609874221276275.Spec : Prop :=
  ∀ n, P3585609874221276275.a n = (A385556 (n + 1) : ℚ)

end A385556

/-! ## A385556.P2239787329463734625

`A385555(n+1)/A385558(n+1)*A385559(n+1)`
-/

namespace A385556.P2239787329463734625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385555 (n + 1) : ℚ) / (A385558 (n + 1) : ℚ) * (A385559 (n + 1) : ℚ)

end

end A385556.P2239787329463734625

namespace A385556

/-- `A385555(n+1)/A385558(n+1)*A385559(n+1)` -/
def P2239787329463734625.Spec : Prop :=
  ∀ n, P2239787329463734625.a n = (A385556 (n + 1) : ℚ)

end A385556

/-! ## A385556.P1297947081116398155

`A022998(n+1)*A022998(n+1)/A051176(n+1)`
-/

namespace A385556.P1297947081116398155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022998 (n + 1) * A022998 (n + 1) : ℚ) / (A051176 (n + 1) : ℚ)

end

end A385556.P1297947081116398155

namespace A385556

/-- `A022998(n+1)*A022998(n+1)/A051176(n+1)` -/
def P1297947081116398155.Spec : Prop :=
  ∀ n, P1297947081116398155.a n = (A385556 (n + 1) : ℚ)

end A385556

/-! ## A385556.P9612419845443464962

`A385555(A022998(n+1))`
-/

namespace A385556.P9612419845443464962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385555 (A022998 (n + 1)).toNat

end

end A385556.P9612419845443464962

namespace A385556

/-- `A385555(A022998(n+1))` -/
def P9612419845443464962.Spec : Prop :=
  ∀ n, P9612419845443464962.a n = A385556 (n + 1)

end A385556

/-!
# A385557: Period of {binomial(N,5) mod n: N in Z}. Also, period of {binomial(N,6) mod n: N in Z}.

The programs for A385557, the canonical program `A385557.P12954412509993387778` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385557 has offset 1).

The definition of A385557 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385557.P12954412509993387778

`(n+1)*gcd(n+1, 30)*(2-(n+1)%2)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A385557

/-- `(n+1)*gcd(n+1, 30)*(2-(n+1)%2)` -/
def P12954412509993387778.Spec : Prop :=
  ∀ n, P12954412509993387778.a n = A385557 (n + 1)

theorem P12954412509993387778.correct : P12954412509993387778.Spec := by
  intro n
  simp only [A385557, Nat.add_sub_cancel]

end A385557

/-! ## A385557.P1152173962213774101

`(n+1)*gcd(60, (n+1)²)`
-/

namespace A385557.P1152173962213774101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 60 ((n + 1) ^ 2)

end

end A385557.P1152173962213774101

namespace A385557

/-- `(n+1)*gcd(60, (n+1)²)` -/
def P1152173962213774101.Spec : Prop :=
  ∀ n, (P1152173962213774101.a n : ℤ) = A385557 (n + 1)

end A385557

/-! ## A385557.P17215717194407240974

`lcm(n+1, A385558((n+1)/7^val(n+1, 7)))`
-/

namespace A385557.P17215717194407240974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A385558 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (7 ^ SequenceMachineLib.valuation (n + 1) 7 : ℚ))).toNat)

end

end A385557.P17215717194407240974

namespace A385557

/-- `lcm(n+1, A385558((n+1)/7^val(n+1, 7)))` -/
def P17215717194407240974.Spec : Prop :=
  ∀ n, (P17215717194407240974.a n : ℤ) = A385557 (n + 1)

end A385557

/-! ## A385557.P7085493220355298979

`gcd(A165281(n), A385558(n+1))`
-/

namespace A385557.P7085493220355298979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165281 n) (A385558 (n + 1))

end

end A385557.P7085493220355298979

namespace A385557

/-- `gcd(A165281(n), A385558(n+1))` -/
def P7085493220355298979.Spec : Prop :=
  ∀ n, (P7085493220355298979.a n : ℤ) = A385557 (n + 1)

end A385557

/-! ## A385557.P14915248841575094421

`gcd(A216114(n+1), A385559(n+1))`
-/

namespace A385557.P14915248841575094421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A216114 (n + 1)) (A385559 (n + 1))

end

end A385557.P14915248841575094421

namespace A385557

/-- `gcd(A216114(n+1), A385559(n+1))` -/
def P14915248841575094421.Spec : Prop :=
  ∀ n, (P14915248841575094421.a n : ℤ) = A385557 (n + 1)

end A385557

/-! ## A385557.P5184970260127423799

`lcm(A385556(n+1), A394222(n+1))`
-/

namespace A385557.P5184970260127423799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A385556 (n + 1)) (A394222 (n + 1))

end

end A385557.P5184970260127423799

namespace A385557

/-- `lcm(A385556(n+1), A394222(n+1))` -/
def P5184970260127423799.Spec : Prop :=
  ∀ n, (P5184970260127423799.a n : ℤ) = A385557 (n + 1)

end A385557

/-! ## A385557.P8765312189060084868

`A394222(A385556(n+1))`
-/

namespace A385557.P8765312189060084868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394222 (A385556 (n + 1)).toNat

end

end A385557.P8765312189060084868

namespace A385557

/-- `A394222(A385556(n+1))` -/
def P8765312189060084868.Spec : Prop :=
  ∀ n, P8765312189060084868.a n = A385557 (n + 1)

end A385557

/-! ## A385557.P7582662115872456236

`A106608(A385558(n+1))`
-/

namespace A385557.P7582662115872456236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A385558 (n + 1)).toNat

end

end A385557.P7582662115872456236

namespace A385557

/-- `A106608(A385558(n+1))` -/
def P7582662115872456236.Spec : Prop :=
  ∀ n, P7582662115872456236.a n = A385557 (n + 1)

end A385557

/-! ## A385557.P2837332596460133461

`A106615(A385559(n+1))`
-/

namespace A385557.P2837332596460133461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106615 (A385559 (n + 1)).toNat

end

end A385557.P2837332596460133461

namespace A385557

/-- `A106615(A385559(n+1))` -/
def P2837332596460133461.Spec : Prop :=
  ∀ n, P2837332596460133461.a n = A385557 (n + 1)

end A385557

/-!
# A385558: Period of {binomial(N,7) mod n: N in Z}.

The programs for A385558, the canonical program `A385558.P18014410950527201159` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385558 has offset 1).

The definition of A385558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385558.P18014410950527201159

`(n+1)*gcd(n+1, 210)*(2-(n+1)%2)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A385558

/-- `(n+1)*gcd(n+1, 210)*(2-(n+1)%2)` -/
def P18014410950527201159.Spec : Prop :=
  ∀ n, P18014410950527201159.a n = A385558 (n + 1)

theorem P18014410950527201159.correct : P18014410950527201159.Spec := by
  intro n
  simp only [A385558, Nat.add_sub_cancel]

end A385558

/-! ## A385558.P8233976718779021603

`A385559(n+1)/A000034(n)`
-/

namespace A385558.P8233976718779021603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385559 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A385558.P8233976718779021603

namespace A385558

/-- `A385559(n+1)/A000034(n)` -/
def P8233976718779021603.Spec : Prop :=
  ∀ n, P8233976718779021603.a n = (A385558 (n + 1) : ℚ)

end A385558

/-! ## A385558.P13729401298890402062

`gcd(A361264(n+1), A385559(n+1))`
-/

namespace A385558.P13729401298890402062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A361264 (n + 1)) (A385559 (n + 1))

end

end A385558.P13729401298890402062

namespace A385558

/-- `gcd(A361264(n+1), A385559(n+1))` -/
def P13729401298890402062.Spec : Prop :=
  ∀ n, (P13729401298890402062.a n : ℤ) = A385558 (n + 1)

end A385558

/-! ## A385558.P8802880236635373907

`lcm(A385557(n+1), A394223(n+1))`
-/

namespace A385558.P8802880236635373907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A385557 (n + 1)) (A394223 (n + 1))

end

end A385558.P8802880236635373907

namespace A385558

/-- `lcm(A385557(n+1), A394223(n+1))` -/
def P8802880236635373907.Spec : Prop :=
  ∀ n, (P8802880236635373907.a n : ℤ) = A385558 (n + 1)

end A385558

/-! ## A385558.P3015887453165831082

`A022998(n+1)/A385556(n+1)*A385560(n+1)`
-/

namespace A385558.P3015887453165831082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022998 (n + 1) : ℚ) / (A385556 (n + 1) : ℚ) * (A385560 (n + 1) : ℚ)

end

end A385558.P3015887453165831082

namespace A385558

/-- `A022998(n+1)/A385556(n+1)*A385560(n+1)` -/
def P3015887453165831082.Spec : Prop :=
  ∀ n, P3015887453165831082.a n = (A385558 (n + 1) : ℚ)

end A385558

/-! ## A385558.P5559248435873112908

`A385555(n+1)/A385556(n+1)*A385559(n+1)`
-/

namespace A385558.P5559248435873112908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385555 (n + 1) : ℚ) / (A385556 (n + 1) : ℚ) * (A385559 (n + 1) : ℚ)

end

end A385558.P5559248435873112908

namespace A385558

/-- `A385555(n+1)/A385556(n+1)*A385559(n+1)` -/
def P5559248435873112908.Spec : Prop :=
  ∀ n, P5559248435873112908.a n = (A385558 (n + 1) : ℚ)

end A385558

/-! ## A385558.P16820423325036759779

`A385560(n+1)/A089128(n+1)`
-/

namespace A385558.P16820423325036759779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385560 (n + 1) : ℚ) / (A089128 (n + 1) : ℚ)

end

end A385558.P16820423325036759779

namespace A385558

/-- `A385560(n+1)/A089128(n+1)` -/
def P16820423325036759779.Spec : Prop :=
  ∀ n, P16820423325036759779.a n = (A385558 (n + 1) : ℚ)

end A385558

/-! ## A385558.P13775138605843999583

`A394223(A385557(n+1))`
-/

namespace A385558.P13775138605843999583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394223 (A385557 (n + 1)).toNat

end

end A385558.P13775138605843999583

namespace A385558

/-- `A394223(A385557(n+1))` -/
def P13775138605843999583.Spec : Prop :=
  ∀ n, P13775138605843999583.a n = A385558 (n + 1)

end A385558

/-! ## A385558.P17512269123773715398

`A026741(A385559(n+1))`
-/

namespace A385558.P17512269123773715398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A385559 (n + 1)).toNat

end

end A385558.P17512269123773715398

namespace A385558

/-- `A026741(A385559(n+1))` -/
def P17512269123773715398.Spec : Prop :=
  ∀ n, P17512269123773715398.a n = A385558 (n + 1)

end A385558

/-!
# A385559: Period of {binomial(N,8) mod n: N in Z}.

The programs for A385559, the canonical program `A385559.P1809382533330294816` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385559 has offset 1).

The definition of A385559 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385559.P1809382533330294816

`(n+1)*gcd(n+1, 210)*(4-3*(n+1)%2)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A385559

/-- `(n+1)*gcd(n+1, 210)*(4-3*(n+1)%2)` -/
def P1809382533330294816.Spec : Prop :=
  ∀ n, P1809382533330294816.a n = A385559 (n + 1)

theorem P1809382533330294816.correct : P1809382533330294816.Spec := by
  intro n
  simp only [A385559, Nat.add_sub_cancel]

end A385559

/-! ## A385559.P6265721283033106482

`A000034(n)*A385558(n+1)`
-/

namespace A385559.P6265721283033106482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A385558 (n + 1)

end

end A385559.P6265721283033106482

namespace A385559

/-- `A000034(n)*A385558(n+1)` -/
def P6265721283033106482.Spec : Prop :=
  ∀ n, P6265721283033106482.a n = A385559 (n + 1)

end A385559

/-! ## A385559.P15030973936519700135

`A022998(n+1)/A385555(n+1)*A385560(n+1)`
-/

namespace A385559.P15030973936519700135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022998 (n + 1) : ℚ) / (A385555 (n + 1) : ℚ) * (A385560 (n + 1) : ℚ)

end

end A385559.P15030973936519700135

namespace A385559

/-- `A022998(n+1)/A385555(n+1)*A385560(n+1)` -/
def P15030973936519700135.Spec : Prop :=
  ∀ n, P15030973936519700135.a n = (A385559 (n + 1) : ℚ)

end A385559

/-! ## A385559.P15209477382348782526

`A385556(n+1)/A385555(n+1)*A385558(n+1)`
-/

namespace A385559.P15209477382348782526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385556 (n + 1) : ℚ) / (A385555 (n + 1) : ℚ) * (A385558 (n + 1) : ℚ)

end

end A385559.P15209477382348782526

namespace A385559

/-- `A385556(n+1)/A385555(n+1)*A385558(n+1)` -/
def P15209477382348782526.Spec : Prop :=
  ∀ n, P15209477382348782526.a n = (A385559 (n + 1) : ℚ)

end A385559

/-! ## A385559.P7472349029987914754

`A385558(A022998(n+1))`
-/

namespace A385559.P7472349029987914754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385558 (A022998 (n + 1)).toNat

end

end A385559.P7472349029987914754

namespace A385559

/-- `A385558(A022998(n+1))` -/
def P7472349029987914754.Spec : Prop :=
  ∀ n, P7472349029987914754.a n = A385559 (n + 1)

end A385559

/-! ## A385559.P16871713084658296104

`A385558(A257088(n+1))`
-/

namespace A385559.P16871713084658296104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385558 (A257088 (n + 1)).toNat

end

end A385559.P16871713084658296104

namespace A385559

/-- `A385558(A257088(n+1))` -/
def P16871713084658296104.Spec : Prop :=
  ∀ n, P16871713084658296104.a n = A385559 (n + 1)

end A385559

/-! ## A385559.P8879111084272077132

`A385560(A022998(n+1))/A089128(n+1)`
-/

namespace A385559.P8879111084272077132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385560 (A022998 (n + 1)).toNat : ℚ) / (A089128 (n + 1) : ℚ)

end

end A385559.P8879111084272077132

namespace A385559

/-- `A385560(A022998(n+1))/A089128(n+1)` -/
def P8879111084272077132.Spec : Prop :=
  ∀ n, P8879111084272077132.a n = (A385559 (n + 1) : ℚ)

end A385559

/-! ## A385559.P10220674528457154710

`A385558(A385556(n+1)/A089128(n+1))`
-/

namespace A385559.P10220674528457154710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385558 (SequenceMachineLib.roundAway ((A385556 (n + 1) : ℚ) / (A089128 (n + 1) : ℚ))).toNat

end

end A385559.P10220674528457154710

namespace A385559

/-- `A385558(A385556(n+1)/A089128(n+1))` -/
def P10220674528457154710.Spec : Prop :=
  ∀ n, P10220674528457154710.a n = A385559 (n + 1)

end A385559

/-!
# A385560: Period of {binomial(N,9) mod n: N in Z}. Also, period of {binomial(N,10) mod n: N in Z}.

The programs for A385560, the canonical program `A385560.P9142912081511133296` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385560 has offset 1).

The definition of A385560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385560.P9142912081511133296

`(n+1)*gcd(n+1, 6)*gcd(n+1, 210)*(2-(n+1)%2)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A385560

/-- `(n+1)*gcd(n+1, 6)*gcd(n+1, 210)*(2-(n+1)%2)` -/
def P9142912081511133296.Spec : Prop :=
  ∀ n, P9142912081511133296.a n = A385560 (n + 1)

theorem P9142912081511133296.correct : P9142912081511133296.Spec := by
  intro n
  simp only [A385560, Nat.add_sub_cancel]

end A385560

/-! ## A385560.P9756321047569870502

`A165743(n+1)*A385556(n+1)`
-/

namespace A385560.P9756321047569870502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165743 (n + 1) * A385556 (n + 1)

end

end A385560.P9756321047569870502

namespace A385560

/-- `A165743(n+1)*A385556(n+1)` -/
def P9756321047569870502.Spec : Prop :=
  ∀ n, P9756321047569870502.a n = A385560 (n + 1)

end A385560

/-! ## A385560.P11465576164637353215

`A385555(n+1)/A022998(n+1)*A385559(n+1)`
-/

namespace A385560.P11465576164637353215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385555 (n + 1) : ℚ) / (A022998 (n + 1) : ℚ) * (A385559 (n + 1) : ℚ)

end

end A385560.P11465576164637353215

namespace A385560

/-- `A385555(n+1)/A022998(n+1)*A385559(n+1)` -/
def P11465576164637353215.Spec : Prop :=
  ∀ n, P11465576164637353215.a n = (A385560 (n + 1) : ℚ)

end A385560

/-! ## A385560.P16276318937991440425

`A385556(n+1)/A022998(n+1)*A385558(n+1)`
-/

namespace A385560.P16276318937991440425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385556 (n + 1) : ℚ) / (A022998 (n + 1) : ℚ) * (A385558 (n + 1) : ℚ)

end

end A385560.P16276318937991440425

namespace A385560

/-- `A385556(n+1)/A022998(n+1)*A385558(n+1)` -/
def P16276318937991440425.Spec : Prop :=
  ∀ n, P16276318937991440425.a n = (A385560 (n + 1) : ℚ)

end A385560

/-! ## A385560.P3660428549999734212

`A385559(A203648(n+1))`
-/

namespace A385560.P3660428549999734212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385559 (A203648 (n + 1)).toNat

end

end A385560.P3660428549999734212

namespace A385560

/-- `A385559(A203648(n+1))` -/
def P3660428549999734212.Spec : Prop :=
  ∀ n, P3660428549999734212.a n = A385560 (n + 1)

end A385560

/-! ## A385560.P16454862675333839379

`A385558(A385555(n+1))`
-/

namespace A385560.P16454862675333839379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385558 (A385555 (n + 1)).toNat

end

end A385560.P16454862675333839379

namespace A385560

/-- `A385558(A385555(n+1))` -/
def P16454862675333839379.Spec : Prop :=
  ∀ n, P16454862675333839379.a n = A385560 (n + 1)

end A385560

/-! ## A385560.P4527419651697727390

`A385558((n+1)*A089128(n+1))`
-/

namespace A385560.P4527419651697727390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385558 ((n + 1 : ℤ) * A089128 (n + 1)).toNat

end

end A385560.P4527419651697727390

namespace A385560

/-- `A385558((n+1)*A089128(n+1))` -/
def P4527419651697727390.Spec : Prop :=
  ∀ n, P4527419651697727390.a n = A385560 (n + 1)

end A385560

/-! ## A385560.P7007921420028037604

`A374490(A385559(n+1))`
-/

namespace A385560.P7007921420028037604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374490 (A385559 (n + 1)).toNat

end

end A385560.P7007921420028037604

namespace A385560

/-- `A374490(A385559(n+1))` -/
def P7007921420028037604.Spec : Prop :=
  ∀ n, P7007921420028037604.a n = A385560 (n + 1)

end A385560

/-!
# A385561: Numbers m such that (1/m) * Sum_{k=1..m} phi(k)/k is closer to 6/Pi^2 than it is for any number smaller than m, where phi is the Euler totient function (A000010).

The programs for A385561, there is no canonical definition to state claims against.
-/

/-! ## A385561.P365688253434264660

`lt[A100851(n), A034087(A020639(n+1))]`
-/

namespace A385561.P365688253434264660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100851 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034087 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385561.P365688253434264660

/-! ## A385561.P9465689482575302003

`A157477(A320594(n+1))`
-/

namespace A385561.P9465689482575302003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157477 (A320594 (n + 1 + 12)).toNat

end

end A385561.P9465689482575302003

/-! ## A385561.P15935170289276361141

`record[A245092(A301345(n+1))]`
-/

namespace A385561.P15935170289276361141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A301345 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385561.P15935170289276361141

/-! ## A385561.P14388682544253426610

`eq[A087612(n+1), A170910(n+1)]`
-/

namespace A385561.P14388682544253426610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170910 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385561.P14388682544253426610

/-! ## A385561.P10072916124915283232

`eq[A358724(A196416(n)), A379320(n)]`
-/

namespace A385561.P10072916124915283232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358724 (A196416 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379320 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385561.P10072916124915283232

/-!
# A385562: Numbers m such that (1/m) * Sum_{k=1..m} k/phi(k) sets a record value, where phi is the Euler totient function (A000010).

The programs for A385562, there is no canonical definition to state claims against.
-/

/-! ## A385562.P1680772258121777210

`eq[A013632(A336707(n+3)), A051953(n+1)]`
-/

namespace A385562.P1680772258121777210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A336707 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385562.P1680772258121777210

/-!
# A385563: Expansion of 1/((1-x) * (1-5*x))^(3/2).

The programs for A385563, the canonical program `A385563.P1842336001049775043` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385563 has offset 0).

The definition of A385563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385563.P1842336001049775043

`((6*n+3)*a(n-1)-5*(n+1)*a(n-2))/n` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A385563

/-- `((6*n+3)*a(n-1)-5*(n+1)*a(n-2))/n` -/
def P1842336001049775043.Spec : Prop :=
  ∀ n, P1842336001049775043.a n = (A385563 n : ℚ)

end A385563

/-! ## A385563.P17298368749802391656

`∑[A383254(n)]`
-/

namespace A385563.P17298368749802391656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385563.P17298368749802391656

namespace A385563

/-- `∑[A383254(n)]` -/
def P17298368749802391656.Spec : Prop :=
  ∀ n, P17298368749802391656.a n = A385563 n

end A385563

/-! ## A385563.P866660438982151449

`∑[∑[A163869(n)]]`
-/

namespace A385563.P866660438982151449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163869 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385563.P866660438982151449

namespace A385563

/-- `∑[∑[A163869(n)]]` -/
def P866660438982151449.Spec : Prop :=
  ∀ n, P866660438982151449.a n = A385563 n

end A385563

/-! ## A385563.P8263151395808307257

`∑[n+1]*A002212(n+1)`
-/

namespace A385563.P8263151395808307257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002212 (n + 1)

end

end A385563.P8263151395808307257

namespace A385563

/-- `∑[n+1]*A002212(n+1)` -/
def P8263151395808307257.Spec : Prop :=
  ∀ n, P8263151395808307257.a n = A385563 n

end A385563

/-! ## A385563.P11502585817249959236

`A002212(n+1)*A117142(2*n+1)`
-/

namespace A385563.P11502585817249959236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) * A117142 (2 * n + 1)

end

end A385563.P11502585817249959236

namespace A385563

/-- `A002212(n+1)*A117142(2*n+1)` -/
def P11502585817249959236.Spec : Prop :=
  ∀ n, P11502585817249959236.a n = A385563 n

end A385563

/-! ## A385563.P7339241604052084583

`A002212(n+1)+A000096(n)*A002212(n+1)`
-/

namespace A385563.P7339241604052084583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) + A000096 n * A002212 (n + 1)

end

end A385563.P7339241604052084583

namespace A385563

/-- `A002212(n+1)+A000096(n)*A002212(n+1)` -/
def P7339241604052084583.Spec : Prop :=
  ∀ n, P7339241604052084583.a n = A385563 n

end A385563

/-! ## A385563.P2861307555458419947

`A002212(n+1)/A000244(n)*A027472(n+3)`
-/

namespace A385563.P2861307555458419947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002212 (n + 1) : ℚ) / (A000244 n : ℚ) * (A027472 (n + 3) : ℚ)

end

end A385563.P2861307555458419947

namespace A385563

/-- `A002212(n+1)/A000244(n)*A027472(n+3)` -/
def P2861307555458419947.Spec : Prop :=
  ∀ n, P2861307555458419947.a n = (A385563 n : ℚ)

end A385563

/-! ## A385563.P1079298295206431624

`(A007317(n+2)-A007317(n+1))*A000217(n+1)`
-/

namespace A385563.P1079298295206431624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007317 (n + 2) - A007317 (n + 1)) * A000217 (n + 1)

end

end A385563.P1079298295206431624

namespace A385563

/-- `(A007317(n+2)-A007317(n+1))*A000217(n+1)` -/
def P1079298295206431624.Spec : Prop :=
  ∀ n, P1079298295206431624.a n = A385563 n

end A385563

/-! ## A385563.P590796057196415493

`A002212(n+1)/A005572(n)*A385728(n)`
-/

namespace A385563.P590796057196415493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002212 (n + 1) : ℚ) / (A005572 n : ℚ) * (A385728 n : ℚ)

end

end A385563.P590796057196415493

namespace A385563

/-- `A002212(n+1)/A005572(n)*A385728(n)` -/
def P590796057196415493.Spec : Prop :=
  ∀ n, P590796057196415493.a n = (A385563 n : ℚ)

end A385563

/-!
# A385564: Prime powers k such that lcm(1, 2, 3, ..., k)-1 is prime.

The programs for A385564, there is no canonical definition to state claims against.
-/

/-! ## A385564.P16564406673497420734

`filter[A057825(n+1), A069513(#)]`
-/

namespace A385564.P16564406673497420734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A385564.P16564406673497420734

/-! ## A385564.P13925438524673777201

`filter[A057825(n+1), A010055(#)]`
-/

namespace A385564.P13925438524673777201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A385564.P13925438524673777201

/-! ## A385564.P12411179078486571983

`∩[A000961(n+1), A057825(n+1)]`
-/

namespace A385564.P12411179078486571983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385564.P12411179078486571983

/-! ## A385564.P9583193523810745820

`∩[A036116(n+1), A057825(n+1)]`
-/

namespace A385564.P9583193523810745820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385564.P9583193523810745820

/-! ## A385564.P18417297546378452994

`∩[A057825(n+1), A059046(n+1)]`
-/

namespace A385564.P18417297546378452994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385564.P18417297546378452994

/-!
# A385571: Number of subsets of the first n twin primes (A001097) whose sum is a twin prime.

The programs for A385571, there is no canonical definition to state claims against.
-/

/-! ## A385571.P5378229331826283129

`A117599(n)+A003056(A000108(n))`
-/

namespace A385571.P5378229331826283129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117599 n + A003056 (A000108 n).toNat

end

end A385571.P5378229331826283129

/-! ## A385571.P11314550416497084629

`A122079(A018152(n))`
-/

namespace A385571.P11314550416497084629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122079 (A018152 n).toNat

end

end A385571.P11314550416497084629

/-! ## A385571.P7977388717084912073

`A097285(A052979(n))`
-/

namespace A385571.P7977388717084912073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A052979 n).toNat

end

end A385571.P7977388717084912073

/-! ## A385571.P13101571327185127189

`A083277(A132835(n))`
-/

namespace A385571.P13101571327185127189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A132835 n).toNat

end

end A385571.P13101571327185127189

/-! ## A385571.P11531619331987350598

`A162988(A120899(n))`
-/

namespace A385571.P11531619331987350598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162988 (A120899 n).toNat

end

end A385571.P11531619331987350598

/-!
# A385572: Number of subsets of {1..n} with the same number of maximal runs (increasing by 1) as maximal anti-runs (increasing by more than 1).

The programs for A385572, there is no canonical definition to state claims against.
-/

/-! ## A385572.P16973711511248026853

`∑[A217615(abs(1-n))]`
-/

namespace A385572.P16973711511248026853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217615 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385572.P16973711511248026853

/-! ## A385572.P11016287918159859212

`a(n-1)+Δ[A371564(n)]-A371358(n)` with `a(0)=1`
-/

namespace A385572.P11016287918159859212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371564 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (f1 (n + 1) - f1 n - A371358 n)

end

end A385572.P11016287918159859212

/-! ## A385572.P18016644118229894022

`∑[A059780(n²-n)]`
-/

namespace A385572.P18016644118229894022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059780 (n ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385572.P18016644118229894022

/-! ## A385572.P15061105174796698486

`A357532(A061147(n+2))`
-/

namespace A385572.P15061105174796698486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357532 (A061147 (n + 2)).toNat

end

end A385572.P15061105174796698486

/-! ## A385572.P357581237358435097

`A357532(A061497(n+2))`
-/

namespace A385572.P357581237358435097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357532 (A061497 (n + 2)).toNat

end

end A385572.P357581237358435097

/-!
# A385575: Numbers whose binary indices have the same number of adjacent parts differing by 1 as adjacent parts differing by more than 1.

The programs for A385575, there is no canonical definition to state claims against.
-/

/-! ## A385575.P6734593538393743992

`eq[A277937(n), A329720(n)]`
-/

namespace A385575.P6734593538393743992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329720 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385575.P6734593538393743992

/-! ## A385575.P13986020073813598782

`eq[A000120(2*n+1), A005811(2*n)]`
-/

namespace A385575.P13986020073813598782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385575.P13986020073813598782

/-! ## A385575.P1014733072162545855

`eq[A069010(n), A072380(A000120(n))]`
-/

namespace A385575.P1014733072162545855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072380 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385575.P1014733072162545855

/-! ## A385575.P13457122036579939046

`eq[A000120(n), A265064(A014081(n))]`
-/

namespace A385575.P13457122036579939046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265064 (A014081 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385575.P13457122036579939046

/-! ## A385575.P17144432146136715838

`eq[A000120(n), A369859(A277561(n))]`
-/

namespace A385575.P17144432146136715838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369859 (A277561 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385575.P17144432146136715838

/-! ## A385575.P4114753645800297759

`eq[A069010(n), A385887(A246029(n))]`
-/

namespace A385575.P4114753645800297759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385887 (A246029 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385575.P4114753645800297759

/-! ## A385575.P13120786295122040347

`eq[A000120(2*n), A288231(A014081(n))]`
-/

namespace A385575.P13120786295122040347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288231 (A014081 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385575.P13120786295122040347

/-! ## A385575.P13056421893561571882

`eq[A000120(2*n+1), A000120(A300838(2*n))]`
-/

namespace A385575.P13056421893561571882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A300838 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385575.P13056421893561571882

/-!
# A385576: Numbers whose prime indices have the same number of distinct elements as maximal anti-runs.

The programs for A385576, there is no canonical definition to state claims against.
-/

/-! ## A385576.P16569893909879491835

`filter[A212166(n+1), A132350(#)]`
-/

namespace A385576.P16569893909879491835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A385576.P16569893909879491835

/-! ## A385576.P15272428864316926837

`filter[A212166(n+1), A380458(#)]`
-/

namespace A385576.P15272428864316926837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380458 (f1 j).toNat = 1) n)

end

end A385576.P15272428864316926837

/-! ## A385576.P10182362575812877967

`∪[A325337(n+1), A009927(n)]`
-/

namespace A385576.P10182362575812877967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009927 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385576.P10182362575812877967

/-! ## A385576.P18061533901105781348

`∪[A325337(n+1), A009938(n)]`
-/

namespace A385576.P18061533901105781348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385576.P18061533901105781348

/-! ## A385576.P362702411010440347

`∪[A325337(n+1), A011245(n)]`
-/

namespace A385576.P362702411010440347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011245 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385576.P362702411010440347

/-! ## A385576.P11738476448409617761

`∪[A325337(n+1), A108648(n)]`
-/

namespace A385576.P11738476448409617761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108648 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385576.P11738476448409617761

/-! ## A385576.P2165766185216749141

`∪[A325337(n+1), A175112(n)]`
-/

namespace A385576.P2165766185216749141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175112 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385576.P2165766185216749141

/-! ## A385576.P13137383715850959873

`∪[A325337(n+1), A209995(n)]`
-/

namespace A385576.P13137383715850959873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209995 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385576.P13137383715850959873

/-!
# A385580: a(n) is the number of ways to partition an n X n X n cube into four noncongruent cuboids of different volumes.

The programs for A385580, there is no canonical definition to state claims against.
-/

/-! ## A385580.P6005072494954171721

`A387121(A141214(n+1))`
-/

namespace A385580.P6005072494954171721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387121 (A141214 (n + 1)).toNat

end

end A385580.P6005072494954171721

/-! ## A385580.P8076532635513193351

`A387121(eq[7, A206283(n+1)])`
-/

namespace A385580.P8076532635513193351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387121 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A385580.P8076532635513193351

/-! ## A385580.P7822450402600420489

`A387121(A000124(n+3)+n)`
-/

namespace A385580.P7822450402600420489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387121 (A000124 (n + 3) + (n : ℤ)).toNat

end

end A385580.P7822450402600420489

/-! ## A385580.P14293485846104720968

`A387121(lt[A208910(n+4), A052509(n)])`
-/

namespace A385580.P14293485846104720968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208910 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387121 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A385580.P14293485846104720968

/-!
# A385581: Square array read by antidiagonals: T(n,d) is the number of fixed d-dimensional polysticks of size n.

The programs for A385581, there is no canonical definition to state claims against.
-/

/-! ## A385581.P8062851201198194116

`A093346(A077168(n+1))`
-/

namespace A385581.P8062851201198194116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093346 (A077168 (n + 1)).toNat

end

end A385581.P8062851201198194116

/-! ## A385581.P2158347944923414561

`A093346(A043319(n+2))`
-/

namespace A385581.P2158347944923414561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093346 (A043319 (n + 2)).toNat

end

end A385581.P2158347944923414561

/-! ## A385581.P912243660379340870

`A093346(A044916(n+2))`
-/

namespace A385581.P912243660379340870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093346 (A044916 (n + 2)).toNat

end

end A385581.P912243660379340870

/-! ## A385581.P2856452606363967827

`A093346(A065672(n+2))`
-/

namespace A385581.P2856452606363967827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093346 (A065672 (n + 2)).toNat

end

end A385581.P2856452606363967827

/-! ## A385581.P12774542065269485543

`A093346(A065673(n+2))`
-/

namespace A385581.P12774542065269485543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093346 (A065673 (n + 2)).toNat

end

end A385581.P12774542065269485543

/-!
# A385584: a(n) is the number of pairs (p, t) such that p is a pyramidal number, t is a triangular number, p + t <= n and t <= p.

The programs for A385584, there is no canonical definition to state claims against.
-/

/-! ## A385584.P6640980828116874279

`∑[A000035(A177697(n+1))]`
-/

namespace A385584.P6640980828116874279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A177697 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385584.P6640980828116874279

/-! ## A385584.P616178513063094590

`∑[A047486(A034056(n+1))%2]`
-/

namespace A385584.P616178513063094590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047486 (A034056 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385584.P616178513063094590

/-! ## A385584.P6618502257921047159

`A123579(n+1)%A225646(2*n+3)`
-/

namespace A385584.P6618502257921047159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123579 (n + 1)) (A225646 (2 * n + 3))

end

end A385584.P6618502257921047159

/-! ## A385584.P16713911306202810120

`∑[A008683(A228267(n+1)²)]`
-/

namespace A385584.P16713911306202810120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A228267 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385584.P16713911306202810120

/-! ## A385584.P12923527521236397203

`∑[A010060(Δ[A003370(n+1)])]`
-/

namespace A385584.P12923527521236397203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003370 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385584.P12923527521236397203

/-!
# A385586: Primes p such that there exists prime q < p such that sigma(p+1) = sigma(q+1) = p + q.

The programs for A385586, there is no canonical definition to state claims against.
-/

/-! ## A385586.P12812079189560936021

`A324256(A261208(n+1))`
-/

namespace A385586.P12812079189560936021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324256 (A261208 (n + 1)).toNat

end

end A385586.P12812079189560936021

/-!
# A385589: a(n) = 2^(n-2)*(3*binomial(n,3) + 6*binomial(n,2) + 6*n + 4).

The programs for A385589, the canonical program `A385589.P15325417032889616716` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385589 has offset 0).

The definition of A385589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385589.P15325417032889616716

`2^(n-2)*(3*C(n, 3)+6*C(n, 2)+6*n+4)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A385589

/-- `2^(n-2)*(3*C(n, 3)+6*C(n, 2)+6*n+4)` -/
def P15325417032889616716.Spec : Prop :=
  ∀ n, P15325417032889616716.a n = (A385589 n : ℚ)

end A385589

/-! ## A385589.P16695807325145561331

`A058645(n)+A001787(n+1)`
-/

namespace A385589.P16695807325145561331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058645 n + A001787 (n + 1)

end

end A385589.P16695807325145561331

namespace A385589

/-- `A058645(n)+A001787(n+1)` -/
def P16695807325145561331.Spec : Prop :=
  ∀ n, P16695807325145561331.a n = A385589 n

end A385589

/-!
# A385591: Numbers k such that both k^3 - 1 and k^3 + 1 are triprimes.

The programs for A385591, there is no canonical definition to state claims against.
-/

/-! ## A385591.P8035239808696691901

`∩[A115403(n+1), A386915(n+1)]`
-/

namespace A385591.P8035239808696691901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385591.P8035239808696691901

/-!
# A385593: The v sequence in quartets (2,u,v,w); see A385592.

The programs for A385593, there is no canonical definition to state claims against.
-/

/-! ## A385593.P1247882926385257431

`A001221(Δ[A033304(n)])+2`
-/

namespace A385593.P1247882926385257431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat + 2

end

end A385593.P1247882926385257431

/-! ## A385593.P6402264685601814322

`A124766(A075347(n+1))+A027760(2*n+1)`
-/

namespace A385593.P6402264685601814322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A075347 (n + 1)).toNat + A027760 (2 * n + 1)

end

end A385593.P6402264685601814322

/-! ## A385593.P9223525671857014826

`A001221(A232515(3*n+5))+A000002(2*(n+2))`
-/

namespace A385593.P9223525671857014826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A232515 (3 * n + 5)).toNat + A000002 (2 * (n + 2))

end

end A385593.P9223525671857014826

