import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
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
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
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
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C001
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
# A234500: Integers of the form (p*q*r*s + 1)/2, where p, q, r, s are distinct primes.

The programs for A234500, there is no canonical definition to state claims against.
-/

/-! ## A234500.P11529267989709322016

`A234105(1+n)+1`
-/

namespace A234500.P11529267989709322016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234105 (1 + n) + 1

end

end A234500.P11529267989709322016

/-! ## A234500.P4651700930071297414

`ceil(A046390(n+1)/2)`
-/

namespace A234500.P4651700930071297414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046390 (n + 1) : ℚ) / 2⌉

end

end A234500.P4651700930071297414

/-! ## A234500.P14422052069779808766

`floor(A046390(A000027(n+1))/2)+1`
-/

namespace A234500.P14422052069779808766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046390 (A000027 (n + 1)).toNat : ℚ) / 2⌋ + 1

end

end A234500.P14422052069779808766

/-! ## A234500.P17158059913318035690

`A014682(A046390(n+1)+1)`
-/

namespace A234500.P17158059913318035690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A046390 (n + 1) + 1).toNat

end

end A234500.P17158059913318035690

/-! ## A234500.P797257851563688503

`A004830(A234105(n+1))`
-/

namespace A234500.P797257851563688503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004830 (A234105 (n + 1)).toNat

end

end A234500.P797257851563688503

/-! ## A234500.P13108862765227756394

`A000463(A046390(n+1))`
-/

namespace A234500.P13108862765227756394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A046390 (n + 1)).toNat

end

end A234500.P13108862765227756394

/-!
# A234501: Products p*q*r*s of distinct primes for which (p*q*r*s + 1)/2 is prime.

The programs for A234501, there is no canonical definition to state claims against.
-/

/-! ## A234501.P5793223282735109464

`2*A234502(n+1)-1`
-/

namespace A234501.P5793223282735109464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A234502 (n + 1) - 1

end

end A234501.P5793223282735109464

/-! ## A234501.P2729823569000041142

`2*p?[ceil(A046390(n+1)/2)]-1`
-/

namespace A234501.P2729823569000041142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046390 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A234501.P2729823569000041142

/-! ## A234501.P230225723359937945

`A004273(A234502(n+1))`
-/

namespace A234501.P230225723359937945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A234502 (n + 1)).toNat

end

end A234501.P230225723359937945

/-! ## A234501.P6978709274450572594

`∑{d}[A234502(n+1), A342527(#)]`
-/

namespace A234501.P6978709274450572594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A342527 d

end

end A234501.P6978709274450572594

/-! ## A234501.P11126878222654068076

`A023443(A234502(n+1)+A234502(n+1))`
-/

namespace A234501.P11126878222654068076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A234502 (n + 1) + A234502 (n + 1)).toNat

end

end A234501.P11126878222654068076

/-!
# A234502: Primes of the form (p*q*r*s + 1)/2, where p, q, r, s are distinct primes.

The programs for A234502, there is no canonical definition to state claims against.
-/

/-! ## A234502.P18355468379481683219

`(A234501(1+n)+1)/2`
-/

namespace A234502.P18355468379481683219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234501 (1 + n) + 1 : ℚ) / 2

end

end A234502.P18355468379481683219

/-! ## A234502.P12835006937234745916

`p?[A234500(n+1)]`
-/

namespace A234502.P12835006937234745916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234502.P12835006937234745916

/-! ## A234502.P13233992237767595769

`p?[ceil(A046390(n+1)/2)]`
-/

namespace A234502.P13233992237767595769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046390 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234502.P13233992237767595769

/-! ## A234502.P11080177516724744263

`p?[floor(A046390(n+2)/2)+1]`
-/

namespace A234502.P11080177516724744263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046390 (n + 2) : ℚ) / 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234502.P11080177516724744263

/-! ## A234502.P14725287408622767291

`filter[A234500(n+1), A010051(#)]`
-/

namespace A234502.P14725287408622767291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A234502.P14725287408622767291

/-! ## A234502.P9018591199768827218

`filter[A234500(n+1), A355937(#)]`
-/

namespace A234502.P9018591199768827218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A234502.P9018591199768827218

/-! ## A234502.P458484550252967505

`filter[A234500(n+1), A302777(#)]`
-/

namespace A234502.P458484550252967505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A234502.P458484550252967505

/-! ## A234502.P13689220546810897609

`filter[A234500(n+1), A323152(#)]`
-/

namespace A234502.P13689220546810897609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A234502.P13689220546810897609

/-! ## A234502.P15509764137097180748

`filter[A234500(n+1), A323153(#)]`
-/

namespace A234502.P15509764137097180748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A234502.P15509764137097180748

/-! ## A234502.P9436527551871903977

`filter[A234500(n+1), A345950(#)]`
-/

namespace A234502.P9436527551871903977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A234502.P9436527551871903977

/-! ## A234502.P15469342188911025528

`filter[A234500(n+1), A351957(#)]`
-/

namespace A234502.P15469342188911025528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A234502.P15469342188911025528

/-! ## A234502.P1104281819775286288

`p?[A273943(A046390(n+1)+1)]`
-/

namespace A234502.P1104281819775286288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A046390 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234502.P1104281819775286288

/-! ## A234502.P9903281473167455770

`A135506(A234501(n+1))`
-/

namespace A234502.P9903281473167455770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135506 (A234501 (n + 1)).toNat

end

end A234502.P9903281473167455770

/-! ## A234502.P1632654302989858641

`p?[A122410(A046390(n+1)+1)]`
-/

namespace A234502.P1632654302989858641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122410 (A046390 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234502.P1632654302989858641

/-!
# A234503: Number of ways to write n = k + m with k > 0 and m > 0 such that 3^(phi(k)/2 + phi(m)/12) + 2 is prime, where phi(.) is Euler's totient function.

The programs for A234503, there is no canonical definition to state claims against.
-/

/-! ## A234503.P13760981611123807659

`A236325(n+1)%A109317(n)`
-/

namespace A234503.P13760981611123807659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236325 (n + 1)) (A109317 n)

end

end A234503.P13760981611123807659

/-! ## A234503.P9350836028089588145

`A236325(n+1)+A215060(3*n+1)`
-/

namespace A234503.P9350836028089588145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236325 (n + 1) + A215060 (3 * n + 1)

end

end A234503.P9350836028089588145

/-! ## A234503.P1290923081225575541

`A319998(A022168(n))+A236325(n+1)`
-/

namespace A234503.P1290923081225575541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319998 (A022168 n).toNat + A236325 (n + 1)

end

end A234503.P1290923081225575541

/-! ## A234503.P11782306055055068906

`A236313(A033574(n))*A236325(n+1)`
-/

namespace A234503.P11782306055055068906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236313 (A033574 n).toNat * A236325 (n + 1)

end

end A234503.P11782306055055068906

/-! ## A234503.P14259615306037209834

`A236325(n+1)^A007318(A094587(n))`
-/

namespace A234503.P14259615306037209834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236325 (n + 1) : ℚ) ^ (A007318 (A094587 n).toNat : ℤ)

end

end A234503.P14259615306037209834

/-!
# A234505: a(n) = 2*binomial(9*n+2,n)/(9*n+2).

The programs for A234505, the canonical program `A234505.P5188876153610910442` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234505 has offset 0).

The definition of A234505 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A234505.anchor (n : ℕ) : (A234505 n : ℚ) = (2 * Nat.choose (9 * n + 2) n : ℚ) / (9 * n + 2 : ℚ)` in `Proof.A234.A234505`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234505.P5188876153610910442

`2*C(9*n+2, n)/(9*n+2)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234505

/-- `2*C(9*n+2, n)/(9*n+2)` -/
def P5188876153610910442.Spec : Prop :=
  ∀ n, P5188876153610910442.a n = (A234505 n : ℚ)

end A234505

/-! ## A234505.P9094332706048806760

`A387091(n)/(4*n+1)`
-/

namespace A234505.P9094332706048806760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387091 n : ℚ) / (4 * n + 1 : ℚ)

end

end A234505.P9094332706048806760

namespace A234505

/-- `A387091(n)/(4*n+1)` -/
def P9094332706048806760.Spec : Prop :=
  ∀ n, P9094332706048806760.a n = (A234505 n : ℚ)

end A234505

/-! ## A234505.P5752483339740940274

`A071948(A139276(n))/(3*n+1)`
-/

namespace A234505.P5752483339740940274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071948 (A139276 n).toNat : ℚ) / (3 * n + 1 : ℚ)

end

end A234505.P5752483339740940274

namespace A234505

/-- `A071948(A139276(n))/(3*n+1)` -/
def P5752483339740940274.Spec : Prop :=
  ∀ n, P5752483339740940274.a n = (A234505 n : ℚ)

end A234505

/-!
# A234506: a(n) = binomial(9*n+3, n)/(3*n+1).

The programs for A234506, the canonical program `A234506.P11009094261416888985` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234506 has offset 0).

The definition of A234506 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A234506.anchor (n : ℕ) : (A234506 n : ℚ) = (Nat.choose (9 * n + 3) n : ℚ) / (3 * n + 1 : ℚ)` in `Proof.A234.A234506`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234506.P11009094261416888985

`C(9*n+3, n)/(3*n+1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234506

/-- `C(9*n+3, n)/(3*n+1)` -/
def P11009094261416888985.Spec : Prop :=
  ∀ n, P11009094261416888985.a n = (A234506 n : ℚ)

end A234506

/-! ## A234506.P3238809138824208134

`A127898(A062728(n))/(2*n+1)`
-/

namespace A234506.P3238809138824208134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127898 (A062728 n).toNat : ℚ) / (2 * n + 1 : ℚ)

end

end A234506.P3238809138824208134

namespace A234506

/-- `A127898(A062728(n))/(2*n+1)` -/
def P3238809138824208134.Spec : Prop :=
  ∀ n, P3238809138824208134.a n = (A234506 n : ℚ)

end A234506

/-! ## A234506.P10844874061449488420

`A064282(A062725(n))/A005408(n)`
-/

namespace A234506.P10844874061449488420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064282 (A062725 n).toNat : ℚ) / (A005408 n : ℚ)

end

end A234506.P10844874061449488420

namespace A234506

/-- `A064282(A062725(n))/A005408(n)` -/
def P10844874061449488420.Spec : Prop :=
  ∀ n, P10844874061449488420.a n = (A234506 n : ℚ)

end A234506

/-! ## A234506.P12286082207985047437

`Δ[n²]*A255918(A034856(n+1))`
-/

namespace A234506.P12286082207985047437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A255918 (A034856 (n + 1)).toNat

end

end A234506.P12286082207985047437

namespace A234506

/-- `Δ[n²]*A255918(A034856(n+1))` -/
def P12286082207985047437.Spec : Prop :=
  ∀ n, P12286082207985047437.a n = A234506 n

end A234506

/-!
# A234507: a(n) = 4*binomial(9*n+4,n)/(9*n+4).

The programs for A234507, the canonical program `A234507.P1571797451760932957` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234507 has offset 0).

The definition of A234507 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A234507.anchor (n : ℕ) : (A234507 n : ℚ) = (4 * Nat.choose (9 * n + 4) n : ℚ) / (9 * n + 4 : ℚ)` in `Proof.A234.A234507`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234507.P1571797451760932957

`4*C(9*n+4, n)/(9*n+4)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234507

/-- `4*C(9*n+4, n)/(9*n+4)` -/
def P1571797451760932957.Spec : Prop :=
  ∀ n, P1571797451760932957.a n = (A234507 n : ℚ)

end A234507

/-! ## A234507.P10961156880489351291

`C(9*n+3, n)/(2*n+1)`
-/

namespace A234507.P10961156880489351291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (9 * n + 3) n : ℚ) / (2 * n + 1 : ℚ)

end

end A234507.P10961156880489351291

namespace A234507

/-- `C(9*n+3, n)/(2*n+1)` -/
def P10961156880489351291.Spec : Prop :=
  ∀ n, P10961156880489351291.a n = (A234507 n : ℚ)

end A234507

/-! ## A234507.P10994514332010204663

`A016777(n)*A255918(A034856(n+1))`
-/

namespace A234507.P10994514332010204663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n * A255918 (A034856 (n + 1)).toNat

end

end A234507.P10994514332010204663

namespace A234507

/-- `A016777(n)*A255918(A034856(n+1))` -/
def P10994514332010204663.Spec : Prop :=
  ∀ n, P10994514332010204663.a n = A234507 n

end A234507

/-!
# A234508: a(n) = 5*binomial(9*n+5,n)/(9*n+5).

The programs for A234508, the canonical program `A234508.P15157110799197174239` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234508 has offset 0).

The definition of A234508 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A234508.anchor (n : ℕ) : (A234508 n : ℚ) = (5 * Nat.choose (9 * n + 5) n : ℚ) / (9 * n + 5 : ℚ)` in `Proof.A234.A234508`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234508.P15157110799197174239

`5*C(9*n+5, n)/(9*n+5)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234508

/-- `5*C(9*n+5, n)/(9*n+5)` -/
def P15157110799197174239.Spec : Prop :=
  ∀ n, P15157110799197174239.a n = (A234508 n : ℚ)

end A234508

/-! ## A234508.P13614864473215430365

`A143554(Δ[n²])`
-/

namespace A234508.P13614864473215430365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A234508.P13614864473215430365

namespace A234508

/-- `A143554(Δ[n²])` -/
def P13614864473215430365.Spec : Prop :=
  ∀ n, P13614864473215430365.a n = A234508 n

end A234508

/-! ## A234508.P12726112050634854927

`record[A143554(xor(1, n))]`
-/

namespace A234508.P12726112050634854927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143554 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234508.P12726112050634854927

namespace A234508

/-- `record[A143554(xor(1, n))]` -/
def P12726112050634854927.Spec : Prop :=
  ∀ n, P12726112050634854927.a n = A234508 n

end A234508

/-! ## A234508.P11864583759471562395

`record[A143554(gcd(n, ∑[n]))]`
-/

namespace A234508.P11864583759471562395
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143554 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234508.P11864583759471562395

namespace A234508

/-- `record[A143554(gcd(n, ∑[n]))]` -/
def P11864583759471562395.Spec : Prop :=
  ∀ n, P11864583759471562395.a n = A234508 n

end A234508

/-! ## A234508.P7793792419583812242

`record[A143554(lcm(8, n)/8)]`
-/

namespace A234508.P7793792419583812242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143554 (SequenceMachineLib.roundAway ((Nat.lcm 8 n : ℚ) / 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234508.P7793792419583812242

namespace A234508

/-- `record[A143554(lcm(8, n)/8)]` -/
def P7793792419583812242.Spec : Prop :=
  ∀ n, P7793792419583812242.a n = A234508 n

end A234508

/-! ## A234508.P14098705131083616962

`record[A143554(n*n%2)]`
-/

namespace A234508.P14098705131083616962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143554 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234508.P14098705131083616962

namespace A234508

/-- `record[A143554(n*n%2)]` -/
def P14098705131083616962.Spec : Prop :=
  ∀ n, P14098705131083616962.a n = A234508 n

end A234508

/-! ## A234508.P17976446803300930737

`A143554(2*n+1)*A333570(A333570(2*n+1))`
-/

namespace A234508.P17976446803300930737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143554 (2 * n + 1) * A333570 (A333570 (2 * n + 1)).toNat

end

end A234508.P17976446803300930737

namespace A234508

/-- `A143554(2*n+1)*A333570(A333570(2*n+1))` -/
def P17976446803300930737.Spec : Prop :=
  ∀ n, P17976446803300930737.a n = A234508 n

end A234508

/-! ## A234508.P17813158190685259030

`C(9*n+4, n)*5/(8*n+5)`
-/

namespace A234508.P17813158190685259030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (9 * n + 4) n * 5 : ℚ) / (8 * n + 5 : ℚ)

end

end A234508.P17813158190685259030

namespace A234508

/-- `C(9*n+4, n)*5/(8*n+5)` -/
def P17813158190685259030.Spec : Prop :=
  ∀ n, P17813158190685259030.a n = (A234508 n : ℚ)

end A234508

/-! ## A234508.P2628115281656125826

`A323695(A000290(2*n+1))+A143554(2*n+1)`
-/

namespace A234508.P2628115281656125826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323695 (A000290 (2 * n + 1)).toNat + A143554 (2 * n + 1)

end

end A234508.P2628115281656125826

namespace A234508

/-- `A323695(A000290(2*n+1))+A143554(2*n+1)` -/
def P2628115281656125826.Spec : Prop :=
  ∀ n, P2628115281656125826.a n = A234508 n

end A234508

/-!
# A234509: a(n) = 2*binomial(9*n+6,n)/(3*n+2).

The programs for A234509, the canonical program `A234509.P4234925250788776153` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234509 has offset 0).

The definition of A234509 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A234509.anchor (n : ℕ) : (A234509 n : ℚ) = (2 * Nat.choose (9 * n + 6) n : ℚ) / (3 * n + 2 : ℚ)` in `Proof.A234.A234509`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234509.P4234925250788776153

`2*C(9*n+6, n)/(3*n+2)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234509

/-- `2*C(9*n+6, n)/(3*n+2)` -/
def P4234925250788776153.Spec : Prop :=
  ∀ n, P4234925250788776153.a n = (A234509 n : ℚ)

end A234509

/-! ## A234509.P12531204822467623908

`A071948(A139272(n+1))/(n+1)`
-/

namespace A234509.P12531204822467623908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071948 (A139272 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A234509.P12531204822467623908

namespace A234509

/-- `A071948(A139272(n+1))/(n+1)` -/
def P12531204822467623908.Spec : Prop :=
  ∀ n, P12531204822467623908.a n = (A234509 n : ℚ)

end A234509

/-!
# A234510: a(n) = 7*binomial(9*n+7,n)/(9*n+7).

The programs for A234510, the canonical program `A234510.P3065776263212345378` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234510 has offset 0).

The definition of A234510 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A234510.anchor (n : ℕ) : (A234510 n : ℚ) = (7 * Nat.choose (9 * n + 7) n : ℚ) / (9 * n + 7 : ℚ)` in `Proof.A234.A234510`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234510.P3065776263212345378

`7*C(9*n+7, n)/(9*n+7)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234510

/-- `7*C(9*n+7, n)/(9*n+7)` -/
def P3065776263212345378.Spec : Prop :=
  ∀ n, P3065776263212345378.a n = (A234510 n : ℚ)

end A234510

/-!
# A234511: a(n) is the smallest prime(i) such that (prime(i) - prime(j))/(i - j) = prime(n) with i > j.

The programs for A234511, there is no canonical definition to state claims against.
-/

/-! ## A234511.P17206588625693832822

`A020621(A027220(n))`
-/

namespace A234511.P17206588625693832822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020621 (A027220 n).toNat

end

end A234511.P17206588625693832822

/-!
# A234513: a(n) = 8*binomial(9*n+8,n)/(9*n+8).

The programs for A234513, the canonical program `A234513.P3119452035174331306` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234513 has offset 0).

The definition of A234513 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A234513.anchor (n : ℕ) : (A234513 n : ℚ) = (8 * Nat.choose (9 * n + 8) n : ℚ) / (9 * n + 8 : ℚ)` in `Proof.A234.A234513`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234513.P6585642385725562787

`C(9*n+7, n+1)/(8*n+7)`
-/

namespace A234513.P6585642385725562787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (9 * n + 7) (n + 1) : ℚ) / (8 * n + 7 : ℚ)

end

end A234513.P6585642385725562787

namespace A234513

/-- `C(9*n+7, n+1)/(8*n+7)` -/
def P6585642385725562787.Spec : Prop :=
  ∀ n, P6585642385725562787.a n = (A234513 n : ℚ)

end A234513

/-! ## A234513.P3119452035174331306

`8*C(9*n+8, n)/(9*n+8)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234513

/-- `8*C(9*n+8, n)/(9*n+8)` -/
def P3119452035174331306.Spec : Prop :=
  ∀ n, P3119452035174331306.a n = (A234513 n : ℚ)

end A234513

/-!
# A234517: Numbers k > 1 such that for all m >= k, e(m) <= e(k), where e(m) = log_m(sigma(m)), the exponent such that m^e(m) = sigma(m), and sigma is the sum of divisors function, A000203.

The programs for A234517, there is no canonical definition to state claims against.
-/

/-! ## A234517.P10088783028137546476

`record[lcm(A000005(2*n+5), A234515(n+1))]`
-/

namespace A234517.P10088783028137546476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (2 * n + 5)) (A234515 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234517.P10088783028137546476

/-! ## A234517.P9708485564741565246

`record[A234515(1+n)]`
-/

namespace A234517.P9708485564741565246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234515 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234517.P9708485564741565246

/-! ## A234517.P7360811696001394297

`A245092(record[A234515(Δ[n²]-n)])`
-/

namespace A234517.P7360811696001394297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234515 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A234517.P7360811696001394297

/-! ## A234517.P15184754006926545685

`∪[record[A234516(n+1)], A236021(n+2)]`
-/

namespace A234517.P15184754006926545685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234516 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236021 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A234517.P15184754006926545685

/-! ## A234517.P4485734032457634543

`A236021(A077168(n+1))`
-/

namespace A234517.P4485734032457634543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236021 (A077168 (n + 1)).toNat

end

end A234517.P4485734032457634543

/-!
# A234521: Sequence of numbers from A234519 such that A234519(n) > A234519(k) for all k < n.

The programs for A234521, there is no canonical definition to state claims against.
-/

/-! ## A234521.P7658955706408658886

`record[A234519(n+1)%A115171(n+1)]`
-/

namespace A234521.P7658955706408658886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234519 (n + 1)) (A115171 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234521.P7658955706408658886

/-! ## A234521.P17404982358854930907

`record[A234519(n+1)]%A195377(n+1)`
-/

namespace A234521.P17404982358854930907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A195377 (n + 1))

end

end A234521.P17404982358854930907

/-! ## A234521.P4821865973891887238

`record[A234519(n+1)]%A214450(n)`
-/

namespace A234521.P4821865973891887238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A214450 n)

end

end A234521.P4821865973891887238

/-! ## A234521.P10533018964658705633

`A349898(n+1)*A353486(A345906(2*n+1))`
-/

namespace A234521.P10533018964658705633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349898 (n + 1) * A353486 (A345906 (2 * n + 1)).toNat

end

end A234521.P10533018964658705633

/-! ## A234521.P13002311505155249061

`lt[A362505(n+2), A050354(A298028(n))]`
-/

namespace A234521.P13002311505155249061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362505 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050354 (A298028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A234521.P13002311505155249061

/-!
# A234523: Sequence of numbers from A234520 such that A234520(n) > A234520(k) for all k < n.

The programs for A234523, there is no canonical definition to state claims against.
-/

/-! ## A234523.P5026380645007947743

`record[A234520(n+1)]`
-/

namespace A234523.P5026380645007947743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234523.P5026380645007947743

/-! ## A234523.P17290764311836434173

`lt[A291769(A046676(n)), A326842(n)]`
-/

namespace A234523.P17290764311836434173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 (A046676 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A234523.P17290764311836434173

/-! ## A234523.P11402820423344075234

`lt[A000010(A096938(n)), A211110(n)]`
-/

namespace A234523.P11402820423344075234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A096938 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A234523.P11402820423344075234

/-! ## A234523.P1903826572900993094

`A070319(3*A296265(n))`
-/

namespace A234523.P1903826572900993094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070319 (3 * A296265 n).toNat

end

end A234523.P1903826572900993094

/-! ## A234523.P8668088955089765503

`lt[A239952(n)+3, A217668(n)²]`
-/

namespace A234523.P8668088955089765503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239952 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217668 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A234523.P8668088955089765503

/-!
# A234524: Numbers n such that A234519(n) = n.

The programs for A234524, there is no canonical definition to state claims against.
-/

/-! ## A234524.P19358234057845338

`record[gcd(n+3, A234519(n+3))]`
-/

namespace A234524.P19358234057845338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A234519 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234524.P19358234057845338

/-! ## A234524.P2566591442623976335

`eq[n, A234519(A028310(n))]`
-/

namespace A234524.P2566591442623976335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234519 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234524.P2566591442623976335

/-! ## A234524.P16999679507011723718

`eq[n, A234519(A233583(n+1))]`
-/

namespace A234524.P16999679507011723718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234519 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234524.P16999679507011723718

/-! ## A234524.P2155210101232711200

`eq[n, A234519(A000007(n)+n)]`
-/

namespace A234524.P2155210101232711200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234519 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234524.P2155210101232711200

/-! ## A234524.P1846849293729064462

`eq[n, A234519(A000038(n)+n)]`
-/

namespace A234524.P1846849293729064462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234519 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234524.P1846849293729064462

/-!
# A234525: a(n) = binomial(10*n+2,n)/(5*n+1).

The programs for A234525, the canonical program `A234525.P3264981415550836132` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234525 has offset 0).

The definition of A234525 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A234525.anchor (n : ℕ) : (A234525 n : ℚ) = (Nat.choose (10 * n + 2) n : ℚ) / (5 * n + 1 : ℚ)` in `Proof.A234.A234525`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234525.P3264981415550836132

`C(10*n+2, n)/(5*n+1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234525

/-- `C(10*n+2, n)/(5*n+1)` -/
def P3264981415550836132.Spec : Prop :=
  ∀ n, P3264981415550836132.a n = (A234525 n : ℚ)

end A234525

/-!
# A234526: a(n) = 3*binomial(10*n+3,n)/(10*n+3).

The programs for A234526, the canonical program `A234526.P5556790500387693121` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234526 has offset 0).

The definition of A234526 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A234526.anchor (n : ℕ) : (A234526 n : ℚ) = (3 * Nat.choose (10 * n + 3) n : ℚ) / (10 * n + 3 : ℚ)` in `Proof.A234.A234526`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234526.P5556790500387693121

`3*C(10*n+3, n)/(10*n+3)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234526

/-- `3*C(10*n+3, n)/(10*n+3)` -/
def P5556790500387693121.Spec : Prop :=
  ∀ n, P5556790500387693121.a n = (A234526 n : ℚ)

end A234526

/-! ## A234526.P16997192181876243478

`C(A017293(n), n)/(3*n+1)`
-/

namespace A234526.P16997192181876243478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A017293 n).toNat n : ℚ) / (3 * n + 1 : ℚ)

end

end A234526.P16997192181876243478

namespace A234526

/-- `C(A017293(n), n)/(3*n+1)` -/
def P16997192181876243478.Spec : Prop :=
  ∀ n, P16997192181876243478.a n = (A234526 n : ℚ)

end A234526

/-!
# A234527: a(n) = 2*binomial(10*n+4,n)/(5*n+2).

The programs for A234527, the canonical program `A234527.P693331108529264397` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234527 has offset 0).

The definition of A234527 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A234527.anchor (n : ℕ) : (A234527 n : ℚ) = (2 * Nat.choose (10 * n + 4) n : ℚ) / (5 * n + 2 : ℚ)` in `Proof.A234.A234527`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234527.P693331108529264397

`2*C(10*n+4, n)/(5*n+2)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234527

/-- `2*C(10*n+4, n)/(5*n+2)` -/
def P693331108529264397.Spec : Prop :=
  ∀ n, P693331108529264397.a n = (A234527 n : ℚ)

end A234527

/-!
# A234528: a(n) = binomial(10*n+5,n)/(2*n+1).

The programs for A234528, the canonical program `A234528.P4635117636086265632` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234528 has offset 0).

The definition of A234528 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A234528.anchor (n : ℕ) : (A234528 n : ℚ) = (Nat.choose (10 * n + 5) n : ℚ) / (2 * n + 1 : ℚ)` in `Proof.A234.A234528`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234528.P4635117636086265632

`C(10*n+5, n)/(2*n+1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234528

/-- `C(10*n+5, n)/(2*n+1)` -/
def P4635117636086265632.Spec : Prop :=
  ∀ n, P4635117636086265632.a n = (A234528 n : ℚ)

end A234528

/-! ## A234528.P757971085027826467

`A370062(A090288(n+3)+n-1)`
-/

namespace A234528.P757971085027826467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370062 (A090288 (n + 3) + ((n : ℤ) - 1)).toNat

end

end A234528.P757971085027826467

namespace A234528

/-- `A370062(A090288(n+3)+n-1)` -/
def P757971085027826467.Spec : Prop :=
  ∀ n, P757971085027826467.a n = A234528 n

end A234528

/-!
# A234529: a(n) = 3*binomial(10*n+6,n)/(5*n+3).

The programs for A234529, the canonical program `A234529.P17281859709367344883` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234529 has offset 0).

The definition of A234529 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A234529.anchor (n : ℕ) : (A234529 n : ℚ) = (3 * Nat.choose (10 * n + 6) n : ℚ) / (5 * n + 3 : ℚ)` in `Proof.A234.A234529`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234529.P17281859709367344883

`3*C(10*n+6, n)/(5*n+3)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234529

/-- `3*C(10*n+6, n)/(5*n+3)` -/
def P17281859709367344883.Spec : Prop :=
  ∀ n, P17281859709367344883.a n = (A234529 n : ℚ)

end A234529

/-!
# A234530: Primes p with q(p) + 1 also prime, where q(.) is the strict partition function (A000009).

The programs for A234530, there is no canonical definition to state claims against.
-/

/-! ## A234530.P1426532584989478799

`eq[A003415(n), A239701(n)]`
-/

namespace A234530.P1426532584989478799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239701 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234530.P1426532584989478799

/-! ## A234530.P14781764072150865908

`eq[A175126(n), A239701(n)]`
-/

namespace A234530.P14781764072150865908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239701 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234530.P14781764072150865908

/-! ## A234530.P17012951771881436274

`eq[A175126(n), A239936(n)]`
-/

namespace A234530.P17012951771881436274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239936 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234530.P17012951771881436274

/-! ## A234530.P8290911936181557349

`eq[A239701(n), A302055(n)]`
-/

namespace A234530.P8290911936181557349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239701 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234530.P8290911936181557349

/-! ## A234530.P10790897762056387917

`eq[A239701(n), A369971(n)]`
-/

namespace A234530.P10790897762056387917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239701 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234530.P10790897762056387917

/-!
# A234531: Pentagonal numbers which are the arithmetic mean of two consecutive primes.

The programs for A234531, there is no canonical definition to state claims against.
-/

/-! ## A234531.P1313515044948137060

`∩[A024675(n+2), C(n, 2)+n²]`
-/

namespace A234531.P1313515044948137060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A234531.P1313515044948137060

/-! ## A234531.P2485949763768419912

`∩[A024675(n+1), A000326(n)]`
-/

namespace A234531.P2485949763768419912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234531.P2485949763768419912

/-! ## A234531.P10198527181972076835

`∩[A078444(n+2)+1, A000326(n)]`
-/

namespace A234531.P10198527181972076835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078444 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234531.P10198527181972076835

/-! ## A234531.P2633153390771428249

`filter[A024675(n+1), A255849(#)]`
-/

namespace A234531.P2633153390771428249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A255849 (f1 j).toNat = 1) n)

end

end A234531.P2633153390771428249

/-!
# A234533: Smallest number of hex numbers summing to n.

The programs for A234533, there is no canonical definition to state claims against.
-/

/-! ## A234533.P8455082890148555292

`A338492(eq[A338492(n+1)+1, A338492(n+2)]+1)`
-/

namespace A234533.P8455082890148555292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338492 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338492 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338492 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A234533.P8455082890148555292

/-! ## A234533.P7617965020729594026

`A053828(A053828(∑[18*(n+1)+1]))`
-/

namespace A234533.P7617965020729594026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A053828 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A234533.P7617965020729594026

/-!
# A234534: Terms of the cycles reached after iterations of numerator(sigma(n)/n) = A017665(n).

The programs for A234534, there is no canonical definition to state claims against.
-/

/-! ## A234534.P16424149767018867396

`A001316(A183334(n+1))-comp[∑[4*n]]%2`
-/

namespace A234534.P16424149767018867396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A183334 (n + 1)).toNat - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ)

end

end A234534.P16424149767018867396

/-!
# A234535: Numbers n such that n-1 is a divisor of 3^n + 5^n.

The programs for A234535, there is no canonical definition to state claims against.
-/

/-! ## A234535.P11352077736778562646

`A140437(or(1, 2^n)-n)+2^n`
-/

namespace A234535.P11352077736778562646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140437 (Nat.lor 1 (2 ^ n) - n) + (2 ^ n : ℤ)

end

end A234535.P11352077736778562646

/-! ## A234535.P15964028528577286075

`A130696(A086615(n)+2)`
-/

namespace A234535.P15964028528577286075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (A086615 n + 2).toNat

end

end A234535.P15964028528577286075

/-! ## A234535.P17215768652328531863

`A130696(∑[A064189(∑[n])]+2)`
-/

namespace A234535.P17215768652328531863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A234535.P17215768652328531863

/-!
# A234536: Numbers k such that k+1 is a divisor of 3^k + 5^k.

The programs for A234536, there is no canonical definition to state claims against.
-/

/-! ## A234536.P13079787772418526588

`A007094(or(1, A108640(n+1)))`
-/

namespace A234536.P13079787772418526588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.lor 1 (A108640 (n + 1))).toNat

end

end A234536.P13079787772418526588

/-!
# A234537: Number of nontrivial non-Goldbach partitions of 2n into two odd parts (with smaller part greater than 1).

The programs for A234537, the canonical program `A234537.P5914572713946308330` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234537 has offset 1).

The definition of A234537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234537.P5914572713946308330

`ceil((n+1)/2)-1-∑{#}[n-2, A010051(#+3)*A010051(2*(n+1)-(#+3))]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A234537

/-- `ceil((n+1)/2)-1-∑{#}[n-2, A010051(#+3)*A010051(2*(n+1)-(#+3))]` -/
def P5914572713946308330.Spec : Prop :=
  ∀ n, P5914572713946308330.a n = A234537 (n + 1)

theorem P5914572713946308330.correct : P5914572713946308330.Spec := by
  intro n
  simp only [A234537, Nat.add_sub_cancel]

end A234537

/-! ## A234537.P149303127296381267

`floor((n-A002372(n+1))/2)`
-/

namespace A234537.P149303127296381267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - A002372 (n + 1) : ℚ) / 2⌋

end

end A234537.P149303127296381267

namespace A234537

/-- `floor((n-A002372(n+1))/2)` -/
def P149303127296381267.Spec : Prop :=
  ∀ n, P149303127296381267.a n = A234537 (n + 1)

end A234537

/-! ## A234537.P10439033244079798838

`floor(n/2)-A002375(n+1)`
-/

namespace A234537.P10439033244079798838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - A002375 (n + 1)

end

end A234537.P10439033244079798838

namespace A234537

/-- `floor(n/2)-A002375(n+1)` -/
def P10439033244079798838.Spec : Prop :=
  ∀ n, P10439033244079798838.a n = A234537 (n + 1)

end A234537

/-! ## A234537.P13471968002089400282

`floor((n-A035026(n+1))/2)`
-/

namespace A234537.P13471968002089400282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - A035026 (n + 1) : ℚ) / 2⌋

end

end A234537.P13471968002089400282

namespace A234537

/-- `floor((n-A035026(n+1))/2)` -/
def P13471968002089400282.Spec : Prop :=
  ∀ n, P13471968002089400282.a n = A234537 (n + 1)

end A234537

/-! ## A234537.P6604979473351247934

`A004526(n-A002372(n+1))`
-/

namespace A234537.P6604979473351247934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A002372 (n + 1)).toNat

end

end A234537.P6604979473351247934

namespace A234537

/-- `A004526(n-A002372(n+1))` -/
def P6604979473351247934.Spec : Prop :=
  ∀ n, P6604979473351247934.a n = A234537 (n + 1)

end A234537

/-! ## A234537.P17777003500782085089

`A004526(n-A035026(n+1))`
-/

namespace A234537.P17777003500782085089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A035026 (n + 1)).toNat

end

end A234537.P17777003500782085089

namespace A234537

/-- `A004526(n-A035026(n+1))` -/
def P17777003500782085089.Spec : Prop :=
  ∀ n, P17777003500782085089.a n = A234537 (n + 1)

end A234537

/-! ## A234537.P6203107708604923805

`abs(A002375(n+1)-A004526(n))`
-/

namespace A234537.P6203107708604923805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002375 (n + 1) - A004526 n|

end

end A234537.P6203107708604923805

namespace A234537

/-- `abs(A002375(n+1)-A004526(n))` -/
def P6203107708604923805.Spec : Prop :=
  ∀ n, P6203107708604923805.a n = A234537 (n + 1)

end A234537

/-! ## A234537.P13301885365603395344

`A008619(n)-(A002375(n+1)+1)`
-/

namespace A234537.P13301885365603395344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - (A002375 (n + 1) + 1)

end

end A234537.P13301885365603395344

namespace A234537

/-- `A008619(n)-(A002375(n+1)+1)` -/
def P13301885365603395344.Spec : Prop :=
  ∀ n, P13301885365603395344.a n = A234537 (n + 1)

end A234537

/-! ## A234537.P16743879885203563969

`A004526(n-A073610(2*(n+1)))`
-/

namespace A234537.P16743879885203563969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A073610 (2 * (n + 1))).toNat

end

end A234537.P16743879885203563969

namespace A234537

/-- `A004526(n-A073610(2*(n+1)))` -/
def P16743879885203563969.Spec : Prop :=
  ∀ n, P16743879885203563969.a n = A234537 (n + 1)

end A234537

/-! ## A234537.P16128226949412675096

`n-(A002375(n+1)+∑[A000035(n)])`
-/

namespace A234537.P16128226949412675096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A002375 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234537.P16128226949412675096

namespace A234537

/-- `n-(A002375(n+1)+∑[A000035(n)])` -/
def P16128226949412675096.Spec : Prop :=
  ∀ n, P16128226949412675096.a n = A234537 (n + 1)

end A234537

/-! ## A234537.P3484536211486599709

`A263997(n+1)-(A045917(n+1)+1)`
-/

namespace A234537.P3484536211486599709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263997 (n + 1) - (A045917 (n + 1) + 1)

end

end A234537.P3484536211486599709

namespace A234537

/-- `A263997(n+1)-(A045917(n+1)+1)` -/
def P3484536211486599709.Spec : Prop :=
  ∀ n, P3484536211486599709.a n = A234537 (n + 1)

end A234537

/-! ## A234537.P4769907855214273132

`A061357(A298990(n-A002372(n+1)))`
-/

namespace A234537.P4769907855214273132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A298990 ((n : ℤ) - A002372 (n + 1)).toNat).toNat

end

end A234537.P4769907855214273132

namespace A234537

/-- `A061357(A298990(n-A002372(n+1)))` -/
def P4769907855214273132.Spec : Prop :=
  ∀ n, P4769907855214273132.a n = A234537 (n + 1)

end A234537

/-! ## A234537.P11789790169455850864

`A061357(A298990(n-A035026(n+1)))`
-/

namespace A234537.P11789790169455850864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A298990 ((n : ℤ) - A035026 (n + 1)).toNat).toNat

end

end A234537.P11789790169455850864

namespace A234537

/-- `A061357(A298990(n-A035026(n+1)))` -/
def P11789790169455850864.Spec : Prop :=
  ∀ n, P11789790169455850864.a n = A234537 (n + 1)

end A234537

/-!
# A234538: (Number of positive digits of n written in base 3) modulo 3.

The programs for A234538, the canonical program `A234538.P7848866361536063857` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234538 has offset 0).

The definition of A234538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234538.P7848866361536063857

`(a(floor(n/3))+n²%3)%3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234538

/-- `(a(floor(n/3))+n²%3)%3` -/
def P7848866361536063857.Spec : Prop :=
  ∀ n, (P7848866361536063857.a n : ℤ) = A234538 n

theorem P7848866361536063857.correct : P7848866361536063857.Spec := by
  intro n
  simp only [A234538]

end A234538

/-! ## A234538.P17883728459314387553

`A006287(n)%3`
-/

namespace A234538.P17883728459314387553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006287 n) 3

end

end A234538.P17883728459314387553

namespace A234538

/-- `A006287(n)%3` -/
def P17883728459314387553.Spec : Prop :=
  ∀ n, P17883728459314387553.a n = A234538 n

end A234538

/-! ## A234538.P7426755077909559000

`A160384(n)%3`
-/

namespace A234538.P7426755077909559000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160384 n) 3

end

end A234538.P7426755077909559000

namespace A234538

/-- `A160384(n)%3` -/
def P7426755077909559000.Spec : Prop :=
  ∀ n, P7426755077909559000.a n = A234538 n

end A234538

/-! ## A234538.P2382734333656205661

`∑{e}[A006047(n), #]%3`
-/

namespace A234538.P2382734333656205661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) % 3

end

end A234538.P2382734333656205661

namespace A234538

/-- `∑{e}[A006047(n), #]%3` -/
def P2382734333656205661.Spec : Prop :=
  ∀ n, (P2382734333656205661.a n : ℤ) = A234538 n

end A234538

/-! ## A234538.P6169534645769704816

`A010872(A006287(n))`
-/

namespace A234538.P6169534645769704816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A006287 n).toNat

end

end A234538.P6169534645769704816

namespace A234538

/-- `A010872(A006287(n))` -/
def P6169534645769704816.Spec : Prop :=
  ∀ n, P6169534645769704816.a n = A234538 n

end A234538

/-! ## A234538.P11776778583415253762

`A071858(A023717(n))`
-/

namespace A234538.P11776778583415253762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071858 (A023717 n).toNat

end

end A234538.P11776778583415253762

namespace A234538

/-- `A071858(A023717(n))` -/
def P11776778583415253762.Spec : Prop :=
  ∀ n, P11776778583415253762.a n = A234538 n

end A234538

/-! ## A234538.P3955348639712662002

`A071858(A289831(n))`
-/

namespace A234538.P3955348639712662002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071858 (A289831 n).toNat

end

end A234538.P3955348639712662002

namespace A234538

/-- `A071858(A289831(n))` -/
def P3955348639712662002.Spec : Prop :=
  ∀ n, P3955348639712662002.a n = A234538 n

end A234538

/-! ## A234538.P5629437163949428338

`A053838(A374363(n))`
-/

namespace A234538.P5629437163949428338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 (A374363 n).toNat

end

end A234538.P5629437163949428338

namespace A234538

/-- `A053838(A374363(n))` -/
def P5629437163949428338.Spec : Prop :=
  ∀ n, P5629437163949428338.a n = A234538 n

end A234538

/-! ## A234538.P13410816798756390860

`A204267(A387188(n))`
-/

namespace A234538.P13410816798756390860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204267 (A387188 n).toNat

end

end A234538.P13410816798756390860

namespace A234538

/-- `A204267(A387188(n))` -/
def P13410816798756390860.Spec : Prop :=
  ∀ n, P13410816798756390860.a n = A234538 n

end A234538

/-! ## A234538.P15160771993849848307

`A215604(A023713(n+1))`
-/

namespace A234538.P15160771993849848307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215604 (A023713 (n + 1)).toNat

end

end A234538.P15160771993849848307

namespace A234538

/-- `A215604(A023713(n+1))` -/
def P15160771993849848307.Spec : Prop :=
  ∀ n, P15160771993849848307.a n = A234538 n

end A234538

/-! ## A234538.P7443211293846777985

`A001222(A006047(n))%3`
-/

namespace A234538.P7443211293846777985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A006047 n).toNat) 3

end

end A234538.P7443211293846777985

namespace A234538

/-- `A001222(A006047(n))%3` -/
def P7443211293846777985.Spec : Prop :=
  ∀ n, P7443211293846777985.a n = A234538 n

end A234538

/-! ## A234538.P16742833312698004907

`A001221(A289838(n))%3`
-/

namespace A234538.P16742833312698004907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001221 (A289838 n).toNat) 3

end

end A234538.P16742833312698004907

namespace A234538

/-- `A001221(A289838(n))%3` -/
def P16742833312698004907.Spec : Prop :=
  ∀ n, P16742833312698004907.a n = A234538 n

end A234538

/-! ## A234538.P4255997024898601558

`(A053735(n)-A081603(n))%3`
-/

namespace A234538.P4255997024898601558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053735 n - A081603 n) 3

end

end A234538.P4255997024898601558

namespace A234538

/-- `(A053735(n)-A081603(n))%3` -/
def P4255997024898601558.Spec : Prop :=
  ∀ n, P4255997024898601558.a n = A234538 n

end A234538

/-! ## A234538.P8509419589386739485

`∑{digits}[A007089(n), #*A007089(#)]%3`
-/

namespace A234538.P8509419589386739485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℤ) * A007089 x).sum 3

end

end A234538.P8509419589386739485

namespace A234538

/-- `∑{digits}[A007089(n), #*A007089(#)]%3` -/
def P8509419589386739485.Spec : Prop :=
  ∀ n, P8509419589386739485.a n = A234538 n

end A234538

/-! ## A234538.P3669050619358616146

`(A053735(n)+A053735(n)-A062756(n))%3`
-/

namespace A234538.P3669050619358616146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053735 n + (A053735 n - A062756 n)) 3

end

end A234538.P3669050619358616146

namespace A234538

/-- `(A053735(n)+A053735(n)-A062756(n))%3` -/
def P3669050619358616146.Spec : Prop :=
  ∀ n, P3669050619358616146.a n = A234538 n

end A234538

/-! ## A234538.P12947928303717785548

`A160385(A023709(n+1))%3`
-/

namespace A234538.P12947928303717785548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160385 (A023709 (n + 1)).toNat) 3

end

end A234538.P12947928303717785548

namespace A234538

/-- `A160385(A023709(n+1))%3` -/
def P12947928303717785548.Spec : Prop :=
  ∀ n, P12947928303717785548.a n = A234538 n

end A234538

/-! ## A234538.P10310424365739157350

`A160385(eq[0, A160381(n)])%3`
-/

namespace A234538.P10310424365739157350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160385 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) 3

end

end A234538.P10310424365739157350

namespace A234538

/-- `A160385(eq[0, A160381(n)])%3` -/
def P10310424365739157350.Spec : Prop :=
  ∀ n, P10310424365739157350.a n = A234538 n

end A234538

/-! ## A234538.P12488339327491771600

`A160385(lt[A292371(n), 1])%3`
-/

namespace A234538.P12488339327491771600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160385 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)) 3

end

end A234538.P12488339327491771600

namespace A234538

/-- `A160385(lt[A292371(n), 1])%3` -/
def P12488339327491771600.Spec : Prop :=
  ∀ n, P12488339327491771600.a n = A234538 n

end A234538

/-! ## A234538.P8732648838464859324

`A160385(lt[A000120(n)*A160381(n), 1])%3`
-/

namespace A234538.P8732648838464859324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A160381 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160385 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)) 3

end

end A234538.P8732648838464859324

namespace A234538

/-- `A160385(lt[A000120(n)*A160381(n), 1])%3` -/
def P8732648838464859324.Spec : Prop :=
  ∀ n, P8732648838464859324.a n = A234538 n

end A234538

/-!
# A234541: Least k such that floor(n/k) + (n mod k) is a prime, or 0 if no such k exists.

The programs for A234541, there is no canonical definition to state claims against.
-/

/-! ## A234541.P17921657150393300672

`A091954(A052410(A181821(n+1)²))`
-/

namespace A234541.P17921657150393300672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (A052410 (A181821 (n + 1) ^ 2).toNat).toNat

end

end A234541.P17921657150393300672

/-! ## A234541.P7573941971793109010

`A052126(n+1)-A087032(A117343(n+1))`
-/

namespace A234541.P7573941971793109010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) - A087032 (A117343 (n + 1)).toNat

end

end A234541.P7573941971793109010

/-! ## A234541.P14330455999179804924

`A052126(n+1)-A010060(A057335(3*n))`
-/

namespace A234541.P14330455999179804924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) - A010060 (A057335 (3 * n)).toNat

end

end A234541.P14330455999179804924

/-! ## A234541.P791309500140242392

`A240328(A102992(n+1))+A052126(n+1)`
-/

namespace A234541.P791309500140242392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (A102992 (n + 1)).toNat + A052126 (n + 1)

end

end A234541.P791309500140242392

/-! ## A234541.P6511581644268593963

`A121373(A067538(2*(n+1)))+A052126(n+1)`
-/

namespace A234541.P6511581644268593963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A067538 (2 * (n + 1))).toNat + A052126 (n + 1)

end

end A234541.P6511581644268593963

/-!
# A234542: Positive integer solutions to sigma(sigma(k) - k - 3)/phi(k - phi(k) + 3) = 3.

The programs for A234542, there is no canonical definition to state claims against.
-/

/-! ## A234542.P9699786345921951161

`filter[A071530(2*n+1), A368994(#)]`
-/

namespace A234542.P9699786345921951161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368994 (f1 j).toNat = 1) n)

end

end A234542.P9699786345921951161

/-!
# A234543: Number of (n+1) X (1+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234543, there is no canonical definition to state claims against.
-/

/-! ## A234543.P6215265322314064574

`A234549(∑[n]+1)`
-/

namespace A234543.P6215265322314064574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234549 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234543.P6215265322314064574

/-! ## A234543.P10484306179872196355

`record[A234549(n+1)]`
-/

namespace A234543.P10484306179872196355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234543.P10484306179872196355

/-! ## A234543.P639414205382504753

`lcm(2, A234549(A000124(n)))`
-/

namespace A234543.P639414205382504753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234549 (A000124 n).toNat)

end

end A234543.P639414205382504753

/-! ## A234543.P12202351996927539427

`A007318(∑[n])*A234549(A000124(n))`
-/

namespace A234543.P12202351996927539427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A234549 (A000124 n).toNat

end

end A234543.P12202351996927539427

/-! ## A234543.P9152740491363298326

`A234549(A000124(n))+A230686(n+1)`
-/

namespace A234543.P9152740491363298326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234549 (A000124 n).toNat + A230686 (n + 1)

end

end A234543.P9152740491363298326

/-!
# A234544: Number of (n+1) X (2+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234544, there is no canonical definition to state claims against.
-/

/-! ## A234544.P4046172207930085590

`A234549(∑[n+1]+2)`
-/

namespace A234544.P4046172207930085590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234549 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234544.P4046172207930085590

/-! ## A234544.P11207039414703844945

`record[A234549(A008795(n)+2)]`
-/

namespace A234544.P11207039414703844945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234549 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234544.P11207039414703844945

/-! ## A234544.P13154222014795340187

`lcm(2, A234549(A133263(n+1)))`
-/

namespace A234544.P13154222014795340187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234549 (A133263 (n + 1)).toNat)

end

end A234544.P13154222014795340187

/-! ## A234544.P4210500333913303308

`lcm(4, A234549(A000096(n)+3))`
-/

namespace A234544.P4210500333913303308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A234549 (A000096 n + 3).toNat)

end

end A234544.P4210500333913303308

/-! ## A234544.P8462926305181181345

`record[A234549(n+3)/A107865(n)]`
-/

namespace A234544.P8462926305181181345
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234549 (n + 3) : ℚ) / (A107865 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234544.P8462926305181181345

/-!
# A234545: Number of (n+1) X (3+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234545, there is no canonical definition to state claims against.
-/

/-! ## A234545.P14917322137342638177

`A234549(∑[n+2]+4)`
-/

namespace A234545.P14917322137342638177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234549 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234545.P14917322137342638177

/-! ## A234545.P3948853911876587394

`record[A234549(A008795(n)+3)]`
-/

namespace A234545.P3948853911876587394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234549 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234545.P3948853911876587394

/-! ## A234545.P9004613370502672562

`lcm(2, A234549(A167614(n+1)))`
-/

namespace A234545.P9004613370502672562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234549 (A167614 (n + 1)).toNat)

end

end A234545.P9004613370502672562

/-! ## A234545.P13881859928629186810

`A234549(A167614(n+1))+A107846(n)`
-/

namespace A234545.P13881859928629186810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234549 (A167614 (n + 1)).toNat + A107846 n

end

end A234545.P13881859928629186810

/-! ## A234545.P6912023252346892562

`A234549(A167614(n+1))+A125005(n+1)`
-/

namespace A234545.P6912023252346892562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234549 (A167614 (n + 1)).toNat + A125005 (n + 1)

end

end A234545.P6912023252346892562

/-!
# A234546: Number of (n+1) X (4+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234546, there is no canonical definition to state claims against.
-/

/-! ## A234546.P18134739561089064947

`A234549(∑[n+3]+7)`
-/

namespace A234546.P18134739561089064947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234549 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234546.P18134739561089064947

/-!
# A234547: Number of (n+1) X (5+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234547, there is no canonical definition to state claims against.
-/

/-! ## A234547.P12345443384468924439

`A234549(A374005(n+1))`
-/

namespace A234547.P12345443384468924439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234549 (A374005 (n + 1)).toNat

end

end A234547.P12345443384468924439

/-! ## A234547.P1973179574777917069

`A234549(A167499(n+3))`
-/

namespace A234547.P1973179574777917069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234549 (A167499 (n + 3)).toNat

end

end A234547.P1973179574777917069

/-! ## A234547.P15220768123002748345

`A234549(A155212(n)+13)`
-/

namespace A234547.P15220768123002748345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234549 (A155212 n + 13).toNat

end

end A234547.P15220768123002748345

/-! ## A234547.P3511142869640011072

`A234549(A056000(n)+15)`
-/

namespace A234547.P3511142869640011072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234549 (A056000 n + 15).toNat

end

end A234547.P3511142869640011072

/-! ## A234547.P16644994991358389912

`A234549(eq[7, A066657(n)])`
-/

namespace A234547.P16644994991358389912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234549 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234547.P16644994991358389912

/-!
# A234548: Number of (n+1) X (6+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234548, there is no canonical definition to state claims against.
-/

/-! ## A234548.P16069756923375958655

`A234549(A374007(n+1))`
-/

namespace A234548.P16069756923375958655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234549 (A374007 (n + 1)).toNat

end

end A234548.P16069756923375958655

/-! ## A234548.P14988785263705890852

`A234549(A166136(n+4))`
-/

namespace A234548.P14988785263705890852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234549 (A166136 (n + 4)).toNat

end

end A234548.P14988785263705890852

/-! ## A234548.P5626716573288094017

`A234549(A056115(n)+21)`
-/

namespace A234548.P5626716573288094017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234549 (A056115 n + 21).toNat

end

end A234548.P5626716573288094017

/-! ## A234548.P4054017392420054280

`A234549(A167499(n+4)+1)`
-/

namespace A234548.P4054017392420054280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234549 (A167499 (n + 4) + 1).toNat

end

end A234548.P4054017392420054280

/-!
# A234550: Number of (n+1) X (1+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234550, there is no canonical definition to state claims against.
-/

/-! ## A234550.P8865615818694646729

`A234555(∑[n]+1)`
-/

namespace A234550.P8865615818694646729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234555 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234550.P8865615818694646729

/-! ## A234550.P9148051871921616765

`record[gcd(col(n), A234555(n+1))]`
-/

namespace A234550.P9148051871921616765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.triCol n : ℤ) (A234555 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234550.P9148051871921616765

/-! ## A234550.P3843872743858774046

`lcm(2, A234555(A000124(n)))`
-/

namespace A234550.P3843872743858774046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234555 (A000124 n).toNat)

end

end A234550.P3843872743858774046

/-! ## A234550.P3737053948427396936

`record[A234555(A056536(n+1))]`
-/

namespace A234550.P3737053948427396936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234555 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234550.P3737053948427396936

/-! ## A234550.P10344157019241290507

`record[A234555(A114091(n+1))]`
-/

namespace A234550.P10344157019241290507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234555 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234550.P10344157019241290507

/-!
# A234551: Number of (n+1) X (2+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234551, there is no canonical definition to state claims against.
-/

/-! ## A234551.P14870818132205650469

`A234555(∑[n+1]+2)`
-/

namespace A234551.P14870818132205650469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234555 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234551.P14870818132205650469

/-! ## A234551.P11155958461395162479

`record[A234555(A056536(n+1)+1)]`
-/

namespace A234551.P11155958461395162479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234555 (A056536 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234551.P11155958461395162479

/-! ## A234551.P7598307485187916082

`record[A234555(A114091(n+1)+1)]`
-/

namespace A234551.P7598307485187916082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234555 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234551.P7598307485187916082

/-! ## A234551.P2186717845677958901

`record[root(A234555(n+3), A219441(n+1))]`
-/

namespace A234551.P2186717845677958901
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234555 (n + 3) : ℝ) ^ (1 / (A219441 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234551.P2186717845677958901

/-! ## A234551.P3025659087689192999

`record[root(A234555(n+3), A193592(n+3))]`
-/

namespace A234551.P3025659087689192999
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234555 (n + 3) : ℝ) ^ (1 / (A193592 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234551.P3025659087689192999

/-!
# A234552: Number of (n+1) X (3+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234552, there is no canonical definition to state claims against.
-/

/-! ## A234552.P7554708689314716777

`A234555(∑[n+2]+4)`
-/

namespace A234552.P7554708689314716777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234555 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234552.P7554708689314716777

/-! ## A234552.P136686402262227295

`lcm(2, A234555(A167614(n+1)))`
-/

namespace A234552.P136686402262227295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234555 (A167614 (n + 1)).toNat)

end

end A234552.P136686402262227295

/-! ## A234552.P4920036932883917627

`A234555(A167614(n+1))+A025443(n)`
-/

namespace A234552.P4920036932883917627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234555 (A167614 (n + 1)).toNat + A025443 n

end

end A234552.P4920036932883917627

/-! ## A234552.P4894066873230166031

`A234555(A167614(n+1))+A025469(n)`
-/

namespace A234552.P4894066873230166031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234555 (A167614 (n + 1)).toNat + A025469 n

end

end A234552.P4894066873230166031

/-! ## A234552.P7598803997362236683

`A234555(A167614(n+1))+A180649(n)`
-/

namespace A234552.P7598803997362236683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234555 (A167614 (n + 1)).toNat + A180649 n

end

end A234552.P7598803997362236683

/-!
# A234553: Number of (n+1) X (4+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234553, there is no canonical definition to state claims against.
-/

/-! ## A234553.P18336217019951761456

`A234555(A374004(n+1))`
-/

namespace A234553.P18336217019951761456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234555 (A374004 (n + 1)).toNat

end

end A234553.P18336217019951761456

/-! ## A234553.P8518345064676154683

`A234555(A141214(n)+7)`
-/

namespace A234553.P8518345064676154683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234555 (A141214 n + 7).toNat

end

end A234553.P8518345064676154683

/-! ## A234553.P5067051430977416222

`A234555(A052905(n)+9)`
-/

namespace A234553.P5067051430977416222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234555 (A052905 n + 9).toNat

end

end A234553.P5067051430977416222

/-! ## A234553.P13525388648525120300

`A234555(A055999(n)+10)`
-/

namespace A234553.P13525388648525120300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234555 (A055999 n + 10).toNat

end

end A234553.P13525388648525120300

/-! ## A234553.P9126913588028209834

`A234555(eq[5, A066657(n)])`
-/

namespace A234553.P9126913588028209834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234555 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234553.P9126913588028209834

/-!
# A234554: Number of (n+1) X (5+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234554, there is no canonical definition to state claims against.
-/

/-! ## A234554.P2641312272382321899

`A234555(A374005(n+1))`
-/

namespace A234554.P2641312272382321899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234555 (A374005 (n + 1)).toNat

end

end A234554.P2641312272382321899

/-! ## A234554.P2254627447882850042

`A234555(A167499(n+3))`
-/

namespace A234554.P2254627447882850042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234555 (A167499 (n + 3)).toNat

end

end A234554.P2254627447882850042

/-! ## A234554.P17298929198173079616

`A234555(A155212(n)+13)`
-/

namespace A234554.P17298929198173079616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234555 (A155212 n + 13).toNat

end

end A234554.P17298929198173079616

/-! ## A234554.P16361933603388130163

`A234555(A056000(n)+15)`
-/

namespace A234554.P16361933603388130163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234555 (A056000 n + 15).toNat

end

end A234554.P16361933603388130163

/-! ## A234554.P8683121027380302848

`A234555(eq[7, A066657(n)])`
-/

namespace A234554.P8683121027380302848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234555 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234554.P8683121027380302848

/-!
# A234556: Number of (n+1) X (n+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234556, there is no canonical definition to state claims against.
-/

/-! ## A234556.P223259915759281542

`A234564(∑[4*n]+1)`
-/

namespace A234556.P223259915759281542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234556.P223259915759281542

/-! ## A234556.P11662082830774301731

`lcm(2, A234564(A001844(n)))`
-/

namespace A234556.P11662082830774301731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234564 (A001844 n).toNat)

end

end A234556.P11662082830774301731

/-! ## A234556.P1312845098122672544

`record[A003982(n)*A234564(n+1)]`
-/

namespace A234556.P1312845098122672544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A234564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234556.P1312845098122672544

/-! ## A234556.P893437209168676718

`record[gcd(A003987(n), A234564(n+1))]`
-/

namespace A234556.P893437209168676718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A234564 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234556.P893437209168676718

/-! ## A234556.P16425769989830325185

`A234564(A001844(n))+A000007(n+2)`
-/

namespace A234556.P16425769989830325185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (A001844 n).toNat + A000007 (n + 2)

end

end A234556.P16425769989830325185

/-!
# A234557: Number of (n+1) X (1+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234557, there is no canonical definition to state claims against.
-/

/-! ## A234557.P5116731740405932181

`A234564(∑[n]+1)`
-/

namespace A234557.P5116731740405932181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234557.P5116731740405932181

/-! ## A234557.P12468144369128330066

`record[A234564(n+1)]`
-/

namespace A234557.P12468144369128330066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234557.P12468144369128330066

/-! ## A234557.P5045676986223791670

`lcm(2, A234564(A000124(n)))`
-/

namespace A234557.P5045676986223791670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234564 (A000124 n).toNat)

end

end A234557.P5045676986223791670

/-! ## A234557.P6791897537120029415

`A234564(A000124(n))+A185238(n)`
-/

namespace A234557.P6791897537120029415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (A000124 n).toNat + A185238 n

end

end A234557.P6791897537120029415

/-! ## A234557.P403632035028408537

`A007318(∑[n])*A234564(A000124(n))`
-/

namespace A234557.P403632035028408537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A234564 (A000124 n).toNat

end

end A234557.P403632035028408537

/-!
# A234558: Number of (n+1) X (2+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234558, there is no canonical definition to state claims against.
-/

/-! ## A234558.P1424151369048867309

`A234564(∑[n+1]+2)`
-/

namespace A234558.P1424151369048867309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234558.P1424151369048867309

/-! ## A234558.P18097362231162960914

`record[A234564(A008795(n)+2)]`
-/

namespace A234558.P18097362231162960914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234558.P18097362231162960914

/-! ## A234558.P12080858130064550275

`lcm(2, A234564(A000096(n)+3))`
-/

namespace A234558.P12080858130064550275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234564 (A000096 n + 3).toNat)

end

end A234558.P12080858130064550275

/-! ## A234558.P3825613673706759598

`record[gcd(A002262(n), A234564(n+2))]`
-/

namespace A234558.P3825613673706759598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234564 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234558.P3825613673706759598

/-! ## A234558.P11768337835771118871

`record[A010054(n+1)*A234564(n+3)]`
-/

namespace A234558.P11768337835771118871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A234564 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234558.P11768337835771118871

/-!
# A234559: Number of (n+1) X (3+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234559, there is no canonical definition to state claims against.
-/

/-! ## A234559.P14846065066240078794

`A234564(∑[n+2]+4)`
-/

namespace A234559.P14846065066240078794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234559.P14846065066240078794

/-! ## A234559.P3435989137852263693

`record[A234564(A008795(n)+3)]`
-/

namespace A234559.P3435989137852263693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234559.P3435989137852263693

/-! ## A234559.P11079668107533690588

`lcm(2, A234564(A167614(n+1)))`
-/

namespace A234559.P11079668107533690588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234564 (A167614 (n + 1)).toNat)

end

end A234559.P11079668107533690588

/-! ## A234559.P14376069973332985002

`A234564(A167614(n+1))+A185284(n)`
-/

namespace A234559.P14376069973332985002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (A167614 (n + 1)).toNat + A185284 n

end

end A234559.P14376069973332985002

/-! ## A234559.P16684314066748651427

`A007318(C(6, n))*A234564(A167614(n+1))`
-/

namespace A234559.P16684314066748651427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 6 n) * A234564 (A167614 (n + 1)).toNat

end

end A234559.P16684314066748651427

/-!
# A234560: Number of (n+1) X (4+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234560, there is no canonical definition to state claims against.
-/

/-! ## A234560.P6694989154889286319

`A234564(∑[n+3]+7)`
-/

namespace A234560.P6694989154889286319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234560.P6694989154889286319

/-! ## A234560.P4995440856356166249

`lcm(2, A234564(A055999(n)+10))`
-/

namespace A234560.P4995440856356166249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234564 (A055999 n + 10).toNat)

end

end A234560.P4995440856356166249

/-! ## A234560.P13114041660961123517

`A000041(n*char[1])*A234564(A055999(n)+10)`
-/

namespace A234560.P13114041660961123517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n * (if ∃ j, f1 j = n then 1 else 0)) * A234564 (A055999 n + 10).toNat

end

end A234560.P13114041660961123517

/-! ## A234560.P16250215309624224313

`A007318(C(3, n+2))*A234564(A055999(n)+10)`
-/

namespace A234560.P16250215309624224313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 (n + 2)) * A234564 (A055999 n + 10).toNat

end

end A234560.P16250215309624224313

/-!
# A234561: Number of (n+1) X (5+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234561, there is no canonical definition to state claims against.
-/

/-! ## A234561.P7538899854988624633

`A234564(A374005(n+1))`
-/

namespace A234561.P7538899854988624633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (A374005 (n + 1)).toNat

end

end A234561.P7538899854988624633

/-! ## A234561.P1048536488819410763

`A234564(A167499(n+3))`
-/

namespace A234561.P1048536488819410763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (A167499 (n + 3)).toNat

end

end A234561.P1048536488819410763

/-! ## A234561.P614629129780017431

`A234564(A155212(n)+13)`
-/

namespace A234561.P614629129780017431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (A155212 n + 13).toNat

end

end A234561.P614629129780017431

/-! ## A234561.P2946515488627217916

`A234564(A056000(n)+15)`
-/

namespace A234561.P2946515488627217916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (A056000 n + 15).toNat

end

end A234561.P2946515488627217916

/-! ## A234561.P9338880807310448803

`A234564(A000124(n+4)+4)`
-/

namespace A234561.P9338880807310448803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (A000124 (n + 4) + 4).toNat

end

end A234561.P9338880807310448803

/-!
# A234562: Number of (n+1) X (6+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234562, there is no canonical definition to state claims against.
-/

/-! ## A234562.P6051649164525621403

`A234564(A374007(n+1))`
-/

namespace A234562.P6051649164525621403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (A374007 (n + 1)).toNat

end

end A234562.P6051649164525621403

/-! ## A234562.P7240425632074052824

`A234564(A167499(n+4)+1)`
-/

namespace A234562.P7240425632074052824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (A167499 (n + 4) + 1).toNat

end

end A234562.P7240425632074052824

/-! ## A234562.P17206426928834806488

`A234564(A000096(n+4)+7)`
-/

namespace A234562.P17206426928834806488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (A000096 (n + 4) + 7).toNat

end

end A234562.P17206426928834806488

/-! ## A234562.P13303682315309663686

`A234564(A000217(n+5)+6)`
-/

namespace A234562.P13303682315309663686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (A000217 (n + 5) + 6).toNat

end

end A234562.P13303682315309663686

/-! ## A234562.P261005753726574726

`A234564(A046691(n+3)+10)`
-/

namespace A234562.P261005753726574726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (A046691 (n + 3) + 10).toNat

end

end A234562.P261005753726574726

/-!
# A234563: Number of (n+1) X (7+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A234563, there is no canonical definition to state claims against.
-/

/-! ## A234563.P11250328632379460107

`A234564(A374008(n+1))`
-/

namespace A234563.P11250328632379460107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (A374008 (n + 1)).toNat

end

end A234563.P11250328632379460107

/-! ## A234563.P17916761375716484505

`A234564(A056119(n)+28)`
-/

namespace A234563.P17916761375716484505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (A056119 n + 28).toNat

end

end A234563.P17916761375716484505

/-! ## A234563.P10932199795073566915

`A234564(A167499(n+5)+2)`
-/

namespace A234563.P10932199795073566915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (A167499 (n + 5) + 2).toNat

end

end A234563.P10932199795073566915

/-! ## A234563.P10390806486049443254

`A234564(A077169(n+7)+2)`
-/

namespace A234563.P10390806486049443254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (A077169 (n + 7) + 2).toNat

end

end A234563.P10390806486049443254

/-! ## A234563.P14967613532870956568

`A234564(A000124(n+6)+6)`
-/

namespace A234563.P14967613532870956568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234564 (A000124 (n + 6) + 6).toNat

end

end A234563.P14967613532870956568

/-!
# A234567: Number of ways to write n = k + m with k > 0 and m > 0 such that p = phi(k) + phi(m)/2 + 1 and P(p-1) are both prime, where phi(.) is Euler's totient function and P(.) is the partition function (A000041).

The programs for A234567, there is no canonical definition to state claims against.
-/

/-! ## A234567.P10902185220807294952

`A037800(A022133(n)+A000326(n))`
-/

namespace A234567.P10902185220807294952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A022133 n + A000326 n).toNat

end

end A234567.P10902185220807294952

/-! ## A234567.P128248974249118359

`A037800(A083682(n+1)*A116553(n))`
-/

namespace A234567.P128248974249118359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A083682 (n + 1) * A116553 n).toNat

end

end A234567.P128248974249118359

/-! ## A234567.P8961861132697799612

`A037800(A225894(n+1)-A188371(n+1))`
-/

namespace A234567.P8961861132697799612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A225894 (n + 1) - A188371 (n + 1)).toNat

end

end A234567.P8961861132697799612

/-! ## A234567.P9248585740439531056

`A302242(A034169(n+1)-A137564(2*n))`
-/

namespace A234567.P9248585740439531056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A034169 (n + 1) - A137564 (2 * n)).toNat

end

end A234567.P9248585740439531056

/-! ## A234567.P7089567974478745423

`A019269(A400783(n+1))`
-/

namespace A234567.P7089567974478745423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019269 (A400783 (n + 1)).toNat

end

end A234567.P7089567974478745423

/-!
# A234568: Sum_{k=0..n} (n-k)^(2*k).

The programs for A234568, the canonical program `A234568.P174715081067963260` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234568 has offset 0).

The definition of A234568 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (n-#)^(2*#)]` (program `A234568.P174715081067963260`, by `A234568.P174715081067963260.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234568.P174715081067963260

`∑{#}[n, (n-#)^(2*#)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234568

/-- `∑{#}[n, (n-#)^(2*#)]` -/
def P174715081067963260.Spec : Prop :=
  ∀ n, P174715081067963260.a n = A234568 n

theorem P174715081067963260.correct : P174715081067963260.Spec := by
  intro n
  simp only [A234568]

end A234568

/-! ## A234568.P5471500320974093739

`A104872(2*n)`
-/

namespace A234568.P5471500320974093739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104872 (2 * n)

end

end A234568.P5471500320974093739

namespace A234568

/-- `A104872(2*n)` -/
def P5471500320974093739.Spec : Prop :=
  ∀ n, P5471500320974093739.a n = A234568 n

end A234568

/-! ## A234568.P16786472234656875058

`A103481(2*n)-n`
-/

namespace A234568.P16786472234656875058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103481 (2 * n) - (n : ℤ)

end

end A234568.P16786472234656875058

namespace A234568

/-- `A103481(2*n)-n` -/
def P16786472234656875058.Spec : Prop :=
  ∀ n, P16786472234656875058.a n = A234568 n

end A234568

/-! ## A234568.P12735862517433648046

`A104872(A005843(n))^A178334(n)`
-/

namespace A234568.P12735862517433648046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104872 (A005843 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A234568.P12735862517433648046

namespace A234568

/-- `A104872(A005843(n))^A178334(n)` -/
def P12735862517433648046.Spec : Prop :=
  ∀ n, P12735862517433648046.a n = (A234568 n : ℚ)

end A234568

/-! ## A234568.P7544308176700986105

`gcd(A000038(n), A104872(A005843(n)))`
-/

namespace A234568.P7544308176700986105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A104872 (A005843 n).toNat)

end

end A234568.P7544308176700986105

namespace A234568

/-- `gcd(A000038(n), A104872(A005843(n)))` -/
def P7544308176700986105.Spec : Prop :=
  ∀ n, (P7544308176700986105.a n : ℤ) = A234568 n

end A234568

/-! ## A234568.P15903583463470848815

`A104872(A005843(n))/A007318(∑[n])`
-/

namespace A234568.P15903583463470848815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104872 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A234568.P15903583463470848815

namespace A234568

/-- `A104872(A005843(n))/A007318(∑[n])` -/
def P15903583463470848815.Spec : Prop :=
  ∀ n, P15903583463470848815.a n = (A234568 n : ℚ)

end A234568

/-! ## A234568.P2384819196877000713

`A104872(A005843(n))^A007318(C(2, n+2))`
-/

namespace A234568.P2384819196877000713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104872 (A005843 n).toNat : ℚ) ^ (A007318 (Nat.choose 2 (n + 2)) : ℤ)

end

end A234568.P2384819196877000713

namespace A234568

/-- `A104872(A005843(n))^A007318(C(2, n+2))` -/
def P2384819196877000713.Spec : Prop :=
  ∀ n, P2384819196877000713.a n = (A234568 n : ℚ)

end A234568

/-! ## A234568.P16214808193804395020

`A104872(A005843(n))+A000038(A000008(n))`
-/

namespace A234568.P16214808193804395020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104872 (A005843 n).toNat + A000038 (A000008 n).toNat

end

end A234568.P16214808193804395020

namespace A234568

/-- `A104872(A005843(n))+A000038(A000008(n))` -/
def P16214808193804395020.Spec : Prop :=
  ∀ n, P16214808193804395020.a n = A234568 n

end A234568

/-! ## A234568.P22345526899086163

`A104872(A005843(n))^A007318(A112367(n))`
-/

namespace A234568.P22345526899086163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104872 (A005843 n).toNat : ℚ) ^ (A007318 (A112367 n).toNat : ℤ)

end

end A234568.P22345526899086163

namespace A234568

/-- `A104872(A005843(n))^A007318(A112367(n))` -/
def P22345526899086163.Spec : Prop :=
  ∀ n, P22345526899086163.a n = (A234568 n : ℚ)

end A234568

/-!
# A234569: Primes p with P(p-1) also prime, where P(.) is the partition function (A000041).

The programs for A234569, there is no canonical definition to state claims against.
-/

/-! ## A234569.P11389573049654398702

`p?[A046063(n+1)+1]`
-/

namespace A234569.P11389573049654398702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046063 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234569.P11389573049654398702

/-! ## A234569.P11670196110547203331

`p?[2*A114165(n+1)+1]`
-/

namespace A234569.P11670196110547203331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114165 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234569.P11670196110547203331

/-! ## A234569.P6317859191060141519

`record[A020639(A046063(n+1)+1)]`
-/

namespace A234569.P6317859191060141519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A046063 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234569.P6317859191060141519

/-! ## A234569.P5812050892914931366

`p?[A005408(A114165(n+1))]`
-/

namespace A234569.P5812050892914931366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A114165 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234569.P5812050892914931366

/-! ## A234569.P437789843497078524

`record[A092067(A046063(n+1))]`
-/

namespace A234569.P437789843497078524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092067 (A046063 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234569.P437789843497078524

/-!
# A234570: a(n) = 7*binomial(10*n+7,n)/(10*n+7).

The programs for A234570, the canonical program `A234570.P12813262806252969297` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234570 has offset 0).

The definition of A234570 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A234570.anchor (n : ℕ) : (A234570 n : ℚ) = (7 * Nat.choose (10 * n + 7) n : ℚ) / (10 * n + 7 : ℚ)` in `Proof.A234.A234570`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234570.P12813262806252969297

`7*C(10*n+7, n)/(10*n+7)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234570

/-- `7*C(10*n+7, n)/(10*n+7)` -/
def P12813262806252969297.Spec : Prop :=
  ∀ n, P12813262806252969297.a n = (A234570 n : ℚ)

end A234570

/-!
# A234571: a(n) = 4*binomial(10*n+8,n)/(5*n+4).

The programs for A234571, the canonical program `A234571.P2626298362651717120` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234571 has offset 0).

The definition of A234571 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A234571.anchor (n : ℕ) : (A234571 n : ℚ) = (4 * Nat.choose (10 * n + 8) n : ℚ) / (5 * n + 4 : ℚ)` in `Proof.A234.A234571`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234571.P2626298362651717120

`4*C(10*n+8, n)/(5*n+4)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234571

/-- `4*C(10*n+8, n)/(5*n+4)` -/
def P2626298362651717120.Spec : Prop :=
  ∀ n, P2626298362651717120.a n = (A234571 n : ℚ)

end A234571

/-!
# A234572: Primes of the form P(p-1), where p is a prime and P(.) is the partition function (A000041).

The programs for A234572, there is no canonical definition to state claims against.
-/

/-! ## A234572.P2139922449018769782

`A000041(A234569(n+1)-1)`
-/

namespace A234572.P2139922449018769782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A234569 (n + 1) - 1).toNat

end

end A234572.P2139922449018769782

/-! ## A234572.P10820892992600196193

`A000041(xor(1, A234569(n+1)))`
-/

namespace A234572.P10820892992600196193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.xor 1 (A234569 (n + 1))).toNat

end

end A234572.P10820892992600196193

/-! ## A234572.P15225799146721543783

`A000041(and(-2, A234569(n+1)))`
-/

namespace A234572.P15225799146721543783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land (-2) (A234569 (n + 1))).toNat

end

end A234572.P15225799146721543783

/-! ## A234572.P17164850796917691855

`A000041(A000010(A234569(n+1)))`
-/

namespace A234572.P17164850796917691855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000010 (A234569 (n + 1)).toNat).toNat

end

end A234572.P17164850796917691855

/-!
# A234573: a(n) = 9*binomial(10*n+9,n)/(10*n+9).

The programs for A234573, the canonical program `A234573.P2537565463048657075` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234573 has offset 0).

The definition of A234573 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A234573.anchor (n : ℕ) : (A234573 n : ℚ) = (9 * Nat.choose (10 * n + 9) n : ℚ) / (10 * n + 9 : ℚ)` in `Proof.A234.A234573`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234573.P2537565463048657075

`9*C(10*n+9, n)/(10*n+9)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234573

/-- `9*C(10*n+9, n)/(10*n+9)` -/
def P2537565463048657075.Spec : Prop :=
  ∀ n, P2537565463048657075.a n = (A234573 n : ℚ)

end A234573

/-! ## A234573.P10168901135727493598

`C(10*n+8, n+1)/(9*n+8)`
-/

namespace A234573.P10168901135727493598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (10 * n + 8) (n + 1) : ℚ) / (9 * n + 8 : ℚ)

end

end A234573.P10168901135727493598

namespace A234573

/-- `C(10*n+8, n+1)/(9*n+8)` -/
def P10168901135727493598.Spec : Prop :=
  ∀ n, P10168901135727493598.a n = (A234573 n : ℚ)

end A234573

/-! ## A234573.P3082402897209243682

`A037306(∑[A102438(n)])`
-/

namespace A234573.P3082402897209243682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A234573.P3082402897209243682

namespace A234573

/-- `A037306(∑[A102438(n)])` -/
def P3082402897209243682.Spec : Prop :=
  ∀ n, P3082402897209243682.a n = A234573 n

end A234573

/-! ## A234573.P14680913802773177382

`A051168(2*A154376(n+1))`
-/

namespace A234573.P14680913802773177382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (2 * A154376 (n + 1)).toNat

end

end A234573.P14680913802773177382

namespace A234573

/-- `A051168(2*A154376(n+1))` -/
def P14680913802773177382.Spec : Prop :=
  ∀ n, P14680913802773177382.a n = A234573 n

end A234573

/-! ## A234573.P14640130722026978540

`A037306(4*A178572(n+1))`
-/

namespace A234573.P14640130722026978540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (4 * A178572 (n + 1)).toNat

end

end A234573.P14640130722026978540

namespace A234573

/-- `A037306(4*A178572(n+1))` -/
def P14640130722026978540.Spec : Prop :=
  ∀ n, P14640130722026978540.a n = A234573 n

end A234573

/-!
# A234575: Triangle T(n, k) read by rows: T(n, k) = floor(n/k) + n mod k.

The programs for A234575, the canonical program `A234575.P14529585527392317832` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234575 has offset 1).

The definition of A234575 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((row(n)+1)/(col(n)+1))+(row(n)+1)%(col(n)+1)` (program `A234575.P14529585527392317832`, by `A234575.P14529585527392317832.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234575.P13453127676003341405

`row(n)+1-col(n)*floor((row(n)+1)/(col(n)+1))`
-/

namespace A234575.P13453127676003341405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) * ⌊(SequenceMachineLib.triRow n + 1 : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)⌋

end

end A234575.P13453127676003341405

namespace A234575

/-- `row(n)+1-col(n)*floor((row(n)+1)/(col(n)+1))` -/
def P13453127676003341405.Spec : Prop :=
  ∀ n, P13453127676003341405.a n = A234575 (n + 1)

end A234575

/-! ## A234575.P14529585527392317832

`floor((row(n)+1)/(col(n)+1))+(row(n)+1)%(col(n)+1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234575

/-- `floor((row(n)+1)/(col(n)+1))+(row(n)+1)%(col(n)+1)` -/
def P14529585527392317832.Spec : Prop :=
  ∀ n, P14529585527392317832.a n = A234575 (n + 1)

theorem P14529585527392317832.correct : P14529585527392317832.Spec := by
  intro n
  simp only [A234575, Nat.add_sub_cancel]

end A234575

/-! ## A234575.P3765877569487052811

`A048158(C(row(n)+1, 2)+col(n)+1)+A010766(C(row(n)+1, 2)+col(n)+1)`
-/

namespace A234575.P3765877569487052811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1) + A010766 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1)

end

end A234575.P3765877569487052811

namespace A234575

/-- `A048158(C(row(n)+1, 2)+col(n)+1)+A010766(C(row(n)+1, 2)+col(n)+1)` -/
def P3765877569487052811.Spec : Prop :=
  ∀ n, P3765877569487052811.a n = A234575 (n + 1)

end A234575

/-! ## A234575.P15084090064561726145

`row(n)+1-col(n)*A010766(C(row(n)+1, 2)+col(n)+1)`
-/

namespace A234575.P15084090064561726145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) * A010766 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1)

end

end A234575.P15084090064561726145

namespace A234575

/-- `row(n)+1-col(n)*A010766(C(row(n)+1, 2)+col(n)+1)` -/
def P15084090064561726145.Spec : Prop :=
  ∀ n, P15084090064561726145.a n = A234575 (n + 1)

end A234575

/-! ## A234575.P18192962525391776132

`A048158(n+1)+A010766(n+1)`
-/

namespace A234575.P18192962525391776132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1) + A010766 (n + 1)

end

end A234575.P18192962525391776132

namespace A234575

/-- `A048158(n+1)+A010766(n+1)` -/
def P18192962525391776132.Spec : Prop :=
  ∀ n, P18192962525391776132.a n = A234575 (n + 1)

end A234575

/-! ## A234575.P15018331330304683861

`A127093(A286158(n+1)-A048158(n+1))`
-/

namespace A234575.P15018331330304683861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A286158 (n + 1) - A048158 (n + 1)).toNat

end

end A234575.P15018331330304683861

namespace A234575

/-- `A127093(A286158(n+1)-A048158(n+1))` -/
def P15018331330304683861.Spec : Prop :=
  ∀ n, P15018331330304683861.a n = A234575 (n + 1)

end A234575

/-! ## A234575.P530252258340249516

`A010766(n+1)+A002024(n+1)%A128227(n)`
-/

namespace A234575.P530252258340249516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) + Int.tmod (A002024 (n + 1)) (A128227 n)

end

end A234575.P530252258340249516

namespace A234575

/-- `A010766(n+1)+A002024(n+1)%A128227(n)` -/
def P530252258340249516.Spec : Prop :=
  ∀ n, P530252258340249516.a n = A234575 (n + 1)

end A234575

/-! ## A234575.P16922964800682177553

`A010766(n+1)+A049765(n+1)-A048151(n+1)`
-/

namespace A234575.P16922964800682177553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) + (A049765 (n + 1) - A048151 (n + 1))

end

end A234575.P16922964800682177553

namespace A234575

/-- `A010766(n+1)+A049765(n+1)-A048151(n+1)` -/
def P16922964800682177553.Spec : Prop :=
  ∀ n, P16922964800682177553.a n = A234575 (n + 1)

end A234575

/-! ## A234575.P4831147764149154402

`A010766(n+1)+A051127(n+1)-A191904(n+1)`
-/

namespace A234575.P4831147764149154402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) + (A051127 (n + 1) - A191904 (n + 1))

end

end A234575.P4831147764149154402

namespace A234575

/-- `A010766(n+1)+A051127(n+1)-A191904(n+1)` -/
def P4831147764149154402.Spec : Prop :=
  ∀ n, P4831147764149154402.a n = A234575 (n + 1)

end A234575

/-! ## A234575.P12821859546818290828

`A010766(n+1)+A049765(n+1)%A002260(n+1)`
-/

namespace A234575.P12821859546818290828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) + Int.tmod (A049765 (n + 1)) (A002260 (n + 1))

end

end A234575.P12821859546818290828

namespace A234575

/-- `A010766(n+1)+A049765(n+1)%A002260(n+1)` -/
def P12821859546818290828.Spec : Prop :=
  ∀ n, P12821859546818290828.a n = A234575 (n + 1)

end A234575

/-! ## A234575.P16650809990235653096

`A049765(n+1)-A048151(n+1)+A050206(n+2)-1`
-/

namespace A234575.P16650809990235653096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049765 (n + 1) - A048151 (n + 1) + (A050206 (n + 2) - 1)

end

end A234575.P16650809990235653096

namespace A234575

/-- `A049765(n+1)-A048151(n+1)+A050206(n+2)-1` -/
def P16650809990235653096.Spec : Prop :=
  ∀ n, P16650809990235653096.a n = A234575 (n + 1)

end A234575

/-! ## A234575.P4414013102930963120

`A004736(A286235(n+1))+A049765(n+1)-A048151(n+1)`
-/

namespace A234575.P4414013102930963120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286235 (n + 1)).toNat + (A049765 (n + 1) - A048151 (n + 1))

end

end A234575.P4414013102930963120

namespace A234575

/-- `A004736(A286235(n+1))+A049765(n+1)-A048151(n+1)` -/
def P4414013102930963120.Spec : Prop :=
  ∀ n, P4414013102930963120.a n = A234575 (n + 1)

end A234575

/-! ## A234575.P2354552321589021846

`A003056(A286158(n+1))`
-/

namespace A234575.P2354552321589021846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A286158 (n + 1)).toNat

end

end A234575.P2354552321589021846

namespace A234575

/-- `A003056(A286158(n+1))` -/
def P2354552321589021846.Spec : Prop :=
  ∀ n, P2354552321589021846.a n = A234575 (n + 1)

end A234575

/-! ## A234575.P10544050922708904390

`A002024(A286158(n+1)+1)-1`
-/

namespace A234575.P10544050922708904390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A286158 (n + 1) + 1).toNat - 1

end

end A234575.P10544050922708904390

namespace A234575

/-- `A002024(A286158(n+1)+1)-1` -/
def P10544050922708904390.Spec : Prop :=
  ∀ n, P10544050922708904390.a n = A234575 (n + 1)

end A234575

/-! ## A234575.P15056780924737859958

`A296307(n+1)%A003057(n+2)`
-/

namespace A234575.P15056780924737859958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296307 (n + 1)) (A003057 (n + 2))

end

end A234575.P15056780924737859958

namespace A234575

/-- `A296307(n+1)%A003057(n+2)` -/
def P15056780924737859958.Spec : Prop :=
  ∀ n, P15056780924737859958.a n = A234575 (n + 1)

end A234575

/-! ## A234575.P15675748025561404585

`A001222(A140513(A286158(n+1))/2)`
-/

namespace A234575.P15675748025561404585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A140513 (A286158 (n + 1)).toNat : ℚ) / 2)).toNat

end

end A234575.P15675748025561404585

namespace A234575

/-- `A001222(A140513(A286158(n+1))/2)` -/
def P15675748025561404585.Spec : Prop :=
  ∀ n, P15675748025561404585.a n = A234575 (n + 1)

end A234575

/-! ## A234575.P13537026066537129192

`A001222(A140513(A286158(n+1)+1))-1`
-/

namespace A234575.P13537026066537129192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A140513 (A286158 (n + 1) + 1).toNat).toNat - 1

end

end A234575.P13537026066537129192

namespace A234575

/-- `A001222(A140513(A286158(n+1)+1))-1` -/
def P13537026066537129192.Spec : Prop :=
  ∀ n, P13537026066537129192.a n = A234575 (n + 1)

end A234575

/-!
# A234576: Number of Weyl group elements, not containing s_1 or s_2, which contribute nonzero terms to Kostant's weight multiplicity formula when computing the multiplicity of the zero-weight in the adjoint representation for the Lie algebra of type D and rank n.

The programs for A234576, the canonical program `A234576.P5242596916492470615` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234576 has offset 4).

The definition of A234576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234576.P227864846542078355

`ogf((4+3x+3x^2+x^3)/(1-x-x^2-3x^3-x^4))`
-/

namespace A234576.P227864846542078355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3, 3, 1] [1, -1, -1, -3, -1] n

end

end A234576.P227864846542078355

namespace A234576

/-- `ogf((4+3x+3x^2+x^3)/(1-x-x^2-3x^3-x^4))` -/
def P227864846542078355.Spec : Prop :=
  ∀ n, P227864846542078355.a n = A234576 (n + 4)

end A234576

/-! ## A234576.P5242596916492470615

`a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` with `a(0)=4, a(1)=7, a(2)=14, a(3)=34`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234576

/-- `a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` -/
def P5242596916492470615.Spec : Prop :=
  ∀ n, (P5242596916492470615.a n : ℤ) = A234576 (n + 4)

theorem P5242596916492470615.correct : P5242596916492470615.Spec := by
  intro n
  simp only [A234576, Nat.add_sub_cancel]

end A234576

/-! ## A234576.P8857516242168877571

`A232165(n+1)+A196423(n+2)`
-/

namespace A234576.P8857516242168877571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232165 (n + 1) + A196423 (n + 2)

end

end A234576.P8857516242168877571

namespace A234576

/-- `A232165(n+1)+A196423(n+2)` -/
def P8857516242168877571.Spec : Prop :=
  ∀ n, P8857516242168877571.a n = A234576 (n + 4)

end A234576

/-! ## A234576.P8966701770844489825

`A234597(n+4)-a(n-1)` with `a(0)=4`
-/

namespace A234576.P8966701770844489825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A234597 (n + 4) - a (n - 1)

end

end A234576.P8966701770844489825

namespace A234576

/-- `A234597(n+4)-a(n-1)` -/
def P8966701770844489825.Spec : Prop :=
  ∀ n, P8966701770844489825.a n = A234576 (n + 4)

end A234576

/-! ## A234576.P3735564410542594970

`A232164(n)+Δ[A214663(n+2)]`
-/

namespace A234576.P3735564410542594970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214663 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 n + (f1 (n + 1) - f1 n)

end

end A234576.P3735564410542594970

namespace A234576

/-- `A232164(n)+Δ[A214663(n+2)]` -/
def P3735564410542594970.Spec : Prop :=
  ∀ n, P3735564410542594970.a n = A234576 (n + 4)

end A234576

/-! ## A234576.P15296352851378708084

`A232164(n)+Δ[A232164(n+3)]`
-/

namespace A234576.P15296352851378708084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 n + (f1 (n + 1) - f1 n)

end

end A234576.P15296352851378708084

namespace A234576

/-- `A232164(n)+Δ[A232164(n+3)]` -/
def P15296352851378708084.Spec : Prop :=
  ∀ n, P15296352851378708084.a n = A234576 (n + 4)

end A234576

/-! ## A234576.P9619936478116174404

`A234598(n+4)-A234597(n+4)`
-/

namespace A234576.P9619936478116174404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234598 (n + 4) - A234597 (n + 4)

end

end A234576.P9619936478116174404

namespace A234576

/-- `A234598(n+4)-A234597(n+4)` -/
def P9619936478116174404.Spec : Prop :=
  ∀ n, P9619936478116174404.a n = A234576 (n + 4)

theorem P9619936478116174404.correct : P9619936478116174404.Spec := by
  intro n
  simp only [A234576, Nat.add_sub_cancel, A234576.P9619936478116174404.a, A234576.P5242596916492470615.a, A234597, A234597.P4303821682388581585.a, A234598, A234598.P11113428965064186318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234576

/-! ## A234576.P4505564984308520962

`Δ[A196423(n+1)+∑[A243094(n)]]`
-/

namespace A234576.P4505564984308520962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243094 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196423 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A234576.P4505564984308520962

namespace A234576

/-- `Δ[A196423(n+1)+∑[A243094(n)]]` -/
def P4505564984308520962.Spec : Prop :=
  ∀ n, P4505564984308520962.a n = A234576 (n + 4)

end A234576

/-!
# A234577: Let S_n = 0 followed by base-2 expansion of n, reversed; sequence is concatenation of S_0, S_1, S_2, ...

The programs for A234577, there is no canonical definition to state claims against.
-/

/-! ## A234577.P12741907647723243649

`A284775(A109297(n+1)+A156081(n+1)+1)`
-/

namespace A234577.P12741907647723243649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (A109297 (n + 1) + (A156081 (n + 1) + 1)).toNat

end

end A234577.P12741907647723243649

/-! ## A234577.P3250578322860485807

`A010059(A359901(3*n+2)+A000010(n+1))`
-/

namespace A234577.P3250578322860485807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A359901 (3 * n + 2) + A000010 (n + 1)).toNat

end

end A234577.P3250578322860485807

/-! ## A234577.P5928349827959129911

`A189476(record[A117000(n+1)²])`
-/

namespace A234577.P5928349827959129911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117000 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189476 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A234577.P5928349827959129911

/-! ## A234577.P3556766977619570607

`A287795(A287774(n+1)+A144366(n+1))`
-/

namespace A234577.P3556766977619570607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287795 (A287774 (n + 1) + A144366 (n + 1)).toNat

end

end A234577.P3556766977619570607

/-! ## A234577.P8848926176382365684

`A189628(A322114(3*n)+A184920(n+3))`
-/

namespace A234577.P8848926176382365684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (A322114 (3 * n) + A184920 (n + 3)).toNat

end

end A234577.P8848926176382365684

/-!
# A234578: Let S_n = 0 followed by base-3 expansion of n, reversed; sequence is concatenation of S_0, S_1, S_2, ...

The programs for A234578, there is no canonical definition to state claims against.
-/

/-! ## A234578.P6816142567491352907

`and(A125072(n+9), A326836(A247765(n+6)))`
-/

namespace A234578.P6816142567491352907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A125072 (n + 9)) (A326836 (A247765 (n + 6)).toNat)

end

end A234578.P6816142567491352907

/-! ## A234578.P5449541925647647271

`A308831(A008279(n)*A055087(n))`
-/

namespace A234578.P5449541925647647271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308831 (A008279 n * A055087 n).toNat

end

end A234578.P5449541925647647271

/-! ## A234578.P3940464544200641972

`and(A001511(n+1), A002262(A228099(n)))`
-/

namespace A234578.P3940464544200641972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001511 (n + 1)) (A002262 (A228099 n).toNat)

end

end A234578.P3940464544200641972

/-! ## A234578.P6714965173865288594

`and(A053616(A228099(n)), A056832(n+1))`
-/

namespace A234578.P6714965173865288594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053616 (A228099 n).toNat) (A056832 (n + 1))

end

end A234578.P6714965173865288594

/-! ## A234578.P13590669480473544026

`and(A102551(n+1), A285097(A099925(n)))`
-/

namespace A234578.P13590669480473544026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102551 (n + 1)) (A285097 (A099925 n).toNat)

end

end A234578.P13590669480473544026

/-!
# A234579: Let S_n = 0 followed by base-4 expansion of n, reversed; sequence is concatenation of S_0, S_1, S_2, ...

The programs for A234579, there is no canonical definition to state claims against.
-/

/-! ## A234579.P13524984329531715304

`A007953(n)%A277543(A002322(A006261(n)))`
-/

namespace A234579.P13524984329531715304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 n) (A277543 (A002322 (A006261 n).toNat).toNat)

end

end A234579.P13524984329531715304

/-! ## A234579.P14905768840752809032

`and(3, A139365(A226874(3*n+4)))`
-/

namespace A234579.P14905768840752809032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A139365 (A226874 (3 * n + 4)).toNat)

end

end A234579.P14905768840752809032

/-! ## A234579.P11630555480938010673

`A004526(n)%A118668(A079968(n))`
-/

namespace A234579.P11630555480938010673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 n) (A118668 (A079968 n).toNat)

end

end A234579.P11630555480938010673

/-! ## A234579.P5397970400369344876

`A256071(A019575(n+1))%A256071(n)`
-/

namespace A234579.P5397970400369344876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256071 (A019575 (n + 1)).toNat) (A256071 n)

end

end A234579.P5397970400369344876

/-! ## A234579.P13660297982453438837

`A061420(A018703(n+1))%A287864(n+1)`
-/

namespace A234579.P13660297982453438837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061420 (A018703 (n + 1)).toNat) (A287864 (n + 1))

end

end A234579.P13660297982453438837

/-!
# A234580: Let S_n = 0 followed by base-5 expansion of n, reversed; sequence is concatenation of S_0, S_1, S_2, ...

The programs for A234580, there is no canonical definition to state claims against.
-/

/-! ## A234580.P8716561293235109411

`A234585(A024657(n))^A212389(n)`
-/

namespace A234580.P8716561293235109411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234585 (A024657 n).toNat : ℚ) ^ (A212389 n : ℤ)

end

end A234580.P8716561293235109411

/-! ## A234580.P9154010986422098554

`and(A218254(2*n), A221671(A141213(2*n)))`
-/

namespace A234580.P9154010986422098554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A218254 (2 * n)) (A221671 (A141213 (2 * n)).toNat)

end

end A234580.P9154010986422098554

/-! ## A234580.P3334070260110993154

`A127821(2*n+3)%A353467(A000005(3*(n+1)))`
-/

namespace A234580.P3334070260110993154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127821 (2 * n + 3)) (A353467 (A000005 (3 * (n + 1))).toNat)

end

end A234580.P3334070260110993154

/-! ## A234580.P16469011412339966971

`A325678(A265254(n))%A034888(n)`
-/

namespace A234580.P16469011412339966971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325678 (A265254 n).toNat) (A034888 n)

end

end A234580.P16469011412339966971

/-! ## A234580.P1980460872077684430

`A010784(n+1)%A000120(A005578(n))`
-/

namespace A234580.P1980460872077684430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010784 (n + 1)) (A000120 (A005578 n).toNat)

end

end A234580.P1980460872077684430

/-!
# A234581: Let S_n = 0 followed by base-6 expansion of n, reversed; sequence is concatenation of S_0, S_1, S_2, ...

The programs for A234581, there is no canonical definition to state claims against.
-/

/-! ## A234581.P17637897101621110633

`∑{e}[A166857(n), A142150(#)]`
-/

namespace A234581.P17637897101621110633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166857 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A142150 (Nat.factorization (f1 n).natAbs p)

end

end A234581.P17637897101621110633

/-! ## A234581.P8864874356203920050

`A142150(∏{e}[A166857(n), #])`
-/

namespace A234581.P8864874356203920050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166857 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A234581.P8864874356203920050

/-! ## A234581.P15065807400798243294

`val(A000010(A219615(n)), A040137(n))`
-/

namespace A234581.P15065807400798243294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (A219615 n).toNat).toNat (A040137 n).toNat

end

end A234581.P15065807400798243294

/-! ## A234581.P3811877942186758590

`A374249(n+1)%A001227(A068911(n))`
-/

namespace A234581.P3811877942186758590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374249 (n + 1)) (A001227 (A068911 n).toNat)

end

end A234581.P3811877942186758590

/-! ## A234581.P5758142859116776264

`val(A000010(A219615(n)), A266070(n)+3)`
-/

namespace A234581.P5758142859116776264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (A219615 n).toNat).toNat (A266070 n + 3).toNat

end

end A234581.P5758142859116776264

/-!
# A234582: Let S_n = 0 followed by base-7 expansion of n, reversed; sequence is concatenation of S_0, S_1, S_2, ...

The programs for A234582, there is no canonical definition to state claims against.
-/

/-! ## A234582.P10354501342769860502

`A234583(lt[A324026(3*n), A051445(2*(n+2))])`
-/

namespace A234582.P10354501342769860502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324026 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051445 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234583 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A234582.P10354501342769860502

/-! ## A234582.P18310633977726779594

`A234583(lt[A100244(3*n+1), A051445(2*(n+2))])`
-/

namespace A234582.P18310633977726779594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100244 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051445 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234583 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A234582.P18310633977726779594

/-! ## A234582.P17586801191835903160

`A201053(A005582(n))%A065033(n)`
-/

namespace A234582.P17586801191835903160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201053 (A005582 n).toNat) (A065033 n)

end

end A234582.P17586801191835903160

/-! ## A234582.P6828517153639742086

`A000578(n)%A325678(A108917(n))`
-/

namespace A234582.P6828517153639742086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 n) (A325678 (A108917 n).toNat)

end

end A234582.P6828517153639742086

/-! ## A234582.P18353423851600340464

`floor(n/2)*A373585(A084188(n+1))`
-/

namespace A234582.P18353423851600340464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ * A373585 (A084188 (n + 1)).toNat

end

end A234582.P18353423851600340464

/-!
# A234583: Let S_n = 0 followed by base-8 expansion of n, reversed; sequence is concatenation of S_0, S_1, S_2, ...

The programs for A234583, there is no canonical definition to state claims against.
-/

/-! ## A234583.P18389764719588466712

`A048762(A007584(n))%A065033(n)`
-/

namespace A234583.P18389764719588466712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048762 (A007584 n).toNat) (A065033 n)

end

end A234583.P18389764719588466712

/-! ## A234583.P14263673322189878665

`A323048(A065033(n)²)%A008619(n)`
-/

namespace A234583.P14263673322189878665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323048 (A065033 n ^ 2).toNat) (A008619 n)

end

end A234583.P14263673322189878665

/-! ## A234583.P13817027821365899969

`A048762(A160799(n+1))%A034888(n)`
-/

namespace A234583.P13817027821365899969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048762 (A160799 (n + 1)).toNat) (A034888 n)

end

end A234583.P13817027821365899969

/-! ## A234583.P10520152821681204921

`A039617(n)%A047969(A293700(n+1))`
-/

namespace A234583.P10520152821681204921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039617 n) (A047969 (A293700 (n + 1)).toNat)

end

end A234583.P10520152821681204921

/-! ## A234583.P14747346062142849095

`A369009(A249169(n))`
-/

namespace A234583.P14747346062142849095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369009 (A249169 (n + 15)).toNat

end

end A234583.P14747346062142849095

/-!
# A234584: Let S_n = 0 followed by base-9 expansion of n, reversed; sequence is concatenation of S_0, S_1, S_2, ...

The programs for A234584, there is no canonical definition to state claims against.
-/

/-! ## A234584.P9937212999815914323

`A037851(A098760(3*n)-n+1)`
-/

namespace A234584.P9937212999815914323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037851 (A098760 (3 * n) - (n : ℤ) + 1).toNat

end

end A234584.P9937212999815914323

/-! ## A234584.P7831219109507475284

`A028242(n)%dr(A167447(A108411(n)))`
-/

namespace A234584.P7831219109507475284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028242 n) (SequenceMachineLib.digitalRoot (A167447 (A108411 n).toNat) : ℤ)

end

end A234584.P7831219109507475284

/-! ## A234584.P10346879571905451377

`A001222(A074324(n))%A162520(n+1)`
-/

namespace A234584.P10346879571905451377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A074324 n).toNat) (A162520 (n + 1))

end

end A234584.P10346879571905451377

/-! ## A234584.P11175802636154637134

`A353109(lt[A163352(n), A003056(n+2)])`
-/

namespace A234584.P11175802636154637134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353109 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A234584.P11175802636154637134

/-! ## A234584.P1252465362021382056

`A234585(lt[A008616(n+1), 3])`
-/

namespace A234584.P1252465362021382056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234585 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A234584.P1252465362021382056

/-!
# A234585: Let S_n = 0 followed by base-10 expansion of n, reversed; sequence is concatenation of S_0, S_1, S_2, ...

The programs for A234585, there is no canonical definition to state claims against.
-/

/-! ## A234585.P5447892003546047965

`A003056(A092274(n))%A008619(n)`
-/

namespace A234585.P5447892003546047965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A092274 n).toNat) (A008619 n)

end

end A234585.P5447892003546047965

/-! ## A234585.P275999935292308218

`record[A084928(2*(n+2))]%A065033(n)`
-/

namespace A234585.P275999935292308218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084928 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A065033 n)

end

end A234585.P275999935292308218

/-! ## A234585.P1737899284198509918

`A195833(Δ[record[A194981(n+1)]])`
-/

namespace A234585.P1737899284198509918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194981 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195833 (f1 (n + 1) - f1 n).toNat

end

end A234585.P1737899284198509918

/-! ## A234585.P3018072147577507421

`A208728(A000041(n))%gcd(floor((n+1)/2), n+1)`
-/

namespace A234585.P3018072147577507421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208728 (A000041 n).toNat) (Int.gcd ⌊(n + 1 : ℚ) / 2⌋ (n + 1 : ℤ) : ℤ)

end

end A234585.P3018072147577507421

/-! ## A234585.P17455557168828770087

`A004273(A179693(n+2))%A152271(n)`
-/

namespace A234585.P17455557168828770087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 (A179693 (n + 2)).toNat) (A152271 n)

end

end A234585.P17455557168828770087

/-!
# A234586: Odd-indexed terms are absolute values of differences.

The programs for A234586, the canonical program `A234586.P10206095258370351874` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234586 has offset 1).

The definition of A234586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234586.P10206095258370351874

`n+2-A234587(C(or(1, n), n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A234586

/-- `n+2-A234587(C(or(1, n), n))` -/
def P10206095258370351874.Spec : Prop :=
  ∀ n, P10206095258370351874.a n = A234586 (n + 1)

theorem P10206095258370351874.correct : P10206095258370351874.Spec := by
  intro n
  simp only [A234586, Nat.add_sub_cancel]

end A234586

/-! ## A234586.P8900486729170744577

`2-A234587(A141310(n))+n`
-/

namespace A234586.P8900486729170744577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A234587 (A141310 n).toNat + (n : ℤ)

end

end A234586.P8900486729170744577

namespace A234586

/-- `2-A234587(A141310(n))+n` -/
def P8900486729170744577.Spec : Prop :=
  ∀ n, P8900486729170744577.a n = A234586 (n + 1)

end A234586

/-! ## A234586.P10293384847946874222

`A092486(n)-A000095(A056469(n))`
-/

namespace A234586.P10293384847946874222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n - A000095 (A056469 n).toNat

end

end A234586.P10293384847946874222

namespace A234586

/-- `A092486(n)-A000095(A056469(n))` -/
def P10293384847946874222.Spec : Prop :=
  ∀ n, P10293384847946874222.a n = A234586 (n + 1)

end A234586

/-! ## A234586.P13890065518738260099

`1-A028613(2^n)+n`
-/

namespace A234586.P13890065518738260099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A028613 (2 ^ n) + (n : ℤ)

end

end A234586.P13890065518738260099

namespace A234586

/-- `1-A028613(2^n)+n` -/
def P13890065518738260099.Spec : Prop :=
  ∀ n, P13890065518738260099.a n = A234586 (n + 1)

end A234586

/-! ## A234586.P5544102789210222973

`n+1-A028613(A000079(n))`
-/

namespace A234586.P5544102789210222973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A028613 (A000079 n).toNat

end

end A234586.P5544102789210222973

namespace A234586

/-- `n+1-A028613(A000079(n))` -/
def P5544102789210222973.Spec : Prop :=
  ∀ n, P5544102789210222973.a n = A234586 (n + 1)

end A234586

/-!
# A234587: Odd-indexed terms of A234586.

The programs for A234587, the canonical program `A234587.P3112918179012221040` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234587 has offset 1).

The definition of A234587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234587.P1574952320111952120

`abs(Δ[A234586(n+1)])`
-/

namespace A234587.P1574952320111952120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A234587.P1574952320111952120

namespace A234587

/-- `abs(Δ[A234586(n+1)])` -/
def P1574952320111952120.Spec : Prop :=
  ∀ n, P1574952320111952120.a n = A234587 (n + 1)

end A234587

/-! ## A234587.P6135241637598927778

`Δ[A234586(n+1)]*A033999(n)`
-/

namespace A234587.P6135241637598927778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A234587.P6135241637598927778

namespace A234587

/-- `Δ[A234586(n+1)]*A033999(n)` -/
def P6135241637598927778.Spec : Prop :=
  ∀ n, P6135241637598927778.a n = A234587 (n + 1)

end A234587

/-! ## A234587.P3112918179012221040

`A098181(n-a(A004526(n+1)))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A234587

/-- `A098181(n-a(A004526(n+1)))` -/
def P3112918179012221040.Spec : Prop :=
  ∀ n, P3112918179012221040.a n = A234587 (n + 1)

theorem P3112918179012221040.correct : P3112918179012221040.Spec := by
  intro n
  simp only [A234587, Nat.add_sub_cancel]

end A234587

/-! ## A234587.P9493542779715664568

`A234586(Δ[n²])`
-/

namespace A234587.P9493542779715664568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234586 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A234587.P9493542779715664568

namespace A234587

/-- `A234586(Δ[n²])` -/
def P9493542779715664568.Spec : Prop :=
  ∀ n, P9493542779715664568.a n = A234587 (n + 1)

end A234587

/-! ## A234587.P8189540656361054932

`A234586(2*n+1)%(n+2)`
-/

namespace A234587.P8189540656361054932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234586 (2 * n + 1)) (n + 2 : ℤ)

end

end A234587.P8189540656361054932

namespace A234587

/-- `A234586(2*n+1)%(n+2)` -/
def P8189540656361054932.Spec : Prop :=
  ∀ n, P8189540656361054932.a n = A234587 (n + 1)

end A234587

/-! ## A234587.P11499115179942494055

`A000027(A234586(2*n+1))`
-/

namespace A234587.P11499115179942494055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A234586 (2 * n + 1)).toNat

end

end A234587.P11499115179942494055

namespace A234587

/-- `A000027(A234586(2*n+1))` -/
def P11499115179942494055.Spec : Prop :=
  ∀ n, P11499115179942494055.a n = A234587 (n + 1)

end A234587

/-! ## A234587.P17957415116747917275

`filter[A234586(n+1), A000035(#)]`
-/

namespace A234587.P17957415116747917275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A234587.P17957415116747917275

namespace A234587

/-- `filter[A234586(n+1), A000035(#)]` -/
def P17957415116747917275.Spec : Prop :=
  ∀ n, P17957415116747917275.a n = A234587 (n + 1)

end A234587

/-!
# A234589: Expansion of g.f.: (1+x^6+x^7)/(1-2*x+x^6-x^7-x^8).

The programs for A234589, the canonical program `A234589.P18260223798493864587` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234589 has offset 0).

The definition of A234589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^6+x^7)/(1-2x+x^6-x^7-x^8))` (program `A234589.P18260223798493864587`, by `A234589.P18260223798493864587.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234589.P18260223798493864587

`ogf((1+x^6+x^7)/(1-2x+x^6-x^7-x^8))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234589

/-- `ogf((1+x^6+x^7)/(1-2x+x^6-x^7-x^8))` -/
def P18260223798493864587.Spec : Prop :=
  ∀ n, P18260223798493864587.a n = A234589 n

theorem P18260223798493864587.correct : P18260223798493864587.Spec := by
  intro n
  simp only [A234589]

end A234589

/-! ## A234589.P4078364685218051700

`2*a(n-1)-a(n-6)+a(n-7)+a(n-8)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32, a(6)=64, a(7)=128`
-/

namespace A234589.P4078364685218051700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 16, 32, 64, 128] fun n a =>
  2 * a (n - 1) - a (n - 6) + a (n - 7) + a (n - 8)

end

end A234589.P4078364685218051700

namespace A234589

/-- `2*a(n-1)-a(n-6)+a(n-7)+a(n-8)` -/
def P4078364685218051700.Spec : Prop :=
  ∀ n, P4078364685218051700.a n = A234589 n

end A234589

/-!
# A234590: Number of binary words of length n which have no 0^b 1 1 0^a 1 0 1 0^b - matches, where a=0, b=2.

The programs for A234590, the canonical program `A234590.P12100743694328349369` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234590 has offset 0).

The definition of A234590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234590.P6897868553523456541

`ogf((1+x^7+x^8)/(1-2x+x^7-x^8-x^9))`
-/

namespace A234590.P6897868553523456541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, 0, 0, 0, 1, 1] [1, -2, 0, 0, 0, 0, 0, 1, -1, -1] n

end

end A234590.P6897868553523456541

namespace A234590

/-- `ogf((1+x^7+x^8)/(1-2x+x^7-x^8-x^9))` -/
def P6897868553523456541.Spec : Prop :=
  ∀ n, P6897868553523456541.a n = A234590 n

end A234590

/-! ## A234590.P12100743694328349369

`2*a(n-1)-a(n-7)+a(n-8)+a(n-9)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32, a(6)=64, a(7)=128, a(8)=256`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234590

/-- `2*a(n-1)-a(n-7)+a(n-8)+a(n-9)` -/
def P12100743694328349369.Spec : Prop :=
  ∀ n, P12100743694328349369.a n = A234590 n

theorem P12100743694328349369.correct : P12100743694328349369.Spec := by
  intro n
  simp only [A234590]

end A234590

/-!
# A234591: Number of binary words of length n which have no 0^b 1 1 0^a 1 0 1 0^b - matches, where a=1, b=2.

The programs for A234591, the canonical program `A234591.P16712786208938603051` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234591 has offset 0).

The definition of A234591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234591.P14812021969809587610

`ogf((1+x^8+x^9)/(1-2x+x^8-x^9-x^10))`
-/

namespace A234591.P14812021969809587610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, 0, 0, 0, 0, 1, 1] [1, -2, 0, 0, 0, 0, 0, 0, 1, -1, -1] n

end

end A234591.P14812021969809587610

namespace A234591

/-- `ogf((1+x^8+x^9)/(1-2x+x^8-x^9-x^10))` -/
def P14812021969809587610.Spec : Prop :=
  ∀ n, P14812021969809587610.a n = A234591 n

end A234591

/-! ## A234591.P16712786208938603051

`2*a(n-1)-a(n-8)+a(n-9)+a(n-10)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32, a(6)=64, a(7)=128, a(8)=256, a(9)=512`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234591

/-- `2*a(n-1)-a(n-8)+a(n-9)+a(n-10)` -/
def P16712786208938603051.Spec : Prop :=
  ∀ n, P16712786208938603051.a n = A234591 n

theorem P16712786208938603051.correct : P16712786208938603051.Spec := by
  intro n
  simp only [A234591]

end A234591

/-! ## A234591.P14694622535303591200

`A353488(A062318(n+3))+A172319(n)`
-/

namespace A234591.P14694622535303591200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353488 (A062318 (n + 3)).toNat + A172319 n

end

end A234591.P14694622535303591200

namespace A234591

/-- `A353488(A062318(n+3))+A172319(n)` -/
def P14694622535303591200.Spec : Prop :=
  ∀ n, P14694622535303591200.a n = A234591 n

end A234591

/-!
# A234592: Number of binary words of length n which have no 0^b 1 1 0^a 1 0 1 0^b - matches, where a=b=2.

The programs for A234592, the canonical program `A234592.P4626662778653179907` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234592 has offset 0).

The definition of A234592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234592.P4626662778653179907

`ogf((1+x^9+x^10)/(1-2x+x^9-x^10-x^11))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234592

/-- `ogf((1+x^9+x^10)/(1-2x+x^9-x^10-x^11))` -/
def P4626662778653179907.Spec : Prop :=
  ∀ n, P4626662778653179907.a n = A234592 n

theorem P4626662778653179907.correct : P4626662778653179907.Spec := by
  intro n
  simp only [A234592]

end A234592

/-!
# A234595: Number of elementary sequences of length n, where permutations of the components are taken into account.

The programs for A234595, there is no canonical definition to state claims against.
-/

/-! ## A234595.P11269633360606673057

`A260436(n^comp[or(5, n)])`
-/

namespace A234595.P11269633360606673057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260436 (n ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A234595.P11269633360606673057

/-!
# A234596: Bicolored noncrossing configurations.

The programs for A234596, there is no canonical definition to state claims against.
-/

/-! ## A234596.P11629768123581959480

`record[and(-3, 2^n)]*A107841(n)`
-/

namespace A234596.P11629768123581959480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A107841 n

end

end A234596.P11629768123581959480

/-! ## A234596.P8613279126627782909

`Δ[A095121(n)]*A107841(n)`
-/

namespace A234596.P8613279126627782909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A107841 n

end

end A234596.P8613279126627782909

/-! ## A234596.P13564708884206187505

`A107841(n)*A151821(n+1)`
-/

namespace A234596.P13564708884206187505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107841 n * A151821 (n + 1)

end

end A234596.P13564708884206187505

/-! ## A234596.P8091095328638079173

`A029747(3*n+1)*A107841(n)`
-/

namespace A234596.P8091095328638079173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (3 * n + 1) * A107841 n

end

end A234596.P8091095328638079173

/-! ## A234596.P13729861282080870768

`A107841(n)*A278221(A006005(n+1))`
-/

namespace A234596.P13729861282080870768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107841 n * A278221 (A006005 (n + 1)).toNat

end

end A234596.P13729861282080870768

/-!
# A234597: Number of Weyl group elements, not containing an s_1 factor, which contribute nonzero terms to Kostant's weight multiplicity formula when computing the multiplicity of the zero-weight in the adjoint representation for the Lie algebra of type D and rank n.

The programs for A234597, the canonical program `A234597.P4303821682388581585` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234597 has offset 4).

The definition of A234597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234597.P9225518338911561103

`ogf((5+6x+5x^2+x^3)/(1-x-x^2-3x^3-x^4))`
-/

namespace A234597.P9225518338911561103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 6, 5, 1] [1, -1, -1, -3, -1] n

end

end A234597.P9225518338911561103

namespace A234597

/-- `ogf((5+6x+5x^2+x^3)/(1-x-x^2-3x^3-x^4))` -/
def P9225518338911561103.Spec : Prop :=
  ∀ n, P9225518338911561103.a n = A234597 (n + 4)

end A234597

/-! ## A234597.P4303821682388581585

`a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` with `a(0)=5, a(1)=11, a(2)=21, a(3)=48`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A234597

/-- `a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` -/
def P4303821682388581585.Spec : Prop :=
  ∀ n, (P4303821682388581585.a n : ℤ) = A234597 (n + 4)

theorem P4303821682388581585.correct : P4303821682388581585.Spec := by
  intro n
  simp only [A234597, Nat.add_sub_cancel]

end A234597

/-! ## A234597.P14106144643768623064

`A234598(n+4)-A234576(n+4)`
-/

namespace A234597.P14106144643768623064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234598 (n + 4) - A234576 (n + 4)

end

end A234597.P14106144643768623064

namespace A234597

/-- `A234598(n+4)-A234576(n+4)` -/
def P14106144643768623064.Spec : Prop :=
  ∀ n, P14106144643768623064.a n = A234597 (n + 4)

theorem P14106144643768623064.correct : P14106144643768623064.Spec := by
  intro n
  simp only [A234597, Nat.add_sub_cancel, A234597.P14106144643768623064.a, A234597.P4303821682388581585.a, A234576, A234576.P5242596916492470615.a, A234598, A234598.P11113428965064186318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234597

/-! ## A234597.P2871137707045258580

`A214663(n+3)-A214663(n)-A232162(n)`
-/

namespace A234597.P2871137707045258580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214663 (n + 3) - A214663 n - A232162 n

end

end A234597.P2871137707045258580

namespace A234597

/-- `A214663(n+3)-A214663(n)-A232162(n)` -/
def P2871137707045258580.Spec : Prop :=
  ∀ n, P2871137707045258580.a n = A234597 (n + 4)

end A234597

/-! ## A234597.P9617863149538210563

`A214663(n+3)+A232165(n)-A214663(n+1)`
-/

namespace A234597.P9617863149538210563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214663 (n + 3) + (A232165 n - A214663 (n + 1))

end

end A234597.P9617863149538210563

namespace A234597

/-- `A214663(n+3)+A232165(n)-A214663(n+1)` -/
def P9617863149538210563.Spec : Prop :=
  ∀ n, P9617863149538210563.a n = A234597 (n + 4)

end A234597

/-! ## A234597.P8506976541496739304

`A196423(n+1)+A234576(n+4)+A232165(n)`
-/

namespace A234597.P8506976541496739304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196423 (n + 1) + (A234576 (n + 4) + A232165 n)

end

end A234597.P8506976541496739304

namespace A234597

/-- `A196423(n+1)+A234576(n+4)+A232165(n)` -/
def P8506976541496739304.Spec : Prop :=
  ∀ n, P8506976541496739304.a n = A234597 (n + 4)

end A234597

/-! ## A234597.P17455926383063097536

`A196423(n+1)+A196423(n+1)+A196423(n+2)`
-/

namespace A234597.P17455926383063097536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196423 (n + 1) + (A196423 (n + 1) + A196423 (n + 2))

end

end A234597.P17455926383063097536

namespace A234597

/-- `A196423(n+1)+A196423(n+1)+A196423(n+2)` -/
def P17455926383063097536.Spec : Prop :=
  ∀ n, P17455926383063097536.a n = A234597 (n + 4)

end A234597

/-!
# A234598: Cardinality of the Weyl alternation set corresponding to the zero-weight in the adjoint representation of the Lie algebra of so(2n).

The programs for A234598, the canonical program `A234598.P11113428965064186318` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234598 has offset 4).

The definition of A234598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234598.P7459548056805776509

`ogf((9+9x+8x^2+2x^3)/(1-x-x^2-3x^3-x^4))`
-/

namespace A234598.P7459548056805776509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 9, 8, 2] [1, -1, -1, -3, -1] n

end

end A234598.P7459548056805776509

namespace A234598

/-- `ogf((9+9x+8x^2+2x^3)/(1-x-x^2-3x^3-x^4))` -/
def P7459548056805776509.Spec : Prop :=
  ∀ n, P7459548056805776509.a n = A234598 (n + 4)

end A234598

/-! ## A234598.P11113428965064186318

`A234597(n+4)+A234576(n+4)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A234598

/-- `A234597(n+4)+A234576(n+4)` -/
def P11113428965064186318.Spec : Prop :=
  ∀ n, P11113428965064186318.a n = A234598 (n + 4)

theorem P11113428965064186318.correct : P11113428965064186318.Spec := by
  intro n
  simp only [A234598, Nat.add_sub_cancel]

end A234598

/-! ## A234598.P12712940769948101911

`A243094(n+2)+2*A243094(n+1)`
-/

namespace A234598.P12712940769948101911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243094 (n + 2) + 2 * A243094 (n + 1)

end

end A234598.P12712940769948101911

namespace A234598

/-- `A243094(n+2)+2*A243094(n+1)` -/
def P12712940769948101911.Spec : Prop :=
  ∀ n, P12712940769948101911.a n = A234598 (n + 4)

end A234598

/-! ## A234598.P5604616389990887970

`A234597(n+4)+A232164(n)+Δ[A214663(n+2)]`
-/

namespace A234598.P5604616389990887970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214663 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234597 (n + 4) + (A232164 n + (f1 (n + 1) - f1 n))

end

end A234598.P5604616389990887970

namespace A234598

/-- `A234597(n+4)+A232164(n)+Δ[A214663(n+2)]` -/
def P5604616389990887970.Spec : Prop :=
  ∀ n, P5604616389990887970.a n = A234598 (n + 4)

end A234598

/-! ## A234598.P6298823984872015980

`A234597(n+4)+A232164(n)+Δ[A232164(n+3)]`
-/

namespace A234598.P6298823984872015980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234597 (n + 4) + (A232164 n + (f1 (n + 1) - f1 n))

end

end A234598.P6298823984872015980

namespace A234598

/-- `A234597(n+4)+A232164(n)+Δ[A232164(n+3)]` -/
def P6298823984872015980.Spec : Prop :=
  ∀ n, P6298823984872015980.a n = A234598 (n + 4)

end A234598

/-! ## A234598.P11330209542885833986

`A232164(n+1)+A243094(n+1)+A232164(n+4)`
-/

namespace A234598.P11330209542885833986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 (n + 1) + (A243094 (n + 1) + A232164 (n + 4))

end

end A234598.P11330209542885833986

namespace A234598

/-- `A232164(n+1)+A243094(n+1)+A232164(n+4)` -/
def P11330209542885833986.Spec : Prop :=
  ∀ n, P11330209542885833986.a n = A234598 (n + 4)

end A234598

/-! ## A234598.P3265411964992132672

`A234597(n+4)+A232165(n+1)+A196423(n+2)`
-/

namespace A234598.P3265411964992132672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234597 (n + 4) + (A232165 (n + 1) + A196423 (n + 2))

end

end A234598.P3265411964992132672

namespace A234598

/-- `A234597(n+4)+A232165(n+1)+A196423(n+2)` -/
def P3265411964992132672.Spec : Prop :=
  ∀ n, P3265411964992132672.a n = A234598 (n + 4)

end A234598

/-!
# A234599: Number of n-celled solid polyominoes (or free polycubes, allowing mirror-image identification) with chessboard coloring.

The programs for A234599, there is no canonical definition to state claims against.
-/

/-! ## A234599.P15479660899878634544

`A094189(A038720(n+1))`
-/

namespace A234599.P15479660899878634544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094189 (A038720 (n + 1)).toNat

end

end A234599.P15479660899878634544

/-! ## A234599.P17936713318620407596

`A168009(A284245(n)+1)`
-/

namespace A234599.P17936713318620407596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168009 (A284245 n + 1).toNat

end

end A234599.P17936713318620407596

