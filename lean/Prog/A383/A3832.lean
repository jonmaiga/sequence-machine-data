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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B003.C006
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A383202: Number of positive integers with n digits in which adjacent digits differ by at most 7.

The programs for A383202, the canonical program `A383202.P7021414031412984760` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383202 has offset 1).

The definition of A383202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383202.P7021414031412984760

`ogf((9+5x-6x^2)/(1-9x-5x^2+6x^3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383202

/-- `ogf((9+5x-6x^2)/(1-9x-5x^2+6x^3))` -/
def P7021414031412984760.Spec : Prop :=
  ∀ n, P7021414031412984760.a n = A383202 (n + 1)

theorem P7021414031412984760.correct : P7021414031412984760.Spec := by
  intro n
  simp only [A383202, Nat.add_sub_cancel]

end A383202

/-!
# A383203: Expansion of e.g.f. f(x) * exp(f(x)), where f(x) = (exp(2*x) - 1)/2.

The programs for A383203, there is no canonical definition to state claims against.
-/

/-! ## A383203.P47919238023850844

`Δ[A004211(n)/2]`
-/

namespace A383203.P47919238023850844
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004211 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A383203.P47919238023850844

/-! ## A383203.P14735030949261909406

`Δ[A261275(A000096(n))/2]`
-/

namespace A383203.P14735030949261909406
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261275 (A000096 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A383203.P14735030949261909406

/-! ## A383203.P4029859848084106329

`Δ[(A009599(n)+A009153(n))/2]`
-/

namespace A383203.P4029859848084106329
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009599 n + A009153 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A383203.P4029859848084106329

/-! ## A383203.P14139219280952159424

`A014682(Δ[A004211(n)])`
-/

namespace A383203.P14139219280952159424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (n + 1) - f1 n).toNat

end

end A383203.P14139219280952159424

/-!
# A383204: Expansion of e.g.f. f(x)^2 * exp(f(x)) / 2, where f(x) = (exp(2*x) - 1)/2.

The programs for A383204, there is no canonical definition to state claims against.
-/

/-! ## A383204.P1348330695673417445

`A057627(A346665(n)+n)`
-/

namespace A383204.P1348330695673417445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A346665 n + (n : ℤ)).toNat

end

end A383204.P1348330695673417445

/-! ## A383204.P12969942293173069147

`A057367(n*A198892(n))`
-/

namespace A383204.P12969942293173069147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 ((n : ℤ) * A198892 n).toNat

end

end A383204.P12969942293173069147

/-!
# A383205: Expansion of e.g.f. f(x)^3 * exp(f(x)) / 6, where f(x) = (exp(2*x) - 1)/2.

The programs for A383205, there is no canonical definition to state claims against.
-/

/-! ## A383205.P17913376093990646191

`A105514(∑[4*(4-6/n)*a(n-1)])` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A383205.P17913376093990646191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  4 * ((4 - 6 / (n : ℚ)) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105514 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A383205.P17913376093990646191

/-! ## A383205.P4441989061599833332

`A115288(A108146(n))`
-/

namespace A383205.P4441989061599833332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115288 (A108146 n).toNat

end

end A383205.P4441989061599833332

/-!
# A383206: Triangle T(n,k), n >= 0, 0 <= k <= n, read by rows, where T(n,k) = Sum_{j=k..n} 2^(n-j) * Stirling2(n,j) * Stirling2(j,k).

The programs for A383206, there is no canonical definition to state claims against.
-/

/-! ## A383206.P14904717737866827874

`A089867(A307419(n))`
-/

namespace A383206.P14904717737866827874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A307419 n).toNat

end

end A383206.P14904717737866827874

/-!
# A383207: Expansion of e.g.f. (exp(f(x)) - 1)^2 / 2, where f(x) = (exp(2*x) - 1)/2.

The programs for A383207, there is no canonical definition to state claims against.
-/

/-! ## A383207.P17831115406321465549

`A383206(A133263(n))`
-/

namespace A383207.P17831115406321465549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383206 (A133263 n).toNat

end

end A383207.P17831115406321465549

/-! ## A383207.P14099202244086839780

`A383206(A238531(n+1))`
-/

namespace A383207.P14099202244086839780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383206 (A238531 (n + 1)).toNat

end

end A383207.P14099202244086839780

/-!
# A383208: Expansion of e.g.f. (exp(f(x)) - 1)^3 / 6, where f(x) = (exp(2*x) - 1)/2.

The programs for A383208, there is no canonical definition to state claims against.
-/

/-! ## A383208.P3515464672160393481

`A337620((n-1)^n+1)`
-/

namespace A383208.P3515464672160393481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337620 (((n : ℤ) - 1) ^ n + 1).toNat

end

end A383208.P3515464672160393481

/-! ## A383208.P6705197334215492262

`A120060(A042371(n))`
-/

namespace A383208.P6705197334215492262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120060 (A042371 n).toNat

end

end A383208.P6705197334215492262

/-!
# A383209: Irregular triangle read by rows in which row n lists the odd divisors m of n such that there is a divisor d of n with d < m < 2*d, or 0 if such odd divisors do not exist.

The programs for A383209, there is no canonical definition to state claims against.
-/

/-! ## A383209.P4303935723775937908

`filter[A379461(n+1), A178225(#)]`
-/

namespace A383209.P4303935723775937908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178225 (f1 j).toNat = 1) n)

end

end A383209.P4303935723775937908

/-! ## A383209.P3129767122807846302

`filter[A379461(n+1), A266070(#)]`
-/

namespace A383209.P3129767122807846302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A383209.P3129767122807846302

/-! ## A383209.P6622956788525544970

`filter[A379461(n+1), A266719(#)]`
-/

namespace A383209.P6622956788525544970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A383209.P6622956788525544970

/-!
# A383210: The Dirichlet inverse of A382883.

The programs for A383210, there is no canonical definition to state claims against.
-/

/-! ## A383210.P17536838431564584832

`A087282(2^∏{e}[n+1, #+1]-1)-∑{e}[n+1, #%#²]`
-/

namespace A383210.P17536838431564584832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087282 (2 ^ (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) - 1) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p % Nat.factorization (f2 n) p ^ 2 : ℕ) : ℤ)

end

end A383210.P17536838431564584832

/-! ## A383210.P18208973353892356258

`A367698(A008828(n+1))-A212172(n+1)`
-/

namespace A383210.P18208973353892356258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367698 (A008828 (n + 1)).toNat - A212172 (n + 1)

end

end A383210.P18208973353892356258

/-!
# A383211: Numbers of the form p^e where p is prime and e > 1 is squarefree.

The programs for A383211, there is no canonical definition to state claims against.
-/

/-! ## A383211.P8697966698903588591

`∩[A134612(n+1), A384418(n+1)]`
-/

namespace A383211.P8697966698903588591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383211.P8697966698903588591

/-! ## A383211.P5332068744295822589

`∩[A306531(n+1), A384418(n+1)]`
-/

namespace A383211.P5332068744295822589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383211.P5332068744295822589

/-! ## A383211.P8947034702051924254

`∩[A119492(n+1), A384418(n+1)]`
-/

namespace A383211.P8947034702051924254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383211.P8947034702051924254

/-! ## A383211.P9749580126280503138

`∩[A013929(n+1), A384419(n+1)]`
-/

namespace A383211.P9749580126280503138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383211.P9749580126280503138

/-! ## A383211.P7779195322490940658

`∩[A057109(n+1), A384419(n+1)]`
-/

namespace A383211.P7779195322490940658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383211.P7779195322490940658

/-! ## A383211.P14682841679088732655

`∩[A059046(n+1), A384418(n+1)]`
-/

namespace A383211.P14682841679088732655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383211.P14682841679088732655

/-! ## A383211.P1807892706801503470

`∩[A069189(n+1), A384419(n+1)]`
-/

namespace A383211.P1807892706801503470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383211.P1807892706801503470

/-! ## A383211.P14677994886648926405

`∩[A070003(n+1), A384419(n+1)]`
-/

namespace A383211.P14677994886648926405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383211.P14677994886648926405

/-! ## A383211.P6248407805277462778

`∩[A072777(n+1), A384419(n+1)]`
-/

namespace A383211.P6248407805277462778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383211.P6248407805277462778

/-!
# A383212: a(n) = permanent of the n-th principal submatrix of the rectangular array whose odd-numbered rows are (2,1,2,1,2,1,2,1,...) and even-numbered rows are (1,2,1,2,1,2,1,2,...).

The programs for A383212, there is no canonical definition to state claims against.
-/

/-! ## A383212.P14019258423062838876

`A053150(A054640(n))*A084075(n)`
-/

namespace A383212.P14019258423062838876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (A054640 n).toNat * A084075 n

end

end A383212.P14019258423062838876

/-!
# A383213: a(n) = number of distinct prime factors of binomial(2n,n+1).

The programs for A383213, there is no canonical definition to state claims against.
-/

/-! ## A383213.P14922780049791693793

`A067434(n+1)-A383214(n+1)`
-/

namespace A383213.P14922780049791693793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (n + 1) - A383214 (n + 1)

end

end A383213.P14922780049791693793

/-! ## A383213.P17573156863147374884

`A034973(2*(n+1))-A383214(n+1)`
-/

namespace A383213.P17573156863147374884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (2 * (n + 1)) - A383214 (n + 1)

end

end A383213.P17573156863147374884

/-! ## A383213.P14143286171491802104

`A071854(n+1)+A000720(n+1)-A383214(n+1)`
-/

namespace A383213.P14143286171491802104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071854 (n + 1) + A000720 (n + 1) - A383214 (n + 1)

end

end A383213.P14143286171491802104

/-! ## A383213.P3643212370053598972

`A081387(n+1)+A081386(n+1)-A383214(n+1)`
-/

namespace A383213.P3643212370053598972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081387 (n + 1) + A081386 (n + 1) - A383214 (n + 1)

end

end A383213.P3643212370053598972

/-! ## A383213.P11640224708611846933

`A056175(2*(n+1))+A056173(2*(n+1))-A383214(n+1)`
-/

namespace A383213.P11640224708611846933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056175 (2 * (n + 1)) + A056173 (2 * (n + 1)) - A383214 (n + 1)

end

end A383213.P11640224708611846933

/-! ## A383213.P886617416858740362

`A048571(A001844(n+1))`
-/

namespace A383213.P886617416858740362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048571 (A001844 (n + 1)).toNat

end

end A383213.P886617416858740362

/-! ## A383213.P5938260900966633326

`A048571(A099776(n+1))`
-/

namespace A383213.P5938260900966633326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048571 (A099776 (n + 1)).toNat

end

end A383213.P5938260900966633326

/-! ## A383213.P16528272603470858189

`A048571(A132209(n+1))`
-/

namespace A383213.P16528272603470858189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048571 (A132209 (n + 1)).toNat

end

end A383213.P16528272603470858189

/-! ## A383213.P14358694336469720892

`A048571(A142463(n+1))`
-/

namespace A383213.P14358694336469720892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048571 (A142463 (n + 1)).toNat

end

end A383213.P14358694336469720892

/-! ## A383213.P9949809953044723529

`A048571(A296911(n+1))`
-/

namespace A383213.P9949809953044723529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048571 (A296911 (n + 1)).toNat

end

end A383213.P9949809953044723529

/-!
# A383214: a(n) = A067434(n) - A383213(n).

The programs for A383214, there is no canonical definition to state claims against.
-/

/-! ## A383214.P18145331621101960523

`A067434(n+1)-A383213(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A383214.P18145331621101960523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (n + 1) - A383213 (n + 1)

end

end A383214.P18145331621101960523

/-! ## A383214.P11030172761767139263

`A034973(2*(n+1))-A383213(n+1)`
-/

namespace A383214.P11030172761767139263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (2 * (n + 1)) - A383213 (n + 1)

end

end A383214.P11030172761767139263

/-! ## A383214.P9770374836895324878

`log2(A039593(2*(n+1)))-A383213(n+1)`
-/

namespace A383214.P9770374836895324878
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A039593 (2 * (n + 1)) : ℝ) - (A383213 (n + 1) : ℝ)

end

end A383214.P9770374836895324878

/-! ## A383214.P17643108554777053212

`A000720(2*(n+1))-A036541(2*(n+1))-A383213(n+1)`
-/

namespace A383214.P17643108554777053212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1)) - A036541 (2 * (n + 1)) - A383213 (n + 1)

end

end A383214.P17643108554777053212

/-! ## A383214.P4177513252157449198

`log2(A039593(2*(n+1)))-A048571(A142463(n+1))`
-/

namespace A383214.P4177513252157449198
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A039593 (2 * (n + 1)) : ℝ) - (A048571 (A142463 (n + 1)).toNat : ℝ)

end

end A383214.P4177513252157449198

/-! ## A383214.P4113955787063634256

`A000720(2*(n+1))-A036541(2*(n+1))-A048571(A142463(n+1))`
-/

namespace A383214.P4113955787063634256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1)) - A036541 (2 * (n + 1)) - A048571 (A142463 (n + 1)).toNat

end

end A383214.P4113955787063634256

/-!
# A383215: Primes p preceded and followed by gaps whose difference (absolute value) is greater than log(p).

The programs for A383215, there is no canonical definition to state claims against.
-/

/-! ## A383215.P4627369239164877817

`∩[A233593(n+1), A295973(n+1)]`
-/

namespace A383215.P4627369239164877817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383215.P4627369239164877817

/-!
# A383217: Lexicographically earliest strictly increasing sequence such that no term is a substring of the product of all previous terms.

The programs for A383217, there is no canonical definition to state claims against.
-/

/-! ## A383217.P16953579333210720188

`lt[log2(A333381(2*n+3)), A095056(n+1)]`
-/

namespace A383217.P16953579333210720188
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A333381 (2 * n + 3) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095056 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A383217.P16953579333210720188

/-! ## A383217.P11653477581085301204

`lt[A185285(n), A351278(A319225(n+1))]`
-/

namespace A383217.P11653477581085301204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351278 (A319225 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383217.P11653477581085301204

/-! ## A383217.P17236433939618850635

`lt[A122522(n+1), A328386(A002145(n+1))]`
-/

namespace A383217.P17236433939618850635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328386 (A002145 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383217.P17236433939618850635

/-! ## A383217.P3384235384675905508

`lt[A244003(n), A270613(∏{p}[n+1, #])]`
-/

namespace A383217.P3384235384675905508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244003 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270613 (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383217.P3384235384675905508

/-! ## A383217.P6492672887971042686

`lt[A353932(2*(n+5)), A286621(n+1)]`
-/

namespace A383217.P6492672887971042686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353932 (2 * (n + 5))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383217.P6492672887971042686

/-!
# A383218: The product of the first n terms of A383217.

The programs for A383218, there is no canonical definition to state claims against.
-/

/-! ## A383218.P3780907093879041337

`∏[A383217(n+1)]`
-/

namespace A383218.P3780907093879041337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A383218.P3780907093879041337

/-! ## A383218.P10208424799105694186

`∏[∑[A329314(A002620(n))]]`
-/

namespace A383218.P10208424799105694186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329314 (A002620 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A383218.P10208424799105694186

/-! ## A383218.P3198132702744875460

`∏[record[A139326(n+2)]]`
-/

namespace A383218.P3198132702744875460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139326 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A383218.P3198132702744875460

/-! ## A383218.P18201602905525773257

`∏[∑[A030379(A163800(n+1))]]`
-/

namespace A383218.P18201602905525773257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030379 (A163800 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A383218.P18201602905525773257

/-! ## A383218.P12635733381255532145

`∏[A172263(∑[n+2])]`
-/

namespace A383218.P12635733381255532145
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A383218.P12635733381255532145

/-!
# A383220: Integers k such that rad(k)*2^(k/rad(k)) + 1 is prime where rad = A007947.

The programs for A383220, there is no canonical definition to state claims against.
-/

/-! ## A383220.P16082846264259746736

`A333254(A053576(n))+A321683(n+1)`
-/

namespace A383220.P16082846264259746736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333254 (A053576 n).toNat + A321683 (n + 1)

end

end A383220.P16082846264259746736

/-! ## A383220.P4183196755094306217

`A321724(A321716(n))+A321683(n+1)`
-/

namespace A383220.P4183196755094306217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321724 (A321716 n).toNat + A321683 (n + 1)

end

end A383220.P4183196755094306217

/-! ## A383220.P2229734602584117440

`A321683(n+1)+A280372(A321691(n+1))`
-/

namespace A383220.P2229734602584117440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321683 (n + 1) + A280372 (A321691 (n + 1)).toNat

end

end A383220.P2229734602584117440

/-! ## A383220.P3428270358078926649

`A321724(A321725(n+1))+A321683(n+1)`
-/

namespace A383220.P3428270358078926649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321724 (A321725 (n + 1)).toNat + A321683 (n + 1)

end

end A383220.P3428270358078926649

/-! ## A383220.P9245112622629354784

`A321683(n+1)+A321647(A000079(n+2))`
-/

namespace A383220.P9245112622629354784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321683 (n + 1) + A321647 (A000079 (n + 2)).toNat

end

end A383220.P9245112622629354784

/-!
# A383221: Coefficient of x^3 in expansion of (x+2) * (x+5) * ... * (x+3*n-1).

The programs for A383221, there is no canonical definition to state claims against.
-/

/-! ## A383221.P3489719971792991520

`round(A143886(n)/A135958(n+3))`
-/

namespace A383221.P3489719971792991520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A143886 n : ℚ) / (A135958 (n + 3) : ℚ))

end

end A383221.P3489719971792991520

/-! ## A383221.P15922977053810106206

`A005226(A191519(n))-A100861(n)`
-/

namespace A383221.P15922977053810106206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005226 (A191519 n).toNat - A100861 n

end

end A383221.P15922977053810106206

/-!
# A383222: Coefficient of x^4 in expansion of (x+2) * (x+5) * ... * (x+3*n-1).

The programs for A383222, there is no canonical definition to state claims against.
-/

/-! ## A383222.P7579236774562346099

`A002265(A003087(n)-A332796(n))`
-/

namespace A383222.P7579236774562346099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A003087 n - A332796 n).toNat

end

end A383222.P7579236774562346099

/-!
# A383225: a(n) = sqrt(1 + P(n)*P(n+1)*P(n+2)*P(n+3)) where P(n) = A000129(n) are the Pell numbers.

The programs for A383225, the canonical program `A383225.P9453964147066224758` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383225 has offset 0).

The definition of A383225 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383225.P9453964147066224758

`A000129(n+1)*A000129(n+2)-(-1)^n`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A383225

/-- `A000129(n+1)*A000129(n+2)-(-1)^n` -/
def P9453964147066224758.Spec : Prop :=
  ∀ n, P9453964147066224758.a n = A383225 n

theorem P9453964147066224758.correct : P9453964147066224758.Spec := by
  intro n
  simp only [A383225]

end A383225

/-! ## A383225.P13229692546449488703

`ogf((1+6x-x^2)/(1-5x-5x^2+x^3))`
-/

namespace A383225.P13229692546449488703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, -1] [1, -5, -5, 1] n

end

end A383225.P13229692546449488703

namespace A383225

/-- `ogf((1+6x-x^2)/(1-5x-5x^2+x^3))` -/
def P13229692546449488703.Spec : Prop :=
  ∀ n, P13229692546449488703.a n = A383225 n

end A383225

/-! ## A383225.P4518331086787716766

`A114620(n)+A090390(n+1)`
-/

namespace A383225.P4518331086787716766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114620 n + A090390 (n + 1)

end

end A383225.P4518331086787716766

namespace A383225

/-- `A114620(n)+A090390(n+1)` -/
def P4518331086787716766.Spec : Prop :=
  ∀ n, P4518331086787716766.a n = A383225 n

end A383225

/-! ## A383225.P13444822647385484287

`A114620(n+1)-A057077(2*n)`
-/

namespace A383225.P13444822647385484287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114620 (n + 1) - A057077 (2 * n)

end

end A383225.P13444822647385484287

namespace A383225

/-- `A114620(n+1)-A057077(2*n)` -/
def P13444822647385484287.Spec : Prop :=
  ∀ n, P13444822647385484287.a n = A383225 n

end A383225

/-! ## A383225.P8585259000187023641

`A089928(2*n+1)-A057077(2*n)`
-/

namespace A383225.P8585259000187023641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089928 (2 * n + 1) - A057077 (2 * n)

end

end A383225.P8585259000187023641

namespace A383225

/-- `A089928(2*n+1)-A057077(2*n)` -/
def P8585259000187023641.Spec : Prop :=
  ∀ n, P8585259000187023641.a n = A383225 n

end A383225

/-! ## A383225.P2111618436940834186

`A108475(n+1)-(A114620(n)+A108475(n))`
-/

namespace A383225.P2111618436940834186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108475 (n + 1) - (A114620 n + A108475 n)

end

end A383225.P2111618436940834186

namespace A383225

/-- `A108475(n+1)-(A114620(n)+A108475(n))` -/
def P2111618436940834186.Spec : Prop :=
  ∀ n, P2111618436940834186.a n = A383225 n

end A383225

/-! ## A383225.P1773691831911809111

`A001541(n+1)+A114620(n)-A114619(n+1)`
-/

namespace A383225.P1773691831911809111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 (n + 1) + (A114620 n - A114619 (n + 1))

end

end A383225.P1773691831911809111

namespace A383225

/-- `A001541(n+1)+A114620(n)-A114619(n+1)` -/
def P1773691831911809111.Spec : Prop :=
  ∀ n, P1773691831911809111.a n = A383225 n

end A383225

/-! ## A383225.P15043288314206422332

`A114620(n)+A001333(n+1)*A001333(n+1)`
-/

namespace A383225.P15043288314206422332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114620 n + A001333 (n + 1) * A001333 (n + 1)

end

end A383225.P15043288314206422332

namespace A383225

/-- `A114620(n)+A001333(n+1)*A001333(n+1)` -/
def P15043288314206422332.Spec : Prop :=
  ∀ n, P15043288314206422332.a n = A383225 n

end A383225

/-! ## A383225.P6234261326858070068

`A114620(n+1)-A057077(n+1)/A057077(n)`
-/

namespace A383225.P6234261326858070068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114620 (n + 1) : ℚ) - (A057077 (n + 1) : ℚ) / (A057077 n : ℚ)

end

end A383225.P6234261326858070068

namespace A383225

/-- `A114620(n+1)-A057077(n+1)/A057077(n)` -/
def P6234261326858070068.Spec : Prop :=
  ∀ n, P6234261326858070068.a n = (A383225 n : ℚ)

end A383225

/-! ## A383225.P1576370753571038965

`A108475(n+1)-A000129(n+1)*A000129(n+1)`
-/

namespace A383225.P1576370753571038965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108475 (n + 1) - A000129 (n + 1) * A000129 (n + 1)

end

end A383225.P1576370753571038965

namespace A383225

/-- `A108475(n+1)-A000129(n+1)*A000129(n+1)` -/
def P1576370753571038965.Spec : Prop :=
  ∀ n, P1576370753571038965.a n = A383225 n

end A383225

/-!
# A383227: a(n) is the product of first n even numbers not divisible by 5 (cf. A217562).

The programs for A383227, there is no canonical definition to state claims against.
-/

/-! ## A383227.P14557488050509599333

`2^n*A356858(n)`
-/

namespace A383227.P14557488050509599333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A356858 n

end

end A383227.P14557488050509599333

/-! ## A383227.P8271164490874947325

`a(n-1)*A217562(n)` with `a(0)=1`
-/

namespace A383227.P8271164490874947325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A217562 n

end

end A383227.P8271164490874947325

/-! ## A383227.P3258676794150047698

`∏[eq[A040442(n), A262940(n)]]`
-/

namespace A383227.P3258676794150047698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040442 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262940 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A383227.P3258676794150047698

/-! ## A383227.P2979278840137242674

`A356858(2*n)/A358990(n)`
-/

namespace A383227.P2979278840137242674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356858 (2 * n) : ℚ) / (A358990 n : ℚ)

end

end A383227.P2979278840137242674

/-! ## A383227.P7089068592047779000

`∏[A227183(∏[A034444(n+1)])]`
-/

namespace A383227.P7089068592047779000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A383227.P7089068592047779000

/-!
# A383229: Indices of record low-water marks of the sequence abs((sin(k))^k).

The programs for A383229, there is no canonical definition to state claims against.
-/

/-! ## A383229.P6144016681449116158

`∩[A131975(n+1), A357304(n+1)]`
-/

namespace A383229.P6144016681449116158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383229.P6144016681449116158

/-! ## A383229.P18097088981256188193

`filter[A131975(n+1), A114213(#)]`
-/

namespace A383229.P18097088981256188193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114213 (f1 j).toNat = 1) n)

end

end A383229.P18097088981256188193

/-! ## A383229.P16131162063466925966

`filter[A131975(n+1), A267959(#)]`
-/

namespace A383229.P16131162063466925966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267959 (f1 j).toNat = 1) n)

end

end A383229.P16131162063466925966

/-! ## A383229.P3756899424731769139

`∩[A131975(n+1), A267215(n+1)]`
-/

namespace A383229.P3756899424731769139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383229.P3756899424731769139

/-!
# A383231: Expansion of e.g.f. f(x) * log(f(x)), where f(x) = 1/(1 - 5*x)^(1/5).

The programs for A383231, the canonical program `A383231.P16393714415494322384` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383231 has offset 0).

The definition of A383231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383231.P16393714415494322384

`(10*n-13)*a(n-1)-(5*n-9)²*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383231

/-- `(10*n-13)*a(n-1)-(5*n-9)²*a(n-2)` -/
def P16393714415494322384.Spec : Prop :=
  ∀ n, P16393714415494322384.a n = A383231 n

theorem P16393714415494322384.correct : P16393714415494322384.Spec := by
  intro n
  simp only [A383231]

end A383231

/-!
# A383232: Expansion of e.g.f. f(x)^2 * log(f(x)), where f(x) = 1/(1 - 5*x)^(1/5).

The programs for A383232, the canonical program `A383232.P6886842212668017292` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383232 has offset 0).

The definition of A383232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383232.P6886842212668017292

`(10*n-11)*a(n-1)-(5*n-8)²*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383232

/-- `(10*n-11)*a(n-1)-(5*n-8)²*a(n-2)` -/
def P6886842212668017292.Spec : Prop :=
  ∀ n, P6886842212668017292.a n = A383232 n

theorem P6886842212668017292.correct : P6886842212668017292.Spec := by
  intro n
  simp only [A383232]

end A383232

/-!
# A383233: Expansion of e.g.f. f(x)^3 * log(f(x)), where f(x) = 1/(1 - 5*x)^(1/5).

The programs for A383233, the canonical program `A383233.P10799123393926397885` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383233 has offset 0).

The definition of A383233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383233.P10799123393926397885

`(10*n-9)*a(n-1)-(5*n-7)²*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383233

/-- `(10*n-9)*a(n-1)-(5*n-7)²*a(n-2)` -/
def P10799123393926397885.Spec : Prop :=
  ∀ n, P10799123393926397885.a n = A383233 n

theorem P10799123393926397885.correct : P10799123393926397885.Spec := by
  intro n
  simp only [A383233]

end A383233

/-!
# A383234: Expansion of e.g.f. f(x)^4 * log(f(x)), where f(x) = 1/(1 - 5*x)^(1/5).

The programs for A383234, the canonical program `A383234.P16440083743586504232` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383234 has offset 0).

The definition of A383234 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383234.P16440083743586504232

`(10*n-7)*a(n-1)-(5*n-6)²*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383234

/-- `(10*n-7)*a(n-1)-(5*n-6)²*a(n-2)` -/
def P16440083743586504232.Spec : Prop :=
  ∀ n, P16440083743586504232.a n = A383234 n

theorem P16440083743586504232.correct : P16440083743586504232.Spec := by
  intro n
  simp only [A383234]

end A383234

/-!
# A383235: Triangle read by rows: T(n,k) = 2*floor(k/2)*T(n-1,k) + T(n-1,k-1), 0 <= k <= n.

The programs for A383235, the canonical program `A383235.P8319318298684968551` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383235 has offset 0).

The definition of A383235 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*floor(col(n)/2)*T(n-1,k)+T(n-1,k-1)` (program `A383235.P8319318298684968551`, by `A383235.P8319318298684968551.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383235.P8319318298684968551

`2*floor(col(n)/2)*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383235

/-- `2*floor(col(n)/2)*T(n-1,k)+T(n-1,k-1)` -/
def P8319318298684968551.Spec : Prop :=
  ∀ n, P8319318298684968551.a n = A383235 n

theorem P8319318298684968551.correct : P8319318298684968551.Spec := by
  intro n
  simp only [A383235]

end A383235

/-! ## A383235.P3302073783481318533

`A333766(A182797(n+1))^A123149(n)`
-/

namespace A383235.P3302073783481318533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333766 (A182797 (n + 1)).toNat : ℚ) ^ (A123149 n : ℤ)

end

end A383235.P3302073783481318533

namespace A383235

/-- `A333766(A182797(n+1))^A123149(n)` -/
def P3302073783481318533.Spec : Prop :=
  ∀ n, P3302073783481318533.a n = (A383235 n : ℚ)

end A383235

/-! ## A383235.P582764010071247549

`A000120(A111146(n)*A113389(n))`
-/

namespace A383235.P582764010071247549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A111146 n * A113389 n).toNat

end

end A383235.P582764010071247549

namespace A383235

/-- `A000120(A111146(n)*A113389(n))` -/
def P582764010071247549.Spec : Prop :=
  ∀ n, P582764010071247549.a n = A383235 n

end A383235

/-! ## A383235.P8765319459980215808

`A055640(A168511(n)*A342889(n))`
-/

namespace A383235.P8765319459980215808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A168511 n * A342889 n).toNat

end

end A383235.P8765319459980215808

namespace A383235

/-- `A055640(A168511(n)*A342889(n))` -/
def P8765319459980215808.Spec : Prop :=
  ∀ n, P8765319459980215808.a n = A383235 n

end A383235

/-! ## A383235.P836294384347862435

`A000120(A261642(n+1)*A386635(n))`
-/

namespace A383235.P836294384347862435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A261642 (n + 1) * A386635 n).toNat

end

end A383235.P836294384347862435

namespace A383235

/-- `A000120(A261642(n+1)*A386635(n))` -/
def P836294384347862435.Spec : Prop :=
  ∀ n, P836294384347862435.a n = A383235 n

end A383235

/-!
# A383236: The least number of applications of Ackermann-Péter functions to reach n, starting from 0.

The programs for A383236, there is no canonical definition to state claims against.
-/

/-! ## A383236.P14633358211350803008

`A329526(A048486(n+1))`
-/

namespace A383236.P14633358211350803008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329526 (A048486 (n + 1)).toNat

end

end A383236.P14633358211350803008

/-!
# A383237: Primes p such that x^5+x+1 has no roots modulo p.

The programs for A383237, there is no canonical definition to state claims against.
-/

/-! ## A383237.P16387224850808929618

`∩[A003627(n+1), A106867(n+1)]`
-/

namespace A383237.P16387224850808929618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383237.P16387224850808929618

/-! ## A383237.P321892497050059775

`∩[A038952(n+1), A106867(n+1)]`
-/

namespace A383237.P321892497050059775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383237.P321892497050059775

/-! ## A383237.P12344854926416365526

`∩[A082406(n+1), A106867(n+1)]`
-/

namespace A383237.P12344854926416365526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383237.P12344854926416365526

/-! ## A383237.P7167530882859316060

`∩[A106867(n+1), A167409(n+1)]`
-/

namespace A383237.P7167530882859316060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383237.P7167530882859316060

/-! ## A383237.P13057832543099377806

`∩[A106867(n+1), A179871(n+1)]`
-/

namespace A383237.P13057832543099377806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383237.P13057832543099377806

/-! ## A383237.P15958484884694125393

`∩[A004612(n+1), A106867(n+1)]`
-/

namespace A383237.P15958484884694125393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383237.P15958484884694125393

/-! ## A383237.P11426268712482763023

`∩[A106867(n+1), A347838(n+1)]`
-/

namespace A383237.P11426268712482763023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383237.P11426268712482763023

/-! ## A383237.P6894521454279118105

`∩[A106867(n+1), A016789(n)]`
-/

namespace A383237.P6894521454279118105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383237.P6894521454279118105

/-! ## A383237.P10189176976126696159

`∩[A106867(n+1), A022429(n)]`
-/

namespace A383237.P10189176976126696159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022429 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383237.P10189176976126696159

/-! ## A383237.P10851418242991061727

`∩[A106867(n+1), A022430(n)]`
-/

namespace A383237.P10851418242991061727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022430 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383237.P10851418242991061727

/-! ## A383237.P3389175454931865433

`∩[A055048(n+1), A106867(n+1)]`
-/

namespace A383237.P3389175454931865433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383237.P3389175454931865433

/-! ## A383237.P5942472724442237471

`∩[A106867(n+1), A277574(n+1)]`
-/

namespace A383237.P5942472724442237471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383237.P5942472724442237471

/-! ## A383237.P8980374372223337800

`∩[A106867(n+1), A174438(n+1)]`
-/

namespace A383237.P8980374372223337800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383237.P8980374372223337800

/-! ## A383237.P3442918875332314648

`∩[A026179(n+1), A106867(n+1)]`
-/

namespace A383237.P3442918875332314648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383237.P3442918875332314648

/-! ## A383237.P17176381750137140730

`∩[A047261(n+1), A106867(n+1)]`
-/

namespace A383237.P17176381750137140730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383237.P17176381750137140730

/-! ## A383237.P1782052679112627295

`∩[A047267(n+1), A106867(n+1)]`
-/

namespace A383237.P1782052679112627295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383237.P1782052679112627295

/-! ## A383237.P1309442190458852480

`∩[A106867(n+1), A274436(n+1)]`
-/

namespace A383237.P1309442190458852480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383237.P1309442190458852480

/-! ## A383237.P8138784477075596671

`∩[A106867(n+1), A049636(n)]`
-/

namespace A383237.P8138784477075596671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383237.P8138784477075596671

/-! ## A383237.P8389806550361715880

`∩[A047262(n+1), A106867(n+1)]`
-/

namespace A383237.P8389806550361715880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383237.P8389806550361715880

/-! ## A383237.P4388038322396284168

`∩[A034020(n+1), A106867(n+1)]`
-/

namespace A383237.P4388038322396284168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383237.P4388038322396284168

/-!
# A383238: A sequence constructed by greedily sampling the Poisson distribution for parameter value 1, 1/(e*(i-1)!) to minimize discrepancy selecting the smallest value in case of ties.

The programs for A383238, there is no canonical definition to state claims against.
-/

/-! ## A383238.P9537900952149105937

`gcd(A001222(A330060(2*n+3)), A336565(n+1))`
-/

namespace A383238.P9537900952149105937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A330060 (2 * n + 3)).toNat) (A336565 (n + 1))

end

end A383238.P9537900952149105937

/-! ## A383238.P4547803785117074920

`A228351(A372890(n)+1)`
-/

namespace A383238.P4547803785117074920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (A372890 n + 1).toNat

end

end A383238.P4547803785117074920

/-! ## A383238.P1096296842075453376

`A243884(A043306(n+2)+A007895(n))`
-/

namespace A383238.P1096296842075453376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243884 (A043306 (n + 2) + A007895 n).toNat

end

end A383238.P1096296842075453376

/-! ## A383238.P10266963012393060104

`A001511(C(A224995(n+2), A275609(n)))`
-/

namespace A383238.P10266963012393060104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Nat.choose (A224995 (n + 2)).toNat (A275609 n).toNat)

end

end A383238.P10266963012393060104

/-! ## A383238.P17699257710855499634

`gcd(A087739(A104236(n+1)), A359863(n+1))`
-/

namespace A383238.P17699257710855499634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087739 (A104236 (n + 1)).toNat) (A359863 (n + 1))

end

end A383238.P17699257710855499634

/-!
# A383241: a(n) = p(n)*p(n+1)*(p(n+1) - p(n)) - 1, where p(n) = prime(n).

The programs for A383241, the canonical program `A383241.P1923992109248827182` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383241 has offset 1).

The definition of A383241 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)*A000040(n+2)*(A000040(n+2)-A000040(n+1))-1` (program `A383241.P1923992109248827182`, by `A383241.P1923992109248827182.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383241.P1923992109248827182

`A000040(n+1)*A000040(n+2)*(A000040(n+2)-A000040(n+1))-1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A383241

/-- `A000040(n+1)*A000040(n+2)*(A000040(n+2)-A000040(n+1))-1` -/
def P1923992109248827182.Spec : Prop :=
  ∀ n, P1923992109248827182.a n = A383241 (n + 1)

theorem P1923992109248827182.correct : P1923992109248827182.Spec := by
  intro n
  simp only [A383241, Nat.add_sub_cancel]

end A383241

/-! ## A383241.P4047724070523892289

`A383242(n+1)-2`
-/

namespace A383241.P4047724070523892289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383242 (n + 1) - 2

end

end A383241.P4047724070523892289

namespace A383241

/-- `A383242(n+1)-2` -/
def P4047724070523892289.Spec : Prop :=
  ∀ n, P4047724070523892289.a n = A383241 (n + 1)

theorem P4047724070523892289.correct : P4047724070523892289.Spec := by
  intro n
  simp only [A383241, Nat.add_sub_cancel, A383241.P4047724070523892289.a, A383241.P1923992109248827182.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A383242, A383242.P10583517466409727714.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A383241

/-! ## A383241.P16746588854587445145

`A001223(n+1)*A006094(n+1)-1`
-/

namespace A383241.P16746588854587445145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) * A006094 (n + 1) - 1

end

end A383241.P16746588854587445145

namespace A383241

/-- `A001223(n+1)*A006094(n+1)-1` -/
def P16746588854587445145.Spec : Prop :=
  ∀ n, P16746588854587445145.a n = A383241 (n + 1)

theorem P16746588854587445145.correct : P16746588854587445145.Spec := by
  intro n
  simp only [A383241, Nat.add_sub_cancel, A383241.P16746588854587445145.a, A383241.P1923992109248827182.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A383241

/-! ## A383241.P1590672956283462830

`(A069487(n+1)-A001043(n+1))/A001043(n+1)`
-/

namespace A383241.P1590672956283462830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069487 (n + 1) - A001043 (n + 1) : ℚ) / (A001043 (n + 1) : ℚ)

end

end A383241.P1590672956283462830

namespace A383241

/-- `(A069487(n+1)-A001043(n+1))/A001043(n+1)` -/
def P1590672956283462830.Spec : Prop :=
  ∀ n, P1590672956283462830.a n = (A383241 (n + 1) : ℚ)

end A383241

/-! ## A383241.P11259871833942244322

`A023444(A383242(n+1))`
-/

namespace A383241.P11259871833942244322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A383242 (n + 1)).toNat

end

end A383241.P11259871833942244322

namespace A383241

/-- `A023444(A383242(n+1))` -/
def P11259871833942244322.Spec : Prop :=
  ∀ n, P11259871833942244322.a n = A383241 (n + 1)

end A383241

/-!
# A383242: a(n) = p(n)*p(n+1)*(p(n+1) - p(n)) + 1, where p(n) = prime(n).

The programs for A383242, the canonical program `A383242.P10583517466409727714` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383242 has offset 1).

The definition of A383242 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)*A000040(n+2)*(A000040(n+2)-A000040(n+1))+1` (program `A383242.P10583517466409727714`, by `A383242.P10583517466409727714.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383242.P14757656710033611047

`A383241(n+1)+2`
-/

namespace A383242.P14757656710033611047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383241 (n + 1) + 2

end

end A383242.P14757656710033611047

namespace A383242

/-- `A383241(n+1)+2` -/
def P14757656710033611047.Spec : Prop :=
  ∀ n, P14757656710033611047.a n = A383242 (n + 1)

theorem P14757656710033611047.correct : P14757656710033611047.Spec := by
  intro n
  simp only [A383242, Nat.add_sub_cancel, A383242.P14757656710033611047.a, A383242.P10583517466409727714.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A383241, A383241.P1923992109248827182.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A383242

/-! ## A383242.P10583517466409727714

`A000040(n+1)*A000040(n+2)*(A000040(n+2)-A000040(n+1))+1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A383242

/-- `A000040(n+1)*A000040(n+2)*(A000040(n+2)-A000040(n+1))+1` -/
def P10583517466409727714.Spec : Prop :=
  ∀ n, P10583517466409727714.a n = A383242 (n + 1)

theorem P10583517466409727714.correct : P10583517466409727714.Spec := by
  intro n
  simp only [A383242, Nat.add_sub_cancel]

end A383242

/-! ## A383242.P3130968000915793037

`A001223(n+1)*A006094(n+1)+1`
-/

namespace A383242.P3130968000915793037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) * A006094 (n + 1) + 1

end

end A383242.P3130968000915793037

namespace A383242

/-- `A001223(n+1)*A006094(n+1)+1` -/
def P3130968000915793037.Spec : Prop :=
  ∀ n, P3130968000915793037.a n = A383242 (n + 1)

theorem P3130968000915793037.correct : P3130968000915793037.Spec := by
  intro n
  simp only [A383242, Nat.add_sub_cancel, A383242.P3130968000915793037.a, A383242.P10583517466409727714.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A383242

/-! ## A383242.P1883387299734076656

`A000040(n+1)*A048852(n+1)+1`
-/

namespace A383242.P1883387299734076656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A048852 (n + 1) + 1

end

end A383242.P1883387299734076656

namespace A383242

/-- `A000040(n+1)*A048852(n+1)+1` -/
def P1883387299734076656.Spec : Prop :=
  ∀ n, P1883387299734076656.a n = A383242 (n + 1)

end A383242

/-! ## A383242.P12776785148223380434

`A065091(n+1)*A291463(n+1)+1`
-/

namespace A383242.P12776785148223380434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A291463 (n + 1) + 1

end

end A383242.P12776785148223380434

namespace A383242

/-- `A065091(n+1)*A291463(n+1)+1` -/
def P12776785148223380434.Spec : Prop :=
  ∀ n, P12776785148223380434.a n = A383242 (n + 1)

theorem P12776785148223380434.correct : P12776785148223380434.Spec := by
  intro n
  simp only [A383242, Nat.add_sub_cancel, A383242.P12776785148223380434.a, A383242.P10583517466409727714.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065091, A065091.P6971844946592549357.a, A291463, A291463.P14308935140851577628.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A383242

/-! ## A383242.P9371765367563363855

`log2(A218075(n+1))*A006094(n+1)+1`
-/

namespace A383242.P9371765367563363855
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A218075 (n + 1) : ℝ) * (A006094 (n + 1) : ℝ) + 1

end

end A383242.P9371765367563363855

namespace A383242

/-- `log2(A218075(n+1))*A006094(n+1)+1` -/
def P9371765367563363855.Spec : Prop :=
  ∀ n, P9371765367563363855.a n = (A383242 (n + 1) : ℝ)

end A383242

/-! ## A383242.P5075770378471777730

`ceil(A100803(n+1)/2)*A006094(n+1)+1`
-/

namespace A383242.P5075770378471777730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100803 (n + 1) : ℚ) / 2⌉ * A006094 (n + 1) + 1

end

end A383242.P5075770378471777730

namespace A383242

/-- `ceil(A100803(n+1)/2)*A006094(n+1)+1` -/
def P5075770378471777730.Spec : Prop :=
  ∀ n, P5075770378471777730.a n = A383242 (n + 1)

end A383242

/-! ## A383242.P629935117886127480

`(A069487(n+1)+A001043(n+1))/A001043(n+1)`
-/

namespace A383242.P629935117886127480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069487 (n + 1) + A001043 (n + 1) : ℚ) / (A001043 (n + 1) : ℚ)

end

end A383242.P629935117886127480

namespace A383242

/-- `(A069487(n+1)+A001043(n+1))/A001043(n+1)` -/
def P629935117886127480.Spec : Prop :=
  ∀ n, P629935117886127480.a n = (A383242 (n + 1) : ℚ)

end A383242

/-!
# A383243: Primes of the form p(k)*p(k+1)*(p(k+1) - p(k)) - 1 sorted by increasing k.

The programs for A383243, there is no canonical definition to state claims against.
-/

/-! ## A383243.P15145623152624365290

`p?[A383241(n+1)]`
-/

namespace A383243.P15145623152624365290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A383243.P15145623152624365290

/-! ## A383243.P9442025512033286036

`filter[A383241(n+1), A010051(#)]`
-/

namespace A383243.P9442025512033286036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A383243.P9442025512033286036

/-! ## A383243.P15465268040910096543

`filter[A383241(n+1), A069513(#)]`
-/

namespace A383243.P15465268040910096543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A383243.P15465268040910096543

/-! ## A383243.P1462167951808101205

`filter[A383241(n+1), A091862(#)]`
-/

namespace A383243.P1462167951808101205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A383243.P1462167951808101205

/-!
# A383244: Primes of the form p(k)*p(k+1)*(p(k+1) - p(k)) + 1 sorted by increasing k.

The programs for A383244, there is no canonical definition to state claims against.
-/

/-! ## A383244.P13411017352220192613

`p?[A383242(n+1)]`
-/

namespace A383244.P13411017352220192613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A383244.P13411017352220192613

/-! ## A383244.P7201992344559662963

`filter[A383242(n+1), A010051(#)]`
-/

namespace A383244.P7201992344559662963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A383244.P7201992344559662963

/-! ## A383244.P13991279626936453674

`filter[A383242(n+1), A069513(#)]`
-/

namespace A383244.P13991279626936453674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A383244.P13991279626936453674

/-! ## A383244.P18226060626734592737

`filter[A383242(n+1), A324290(#)]`
-/

namespace A383244.P18226060626734592737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A383244.P18226060626734592737

/-! ## A383244.P6939456450723637128

`filter[A383242(n+1), A354923(#)]`
-/

namespace A383244.P6939456450723637128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A383244.P6939456450723637128

/-!
# A383245: Nonnegative integers that contain the digit 0, or an even digit d immediately followed by a digit >= d.

The programs for A383245, there is no canonical definition to state claims against.
-/

/-! ## A383245.P5645309878241261528

`comp[A342043(n+1)]`
-/

namespace A383245.P5645309878241261528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383245.P5645309878241261528

/-! ## A383245.P14681466833281454263

`comp[A383246(n+1)]`
-/

namespace A383245.P14681466833281454263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383245.P14681466833281454263

/-! ## A383245.P17847927788441371716

`lt[char[A342043(n+1)]*A057427(n+2), 1]`
-/

namespace A383245.P17847927788441371716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342043 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A057427 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A383245.P17847927788441371716

/-! ## A383245.P711704085197232753

`∩[A376779(n+1), A383250(n+1)]`
-/

namespace A383245.P711704085197232753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383245.P711704085197232753

/-! ## A383245.P7028426648861854074

`lt[A175088(n+1), A056654(A304098(n+3))]`
-/

namespace A383245.P7028426648861854074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056654 (A304098 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383245.P7028426648861854074

/-!
# A383246: Positive integers without the digit 0 such that every even digit except the rightmost is immediately followed by a smaller digit.

The programs for A383246, there is no canonical definition to state claims against.
-/

/-! ## A383246.P16091498688521067751

`comp[A383245(n+1)]`
-/

namespace A383246.P16091498688521067751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383246.P16091498688521067751

/-! ## A383246.P3046729121234147977

`eq[1, char[A342043(n+1)]]`
-/

namespace A383246.P3046729121234147977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342043 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383246.P3046729121234147977

/-! ## A383246.P5186613427722108042

`eq[char[A383245(n+1)], A010051(2*(n+2))]`
-/

namespace A383246.P5186613427722108042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383245 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A383246.P5186613427722108042

/-! ## A383246.P13456954989781678835

`lt[A056654(A304098(n+3)), A097883(3*n+1)]`
-/

namespace A383246.P13456954989781678835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056654 (A304098 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097883 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383246.P13456954989781678835

/-! ## A383246.P14454101879606618956

`∩[A022465(n+1), A055572(n)]`
-/

namespace A383246.P14454101879606618956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383246.P14454101879606618956

/-!
# A383247: Positive integers that contain the digit 9, or an odd digit d immediately followed by a digit <= d.

The programs for A383247, there is no canonical definition to state claims against.
-/

/-! ## A383247.P1566271567066959473

`comp[A342044(n+1)]`
-/

namespace A383247.P1566271567066959473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383247.P1566271567066959473

/-! ## A383247.P4991879117055420766

`comp[A383248(n+1)]`
-/

namespace A383247.P4991879117055420766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383247.P4991879117055420766

/-! ## A383247.P15232605686355693018

`eq[char[A342044(n+1)], A000038(n)]`
-/

namespace A383247.P15232605686355693018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342044 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A383247.P15232605686355693018

/-! ## A383247.P14535487232370405520

`eq[char[A383248(n+1)], A055667(3*n+2)]`
-/

namespace A383247.P14535487232370405520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383248 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055667 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A383247.P14535487232370405520

/-! ## A383247.P13761917918758005112

`(∑[A255309(A114800(3*n+4)-char[3])]+1)²+n`
-/

namespace A383247.P13761917918758005112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255309 (A114800 (3 * n + 4) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2 + (n : ℤ)

end

end A383247.P13761917918758005112

/-!
# A383248: Nonnegative integers without the digit 9 such that every odd digit except the rightmost is immediately followed by a larger digit.

The programs for A383248, there is no canonical definition to state claims against.
-/

/-! ## A383248.P18021036811891806620

`comp[A383247(n+1)]`
-/

namespace A383248.P18021036811891806620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383248.P18021036811891806620

/-! ## A383248.P4146944001849936809

`eq[1, char[A342044(n+1)]]`
-/

namespace A383248.P4146944001849936809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342044 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383248.P4146944001849936809

/-! ## A383248.P16104830089086799324

`lt[A000038(2*n+1), char[A342044(n+1)]]`
-/

namespace A383248.P16104830089086799324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342044 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A383248.P16104830089086799324

/-!
# A383249: Positive integers ending with the digit 1, or containing an odd digit d immediately followed by a digit >= d.

The programs for A383249, there is no canonical definition to state claims against.
-/

/-! ## A383249.P10995875289009994719

`comp[A342045(n+1)]`
-/

namespace A383249.P10995875289009994719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383249.P10995875289009994719

/-! ## A383249.P10628824883201612243

`comp[A383250(n+1)]`
-/

namespace A383249.P10628824883201612243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383249.P10628824883201612243

/-! ## A383249.P25909006577116905

`eq[char[A342045(n+1)], A355745(2*(n+2))]`
-/

namespace A383249.P25909006577116905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342045 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355745 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A383249.P25909006577116905

/-! ## A383249.P17205775461459528442

`eq[A054054(n), A347442(A300342(n+1))]`
-/

namespace A383249.P17205775461459528442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347442 (A300342 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383249.P17205775461459528442

/-!
# A383250: Nonnegative integers not ending with the digit 1 and such that every odd digit except the rightmost is immediately followed by a smaller digit.

The programs for A383250, there is no canonical definition to state claims against.
-/

/-! ## A383250.P15854923222254396144

`comp[A383249(n+1)]`
-/

namespace A383250.P15854923222254396144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383250.P15854923222254396144

/-! ## A383250.P12737212495331063961

`lt[0, char[A342045(n+1)]]`
-/

namespace A383250.P12737212495331063961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342045 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383250.P12737212495331063961

/-! ## A383250.P9845824663396972252

`lt[A268643(n), A336137(A088191(3*n+2))]`
-/

namespace A383250.P9845824663396972252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336137 (A088191 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383250.P9845824663396972252

/-!
# A383251: Short leg of the unique primitive Pythagorean triple whose inradius is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A383251, the canonical program `A383251.P10776672623636940607` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383251 has offset 0).

The definition of A383251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383251.P10776672623636940607

`2*A000108(n)+1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A383251

/-- `2*A000108(n)+1` -/
def P10776672623636940607.Spec : Prop :=
  ∀ n, P10776672623636940607.a n = A383251 n

theorem P10776672623636940607.correct : P10776672623636940607.Spec := by
  intro n
  simp only [A383251]

end A383251

/-! ## A383251.P8321312001896069549

`A131428(n)+2`
-/

namespace A383251.P8321312001896069549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 n + 2

end

end A383251.P8321312001896069549

namespace A383251

/-- `A131428(n)+2` -/
def P8321312001896069549.Spec : Prop :=
  ∀ n, P8321312001896069549.a n = A383251 n

end A383251

/-! ## A383251.P19572453024450000

`1-A002420(n+1)`
-/

namespace A383251.P19572453024450000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002420 (n + 1)

end

end A383251.P19572453024450000

namespace A383251

/-- `1-A002420(n+1)` -/
def P19572453024450000.Spec : Prop :=
  ∀ n, P19572453024450000.a n = A383251 n

end A383251

/-! ## A383251.P10411652522783277010

`2*A120304(n)+5`
-/

namespace A383251.P10411652522783277010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120304 n + 5

end

end A383251.P10411652522783277010

namespace A383251

/-- `2*A120304(n)+5` -/
def P10411652522783277010.Spec : Prop :=
  ∀ n, P10411652522783277010.a n = A383251 n

theorem P10411652522783277010.correct : P10411652522783277010.Spec := by
  intro n
  simp only [A383251, Nat.add_sub_cancel, A383251.P10411652522783277010.a, A383251.P10776672623636940607.a, A000108, A000108.P17551949696095299361.a, A120304, A120304.P16195813583233364787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A383251

/-! ## A383251.P12469644052919441667

`A089408(2*(n+1))+1`
-/

namespace A383251.P12469644052919441667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * (n + 1)) + 1

end

end A383251.P12469644052919441667

namespace A383251

/-- `A089408(2*(n+1))+1` -/
def P12469644052919441667.Spec : Prop :=
  ∀ n, P12469644052919441667.a n = A383251 n

end A383251

/-! ## A383251.P8678840537194714989

`2*A120588(n+1)+1`
-/

namespace A383251.P8678840537194714989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120588 (n + 1) + 1

end

end A383251.P8678840537194714989

namespace A383251

/-- `2*A120588(n+1)+1` -/
def P8678840537194714989.Spec : Prop :=
  ∀ n, P8678840537194714989.a n = A383251 n

end A383251

/-! ## A383251.P12739125761655615952

`1-2*A115140(n+1)`
-/

namespace A383251.P12739125761655615952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A115140 (n + 1)

end

end A383251.P12739125761655615952

namespace A383251

/-- `1-2*A115140(n+1)` -/
def P12739125761655615952.Spec : Prop :=
  ∀ n, P12739125761655615952.a n = A383251 n

end A383251

/-! ## A383251.P4980744820974645743

`A068875(n)+A054977(n)`
-/

namespace A383251.P4980744820974645743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n + A054977 n

end

end A383251.P4980744820974645743

namespace A383251

/-- `A068875(n)+A054977(n)` -/
def P4980744820974645743.Spec : Prop :=
  ∀ n, P4980744820974645743.a n = A383251 n

end A383251

/-! ## A383251.P16500667776577795137

`A014137(n)+A106191(n)+A014137(n)`
-/

namespace A383251.P16500667776577795137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n + (A106191 n + A014137 n)

end

end A383251.P16500667776577795137

namespace A383251

/-- `A014137(n)+A106191(n)+A014137(n)` -/
def P16500667776577795137.Spec : Prop :=
  ∀ n, P16500667776577795137.a n = A383251 n

end A383251

/-! ## A383251.P18323664376023679001

`A000108(n)+A289589(n)+A135336(n)`
-/

namespace A383251.P18323664376023679001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A289589 n + A135336 n)

end

end A383251.P18323664376023679001

namespace A383251

/-- `A000108(n)+A289589(n)+A135336(n)` -/
def P18323664376023679001.Spec : Prop :=
  ∀ n, P18323664376023679001.a n = A383251 n

theorem P18323664376023679001.correct : P18323664376023679001.Spec := by
  intro n
  simp only [A383251, Nat.add_sub_cancel, A383251.P18323664376023679001.a, A383251.P10776672623636940607.a, A000108, A000108.P17551949696095299361.a, A135336, A135336.P8279202122990715746.f1, A135336.P8279202122990715746.a, A289589, A289589.P10535227749720856808.a, A000957, A000957.P17024256012114130201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A383251

/-! ## A383251.P17546402288737989875

`A135336(n)+A289448(n)+A135336(n)`
-/

namespace A383251.P17546402288737989875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135336 n + (A289448 n + A135336 n)

end

end A383251.P17546402288737989875

namespace A383251

/-- `A135336(n)+A289448(n)+A135336(n)` -/
def P17546402288737989875.Spec : Prop :=
  ∀ n, P17546402288737989875.a n = A383251 n

theorem P17546402288737989875.correct : P17546402288737989875.Spec := by
  intro n
  simp only [A383251, Nat.add_sub_cancel, A383251.P17546402288737989875.a, A383251.P10776672623636940607.a, A000108, A000108.P17551949696095299361.a, A135336, A135336.P8279202122990715746.f1, A135336.P8279202122990715746.a, A289448, A289448.P5757188125060123569.a, A000957, A000957.P17024256012114130201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A383251

/-! ## A383251.P7930916709514905434

`A057427(n+1)+A000108(n)+A000108(n)`
-/

namespace A383251.P7930916709514905434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + (A000108 n + A000108 n)

end

end A383251.P7930916709514905434

namespace A383251

/-- `A057427(n+1)+A000108(n)+A000108(n)` -/
def P7930916709514905434.Spec : Prop :=
  ∀ n, P7930916709514905434.a n = A383251 n

theorem P7930916709514905434.correct : P7930916709514905434.Spec := by
  intro n
  simp only [A383251, Nat.add_sub_cancel, A383251.P7930916709514905434.a, A383251.P10776672623636940607.a, A000108, A000108.P17551949696095299361.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A383251

/-! ## A383251.P4940559937137737516

`1-Δ[A106191(n)]`
-/

namespace A383251.P4940559937137737516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A383251.P4940559937137737516

namespace A383251

/-- `1-Δ[A106191(n)]` -/
def P4940559937137737516.Spec : Prop :=
  ∀ n, P4940559937137737516.a n = A383251 n

end A383251

/-! ## A383251.P13618601628239607653

`A068875(n)+A068875(n+1)/A228403(n+1)`
-/

namespace A383251.P13618601628239607653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068875 n : ℚ) + (A068875 (n + 1) : ℚ) / (A228403 (n + 1) : ℚ)

end

end A383251.P13618601628239607653

namespace A383251

/-- `A068875(n)+A068875(n+1)/A228403(n+1)` -/
def P13618601628239607653.Spec : Prop :=
  ∀ n, P13618601628239607653.a n = (A383251 n : ℚ)

end A383251

/-! ## A383251.P17530026732440226509

`A241543(2*(n+1))+1`
-/

namespace A383251.P17530026732440226509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241543 (2 * (n + 1)) + 1

end

end A383251.P17530026732440226509

namespace A383251

/-- `A241543(2*(n+1))+1` -/
def P17530026732440226509.Spec : Prop :=
  ∀ n, P17530026732440226509.a n = A383251 n

end A383251

/-! ## A383251.P770510064628659116

`A028329(n)/(n+1)+1`
-/

namespace A383251.P770510064628659116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028329 n : ℚ) / (n + 1 : ℚ) + 1

end

end A383251.P770510064628659116

namespace A383251

/-- `A028329(n)/(n+1)+1` -/
def P770510064628659116.Spec : Prop :=
  ∀ n, P770510064628659116.a n = (A383251 n : ℚ)

end A383251

/-! ## A383251.P2685256431451198409

`A134759(n)/(n+1)+2`
-/

namespace A383251.P2685256431451198409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134759 n : ℚ) / (n + 1 : ℚ) + 2

end

end A383251.P2685256431451198409

namespace A383251

/-- `A134759(n)/(n+1)+2` -/
def P2685256431451198409.Spec : Prop :=
  ∀ n, P2685256431451198409.a n = (A383251 n : ℚ)

end A383251

/-!
# A383252: Numbers that cannot be written in the form (j+2k)^2-(j+k)^2-j^2 with j,k>0.

The programs for A383252, the canonical program `A383252.P7065042890008295606` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383252 has offset 1).

The definition of A383252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383252.P7065042890008295606

`comp[n*(4-n%4)]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383252

/-- `comp[n*(4-n%4)]` -/
def P7065042890008295606.Spec : Prop :=
  ∀ n, (P7065042890008295606.a n : ℤ) = A383252 (n + 1)

theorem P7065042890008295606.correct : P7065042890008295606.Spec := by
  intro n
  simp only [A383252, Nat.add_sub_cancel]

end A383252

/-! ## A383252.P10015857574889124437

`∪[A042963(n+1), A051062(n)]`
-/

namespace A383252.P10015857574889124437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051062 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383252.P10015857574889124437

namespace A383252

/-- `∪[A042963(n+1), A051062(n)]` -/
def P10015857574889124437.Spec : Prop :=
  ∀ n, (P10015857574889124437.a n : ℤ) = A383252 (n + 1)

end A383252

/-! ## A383252.P3744319383655642549

`eq[A005927(n), A023919(n)]`
-/

namespace A383252.P3744319383655642549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005927 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383252.P3744319383655642549

namespace A383252

/-- `eq[A005927(n), A023919(n)]` -/
def P3744319383655642549.Spec : Prop :=
  ∀ n, (P3744319383655642549.a n : ℤ) = A383252 (n + 1)

end A383252

/-! ## A383252.P183973816523054288

`eq[A023919(n), A045830(n)]`
-/

namespace A383252.P183973816523054288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023919 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383252.P183973816523054288

namespace A383252

/-- `eq[A023919(n), A045830(n)]` -/
def P183973816523054288.Spec : Prop :=
  ∀ n, (P183973816523054288.a n : ℤ) = A383252 (n + 1)

end A383252

/-! ## A383252.P16020640916295057753

`eq[A007814(A028310(n)), A131080(2*n+3)]`
-/

namespace A383252.P16020640916295057753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131080 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383252.P16020640916295057753

namespace A383252

/-- `eq[A007814(A028310(n)), A131080(2*n+3)]` -/
def P16020640916295057753.Spec : Prop :=
  ∀ n, (P16020640916295057753.a n : ℤ) = A383252 (n + 1)

end A383252

/-! ## A383252.P1118320722378275341

`record[gcd(n+1, A230263(3*(n+1)))]`
-/

namespace A383252.P1118320722378275341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A230263 (3 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383252.P1118320722378275341

namespace A383252

/-- `record[gcd(n+1, A230263(3*(n+1)))]` -/
def P1118320722378275341.Spec : Prop :=
  ∀ n, (P1118320722378275341.a n : ℤ) = A383252 (n + 1)

end A383252

/-! ## A383252.P7850647939079065484

`eq[A034448(A136480(3*(n+1))), A136480(n)]`
-/

namespace A383252.P7850647939079065484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A136480 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383252.P7850647939079065484

namespace A383252

/-- `eq[A034448(A136480(3*(n+1))), A136480(n)]` -/
def P7850647939079065484.Spec : Prop :=
  ∀ n, (P7850647939079065484.a n : ℤ) = A383252 (n + 1)

end A383252

/-!
# A383253: Number of compositions of n with parts in standard order.

The programs for A383253, there is no canonical definition to state claims against.
-/

/-! ## A383253.P14509746430434364482

`floor(A374678(2*n+3)/A045618(n))`
-/

namespace A383253.P14509746430434364482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A374678 (2 * n + 3) : ℚ) / (A045618 n : ℚ)⌋

end

end A383253.P14509746430434364482

/-! ## A383253.P11635175014759533387

`A000196(A148182(n))`
-/

namespace A383253.P11635175014759533387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A148182 n).toNat

end

end A383253.P11635175014759533387

/-! ## A383253.P7503371513068761684

`A276571(A004114(n))`
-/

namespace A383253.P7503371513068761684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A004114 n).toNat

end

end A383253.P7503371513068761684

/-! ## A383253.P14378189223085453282

`A003056(A287901(n))`
-/

namespace A383253.P14378189223085453282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A287901 n).toNat

end

end A383253.P14378189223085453282

/-! ## A383253.P3786217870330429436

`A003059(A289592(n))`
-/

namespace A383253.P3786217870330429436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A289592 n).toNat

end

end A383253.P3786217870330429436

/-!
# A383254: Expansion of 1/sqrt( (1-x) * (1-5*x)^3 ).

The programs for A383254, the canonical program `A383254.P111006484636996421` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383254 has offset 0).

The definition of A383254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383254.P111006484636996421

`∑[A163869(n)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A383254

/-- `∑[A163869(n)]` -/
def P111006484636996421.Spec : Prop :=
  ∀ n, P111006484636996421.a n = A383254 n

theorem P111006484636996421.correct : P111006484636996421.Spec := by
  intro n
  simp only [A383254]

end A383254

/-! ## A383254.P2174971652870009315

`∑[∑[A377197(n)]]`
-/

namespace A383254.P2174971652870009315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377197 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383254.P2174971652870009315

namespace A383254

/-- `∑[∑[A377197(n)]]` -/
def P2174971652870009315.Spec : Prop :=
  ∀ n, P2174971652870009315.a n = A383254 n

end A383254

/-! ## A383254.P15827579401919652453

`(n+1)*Δ[A242586(n)]`
-/

namespace A383254.P15827579401919652453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A383254.P15827579401919652453

namespace A383254

/-- `(n+1)*Δ[A242586(n)]` -/
def P15827579401919652453.Spec : Prop :=
  ∀ n, P15827579401919652453.a n = A383254 n

end A383254

/-! ## A383254.P15767816016702399722

`(n+1)*A026378(n+1)`
-/

namespace A383254.P15767816016702399722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A026378 (n + 1)

end

end A383254.P15767816016702399722

namespace A383254

/-- `(n+1)*A026378(n+1)` -/
def P15767816016702399722.Spec : Prop :=
  ∀ n, P15767816016702399722.a n = A383254 n

end A383254

/-! ## A383254.P6590597995148831305

`(n+1)*A026380(2*n)`
-/

namespace A383254.P6590597995148831305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A026380 (2 * n)

end

end A383254.P6590597995148831305

namespace A383254

/-- `(n+1)*A026380(2*n)` -/
def P6590597995148831305.Spec : Prop :=
  ∀ n, P6590597995148831305.a n = A383254 n

end A383254

/-! ## A383254.P13261133143410491453

`(n+1)*A026392(Δ[n²])`
-/

namespace A383254.P13261133143410491453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A026392 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A383254.P13261133143410491453

namespace A383254

/-- `(n+1)*A026392(Δ[n²])` -/
def P13261133143410491453.Spec : Prop :=
  ∀ n, P13261133143410491453.a n = A383254 n

end A383254

/-! ## A383254.P7782440932599435307

`(n+1)/2*A085362(n+1)`
-/

namespace A383254.P7782440932599435307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A085362 (n + 1) : ℚ)

end

end A383254.P7782440932599435307

namespace A383254

/-- `(n+1)/2*A085362(n+1)` -/
def P7782440932599435307.Spec : Prop :=
  ∀ n, P7782440932599435307.a n = (A383254 n : ℚ)

end A383254

/-! ## A383254.P2331207918143987388

`(n+1)*A126791(∑[n])`
-/

namespace A383254.P2331207918143987388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A126791 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383254.P2331207918143987388

namespace A383254

/-- `(n+1)*A126791(∑[n])` -/
def P2331207918143987388.Spec : Prop :=
  ∀ n, P2331207918143987388.a n = A383254 n

end A383254

/-! ## A383254.P9735038150370001651

`∑[A163842(∑[n])]`
-/

namespace A383254.P9735038150370001651
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163842 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383254.P9735038150370001651

namespace A383254

/-- `∑[A163842(∑[n])]` -/
def P9735038150370001651.Spec : Prop :=
  ∀ n, P9735038150370001651.a n = A383254 n

end A383254

/-!
# A383257: Let p = prime(n), then a(n) is the non-p-smooth part of (p-1)!+1.

The programs for A383257, there is no canonical definition to state claims against.
-/

/-! ## A383257.P11141940557277018654

`A060371(n+1)/A383578(n+1)`
-/

namespace A383257.P11141940557277018654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060371 (n + 1) : ℚ) / (A383578 (n + 1) : ℚ)

end

end A383257.P11141940557277018654

/-!
# A383258: LCM-transform of A064664 (the inverse of the EKG-sequence).

The programs for A383258, there is no canonical definition to state claims against.
-/

/-! ## A383258.P6621482324815213722

`gcd(A158649(2*n+1), A318382(A226028(n+3)))`
-/

namespace A383258.P6621482324815213722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A158649 (2 * n + 1)) (A318382 (A226028 (n + 3)).toNat)

end

end A383258.P6621482324815213722

/-! ## A383258.P17813442633738611887

`gcd(A084958(n+2)+A000009(n), (n+2)²-1)`
-/

namespace A383258.P17813442633738611887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084958 (n + 2) + A000009 n) (((n + 2) ^ 2 : ℤ) - 1)

end

end A383258.P17813442633738611887

/-!
# A383259: a(n) is the excess of even composites over odd composites in the first n positive integers.

The programs for A383259, the canonical program `A383259.P13748571776509736098` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383259 has offset 1).

The definition of A383259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383259.P13748571776509736098

`A065033(n)-A033271(n+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A383259

/-- `A065033(n)-A033271(n+1)` -/
def P13748571776509736098.Spec : Prop :=
  ∀ n, P13748571776509736098.a n = A383259 (n + 1)

theorem P13748571776509736098.correct : P13748571776509736098.Spec := by
  intro n
  simp only [A383259, Nat.add_sub_cancel]

end A383259

/-! ## A383259.P8633704355992144469

`A000720(n+1)-A134451(n)`
-/

namespace A383259.P8633704355992144469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A134451 n

end

end A383259.P8633704355992144469

namespace A383259

/-- `A000720(n+1)-A134451(n)` -/
def P8633704355992144469.Spec : Prop :=
  ∀ n, P8633704355992144469.a n = A383259 (n + 1)

end A383259

/-! ## A383259.P6355969521681633615

`A061008(n+1)-A158515(n)`
-/

namespace A383259.P6355969521681633615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061008 (n + 1) - A158515 n

end

end A383259.P6355969521681633615

namespace A383259

/-- `A061008(n+1)-A158515(n)` -/
def P6355969521681633615.Spec : Prop :=
  ∀ n, P6355969521681633615.a n = A383259 (n + 1)

end A383259

/-! ## A383259.P13679434373018871632

`A285725(n+1)+A083721(n+1)`
-/

namespace A383259.P13679434373018871632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285725 (n + 1) + A083721 (n + 1)

end

end A383259.P13679434373018871632

namespace A383259

/-- `A285725(n+1)+A083721(n+1)` -/
def P13679434373018871632.Spec : Prop :=
  ∀ n, P13679434373018871632.a n = A383259 (n + 1)

end A383259

/-! ## A383259.P16167769163711085434

`A162761(n+1)%A256885(n+1)`
-/

namespace A383259.P16167769163711085434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162761 (n + 1)) (A256885 (n + 1))

end

end A383259.P16167769163711085434

namespace A383259

/-- `A162761(n+1)%A256885(n+1)` -/
def P16167769163711085434.Spec : Prop :=
  ∀ n, P16167769163711085434.a n = A383259 (n + 1)

end A383259

/-!
# A383260: Expansion of e.g.f. f(x) * exp(f(x)), where f(x) = (exp(3*x) - 1)/3.

The programs for A383260, there is no canonical definition to state claims against.
-/

/-! ## A383260.P14673457904533331085

`Δ[A004212(n)/3]`
-/

namespace A383260.P14673457904533331085
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004212 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A383260.P14673457904533331085

/-! ## A383260.P17695602877427593481

`Δ[A008611(A004212(n))]`
-/

namespace A383260.P17695602877427593481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A004212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A383260.P17695602877427593481

/-!
# A383261: Expansion of e.g.f. f(x) * exp(2 * f(x)), where f(x) = (exp(3*x) - 1)/3.

The programs for A383261, there is no canonical definition to state claims against.
-/

/-! ## A383261.P14626734025374356320

`∑[A054861(∏[2*n+1])]`
-/

namespace A383261.P14626734025374356320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383261.P14626734025374356320

/-!
# A383262: Expansion of e.g.f. f(x)^2 * exp(f(x)) / 2, where f(x) = (exp(3*x) - 1)/3.

The programs for A383262, there is no canonical definition to state claims against.
-/

/-! ## A383262.P11134590430339138109

`A024542(A000165(n))-A174783(n)`
-/

namespace A383262.P11134590430339138109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024542 (A000165 n).toNat - A174783 n

end

end A383262.P11134590430339138109

/-! ## A383262.P18138467095327595260

`A057363(A011782(n)*A351050(n))`
-/

namespace A383262.P18138467095327595260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (A011782 n * A351050 n).toNat

end

end A383262.P18138467095327595260

/-!
# A383263: Union of prime powers (A246655) and numbers that are not squarefree (A013929).

The programs for A383263, there is no canonical definition to state claims against.
-/

/-! ## A383263.P3151012627621192466

`A363597(n+2)`
-/

namespace A383263.P3151012627621192466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 2)

end

end A383263.P3151012627621192466

/-! ## A383263.P16240489380030440156

`comp[A140700(n+1)]`
-/

namespace A383263.P16240489380030440156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383263.P16240489380030440156

/-! ## A383263.P18434441912776917955

`eq[0, A354819(n+1)]+1`
-/

namespace A383263.P18434441912776917955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383263.P18434441912776917955

/-! ## A383263.P5379647550492066335

`lt[A069158(n+1), 1]+1`
-/

namespace A383263.P5379647550492066335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A383263.P5379647550492066335

/-! ## A383263.P10683951940231294711

`comp[A000469(n+1)-1]+1`
-/

namespace A383263.P10683951940231294711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A383263.P10683951940231294711

/-! ## A383263.P7136660400488164677

`comp[A361321(n+1)-1]+1`
-/

namespace A383263.P7136660400488164677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361321 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A383263.P7136660400488164677

/-! ## A383263.P9484052098126021353

`eq[1, abs(A106743(n+1))]+1`
-/

namespace A383263.P9484052098126021353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106743 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383263.P9484052098126021353

/-! ## A383263.P12548121213998952106

`∪[A144100(n+1), A017113(n)]`
-/

namespace A383263.P12548121213998952106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383263.P12548121213998952106

/-! ## A383263.P5194690117867535321

`∪[A356862(n+1), A014738(n)]`
-/

namespace A383263.P5194690117867535321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014738 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383263.P5194690117867535321

/-! ## A383263.P16889213624069476365

`∪[A356862(n+1), A016826(n)]`
-/

namespace A383263.P16889213624069476365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016826 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383263.P16889213624069476365

/-!
# A383264: Numbers whose vSPD is not squarefree, where vSPD(n) is the valuation of the smallest prime divisor for n >= 2.

The programs for A383264, there is no canonical definition to state claims against.
-/

/-! ## A383264.P3043958534905873323

`A130897(C(A302478(n+1), A101027(n)))`
-/

namespace A383264.P3043958534905873323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130897 (Nat.choose (A302478 (n + 1)).toNat (A101027 n).toNat)

end

end A383264.P3043958534905873323

/-! ## A383264.P1633540692213628209

`lt[A327516(3*n+4), A300955(n+1)]+1`
-/

namespace A383264.P1633540692213628209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327516 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A383264.P1633540692213628209

/-! ## A383264.P16549137775726651624

`A130897(A051250(n+1)%A014530(2*n+5))`
-/

namespace A383264.P16549137775726651624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130897 (Int.tmod (A051250 (n + 1)) (A014530 (2 * n + 5))).toNat

end

end A383264.P16549137775726651624

/-!
# A383265: a(n) = Sum_{k=0..n} A383266(n, k).

The programs for A383265, there is no canonical definition to state claims against.
-/

/-! ## A383265.P914228714385528160

`A056239(A005559(n+1))+n²`
-/

namespace A383265.P914228714385528160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A005559 (n + 1)).toNat + (n ^ 2 : ℤ)

end

end A383265.P914228714385528160

/-! ## A383265.P1338999088087551942

`A002378(n)+A000193(A088218(n))`
-/

namespace A383265.P1338999088087551942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + A000193 (A088218 n).toNat

end

end A383265.P1338999088087551942

/-! ## A383265.P14035576498195437985

`A173562(n)+A001222(A002001(n))`
-/

namespace A383265.P14035576498195437985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173562 n + A001222 (A002001 n).toNat

end

end A383265.P14035576498195437985

/-! ## A383265.P4858058645590026135

`A309155(A081294(n))+A173562(n)`
-/

namespace A383265.P4858058645590026135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309155 (A081294 n).toNat + A173562 n

end

end A383265.P4858058645590026135

/-!
# A383275: Number of compositions of n such that any part 1 can be k different colors where k is the current record having appeared in the composition.

The programs for A383275, there is no canonical definition to state claims against.
-/

/-! ## A383275.P1723706738638814721

`A127763(A149276(n))`
-/

namespace A383275.P1723706738638814721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A149276 n).toNat

end

end A383275.P1723706738638814721

/-! ## A383275.P9646545601193362904

`A065716(A002494(n))+A000108(n)`
-/

namespace A383275.P9646545601193362904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065716 (A002494 n).toNat + A000108 n

end

end A383275.P9646545601193362904

/-! ## A383275.P16114759322251183334

`A238804(A034355(n+3))+A000108(n)`
-/

namespace A383275.P16114759322251183334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238804 (A034355 (n + 3)).toNat + A000108 n

end

end A383275.P16114759322251183334

/-!
# A383276: Numbers of the form A034444(k) * k.

The programs for A383276, the canonical program `A383276.P2452328598663142777` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383276 has offset 1).

The definition of A383276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2247 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383276.P12930128298634916105

`A383279(n+1)*A034444(A383279(n+1))`
-/

namespace A383276.P12930128298634916105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383279 (n + 1) * A034444 (A383279 (n + 1)).toNat

end

end A383276.P12930128298634916105

namespace A383276

/-- `A383279(n+1)*A034444(A383279(n+1))` -/
def P12930128298634916105.Spec : Prop :=
  ∀ n, P12930128298634916105.a n = A383276 (n + 1)

end A383276

/-! ## A383276.P2452328598663142777

`eq[1, A383277(n+1)]+1`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A383276

/-- `eq[1, A383277(n+1)]+1` -/
def P2452328598663142777.Spec : Prop :=
  ∀ n, (P2452328598663142777.a n : ℤ) = A383276 (n + 1)

theorem P2452328598663142777.correct : P2452328598663142777.Spec := by
  intro n
  simp only [A383276, Nat.add_sub_cancel]

end A383276

/-! ## A383276.P16816633149487939345

`A000034(A348632(n+1)-1)*A304686(n+1)`
-/

namespace A383276.P16816633149487939345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A348632 (n + 1) - 1).toNat * A304686 (n + 1)

end

end A383276.P16816633149487939345

namespace A383276

/-- `A000034(A348632(n+1)-1)*A304686(n+1)` -/
def P16816633149487939345.Spec : Prop :=
  ∀ n, P16816633149487939345.a n = A383276 (n + 1)

end A383276

/-! ## A383276.P4824548401326891717

`A000034(A005934(n+1)-1)*A304686(n+1)`
-/

namespace A383276.P4824548401326891717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A005934 (n + 1) - 1).toNat * A304686 (n + 1)

end

end A383276.P4824548401326891717

namespace A383276

/-- `A000034(A005934(n+1)-1)*A304686(n+1)` -/
def P4824548401326891717.Spec : Prop :=
  ∀ n, P4824548401326891717.a n = A383276 (n + 1)

end A383276

/-!
# A383277: The number of divisors d of n for which A034444(d)*d is equal to n.

The programs for A383277, the canonical program `A383277.P6033499868136924238` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383277 has offset 1).

The definition of A383277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383277.P5793779535037556879

`char[A383276(n+1)-1]`
-/

namespace A383277.P5793779535037556879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383276 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A383277.P5793779535037556879

namespace A383277

/-- `char[A383276(n+1)-1]` -/
def P5793779535037556879.Spec : Prop :=
  ∀ n, (P5793779535037556879.a n : ℤ) = A383277 (n + 1)

end A383277

/-! ## A383277.P6033499868136924238

`char[(n+1)*A034444(n+1)-1]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A383277

/-- `char[(n+1)*A034444(n+1)-1]` -/
def P6033499868136924238.Spec : Prop :=
  ∀ n, (P6033499868136924238.a n : ℤ) = A383277 (n + 1)

theorem P6033499868136924238.correct : P6033499868136924238.Spec := by
  intro n
  simp only [A383277, Nat.add_sub_cancel]

end A383277

/-! ## A383277.P5164941477712758154

`and(1-a(n-1), A335450(2*(n+1)))` with `a(0)=1, a(1)=0`
-/

namespace A383277.P5164941477712758154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  Int.land (1 - a (n - 1)) (A335450 (2 * (n + 1)))

end

end A383277.P5164941477712758154

namespace A383277

/-- `and(1-a(n-1), A335450(2*(n+1)))` -/
def P5164941477712758154.Spec : Prop :=
  ∀ n, P5164941477712758154.a n = A383277 (n + 1)

end A383277

/-! ## A383277.P15297048178126048394

`and(char[A000720(2*n+1)], A335450(2*(n+1)))`
-/

namespace A383277.P15297048178126048394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A335450 (2 * (n + 1)))

end

end A383277.P15297048178126048394

namespace A383277

/-- `and(char[A000720(2*n+1)], A335450(2*(n+1)))` -/
def P15297048178126048394.Spec : Prop :=
  ∀ n, P15297048178126048394.a n = A383277 (n + 1)

end A383277

/-! ## A383277.P2152519268394565597

`and(A335450(2*(n+1)), A339365(A072649(n+1)))`
-/

namespace A383277.P2152519268394565597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A335450 (2 * (n + 1))) (A339365 (A072649 (n + 1)).toNat)

end

end A383277.P2152519268394565597

namespace A383277

/-- `and(A335450(2*(n+1)), A339365(A072649(n+1)))` -/
def P2152519268394565597.Spec : Prop :=
  ∀ n, P2152519268394565597.a n = A383277 (n + 1)

end A383277

/-!
# A383278: The number of integers k such that A034444(k) * k <= n.

The programs for A383278, the canonical program `A383278.P11664526587919339867` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383278 has offset 1).

The definition of A383278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383278.P11664526587919339867

`∑[A383277(n+1)]`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A383278

/-- `∑[A383277(n+1)]` -/
def P11664526587919339867.Spec : Prop :=
  ∀ n, P11664526587919339867.a n = A383278 (n + 1)

theorem P11664526587919339867.correct : P11664526587919339867.Spec := by
  intro n
  simp only [A383278, Nat.add_sub_cancel]

end A383278

/-! ## A383278.P13587968719160948892

`A067029(∏[A383277(n+1)+1])`
-/

namespace A383278.P13587968719160948892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383277 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A383278.P13587968719160948892

namespace A383278

/-- `A067029(∏[A383277(n+1)+1])` -/
def P13587968719160948892.Spec : Prop :=
  ∀ n, P13587968719160948892.a n = A383278 (n + 1)

end A383278

/-! ## A383278.P16529909526410796598

`∑[((n%2)^n)%A122196(A325763(2*n+5))]`
-/

namespace A383278.P16529909526410796598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n % 2) ^ n : ℕ) : ℤ) (A122196 (A325763 (2 * n + 5)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383278.P16529909526410796598

namespace A383278

/-- `∑[((n%2)^n)%A122196(A325763(2*n+5))]` -/
def P16529909526410796598.Spec : Prop :=
  ∀ n, P16529909526410796598.a n = A383278 (n + 1)

end A383278

/-! ## A383278.P459109505925503053

`A171622(A113240(n+1))`
-/

namespace A383278.P459109505925503053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171622 (A113240 (n + 1)).toNat

end

end A383278.P459109505925503053

namespace A383278

/-- `A171622(A113240(n+1))` -/
def P459109505925503053.Spec : Prop :=
  ∀ n, P459109505925503053.a n = A383278 (n + 1)

end A383278

/-! ## A383278.P4831963322829700979

`A130259(A285610(n+1))`
-/

namespace A383278.P4831963322829700979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (A285610 (n + 1)).toNat

end

end A383278.P4831963322829700979

namespace A383278

/-- `A130259(A285610(n+1))` -/
def P4831963322829700979.Spec : Prop :=
  ∀ n, P4831963322829700979.a n = A383278 (n + 1)

end A383278

/-!
# A383279: The unique solution to x * A034444(x) = A383276(n).

The programs for A383279, there is no canonical definition to state claims against.
-/

/-! ## A383279.P2828532977369884271

`A304686(n+1)/A083888(A294418(n))`
-/

namespace A383279.P2828532977369884271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304686 (n + 1) : ℚ) / (A083888 (A294418 n).toNat : ℚ)

end

end A383279.P2828532977369884271

/-!
# A383280: a(n) = (3/2)^n * Sum_{k=0..n} (1/6)^k * (2*k)! * (n-k)! * binomial(n,k)^2.

The programs for A383280, the canonical program `A383280.P3090956255269014776` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383280 has offset 0).

The definition of A383280 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383280.P3090956255269014776

`n*((n+1)*a(n-1)-3*(n-1)²/2*a(n-2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383280

/-- `n*((n+1)*a(n-1)-3*(n-1)²/2*a(n-2))` -/
def P3090956255269014776.Spec : Prop :=
  ∀ n, P3090956255269014776.a n = (A383280 n : ℚ)

end A383280

/-!
# A383281: a(n) = Sum_{k=0..n} (2*k+1) * (1/2)^(n+k) * (2*k)! * (n-k)! * binomial(n,k)^2.

The programs for A383281, the canonical program `A383281.P2880767270055418845` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383281 has offset 0).

The definition of A383281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383281.P2880767270055418845

`n*((n+1)*a(n-1)-(n-1)²/2*a(n-2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383281

/-- `n*((n+1)*a(n-1)-(n-1)²/2*a(n-2))` -/
def P2880767270055418845.Spec : Prop :=
  ∀ n, P2880767270055418845.a n = (A383281 n : ℚ)

end A383281

/-! ## A383281.P11001979207731518849

`A002018(n+1)/(n+1)`
-/

namespace A383281.P11001979207731518849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002018 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A383281.P11001979207731518849

namespace A383281

/-- `A002018(n+1)/(n+1)` -/
def P11001979207731518849.Spec : Prop :=
  ∀ n, P11001979207731518849.a n = (A383281 n : ℚ)

end A383281

/-!
# A383282: a(n) = Sum_{k=0..n} (2*k+1) * (-1/2)^(n+k) * (2*k)! * (n-k)! * binomial(n,k)^2.

The programs for A383282, the canonical program `A383282.P13357248954441416212` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383282 has offset 0).

The definition of A383282 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383282.P13357248954441416212

`n*(n*a(n-1)+(n-1)²/2*a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383282

/-- `n*(n*a(n-1)+(n-1)²/2*a(n-2))` -/
def P13357248954441416212.Spec : Prop :=
  ∀ n, P13357248954441416212.a n = (A383282 n : ℚ)

end A383282

/-! ## A383282.P11081934098288360817

`A001499(n+2)/A002411(n+1)`
-/

namespace A383282.P11081934098288360817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001499 (n + 2) : ℚ) / (A002411 (n + 1) : ℚ)

end

end A383282.P11081934098288360817

namespace A383282

/-- `A001499(n+2)/A002411(n+1)` -/
def P11081934098288360817.Spec : Prop :=
  ∀ n, P11081934098288360817.a n = (A383282 n : ℚ)

end A383282

/-!
# A383283: Indices of record low-water marks of the sequence abs((cos(k))^k).

The programs for A383283, there is no canonical definition to state claims against.
-/

/-! ## A383283.P2270208649704145167

`eq[A329340(n), A390494(n+1)]`
-/

namespace A383283.P2270208649704145167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329340 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390494 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383283.P2270208649704145167

/-! ## A383283.P2018001165383046220

`∑[∑[A385240(A262829(n+1))]]`
-/

namespace A383283.P2018001165383046220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385240 (A262829 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383283.P2018001165383046220

/-!
# A383284: Lexicographically earliest infinite sequence such that a(i) = a(j) => A265576(i) = A265576(j), for all i, j >= 1, where A265576 is the LCM-transform of EKG-sequence.

The programs for A383284, there is no canonical definition to state claims against.
-/

/-! ## A383284.P4707847611075117682

`A003977(A265576(n+1))`
-/

namespace A383284.P4707847611075117682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003977 (A265576 (n + 1)).toNat

end

end A383284.P4707847611075117682

/-! ## A383284.P5712421563000869813

`A061395(A265576(n+1))+A005171(2*(n+2))`
-/

namespace A383284.P5712421563000869813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A265576 (n + 1)).toNat + A005171 (2 * (n + 2))

end

end A383284.P5712421563000869813

/-! ## A383284.P2148965728606749851

`A036234(A353558(2*(n+2))+A265576(n+1))`
-/

namespace A383284.P2148965728606749851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A353558 (2 * (n + 2)) + A265576 (n + 1)).toNat

end

end A383284.P2148965728606749851

/-! ## A383284.P15047713830105546605

`A056239(2*A265576(n+1))`
-/

namespace A383284.P15047713830105546605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A265576 (n + 1)).toNat

end

end A383284.P15047713830105546605

/-! ## A383284.P15776886563040329403

`A027642(2*n+3)+A000720(A265576(n+1))`
-/

namespace A383284.P15776886563040329403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * n + 3) + A000720 (A265576 (n + 1)).toNat

end

end A383284.P15776886563040329403

/-! ## A383284.P17779335451047677811

`A357633(2*A265576(n+1))`
-/

namespace A383284.P17779335451047677811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357633 (2 * A265576 (n + 1)).toNat

end

end A383284.P17779335451047677811

/-!
# A383285: Positions of terms > 1 in A265576, where A265576 is the LCM-transform of EKG-sequence.

The programs for A383285, there is no canonical definition to state claims against.
-/

/-! ## A383285.P6689640439638043100

`lt[1, A383284(n+1)]+1`
-/

namespace A383285.P6689640439638043100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383284 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A383285.P6689640439638043100

/-! ## A383285.P14677481732153480040

`lt[1, A265576(n+1)]+1`
-/

namespace A383285.P14677481732153480040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A383285.P14677481732153480040

/-! ## A383285.P8029953824289508986

`eq[A209229(3*(n+1)), A357879(A265576(n+1))]+1`
-/

namespace A383285.P8029953824289508986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357879 (A265576 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A383285.P8029953824289508986

/-! ## A383285.P18162164494627276303

`lt[1, A265576(A028310(n))]`
-/

namespace A383285.P18162164494627276303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265576 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A383285.P18162164494627276303

/-!
# A383287: a(n) = 1 if A276075(n) is a multiple of 4, otherwise 0, where A276075 is fully additive with a(p) = PrimePi(p)!.

The programs for A383287, the canonical program `A383287.P3642307280412433248` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383287 has offset 1).

The definition of A383287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383287.P10993191168392929584

`A121262(A276075(n+1))`
-/

namespace A383287.P10993191168392929584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A276075 (n + 1)).toNat

end

end A383287.P10993191168392929584

namespace A383287

/-- `A121262(A276075(n+1))` -/
def P10993191168392929584.Spec : Prop :=
  ∀ n, P10993191168392929584.a n = A383287 (n + 1)

end A383287

/-! ## A383287.P11010614143223393280

`char[A383288(n+1)-1]`
-/

namespace A383287.P11010614143223393280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383288 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A383287.P11010614143223393280

namespace A383287

/-- `char[A383288(n+1)-1]` -/
def P11010614143223393280.Spec : Prop :=
  ∀ n, (P11010614143223393280.a n : ℤ) = A383287 (n + 1)

end A383287

/-! ## A383287.P3642307280412433248

`A369001(A355582(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A383287

/-- `A369001(A355582(n+1))` -/
def P3642307280412433248.Spec : Prop :=
  ∀ n, P3642307280412433248.a n = A383287 (n + 1)

theorem P3642307280412433248.correct : P3642307280412433248.Spec := by
  intro n
  simp only [A383287, Nat.add_sub_cancel]

end A383287

/-! ## A383287.P7944628974732600337

`A374646(A246278(n+2)^(A036583(n)%3))`
-/

namespace A383287.P7944628974732600337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374646 (SequenceMachineLib.roundAway ((A246278 (n + 2) : ℚ) ^ (Int.tmod (A036583 n) 3 : ℤ))).toNat

end

end A383287.P7944628974732600337

namespace A383287

/-- `A374646(A246278(n+2)^(A036583(n)%3))` -/
def P7944628974732600337.Spec : Prop :=
  ∀ n, P7944628974732600337.a n = A383287 (n + 1)

end A383287

/-!
# A383288: Numbers k for which A276075(k) is a multiple of 4, where A276075 is fully additive with a(p) = PrimePi(p)!.

The programs for A383288, the canonical program `A383288.P8330207699050521713` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383288 has offset 1).

The definition of A383288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383288.P8330207699050521713

`filter[A003159(n+1), A383287(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A383288

/-- `filter[A003159(n+1), A383287(#)]` -/
def P8330207699050521713.Spec : Prop :=
  ∀ n, P8330207699050521713.a n = A383288 (n + 1)

theorem P8330207699050521713.correct : P8330207699050521713.Spec := by
  intro n
  simp only [A383288, Nat.add_sub_cancel]

end A383288

/-! ## A383288.P10129769035165411

`filter[A260401(n+1), A383287(#)]`
-/

namespace A383288.P10129769035165411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383287 (f1 j).toNat = 1) n)

end

end A383288.P10129769035165411

namespace A383288

/-- `filter[A260401(n+1), A383287(#)]` -/
def P10129769035165411.Spec : Prop :=
  ∀ n, P10129769035165411.a n = A383288 (n + 1)

end A383288

/-! ## A383288.P9088402054826572529

`filter[A107750(n+1), A383287(#)]`
-/

namespace A383288.P9088402054826572529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383287 (f1 j).toNat = 1) n)

end

end A383288.P9088402054826572529

namespace A383288

/-- `filter[A107750(n+1), A383287(#)]` -/
def P9088402054826572529.Spec : Prop :=
  ∀ n, P9088402054826572529.a n = A383288 (n + 1)

end A383288

/-! ## A383288.P8764739196908306327

`filter[A042965(n+2), A383287(#)]`
-/

namespace A383288.P8764739196908306327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383287 (f1 j).toNat = 1) n)

end

end A383288.P8764739196908306327

namespace A383288

/-- `filter[A042965(n+2), A383287(#)]` -/
def P8764739196908306327.Spec : Prop :=
  ∀ n, P8764739196908306327.a n = A383288 (n + 1)

end A383288

/-! ## A383288.P13629729384408212380

`filter[A122906(n+1), A383287(#)]`
-/

namespace A383288.P13629729384408212380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383287 (f1 j).toNat = 1) n)

end

end A383288.P13629729384408212380

namespace A383288

/-- `filter[A122906(n+1), A383287(#)]` -/
def P13629729384408212380.Spec : Prop :=
  ∀ n, P13629729384408212380.a n = A383288 (n + 1)

end A383288

/-! ## A383288.P3158364822570158290

`filter[A183300(n+1), A383287(#)]`
-/

namespace A383288.P3158364822570158290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383287 (f1 j).toNat = 1) n)

end

end A383288.P3158364822570158290

namespace A383288

/-- `filter[A183300(n+1), A383287(#)]` -/
def P3158364822570158290.Spec : Prop :=
  ∀ n, P3158364822570158290.a n = A383288 (n + 1)

end A383288

/-!
# A383291: Successively larger gaps in happy numbers start at this happy number.

The programs for A383291, there is no canonical definition to state claims against.
-/

/-! ## A383291.P9892710853776784954

`∩[A191990(n+1), A301152(n)]`
-/

namespace A383291.P9892710853776784954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301152 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383291.P9892710853776784954

/-!
# A383292: Dirichlet g.f.: zeta(s) * Product_{p prime} (1 + 1/p^(2*s) + 1/p^(3*s)).

The programs for A383292, the canonical program `A383292.P9725459746101567270` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383292 has offset 1).

The definition of A383292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383292.P9725459746101567270

`∏{e}[n+1, 3-C(2, #)]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383292

/-- `∏{e}[n+1, 3-C(2, #)]` -/
def P9725459746101567270.Spec : Prop :=
  ∀ n, P9725459746101567270.a n = A383292 (n + 1)

theorem P9725459746101567270.correct : P9725459746101567270.Spec := by
  intro n
  simp only [A383292, Nat.add_sub_cancel]

end A383292

/-! ## A383292.P10935765809962848373

`∏{e}[n+1, 3-floor(2/#)]`
-/

namespace A383292.P10935765809962848373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (3 - ⌊2 / (Nat.factorization (f1 n) p : ℚ)⌋)

end

end A383292.P10935765809962848373

namespace A383292

/-- `∏{e}[n+1, 3-floor(2/#)]` -/
def P10935765809962848373.Spec : Prop :=
  ∀ n, P10935765809962848373.a n = A383292 (n + 1)

end A383292

/-! ## A383292.P6708754011006012330

`A000688(A058035(n+1))`
-/

namespace A383292.P6708754011006012330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A058035 (n + 1)).toNat

end

end A383292.P6708754011006012330

namespace A383292

/-- `A000688(A058035(n+1))` -/
def P6708754011006012330.Spec : Prop :=
  ∀ n, P6708754011006012330.a n = A383292 (n + 1)

end A383292

/-! ## A383292.P8960900830879965711

`A079065(A295879(n+1))`
-/

namespace A383292.P8960900830879965711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079065 (A295879 (n + 1)).toNat

end

end A383292.P8960900830879965711

namespace A383292

/-- `A079065(A295879(n+1))` -/
def P8960900830879965711.Spec : Prop :=
  ∀ n, P8960900830879965711.a n = A383292 (n + 1)

end A383292

/-! ## A383292.P4512286996682268504

`A073184((n+1)/A007947(n+1))`
-/

namespace A383292.P4512286996682268504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073184 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A383292.P4512286996682268504

namespace A383292

/-- `A073184((n+1)/A007947(n+1))` -/
def P4512286996682268504.Spec : Prop :=
  ∀ n, P4512286996682268504.a n = A383292 (n + 1)

end A383292

/-! ## A383292.P12808535495865842095

`lcm(A368247(n+1), A368885(n+1))`
-/

namespace A383292.P12808535495865842095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A368247 (n + 1)) (A368885 (n + 1))

end

end A383292.P12808535495865842095

namespace A383292

/-- `lcm(A368247(n+1), A368885(n+1))` -/
def P12808535495865842095.Spec : Prop :=
  ∀ n, (P12808535495865842095.a n : ℤ) = A383292 (n + 1)

end A383292

/-! ## A383292.P3173483536466189929

`A252505(A007948(A062379((n+1)²)))`
-/

namespace A383292.P3173483536466189929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252505 (A007948 (A062379 ((n + 1) ^ 2)).toNat).toNat

end

end A383292.P3173483536466189929

namespace A383292

/-- `A252505(A007948(A062379((n+1)²)))` -/
def P3173483536466189929.Spec : Prop :=
  ∀ n, P3173483536466189929.a n = A383292 (n + 1)

end A383292

/-! ## A383292.P4894923045636822942

`A257089(2*A256688(n+1))`
-/

namespace A383292.P4894923045636822942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257089 (2 * A256688 (n + 1)).toNat

end

end A383292.P4894923045636822942

namespace A383292

/-- `A257089(2*A256688(n+1))` -/
def P4894923045636822942.Spec : Prop :=
  ∀ n, P4894923045636822942.a n = A383292 (n + 1)

end A383292

/-! ## A383292.P6532451055349906676

`A356069(A107742(A000688(n+1)))`
-/

namespace A383292.P6532451055349906676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356069 (A107742 (A000688 (n + 1)).toNat).toNat

end

end A383292.P6532451055349906676

namespace A383292

/-- `A356069(A107742(A000688(n+1)))` -/
def P6532451055349906676.Spec : Prop :=
  ∀ n, P6532451055349906676.a n = A383292 (n + 1)

end A383292

/-! ## A383292.P17028084999067308837

`A257089(A256688(n+1)+A256688(n+1))`
-/

namespace A383292.P17028084999067308837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257089 (A256688 (n + 1) + A256688 (n + 1)).toNat

end

end A383292.P17028084999067308837

namespace A383292

/-- `A257089(A256688(n+1)+A256688(n+1))` -/
def P17028084999067308837.Spec : Prop :=
  ∀ n, P17028084999067308837.a n = A383292 (n + 1)

end A383292

/-!
# A383293: Exponential of Mangoldt function applied to EKG-sequence: a(n) = A014963(A064413(n)).

The programs for A383293, there is no canonical definition to state claims against.
-/

/-! ## A383293.P834161793544100286

`A014963(A064413(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A383293.P834161793544100286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A064413 (n + 1)).toNat

end

end A383293.P834161793544100286

/-! ## A383293.P7876331079563281381

`gcd(A304733(n+1), A348470(n+1))`
-/

namespace A383293.P7876331079563281381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A304733 (n + 1)) (A348470 (n + 1))

end

end A383293.P7876331079563281381

/-! ## A383293.P11765520042071700437

`A014963(Δ[A065057(n)])`
-/

namespace A383293.P11765520042071700437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (n + 1) - f1 n).toNat

end

end A383293.P11765520042071700437

/-! ## A383293.P8779546754612867623

`A014963(A065057(n+1)-A065057(n))`
-/

namespace A383293.P8779546754612867623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A065057 (n + 1) - A065057 n).toNat

end

end A383293.P8779546754612867623

/-! ## A383293.P17199454190935810783

`A014963(∑{d}[n+1, A064664(#)*A349613((n+1)/#)])`
-/

namespace A383293.P17199454190935810783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ d ∈ Nat.divisors (f1 n), A064664 d * A349613 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat

end

end A383293.P17199454190935810783

/-! ## A383293.P14571762891912070623

`A014963(A104125(n+1))`
-/

namespace A383293.P14571762891912070623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A104125 (n + 1)).toNat

end

end A383293.P14571762891912070623

/-! ## A383293.P16996864055699252834

`A265576(A064664(A064413(n+1)²))`
-/

namespace A383293.P16996864055699252834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265576 (A064664 (A064413 (n + 1) ^ 2).toNat).toNat

end

end A383293.P16996864055699252834

/-! ## A383293.P15689575477504390497

`A383258(A064413(A064413(n+1)²))`
-/

namespace A383293.P15689575477504390497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383258 (A064413 (A064413 (n + 1) ^ 2).toNat).toNat

end

end A383293.P15689575477504390497

/-!
# A383294: Positions of prime powers (A246655) in EKG-sequence.

The programs for A383294, there is no canonical definition to state claims against.
-/

/-! ## A383294.P7791713226111332150

`∪[A064955(n+1), A383295(n+1)]`
-/

namespace A383294.P7791713226111332150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383294.P7791713226111332150

/-! ## A383294.P2759187898531447669

`eq[1, A065203(n+1)]+1`
-/

namespace A383294.P2759187898531447669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383294.P2759187898531447669

/-! ## A383294.P40081201361910927

`eq[1, A065203(A028310(n))]`
-/

namespace A383294.P40081201361910927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065203 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A383294.P40081201361910927

/-! ## A383294.P14613498438094566382

`eq[1, A001221(A104125(n+1))]+1`
-/

namespace A383294.P14613498438094566382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A104125 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383294.P14613498438094566382

/-!
# A383296: Primorial base echo numbers: primorial base expansion of k has the largest prime factor of k-1 as its suffix.

The programs for A383296, there is no canonical definition to state claims against.
-/

/-! ## A383296.P4363228110050385017

`A051634(lt[A002851(n), A273531(n)])`
-/

namespace A383296.P4363228110050385017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002851 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383296.P4363228110050385017

/-! ## A383296.P3925726268139855132

`A005110(3*n+1)-A160125(A081938(n+1))`
-/

namespace A383296.P3925726268139855132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005110 (3 * n + 1) - A160125 (A081938 (n + 1)).toNat

end

end A383296.P3925726268139855132

/-!
# A383297: Numbers k for which A276086(A006530(k-1)) divides A276086(k), where A006530 gives the largest prime factor of k, and A276086 is the primorial base exp-function.

The programs for A383297, there is no canonical definition to state claims against.
-/

/-! ## A383297.P5399103917696540863

`A047270(record[A347627(2*n+1)])`
-/

namespace A383297.P5399103917696540863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347627 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A383297.P5399103917696540863

/-! ## A383297.P6310842939802943586

`A235774(A346676(n+1))`
-/

namespace A383297.P6310842939802943586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235774 (A346676 (n + 1)).toNat

end

end A383297.P6310842939802943586

/-! ## A383297.P10605060565272662642

`A001414(A269758(n+1))+1`
-/

namespace A383297.P10605060565272662642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A269758 (n + 1)).toNat + 1

end

end A383297.P10605060565272662642

/-! ## A383297.P5505458356072049573

`eq[A072750(n+1), A290982(n+2)]`
-/

namespace A383297.P5505458356072049573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290982 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383297.P5505458356072049573

/-! ## A383297.P11417845781433086184

`lt[A337227(2*n+1), A369045(n+1)²]`
-/

namespace A383297.P11417845781433086184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337227 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369045 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383297.P11417845781433086184

/-!
# A383298: a(n) = 1 if A276086(n) is a multiple of A276086(A003415(n)), otherwise 0, where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A383298, there is no canonical definition to state claims against.
-/

/-! ## A383298.P7468193519062090179

`char[A383299(n+1)]`
-/

namespace A383298.P7468193519062090179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A383298.P7468193519062090179

/-! ## A383298.P14273585775303124716

`A000007(A276086(n)%A327859(n))`
-/

namespace A383298.P14273585775303124716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A276086 n) (A327859 n)).toNat

end

end A383298.P14273585775303124716

/-! ## A383298.P147049373973673973

`A322585(A077896(n)+A003415(3*n+2))`
-/

namespace A383298.P147049373973673973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (A077896 n + A003415 (3 * n + 2)).toNat

end

end A383298.P147049373973673973

/-! ## A383298.P13202348157232827127

`C(A185951(n+1), A373330(A032742(3*n+2)))`
-/

namespace A383298.P13202348157232827127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A185951 (n + 1)).toNat (A373330 (A032742 (3 * n + 2)).toNat).toNat

end

end A383298.P13202348157232827127

/-! ## A383298.P3246003787901853330

`C(A330463(3*n+1), A373330(A032742(3*n+2)))`
-/

namespace A383298.P3246003787901853330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A330463 (3 * n + 1)).toNat (A373330 (A032742 (3 * n + 2)).toNat).toNat

end

end A383298.P3246003787901853330

/-!
# A383299: Numbers k such that A276086(k) is a multiple of A276086(A003415(k)), where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A383299, there is no canonical definition to state claims against.
-/

/-! ## A383299.P13561186915780783545

`lt[0, A383298(n)]`
-/

namespace A383299.P13561186915780783545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A383299.P13561186915780783545

/-! ## A383299.P7801600363528936590

`eq[A204162(n+1), A383298(n)]`
-/

namespace A383299.P7801600363528936590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383299.P7801600363528936590

/-! ## A383299.P7510028625034280704

`eq[A241665(n+1), A383298(n)]`
-/

namespace A383299.P7510028625034280704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383299.P7510028625034280704

/-! ## A383299.P11168447608358579635

`eq[A166123(n+1), A383298(n)]`
-/

namespace A383299.P11168447608358579635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383299.P11168447608358579635

/-! ## A383299.P10166341305034743896

`eq[A346481(n+1), A383298(n)]`
-/

namespace A383299.P10166341305034743896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383299.P10166341305034743896

/-! ## A383299.P8160118721663363141

`eq[A363057(n+1), A383298(n)]`
-/

namespace A383299.P8160118721663363141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383299.P8160118721663363141

/-! ## A383299.P5064221778609255906

`filter[A004276(n), A383298(#)]`
-/

namespace A383299.P5064221778609255906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383298 (f1 j).toNat = 1) n)

end

end A383299.P5064221778609255906

/-! ## A383299.P11379156900760777326

`filter[A190941(n), A383298(#)]`
-/

namespace A383299.P11379156900760777326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383298 (f1 j).toNat = 1) n)

end

end A383299.P11379156900760777326

/-! ## A383299.P10169113593338312138

`filter[A277383(n+1), A383298(#)]`
-/

namespace A383299.P10169113593338312138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383298 (f1 j).toNat = 1) n)

end

end A383299.P10169113593338312138

/-! ## A383299.P11994878243995946295

`filter[A081692(n), A383298(#)]`
-/

namespace A383299.P11994878243995946295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383298 (f1 j).toNat = 1) n)

end

end A383299.P11994878243995946295

/-! ## A383299.P14973255170252701301

`filter[A107750(n), A383298(#)]`
-/

namespace A383299.P14973255170252701301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383298 (f1 j).toNat = 1) n)

end

end A383299.P14973255170252701301

/-! ## A383299.P17563838375097200449

`filter[A042965(n+1), A383298(#)]`
-/

namespace A383299.P17563838375097200449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383298 (f1 j).toNat = 1) n)

end

end A383299.P17563838375097200449

/-! ## A383299.P16169258187236040375

`filter[A263715(n+1), A383298(#)]`
-/

namespace A383299.P16169258187236040375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383298 (f1 j).toNat = 1) n)

end

end A383299.P16169258187236040375

/-! ## A383299.P9288901344397155672

`filter[A079298(n+1), A383298(#)]`
-/

namespace A383299.P9288901344397155672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383298 (f1 j).toNat = 1) n)

end

end A383299.P9288901344397155672

/-! ## A383299.P772074072101161808

`filter[A047252(n+1), A383298(#)]`
-/

namespace A383299.P772074072101161808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383298 (f1 j).toNat = 1) n)

end

end A383299.P772074072101161808

/-! ## A383299.P1393858664351404661

`eq[A204897(n+1), A383298(n)]`
-/

namespace A383299.P1393858664351404661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383299.P1393858664351404661

/-! ## A383299.P8876495280065454324

`filter[A153329(n+1), A383298(#)]`
-/

namespace A383299.P8876495280065454324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383298 (f1 j).toNat = 1) n)

end

end A383299.P8876495280065454324

/-! ## A383299.P11094973491408781479

`filter[A265672(n), A383298(#)]`
-/

namespace A383299.P11094973491408781479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383298 (f1 j).toNat = 1) n)

end

end A383299.P11094973491408781479

/-! ## A383299.P16397882092544142622

`filter[A047565(n+1), A383298(#)]`
-/

namespace A383299.P16397882092544142622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383298 (f1 j).toNat = 1) n)

end

end A383299.P16397882092544142622

/-! ## A383299.P7444136750334509287

`filter[A047595(n+1), A383298(#)]`
-/

namespace A383299.P7444136750334509287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383298 (f1 j).toNat = 1) n)

end

end A383299.P7444136750334509287

