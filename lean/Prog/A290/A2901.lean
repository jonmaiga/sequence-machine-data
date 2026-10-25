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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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
# A290101: a(n) = dropping time for the modified Collatz problem, where x -> 3x+1 if x is odd, and x -> either x/2 or 3x+1 if x is even (minimal number of any such steps to reach a lower number than the starting value n); a(1) = 0 by convention.

The programs for A290101, there is no canonical definition to state claims against.
-/

/-! ## A290101.P11472517652530360688

`A102419(n+1)%A031166(A050068(n+1))`
-/

namespace A290101.P11472517652530360688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102419 (n + 1)) (A031166 (A050068 (n + 1)).toNat)

end

end A290101.P11472517652530360688

/-! ## A290101.P13545256545262669834

`(A074473(n+1)-1)%A031166(A050068(n+1))`
-/

namespace A290101.P13545256545262669834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074473 (n + 1) - 1) (A031166 (A050068 (n + 1)).toNat)

end

end A290101.P13545256545262669834

/-! ## A290101.P2333008313103284603

`A023443(A074473(n+1))%A031166(A050068(n+1))`
-/

namespace A290101.P2333008313103284603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023443 (A074473 (n + 1)).toNat) (A031166 (A050068 (n + 1)).toNat)

end

end A290101.P2333008313103284603

/-! ## A290101.P4612580249904059600

`A024164(6*A074473(n+1))%A162825(A010078(n+1))`
-/

namespace A290101.P4612580249904059600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024164 (6 * A074473 (n + 1)).toNat) (A162825 (A010078 (n + 1)).toNat)

end

end A290101.P4612580249904059600

/-! ## A290101.P9645375612453721423

`A102419(n+1)%A007089(A141056(n))`
-/

namespace A290101.P9645375612453721423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102419 (n + 1)) (A007089 (A141056 n).toNat)

end

end A290101.P9645375612453721423

/-!
# A290103: a(n) = LCM of the prime indices in prime factorization of n, a(1) = 1.

The programs for A290103, there is no canonical definition to state claims against.
-/

/-! ## A290103.P853139199396572341

`lcm(A055396(n+1), a(A028234(n+1)-1))` with `a(0)=1, a(1)=1`
-/

namespace A290103.P853139199396572341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm (A055396 (n + 1)) (a (A028234 (n + 1) - 1).toNat : ℤ)

end

end A290103.P853139199396572341

/-! ## A290103.P17292827105706739580

`A316431(2*(n+1))`
-/

namespace A290103.P17292827105706739580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (2 * (n + 1))

end

end A290103.P17292827105706739580

/-! ## A290103.P17756781813124291119

`A328219(A064989(n+1))`
-/

namespace A290103.P17756781813124291119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328219 (A064989 (n + 1)).toNat

end

end A290103.P17756781813124291119

/-! ## A290103.P11441140381554392065

`A003963(n+1)/A290104(n+1)`
-/

namespace A290103.P11441140381554392065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (n + 1) : ℚ) / (A290104 (n + 1) : ℚ)

end

end A290103.P11441140381554392065

/-! ## A290103.P8494765886141264009

`A156061(n+1)/A290105(n+1)`
-/

namespace A290103.P8494765886141264009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156061 (n + 1) : ℚ) / (A290105 (n + 1) : ℚ)

end

end A290103.P8494765886141264009

/-! ## A290103.P1218176359527164440

`A003963(A007947(n+1))/A290105(n+1)`
-/

namespace A290103.P1218176359527164440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (A007947 (n + 1)).toNat : ℚ) / (A290105 (n + 1) : ℚ)

end

end A290103.P1218176359527164440

/-! ## A290103.P14811999400235498434

`A156061(n+1)/A290104(A007947(n+1))`
-/

namespace A290103.P14811999400235498434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156061 (n + 1) : ℚ) / (A290104 (A007947 (n + 1)).toNat : ℚ)

end

end A290103.P14811999400235498434

/-! ## A290103.P17882534999367298181

`A003963(n+1)/(A290105(n+1)*A290106(n+1))`
-/

namespace A290103.P17882534999367298181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (n + 1) : ℚ) / (A290105 (n + 1) * A290106 (n + 1) : ℚ)

end

end A290103.P17882534999367298181

/-! ## A290103.P13806569326610878263

`A156061(n+1)/A290104(n+1)*A290106(n+1)`
-/

namespace A290103.P13806569326610878263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156061 (n + 1) : ℚ) / (A290104 (n + 1) : ℚ) * (A290106 (n + 1) : ℚ)

end

end A290103.P13806569326610878263

/-! ## A290103.P6067307129493063871

`A290104((n+1)²)/A290104(n+1)²`
-/

namespace A290103.P6067307129493063871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290104 ((n + 1) ^ 2) : ℚ) / (A290104 (n + 1) ^ 2 : ℚ)

end

end A290103.P6067307129493063871

/-!
# A290104: a(n) = A003963(n) / A290103(n).

The programs for A290104, there is no canonical definition to state claims against.
-/

/-! ## A290104.P8109031732429300831

`A003963(n+1)/A290103(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290104.P8109031732429300831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (n + 1) : ℚ) / (A290103 (n + 1) : ℚ)

end

end A290104.P8109031732429300831

/-! ## A290104.P17127957534548078821

`A290105(n+1)*A290106(n+1)`
-/

namespace A290104.P17127957534548078821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290105 (n + 1) * A290106 (n + 1)

end

end A290104.P17127957534548078821

/-! ## A290104.P2627166984834252640

`A003963(n+1)/A316431(2*(n+1))`
-/

namespace A290104.P2627166984834252640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (n + 1) : ℚ) / (A316431 (2 * (n + 1)) : ℚ)

end

end A290104.P2627166984834252640

/-! ## A290104.P10730129217247271281

`A003963(n+1)/A156061(n+1)*A290105(n+1)`
-/

namespace A290104.P10730129217247271281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (n + 1) : ℚ) / (A156061 (n + 1) : ℚ) * (A290105 (n + 1) : ℚ)

end

end A290104.P10730129217247271281

/-! ## A290104.P15712502693906068948

`A156061(n+1)/A290103(n+1)*A290106(n+1)`
-/

namespace A290104.P15712502693906068948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156061 (n + 1) : ℚ) / (A290103 (n + 1) : ℚ) * (A290106 (n + 1) : ℚ)

end

end A290104.P15712502693906068948

/-! ## A290104.P10582023537627899546

`A003963(n+1)/A003963(A327389(n+1))`
-/

namespace A290104.P10582023537627899546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (n + 1) : ℚ) / (A003963 (A327389 (n + 1)).toNat : ℚ)

end

end A290104.P10582023537627899546

/-!
# A290105: a(n) = A156061(n) / A290103(n).

The programs for A290105, there is no canonical definition to state claims against.
-/

/-! ## A290105.P1795038591831729009

`A156061(n+1)/A290103(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290105.P1795038591831729009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156061 (n + 1) : ℚ) / (A290103 (n + 1) : ℚ)

end

end A290105.P1795038591831729009

/-! ## A290105.P16067177085357626108

`A290104(∏{p}[n+1, #])`
-/

namespace A290105.P16067177085357626108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A290105.P16067177085357626108

/-! ## A290105.P7460537073820248830

`A290104(A007947(n+1))`
-/

namespace A290105.P7460537073820248830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (A007947 (n + 1)).toNat

end

end A290105.P7460537073820248830

/-! ## A290105.P15979178148616716669

`A290104(n+1)/A290106(n+1)`
-/

namespace A290105.P15979178148616716669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290104 (n + 1) : ℚ) / (A290106 (n + 1) : ℚ)

end

end A290105.P15979178148616716669

/-! ## A290105.P12739463789656174095

`A156061(n+1)/A003963(n+1)*A290104(n+1)`
-/

namespace A290105.P12739463789656174095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156061 (n + 1) : ℚ) / (A003963 (n + 1) : ℚ) * (A290104 (n + 1) : ℚ)

end

end A290105.P12739463789656174095

/-! ## A290105.P14684144042894207564

`A156061(n+1)/∏{p}[A327389(n+1), A061395(#)]`
-/

namespace A290105.P14684144042894207564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327389 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156061 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A061395 p : ℤ) : ℚ)

end

end A290105.P14684144042894207564

/-! ## A290105.P15274738468604635233

`A156061(n+1)/∏{p}[A327389(n+1), A338568(#)]`
-/

namespace A290105.P15274738468604635233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327389 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156061 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A338568 p : ℤ) : ℚ)

end

end A290105.P15274738468604635233

/-! ## A290105.P5235597837226066170

`A156061(n+1)/∏{p}[A327389(n+1), A338569(#)]`
-/

namespace A290105.P5235597837226066170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327389 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156061 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A338569 p : ℤ) : ℚ)

end

end A290105.P5235597837226066170

/-! ## A290105.P2614474555050471331

`A373217(A008268(n))`
-/

namespace A290105.P2614474555050471331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373217 (A008268 n).toNat

end

end A290105.P2614474555050471331

/-!
# A290106: a(1) = 1; for n > 1, if n = Product prime(k)^e(k), then a(n) = Product (k)^(e(k)-1).

The programs for A290106, the canonical program `A290106.P12749971107555885401` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290106 has offset 1).

The definition of A290106 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003963, A156061, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A290106.P9266108604319048439

`A003963(A003557(n+1))`
-/

namespace A290106.P9266108604319048439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A003557 (n + 1)).toNat

end

end A290106.P9266108604319048439

namespace A290106

/-- `A003963(A003557(n+1))` -/
def P9266108604319048439.Spec : Prop :=
  ∀ n, P9266108604319048439.a n = A290106 (n + 1)

end A290106

/-! ## A290106.P7437856700166294955

`A003963((n+1)/A007947(n+1))`
-/

namespace A290106.P7437856700166294955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A290106.P7437856700166294955

namespace A290106

/-- `A003963((n+1)/A007947(n+1))` -/
def P7437856700166294955.Spec : Prop :=
  ∀ n, P7437856700166294955.a n = A290106 (n + 1)

end A290106

/-! ## A290106.P12749971107555885401

`A003963(n+1)/A156061(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A290106

/-- `A003963(n+1)/A156061(n+1)` -/
def P12749971107555885401.Spec : Prop :=
  ∀ n, P12749971107555885401.a n = (A290106 (n + 1) : ℚ)

end A290106

/-! ## A290106.P455954430304272242

`A003963((n+1)/∏{p}[n+1, #])`
-/

namespace A290106.P455954430304272242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A290106.P455954430304272242

namespace A290106

/-- `A003963((n+1)/∏{p}[n+1, #])` -/
def P455954430304272242.Spec : Prop :=
  ∀ n, P455954430304272242.a n = A290106 (n + 1)

end A290106

/-! ## A290106.P10591884034105691220

`A290104(n+1)/A290105(n+1)`
-/

namespace A290106.P10591884034105691220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290104 (n + 1) : ℚ) / (A290105 (n + 1) : ℚ)

end

end A290106.P10591884034105691220

namespace A290106

/-- `A290104(n+1)/A290105(n+1)` -/
def P10591884034105691220.Spec : Prop :=
  ∀ n, P10591884034105691220.a n = (A290106 (n + 1) : ℚ)

end A290106

/-! ## A290106.P12367948851047552982

`A290104(n+1)/A290104(A007947(n+1))`
-/

namespace A290106.P12367948851047552982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290104 (n + 1) : ℚ) / (A290104 (A007947 (n + 1)).toNat : ℚ)

end

end A290106.P12367948851047552982

namespace A290106

/-- `A290104(n+1)/A290104(A007947(n+1))` -/
def P12367948851047552982.Spec : Prop :=
  ∀ n, P12367948851047552982.a n = (A290106 (n + 1) : ℚ)

end A290106

/-! ## A290106.P16468014840731751448

`A003963(n+1)/(A003963(n+1)-A380986(n+1))`
-/

namespace A290106.P16468014840731751448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (n + 1) : ℚ) / (A003963 (n + 1) - A380986 (n + 1) : ℚ)

end

end A290106.P16468014840731751448

namespace A290106

/-- `A003963(n+1)/(A003963(n+1)-A380986(n+1))` -/
def P16468014840731751448.Spec : Prop :=
  ∀ n, P16468014840731751448.a n = (A290106 (n + 1) : ℚ)

end A290106

/-! ## A290106.P5203514228974879786

`A003963(n+1)/(A290103(n+1)*A290105(n+1))`
-/

namespace A290106.P5203514228974879786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (n + 1) : ℚ) / (A290103 (n + 1) * A290105 (n + 1) : ℚ)

end

end A290106.P5203514228974879786

namespace A290106

/-- `A003963(n+1)/(A290103(n+1)*A290105(n+1))` -/
def P5203514228974879786.Spec : Prop :=
  ∀ n, P5203514228974879786.a n = (A290106 (n + 1) : ℚ)

end A290106

/-! ## A290106.P9496202165692936816

`A290103(n+1)/A156061(n+1)*A290104(n+1)`
-/

namespace A290106.P9496202165692936816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290103 (n + 1) : ℚ) / (A156061 (n + 1) : ℚ) * (A290104 (n + 1) : ℚ)

end

end A290106.P9496202165692936816

namespace A290106

/-- `A290103(n+1)/A156061(n+1)*A290104(n+1)` -/
def P9496202165692936816.Spec : Prop :=
  ∀ n, P9496202165692936816.a n = (A290106 (n + 1) : ℚ)

end A290106

/-! ## A290106.P1195760154298584269

`∏{e}[A181821((n+1)/∏{p}[n+1, #]), #]`
-/

namespace A290106.P1195760154298584269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A290106.P1195760154298584269

namespace A290106

/-- `∏{e}[A181821((n+1)/∏{p}[n+1, #]), #]` -/
def P1195760154298584269.Spec : Prop :=
  ∀ n, (P1195760154298584269.a n : ℤ) = A290106 (n + 1)

end A290106

/-!
# A290107: a(1) = 1; for n > 1, a(n) = product of distinct exponents in the prime factorization of n.

The programs for A290107, the canonical program `A290107.P16586556878278965706` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290107 has offset 1).

The definition of A290107 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156061, A181819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A290107.P16586556878278965706

`A156061(A181819(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A290107

/-- `A156061(A181819(n+1))` -/
def P16586556878278965706.Spec : Prop :=
  ∀ n, P16586556878278965706.a n = A290107 (n + 1)

theorem P16586556878278965706.correct : P16586556878278965706.Spec := by
  intro n
  simp only [A290107, Nat.add_sub_cancel]

end A290107

/-! ## A290107.P13174289711486750331

`∏{e}[A328400(n+1), #]`
-/

namespace A290107.P13174289711486750331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A290107.P13174289711486750331

namespace A290107

/-- `∏{e}[A328400(n+1), #]` -/
def P13174289711486750331.Spec : Prop :=
  ∀ n, (P13174289711486750331.a n : ℤ) = A290107 (n + 1)

end A290107

/-! ## A290107.P11343370403995951954

`A003963(A329601(n+1))`
-/

namespace A290107.P11343370403995951954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A329601 (n + 1)).toNat

end

end A290107.P11343370403995951954

namespace A290107

/-- `A003963(A329601(n+1))` -/
def P11343370403995951954.Spec : Prop :=
  ∀ n, P11343370403995951954.a n = A290107 (n + 1)

end A290107

/-! ## A290107.P9452930208486792065

`A005361(A328400(n+1))`
-/

namespace A290107.P9452930208486792065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A328400 (n + 1)).toNat

end

end A290107.P9452930208486792065

namespace A290107

/-- `A005361(A328400(n+1))` -/
def P9452930208486792065.Spec : Prop :=
  ∀ n, P9452930208486792065.a n = A290107 (n + 1)

end A290107

/-! ## A290107.P2285745005481888248

`A329617(A238745(n+1))`
-/

namespace A290107.P2285745005481888248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329617 (A238745 (n + 1)).toNat

end

end A290107.P2285745005481888248

namespace A290107

/-- `A329617(A238745(n+1))` -/
def P2285745005481888248.Spec : Prop :=
  ∀ n, P2285745005481888248.a n = A290107 (n + 1)

end A290107

/-! ## A290107.P6143401027087329654

`∏{p}[A181819(n+1), A056239(#)]`
-/

namespace A290107.P6143401027087329654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056239 p

end

end A290107.P6143401027087329654

namespace A290107

/-- `∏{p}[A181819(n+1), A056239(#)]` -/
def P6143401027087329654.Spec : Prop :=
  ∀ n, P6143401027087329654.a n = A290107 (n + 1)

end A290107

/-! ## A290107.P15905209625790969042

`∏{p}[A181819(n+1), A066328(#)]`
-/

namespace A290107.P15905209625790969042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A066328 p

end

end A290107.P15905209625790969042

namespace A290107

/-- `∏{p}[A181819(n+1), A066328(#)]` -/
def P15905209625790969042.Spec : Prop :=
  ∀ n, P15905209625790969042.a n = A290107 (n + 1)

end A290107

/-! ## A290107.P15148020343512283106

`∏{p}[∏{e}[n+1, A000040(#)], A000720(#)]`
-/

namespace A290107.P15148020343512283106
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A000040 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p

end

end A290107.P15148020343512283106

namespace A290107

/-- `∏{p}[∏{e}[n+1, A000040(#)], A000720(#)]` -/
def P15148020343512283106.Spec : Prop :=
  ∀ n, P15148020343512283106.a n = A290107 (n + 1)

end A290107

/-! ## A290107.P5149107534505985114

`∏{p}[∏{e}[n+1, A219697(#)], A049084(#)]`
-/

namespace A290107.P5149107534505985114
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A219697 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A049084 p

end

end A290107.P5149107534505985114

namespace A290107

/-- `∏{p}[∏{e}[n+1, A219697(#)], A049084(#)]` -/
def P5149107534505985114.Spec : Prop :=
  ∀ n, P5149107534505985114.a n = A290107 (n + 1)

end A290107

/-! ## A290107.P18005678061857103144

`∏{p}[∏{e}[n+1, A219697(#)], A061395(#)]`
-/

namespace A290107.P18005678061857103144
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A219697 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A061395 p

end

end A290107.P18005678061857103144

namespace A290107

/-- `∏{p}[∏{e}[n+1, A219697(#)], A061395(#)]` -/
def P18005678061857103144.Spec : Prop :=
  ∀ n, P18005678061857103144.a n = A290107 (n + 1)

end A290107

/-! ## A290107.P8775005544303518483

`∏{p}[∏{e}[n+1, A219697(#)], A302039(#)]`
-/

namespace A290107.P8775005544303518483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A219697 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A302039 p

end

end A290107.P8775005544303518483

namespace A290107

/-- `∏{p}[∏{e}[n+1, A219697(#)], A302039(#)]` -/
def P8775005544303518483.Spec : Prop :=
  ∀ n, P8775005544303518483.a n = A290107 (n + 1)

end A290107

/-! ## A290107.P7007407129804626311

`A003963(A007947(A181819(n+1)²))`
-/

namespace A290107.P7007407129804626311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A007947 (A181819 (n + 1) ^ 2).toNat).toNat

end

end A290107.P7007407129804626311

namespace A290107

/-- `A003963(A007947(A181819(n+1)²))` -/
def P7007407129804626311.Spec : Prop :=
  ∀ n, P7007407129804626311.a n = A290107 (n + 1)

end A290107

/-!
# A290108: a(n) = A268819(n) mod 8.

The programs for A290108, there is no canonical definition to state claims against.
-/

/-! ## A290108.P6025596517632140766

`A268819(n+1)%8`
-/

namespace A290108.P6025596517632140766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268819 (n + 1)) 8

end

end A290108.P6025596517632140766

/-! ## A290108.P424247338690930629

`and(7, A268819(A000027(n+1)))`
-/

namespace A290108.P424247338690930629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A268819 (A000027 (n + 1)).toNat)

end

end A290108.P424247338690930629

/-! ## A290108.P11201479140962827965

`and(7, A268819(A065883(n+1)))`
-/

namespace A290108.P11201479140962827965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A268819 (A065883 (n + 1)).toNat)

end

end A290108.P11201479140962827965

/-! ## A290108.P5351594373611355539

`and(A186684(n+1), A268819(n+1))`
-/

namespace A290108.P5351594373611355539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A186684 (n + 1)) (A268819 (n + 1))

end

end A290108.P5351594373611355539

/-! ## A290108.P12599456936758978748

`and(or(7, A039982(n)), A268819(n+1))`
-/

namespace A290108.P12599456936758978748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.lor 7 (A039982 n)) (A268819 (n + 1))

end

end A290108.P12599456936758978748

/-! ## A290108.P10191398195762988771

`and(A174726(A007304(n+1)), A268819(n+1))`
-/

namespace A290108.P10191398195762988771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174726 (A007304 (n + 1)).toNat) (A268819 (n + 1))

end

end A290108.P10191398195762988771

/-! ## A290108.P6526163997964893856

`and(A168415(n), A268819(n+1))`
-/

namespace A290108.P6526163997964893856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168415 n) (A268819 (n + 1))

end

end A290108.P6526163997964893856

/-!
# A290109: a(1) = 1; for n > 1, a(n) = x1^(x2^(x3^(x4^...))) where x1, x2, ... are the exponents of the primes present (listed from the smallest prime to the largest) in the prime factorization of n.

The programs for A290109, there is no canonical definition to state claims against.
-/

/-! ## A290109.P12815653144851863488

`A067029(n+1)^a(A028234(n+1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A290109.P12815653144851863488
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A067029 (n + 1) : ℝ) ^ (a (A028234 (n + 1) - 1).toNat)

end

end A290109.P12815653144851863488

/-! ## A290109.P1889937799772312510

`A002260(A087179(n+1)+A008795(n))`
-/

namespace A290109.P1889937799772312510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A087179 (n + 1) + A008795 n).toNat

end

end A290109.P1889937799772312510

/-! ## A290109.P17627629516902884447

`or(A019590(A182039(n+1)), A087179(n+1))`
-/

namespace A290109.P17627629516902884447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A019590 (A182039 (n + 1)).toNat) (A087179 (n + 1))

end

end A290109.P17627629516902884447

/-! ## A290109.P8441412815855920604

`A087179(n+1)^A165471(n²)`
-/

namespace A290109.P8441412815855920604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087179 (n + 1) : ℚ) ^ (A165471 (n ^ 2) : ℤ)

end

end A290109.P8441412815855920604

/-! ## A290109.P8378571818929212785

`A269175(A000982(n))+A087179(n+1)`
-/

namespace A290109.P8378571818929212785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269175 (A000982 n).toNat + A087179 (n + 1)

end

end A290109.P8378571818929212785

/-! ## A290109.P18380296851363377232

`A209229(n²+2)+A087179(n+1)`
-/

namespace A290109.P18380296851363377232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (n ^ 2 + 2) + A087179 (n + 1)

end

end A290109.P18380296851363377232

/-! ## A290109.P13945025659093158349

`A087179(n+1)+A033684(A087475(n))`
-/

namespace A290109.P13945025659093158349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (n + 1) + A033684 (A087475 n).toNat

end

end A290109.P13945025659093158349

/-! ## A290109.P13327817789859829948

`gcd(∏[A332842(n)], A087179(n+1))`
-/

namespace A290109.P13327817789859829948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A087179 (n + 1))

end

end A290109.P13327817789859829948

/-! ## A290109.P11668436440424216481

`A087179(gcd(n, A003418(n))+1)`
-/

namespace A290109.P11668436440424216481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (Int.gcd (n : ℤ) (A003418 n) + 1)

end

end A290109.P11668436440424216481

/-! ## A290109.P12872981047121522981

`A137278(A087179(n+1)²+1)`
-/

namespace A290109.P12872981047121522981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137278 (A087179 (n + 1) ^ 2 + 1).toNat

end

end A290109.P12872981047121522981

/-! ## A290109.P14400214727975769567

`A001222(A042950(A087179(n+1)))`
-/

namespace A290109.P14400214727975769567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A042950 (A087179 (n + 1)).toNat).toNat

end

end A290109.P14400214727975769567

/-! ## A290109.P3592540982959360810

`gcd(A087179(n+1), A102456(n))`
-/

namespace A290109.P3592540982959360810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087179 (n + 1)) (A102456 n)

end

end A290109.P3592540982959360810

/-! ## A290109.P751350002725817386

`A087179(A055456(n+2))`
-/

namespace A290109.P751350002725817386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (A055456 (n + 2)).toNat

end

end A290109.P751350002725817386

/-! ## A290109.P800089865269993475

`A269175(n²)+A087179(n+1)`
-/

namespace A290109.P800089865269993475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269175 (n ^ 2) + A087179 (n + 1)

end

end A290109.P800089865269993475

/-! ## A290109.P1456984140120911676

`A087179(A033716(2*n²)+n+1)`
-/

namespace A290109.P1456984140120911676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (A033716 (2 * n ^ 2) + (n + 1 : ℤ)).toNat

end

end A290109.P1456984140120911676

/-! ## A290109.P9899411217049270254

`A007306(round(2^(A087179(n+1)-1)))`
-/

namespace A290109.P9899411217049270254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A087179 (n + 1) - 1 : ℤ))).toNat

end

end A290109.P9899411217049270254

/-! ## A290109.P14765740637413477742

`A087179(n+1)-A008683(2*A064987(n+1))`
-/

namespace A290109.P14765740637413477742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (n + 1) - A008683 (2 * A064987 (n + 1)).toNat

end

end A290109.P14765740637413477742

/-! ## A290109.P17683056011838934604

`A087179(A002024(∑[n+1]-2*n+1)+1)`
-/

namespace A290109.P17683056011838934604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (A002024 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n : ℤ) + 1).toNat + 1).toNat

end

end A290109.P17683056011838934604

/-! ## A290109.P18308326635492085860

`A087179(A002024(∑[n]+2))`
-/

namespace A290109.P18308326635492085860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (A002024 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat

end

end A290109.P18308326635492085860

/-! ## A290109.P5994499820491540075

`or(A087179(n+1), A103451(A000124(n)))`
-/

namespace A290109.P5994499820491540075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087179 (n + 1)) (A103451 (A000124 n).toNat)

end

end A290109.P5994499820491540075

/-!
# A290111: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 643", based on the 5-celled von Neumann neighborhood.

The programs for A290111, the canonical program `A290111.P2110808048869985043` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290111 has offset 0).

The definition of A290111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290111.P2110808048869985043

`∑[10^n]-10%(10^n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290111

/-- `∑[10^n]-10%(10^n)` -/
def P2110808048869985043.Spec : Prop :=
  ∀ n, P2110808048869985043.a n = A290111 n

theorem P2110808048869985043.correct : P2110808048869985043.Spec := by
  intro n
  simp only [A290111]

end A290111

/-! ## A290111.P7872925552026163964

`or(1, A290070(n))`
-/

namespace A290111.P7872925552026163964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290070 n)

end

end A290111.P7872925552026163964

namespace A290111

/-- `or(1, A290070(n))` -/
def P7872925552026163964.Spec : Prop :=
  ∀ n, P7872925552026163964.a n = A290111 n

end A290111

/-! ## A290111.P15692342552659227291

`or(1, A290192(n))`
-/

namespace A290111.P15692342552659227291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290192 n)

end

end A290111.P15692342552659227291

namespace A290111

/-- `or(1, A290192(n))` -/
def P15692342552659227291.Spec : Prop :=
  ∀ n, P15692342552659227291.a n = A290111 n

end A290111

/-! ## A290111.P3541658330544205481

`A290070(n)+A000035(n)`
-/

namespace A290111.P3541658330544205481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290070 n + A000035 n

end

end A290111.P3541658330544205481

namespace A290111

/-- `A290070(n)+A000035(n)` -/
def P3541658330544205481.Spec : Prop :=
  ∀ n, P3541658330544205481.a n = A290111 n

theorem P3541658330544205481.correct : P3541658330544205481.Spec := by
  intro n
  simp only [A290111, Nat.add_sub_cancel, A290111.P3541658330544205481.a, A290111.P2110808048869985043.f1, A290111.P2110808048869985043.a, A000035, A000035.P2023072528413494694.a, A290070, A290070.P6745444455141305829.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A290111

/-! ## A290111.P3894772234153494287

`∑[A286519(n)-A002275(n)]`
-/

namespace A290111.P3894772234153494287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286519 n - A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290111.P3894772234153494287

namespace A290111

/-- `∑[A286519(n)-A002275(n)]` -/
def P3894772234153494287.Spec : Prop :=
  ∀ n, P3894772234153494287.a n = A290111 n

end A290111

/-! ## A290111.P8896199594245271221

`A290070(n)+Δ[A004526(n)]`
-/

namespace A290111.P8896199594245271221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290070 n + (f1 (n + 1) - f1 n)

end

end A290111.P8896199594245271221

namespace A290111

/-- `A290070(n)+Δ[A004526(n)]` -/
def P8896199594245271221.Spec : Prop :=
  ∀ n, P8896199594245271221.a n = A290111 n

end A290111

/-! ## A290111.P11675373738656371445

`A290070(n)+and(1, A088698(n))`
-/

namespace A290111.P11675373738656371445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290070 n + Int.land 1 (A088698 n)

end

end A290111.P11675373738656371445

namespace A290111

/-- `A290070(n)+and(1, A088698(n))` -/
def P11675373738656371445.Spec : Prop :=
  ∀ n, P11675373738656371445.a n = A290111 n

end A290111

/-! ## A290111.P5844893898980090942

`A290192(n)+A000035(A007918(n)+n)`
-/

namespace A290111.P5844893898980090942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290192 n + A000035 (A007918 n + (n : ℤ)).toNat

end

end A290111.P5844893898980090942

namespace A290111

/-- `A290192(n)+A000035(A007918(n)+n)` -/
def P5844893898980090942.Spec : Prop :=
  ∀ n, P5844893898980090942.a n = A290111 n

end A290111

/-! ## A290111.P15079621920007088305

`A147757(n+2)+A000533(n)-A000533(n+1)`
-/

namespace A290111.P15079621920007088305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147757 (n + 2) + (A000533 n - A000533 (n + 1))

end

end A290111.P15079621920007088305

namespace A290111

/-- `A147757(n+2)+A000533(n)-A000533(n+1)` -/
def P15079621920007088305.Spec : Prop :=
  ∀ n, P15079621920007088305.a n = A290111 n

end A290111

/-!
# A290112: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 643", based on the 5-celled von Neumann neighborhood.

The programs for A290112, the canonical program `A290112.P7332499460374383390` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290112 has offset 0).

The definition of A290112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290112.P18274833466178314433

`∑[ogf((1-10x^2+10x^3)/(1-10x))]`
-/

namespace A290112.P18274833466178314433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -10, 10] [1, -10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290112.P18274833466178314433

namespace A290112

/-- `∑[ogf((1-10x^2+10x^3)/(1-10x))]` -/
def P18274833466178314433.Spec : Prop :=
  ∀ n, P18274833466178314433.a n = A290112 n

end A290112

/-! ## A290112.P9456694074603908092

`ogf((1+x-10x^2+10x^4)/(1-10x-x^2+10x^3))`
-/

namespace A290112.P9456694074603908092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -10, 0, 10] [1, -10, -1, 10] n

end

end A290112.P9456694074603908092

namespace A290112

/-- `ogf((1+x-10x^2+10x^4)/(1-10x-x^2+10x^3))` -/
def P9456694074603908092.Spec : Prop :=
  ∀ n, P9456694074603908092.a n = A290112 n

end A290112

/-! ## A290112.P2162389487597248276

`10*(a(n-1)-char[2])+1` with `a(0)=1`
-/

namespace A290112.P2162389487597248276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * (a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) + 1

end

end A290112.P2162389487597248276

namespace A290112

/-- `10*(a(n-1)-char[2])+1` -/
def P2162389487597248276.Spec : Prop :=
  ∀ n, P2162389487597248276.a n = A290112 n

end A290112

/-! ## A290112.P7332499460374383390

`or(1, A267623(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A290112

/-- `or(1, A267623(n))` -/
def P7332499460374383390.Spec : Prop :=
  ∀ n, P7332499460374383390.a n = A290112 n

theorem P7332499460374383390.correct : P7332499460374383390.Spec := by
  intro n
  simp only [A290112]

end A290112

/-! ## A290112.P14718368412876597296

`or(1, ∑[10^n]-A178501(n))`
-/

namespace A290112.P14718368412876597296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A178501 n)

end

end A290112.P14718368412876597296

namespace A290112

/-- `or(1, ∑[10^n]-A178501(n))` -/
def P14718368412876597296.Spec : Prop :=
  ∀ n, P14718368412876597296.a n = A290112 n

end A290112

/-! ## A290112.P2391642819955401682

`A267623(n)+A063524(n)`
-/

namespace A290112.P2391642819955401682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267623 n + A063524 n

end

end A290112.P2391642819955401682

namespace A290112

/-- `A267623(n)+A063524(n)` -/
def P2391642819955401682.Spec : Prop :=
  ∀ n, P2391642819955401682.a n = A290112 n

end A290112

/-! ## A290112.P78068052903229972

`A267623(n)-A159075(n)`
-/

namespace A290112.P78068052903229972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267623 n - A159075 n

end

end A290112.P78068052903229972

namespace A290112

/-- `A267623(n)-A159075(n)` -/
def P78068052903229972.Spec : Prop :=
  ∀ n, P78068052903229972.a n = A290112 n

end A290112

/-! ## A290112.P1842226525674630977

`A267623(n)+char[A221154(n)]`
-/

namespace A290112.P1842226525674630977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221154 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267623 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290112.P1842226525674630977

namespace A290112

/-- `A267623(n)+char[A221154(n)]` -/
def P1842226525674630977.Spec : Prop :=
  ∀ n, P1842226525674630977.a n = A290112 n

end A290112

/-! ## A290112.P1989001029205784968

`A267623(n)+char[A221155(n)]`
-/

namespace A290112.P1989001029205784968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221155 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267623 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290112.P1989001029205784968

namespace A290112

/-- `A267623(n)+char[A221155(n)]` -/
def P1989001029205784968.Spec : Prop :=
  ∀ n, P1989001029205784968.a n = A290112 n

end A290112

/-! ## A290112.P441466142208563283

`A267623(n)+char[A267608(n)]`
-/

namespace A290112.P441466142208563283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267608 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267623 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290112.P441466142208563283

namespace A290112

/-- `A267623(n)+char[A267608(n)]` -/
def P441466142208563283.Spec : Prop :=
  ∀ n, P441466142208563283.a n = A290112 n

end A290112

/-! ## A290112.P11063093362319578048

`A267623(n)+char[A267613(n)]`
-/

namespace A290112.P11063093362319578048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267613 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267623 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290112.P11063093362319578048

namespace A290112

/-- `A267623(n)+char[A267613(n)]` -/
def P11063093362319578048.Spec : Prop :=
  ∀ n, P11063093362319578048.a n = A290112 n

end A290112

/-! ## A290112.P16427778410378986328

`A267623(n)+char[A267622(n)]`
-/

namespace A290112.P16427778410378986328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267622 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267623 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290112.P16427778410378986328

namespace A290112

/-- `A267623(n)+char[A267622(n)]` -/
def P16427778410378986328.Spec : Prop :=
  ∀ n, P16427778410378986328.a n = A290112 n

end A290112

/-! ## A290112.P107745957551188821

`A267623(n)+char[A267674(n)]`
-/

namespace A290112.P107745957551188821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267674 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267623 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290112.P107745957551188821

namespace A290112

/-- `A267623(n)+char[A267674(n)]` -/
def P107745957551188821.Spec : Prop :=
  ∀ n, P107745957551188821.a n = A290112 n

end A290112

/-! ## A290112.P1869979191283068192

`A267623(n)+char[A267775(n)]`
-/

namespace A290112.P1869979191283068192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267775 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267623 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290112.P1869979191283068192

namespace A290112

/-- `A267623(n)+char[A267775(n)]` -/
def P1869979191283068192.Spec : Prop :=
  ∀ n, P1869979191283068192.a n = A290112 n

end A290112

/-! ## A290112.P8202166672374029305

`A267623(n)+char[A287384(n)]`
-/

namespace A290112.P8202166672374029305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287384 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267623 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290112.P8202166672374029305

namespace A290112

/-- `A267623(n)+char[A287384(n)]` -/
def P8202166672374029305.Spec : Prop :=
  ∀ n, P8202166672374029305.a n = A290112 n

end A290112

/-! ## A290112.P8542740497862702366

`A267623(n)+A000007(A008611(n))`
-/

namespace A290112.P8542740497862702366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267623 n + A000007 (A008611 n).toNat

end

end A290112.P8542740497862702366

namespace A290112

/-- `A267623(n)+A000007(A008611(n))` -/
def P8542740497862702366.Spec : Prop :=
  ∀ n, P8542740497862702366.a n = A290112 n

end A290112

/-! ## A290112.P14378575237975490097

`A267623(n)+A007814(A008578(n+1))`
-/

namespace A290112.P14378575237975490097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267623 n + A007814 (A008578 (n + 1)).toNat

end

end A290112.P14378575237975490097

namespace A290112

/-- `A267623(n)+A007814(A008578(n+1))` -/
def P14378575237975490097.Spec : Prop :=
  ∀ n, P14378575237975490097.a n = A290112 n

end A290112

/-! ## A290112.P1505148422901249731

`A267623(n)+A290114(n)-A083329(n)`
-/

namespace A290112.P1505148422901249731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267623 n + (A290114 n - A083329 n)

end

end A290112.P1505148422901249731

namespace A290112

/-- `A267623(n)+A290114(n)-A083329(n)` -/
def P1505148422901249731.Spec : Prop :=
  ∀ n, P1505148422901249731.a n = A290112 n

end A290112

/-! ## A290112.P11579834608659280880

`A267623(n)+A290114(n)-A266550(n+2)`
-/

namespace A290112.P11579834608659280880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267623 n + (A290114 n - A266550 (n + 2))

end

end A290112.P11579834608659280880

namespace A290112

/-- `A267623(n)+A290114(n)-A266550(n+2)` -/
def P11579834608659280880.Spec : Prop :=
  ∀ n, P11579834608659280880.a n = A290112 n

end A290112

/-!
# A290113: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 643", based on the 5-celled von Neumann neighborhood.

The programs for A290113, the canonical program `A290113.P12940986176026262881` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290113 has offset 0).

The definition of A290113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290113.P12940986176026262881

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=13`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290113

/-- `3*a(n-1)-2*a(n-2)` -/
def P12940986176026262881.Spec : Prop :=
  ∀ n, P12940986176026262881.a n = A290113 n

theorem P12940986176026262881.correct : P12940986176026262881.Spec := by
  intro n
  simp only [A290113]

end A290113

/-! ## A290113.P15253700070543244411

`∑[2^(n-char[2])]`
-/

namespace A290113.P15253700070543244411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290113.P15253700070543244411

namespace A290113

/-- `∑[2^(n-char[2])]` -/
def P15253700070543244411.Spec : Prop :=
  ∀ n, P15253700070543244411.a n = (A290113 n : ℚ)

end A290113

/-! ## A290113.P1059838531056977271

`ogf((1-2x^2+4x^3)/(1-3x+2x^2))`
-/

namespace A290113.P1059838531056977271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, 4] [1, -3, 2] n

end

end A290113.P1059838531056977271

namespace A290113

/-- `ogf((1-2x^2+4x^3)/(1-3x+2x^2))` -/
def P1059838531056977271.Spec : Prop :=
  ∀ n, P1059838531056977271.a n = A290113 n

end A290113

/-! ## A290113.P2240116063093391494

`abs(xor(2^n-3, 2^n))`
-/

namespace A290113.P2240116063093391494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((2 ^ n : ℤ) - 3) (2 ^ n : ℤ)|

end

end A290113.P2240116063093391494

namespace A290113

/-- `abs(xor(2^n-3, 2^n))` -/
def P2240116063093391494.Spec : Prop :=
  ∀ n, P2240116063093391494.a n = A290113 n

end A290113

/-! ## A290113.P10828448532661777264

`∑[2^n]-2%(n+1)`
-/

namespace A290113.P10828448532661777264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((2 % (n + 1) : ℕ) : ℤ)

end

end A290113.P10828448532661777264

namespace A290113

/-- `∑[2^n]-2%(n+1)` -/
def P10828448532661777264.Spec : Prop :=
  ∀ n, P10828448532661777264.a n = A290113 n

end A290113

/-! ## A290113.P1573609644604054439

`2*a(n-1)+3` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A290113.P1573609644604054439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  2 * a (n - 1) + 3

end

end A290113.P1573609644604054439

namespace A290113

/-- `2*a(n-1)+3` -/
def P1573609644604054439.Spec : Prop :=
  ∀ n, (P1573609644604054439.a n : ℤ) = A290113 n

end A290113

/-! ## A290113.P16086193161323383785

`lcm(2, a(n-1))+3` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A290113.P16086193161323383785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  Nat.lcm 2 (a (n - 1)) + 3

end

end A290113.P16086193161323383785

namespace A290113

/-- `lcm(2, a(n-1))+3` -/
def P16086193161323383785.Spec : Prop :=
  ∀ n, (P16086193161323383785.a n : ℤ) = A290113 n

end A290113

/-! ## A290113.P15383530085355283007

`a(n-1)+2^n` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A290113.P15383530085355283007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  a (n - 1) + 2 ^ n

end

end A290113.P15383530085355283007

namespace A290113

/-- `a(n-1)+2^n` -/
def P15383530085355283007.Spec : Prop :=
  ∀ n, (P15383530085355283007.a n : ℤ) = A290113 n

end A290113

/-! ## A290113.P16072927935451644524

`or(2^n, a(n-1))` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A290113.P16072927935451644524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  Nat.lor (2 ^ n) (a (n - 1))

end

end A290113.P16072927935451644524

namespace A290113

/-- `or(2^n, a(n-1))` -/
def P16072927935451644524.Spec : Prop :=
  ∀ n, (P16072927935451644524.a n : ℤ) = A290113 n

end A290113

/-! ## A290113.P18274701690071565095

`xor(2^n, a(n-1))` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A290113.P18274701690071565095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  Nat.xor (2 ^ n) (a (n - 1))

end

end A290113.P18274701690071565095

namespace A290113

/-- `xor(2^n, a(n-1))` -/
def P18274701690071565095.Spec : Prop :=
  ∀ n, (P18274701690071565095.a n : ℤ) = A290113 n

end A290113

/-! ## A290113.P5526494158826402554

`5-2*(1-a(n-1))` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A290113.P5526494158826402554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  5 - 2 * (1 - a (n - 1))

end

end A290113.P5526494158826402554

namespace A290113

/-- `5-2*(1-a(n-1))` -/
def P5526494158826402554.Spec : Prop :=
  ∀ n, P5526494158826402554.a n = A290113 n

end A290113

/-! ## A290113.P4341635670185306534

`or(abs(2-n), 2^(n+1))-(n+1)`
-/

namespace A290113.P4341635670185306534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |2 - (n : ℤ)| (2 ^ (n + 1) : ℤ) - (n + 1 : ℤ)

end

end A290113.P4341635670185306534

namespace A290113

/-- `or(abs(2-n), 2^(n+1))-(n+1)` -/
def P4341635670185306534.Spec : Prop :=
  ∀ n, P4341635670185306534.a n = A290113 n

end A290113

/-! ## A290113.P10272124444192932319

`floor(a(n-1)+a(n-1)+3)` with `a(0)=1, a(1)=3, a(2)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A290113.P10272124444192932319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  a (n - 1) + (a (n - 1) + 3)

end

end A290113.P10272124444192932319

namespace A290113

/-- `floor(a(n-1)+a(n-1)+3)` -/
def P10272124444192932319.Spec : Prop :=
  ∀ n, (P10272124444192932319.a n : ℤ) = A290113 n

end A290113

/-! ## A290113.P12466444028416416137

`or(1, A091270(n))`
-/

namespace A290113.P12466444028416416137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A091270 n)

end

end A290113.P12466444028416416137

namespace A290113

/-- `or(1, A091270(n))` -/
def P12466444028416416137.Spec : Prop :=
  ∀ n, P12466444028416416137.a n = A290113 n

end A290113

/-! ## A290113.P3392491923708575148

`or(1, A290073(n))`
-/

namespace A290113.P3392491923708575148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290073 n)

end

end A290113.P3392491923708575148

namespace A290113

/-- `or(1, A290073(n))` -/
def P3392491923708575148.Spec : Prop :=
  ∀ n, P3392491923708575148.a n = A290113 n

end A290113

/-! ## A290113.P15306100104642281980

`or(1, A290194(n))`
-/

namespace A290113.P15306100104642281980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290194 n)

end

end A290113.P15306100104642281980

namespace A290113

/-- `or(1, A290194(n))` -/
def P15306100104642281980.Spec : Prop :=
  ∀ n, P15306100104642281980.a n = A290113 n

end A290113

/-! ## A290113.P13813331979638552850

`2*A296965(n)+1`
-/

namespace A290113.P13813331979638552850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A296965 n + 1

end

end A290113.P13813331979638552850

namespace A290113

/-- `2*A296965(n)+1` -/
def P13813331979638552850.Spec : Prop :=
  ∀ n, P13813331979638552850.a n = A290113 n

end A290113

/-! ## A290113.P10793362644506371976

`∑[A078485(n+1)]+n`
-/

namespace A290113.P10793362644506371976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A290113.P10793362644506371976

namespace A290113

/-- `∑[A078485(n+1)]+n` -/
def P10793362644506371976.Spec : Prop :=
  ∀ n, P10793362644506371976.a n = A290113 n

end A290113

/-! ## A290113.P2262618393098132736

`A052515(n+1)+Δ[n²]`
-/

namespace A290113.P2262618393098132736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052515 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A290113.P2262618393098132736

namespace A290113

/-- `A052515(n+1)+Δ[n²]` -/
def P2262618393098132736.Spec : Prop :=
  ∀ n, P2262618393098132736.a n = A290113 n

end A290113

/-! ## A290113.P12642590770775903218

`2^(n+1)-A290858(n+2)`
-/

namespace A290113.P12642590770775903218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A290858 (n + 2)

end

end A290113.P12642590770775903218

namespace A290113

/-- `2^(n+1)-A290858(n+2)` -/
def P12642590770775903218.Spec : Prop :=
  ∀ n, P12642590770775903218.a n = A290113 n

end A290113

/-!
# A290114: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 643", based on the 5-celled von Neumann neighborhood.

The programs for A290114, the canonical program `A290114.P18261043994628863072` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290114 has offset 0).

The definition of A290114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290114.P18261043994628863072

`2*a(n-1)+1` with `a(0)=1, a(1)=3, a(2)=5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290114

/-- `2*a(n-1)+1` -/
def P18261043994628863072.Spec : Prop :=
  ∀ n, (P18261043994628863072.a n : ℤ) = A290114 n

theorem P18261043994628863072.correct : P18261043994628863072.Spec := by
  intro n
  simp only [A290114]

end A290114

/-! ## A290114.P17716741224984202364

`ogf((1-2x^2+2x^3)/(1-3x+2x^2))`
-/

namespace A290114.P17716741224984202364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, 2] [1, -3, 2] n

end

end A290114.P17716741224984202364

namespace A290114

/-- `ogf((1-2x^2+2x^3)/(1-3x+2x^2))` -/
def P17716741224984202364.Spec : Prop :=
  ∀ n, P17716741224984202364.a n = A290114 n

end A290114

/-! ## A290114.P3565025908449888580

`lcm(2, a(n-1))+1` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A290114.P3565025908449888580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  Nat.lcm 2 (a (n - 1)) + 1

end

end A290114.P3565025908449888580

namespace A290114

/-- `lcm(2, a(n-1))+1` -/
def P3565025908449888580.Spec : Prop :=
  ∀ n, (P3565025908449888580.a n : ℤ) = A290114 n

end A290114

/-! ## A290114.P6670112824408957660

`or(1, 2*a(n-1))` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A290114.P6670112824408957660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  Nat.lor 1 (2 * a (n - 1))

end

end A290114.P6670112824408957660

namespace A290114

/-- `or(1, 2*a(n-1))` -/
def P6670112824408957660.Spec : Prop :=
  ∀ n, (P6670112824408957660.a n : ℤ) = A290114 n

end A290114

/-! ## A290114.P17037991958422496825

`xor(1, 2*a(n-1))` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A290114.P17037991958422496825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  Nat.xor 1 (2 * a (n - 1))

end

end A290114.P17037991958422496825

namespace A290114

/-- `xor(1, 2*a(n-1))` -/
def P17037991958422496825.Spec : Prop :=
  ∀ n, (P17037991958422496825.a n : ℤ) = A290114 n

end A290114

/-! ## A290114.P7564958713929617066

`∑[2*a(n-1)]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=6`
-/

namespace A290114.P7564958713929617066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 6] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290114.P7564958713929617066

namespace A290114

/-- `∑[2*a(n-1)]` -/
def P7564958713929617066.Spec : Prop :=
  ∀ n, (P7564958713929617066.a n : ℤ) = A290114 n

end A290114

/-! ## A290114.P5610503467330422980

`2*ceil(3*2^(n-2))-1`
-/

namespace A290114.P5610503467330422980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈3 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉ - 1

end

end A290114.P5610503467330422980

namespace A290114

/-- `2*ceil(3*2^(n-2))-1` -/
def P5610503467330422980.Spec : Prop :=
  ∀ n, P5610503467330422980.a n = A290114 n

end A290114

/-! ## A290114.P3685571736576000923

`or(1, A055010(n))`
-/

namespace A290114.P3685571736576000923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A055010 n)

end

end A290114.P3685571736576000923

namespace A290114

/-- `or(1, A055010(n))` -/
def P3685571736576000923.Spec : Prop :=
  ∀ n, P3685571736576000923.a n = A290114 n

end A290114

/-! ## A290114.P4393334346867835912

`or(1, A083329(n))`
-/

namespace A290114.P4393334346867835912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A083329 n)

end

end A290114.P4393334346867835912

namespace A290114

/-- `or(1, A083329(n))` -/
def P4393334346867835912.Spec : Prop :=
  ∀ n, P4393334346867835912.a n = A290114 n

end A290114

/-! ## A290114.P3397959114085789062

`or(1, A369491(n))`
-/

namespace A290114.P3397959114085789062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A369491 n)

end

end A290114.P3397959114085789062

namespace A290114

/-- `or(1, A369491(n))` -/
def P3397959114085789062.Spec : Prop :=
  ∀ n, P3397959114085789062.a n = A290114 n

end A290114

/-! ## A290114.P17900588145694009507

`or(1, A296953(n)+1)`
-/

namespace A290114.P17900588145694009507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A296953 n + 1)

end

end A290114.P17900588145694009507

namespace A290114

/-- `or(1, A296953(n)+1)` -/
def P17900588145694009507.Spec : Prop :=
  ∀ n, P17900588145694009507.a n = A290114 n

end A290114

/-! ## A290114.P12766856645370840169

`or(1, A003945(n)-1)`
-/

namespace A290114.P12766856645370840169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003945 n - 1)

end

end A290114.P12766856645370840169

namespace A290114

/-- `or(1, A003945(n)-1)` -/
def P12766856645370840169.Spec : Prop :=
  ∀ n, P12766856645370840169.a n = A290114 n

end A290114

/-! ## A290114.P4076323289545836565

`or(1, A042950(n)-1)`
-/

namespace A290114.P4076323289545836565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A042950 n - 1)

end

end A290114.P4076323289545836565

namespace A290114

/-- `or(1, A042950(n)-1)` -/
def P4076323289545836565.Spec : Prop :=
  ∀ n, P4076323289545836565.a n = A290114 n

end A290114

/-! ## A290114.P13137410849669037003

`or(1, A266550(n+2))`
-/

namespace A290114.P13137410849669037003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A266550 (n + 2))

end

end A290114.P13137410849669037003

namespace A290114

/-- `or(1, A266550(n+2))` -/
def P13137410849669037003.Spec : Prop :=
  ∀ n, P13137410849669037003.a n = A290114 n

end A290114

/-! ## A290114.P7237805276662789297

`xor(1, A058764(n)-2)`
-/

namespace A290114.P7237805276662789297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A058764 n - 2)

end

end A290114.P7237805276662789297

namespace A290114

/-- `xor(1, A058764(n)-2)` -/
def P7237805276662789297.Spec : Prop :=
  ∀ n, P7237805276662789297.a n = A290114 n

end A290114

/-! ## A290114.P13753545499376456516

`or(1, ∑[A122391(n+1)])`
-/

namespace A290114.P13753545499376456516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290114.P13753545499376456516

namespace A290114

/-- `or(1, ∑[A122391(n+1)])` -/
def P13753545499376456516.Spec : Prop :=
  ∀ n, P13753545499376456516.a n = A290114 n

end A290114

/-! ## A290114.P10333149049551477056

`or(1, A103204(n+1)-2)`
-/

namespace A290114.P10333149049551477056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A103204 (n + 1) - 2)

end

end A290114.P10333149049551477056

namespace A290114

/-- `or(1, A103204(n+1)-2)` -/
def P10333149049551477056.Spec : Prop :=
  ∀ n, P10333149049551477056.a n = A290114 n

end A290114

/-! ## A290114.P17117860340813095218

`or(1, A074323(2*n)-1)`
-/

namespace A290114.P17117860340813095218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074323 (2 * n) - 1)

end

end A290114.P17117860340813095218

namespace A290114

/-- `or(1, A074323(2*n)-1)` -/
def P17117860340813095218.Spec : Prop :=
  ∀ n, P17117860340813095218.a n = A290114 n

end A290114

/-! ## A290114.P3538697477710822500

`or(1, A029744(2*n+1)-1)`
-/

namespace A290114.P3538697477710822500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A029744 (2 * n + 1) - 1)

end

end A290114.P3538697477710822500

namespace A290114

/-- `or(1, A029744(2*n+1)-1)` -/
def P3538697477710822500.Spec : Prop :=
  ∀ n, P3538697477710822500.a n = A290114 n

end A290114

/-! ## A290114.P5843031913099207053

`xor(∑[floor(2^(n-1))], A111286(n+1))`
-/

namespace A290114.P5843031913099207053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A111286 (n + 1))

end

end A290114.P5843031913099207053

namespace A290114

/-- `xor(∑[floor(2^(n-1))], A111286(n+1))` -/
def P5843031913099207053.Spec : Prop :=
  ∀ n, P5843031913099207053.a n = A290114 n

end A290114

/-!
# A290116: Primes of the form k! / 2 - 1.

The programs for A290116, there is no canonical definition to state claims against.
-/

/-! ## A290116.P16025338453622369305

`(A082671(n+1)!-2)/2`
-/

namespace A290116.P16025338453622369305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (A082671 (n + 1)).toNat : ℤ) - 2 : ℚ) / 2

end

end A290116.P16025338453622369305

/-! ## A290116.P13916769015601696822

`A139172(A082671(n+1))`
-/

namespace A290116.P13916769015601696822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139172 (A082671 (n + 1)).toNat

end

end A290116.P13916769015601696822

/-!
# A290117: Primes of the form k! / 4 - 1.

The programs for A290117, there is no canonical definition to state claims against.
-/

/-! ## A290117.P16221527579253744759

`(A139199(n+1)!-4)/4`
-/

namespace A290117.P16221527579253744759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (A139199 (n + 1)).toNat : ℤ) - 4 : ℚ) / 4

end

end A290117.P16221527579253744759

/-! ## A290117.P13820810372040280430

`A139174(A139199(n+1))`
-/

namespace A290117.P13820810372040280430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139174 (A139199 (n + 1)).toNat

end

end A290117.P13820810372040280430

/-! ## A290117.P804945322813977486

`A139151(A139199(n+1))-A239374(n+2)`
-/

namespace A290117.P804945322813977486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139151 (A139199 (n + 1)).toNat - A239374 (n + 2)

end

end A290117.P804945322813977486

/-!
# A290119: Primes of the form k!/6 - 1.

The programs for A290119, there is no canonical definition to state claims against.
-/

/-! ## A290119.P985935303195455629

`A139176(A139201(n+1))`
-/

namespace A290119.P985935303195455629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139176 (A139201 (n + 1)).toNat

end

end A290119.P985935303195455629

/-!
# A290120: 

The programs for A290120, there is no canonical definition to state claims against.
-/

/-! ## A290120.P5713257246076491223

`A139177(∪[A139193(n+1), A139202(n+1)])`
-/

namespace A290120.P5713257246076491223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139202 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139177 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A290120.P5713257246076491223

/-!
# A290121: Primes of the form k!/8 - 1.

The programs for A290121, there is no canonical definition to state claims against.
-/

/-! ## A290121.P16891633290837875106

`A139183(A139203(n+1))`
-/

namespace A290121.P16891633290837875106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139183 (A139203 (n + 1)).toNat

end

end A290121.P16891633290837875106

/-!
# A290123: Primes of the form k!/10 - 1.

The programs for A290123, there is no canonical definition to state claims against.
-/

/-! ## A290123.P8913559071593598745

`A139185(A139205(n+1))`
-/

namespace A290123.P8913559071593598745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139185 (A139205 (n + 1)).toNat

end

end A290123.P8913559071593598745

/-!
# A290124: a(n) = a(n-1) + 12*a(n-2) with a(1) = 1 and a(2) = 2.

The programs for A290124, the canonical program `A290124.P7662643301865949452` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290124 has offset 1).

The definition of A290124 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+12*a(n-2)` (program `A290124.P7662643301865949452`, by `A290124.P7662643301865949452.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A290124.P7662643301865949452

`a(n-1)+12*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290124

/-- `a(n-1)+12*a(n-2)` -/
def P7662643301865949452.Spec : Prop :=
  ∀ n, (P7662643301865949452.a n : ℤ) = A290124 (n + 1)

theorem P7662643301865949452.correct : P7662643301865949452.Spec := by
  intro n
  simp only [A290124, Nat.add_sub_cancel]

end A290124

/-! ## A290124.P12682508765148219067

`5/28*4^(n+1)-2/21*(-3)^(n+1)`
-/

namespace A290124.P12682508765148219067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 28 * (4 ^ (n + 1) : ℚ) - (2 : ℚ) / 21 * ((-3) ^ (n + 1) : ℚ)

end

end A290124.P12682508765148219067

namespace A290124

/-- `5/28*4^(n+1)-2/21*(-3)^(n+1)` -/
def P12682508765148219067.Spec : Prop :=
  ∀ n, P12682508765148219067.a n = (A290124 (n + 1) : ℚ)

theorem P12682508765148219067.correct : P12682508765148219067.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A290124, Nat.add_sub_cancel, A290124.P12682508765148219067.a, A290124.P7662643301865949452.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A290124, Nat.add_sub_cancel, A290124.P12682508765148219067.a, A290124.P7662643301865949452.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A290124

/-! ## A290124.P885341105024087323

`ogf((1+x)/(1-x-12x^2))`
-/

namespace A290124.P885341105024087323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -1, -12] n

end

end A290124.P885341105024087323

namespace A290124

/-- `ogf((1+x)/(1-x-12x^2))` -/
def P885341105024087323.Spec : Prop :=
  ∀ n, P885341105024087323.a n = A290124 (n + 1)

end A290124

/-!
# A290125: Square array read by antidiagonals T(n,k) = sigma(k + n) - sigma(k) - n, with n>=0 and k>=1.

The programs for A290125, the canonical program `A290125.P16787224858347959595` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290125 has offset 0).

The definition of A290125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290125.P16787224858347959595

`A001065(A002024(n+1))-A001065(A004736(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A290125

/-- `A001065(A002024(n+1))-A001065(A004736(n+1))` -/
def P16787224858347959595.Spec : Prop :=
  ∀ n, P16787224858347959595.a n = A290125 n

theorem P16787224858347959595.correct : P16787224858347959595.Spec := by
  intro n
  simp only [A290125]

end A290125

/-! ## A290125.P7646538022955286908

`A341216(n+1)-A341219(A008290(n))`
-/

namespace A290125.P7646538022955286908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341216 (n + 1) - A341219 (A008290 n).toNat

end

end A290125.P7646538022955286908

namespace A290125

/-- `A341216(n+1)-A341219(A008290(n))` -/
def P7646538022955286908.Spec : Prop :=
  ∀ n, P7646538022955286908.a n = A290125 n

end A290125

/-! ## A290125.P10633387739057883512

`A350942(A101024(n)+A006927(n+1))`
-/

namespace A290125.P10633387739057883512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350942 (A101024 n + A006927 (n + 1)).toNat

end

end A290125.P10633387739057883512

namespace A290125

/-- `A350942(A101024(n)+A006927(n+1))` -/
def P10633387739057883512.Spec : Prop :=
  ∀ n, P10633387739057883512.a n = A290125 n

end A290125

/-!
# A290126: Least k such that the sum of the n greatest divisors of k is a prime number.

The programs for A290126, there is no canonical definition to state claims against.
-/

/-! ## A290126.P14982424736033504799

`A346560(A296553(n+1)+2)`
-/

namespace A290126.P14982424736033504799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346560 (A296553 (n + 1) + 2).toNat

end

end A290126.P14982424736033504799

/-! ## A290126.P3280649574008260569

`A350780(A008769(n)^A003984(n))`
-/

namespace A290126.P3280649574008260569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350780 (SequenceMachineLib.roundAway ((A008769 n : ℚ) ^ (A003984 n : ℤ))).toNat

end

end A290126.P3280649574008260569

/-!
# A290127: a(n) = (1/5760)*(n + 5)*(15*n^7 + 225*n^6 + 1265*n^5 + 3707*n^4 + 7120*n^3 + 4900*n^2 - 6480*n + 27648).

The programs for A290127, there is no canonical definition to state claims against.
-/

/-! ## A290127.P125629605835640134

`A290053(A167499(n+3))`
-/

namespace A290127.P125629605835640134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290053 (A167499 (n + 3)).toNat

end

end A290127.P125629605835640134

/-! ## A290127.P16154014069128348669

`A290053(A155212(n)+13)`
-/

namespace A290127.P16154014069128348669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290053 (A155212 n + 13).toNat

end

end A290127.P16154014069128348669

/-!
# A290130: Numbers k > 0 such that either 3*k+4, k-2, k+2, n+k or 3*k+5, k-1, k+1, k+5 are all primes.

The programs for A290130, there is no canonical definition to state claims against.
-/

/-! ## A290130.P8310480291217662974

`floor(A309354(n+1)/3)-1`
-/

namespace A290130.P8310480291217662974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A309354 (n + 1) : ℚ) / 3⌋ - 1

end

end A290130.P8310480291217662974

/-! ## A290130.P2825247625248121622

`A126760(A309354(n+1))-2`
-/

namespace A290130.P2825247625248121622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A309354 (n + 1)).toNat - 2

end

end A290130.P2825247625248121622

/-! ## A290130.P4403653375652787718

`A093390(A309354(n+1))`
-/

namespace A290130.P4403653375652787718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093390 (A309354 (n + 1)).toNat

end

end A290130.P4403653375652787718

/-! ## A290130.P1955309599178106952

`A002264(A309354(n+1)-3)`
-/

namespace A290130.P1955309599178106952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A309354 (n + 1) - 3).toNat

end

end A290130.P1955309599178106952

/-! ## A290130.P11771489496827854879

`A008620(A309354(n+1)-6)`
-/

namespace A290130.P11771489496827854879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A309354 (n + 1) - 6).toNat

end

end A290130.P11771489496827854879

/-!
# A290131: Number of regions in a regular drawing of the complete bipartite graph K_{n,n}.

The programs for A290131, there is no canonical definition to state claims against.
-/

/-! ## A290131.P17608163002362262524

`A141255(n+1)/2-n`
-/

namespace A290131.P17608163002362262524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141255 (n + 1) : ℚ) / 2 - (n : ℚ)

end

end A290131.P17608163002362262524

/-! ## A290131.P9870062393887654039

`2*(A332612(n+1)+n²)`
-/

namespace A290131.P9870062393887654039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332612 (n + 1) + (n ^ 2 : ℤ))

end

end A290131.P9870062393887654039

/-! ## A290131.P14225293778277285764

`n²+A344993(n)/2-n`
-/

namespace A290131.P14225293778277285764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (A344993 n : ℚ) / 2 - (n : ℚ)

end

end A290131.P14225293778277285764

/-! ## A290131.P14848776642070938586

`(A114146(n+1)-2)/4-n`
-/

namespace A290131.P14848776642070938586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114146 (n + 1) - 2 : ℚ) / 4 - (n : ℚ)

end

end A290131.P14848776642070938586

/-! ## A290131.P14846766306187468134

`(A344993(n)+A001105(n))/2-n`
-/

namespace A290131.P14846766306187468134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344993 n + A001105 n : ℚ) / 2 - (n : ℚ)

end

end A290131.P14846766306187468134

/-! ## A290131.P1241895060685049366

`floor(A114043(n+1)/2-n)`
-/

namespace A290131.P1241895060685049366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A114043 (n + 1) : ℚ) / 2 - (n : ℚ)⌋

end

end A290131.P1241895060685049366

/-! ## A290131.P8102210680898006099

`(A114043(n+1)-A005408(n))/2`
-/

namespace A290131.P8102210680898006099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114043 (n + 1) - A005408 n : ℚ) / 2

end

end A290131.P8102210680898006099

/-! ## A290131.P14211428744698647269

`A115005(n+1)-n`
-/

namespace A290131.P14211428744698647269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115005 (n + 1) - (n : ℤ)

end

end A290131.P14211428744698647269

/-! ## A290131.P12048131651641846225

`A306302(n)-2*n`
-/

namespace A290131.P12048131651641846225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306302 n - (2 * n : ℤ)

end

end A290131.P12048131651641846225

/-! ## A290131.P17062376416982168947

`A141255(n+1)-A306302(n)`
-/

namespace A290131.P17062376416982168947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141255 (n + 1) - A306302 n

end

end A290131.P17062376416982168947

/-! ## A290131.P16129777996386921152

`A001489(n)+A306302(n)-n`
-/

namespace A290131.P16129777996386921152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (A306302 n - (n : ℤ))

end

end A290131.P16129777996386921152

/-! ## A290131.P6270785395104771039

`A331771(n+1)/4-n`
-/

namespace A290131.P6270785395104771039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331771 (n + 1) : ℚ) / 4 - (n : ℚ)

end

end A290131.P6270785395104771039

/-! ## A290131.P2149773539733465542

`2*A331754(n+1)`
-/

namespace A290131.P2149773539733465542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331754 (n + 1)

end

end A290131.P2149773539733465542

/-! ## A290131.P8605244697993257856

`2*(A331756(n)-n)`
-/

namespace A290131.P8605244697993257856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A331756 n - (n : ℤ))

end

end A290131.P8605244697993257856

/-! ## A290131.P2877416246307135785

`A331754(n+1)+A331756(n)-n`
-/

namespace A290131.P2877416246307135785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331754 (n + 1) + (A331756 n - (n : ℤ))

end

end A290131.P2877416246307135785

/-! ## A290131.P4165359784998247165

`A290132(n+1)+1-A331755(n+1)`
-/

namespace A290131.P4165359784998247165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290132 (n + 1) + (1 - A331755 (n + 1))

end

end A290131.P4165359784998247165

/-! ## A290131.P13891479575380452817

`A114043(n+1)+A159065(n+1)-A290132(n+1)`
-/

namespace A290131.P13891479575380452817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114043 (n + 1) + (A159065 (n + 1) - A290132 (n + 1))

end

end A290131.P13891479575380452817

/-!
# A290132: The number of edges in a graph induced by a regular drawing of K_{n,n}.

The programs for A290132, there is no canonical definition to state claims against.
-/

/-! ## A290132.P13299652097548554954

`2*(n+1)+A290131(n+1)+A159065(n+1)-1`
-/

namespace A290132.P13299652097548554954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A290131 (n + 1) + A159065 (n + 1) - 1

end

end A290132.P13299652097548554954

/-! ## A290132.P4912783113208831931

`A159065(n+1)+A306302(n)+1`
-/

namespace A290132.P4912783113208831931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159065 (n + 1) + (A306302 n + 1)

end

end A290132.P4912783113208831931

/-! ## A290132.P8825794431197646820

`A290131(n+1)+A331755(n+1)-1`
-/

namespace A290132.P8825794431197646820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290131 (n + 1) + (A331755 (n + 1) - 1)

end

end A290132.P8825794431197646820

/-! ## A290132.P4384265385298773483

`n+1+A159065(n+1)+A115005(n+1)`
-/

namespace A290132.P4384265385298773483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A159065 (n + 1) + A115005 (n + 1))

end

end A290132.P4384265385298773483

/-! ## A290132.P7365880930297377202

`A115005(n+1)+A331755(n+1)-(n+1)`
-/

namespace A290132.P7365880930297377202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115005 (n + 1) + (A331755 (n + 1) - (n + 1 : ℤ))

end

end A290132.P7365880930297377202

/-! ## A290132.P3603718530517221746

`A114043(n+1)+A159065(n+1)-A290131(n+1)`
-/

namespace A290132.P3603718530517221746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114043 (n + 1) + (A159065 (n + 1) - A290131 (n + 1))

end

end A290132.P3603718530517221746

/-!
# A290133: Number of unique X-rays of n X n binary matrices with exactly n ones.

The programs for A290133, there is no canonical definition to state claims against.
-/

/-! ## A290133.P9684413822872844115

`A022567(A028310(n))-1`
-/

namespace A290133.P9684413822872844115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022567 (A028310 n).toNat - 1

end

end A290133.P9684413822872844115

/-! ## A290133.P11528899814723387345

`A057428(n)+A022567(n)`
-/

namespace A290133.P11528899814723387345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A022567 n

end

end A290133.P11528899814723387345

/-! ## A290133.P7758134693911576477

`A022567(n)-A057427(n)`
-/

namespace A290133.P7758134693911576477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022567 n - A057427 n

end

end A290133.P7758134693911576477

/-! ## A290133.P12446842990112125676

`A022567(A000007(n)+n)-1`
-/

namespace A290133.P12446842990112125676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022567 (A000007 n + (n : ℤ)).toNat - 1

end

end A290133.P12446842990112125676

/-! ## A290133.P18311672717020817439

`A022567(n)-(1-A000007(n))`
-/

namespace A290133.P18311672717020817439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022567 n - (1 - A000007 n)

end

end A290133.P18311672717020817439

/-! ## A290133.P14484341502187849182

`A022567(A004277(n)-n)-1`
-/

namespace A290133.P14484341502187849182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022567 (A004277 n - (n : ℤ)).toNat - 1

end

end A290133.P14484341502187849182

/-! ## A290133.P14405689605479756477

`A022567(n)-(1-A000122(n))²`
-/

namespace A290133.P14405689605479756477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022567 n - (1 - A000122 n) ^ 2

end

end A290133.P14405689605479756477

/-! ## A290133.P6249606192947989930

`A022567(n)-A000040(n+1)%2`
-/

namespace A290133.P6249606192947989930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022567 n - Int.tmod (A000040 (n + 1)) 2

end

end A290133.P6249606192947989930

/-! ## A290133.P8505953061492588408

`A022567(n)-ceil(n/A087373(n+1))`
-/

namespace A290133.P8505953061492588408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022567 n - ⌈(n : ℚ) / (A087373 (n + 1) : ℚ)⌉

end

end A290133.P8505953061492588408

/-! ## A290133.P15344604015942065469

`A022567(n)-A199121(C(2, A022567(n)))`
-/

namespace A290133.P15344604015942065469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022567 n - A199121 (Nat.choose 2 (A022567 n).toNat)

end

end A290133.P15344604015942065469

/-! ## A290133.P18013132024001636104

`A022567(n)-A000593(a(A000122(n+1)))` with `a(0)=1`
-/

namespace A290133.P18013132024001636104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022567 n - A000593 (a (A000122 (n + 1)).toNat).toNat

end

end A290133.P18013132024001636104

/-!
# A290134: Number of unique X-rays of n X n binary matrices with exactly floor(n^2/2) ones.

The programs for A290134, there is no canonical definition to state claims against.
-/

/-! ## A290134.P16028323944844248459

`A008620(∑[A131428(n)])`
-/

namespace A290134.P16028323944844248459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A290134.P16028323944844248459

/-! ## A290134.P14181126840602797996

`A248231(A398110(n+1))`
-/

namespace A290134.P14181126840602797996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A398110 (n + 1)).toNat

end

end A290134.P14181126840602797996

/-! ## A290134.P14408049358910570680

`A002264(∑[A131428(n)])+1`
-/

namespace A290134.P14408049358910570680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A290134.P14408049358910570680

/-! ## A290134.P6854605291050332924

`A008620(∑[A068875(n)]-n)`
-/

namespace A290134.P6854605291050332924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A290134.P6854605291050332924

/-! ## A290134.P3623519969637025017

`A175070(A309861(n))+A148328(n)`
-/

namespace A290134.P3623519969637025017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175070 (A309861 n).toNat + A148328 n

end

end A290134.P3623519969637025017

/-!
# A290136: Positive numbers that are not the sum of two nonprime squarefree numbers (A000469).

The programs for A290136, there is no canonical definition to state claims against.
-/

/-! ## A290136.P129417280921934796

`eq[0, A100699(n+1)]+1`
-/

namespace A290136.P129417280921934796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100699 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A290136.P129417280921934796

/-! ## A290136.P16744998607579464511

`eq[A023923(n), A285796(n)]`
-/

namespace A290136.P16744998607579464511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023923 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285796 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290136.P16744998607579464511

/-! ## A290136.P2628500993725226968

`eq[A285796(n), A340998(n)]`
-/

namespace A290136.P2628500993725226968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285796 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 (n + 140)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290136.P2628500993725226968

/-! ## A290136.P12916998570211468165

`record[gcd(A000027(n+1), A100699(n+1))]`
-/

namespace A290136.P12916998570211468165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A100699 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290136.P12916998570211468165

/-! ## A290136.P12906217829137909843

`lt[A002283(A100699(n+1)), A000005(n+1)]+1`
-/

namespace A290136.P12906217829137909843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (A100699 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A290136.P12906217829137909843

/-!
# A290137: Number of compositions (ordered partitions) of n into nonprime squarefree parts (A000469).

The programs for A290137, there is no canonical definition to state claims against.
-/

/-! ## A290137.P1312743735008282284

`A336351(n+2)-A185284(2*n+1)`
-/

namespace A290137.P1312743735008282284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336351 (n + 2) - A185284 (2 * n + 1)

end

end A290137.P1312743735008282284

/-! ## A290137.P9973214448858429376

`A336351(n+2)-A212619(A122762(n))`
-/

namespace A290137.P9973214448858429376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336351 (n + 2) - A212619 (A122762 n).toNat

end

end A290137.P9973214448858429376

/-! ## A290137.P8615538543226913614

`A336351(A151764(n+1)+1)`
-/

namespace A290137.P8615538543226913614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336351 (A151764 (n + 1) + 1).toNat

end

end A290137.P8615538543226913614

/-! ## A290137.P518641964400790510

`A336351(A255421(n+1)+1)`
-/

namespace A290137.P518641964400790510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336351 (A255421 (n + 1) + 1).toNat

end

end A290137.P518641964400790510

/-! ## A290137.P16510434197819015265

`A336351(A269171(n+1)+1)`
-/

namespace A290137.P16510434197819015265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336351 (A269171 (n + 1) + 1).toNat

end

end A290137.P16510434197819015265

/-!
# A290138: Number of maximal subgroups of the symmetric group S_n.

The programs for A290138, there is no canonical definition to state claims against.
-/

/-! ## A290138.P7958241342906827549

`A367115(n)+A280827(A367062(n))`
-/

namespace A290138.P7958241342906827549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367115 n + A280827 (A367062 n).toNat

end

end A290138.P7958241342906827549

/-! ## A290138.P6744186156927590331

`A317078(A270890(n+1))+A143419(2*n+1)`
-/

namespace A290138.P6744186156927590331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317078 (A270890 (n + 1)).toNat + A143419 (2 * n + 1)

end

end A290138.P6744186156927590331

/-!
# A290140: The number of maximal subsemigroups of the Jones monoid on the set [1..n].

The programs for A290140, the canonical program `A290140.P17750765533903182694` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290140 has offset 1).

The definition of A290140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290140.P17750765533903182694

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=9, a(4)=13, a(5)=19`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290140

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P17750765533903182694.Spec : Prop :=
  ∀ n, P17750765533903182694.a n = A290140 (n + 1)

theorem P17750765533903182694.correct : P17750765533903182694.Spec := by
  intro n
  simp only [A290140, Nat.add_sub_cancel]

end A290140

/-! ## A290140.P1137396091155167733

`A284122(n+1)+A060576(n)`
-/

namespace A290140.P1137396091155167733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284122 (n + 1) + A060576 n

end

end A290140.P1137396091155167733

namespace A290140

/-- `A284122(n+1)+A060576(n)` -/
def P1137396091155167733.Spec : Prop :=
  ∀ n, P1137396091155167733.a n = A290140 (n + 1)

end A290140

/-! ## A290140.P5360244128996666891

`A284122(n+1)+A000035(A008578(n+1))`
-/

namespace A290140.P5360244128996666891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284122 (n + 1) + A000035 (A008578 (n + 1)).toNat

end

end A290140.P5360244128996666891

namespace A290140

/-- `A284122(n+1)+A000035(A008578(n+1))` -/
def P5360244128996666891.Spec : Prop :=
  ∀ n, P5360244128996666891.a n = A290140 (n + 1)

end A290140

/-! ## A290140.P13241032189537260279

`∑[A000045(n+1)]%A000032(n)+2*n`
-/

namespace A290140.P13241032189537260279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000032 n) + (2 * n : ℤ)

end

end A290140.P13241032189537260279

namespace A290140

/-- `∑[A000045(n+1)]%A000032(n)+2*n` -/
def P13241032189537260279.Spec : Prop :=
  ∀ n, P13241032189537260279.a n = A290140 (n + 1)

end A290140

/-! ## A290140.P9172748554151990631

`A004442(A004275(n))+Δ[A001595(n)]`
-/

namespace A290140.P9172748554151990631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A004275 n).toNat + (f1 (n + 1) - f1 n)

end

end A290140.P9172748554151990631

namespace A290140

/-- `A004442(A004275(n))+Δ[A001595(n)]` -/
def P9172748554151990631.Spec : Prop :=
  ∀ n, P9172748554151990631.a n = A290140 (n + 1)

end A290140

/-! ## A290140.P640000390511401561

`A055389(n)+A004273(n)%A192979(n)`
-/

namespace A290140.P640000390511401561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 n + Int.tmod (A004273 n) (A192979 n)

end

end A290140.P640000390511401561

namespace A290140

/-- `A055389(n)+A004273(n)%A192979(n)` -/
def P640000390511401561.Spec : Prop :=
  ∀ n, P640000390511401561.a n = A290140 (n + 1)

end A290140

/-! ## A290140.P9137633486168167658

`A284122(n+1)+A014963(∑[n+1])%3`
-/

namespace A290140.P9137633486168167658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284122 (n + 1) + Int.tmod (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)) 3

end

end A290140.P9137633486168167658

namespace A290140

/-- `A284122(n+1)+A014963(∑[n+1])%3` -/
def P9137633486168167658.Spec : Prop :=
  ∀ n, P9137633486168167658.a n = A290140 (n + 1)

end A290140

/-! ## A290140.P16933030005762436748

`A303696(A004273(n²))+A004273(n)`
-/

namespace A290140.P16933030005762436748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303696 (A004273 (n ^ 2)).toNat + A004273 n

end

end A290140.P16933030005762436748

namespace A290140

/-- `A303696(A004273(n²))+A004273(n)` -/
def P16933030005762436748.Spec : Prop :=
  ∀ n, P16933030005762436748.a n = A290140 (n + 1)

end A290140

/-!
# A290141: Numbers n that have a record maximum (> n) in their aliquot sequence.

The programs for A290141, there is no canonical definition to state claims against.
-/

/-! ## A290141.P6074088124893343281

`lcm(A005101(A248713(n+1)), A199333(n+2))`
-/

namespace A290141.P6074088124893343281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005101 (A248713 (n + 1)).toNat) (A199333 (n + 2))

end

end A290141.P6074088124893343281

/-!
# A290142: Records of the maxima of the aliquot sequences of the numbers in A290141.

The programs for A290142, there is no canonical definition to state claims against.
-/

/-! ## A290142.P18422727713123515150

`A115060(A290141(n+1))`
-/

namespace A290142.P18422727713123515150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A290141 (n + 1)).toNat

end

end A290142.P18422727713123515150

/-! ## A290142.P14131437789336601564

`record[A115060(A005101(n+1))]`
-/

namespace A290142.P14131437789336601564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A005101 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290142.P14131437789336601564

/-! ## A290142.P7912560964556860750

`record[A115060(A205098(n+1))]`
-/

namespace A290142.P7912560964556860750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A205098 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290142.P7912560964556860750

/-!
# A290143: Numbers n such that transient part of the unitary aliquot sequence for n sets a new record.

The programs for A290143, there is no canonical definition to state claims against.
-/

/-! ## A290143.P16376856132763489141

`∏{p}[A288102(2^n), #]`
-/

namespace A290143.P16376856132763489141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288102 (2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A290143.P16376856132763489141

/-! ## A290143.P11709401085025593487

`∏{p}[A288104(2^n), #]`
-/

namespace A290143.P11709401085025593487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288104 (2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A290143.P11709401085025593487

/-! ## A290143.P17658831138623877499

`2^n--6%A029519(n+1)`
-/

namespace A290143.P17658831138623877499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - Int.tmod (-6) (A029519 (n + 1))

end

end A290143.P17658831138623877499

/-! ## A290143.P12880125347131946195

`∏{p}[A249122(A188129(n)), #]`
-/

namespace A290143.P12880125347131946195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A188129 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A290143.P12880125347131946195

/-!
# A290144: Record lengths of transient part of the unitary aliquot sequences of the numbers in A290143.

The programs for A290144, there is no canonical definition to state claims against.
-/

/-! ## A290144.P12129863061195771541

`record[A318883(n+1)+1]`
-/

namespace A290144.P12129863061195771541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318883 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290144.P12129863061195771541

/-! ## A290144.P13820362732181641623

`A318883(A290143(n+1))+1`
-/

namespace A290144.P13820362732181641623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318883 (A290143 (n + 1)).toNat + 1

end

end A290144.P13820362732181641623

/-! ## A290144.P10814425560015955523

`record[A097032(n+1)-1]`
-/

namespace A290144.P10814425560015955523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097032 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290144.P10814425560015955523

/-! ## A290144.P17250504884693833776

`A023443(record[A097032(n+1)])`
-/

namespace A290144.P17250504884693833776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A290144.P17250504884693833776

/-! ## A290144.P5910335943212663624

`A097032(A290143(n+1))-A040055(2*n+1)`
-/

namespace A290144.P5910335943212663624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097032 (A290143 (n + 1)).toNat - A040055 (2 * n + 1)

end

end A290144.P5910335943212663624

/-!
# A290145: Numbers n that have a record maximum in their unitary aliquot sequence.

The programs for A290145, there is no canonical definition to state claims against.
-/

/-! ## A290145.P12211865344913098818

`record[A017593(3*n+2)/A007318(A001405(n+2))]`
-/

namespace A290145.P12211865344913098818
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017593 (3 * n + 2) : ℚ) / (A007318 (A001405 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290145.P12211865344913098818

/-!
# A290146: Records of the maxima of the unitary aliquot sequences of the numbers in A290145.

The programs for A290146, there is no canonical definition to state claims against.
-/

/-! ## A290146.P5720097534708185734

`18*A201647(A005520(n+1))`
-/

namespace A290146.P5720097534708185734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A201647 (A005520 (n + 1)).toNat

end

end A290146.P5720097534708185734

/-! ## A290146.P16096741673292536649

`A247758(2*(n+2))*A282814(A003576(n))`
-/

namespace A290146.P16096741673292536649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247758 (2 * (n + 2)) * A282814 (A003576 n).toNat

end

end A290146.P16096741673292536649

/-!
# A290147: Expansion of (1-sqrt(1-8*x-8*x^2))/(4*x).

The programs for A290147, there is no canonical definition to state claims against.
-/

/-! ## A290147.P17652707930262113478

`A004526(3*A379328(n))`
-/

namespace A290147.P17652707930262113478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A379328 n).toNat

end

end A290147.P17652707930262113478

/-! ## A290147.P9300319076345838998

`A123108(3*A379328(n))`
-/

namespace A290147.P9300319076345838998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (3 * A379328 n).toNat

end

end A290147.P9300319076345838998

/-!
# A290148: a(n) is the integer resulting from the concatenation of the unit digit of n-1 to the digits of n without its own unit digit.

The programs for A290148, there is no canonical definition to state claims against.
-/

/-! ## A290148.P3874507649858614813

`A004086(A103205(n)%A029494(n+1))`
-/

namespace A290148.P3874507649858614813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Int.tmod (A103205 n) (A029494 (n + 1))).toNat

end

end A290148.P3874507649858614813

/-! ## A290148.P4725476119469678548

`A004086(A103205(n))%A309033(n+1)`
-/

namespace A290148.P4725476119469678548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A103205 n).toNat) (A309033 (n + 1))

end

end A290148.P4725476119469678548

/-! ## A290148.P5076277765185385930

`or(n, A205295(lt[∏{p}[n, -#], 0]))`
-/

namespace A290148.P5076277765185385930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A205295 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n))

end

end A290148.P5076277765185385930

/-! ## A290148.P17720310439244928002

`record[abs(n+1-A181721(n+1))]`
-/

namespace A290148.P17720310439244928002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A181721 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290148.P17720310439244928002

/-! ## A290148.P17662429473217017837

`or(n, A185255(3*(n+1))/(1/3)²)`
-/

namespace A290148.P17662429473217017837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (SequenceMachineLib.roundAway ((A185255 (3 * (n + 1)) : ℚ) / ((1 : ℚ) / 3) ^ 2))

end

end A290148.P17662429473217017837

/-!
# A290150: Numbers k such that (316*10^k - 1)/9 is prime.

The programs for A290150, there is no canonical definition to state claims against.
-/

/-! ## A290150.P6841603077564103893

`eq[A036853(A222043(n+1)), A307757(n)]`
-/

namespace A290150.P6841603077564103893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036853 (A222043 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307757 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290150.P6841603077564103893

/-!
# A290154: Smallest number k such that exactly half the numbers in [1..k] are prime(n)-smooth.

The programs for A290154, there is no canonical definition to state claims against.
-/

/-! ## A290154.P13410432477182816391

`A233583(A126283(n+1)+3)`
-/

namespace A290154.P13410432477182816391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A126283 (n + 1) + 3).toNat

end

end A290154.P13410432477182816391

/-! ## A290154.P12493345827205662377

`A126283(n+1)+A078311(A097074(n))`
-/

namespace A290154.P12493345827205662377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126283 (n + 1) + A078311 (A097074 n).toNat

end

end A290154.P12493345827205662377

/-! ## A290154.P22775799254280768

`A126283(n+1)+A034444(A014234(n+1))`
-/

namespace A290154.P22775799254280768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126283 (n + 1) + A034444 (A014234 (n + 1)).toNat

end

end A290154.P22775799254280768

/-! ## A290154.P14657971048587142028

`A126283(n+1)+A069010(A052548(n+4))`
-/

namespace A290154.P14657971048587142028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126283 (n + 1) + A069010 (A052548 (n + 4)).toNat

end

end A290154.P14657971048587142028

/-!
# A290155: Let a(n) be the sequence of 0's and 1's that represents n. Then a(0) = 0; and a((1b)_2) = 1a(|b|)b where |b| denotes the length of b.

The programs for A290155, there is no canonical definition to state claims against.
-/

/-! ## A290155.P16651398365310512998

`A007088(A010097(n))`
-/

namespace A290155.P16651398365310512998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A010097 n).toNat

end

end A290155.P16651398365310512998

/-! ## A290155.P15154003010469460505

`A185544(2*A010097(n))`
-/

namespace A290155.P15154003010469460505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A010097 n).toNat

end

end A290155.P15154003010469460505

/-! ## A290155.P11506162461409332853

`A185544(A010097(n)+A010097(n))`
-/

namespace A290155.P11506162461409332853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A010097 n + A010097 n).toNat

end

end A290155.P11506162461409332853

/-! ## A290155.P16636067669402264062

`A127906(A010097(n))/A010097(A028310(n))`
-/

namespace A290155.P16636067669402264062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127906 (A010097 n).toNat : ℚ) / (A010097 (A028310 n).toNat : ℚ)

end

end A290155.P16636067669402264062

/-!
# A290158: a(n) = n! * [x^n] exp(-n*x)/(1 + LambertW(-x)).

The programs for A290158, there is no canonical definition to state claims against.
-/

/-! ## A290158.P16709416642792480077

`A362856(∑[4*n])`
-/

namespace A290158.P16709416642792480077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362856 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290158.P16709416642792480077

/-! ## A290158.P7740432859983580519

`A033999(n)*A361652(A046092(n))`
-/

namespace A290158.P7740432859983580519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A361652 (A046092 n).toNat

end

end A290158.P7740432859983580519

/-!
# A290160: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 670", based on the 5-celled von Neumann neighborhood.

The programs for A290160, there is no canonical definition to state claims against.
-/

/-! ## A290160.P6161832843920299850

`A290213(A046469(n))`
-/

namespace A290160.P6161832843920299850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290213 (A046469 n).toNat

end

end A290160.P6161832843920299850

/-! ## A290160.P9470968667487305609

`A290213(A087036(n))`
-/

namespace A290160.P9470968667487305609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290213 (A087036 n).toNat

end

end A290160.P9470968667487305609

/-! ## A290160.P2629745027114224058

`A290213(A087051(n))`
-/

namespace A290160.P2629745027114224058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290213 (A087051 n).toNat

end

end A290160.P2629745027114224058

/-! ## A290160.P12480840640032325405

`A255408(A290213(n))`
-/

namespace A290160.P12480840640032325405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A290213 n).toNat

end

end A290160.P12480840640032325405

/-! ## A290160.P11333734073978412246

`filter[A290213(n), A178788(#)]`
-/

namespace A290160.P11333734073978412246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A290160.P11333734073978412246

/-!
# A290163: Primes p such that A288814(4*p) - A288814(3*p) = 7.

The programs for A290163, there is no canonical definition to state claims against.
-/

/-! ## A290163.P115667234539331199

`∩[A153184(n+1), A290164(n+1)]`
-/

namespace A290163.P115667234539331199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290163.P115667234539331199

/-! ## A290163.P18433337396903353866

`∩[A153261(n+1), A290164(n+1)]`
-/

namespace A290163.P18433337396903353866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290163.P18433337396903353866

/-! ## A290163.P783098769455641916

`∩[A264737(n+1), A329991(n+1)]`
-/

namespace A290163.P783098769455641916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290163.P783098769455641916

/-!
# A290164: Primes p such that both 4*p - 3 and 3*p - 4 are prime.

The programs for A290164, there is no canonical definition to state claims against.
-/

/-! ## A290164.P16733624133430467168

`∩[A157978(n+1), A258261(n+1)]`
-/

namespace A290164.P16733624133430467168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290164.P16733624133430467168

/-! ## A290164.P14926761799628102825

`∩[A157978(n+1), A228121(n+1)]`
-/

namespace A290164.P14926761799628102825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290164.P14926761799628102825

/-! ## A290164.P446004880543861960

`∩[A228121(n+1), p?[A170821(n+2)]]`
-/

namespace A290164.P446004880543861960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170821 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290164.P446004880543861960

/-! ## A290164.P1673050158388389042

`∩[A258261(n+1), p?[A170821(n+2)]]`
-/

namespace A290164.P1673050158388389042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258261 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170821 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290164.P1673050158388389042

/-! ## A290164.P14913224629171686874

`p?[A051686(A087370(n+1))+A024893(n+1)]`
-/

namespace A290164.P14913224629171686874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051686 (A087370 (n + 1)).toNat + A024893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A290164.P14913224629171686874

/-!
# A290168: If n is even then a(n) = n^2*(n+2)/8, otherwise a(n) = (n-1)*n*(n+1)/8.

The programs for A290168, the canonical program `A290168.P18155967599800801330` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290168 has offset 0).

The definition of A290168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290168.P5335158292215920029

`n*C(∑[char[2*n]], 2)`
-/

namespace A290168.P5335158292215920029
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A290168.P5335158292215920029

namespace A290168

/-- `n*C(∑[char[2*n]], 2)` -/
def P5335158292215920029.Spec : Prop :=
  ∀ n, (P5335158292215920029.a n : ℤ) = A290168 n

end A290168

/-! ## A290168.P18155967599800801330

`n*∑[n-gcd(n, ∑[n])]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290168

/-- `n*∑[n-gcd(n, ∑[n])]` -/
def P18155967599800801330.Spec : Prop :=
  ∀ n, P18155967599800801330.a n = A290168 n

theorem P18155967599800801330.correct : P18155967599800801330.Spec := by
  intro n
  simp only [A290168]

end A290168

/-! ## A290168.P13611688691207358305

`(or(1, n)²-1)*n/8`
-/

namespace A290168.P13611688691207358305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 n ^ 2 : ℤ) - 1 : ℚ) * ((n : ℚ) / 8)

end

end A290168.P13611688691207358305

namespace A290168

/-- `(or(1, n)²-1)*n/8` -/
def P13611688691207358305.Spec : Prop :=
  ∀ n, P13611688691207358305.a n = (A290168 n : ℚ)

end A290168

/-! ## A290168.P15731138339692893718

`n*∑[n-lcm(2, n)/2]`
-/

namespace A290168.P15731138339692893718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290168.P15731138339692893718

namespace A290168

/-- `n*∑[n-lcm(2, n)/2]` -/
def P15731138339692893718.Spec : Prop :=
  ∀ n, P15731138339692893718.a n = (A290168 n : ℚ)

end A290168

/-! ## A290168.P9610104449505488485

`n/2*∑[n%or(1, n)]`
-/

namespace A290168.P9610104449505488485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A290168.P9610104449505488485

namespace A290168

/-- `n/2*∑[n%or(1, n)]` -/
def P9610104449505488485.Spec : Prop :=
  ∀ n, P9610104449505488485.a n = (A290168 n : ℚ)

end A290168

/-! ## A290168.P7105313999389370666

`n/2*∑[n*∑[(-1)^n]]`
-/

namespace A290168.P7105313999389370666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A290168.P7105313999389370666

namespace A290168

/-- `n/2*∑[n*∑[(-1)^n]]` -/
def P7105313999389370666.Spec : Prop :=
  ∀ n, P7105313999389370666.a n = (A290168 n : ℚ)

end A290168

/-! ## A290168.P18265153709694200347

`n*A110660(n)/2`
-/

namespace A290168.P18265153709694200347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A110660 n : ℚ) / 2

end

end A290168.P18265153709694200347

namespace A290168

/-- `n*A110660(n)/2` -/
def P18265153709694200347.Spec : Prop :=
  ∀ n, P18265153709694200347.a n = (A290168 n : ℚ)

end A290168

/-! ## A290168.P14416656631905689293

`A131475(n)-A111384(n)`
-/

namespace A290168.P14416656631905689293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131475 n - A111384 n

end

end A290168.P14416656631905689293

namespace A290168

/-- `A131475(n)-A111384(n)` -/
def P14416656631905689293.Spec : Prop :=
  ∀ n, P14416656631905689293.a n = A290168 n

end A290168

/-! ## A290168.P2475176975848494478

`A292551(n)-A317300(n)`
-/

namespace A290168.P2475176975848494478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292551 n - A317300 n

end

end A290168.P2475176975848494478

namespace A290168

/-- `A292551(n)-A317300(n)` -/
def P2475176975848494478.Spec : Prop :=
  ∀ n, P2475176975848494478.a n = A290168 n

end A290168

/-! ## A290168.P15096872547924616085

`lcm(A029579(n), A123596(n))`
-/

namespace A290168.P15096872547924616085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029579 n) (A123596 n)

end

end A290168.P15096872547924616085

namespace A290168

/-- `lcm(A029579(n), A123596(n))` -/
def P15096872547924616085.Spec : Prop :=
  ∀ n, (P15096872547924616085.a n : ℤ) = A290168 n

end A290168

/-! ## A290168.P174082353186090751

`A211539(n)+A060423(n+1)`
-/

namespace A290168.P174082353186090751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211539 n + A060423 (n + 1)

end

end A290168.P174082353186090751

namespace A290168

/-- `A211539(n)+A060423(n+1)` -/
def P174082353186090751.Spec : Prop :=
  ∀ n, P174082353186090751.a n = A290168 n

end A290168

/-! ## A290168.P11878162869652071168

`A006918(n+1)+A060423(n+1)-A330640(n+1)`
-/

namespace A290168.P11878162869652071168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (n + 1) + (A060423 (n + 1) - A330640 (n + 1))

end

end A290168.P11878162869652071168

namespace A290168

/-- `A006918(n+1)+A060423(n+1)-A330640(n+1)` -/
def P11878162869652071168.Spec : Prop :=
  ∀ n, P11878162869652071168.a n = A290168 n

end A290168

/-! ## A290168.P16298354897623405922

`A060423(n+1)+A080838(n+2)-A080838(n+1)`
-/

namespace A290168.P16298354897623405922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060423 (n + 1) + (A080838 (n + 2) - A080838 (n + 1))

end

end A290168.P16298354897623405922

namespace A290168

/-- `A060423(n+1)+A080838(n+2)-A080838(n+1)` -/
def P16298354897623405922.Spec : Prop :=
  ∀ n, P16298354897623405922.a n = A290168 n

end A290168

/-!
# A290169: a(n) = least k such that both the sum of the smallest n divisors of k and the sum of its greatest n divisors are prime numbers.

The programs for A290169, there is no canonical definition to state claims against.
-/

/-! ## A290169.P6885573399471144748

`lcm(∑{d}[n+1, #]+1, A000005(2^n*∑[6^n]))`
-/

namespace A290169.P6885573399471144748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ d ∈ Nat.divisors (f1 n), d + 1 : ℕ) : ℤ) (A000005 (2 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)))

end

end A290169.P6885573399471144748

/-!
# A290172: Bases b for which there exists an integer y such that y^2 in base b consists of three identical digits.

The programs for A290172, there is no canonical definition to state claims against.
-/

/-! ## A290172.P5055919085151958962

`lt[A007913(n²+1+n), n]`
-/

namespace A290172.P5055919085151958962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n ^ 2 + 1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A290172.P5055919085151958962

/-! ## A290172.P9977725231289679906

`lt[n+1, A008833((n+1)²-n)]`
-/

namespace A290172.P9977725231289679906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 ((n + 1) ^ 2 - n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A290172.P9977725231289679906

/-! ## A290172.P17725333211994787231

`lt[A007913(n*(n+1)+1)+1, n]`
-/

namespace A290172.P17725333211994787231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n * (n + 1) + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A290172.P17725333211994787231

/-!
# A290176: Bases b for which there exists an integer y such that y^3 in base b looks like [c,d,c,d] for some base-b digits c, d.

The programs for A290176, there is no canonical definition to state claims against.
-/

/-! ## A290176.P11892674691101310994

`lt[A364911(n), A336551(n²+1)]`
-/

namespace A290176.P11892674691101310994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A290176.P11892674691101310994

/-! ## A290176.P5686528963222266161

`lt[A007947(A002522(n)), A336349(n+1)]`
-/

namespace A290176.P5686528963222266161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A002522 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336349 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A290176.P5686528963222266161

/-!
# A290179: Permanent of the Vandermonde matrix of the first n prime numbers.

The programs for A290179, there is no canonical definition to state claims against.
-/

/-! ## A290179.P12348543037316181055

`A389595(A335069(n+1))`
-/

namespace A290179.P12348543037316181055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389595 (A335069 (n + 1)).toNat

end

end A290179.P12348543037316181055

/-!
# A290184: Numbers k such that k mod phi(k) = lambda(k).

The programs for A290184, there is no canonical definition to state claims against.
-/

/-! ## A290184.P12912566574067536283

`A128672(A355547(n+1))`
-/

namespace A290184.P12912566574067536283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128672 (A355547 (n + 1)).toNat

end

end A290184.P12912566574067536283

/-! ## A290184.P3558058440125595008

`∩[A035166(n+1), A291022(n+1)]`
-/

namespace A290184.P3558058440125595008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290184.P3558058440125595008

/-! ## A290184.P4601011515764420861

`∩[A128672(n+1), A291022(n+1)]`
-/

namespace A290184.P4601011515764420861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290184.P4601011515764420861

/-! ## A290184.P10246760500310984440

`∩[A128672(n+1), A350780(n+1)]`
-/

namespace A290184.P10246760500310984440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290184.P10246760500310984440

/-!
# A290186: Expansion of (1+x)/ ((1+x)^3-7*x).

The programs for A290186, the canonical program `A290186.P7268601813827595339` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290186 has offset 0).

The definition of A290186 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-4x+3x^2+x^3))` (program `A290186.P7268601813827595339`, by `A290186.P7268601813827595339.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A290186.P7268601813827595339

`ogf((1+x)/(1-4x+3x^2+x^3))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290186

/-- `ogf((1+x)/(1-4x+3x^2+x^3))` -/
def P7268601813827595339.Spec : Prop :=
  ∀ n, P7268601813827595339.a n = A290186 n

theorem P7268601813827595339.correct : P7268601813827595339.Spec := by
  intro n
  simp only [A290186]

end A290186

/-! ## A290186.P16377834564182734282

`A215404(n+2)+A215404(n+1)`
-/

namespace A290186.P16377834564182734282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215404 (n + 2) + A215404 (n + 1)

end

end A290186.P16377834564182734282

namespace A290186

/-- `A215404(n+2)+A215404(n+1)` -/
def P16377834564182734282.Spec : Prop :=
  ∀ n, P16377834564182734282.a n = A290186 n

end A290186

/-! ## A290186.P18256957019333330763

`∑[A215404(n+2)-A215404(n)]`
-/

namespace A290186.P18256957019333330763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215404 (n + 2) - A215404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290186.P18256957019333330763

namespace A290186

/-- `∑[A215404(n+2)-A215404(n)]` -/
def P18256957019333330763.Spec : Prop :=
  ∀ n, P18256957019333330763.a n = A290186 n

end A290186

/-! ## A290186.P9916948664495346807

`∑[A116423(n+1)+A116423(n+2)]`
-/

namespace A290186.P9916948664495346807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116423 (n + 1) + A116423 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290186.P9916948664495346807

namespace A290186

/-- `∑[A116423(n+1)+A116423(n+2)]` -/
def P9916948664495346807.Spec : Prop :=
  ∀ n, P9916948664495346807.a n = A290186 n

end A290186

/-! ## A290186.P17924865673811276918

`∑[A136776(n+2)-A085810(n+1)]`
-/

namespace A290186.P17924865673811276918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136776 (n + 2) - A085810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290186.P17924865673811276918

namespace A290186

/-- `∑[A136776(n+2)-A085810(n+1)]` -/
def P17924865673811276918.Spec : Prop :=
  ∀ n, P17924865673811276918.a n = A290186 n

end A290186

/-! ## A290186.P13261241779029595725

`A116423(n+3)+A116423(n+3)-A085810(n+3)`
-/

namespace A290186.P13261241779029595725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116423 (n + 3) + (A116423 (n + 3) - A085810 (n + 3))

end

end A290186.P13261241779029595725

namespace A290186

/-- `A116423(n+3)+A116423(n+3)-A085810(n+3)` -/
def P13261241779029595725.Spec : Prop :=
  ∀ n, P13261241779029595725.a n = A290186 n

end A290186

/-! ## A290186.P17672400596041870006

`(A085810(n+4)+A085810(n+4))%A085810(n+3)`
-/

namespace A290186.P17672400596041870006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085810 (n + 4) + A085810 (n + 4)) (A085810 (n + 3))

end

end A290186.P17672400596041870006

namespace A290186

/-- `(A085810(n+4)+A085810(n+4))%A085810(n+3)` -/
def P17672400596041870006.Spec : Prop :=
  ∀ n, P17672400596041870006.a n = A290186 n

end A290186

/-!
# A290188: 

The programs for A290188, there is no canonical definition to state claims against.
-/

/-! ## A290188.P9834396644032113352

`A037082(∪[A054569(n+1), A296859(n+1)])`
-/

namespace A290188.P9834396644032113352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296859 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037082 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A290188.P9834396644032113352

/-!
# A290190: Minimum sum of mutual Manhattan distances of n distinct grid points in a cubic lattice.

The programs for A290190, there is no canonical definition to state claims against.
-/

/-! ## A290190.P4697299317601628124

`∑[∑[A006519(A000129(n+1))]]`
-/

namespace A290190.P4697299317601628124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A000129 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290190.P4697299317601628124

/-! ## A290190.P14501940291864368600

`∑[∑[A006519(A100163(n+1))]]`
-/

namespace A290190.P14501940291864368600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A100163 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290190.P14501940291864368600

/-! ## A290190.P11138971887921880054

`∑[∑[A006519(A100189(n+1))]]`
-/

namespace A290190.P11138971887921880054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A100189 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290190.P11138971887921880054

/-! ## A290190.P8920096311975594336

`∩[A308416(n+1), A022560(n)]`
-/

namespace A290190.P8920096311975594336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022560 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290190.P8920096311975594336

/-! ## A290190.P8691006058338920831

`∩[A392709(n+1), A022560(n)]`
-/

namespace A290190.P8691006058338920831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022560 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290190.P8691006058338920831

/-!
# A290191: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 673", based on the 5-celled von Neumann neighborhood.

The programs for A290191, the canonical program `A290191.P8570507958163931517` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290191 has offset 0).

The definition of A290191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290191.P8570507958163931517

`∑[10^n]-n%2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290191

/-- `∑[10^n]-n%2` -/
def P8570507958163931517.Spec : Prop :=
  ∀ n, P8570507958163931517.a n = A290191 n

theorem P8570507958163931517.correct : P8570507958163931517.Spec := by
  intro n
  simp only [A290191]

end A290191

/-! ## A290191.P8658417874579471527

`∑[10^n]-and(1, n)`
-/

namespace A290191.P8658417874579471527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.land 1 n : ℤ)

end

end A290191.P8658417874579471527

namespace A290191

/-- `∑[10^n]-and(1, n)` -/
def P8658417874579471527.Spec : Prop :=
  ∀ n, P8658417874579471527.a n = A290191 n

theorem P8658417874579471527.correct : P8658417874579471527.Spec := by
  intro n
  simp only [A290191, Nat.add_sub_cancel, A290191.P8658417874579471527.f1, A290191.P8658417874579471527.a, A290191.P8570507958163931517.f1, A290191.P8570507958163931517.a, SequenceMachineLib.memo_apply]
  try simp

end A290191

/-! ## A290191.P7029403604534787436

`∑[abs(or(1, (-10)^n))]`
-/

namespace A290191.P7029403604534787436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 ((-10) ^ n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290191.P7029403604534787436

namespace A290191

/-- `∑[abs(or(1, (-10)^n))]` -/
def P7029403604534787436.Spec : Prop :=
  ∀ n, P7029403604534787436.a n = A290191 n

end A290191

/-! ## A290191.P2781795659410137382

`xor(and(1, n), ∑[10^n])`
-/

namespace A290191.P2781795659410137382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.land 1 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290191.P2781795659410137382

namespace A290191

/-- `xor(and(1, n), ∑[10^n])` -/
def P2781795659410137382.Spec : Prop :=
  ∀ n, (P2781795659410137382.a n : ℤ) = A290191 n

end A290191

/-! ## A290191.P545454882122564092

`∑[10^n]-char[or(1, n)]`
-/

namespace A290191.P545454882122564092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A290191.P545454882122564092

namespace A290191

/-- `∑[10^n]-char[or(1, n)]` -/
def P545454882122564092.Spec : Prop :=
  ∀ n, P545454882122564092.a n = A290191 n

end A290191

/-! ## A290191.P11721614461639771107

`ogf((1+10x^2)/(1-10x-x^2+10x^3))`
-/

namespace A290191.P11721614461639771107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 10] [1, -10, -1, 10] n

end

end A290191.P11721614461639771107

namespace A290191

/-- `ogf((1+10x^2)/(1-10x-x^2+10x^3))` -/
def P11721614461639771107.Spec : Prop :=
  ∀ n, P11721614461639771107.a n = A290191 n

end A290191

/-! ## A290191.P3701560313739952084

`or(1, n)-∑[1-10^n]`
-/

namespace A290191.P3701560313739952084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290191.P3701560313739952084

namespace A290191

/-- `or(1, n)-∑[1-10^n]` -/
def P3701560313739952084.Spec : Prop :=
  ∀ n, P3701560313739952084.a n = A290191 n

end A290191

/-! ## A290191.P13108993875758147276

`∑[10^n]-Δ[floor(n/2)]`
-/

namespace A290191.P13108993875758147276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (f2 (n + 1) - f2 n)

end

end A290191.P13108993875758147276

namespace A290191

/-- `∑[10^n]-Δ[floor(n/2)]` -/
def P13108993875758147276.Spec : Prop :=
  ∀ n, P13108993875758147276.a n = A290191 n

end A290191

/-! ## A290191.P4691535328848695323

`xor(1, a(n-1)+10^n)` with `a(0)=1`
-/

namespace A290191.P4691535328848695323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (a (n - 1) + 10 ^ n)

end

end A290191.P4691535328848695323

namespace A290191

/-- `xor(1, a(n-1)+10^n)` -/
def P4691535328848695323.Spec : Prop :=
  ∀ n, (P4691535328848695323.a n : ℤ) = A290191 n

end A290191

/-! ## A290191.P8720820013355459759

`∑[abs(A103461(n))]`
-/

namespace A290191.P8720820013355459759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103461 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290191.P8720820013355459759

namespace A290191

/-- `∑[abs(A103461(n))]` -/
def P8720820013355459759.Spec : Prop :=
  ∀ n, P8720820013355459759.a n = A290191 n

end A290191

/-! ## A290191.P1042371748328331199

`xor(1, ∑[A098611(n)])`
-/

namespace A290191.P1042371748328331199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290191.P1042371748328331199

namespace A290191

/-- `xor(1, ∑[A098611(n)])` -/
def P1042371748328331199.Spec : Prop :=
  ∀ n, P1042371748328331199.a n = A290191 n

end A290191

/-! ## A290191.P17442991486326058756

`A094026(or(1, n)+n)`
-/

namespace A290191.P17442991486326058756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (Nat.lor 1 n + n)

end

end A290191.P17442991486326058756

namespace A290191

/-- `A094026(or(1, n)+n)` -/
def P17442991486326058756.Spec : Prop :=
  ∀ n, P17442991486326058756.a n = A290191 n

end A290191

/-! ## A290191.P2988110782210940335

`A309761(A084265(n))`
-/

namespace A290191.P2988110782210940335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A084265 n).toNat

end

end A290191.P2988110782210940335

namespace A290191

/-- `A309761(A084265(n))` -/
def P2988110782210940335.Spec : Prop :=
  ∀ n, P2988110782210940335.a n = A290191 n

end A290191

/-! ## A290191.P5159371806330498864

`A094026(A042963(n+1))`
-/

namespace A290191.P5159371806330498864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (A042963 (n + 1)).toNat

end

end A290191.P5159371806330498864

namespace A290191

/-- `A094026(A042963(n+1))` -/
def P5159371806330498864.Spec : Prop :=
  ∀ n, P5159371806330498864.a n = A290191 n

end A290191

/-! ## A290191.P15851246785487730888

`A094026(A109613(n)+n)`
-/

namespace A290191.P15851246785487730888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (A109613 n + (n : ℤ)).toNat

end

end A290191.P15851246785487730888

namespace A290191

/-- `A094026(A109613(n)+n)` -/
def P15851246785487730888.Spec : Prop :=
  ∀ n, P15851246785487730888.a n = A290191 n

end A290191

/-! ## A290191.P12220688854510809561

`A309761(A084263(n)+n)`
-/

namespace A290191.P12220688854510809561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A084263 n + (n : ℤ)).toNat

end

end A290191.P12220688854510809561

namespace A290191

/-- `A309761(A084263(n)+n)` -/
def P12220688854510809561.Spec : Prop :=
  ∀ n, P12220688854510809561.a n = A290191 n

end A290191

/-! ## A290191.P4073759740176137391

`A309761(∑[A004442(n)]+n)`
-/

namespace A290191.P4073759740176137391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A290191.P4073759740176137391

namespace A290191

/-- `A309761(∑[A004442(n)]+n)` -/
def P4073759740176137391.Spec : Prop :=
  ∀ n, P4073759740176137391.a n = A290191 n

end A290191

/-! ## A290191.P11445699134470181975

`∑[A002283(n)+1-A062157(n)]`
-/

namespace A290191.P11445699134470181975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n + (1 - A062157 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290191.P11445699134470181975

namespace A290191

/-- `∑[A002283(n)+1-A062157(n)]` -/
def P11445699134470181975.Spec : Prop :=
  ∀ n, P11445699134470181975.a n = A290191 n

end A290191

/-! ## A290191.P2447861008699049204

`Δ[A014824(n)-A110654(n+1)]`
-/

namespace A290191.P2447861008699049204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 n - A110654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290191.P2447861008699049204

namespace A290191

/-- `Δ[A014824(n)-A110654(n+1)]` -/
def P2447861008699049204.Spec : Prop :=
  ∀ n, P2447861008699049204.a n = A290191 n

end A290191

/-! ## A290191.P144469991985850388

`∑[A011557(n)+n-A014681(n)]`
-/

namespace A290191.P144469991985850388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + ((n : ℤ) - A014681 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290191.P144469991985850388

namespace A290191

/-- `∑[A011557(n)+n-A014681(n)]` -/
def P144469991985850388.Spec : Prop :=
  ∀ n, P144469991985850388.a n = A290191 n

end A290191

/-!
# A290192: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 705", based on the 5-celled von Neumann neighborhood.

The programs for A290192, the canonical program `A290192.P5553061541143478397` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290192 has offset 0).

The definition of A290192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290192.P4797899775727839249

`xor(A014306(n²), A290070(n))`
-/

namespace A290192.P4797899775727839249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014306 (n ^ 2)) (A290070 n)

end

end A290192.P4797899775727839249

namespace A290192

/-- `xor(A014306(n²), A290070(n))` -/
def P4797899775727839249.Spec : Prop :=
  ∀ n, P4797899775727839249.a n = A290192 n

end A290192

/-! ## A290192.P17823160429669438965

`A290111(n)-char[A103517(n)]`
-/

namespace A290192.P17823160429669438965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290111 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A290192.P17823160429669438965

namespace A290192

/-- `A290111(n)-char[A103517(n)]` -/
def P17823160429669438965.Spec : Prop :=
  ∀ n, P17823160429669438965.a n = A290192 n

end A290192

/-! ## A290192.P12518201952685472289

`xor(A000035(A007918(n)), A290070(n))`
-/

namespace A290192.P12518201952685472289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A007918 n).toNat) (A290070 n)

end

end A290192.P12518201952685472289

namespace A290192

/-- `xor(A000035(A007918(n)), A290070(n))` -/
def P12518201952685472289.Spec : Prop :=
  ∀ n, P12518201952685472289.a n = A290192 n

end A290192

/-! ## A290192.P5553061541143478397

`A290070(n)+A290194(n)-A290073(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A290192

/-- `A290070(n)+A290194(n)-A290073(n)` -/
def P5553061541143478397.Spec : Prop :=
  ∀ n, P5553061541143478397.a n = A290192 n

theorem P5553061541143478397.correct : P5553061541143478397.Spec := by
  intro n
  simp only [A290192]

end A290192

/-! ## A290192.P7053642549644108014

`A290111(n)+A290194(n)-A290113(n)`
-/

namespace A290192.P7053642549644108014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290111 n + (A290194 n - A290113 n)

end

end A290192.P7053642549644108014

namespace A290192

/-- `A290111(n)+A290194(n)-A290113(n)` -/
def P7053642549644108014.Spec : Prop :=
  ∀ n, P7053642549644108014.a n = A290192 n

end A290192

/-!
# A290193: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 705", based on the 5-celled von Neumann neighborhood.

The programs for A290193, there is no canonical definition to state claims against.
-/

/-! ## A290193.P15922581024854747879

`A007088(A290195(n))`
-/

namespace A290193.P15922581024854747879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290195 n).toNat

end

end A290193.P15922581024854747879

/-! ## A290193.P16857357352714230794

`A007088(and(A290114(n), A290829(n)))`
-/

namespace A290193.P16857357352714230794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A290114 n) (A290829 n)).toNat

end

end A290193.P16857357352714230794

/-! ## A290193.P8586201793785892988

`A007088(xor(and(n, A011782(n)), A283651(n)))`
-/

namespace A290193.P8586201793785892988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor (Int.land (n : ℤ) (A011782 n)) (A283651 n)).toNat

end

end A290193.P8586201793785892988

/-! ## A290193.P8801066090062427895

`A305989(A290194(n))`
-/

namespace A290193.P8801066090062427895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A290194 n).toNat

end

end A290193.P8801066090062427895

/-! ## A290193.P4441829982810638991

`A185544(2*A290195(n))`
-/

namespace A290193.P4441829982810638991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290195 n).toNat

end

end A290193.P4441829982810638991

/-!
# A290194: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 705", based on the 5-celled von Neumann neighborhood.

The programs for A290194, the canonical program `A290194.P11582240368816189477` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290194 has offset 0).

The definition of A290194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290194.P11162832273039395956

`ogf((1+3x^3+x^4+2x^5)/(1-2x-x^2+2x^3))`
-/

namespace A290194.P11162832273039395956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 3, 1, 2] [1, -2, -1, 2] n

end

end A290194.P11162832273039395956

namespace A290194

/-- `ogf((1+3x^3+x^4+2x^5)/(1-2x-x^2+2x^3))` -/
def P11162832273039395956.Spec : Prop :=
  ∀ n, P11162832273039395956.a n = A290194 n

end A290194

/-! ## A290194.P11582240368816189477

`and(A290113(n), A290828(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A290194

/-- `and(A290113(n), A290828(n))` -/
def P11582240368816189477.Spec : Prop :=
  ∀ n, P11582240368816189477.a n = A290194 n

theorem P11582240368816189477.correct : P11582240368816189477.Spec := by
  intro n
  simp only [A290194]

end A290194

/-! ## A290194.P11268412279485304223

`xor(A091270(n), A267043(n))`
-/

namespace A290194.P11268412279485304223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A091270 n) (A267043 n)

end

end A290194.P11268412279485304223

namespace A290194

/-- `xor(A091270(n), A267043(n))` -/
def P11268412279485304223.Spec : Prop :=
  ∀ n, P11268412279485304223.a n = A290194 n

end A290194

/-! ## A290194.P12911036491189905651

`xor(char[A290082(n+3)], A290073(n))`
-/

namespace A290194.P12911036491189905651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290082 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A290073 n)

end

end A290194.P12911036491189905651

namespace A290194

/-- `xor(char[A290082(n+3)], A290073(n))` -/
def P12911036491189905651.Spec : Prop :=
  ∀ n, P12911036491189905651.a n = A290194 n

end A290194

/-! ## A290194.P12102702806954183382

`A290828(n)-A289296(n)%(n+1)`
-/

namespace A290194.P12102702806954183382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290828 n - Int.tmod (A289296 n) (n + 1 : ℤ)

end

end A290194.P12102702806954183382

namespace A290194

/-- `A290828(n)-A289296(n)%(n+1)` -/
def P12102702806954183382.Spec : Prop :=
  ∀ n, P12102702806954183382.a n = A290194 n

end A290194

/-! ## A290194.P6233463372835039718

`xor(A000035(A007918(n)), A290073(n))`
-/

namespace A290194.P6233463372835039718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A007918 n).toNat) (A290073 n)

end

end A290194.P6233463372835039718

namespace A290194

/-- `xor(A000035(A007918(n)), A290073(n))` -/
def P6233463372835039718.Spec : Prop :=
  ∀ n, P6233463372835039718.a n = A290194 n

end A290194

/-! ## A290194.P16642036937656390619

`A289098(n)-xor(A289098(n), A290828(n))`
-/

namespace A290194.P16642036937656390619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289098 n - Int.xor (A289098 n) (A290828 n)

end

end A290194.P16642036937656390619

namespace A290194

/-- `A289098(n)-xor(A289098(n), A290828(n))` -/
def P16642036937656390619.Spec : Prop :=
  ∀ n, P16642036937656390619.a n = A290194 n

end A290194

/-! ## A290194.P10451885953134344599

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=13, a(4)=28, a(5)=61`
-/

namespace A290194.P10451885953134344599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 13, 28, 61] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3)

end

end A290194.P10451885953134344599

namespace A290194

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P10451885953134344599.Spec : Prop :=
  ∀ n, P10451885953134344599.a n = A290194 n

end A290194

/-! ## A290194.P13588929651722153962

`and(A290828(A151800(n))-2, A290828(n))`
-/

namespace A290194.P13588929651722153962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290828 (A151800 n).toNat - 2) (A290828 n)

end

end A290194.P13588929651722153962

namespace A290194

/-- `and(A290828(A151800(n))-2, A290828(n))` -/
def P13588929651722153962.Spec : Prop :=
  ∀ n, P13588929651722153962.a n = A290194 n

end A290194

/-! ## A290194.P7734759265803175281

`and(A159229(n+2), A290828(n))`
-/

namespace A290194.P7734759265803175281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159229 (n + 2)) (A290828 n)

end

end A290194.P7734759265803175281

namespace A290194

/-- `and(A159229(n+2), A290828(n))` -/
def P7734759265803175281.Spec : Prop :=
  ∀ n, P7734759265803175281.a n = A290194 n

end A290194

/-! ## A290194.P11893751550514637115

`and(A068156(A058992(n+1)), A290828(n))`
-/

namespace A290194.P11893751550514637115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068156 (A058992 (n + 1)).toNat) (A290828 n)

end

end A290194.P11893751550514637115

namespace A290194

/-- `and(A068156(A058992(n+1)), A290828(n))` -/
def P11893751550514637115.Spec : Prop :=
  ∀ n, P11893751550514637115.a n = A290194 n

end A290194

/-! ## A290194.P15783233629306113399

`floor(A007583(n)/A005578(n)-A000035(n))`
-/

namespace A290194.P15783233629306113399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007583 n : ℚ) / (A005578 n : ℚ) - (A000035 n : ℚ)⌋

end

end A290194.P15783233629306113399

namespace A290194

/-- `floor(A007583(n)/A005578(n)-A000035(n))` -/
def P15783233629306113399.Spec : Prop :=
  ∀ n, P15783233629306113399.a n = A290194 n

end A290194

/-! ## A290194.P329729162995969576

`and(A289098(2*n), A290828(n))`
-/

namespace A290194.P329729162995969576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A289098 (2 * n)) (A290828 n)

end

end A290194.P329729162995969576

namespace A290194

/-- `and(A289098(2*n), A290828(n))` -/
def P329729162995969576.Spec : Prop :=
  ∀ n, P329729162995969576.a n = A290194 n

end A290194

/-! ## A290194.P991937533554988476

`and(A068156(A004273(n)), A290828(n))`
-/

namespace A290194.P991937533554988476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068156 (A004273 n).toNat) (A290828 n)

end

end A290194.P991937533554988476

namespace A290194

/-- `and(A068156(A004273(n)), A290828(n))` -/
def P991937533554988476.Spec : Prop :=
  ∀ n, P991937533554988476.a n = A290194 n

end A290194

/-!
# A290195: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 705", based on the 5-celled von Neumann neighborhood.

The programs for A290195, the canonical program `A290195.P9621791207342674564` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290195 has offset 0).

The definition of A290195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290195.P9621791207342674564

`xor(and(n, A011782(n)), A283651(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A290195

/-- `xor(and(n, A011782(n)), A283651(n))` -/
def P9621791207342674564.Spec : Prop :=
  ∀ n, P9621791207342674564.a n = A290195 n

theorem P9621791207342674564.correct : P9621791207342674564.Spec := by
  intro n
  simp only [A290195]

end A290195

/-! ## A290195.P16637003136801310664

`xor(A130779(n), A283651(A028310(n)))`
-/

namespace A290195.P16637003136801310664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130779 n) (A283651 (A028310 n).toNat)

end

end A290195.P16637003136801310664

namespace A290195

/-- `xor(A130779(n), A283651(A028310(n)))` -/
def P16637003136801310664.Spec : Prop :=
  ∀ n, P16637003136801310664.a n = A290195 n

end A290195

/-! ## A290195.P12248767860408448985

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=11, a(4)=7, a(5)=47`
-/

namespace A290195.P12248767860408448985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5, 11, 7, 47] fun n a =>
  a (n - 1) + 4 * a (n - 2) - 4 * a (n - 3)

end

end A290195.P12248767860408448985

namespace A290195

/-- `a(n-1)+4*a(n-2)-4*a(n-3)` -/
def P12248767860408448985.Spec : Prop :=
  ∀ n, P12248767860408448985.a n = A290195 n

end A290195

/-! ## A290195.P6909208451730064983

`and(A290114(n), A290829(n))`
-/

namespace A290195.P6909208451730064983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290114 n) (A290829 n)

end

end A290195.P6909208451730064983

namespace A290195

/-- `and(A290114(n), A290829(n))` -/
def P6909208451730064983.Spec : Prop :=
  ∀ n, P6909208451730064983.a n = A290195 n

end A290195

/-! ## A290195.P16841345210050165405

`or(1, and(A055010(n), A283651(n)))`
-/

namespace A290195.P16841345210050165405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.land (A055010 n) (A283651 n))

end

end A290195.P16841345210050165405

namespace A290195

/-- `or(1, and(A055010(n), A283651(n)))` -/
def P16841345210050165405.Spec : Prop :=
  ∀ n, P16841345210050165405.a n = A290195 n

end A290195

/-! ## A290195.P12287501469791924396

`or(1, and(A055010(n), A284485(n)))`
-/

namespace A290195.P12287501469791924396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.land (A055010 n) (A284485 n))

end

end A290195.P12287501469791924396

namespace A290195

/-- `or(1, and(A055010(n), A284485(n)))` -/
def P12287501469791924396.Spec : Prop :=
  ∀ n, P12287501469791924396.a n = A290195 n

end A290195

/-! ## A290195.P17603870112341993048

`or(1, and(A284485(n), A290114(n)))`
-/

namespace A290195.P17603870112341993048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.land (A284485 n) (A290114 n))

end

end A290195.P17603870112341993048

namespace A290195

/-- `or(1, and(A284485(n), A290114(n)))` -/
def P17603870112341993048.Spec : Prop :=
  ∀ n, P17603870112341993048.a n = A290195 n

end A290195

/-! ## A290195.P7791258128884782341

`and(A055010(A233583(n+1)), A290829(n))`
-/

namespace A290195.P7791258128884782341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055010 (A233583 (n + 1)).toNat) (A290829 n)

end

end A290195.P7791258128884782341

namespace A290195

/-- `and(A055010(A233583(n+1)), A290829(n))` -/
def P7791258128884782341.Spec : Prop :=
  ∀ n, P7791258128884782341.a n = A290195 n

end A290195

/-! ## A290195.P7084094542001510830

`and(A290114(n)²*A289099(n), A290114(n))`
-/

namespace A290195.P7084094542001510830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290114 n ^ 2 * A289099 n) (A290114 n)

end

end A290195.P7084094542001510830

namespace A290195

/-- `and(A290114(n)²*A289099(n), A290114(n))` -/
def P7084094542001510830.Spec : Prop :=
  ∀ n, P7084094542001510830.a n = A290195 n

end A290195

/-! ## A290195.P3167100853229203588

`and(A290114(n)²*A099035(n+1), A290114(n))`
-/

namespace A290195.P3167100853229203588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290114 n ^ 2 * A099035 (n + 1)) (A290114 n)

end

end A290195.P3167100853229203588

namespace A290195

/-- `and(A290114(n)²*A099035(n+1), A290114(n))` -/
def P3167100853229203588.Spec : Prop :=
  ∀ n, P3167100853229203588.a n = A290195 n

end A290195

/-!
# A290196: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 721", based on the 5-celled von Neumann neighborhood.

The programs for A290196, the canonical program `A290196.P16120277252629656812` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290196 has offset 0).

The definition of A290196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290196.P16120277252629656812

`∑[10^n]-a(floor(3/n))` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A290196

/-- `∑[10^n]-a(floor(3/n))` -/
def P16120277252629656812.Spec : Prop :=
  ∀ n, P16120277252629656812.a n = A290196 n

theorem P16120277252629656812.correct : P16120277252629656812.Spec := by
  intro n
  simp only [A290196]

end A290196

/-! ## A290196.P16757876209685746053

`A007088(A290198(n))`
-/

namespace A290196.P16757876209685746053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290198 n).toNat

end

end A290196.P16757876209685746053

namespace A290196

/-- `A007088(A290198(n))` -/
def P16757876209685746053.Spec : Prop :=
  ∀ n, P16757876209685746053.a n = A290196 n

end A290196

/-! ## A290196.P17776278865286131863

`A007088(A290682(n)-C(n, C(2, n)))`
-/

namespace A290196.P17776278865286131863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290682 n - (Nat.choose n (Nat.choose 2 n) : ℤ)).toNat

end

end A290196.P17776278865286131863

namespace A290196

/-- `A007088(A290682(n)-C(n, C(2, n)))` -/
def P17776278865286131863.Spec : Prop :=
  ∀ n, P17776278865286131863.a n = A290196 n

end A290196

/-! ## A290196.P8190346935368478404

`A007088(A185114(n)+A091270(n))`
-/

namespace A290196.P8190346935368478404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A185114 n + A091270 n).toNat

end

end A290196.P8190346935368478404

namespace A290196

/-- `A007088(A185114(n)+A091270(n))` -/
def P8190346935368478404.Spec : Prop :=
  ∀ n, P8190346935368478404.a n = A290196 n

end A290196

/-! ## A290196.P1154477032384185161

`A007088(or(A026622(n), A174317(n)))`
-/

namespace A290196.P1154477032384185161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A026622 n) (A174317 n)).toNat

end

end A290196.P1154477032384185161

namespace A290196

/-- `A007088(or(A026622(n), A174317(n)))` -/
def P1154477032384185161.Spec : Prop :=
  ∀ n, P1154477032384185161.a n = A290196 n

end A290196

/-!
# A290197: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 721", based on the 5-celled von Neumann neighborhood.

The programs for A290197, there is no canonical definition to state claims against.
-/

/-! ## A290197.P13543757906873908623

`A007088(A290199(n))`
-/

namespace A290197.P13543757906873908623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290199 n).toNat

end

end A290197.P13543757906873908623

/-! ## A290197.P3382746607269902698

`A007088(A000225(n)+and(n+1, A011782(n)))`
-/

namespace A290197.P3382746607269902698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 n + Int.land (n + 1 : ℤ) (A011782 n)).toNat

end

end A290197.P3382746607269902698

/-! ## A290197.P15690439194619436148

`A007088(A000225(n)+and(n+1, A129952(n)))`
-/

namespace A290197.P15690439194619436148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 n + Int.land (n + 1 : ℤ) (A129952 n)).toNat

end

end A290197.P15690439194619436148

/-! ## A290197.P17733272920943812948

`A007088(A000225(n)+and(n+1, -A003945(n)))`
-/

namespace A290197.P17733272920943812948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 n + Int.land (n + 1 : ℤ) (-A003945 n)).toNat

end

end A290197.P17733272920943812948

/-! ## A290197.P2201807501013519495

`A305989(A290198(n)/A079882(n))`
-/

namespace A290197.P2201807501013519495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A290198 n : ℚ) / (A079882 n : ℚ))).toNat

end

end A290197.P2201807501013519495

/-!
# A290198: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 721", based on the 5-celled von Neumann neighborhood.

The programs for A290198, the canonical program `A290198.P6667121910537351259` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290198 has offset 0).

The definition of A290198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290198.P9316532977806852077

`ogf((1-x+x^2+2x^3+x^4-2x^5)/(1-3x+2x^2))`
-/

namespace A290198.P9316532977806852077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, 2, 1, -2] [1, -3, 2] n

end

end A290198.P9316532977806852077

namespace A290198

/-- `ogf((1-x+x^2+2x^3+x^4-2x^5)/(1-3x+2x^2))` -/
def P9316532977806852077.Spec : Prop :=
  ∀ n, P9316532977806852077.a n = A290198 n

end A290198

/-! ## A290198.P9316301608197235094

`floor(2^(n+1-acot(a(n-1))))` with `a(0)=1`
-/

namespace A290198.P9316301608197235094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(2 : ℝ) ^ ((n + 1 : ℝ) - SequenceMachineLib.acot (a (n - 1) : ℝ))⌋

end

end A290198.P9316301608197235094

namespace A290198

/-- `floor(2^(n+1-acot(a(n-1))))` -/
def P9316301608197235094.Spec : Prop :=
  ∀ n, P9316301608197235094.a n = A290198 n

end A290198

/-! ## A290198.P5864258587163280589

`floor(2^(n+1-1/a(n-1)))` with `a(0)=1`
-/

namespace A290198.P5864258587163280589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(2 : ℝ) ^ ((n + 1 : ℚ) - 1 / (a (n - 1) : ℚ) : ℝ)⌋

end

end A290198.P5864258587163280589

namespace A290198

/-- `floor(2^(n+1-1/a(n-1)))` -/
def P5864258587163280589.Spec : Prop :=
  ∀ n, P5864258587163280589.a n = A290198 n

end A290198

/-! ## A290198.P9423939837513839675

`A095121(n)-(char[2]+char[3])`
-/

namespace A290198.P9423939837513839675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n - (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

end

end A290198.P9423939837513839675

namespace A290198

/-- `A095121(n)-(char[2]+char[3])` -/
def P9423939837513839675.Spec : Prop :=
  ∀ n, P9423939837513839675.a n = A290198 n

end A290198

/-! ## A290198.P6667121910537351259

`A290682(n)-C(n, C(2, n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A290198

/-- `A290682(n)-C(n, C(2, n))` -/
def P6667121910537351259.Spec : Prop :=
  ∀ n, P6667121910537351259.a n = A290198 n

theorem P6667121910537351259.correct : P6667121910537351259.Spec := by
  intro n
  simp only [A290198]

end A290198

/-! ## A290198.P18253019258663951123

`xor(∑[2^n], A308628(3*n+4))`
-/

namespace A290198.P18253019258663951123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A308628 (3 * n + 4))

end

end A290198.P18253019258663951123

namespace A290198

/-- `xor(∑[2^n], A308628(3*n+4))` -/
def P18253019258663951123.Spec : Prop :=
  ∀ n, P18253019258663951123.a n = A290198 n

end A290198

/-! ## A290198.P12498205127189029708

`A185114(n)+A091270(n)`
-/

namespace A290198.P12498205127189029708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185114 n + A091270 n

end

end A290198.P12498205127189029708

namespace A290198

/-- `A185114(n)+A091270(n)` -/
def P12498205127189029708.Spec : Prop :=
  ∀ n, P12498205127189029708.a n = A290198 n

end A290198

/-! ## A290198.P3988588470507019547

`or(A026622(n), A174317(n))`
-/

namespace A290198.P3988588470507019547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026622 n) (A174317 n)

end

end A290198.P3988588470507019547

namespace A290198

/-- `or(A026622(n), A174317(n))` -/
def P3988588470507019547.Spec : Prop :=
  ∀ n, P3988588470507019547.a n = A290198 n

end A290198

/-! ## A290198.P5208561097184651359

`ceil(A296965(n+1)-n/A063867(n+1))`
-/

namespace A290198.P5208561097184651359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A296965 (n + 1) : ℚ) - (n : ℚ) / (A063867 (n + 1) : ℚ)⌉

end

end A290198.P5208561097184651359

namespace A290198

/-- `ceil(A296965(n+1)-n/A063867(n+1))` -/
def P5208561097184651359.Spec : Prop :=
  ∀ n, P5208561097184651359.a n = A290198 n

end A290198

/-! ## A290198.P2254996498700879287

`A290194(n)+and(A134451(n), A283523(n))`
-/

namespace A290198.P2254996498700879287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290194 n + Int.land (A134451 n) (A283523 n)

end

end A290198.P2254996498700879287

namespace A290198

/-- `A290194(n)+and(A134451(n), A283523(n))` -/
def P2254996498700879287.Spec : Prop :=
  ∀ n, P2254996498700879287.a n = A290198 n

end A290198

/-!
# A290199: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 721", based on the 5-celled von Neumann neighborhood.

The programs for A290199, the canonical program `A290199.P940950629369003112` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290199 has offset 0).

The definition of A290199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290199.P940950629369003112

`A000225(n)+and(n+1, A011782(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A290199

/-- `A000225(n)+and(n+1, A011782(n))` -/
def P940950629369003112.Spec : Prop :=
  ∀ n, P940950629369003112.a n = A290199 n

theorem P940950629369003112.correct : P940950629369003112.Spec := by
  intro n
  simp only [A290199]

end A290199

/-! ## A290199.P14220121399688867331

`A000225(n)+and(A011782(n), A052955(n))`
-/

namespace A290199.P14220121399688867331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + Int.land (A011782 n) (A052955 n)

end

end A290199.P14220121399688867331

namespace A290199

/-- `A000225(n)+and(A011782(n), A052955(n))` -/
def P14220121399688867331.Spec : Prop :=
  ∀ n, P14220121399688867331.a n = A290199 n

end A290199

/-! ## A290199.P6889288531842985093

`A000225(n)+and(A011782(n), A060546(n))`
-/

namespace A290199.P6889288531842985093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + Int.land (A011782 n) (A060546 n)

end

end A290199.P6889288531842985093

namespace A290199

/-- `A000225(n)+and(A011782(n), A060546(n))` -/
def P6889288531842985093.Spec : Prop :=
  ∀ n, P6889288531842985093.a n = A290199 n

end A290199

/-! ## A290199.P1987316466412670181

`A000225(n)+and(A011782(n), A102363(n))`
-/

namespace A290199.P1987316466412670181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + Int.land (A011782 n) (A102363 n)

end

end A290199.P1987316466412670181

namespace A290199

/-- `A000225(n)+and(A011782(n), A102363(n))` -/
def P1987316466412670181.Spec : Prop :=
  ∀ n, P1987316466412670181.a n = A290199 n

end A290199

/-! ## A290199.P12114277489098812438

`A000225(n)+and(A011782(n), A128209(n))`
-/

namespace A290199.P12114277489098812438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + Int.land (A011782 n) (A128209 n)

end

end A290199.P12114277489098812438

namespace A290199

/-- `A000225(n)+and(A011782(n), A128209(n))` -/
def P12114277489098812438.Spec : Prop :=
  ∀ n, P12114277489098812438.a n = A290199 n

end A290199

/-! ## A290199.P16594369877975885269

`A000225(n)+∏{digits}[A000225(n), A228620(#+1)]`
-/

namespace A290199.P16594369877975885269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A228620 (x + 1)).prod

end

end A290199.P16594369877975885269

namespace A290199

/-- `A000225(n)+∏{digits}[A000225(n), A228620(#+1)]` -/
def P16594369877975885269.Spec : Prop :=
  ∀ n, P16594369877975885269.a n = A290199 n

end A290199

/-! ## A290199.P9065711996072953791

`A000225(n)+and(n+1, -A003945(n))`
-/

namespace A290199.P9065711996072953791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + Int.land (n + 1 : ℤ) (-A003945 n)

end

end A290199.P9065711996072953791

namespace A290199

/-- `A000225(n)+and(n+1, -A003945(n))` -/
def P9065711996072953791.Spec : Prop :=
  ∀ n, P9065711996072953791.a n = A290199 n

end A290199

/-! ## A290199.P6181561432555018132

`A000225(n)+and(n+1, A129952(n))`
-/

namespace A290199.P6181561432555018132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + Int.land (n + 1 : ℤ) (A129952 n)

end

end A290199.P6181561432555018132

namespace A290199

/-- `A000225(n)+and(n+1, A129952(n))` -/
def P6181561432555018132.Spec : Prop :=
  ∀ n, P6181561432555018132.a n = A290199 n

end A290199

/-! ## A290199.P2813058789748117273

`A089633(A340375(∑[5*n])+∑[n])`
-/

namespace A290199.P2813058789748117273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (A340375 (∑ j ∈ Finset.range (n + 1), f1 j) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A290199.P2813058789748117273

namespace A290199

/-- `A089633(A340375(∑[5*n])+∑[n])` -/
def P2813058789748117273.Spec : Prop :=
  ∀ n, P2813058789748117273.a n = A290199 n

end A290199

