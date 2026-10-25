import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A299401: Number of primitive weird numbers (PWN) of the form 2^n*p*q*r, where p,q,r are odd primes.

The programs for A299401, there is no canonical definition to state claims against.
-/

/-! ## A299401.P7040139832111799882

`A261321(n)+A027235(n)`
-/

namespace A299401.P7040139832111799882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261321 n + A027235 n

end

end A299401.P7040139832111799882

/-!
# A299404: a(n) = 1 + Sum_{m >= 1} (m + 1)^n/2^(m - 1).

The programs for A299404, there is no canonical definition to state claims against.
-/

/-! ## A299404.P10209108592716998762

`2*A007047(n)+1`
-/

namespace A299404.P10209108592716998762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007047 n + 1

end

end A299404.P10209108592716998762

/-! ## A299404.P4871452185170313085

`4*A000629(n)-1`
-/

namespace A299404.P4871452185170313085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000629 n - 1

end

end A299404.P4871452185170313085

/-! ## A299404.P9181296153855214270

`4*A002050(n)+3`
-/

namespace A299404.P9181296153855214270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002050 n + 3

end

end A299404.P9181296153855214270

/-! ## A299404.P11102276958010777672

`∑[4*A162509(n)]-1`
-/

namespace A299404.P11102276958010777672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A162509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A299404.P11102276958010777672

/-! ## A299404.P17936325824118077255

`A259533(n)+A000051(n)`
-/

namespace A299404.P17936325824118077255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259533 n + A000051 n

end

end A299404.P17936325824118077255

/-! ## A299404.P4927115776298114140

`A000629(n)+A007047(n)+A000629(n)`
-/

namespace A299404.P4927115776298114140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 n + (A007047 n + A000629 n)

end

end A299404.P4927115776298114140

/-! ## A299404.P17647903053640186742

`A007047(n)+A007047(n)-A153881(n+2)`
-/

namespace A299404.P17647903053640186742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007047 n + (A007047 n - A153881 (n + 2))

end

end A299404.P17647903053640186742

/-!
# A299405: Solution (a(n)) of the system of 5 complementary equations in Comments.

The programs for A299405, there is no canonical definition to state claims against.
-/

/-! ## A299405.P13585819283399055004

`A110655(A299409(n)-9)`
-/

namespace A299405.P13585819283399055004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A299409 n - 9).toNat

end

end A299405.P13585819283399055004

/-! ## A299405.P16513709927149285725

`A008621(A299409(n)-10)`
-/

namespace A299405.P16513709927149285725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A299409 n - 10).toNat

end

end A299405.P16513709927149285725

/-! ## A299405.P2675564889330765188

`A002265(A299409(n)-6)`
-/

namespace A299405.P2675564889330765188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A299409 n - 6).toNat

end

end A299405.P2675564889330765188

/-! ## A299405.P12091682412366002698

`A004526(A004526(A299409(n))-3)`
-/

namespace A299405.P12091682412366002698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 (A299409 n).toNat - 3).toNat

end

end A299405.P12091682412366002698

/-! ## A299405.P1190527031269433875

`A123108(A123108(A299409(n))-3)`
-/

namespace A299405.P1190527031269433875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A123108 (A299409 n).toNat - 3).toNat

end

end A299405.P1190527031269433875

/-!
# A299406: Dirichlet g.f.: Sum_{n>0} a(n)/n^s = (zeta(s)*zeta(6*s))/(zeta(2*s)*zeta(3*s)).

The programs for A299406, the canonical program `A299406.P12851445645438717549` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299406 has offset 1).

The definition of A299406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299406.P13496800400228964789

`∏{e}[n+1, round(cos(#))]`
-/

namespace A299406.P13496800400228964789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (Real.cos (Nat.factorization (f1 n) p : ℝ))

end

end A299406.P13496800400228964789

namespace A299406

/-- `∏{e}[n+1, round(cos(#))]` -/
def P13496800400228964789.Spec : Prop :=
  ∀ n, P13496800400228964789.a n = A299406 (n + 1)

end A299406

/-! ## A299406.P12851445645438717549

`∏{e}[n+1, A000484(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A299406

/-- `∏{e}[n+1, A000484(#)]` -/
def P12851445645438717549.Spec : Prop :=
  ∀ n, P12851445645438717549.a n = A299406 (n + 1)

theorem P12851445645438717549.correct : P12851445645438717549.Spec := by
  intro n
  simp only [A299406, Nat.add_sub_cancel]

end A299406

/-! ## A299406.P9271145307212787998

`∏{e}[n+1, A010892(#)]`
-/

namespace A299406.P9271145307212787998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A010892 (Nat.factorization (f1 n) p)

end

end A299406.P9271145307212787998

namespace A299406

/-- `∏{e}[n+1, A010892(#)]` -/
def P9271145307212787998.Spec : Prop :=
  ∀ n, P9271145307212787998.a n = A299406 (n + 1)

end A299406

/-! ## A299406.P18045849053785465758

`∏{e}[n+1, A011649(#)]`
-/

namespace A299406.P18045849053785465758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A011649 (Nat.factorization (f1 n) p)

end

end A299406.P18045849053785465758

namespace A299406

/-- `∏{e}[n+1, A011649(#)]` -/
def P18045849053785465758.Spec : Prop :=
  ∀ n, P18045849053785465758.a n = A299406 (n + 1)

end A299406

/-! ## A299406.P444588006954547931

`∏{e}[n+1, A011652(#)]`
-/

namespace A299406.P444588006954547931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A011652 (Nat.factorization (f1 n) p)

end

end A299406.P444588006954547931

namespace A299406

/-- `∏{e}[n+1, A011652(#)]` -/
def P444588006954547931.Spec : Prop :=
  ∀ n, P444588006954547931.a n = A299406 (n + 1)

end A299406

/-! ## A299406.P6779631183884321182

`∏{e}[n+1, A015947(#)]`
-/

namespace A299406.P6779631183884321182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A015947 (Nat.factorization (f1 n) p)

end

end A299406.P6779631183884321182

namespace A299406

/-- `∏{e}[n+1, A015947(#)]` -/
def P6779631183884321182.Spec : Prop :=
  ∀ n, P6779631183884321182.a n = A299406 (n + 1)

end A299406

/-! ## A299406.P10087806691528631777

`∏{e}[n+1, A016345(#)]`
-/

namespace A299406.P10087806691528631777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A016345 (Nat.factorization (f1 n) p)

end

end A299406.P10087806691528631777

namespace A299406

/-- `∏{e}[n+1, A016345(#)]` -/
def P10087806691528631777.Spec : Prop :=
  ∀ n, P10087806691528631777.a n = A299406 (n + 1)

end A299406

/-! ## A299406.P18249727871351235014

`∏{e}[n+1, A131026(#+1)-1]`
-/

namespace A299406.P18249727871351235014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A131026 (Nat.factorization (f1 n) p + 1) - 1)

end

end A299406.P18249727871351235014

namespace A299406

/-- `∏{e}[n+1, A131026(#+1)-1]` -/
def P18249727871351235014.Spec : Prop :=
  ∀ n, P18249727871351235014.a n = A299406 (n + 1)

end A299406

/-! ## A299406.P504166825672578128

`A128834(A015996(n+1))`
-/

namespace A299406.P504166825672578128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A015996 (n + 1)).toNat

end

end A299406.P504166825672578128

namespace A299406

/-- `A128834(A015996(n+1))` -/
def P504166825672578128.Spec : Prop :=
  ∀ n, P504166825672578128.a n = A299406 (n + 1)

end A299406

/-! ## A299406.P15174537501978923441

`A008836(n+1)*A210826(n+1)`
-/

namespace A299406.P15174537501978923441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A210826 (n + 1)

end

end A299406.P15174537501978923441

namespace A299406

/-- `A008836(n+1)*A210826(n+1)` -/
def P15174537501978923441.Spec : Prop :=
  ∀ n, P15174537501978923441.a n = A299406 (n + 1)

end A299406

/-! ## A299406.P1612896466419543376

`∑{d}[n+1, A000005(#)*A332732((n+1)/#)]`
-/

namespace A299406.P1612896466419543376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A332732 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A299406.P1612896466419543376

namespace A299406

/-- `∑{d}[n+1, A000005(#)*A332732((n+1)/#)]` -/
def P1612896466419543376.Spec : Prop :=
  ∀ n, P1612896466419543376.a n = A299406 (n + 1)

end A299406

/-! ## A299406.P9524590544291973976

`(A002819(n+1)-A002819(n))*A210826(n+1)`
-/

namespace A299406.P9524590544291973976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002819 (n + 1) - A002819 n) * A210826 (n + 1)

end

end A299406.P9524590544291973976

namespace A299406

/-- `(A002819(n+1)-A002819(n))*A210826(n+1)` -/
def P9524590544291973976.Spec : Prop :=
  ∀ n, P9524590544291973976.a n = A299406 (n + 1)

end A299406

/-! ## A299406.P15310960639817402043

`A061020(n+1)/A206369(n+1)*A210826(n+1)`
-/

namespace A299406.P15310960639817402043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061020 (n + 1) : ℚ) / (A206369 (n + 1) : ℚ) * (A210826 (n + 1) : ℚ)

end

end A299406.P15310960639817402043

namespace A299406

/-- `A061020(n+1)/A206369(n+1)*A210826(n+1)` -/
def P15310960639817402043.Spec : Prop :=
  ∀ n, P15310960639817402043.a n = (A299406 (n + 1) : ℚ)

end A299406

/-! ## A299406.P4642875850248956288

`A128834(A016006(n+1))`
-/

namespace A299406.P4642875850248956288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A016006 (n + 1)).toNat

end

end A299406.P4642875850248956288

namespace A299406

/-- `A128834(A016006(n+1))` -/
def P4642875850248956288.Spec : Prop :=
  ∀ n, P4642875850248956288.a n = A299406 (n + 1)

end A299406

/-! ## A299406.P11414001521145911472

`A210826(A003557(n+1)²)/A008836(A003557(n+1))`
-/

namespace A299406.P11414001521145911472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210826 (A003557 (n + 1) ^ 2).toNat : ℚ) / (A008836 (A003557 (n + 1)).toNat : ℚ)

end

end A299406.P11414001521145911472

namespace A299406

/-- `A210826(A003557(n+1)²)/A008836(A003557(n+1))` -/
def P11414001521145911472.Spec : Prop :=
  ∀ n, P11414001521145911472.a n = (A299406 (n + 1) : ℚ)

end A299406

/-!
# A299407: Solution b( ) of the complementary equation a(n) = b(n-1) + b(n-2), where a(0) = 1, a(1) = 4; see Comments.

The programs for A299407, there is no canonical definition to state claims against.
-/

/-! ## A299407.P17311464010888759798

`comp[A022425(n)-1]+1`
-/

namespace A299407.P17311464010888759798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022425 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A299407.P17311464010888759798

/-! ## A299407.P6870550152503583894

`A022425(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A299407.P6870550152503583894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A022425 (n + 1) - a (n - 1)

end

end A299407.P6870550152503583894

/-! ## A299407.P10846312935834249607

`A324142(n+2)-a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A299407.P10846312935834249607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A324142 (n + 2) - a (n - 1)

end

end A299407.P10846312935834249607

/-! ## A299407.P16643700645789520109

`floor(acot(n))+comp[A324142(n+1)-1]+1`
-/

namespace A299407.P16643700645789520109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324142 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)

end

end A299407.P16643700645789520109

/-! ## A299407.P6381664939317763730

`A022432(n+2)-A299417(n+1)`
-/

namespace A299407.P6381664939317763730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022432 (n + 2) - A299417 (n + 1)

end

end A299407.P6381664939317763730

/-! ## A299407.P4611434756108616772

`A036987(2*n)+comp[A324142(n+1)-1]+1`
-/

namespace A299407.P4611434756108616772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324142 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)

end

end A299407.P4611434756108616772

/-! ## A299407.P10006894618265709203

`A278105(n+3)+comp[A324142(n+1)-1]+1`
-/

namespace A299407.P10006894618265709203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324142 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278105 (n + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)

end

end A299407.P10006894618265709203

/-! ## A299407.P5329530170033461979

`A324142(n+2)-A324143(abs(1-n)+1)`
-/

namespace A299407.P5329530170033461979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324142 (n + 2) - A324143 (|1 - (n : ℤ)| + 1).toNat

end

end A299407.P5329530170033461979

/-! ## A299407.P8202826009452855494

`floor(A324143(n+1)+acot(n))`
-/

namespace A299407.P8202826009452855494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A324143 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A299407.P8202826009452855494

/-! ## A299407.P5887417420440063383

`A181440(A324143(n+1))`
-/

namespace A299407.P5887417420440063383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A324143 (n + 1)).toNat

end

end A299407.P5887417420440063383

/-!
# A299408: Number of partitions of n whose minimal excluded multiplicity is even.

The programs for A299408, there is no canonical definition to state claims against.
-/

/-! ## A299408.P13692120764017825404

`A000041(n)-A300183(n)`
-/

namespace A299408.P13692120764017825404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A300183 n

end

end A299408.P13692120764017825404

/-! ## A299408.P13420063482729753759

`A213598(n)-A300183(n)`
-/

namespace A299408.P13420063482729753759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A300183 n

end

end A299408.P13420063482729753759

/-! ## A299408.P12839060007454244433

`sqrt(A001255(n))-A300183(n)`
-/

namespace A299408.P12839060007454244433
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A300183 n : ℝ)

end

end A299408.P12839060007454244433

/-! ## A299408.P15276421296069915402

`∑[A002865(n)]-A300183(n)`
-/

namespace A299408.P15276421296069915402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A300183 n

end

end A299408.P15276421296069915402

/-! ## A299408.P16521089731046556395

`A000065(n)+1-A300183(n)`
-/

namespace A299408.P16521089731046556395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A300183 n)

end

end A299408.P16521089731046556395

/-!
# A299409: Solution (e(n)) of the system of 5 complementary equations in Comments.

The programs for A299409, there is no canonical definition to state claims against.
-/

/-! ## A299409.P3803700126942281538

`A101869(2*n+1)-A354578(A160797(3*n+5))`
-/

namespace A299409.P3803700126942281538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101869 (2 * n + 1) - A354578 (A160797 (3 * n + 5)).toNat

end

end A299409.P3803700126942281538

/-! ## A299409.P10749591346735910366

`A082286(n)-A139352(A247610(n))`
-/

namespace A299409.P10749591346735910366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082286 n - A139352 (A247610 n).toNat

end

end A299409.P10749591346735910366

/-! ## A299409.P9321620653634512649

`A101869(2*n+1)-A101856(A101831(n+1))`
-/

namespace A299409.P9321620653634512649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101869 (2 * n + 1) - A101856 (A101831 (n + 1)).toNat

end

end A299409.P9321620653634512649

/-!
# A299411: Solution b( ) of the complementary equation a(n) = b(n-1) + b(n-2), where a(0) = 2, a(1) = 3; see Comments.

The programs for A299411, there is no canonical definition to state claims against.
-/

/-! ## A299411.P4296480903645439643

`A022426(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A299411.P4296480903645439643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022426 (n + 1) - a (n - 1)

end

end A299411.P4296480903645439643

/-! ## A299411.P757324556830598118

`Δ[∑[A022426(n)]-a(n-1)]` with `a(0)=2`
-/

namespace A299411.P757324556830598118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022426 n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299411.P757324556830598118

/-! ## A299411.P6798342789970100290

`eq[char[A022426(n)], A000007(n)]`
-/

namespace A299411.P6798342789970100290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022426 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299411.P6798342789970100290

/-! ## A299411.P2228963797464750664

`eq[char[A022426(n)], A000038(n)]`
-/

namespace A299411.P2228963797464750664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022426 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299411.P2228963797464750664

/-! ## A299411.P4868446723752127619

`record[A299407(n)-A053644(n+1)]`
-/

namespace A299411.P4868446723752127619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299407 n - A053644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299411.P4868446723752127619

/-! ## A299411.P8725695620527396667

`A008619(A022426(n+2)-Δ[A022426(n+2)])`
-/

namespace A299411.P8725695620527396667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022426 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A022426 (n + 2) - (f1 (n + 1) - f1 n)).toNat

end

end A299411.P8725695620527396667

/-!
# A299412: Pentagonal pyramidal numbers divisible by 3.

The programs for A299412, the canonical program `A299412.P10505866840362390154` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299412 has offset 0).

The definition of A299412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299412.P10505866840362390154

`A007494(n)*A117748(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A299412

/-- `A007494(n)*A117748(n+1)` -/
def P10505866840362390154.Spec : Prop :=
  ∀ n, P10505866840362390154.a n = A299412 n

theorem P10505866840362390154.correct : P10505866840362390154.Spec := by
  intro n
  simp only [A299412]

end A299412

/-! ## A299412.P1726598091542537073

`3*A001318(n)*A007494(n)`
-/

namespace A299412.P1726598091542537073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001318 n * A007494 n

end

end A299412.P1726598091542537073

namespace A299412

/-- `3*A001318(n)*A007494(n)` -/
def P1726598091542537073.Spec : Prop :=
  ∀ n, P1726598091542537073.a n = A299412 n

end A299412

/-! ## A299412.P6931308295729401293

`C(∑[gcd(2, n+1)], 2)*comp[(1-n)%3+n]`
-/

namespace A299412.P6931308295729401293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (n : ℤ)) 3 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

end

end A299412.P6931308295729401293

namespace A299412

/-- `C(∑[gcd(2, n+1)], 2)*comp[(1-n)%3+n]` -/
def P6931308295729401293.Spec : Prop :=
  ∀ n, (P6931308295729401293.a n : ℤ) = A299412 n

end A299412

/-! ## A299412.P1003379522255172352

`ceil(3*n/2)*A000217(ceil(3*n/2))`
-/

namespace A299412.P1003379522255172352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n : ℚ) / 2)⌉ * A000217 ⌈3 * ((n : ℚ) / 2)⌉.toNat

end

end A299412.P1003379522255172352

namespace A299412

/-- `ceil(3*n/2)*A000217(ceil(3*n/2))` -/
def P1003379522255172352.Spec : Prop :=
  ∀ n, P1003379522255172352.a n = A299412 n

end A299412

/-! ## A299412.P3111625783722307749

`∑[A064680(n)+n]*A007494(n)`
-/

namespace A299412.P3111625783722307749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A007494 n

end

end A299412.P3111625783722307749

namespace A299412

/-- `∑[A064680(n)+n]*A007494(n)` -/
def P3111625783722307749.Spec : Prop :=
  ∀ n, P3111625783722307749.a n = A299412 n

end A299412

/-! ## A299412.P17623647660208794878

`A117748(n+1)*A294732(n+2)`
-/

namespace A299412.P17623647660208794878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117748 (n + 1) * A294732 (n + 2)

end

end A299412.P17623647660208794878

namespace A299412

/-- `A117748(n+1)*A294732(n+2)` -/
def P17623647660208794878.Spec : Prop :=
  ∀ n, P17623647660208794878.a n = A299412 n

end A299412

/-! ## A299412.P4630225037951131817

`(A110654(n)+n)*A117748(n+1)`
-/

namespace A299412.P4630225037951131817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110654 n + (n : ℤ)) * A117748 (n + 1)

end

end A299412.P4630225037951131817

namespace A299412

/-- `(A110654(n)+n)*A117748(n+1)` -/
def P4630225037951131817.Spec : Prop :=
  ∀ n, P4630225037951131817.a n = A299412 n

theorem P4630225037951131817.correct : P4630225037951131817.Spec := by
  intro n
  simp only [A299412, Nat.add_sub_cancel, A299412.P4630225037951131817.a, A299412.P10505866840362390154.a, A007494, A007494.P3893619610466939533.a, A110654, A110654.P360289776162656549.a, A117748, A117748.P6377356464748108115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A299412

/-! ## A299412.P340265204715491788

`A000217(A007494(n))*A007494(n)`
-/

namespace A299412.P340265204715491788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A007494 n).toNat * A007494 n

end

end A299412.P340265204715491788

namespace A299412

/-- `A000217(A007494(n))*A007494(n)` -/
def P340265204715491788.Spec : Prop :=
  ∀ n, P340265204715491788.a n = A299412 n

end A299412

/-! ## A299412.P14115581162940260331

`A002411(comp[3*n+1])`
-/

namespace A299412.P14115581162940260331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A299412.P14115581162940260331

namespace A299412

/-- `A002411(comp[3*n+1])` -/
def P14115581162940260331.Spec : Prop :=
  ∀ n, P14115581162940260331.a n = A299412 n

end A299412

/-! ## A299412.P7888309984126583110

`A000217(A057353(2*n+1))*A057353(2*n+1)`
-/

namespace A299412.P7888309984126583110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A057353 (2 * n + 1)).toNat * A057353 (2 * n + 1)

end

end A299412.P7888309984126583110

namespace A299412

/-- `A000217(A057353(2*n+1))*A057353(2*n+1)` -/
def P7888309984126583110.Spec : Prop :=
  ∀ n, P7888309984126583110.a n = A299412 n

end A299412

/-! ## A299412.P6619106674676644437

`∑[A026741(3*n)]*A007494(n)`
-/

namespace A299412.P6619106674676644437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A007494 n

end

end A299412.P6619106674676644437

namespace A299412

/-- `∑[A026741(3*n)]*A007494(n)` -/
def P6619106674676644437.Spec : Prop :=
  ∀ n, P6619106674676644437.a n = A299412 n

end A299412

/-! ## A299412.P5418867106010475891

`A110655(2*n)/2*A184534(3*n+1)`
-/

namespace A299412.P5418867106010475891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110655 (2 * n) : ℚ) / 2 * (A184534 (3 * n + 1) : ℚ)

end

end A299412.P5418867106010475891

namespace A299412

/-- `A110655(2*n)/2*A184534(3*n+1)` -/
def P5418867106010475891.Spec : Prop :=
  ∀ n, P5418867106010475891.a n = (A299412 n : ℚ)

end A299412

/-! ## A299412.P9263879550887156973

`A000217(A110654(3*n))*A110654(3*n)`
-/

namespace A299412.P9263879550887156973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A110654 (3 * n)).toNat * A110654 (3 * n)

end

end A299412.P9263879550887156973

namespace A299412

/-- `A000217(A110654(3*n))*A110654(3*n)` -/
def P9263879550887156973.Spec : Prop :=
  ∀ n, P9263879550887156973.a n = A299412 n

end A299412

/-! ## A299412.P7939551658896296447

`A188067(A047233(n+1))`
-/

namespace A299412.P7939551658896296447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188067 (A047233 (n + 1)).toNat

end

end A299412.P7939551658896296447

namespace A299412

/-- `A188067(A047233(n+1))` -/
def P7939551658896296447.Spec : Prop :=
  ∀ n, P7939551658896296447.a n = A299412 n

end A299412

/-! ## A299412.P14566858186055181209

`A028724(A047238(n+2))`
-/

namespace A299412.P14566858186055181209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 (A047238 (n + 2)).toNat

end

end A299412.P14566858186055181209

namespace A299412

/-- `A028724(A047238(n+2))` -/
def P14566858186055181209.Spec : Prop :=
  ∀ n, P14566858186055181209.a n = A299412 n

end A299412

/-! ## A299412.P4771663999488346575

`A188067(2*A110654(3*n))`
-/

namespace A299412.P4771663999488346575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188067 (2 * A110654 (3 * n)).toNat

end

end A299412.P4771663999488346575

namespace A299412

/-- `A188067(2*A110654(3*n))` -/
def P4771663999488346575.Spec : Prop :=
  ∀ n, P4771663999488346575.a n = A299412 n

end A299412

/-! ## A299412.P7319456756673586292

`record[n*A001971(A051724(2*n+1))]`
-/

namespace A299412.P7319456756673586292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001971 (A051724 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299412.P7319456756673586292

namespace A299412

/-- `record[n*A001971(A051724(2*n+1))]` -/
def P7319456756673586292.Spec : Prop :=
  ∀ n, P7319456756673586292.a n = A299412 n

end A299412

/-! ## A299412.P16637546155274873426

`record[n*A069981(A065330(2*n+1))]`
-/

namespace A299412.P16637546155274873426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A069981 (A065330 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299412.P16637546155274873426

namespace A299412

/-- `record[n*A069981(A065330(2*n+1))]` -/
def P16637546155274873426.Spec : Prop :=
  ∀ n, P16637546155274873426.a n = A299412 n

end A299412

/-! ## A299412.P16056575296244412729

`A001318(n)*A047229(A007310(n+1))`
-/

namespace A299412.P16056575296244412729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n * A047229 (A007310 (n + 1)).toNat

end

end A299412.P16056575296244412729

namespace A299412

/-- `A001318(n)*A047229(A007310(n+1))` -/
def P16056575296244412729.Spec : Prop :=
  ∀ n, P16056575296244412729.a n = A299412 n

end A299412

/-!
# A299415: Number of steps of iterating z -> z^2 + c with c = 1/4 + 10^(-n) to reach z > 2, starting with z = 0.

The programs for A299415, there is no canonical definition to state claims against.
-/

/-! ## A299415.P3859149494518870395

`A049416(n+1)-dr(A295176(n))`
-/

namespace A299415.P3859149494518870395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049416 (n + 1) - (SequenceMachineLib.digitalRoot (A295176 n) : ℤ)

end

end A299415.P3859149494518870395

/-! ## A299415.P6867727004594974959

`A049416(n+1)-A089000(A061130(n))`
-/

namespace A299415.P6867727004594974959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049416 (n + 1) - A089000 (A061130 n).toNat

end

end A299415.P6867727004594974959

/-!
# A299417: Solution b( ) of the complementary equation a(n) = b(n-1) + b(n-2), where a(0) = 3, a(1) = 4; see Comments.

The programs for A299417, there is no canonical definition to state claims against.
-/

/-! ## A299417.P1770964757871762963

`A022432(n+1)+A299407(n)-A022425(n+1)`
-/

namespace A299417.P1770964757871762963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022432 (n + 1) + (A299407 n - A022425 (n + 1))

end

end A299417.P1770964757871762963

/-! ## A299417.P4379372390702315086

`A299416(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A299417.P4379372390702315086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299416 (n + 1) - a (n - 1)

end

end A299417.P4379372390702315086

/-! ## A299417.P3767168839685911465

`comp[A299416(n)%A076467(n+1)]`
-/

namespace A299417.P3767168839685911465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299416 n) (A076467 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A299417.P3767168839685911465

/-! ## A299417.P10905376219187264962

`record[A299407(n)-A072376(n+1)]`
-/

namespace A299417.P10905376219187264962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299407 n - A072376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299417.P10905376219187264962

/-! ## A299417.P3685498192705624063

`record[A299407(n)-A053644(A006949(n))]`
-/

namespace A299417.P3685498192705624063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299407 n - A053644 (A006949 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299417.P3685498192705624063

/-! ## A299417.P2400940317546320762

`eq[char[A299416(n)], A000007(n)]`
-/

namespace A299417.P2400940317546320762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299416 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299417.P2400940317546320762

/-! ## A299417.P8984128577121809180

`eq[char[A299416(n)], A000038(n)]`
-/

namespace A299417.P8984128577121809180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299416 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299417.P8984128577121809180

/-! ## A299417.P12393011847009554827

`record[A324143(n+1)-A072376(n)]`
-/

namespace A299417.P12393011847009554827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324143 (n + 1) - A072376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299417.P12393011847009554827

/-! ## A299417.P7925533306581490301

`record[A324143(n+1)-A026741(A053644(n))]`
-/

namespace A299417.P7925533306581490301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324143 (n + 1) - A026741 (A053644 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299417.P7925533306581490301

/-!
# A299419: Solution b( ) of the complementary equation a(n) = b(n-1) + b(n-2), where a(0) = 3, a(1) = 5; see Comments.

The programs for A299419, there is no canonical definition to state claims against.
-/

/-! ## A299419.P6746873371416765814

`A299418(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A299419.P6746873371416765814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299418 (n + 1) - a (n - 1)

end

end A299419.P6746873371416765814

/-! ## A299419.P6142722369142694830

`eq[char[A299418(n)], A000007(n)]`
-/

namespace A299419.P6142722369142694830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299418 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299419.P6142722369142694830

/-! ## A299419.P9900914378024558484

`eq[char[A299418(n)], A000038(n)]`
-/

namespace A299419.P9900914378024558484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299418 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299419.P9900914378024558484

/-! ## A299419.P17894934083846165806

`eq[1, A054977(n)+char[A299418(n)]]`
-/

namespace A299419.P17894934083846165806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299418 n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A299419.P17894934083846165806

/-! ## A299419.P14335920755022032657

`eq[A169585(n)%3, char[A299418(n)]]`
-/

namespace A299419.P14335920755022032657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169585 n) 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299418 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A299419.P14335920755022032657

/-! ## A299419.P113449859219076629

`eq[char[A299418(n)], A169585(n+1)]`
-/

namespace A299419.P113449859219076629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299418 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299419.P113449859219076629

/-! ## A299419.P4824865872034349720

`eq[A169585(2*n), char[A299418(n)]]`
-/

namespace A299419.P4824865872034349720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299418 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A299419.P4824865872034349720

/-! ## A299419.P6334193620717082098

`eq[char[A299418(n)], A266220(2*n)]`
-/

namespace A299419.P6334193620717082098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299418 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299419.P6334193620717082098

/-! ## A299419.P4565681304334365696

`eq[char[A299418(n)], A151933(n)]`
-/

namespace A299419.P4565681304334365696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299418 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299419.P4565681304334365696

/-!
# A299421: Solution b( ) of the complementary equation a(n) = b(n-1) + b(n-2), where a(0) = 4, a(1) = 5; see Comments.

The programs for A299421, there is no canonical definition to state claims against.
-/

/-! ## A299421.P36523048405094195

`A299420(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A299421.P36523048405094195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299420 (n + 1) - a (n - 1)

end

end A299421.P36523048405094195

/-! ## A299421.P14377710151868054127

`eq[char[A299420(n)], A000007(n)]`
-/

namespace A299421.P14377710151868054127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299420 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299421.P14377710151868054127

/-! ## A299421.P16300020023808179457

`eq[char[A299420(n)], A000038(n)]`
-/

namespace A299421.P16300020023808179457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299420 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299421.P16300020023808179457

/-! ## A299421.P14439701438290076190

`eq[A055758(n)%2, char[A299420(n)]]`
-/

namespace A299421.P14439701438290076190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055758 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299420 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A299421.P14439701438290076190

/-! ## A299421.P8168870736164272192

`eq[char[A299420(n)], A151933(n)]`
-/

namespace A299421.P8168870736164272192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299420 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299421.P8168870736164272192

/-!
# A299423: Solution (c(n)) of the system of 3 complementary equations in Comments.

The programs for A299423, there is no canonical definition to state claims against.
-/

/-! ## A299423.P12514796727247504812

`A043065(n+1)+p?[A225950(n+2)]`
-/

namespace A299423.P12514796727247504812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043065 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A299423.P12514796727247504812

/-!
# A299424: G.f. A(x) satisfies: 1 = Sum_{n>=0} binomial((n+1)*(n+2), n) / ((n+1)*(n+2)/2) * x^n / A(x)^((n+1)*(n+2)/2).

The programs for A299424, there is no canonical definition to state claims against.
-/

/-! ## A299424.P15668497733487752239

`A240574(A000292(n))+A076864(n)`
-/

namespace A299424.P15668497733487752239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240574 (A000292 n).toNat + A076864 n

end

end A299424.P15668497733487752239

/-! ## A299424.P4964701754375558853

`A098550(lcm(A020986(n), A107866(n)))`
-/

namespace A299424.P4964701754375558853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (Int.lcm (A020986 n) (A107866 n))

end

end A299424.P4964701754375558853

/-!
# A299425: E.g.f. A(x) satisfies: 1 - x = Sum_{n>=0} (Integral -A(x)^n dx)^n / n!.

The programs for A299425, there is no canonical definition to state claims against.
-/

/-! ## A299425.P3976074761876003956

`A364201(n!²)`
-/

namespace A299425.P3976074761876003956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364201 (Nat.factorial n ^ 2)

end

end A299425.P3976074761876003956

/-!
# A299426: E.g.f. Sum_{n>=0} Series_Reversion( x*exp(-n*x) )^n.

The programs for A299426, there is no canonical definition to state claims against.
-/

/-! ## A299426.P9932135117195347749

`A171397(n!²)`
-/

namespace A299426.P9932135117195347749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (Nat.factorial n ^ 2)

end

end A299426.P9932135117195347749

/-!
# A299428: a(n) = binomial((n+1)*(2*n+1), n) * (n+1)/(2*n+1).

The programs for A299428, the canonical program `A299428.P15183164769203796230` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299428 has offset 0).

The definition of A299428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299428.P15183164769203796230

`C((n+1)*(2*n+1), n)*(n+1)/(2*n+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A299428

/-- `C((n+1)*(2*n+1), n)*(n+1)/(2*n+1)` -/
def P15183164769203796230.Spec : Prop :=
  ∀ n, P15183164769203796230.a n = (A299428 n : ℚ)

end A299428

/-! ## A299428.P6300032136647909011

`(n+1)²*A299429(n)`
-/

namespace A299428.P6300032136647909011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A299429 n

end

end A299428.P6300032136647909011

namespace A299428

/-- `(n+1)²*A299429(n)` -/
def P6300032136647909011.Spec : Prop :=
  ∀ n, P6300032136647909011.a n = A299428 n

end A299428

/-! ## A299428.P2222839105243707866

`A299427(A132209(n))`
-/

namespace A299428.P2222839105243707866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299427 (A132209 n).toNat

end

end A299428.P2222839105243707866

namespace A299428

/-- `A299427(A132209(n))` -/
def P2222839105243707866.Spec : Prop :=
  ∀ n, P2222839105243707866.a n = A299428 n

end A299428

/-! ## A299428.P7925812350320629755

`record[A299427(lcm(n, A115952(n)))]`
-/

namespace A299428.P7925812350320629755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299427 (Int.lcm (n : ℤ) (A115952 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299428.P7925812350320629755

namespace A299428

/-- `record[A299427(lcm(n, A115952(n)))]` -/
def P7925812350320629755.Spec : Prop :=
  ∀ n, P7925812350320629755.a n = A299428 n

end A299428

/-! ## A299428.P5673342542954762010

`record[A299427(n*A115952(n)²)]`
-/

namespace A299428.P5673342542954762010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299427 ((n : ℤ) * A115952 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299428.P5673342542954762010

namespace A299428

/-- `record[A299427(n*A115952(n)²)]` -/
def P5673342542954762010.Spec : Prop :=
  ∀ n, P5673342542954762010.a n = A299428 n

end A299428

/-!
# A299429: a(n) = binomial((n+1)*(2*n+1), n) / ((n+1)*(2*n+1)).

The programs for A299429, the canonical program `A299429.P1276466131338795399` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299429 has offset 0).

The definition of A299429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299429.P1276466131338795399

`C((n+1)*(2*n+1), n)/((n+1)*(2*n+1))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A299429

/-- `C((n+1)*(2*n+1), n)/((n+1)*(2*n+1))` -/
def P1276466131338795399.Spec : Prop :=
  ∀ n, P1276466131338795399.a n = (A299429 n : ℚ)

end A299429

/-! ## A299429.P14265354073244640217

`A299428(n)/(n+1)²`
-/

namespace A299429.P14265354073244640217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299428 n : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A299429.P14265354073244640217

namespace A299429

/-- `A299428(n)/(n+1)²` -/
def P14265354073244640217.Spec : Prop :=
  ∀ n, P14265354073244640217.a n = (A299429 n : ℚ)

end A299429

/-! ## A299429.P13221056543096368369

`A070914(A081270(n))`
-/

namespace A299429.P13221056543096368369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (A081270 n).toNat

end

end A299429.P13221056543096368369

namespace A299429

/-- `A070914(A081270(n))` -/
def P13221056543096368369.Spec : Prop :=
  ∀ n, P13221056543096368369.a n = A299429 n

end A299429

/-! ## A299429.P13282456690128914847

`A070914(eq[2, A168532(n+1)])`
-/

namespace A299429.P13282456690128914847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299429.P13282456690128914847

namespace A299429

/-- `A070914(eq[2, A168532(n+1)])` -/
def P13282456690128914847.Spec : Prop :=
  ∀ n, P13282456690128914847.a n = A299429 n

end A299429

/-! ## A299429.P10365394609455966677

`A070914(eq[3, A126988(n+1)])`
-/

namespace A299429.P10365394609455966677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299429.P10365394609455966677

namespace A299429

/-- `A070914(eq[3, A126988(n+1)])` -/
def P10365394609455966677.Spec : Prop :=
  ∀ n, P10365394609455966677.a n = A299429 n

end A299429

/-!
# A299431: Denominators of coefficients in C(x) where: C(x)^(1/2) - S(x)^(1/2) = 1 such that C'(x)*S(x)^(1/2) = S'(x)*C(x)^(1/2) = 2*x*C(x).

The programs for A299431, there is no canonical definition to state claims against.
-/

/-! ## A299431.P11390355504685757116

`A186646(A005446(n)/A008971(n))`
-/

namespace A299431.P11390355504685757116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186646 (SequenceMachineLib.roundAway ((A005446 n : ℚ) / (A008971 n : ℚ))).toNat

end

end A299431.P11390355504685757116

/-!
# A299433: Denominators of coefficients in S(x) where: C(x)^(1/2) - S(x)^(1/2) = 1 such that C'(x)*S(x)^(1/2) = S'(x)*C(x)^(1/2) = 2*x*C(x).

The programs for A299433, there is no canonical definition to state claims against.
-/

/-! ## A299433.P6954056805267938700

`A061497(lcm(a(n-1), ∏{p}[n, #]))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A299433.P6954056805267938700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A061497 (Int.lcm (a (n - 1)) ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ))

end

end A299433.P6954056805267938700

/-! ## A299433.P513770077059159593

`∏[A002260(A325504(n))]`
-/

namespace A299433.P513770077059159593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A325504 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A299433.P513770077059159593

/-! ## A299433.P9426577395009899618

`∏[A112544(A302179(n))]`
-/

namespace A299433.P9426577395009899618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (A302179 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A299433.P9426577395009899618

/-!
# A299434: G.f. A(x) satisfies: 1 = Sum_{n>=0} binomial((n+1)^2,n)/(n+1)^2 * x^n / A(x)^((n+1)^2).

The programs for A299434, there is no canonical definition to state claims against.
-/

/-! ## A299434.P15707428381832514302

`A216345(A124753(∑[n]))`
-/

namespace A299434.P15707428381832514302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (A124753 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A299434.P15707428381832514302

/-! ## A299434.P10428744492637957294

`A275814(ceil(ceil(A005121(n+1)/3)/3))`
-/

namespace A299434.P10428744492637957294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275814 ⌈(⌈(A005121 (n + 1) : ℚ) / 3⌉ : ℚ) / 3⌉.toNat

end

end A299434.P10428744492637957294

/-!
# A299435: G.f.: Sum_{n>=0} binomial((n+1)^2, n)/(n+1) * x^n / (1 + x)^((n+1)^2).

The programs for A299435, there is no canonical definition to state claims against.
-/

/-! ## A299435.P16376592891410032855

`A314048((n-1)*a(n-1))` with `a(0)=1`
-/

namespace A299435.P16376592891410032855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A314048 (((n : ℤ) - 1) * a (n - 1)).toNat

end

end A299435.P16376592891410032855

/-!
# A299436: G.f.: exp( Sum_{n>=1} A020696(n) * x^n/n ), where A020696(n) = Product_{d|n} (d + 1).

The programs for A299436, there is no canonical definition to state claims against.
-/

/-! ## A299436.P10181387304833596942

`A318186(A070557(n))+A285721(n+1)`
-/

namespace A299436.P10181387304833596942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318186 (A070557 n).toNat + A285721 (n + 1)

end

end A299436.P10181387304833596942

/-! ## A299436.P11360387164755650375

`round(sqrt(n*A131936(n+1)+1))`
-/

namespace A299436.P11360387164755650375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n : ℤ) * A131936 (n + 1) + 1 : ℝ))

end

end A299436.P11360387164755650375

/-! ## A299436.P10800393170596334053

`floor(∑[∑[A025581(4^n-1)]]/2)+1`
-/

namespace A299436.P10800393170596334053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (4 ^ n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋ + 1

end

end A299436.P10800393170596334053

/-!
# A299439: a(n) is the smallest number k such that there exists n numbers in the range [1..k] whose product is equal to its sum.

The programs for A299439, there is no canonical definition to state claims against.
-/

/-! ## A299439.P831402834705372920

`A280055(A280089(n)+A280062(n+1))`
-/

namespace A299439.P831402834705372920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280055 (A280089 n + A280062 (n + 1)).toNat

end

end A299439.P831402834705372920

/-!
# A299442: Lexicographically earliest sequence of distinct positive terms such that, for any n > 1, if prime(k) is the greatest prime factor of a(n) then k divides a(n+1) (where prime(k) denotes the k-th prime).

The programs for A299442, there is no canonical definition to state claims against.
-/

/-! ## A299442.P3633981854932866695

`A281873(A299440(n+1))`
-/

namespace A299442.P3633981854932866695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281873 (A299440 (n + 1)).toNat

end

end A299442.P3633981854932866695

/-! ## A299442.P3564003374152015140

`A299440(n+1)%A000040(A299267(n))`
-/

namespace A299442.P3564003374152015140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299440 (n + 1)) (A000040 (A299267 n).toNat)

end

end A299442.P3564003374152015140

/-! ## A299442.P1330228035998600690

`A072411(A242366(n+1))*A299440(n+1)`
-/

namespace A299442.P1330228035998600690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A242366 (n + 1)).toNat * A299440 (n + 1)

end

end A299442.P1330228035998600690

/-! ## A299442.P17983250504810534662

`A082067(A362778(n+1))*A299440(n+1)`
-/

namespace A299442.P17983250504810534662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (A362778 (n + 1)).toNat * A299440 (n + 1)

end

end A299442.P17983250504810534662

/-! ## A299442.P6723111951025952079

`A124766(A299438(n+3))*A299440(n+1)`
-/

namespace A299442.P6723111951025952079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A299438 (n + 3)).toNat * A299440 (n + 1)

end

end A299442.P6723111951025952079

/-!
# A299443: Expansion of (x^4 + 2*x^3 + 7*x^2 - 6*x + 1)^(-1/2).

The programs for A299443, the canonical program `A299443.P5285742674954670239` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299443 has offset 0).

The definition of A299443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299443.P5285742674954670239

`((2-n)*a(n-4)+(3-2*n)*a(n-3)+7*(1-n)*a(n-2)+(6*n-3)*a(n-1))/n` with `a(0)=1, a(1)=3, a(2)=10, a(3)=35`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A299443

/-- `((2-n)*a(n-4)+(3-2*n)*a(n-3)+7*(1-n)*a(n-2)+(6*n-3)*a(n-1))/n` -/
def P5285742674954670239.Spec : Prop :=
  ∀ n, P5285742674954670239.a n = (A299443 n : ℚ)

end A299443

/-! ## A299443.P7279910759486094599

`or(A018892(A001003(n)), A078789(n))`
-/

namespace A299443.P7279910759486094599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018892 (A001003 n).toNat) (A078789 n)

end

end A299443.P7279910759486094599

namespace A299443

/-- `or(A018892(A001003(n)), A078789(n))` -/
def P7279910759486094599.Spec : Prop :=
  ∀ n, P7279910759486094599.a n = A299443 n

end A299443

/-! ## A299443.P7372233749143357770

`or(A000005(A126473(n)), A078789(n))`
-/

namespace A299443.P7372233749143357770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A126473 n).toNat) (A078789 n)

end

end A299443.P7372233749143357770

namespace A299443

/-- `or(A000005(A126473(n)), A078789(n))` -/
def P7372233749143357770.Spec : Prop :=
  ∀ n, P7372233749143357770.a n = A299443 n

end A299443

/-! ## A299443.P12880206247371626747

`or(A078789(n), A258198(A052800(n)))`
-/

namespace A299443.P12880206247371626747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A078789 n) (A258198 (A052800 n).toNat)

end

end A299443.P12880206247371626747

namespace A299443

/-- `or(A078789(n), A258198(A052800(n)))` -/
def P12880206247371626747.Spec : Prop :=
  ∀ n, P12880206247371626747.a n = A299443 n

end A299443

/-!
# A299444: Triangle read by rows, T(n, k) = 2^k*binomial(n, k)*hypergeom([-k, k - n, k - n], [1, -n], 1/2) for n >= 0 and 0 <= k <= n.

The programs for A299444, there is no canonical definition to state claims against.
-/

/-! ## A299444.P17556284935874197055

`A013609(n)+A008611(A157221(n))`
-/

namespace A299444.P17556284935874197055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n + A008611 (A157221 n).toNat

end

end A299444.P17556284935874197055

/-! ## A299444.P2712788033761596206

`A111378(A059922(n))+A013609(n)`
-/

namespace A299444.P2712788033761596206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111378 (A059922 n).toNat + A013609 n

end

end A299444.P2712788033761596206

/-! ## A299444.P15336491650953911546

`A244361(A167024(n))-A014473(n)`
-/

namespace A299444.P15336491650953911546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244361 (A167024 n).toNat - A014473 n

end

end A299444.P15336491650953911546

/-! ## A299444.P6291632917594539376

`A224861(A056242(n+1))+A056242(n+1)`
-/

namespace A299444.P6291632917594539376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224861 (A056242 (n + 1)).toNat + A056242 (n + 1)

end

end A299444.P6291632917594539376

/-!
# A299445: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299445, there is no canonical definition to state claims against.
-/

/-! ## A299445.P16787553982599638304

`A299451(∑[4*n]+1)`
-/

namespace A299445.P16787553982599638304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299445.P16787553982599638304

/-! ## A299445.P1818575674239114440

`and(-1, A299451(A001844(n)))`
-/

namespace A299445.P1818575674239114440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A299451 (A001844 n).toNat)

end

end A299445.P1818575674239114440

/-! ## A299445.P5429781100013387330

`A326685(n)+A299451(A001844(n))`
-/

namespace A299445.P5429781100013387330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326685 n + A299451 (A001844 n).toNat

end

end A299445.P5429781100013387330

/-! ## A299445.P15597971044565515526

`A014386(n)*A299451(A001844(n))`
-/

namespace A299445.P15597971044565515526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014386 n * A299451 (A001844 n).toNat

end

end A299445.P15597971044565515526

/-! ## A299445.P2842447722102853264

`lcm(A033999(n), A299451(A001844(n)))`
-/

namespace A299445.P2842447722102853264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A299451 (A001844 n).toNat)

end

end A299445.P2842447722102853264

/-!
# A299446: Number of n X 3 0..1 arrays with every element equal to 0, 1, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299446, there is no canonical definition to state claims against.
-/

/-! ## A299446.P3084057361084927181

`A299451(∑[n+2]+4)`
-/

namespace A299446.P3084057361084927181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299446.P3084057361084927181

/-! ## A299446.P7710735501255743728

`and(-1, A299451(A167614(n+1)))`
-/

namespace A299446.P7710735501255743728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A299451 (A167614 (n + 1)).toNat)

end

end A299446.P7710735501255743728

/-! ## A299446.P13635247782740755141

`A299451(A000096(n+1)+4)+char[20]`
-/

namespace A299446.P13635247782740755141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (A000096 (n + 1) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299446.P13635247782740755141

/-! ## A299446.P9837560574295508395

`A299451(A167614(n+1))+A011738(n)`
-/

namespace A299446.P9837560574295508395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (A167614 (n + 1)).toNat + A011738 n

end

end A299446.P9837560574295508395

/-! ## A299446.P137582587047378095

`A299451(A167614(n+1))+A185037(n)`
-/

namespace A299446.P137582587047378095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (A167614 (n + 1)).toNat + A185037 n

end

end A299446.P137582587047378095

/-!
# A299447: Number of nX4 0..1 arrays with every element equal to 0, 1, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299447, there is no canonical definition to state claims against.
-/

/-! ## A299447.P6032850854142058351

`A299451(∑[n+3]+7)`
-/

namespace A299447.P6032850854142058351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299447.P6032850854142058351

/-! ## A299447.P4553634315525034792

`(A299451(Δ[A008778(n)]+6)^(1/2))²`
-/

namespace A299447.P4553634315525034792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A299451 (f1 (n + 1) - f1 n + 6).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A299447.P4553634315525034792

/-! ## A299447.P695116236822201180

`A299451(Δ[A008778(n)]+6)+A008683(4*(n+1))`
-/

namespace A299447.P695116236822201180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (f1 (n + 1) - f1 n + 6).toNat + A008683 (4 * (n + 1))

end

end A299447.P695116236822201180

/-! ## A299447.P10596873734175822622

`A299451(Δ[A008778(n)]+6)%A000045(2*(n+3))`
-/

namespace A299447.P10596873734175822622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299451 (f1 (n + 1) - f1 n + 6).toNat) (A000045 (2 * (n + 3)))

end

end A299447.P10596873734175822622

/-! ## A299447.P9786800302391666629

`A000010(((-1)^n)²)*A299451(Δ[A008778(n)]+6)`
-/

namespace A299447.P9786800302391666629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (((-1) ^ n) ^ 2).toNat * A299451 (f1 (n + 1) - f1 n + 6).toNat

end

end A299447.P9786800302391666629

/-!
# A299448: Number of n X 5 0..1 arrays with every element equal to 0, 1, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299448, there is no canonical definition to state claims against.
-/

/-! ## A299448.P11517533609616986641

`A299451(A167499(n+3))`
-/

namespace A299448.P11517533609616986641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (A167499 (n + 3)).toNat

end

end A299448.P11517533609616986641

/-! ## A299448.P5141070493609617870

`A299451(A155212(n)+13)`
-/

namespace A299448.P5141070493609617870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (A155212 n + 13).toNat

end

end A299448.P5141070493609617870

/-! ## A299448.P9478634271135372257

`A299451(A056000(n)+15)`
-/

namespace A299448.P9478634271135372257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (A056000 n + 15).toNat

end

end A299448.P9478634271135372257

/-! ## A299448.P6276365034525469848

`A299451(eq[7, A066657(n)])`
-/

namespace A299448.P6276365034525469848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299448.P6276365034525469848

/-! ## A299448.P13918086181370849458

`A299451(A133263(n+4)+3)`
-/

namespace A299448.P13918086181370849458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (A133263 (n + 4) + 3).toNat

end

end A299448.P13918086181370849458

/-!
# A299449: Number of nX6 0..1 arrays with every element equal to 0, 1, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299449, there is no canonical definition to state claims against.
-/

/-! ## A299449.P1731663151069643334

`A299451(A056115(n)+21)`
-/

namespace A299449.P1731663151069643334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (A056115 n + 21).toNat

end

end A299449.P1731663151069643334

/-! ## A299449.P2535385233120621900

`A299451(Δ[A264443(n)]+10)`
-/

namespace A299449.P2535385233120621900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (f1 (n + 1) - f1 n + 10).toNat

end

end A299449.P2535385233120621900

/-! ## A299449.P16449843790531608193

`A299451(A167499(n+4)+1)`
-/

namespace A299449.P16449843790531608193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (A167499 (n + 4) + 1).toNat

end

end A299449.P16449843790531608193

/-! ## A299449.P6317027754124509461

`A299451(A000124(n+5)+5)`
-/

namespace A299449.P6317027754124509461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (A000124 (n + 5) + 5).toNat

end

end A299449.P6317027754124509461

/-! ## A299449.P18438306558060731709

`A299451(A000217(n+5)+6)`
-/

namespace A299449.P18438306558060731709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (A000217 (n + 5) + 6).toNat

end

end A299449.P18438306558060731709

/-!
# A299450: Number of nX7 0..1 arrays with every element equal to 0, 1, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299450, there is no canonical definition to state claims against.
-/

/-! ## A299450.P11198845940502066574

`A299451(A056119(n)+28)`
-/

namespace A299450.P11198845940502066574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (A056119 n + 28).toNat

end

end A299450.P11198845940502066574

/-! ## A299450.P7198757549611968309

`A299451(eq[11, A066657(n)])`
-/

namespace A299450.P7198757549611968309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299450.P7198757549611968309

/-! ## A299450.P548949554422816338

`A299451(A077169(n+7)+2)`
-/

namespace A299450.P548949554422816338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (A077169 (n + 7) + 2).toNat

end

end A299450.P548949554422816338

/-! ## A299450.P5865571813516589904

`A299451(A167614(n+5)+4)`
-/

namespace A299450.P5865571813516589904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (A167614 (n + 5) + 4).toNat

end

end A299450.P5865571813516589904

/-! ## A299450.P10818304199788092564

`A299451(A000124(n+6)+6)`
-/

namespace A299450.P10818304199788092564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299451 (A000124 (n + 6) + 6).toNat

end

end A299450.P10818304199788092564

/-!
# A299451: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299451, there is no canonical definition to state claims against.
-/

/-! ## A299451.P519805219632724161

`A300089(n+1)-A326684(A059117(n))`
-/

namespace A299451.P519805219632724161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (n + 1) - A326684 (A059117 n).toNat

end

end A299451.P519805219632724161

/-! ## A299451.P11139138824873019254

`A300089(n+1)-A112053(A045213(n+1))`
-/

namespace A299451.P11139138824873019254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (n + 1) - A112053 (A045213 (n + 1)).toNat

end

end A299451.P11139138824873019254

/-! ## A299451.P4216453201824953343

`A300089(Δ[A243903(n+1)]+n)`
-/

namespace A299451.P4216453201824953343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A299451.P4216453201824953343

/-! ## A299451.P5898108467953854258

`A300089(n+1)-A058348(A027907(n+4))`
-/

namespace A299451.P5898108467953854258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300089 (n + 1) - A058348 (A027907 (n + 4)).toNat

end

end A299451.P5898108467953854258

/-! ## A299451.P10426738244843739060

`A300089(n+1)%A083634(n+1)`
-/

namespace A299451.P10426738244843739060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300089 (n + 1)) (A083634 (n + 1))

end

end A299451.P10426738244843739060

/-!
# A299452: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299452, there is no canonical definition to state claims against.
-/

/-! ## A299452.P3590389423895210947

`A299458(∑[4*n]+1)`
-/

namespace A299452.P3590389423895210947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299458 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299452.P3590389423895210947

/-! ## A299452.P16333639815097157148

`record[A299458(∑[A266981(n)])]`
-/

namespace A299452.P16333639815097157148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299458 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299452.P16333639815097157148

/-! ## A299452.P12139517461789823897

`record[A299458(A272267(n+1))]`
-/

namespace A299452.P12139517461789823897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299458 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299452.P12139517461789823897

/-! ## A299452.P10630021346936358173

`A299458(A001844(n))+char[10]`
-/

namespace A299452.P10630021346936358173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299458 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299452.P10630021346936358173

/-! ## A299452.P12994168401095278807

`record[A003982(n)*A299458(n+1)]`
-/

namespace A299452.P12994168401095278807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299452.P12994168401095278807

/-!
# A299453: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299453, there is no canonical definition to state claims against.
-/

/-! ## A299453.P4667978588505647782

`A299458(∑[n+2]+4)`
-/

namespace A299453.P4667978588505647782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299458 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299453.P4667978588505647782

/-! ## A299453.P5463830805182983533

`or(1, A299458(A167614(n+1)))`
-/

namespace A299453.P5463830805182983533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A299458 (A167614 (n + 1)).toNat)

end

end A299453.P5463830805182983533

/-! ## A299453.P3215268398829308927

`or(1, A299458(A055998(n)+6))`
-/

namespace A299453.P3215268398829308927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A299458 (A055998 n + 6).toNat)

end

end A299453.P3215268398829308927

/-! ## A299453.P3596393088380388499

`or(1, A299458(A046691(n)+7))`
-/

namespace A299453.P3596393088380388499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A299458 (A046691 n + 7).toNat)

end

end A299453.P3596393088380388499

/-! ## A299453.P12836739312703117124

`or(1, A299458(A000217(n+2)+3))`
-/

namespace A299453.P12836739312703117124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A299458 (A000217 (n + 2) + 3).toNat)

end

end A299453.P12836739312703117124

/-!
# A299454: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299454, there is no canonical definition to state claims against.
-/

/-! ## A299454.P12248619528810274324

`A299458(∑[n+3]+7)`
-/

namespace A299454.P12248619528810274324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299458 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299454.P12248619528810274324

/-! ## A299454.P474270990246161367

`A299458(A052905(n)+9)+char[19]`
-/

namespace A299454.P474270990246161367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299458 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299454.P474270990246161367

/-! ## A299454.P3684118409568165254

`A007318(C(2, n))*A299458(A052905(n)+9)`
-/

namespace A299454.P3684118409568165254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A299458 (A052905 n + 9).toNat

end

end A299454.P3684118409568165254

/-! ## A299454.P13380475334726206242

`A299458(A052905(n)+9)^A007318(C(n, n²))`
-/

namespace A299454.P13380475334726206242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299458 (A052905 n + 9).toNat : ℚ) ^ (A007318 (Nat.choose n (n ^ 2)) : ℤ)

end

end A299454.P13380475334726206242

/-! ## A299454.P224707041512202723

`A000041(C(2, n+2))*A299458(A052905(n)+9)`
-/

namespace A299454.P224707041512202723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A299458 (A052905 n + 9).toNat

end

end A299454.P224707041512202723

/-!
# A299455: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299455, there is no canonical definition to state claims against.
-/

/-! ## A299455.P4658906239448174125

`A299458(∑[n+4]+11)`
-/

namespace A299455.P4658906239448174125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299458 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A299455.P4658906239448174125

/-!
# A299456: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299456, there is no canonical definition to state claims against.
-/

/-! ## A299456.P11522264115199696621

`A299458(A166136(n+4))`
-/

namespace A299456.P11522264115199696621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299458 (A166136 (n + 4)).toNat

end

end A299456.P11522264115199696621

/-! ## A299456.P10564100272995607916

`A299458(A056115(n)+21)`
-/

namespace A299456.P10564100272995607916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299458 (A056115 n + 21).toNat

end

end A299456.P10564100272995607916

/-! ## A299456.P9525329900131676862

`A299458(∑[A020710(n)]+16)`
-/

namespace A299456.P9525329900131676862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299458 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A299456.P9525329900131676862

/-! ## A299456.P4150499626411839638

`A299458(A167499(n+4)+1)`
-/

namespace A299456.P4150499626411839638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299458 (A167499 (n + 4) + 1).toNat

end

end A299456.P4150499626411839638

/-! ## A299456.P12841834191684404155

`A299458(A167614(n+4)+3)`
-/

namespace A299456.P12841834191684404155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299458 (A167614 (n + 4) + 3).toNat

end

end A299456.P12841834191684404155

/-!
# A299457: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299457, there is no canonical definition to state claims against.
-/

/-! ## A299457.P5330712621315529448

`A299458(A167487(n+5))`
-/

namespace A299457.P5330712621315529448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299458 (A167487 (n + 5)).toNat

end

end A299457.P5330712621315529448

/-! ## A299457.P13552915638931053686

`A299458(A056119(n)+28)`
-/

namespace A299457.P13552915638931053686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299458 (A056119 n + 28).toNat

end

end A299457.P13552915638931053686

/-! ## A299457.P13600794241135027154

`A299458(eq[11, A066657(n)])`
-/

namespace A299457.P13600794241135027154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299457.P13600794241135027154

/-! ## A299457.P1658921103484330955

`A299458(A166136(n+5)+1)`
-/

namespace A299457.P1658921103484330955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299458 (A166136 (n + 5) + 1).toNat

end

end A299457.P1658921103484330955

/-! ## A299457.P16790783302475010232

`A299458(A167499(n+5)+2)`
-/

namespace A299457.P16790783302475010232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299458 (A167499 (n + 5) + 2).toNat

end

end A299457.P16790783302475010232

/-!
# A299458: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299458, there is no canonical definition to state claims against.
-/

/-! ## A299458.P16841615669278661674

`and(A239086(A300096(n+1)), A300096(n+1))`
-/

namespace A299458.P16841615669278661674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A239086 (A300096 (n + 1)).toNat) (A300096 (n + 1))

end

end A299458.P16841615669278661674

/-! ## A299458.P10174045530473087512

`A300096(C(A328617(n+1), n))`
-/

namespace A299458.P10174045530473087512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (Nat.choose (A328617 (n + 1)).toNat n)

end

end A299458.P10174045530473087512

/-! ## A299458.P12168443840698528305

`A015052(∏{d}[A300096(n+1), #])`
-/

namespace A299458.P12168443840698528305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A299458.P12168443840698528305

/-! ## A299458.P950610562763352735

`A300096(n+1)%A117783(n+1)`
-/

namespace A299458.P950610562763352735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300096 (n + 1)) (A117783 (n + 1))

end

end A299458.P950610562763352735

/-! ## A299458.P11474152828334904393

`A300096(n+1)+A010051(A118185(n))`
-/

namespace A299458.P11474152828334904393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300096 (n + 1) + A010051 (A118185 n).toNat

end

end A299458.P11474152828334904393

/-!
# A299459: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299459, there is no canonical definition to state claims against.
-/

/-! ## A299459.P15866093192525530513

`A299465(∑[4*n]+1)`
-/

namespace A299459.P15866093192525530513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299465 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299459.P15866093192525530513

/-! ## A299459.P5351328159981375580

`record[A299465(Δ[A235355(n)])]`
-/

namespace A299459.P5351328159981375580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299465 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299459.P5351328159981375580

/-! ## A299459.P11071252724770824240

`record[A299465(A330613(n+1))]`
-/

namespace A299459.P11071252724770824240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299465 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299459.P11071252724770824240

/-! ## A299459.P11245812136459659314

`record[A003982(n)*A299465(n+1)]`
-/

namespace A299459.P11245812136459659314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299459.P11245812136459659314

/-! ## A299459.P12104004680078190459

`A299465(A001844(n))+A059995(n)`
-/

namespace A299459.P12104004680078190459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299465 (A001844 n).toNat + A059995 n

end

end A299459.P12104004680078190459

/-!
# A299460: Number of nX3 0..1 arrays with every element equal to 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299460, there is no canonical definition to state claims against.
-/

/-! ## A299460.P1744144323166664727

`A299465(∑[n+2]+4)`
-/

namespace A299460.P1744144323166664727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299465 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299460.P1744144323166664727

/-! ## A299460.P8760094106751472503

`A300108(∑[n+2]+4)`
-/

namespace A299460.P8760094106751472503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299460.P8760094106751472503

/-! ## A299460.P8168963326591160854

`A299465(A167614(n+1))+char[35]`
-/

namespace A299460.P8168963326591160854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299465 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299460.P8168963326591160854

/-! ## A299460.P6072888151923838251

`record[A115952(n)*A299465(n+4)]`
-/

namespace A299460.P6072888151923838251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115952 n * A299465 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299460.P6072888151923838251

/-! ## A299460.P8905578407181190667

`record[gcd(A299465(n+1), A303913(n))]`
-/

namespace A299460.P8905578407181190667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A299465 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299460.P8905578407181190667

/-!
# A299461: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299461, there is no canonical definition to state claims against.
-/

/-! ## A299461.P8112382028217502408

`A299465(∑[n+3]+7)`
-/

namespace A299461.P8112382028217502408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299465 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299461.P8112382028217502408

/-! ## A299461.P2569320953377463714

`A299465(A055999(n)+10)+char[16]`
-/

namespace A299461.P2569320953377463714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299465 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299461.P2569320953377463714

/-! ## A299461.P11824468568259275897

`A299465(A000217(n+3)+4)+char[16]`
-/

namespace A299461.P11824468568259275897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299465 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299461.P11824468568259275897

/-! ## A299461.P2287654562462222922

`A299465(A046691(n+1)+8)+char[16]`
-/

namespace A299461.P2287654562462222922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299465 (A046691 (n + 1) + 8).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299461.P2287654562462222922

/-! ## A299461.P16170142186722257737

`A007318(C(n, 2))*A299465(A046691(n+1)+8)`
-/

namespace A299461.P16170142186722257737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A299465 (A046691 (n + 1) + 8).toNat

end

end A299461.P16170142186722257737

/-!
# A299462: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299462, there is no canonical definition to state claims against.
-/

/-! ## A299462.P1151854712566482840

`A299465(∑[n+4]+11)`
-/

namespace A299462.P1151854712566482840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299465 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A299462.P1151854712566482840

/-! ## A299462.P11508737223360157408

`A299465(A056000(n)+15)%A299463(n+1)`
-/

namespace A299462.P11508737223360157408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299465 (A056000 n + 15).toNat) (A299463 (n + 1))

end

end A299462.P11508737223360157408

/-! ## A299462.P8257865146805501169

`A299465(A374005(n+1))+A033324(2*n+5)`
-/

namespace A299462.P8257865146805501169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299465 (A374005 (n + 1)).toNat + A033324 (2 * n + 5)

end

end A299462.P8257865146805501169

/-! ## A299462.P498147939772519635

`A173259(3*n+2)*A299465(A374005(n+1))`
-/

namespace A299462.P498147939772519635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173259 (3 * n + 2) * A299465 (A374005 (n + 1)).toNat

end

end A299462.P498147939772519635

/-! ## A299462.P17469966712643858097

`A340362(n+1)+A299465(A046691(n+3))`
-/

namespace A299462.P17469966712643858097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340362 (n + 1) + A299465 (A046691 (n + 3)).toNat

end

end A299462.P17469966712643858097

/-!
# A299463: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299463, there is no canonical definition to state claims against.
-/

/-! ## A299463.P8380509618622284274

`A299465(A374007(n+1))`
-/

namespace A299463.P8380509618622284274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299465 (A374007 (n + 1)).toNat

end

end A299463.P8380509618622284274

/-! ## A299463.P10069569941952128585

`A299465(A056115(n)+21)`
-/

namespace A299463.P10069569941952128585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299465 (A056115 n + 21).toNat

end

end A299463.P10069569941952128585

/-! ## A299463.P440459619902252272

`A299465(A167614(n+4)+3)`
-/

namespace A299463.P440459619902252272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299465 (A167614 (n + 4) + 3).toNat

end

end A299463.P440459619902252272

/-! ## A299463.P10048170774505563821

`A299465(A133263(n+5)+4)`
-/

namespace A299463.P10048170774505563821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299465 (A133263 (n + 5) + 4).toNat

end

end A299463.P10048170774505563821

/-! ## A299463.P15994232817996565929

`A299465(A246172(n+1)+20)`
-/

namespace A299463.P15994232817996565929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299465 (A246172 (n + 1) + 20).toNat

end

end A299463.P15994232817996565929

/-!
# A299464: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299464, there is no canonical definition to state claims against.
-/

/-! ## A299464.P12139345577660760980

`A299465(A374008(n+1))`
-/

namespace A299464.P12139345577660760980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299465 (A374008 (n + 1)).toNat

end

end A299464.P12139345577660760980

/-! ## A299464.P4096779107451425263

`A299465(A056119(n)+28)`
-/

namespace A299464.P4096779107451425263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299465 (A056119 n + 28).toNat

end

end A299464.P4096779107451425263

/-! ## A299464.P14090423586592577481

`A299465(eq[11, A066657(n)])`
-/

namespace A299464.P14090423586592577481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299464.P14090423586592577481

/-! ## A299464.P5184933740426769874

`A299465(A166136(n+5)+1)`
-/

namespace A299464.P5184933740426769874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299465 (A166136 (n + 5) + 1).toNat

end

end A299464.P5184933740426769874

/-! ## A299464.P5377823243807250807

`A299465(A000096(n+5)+8)`
-/

namespace A299464.P5377823243807250807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299465 (A000096 (n + 5) + 8).toNat

end

end A299464.P5377823243807250807

/-!
# A299465: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299465, there is no canonical definition to state claims against.
-/

/-! ## A299465.P16639060192612584108

`A059995(10*A300108(n+1))`
-/

namespace A299465.P16639060192612584108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (10 * A300108 (n + 1)).toNat

end

end A299465.P16639060192612584108

/-! ## A299465.P10366193981805533597

`A300108(n+1)%A232327(n)`
-/

namespace A299465.P10366193981805533597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300108 (n + 1)) (A232327 n)

end

end A299465.P10366193981805533597

/-! ## A299465.P18209799902329869892

`A300108(n+1)^A185203(n)!`
-/

namespace A299465.P18209799902329869892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (n + 1) ^ Nat.factorial (A185203 n).toNat

end

end A299465.P18209799902329869892

/-! ## A299465.P6941395011985960515

`A300108(n-A127949(3*n+2))`
-/

namespace A299465.P6941395011985960515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 ((n : ℤ) - A127949 (3 * n + 2)).toNat

end

end A299465.P6941395011985960515

/-! ## A299465.P12120771734334831320

`abs(A127949(3*n+2)*A300108(n+1))`
-/

namespace A299465.P12120771734334831320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127949 (3 * n + 2) * A300108 (n + 1)|

end

end A299465.P12120771734334831320

/-!
# A299472: a(n) is the sum of all divisors of all numbers k whose associated largest Dyck path contains the point (n,n) in the diagram of the symmetric representation of sigma(k) described in A237593, or 0 if no such k exists.

The programs for A299472, there is no canonical definition to state claims against.
-/

/-! ## A299472.P5403799991326485274

`Δ[A160664(A244367(n+1)-1)]`
-/

namespace A299472.P5403799991326485274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (A244367 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299472.P5403799991326485274

/-!
# A299473: a(n) = 3*p(n), where p(n) is the number of partitions of n.

The programs for A299473, there is no canonical definition to state claims against.
-/

/-! ## A299473.P4157362495918209672

`3*A000041(n)`
-/

namespace A299473.P4157362495918209672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000041 n

end

end A299473.P4157362495918209672

/-! ## A299473.P6202282135217666350

`A000041(n)+A139582(n)`
-/

namespace A299473.P6202282135217666350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + A139582 n

end

end A299473.P6202282135217666350

/-! ## A299473.P16585384800748090406

`∑[3*A002865(n)]`
-/

namespace A299473.P16585384800748090406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299473.P16585384800748090406

/-! ## A299473.P13660257619704176920

`3*(A000065(n)+1)`
-/

namespace A299473.P13660257619704176920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A000065 n + 1)

end

end A299473.P13660257619704176920

/-! ## A299473.P10747240168302257004

`3*(A133041(n)-n)`
-/

namespace A299473.P10747240168302257004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A133041 n - (n : ℤ))

end

end A299473.P10747240168302257004

/-! ## A299473.P6169675414467813510

`A139582(n)+∑[A002865(n)]`
-/

namespace A299473.P6169675414467813510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299473.P6169675414467813510

/-! ## A299473.P14415730524844275576

`A000065(n)+A139582(n)+1`
-/

namespace A299473.P14415730524844275576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (A139582 n + 1)

end

end A299473.P14415730524844275576

/-! ## A299473.P6677685041920181681

`3*(A047967(n)+A000009(n))`
-/

namespace A299473.P6677685041920181681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A047967 n + A000009 n)

end

end A299473.P6677685041920181681

/-! ## A299473.P9911742017914001673

`3*(A295341(n)+A000726(n))`
-/

namespace A299473.P9911742017914001673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A295341 n + A000726 n)

end

end A299473.P9911742017914001673

/-! ## A299473.P12629520859389133456

`A133041(n)+A139582(n)-n`
-/

namespace A299473.P12629520859389133456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n + (A139582 n - (n : ℤ))

end

end A299473.P12629520859389133456

/-! ## A299473.P5021950517957403140

`A000041(n)+A084376(n)+A002865(n)`
-/

namespace A299473.P5021950517957403140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A084376 n + A002865 n)

end

end A299473.P5021950517957403140

/-! ## A299473.P8572622163825950043

`A000837(n)+A139582(n)+A018783(n)`
-/

namespace A299473.P8572622163825950043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n + (A139582 n + A018783 n)

end

end A299473.P8572622163825950043

/-! ## A299473.P4534627135650554111

`A003106(n)+A139582(n)+A039900(n)`
-/

namespace A299473.P4534627135650554111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n + (A139582 n + A039900 n)

end

end A299473.P4534627135650554111

/-! ## A299473.P15785058531282430798

`A000009(n)+A139582(n)+A047967(n)`
-/

namespace A299473.P15785058531282430798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A139582 n + A047967 n)

end

end A299473.P15785058531282430798

/-! ## A299473.P16400808245917795401

`3/4*A299474(n)`
-/

namespace A299473.P16400808245917795401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A299474 n : ℚ)

end

end A299473.P16400808245917795401

/-! ## A299473.P6896485817765391563

`A299474(n)-A000041(n)`
-/

namespace A299473.P6896485817765391563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299474 n - A000041 n

end

end A299473.P6896485817765391563

/-! ## A299473.P1835019978083393572

`A183008(n)/8`
-/

namespace A299473.P1835019978083393572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183008 n : ℚ) / 8

end

end A299473.P1835019978083393572

/-! ## A299473.P5080335831682227585

`A000041(n)+A000070(n)-A058884(n)`
-/

namespace A299473.P5080335831682227585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A000070 n - A058884 n)

end

end A299473.P5080335831682227585

/-! ## A299473.P4527045895270021240

`3/(n+1)*A228816(n+1)`
-/

namespace A299473.P4527045895270021240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 1 : ℚ) * (A228816 (n + 1) : ℚ)

end

end A299473.P4527045895270021240

/-! ## A299473.P10972361423544880005

`3*A035363(2*n)`
-/

namespace A299473.P10972361423544880005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A035363 (2 * n)

end

end A299473.P10972361423544880005

/-!
# A299474: a(n) = 4*p(n), where p(n) is the number of partitions of n.

The programs for A299474, there is no canonical definition to state claims against.
-/

/-! ## A299474.P4478135446131196561

`2*A139582(n)`
-/

namespace A299474.P4478135446131196561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139582 n

end

end A299474.P4478135446131196561

/-! ## A299474.P4503062999674996560

`4*A000041(n)`
-/

namespace A299474.P4503062999674996560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000041 n

end

end A299474.P4503062999674996560

/-! ## A299474.P12927295320589042165

`A000041(n)+A299473(n)`
-/

namespace A299474.P12927295320589042165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + A299473 n

end

end A299474.P12927295320589042165

/-! ## A299474.P5096898321903119591

`∑[4*A002865(n)]`
-/

namespace A299474.P5096898321903119591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299474.P5096898321903119591

/-! ## A299474.P9631863651088068099

`4*(A000065(n)+1)`
-/

namespace A299474.P9631863651088068099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A000065 n + 1)

end

end A299474.P9631863651088068099

/-! ## A299474.P8642522380262451784

`4*(A133041(n)-n)`
-/

namespace A299474.P8642522380262451784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A133041 n - (n : ℤ))

end

end A299474.P8642522380262451784

/-! ## A299474.P16416598100210550828

`∑[4*A085811(n+3)]`
-/

namespace A299474.P16416598100210550828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299474.P16416598100210550828

/-! ## A299474.P7316464647446779279

`2*(A084376(n)+A002865(n))`
-/

namespace A299474.P7316464647446779279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A084376 n + A002865 n)

end

end A299474.P7316464647446779279

/-! ## A299474.P2202953769868740048

`A299473(n)+A139582(n)/2`
-/

namespace A299474.P2202953769868740048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299473 n : ℚ) + (A139582 n : ℚ) / 2

end

end A299474.P2202953769868740048

/-! ## A299474.P9903275071399537823

`4*(A047967(n)+A000009(n))`
-/

namespace A299474.P9903275071399537823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A047967 n + A000009 n)

end

end A299474.P9903275071399537823

/-! ## A299474.P16205586494072816863

`4*(A295341(n)+A000726(n))`
-/

namespace A299474.P16205586494072816863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A295341 n + A000726 n)

end

end A299474.P16205586494072816863

/-! ## A299474.P2607492596062036878

`A000041(n)/(A070748(n+1)/2)²`
-/

namespace A299474.P2607492596062036878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) / ((A070748 (n + 1) : ℚ) / 2) ^ 2

end

end A299474.P2607492596062036878

/-! ## A299474.P791654183277705613

`4*∑[A182712(n+2)-A182712(n)]`
-/

namespace A299474.P791654183277705613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (n + 2) - A182712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299474.P791654183277705613

/-! ## A299474.P9917373224321102488

`A139582(A028310(n))+A139582(n)`
-/

namespace A299474.P9917373224321102488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 (A028310 n).toNat + A139582 n

end

end A299474.P9917373224321102488

/-! ## A299474.P10682069430448217548

`A000041(n)+A139582(n)+A000041(n)`
-/

namespace A299474.P10682069430448217548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A139582 n + A000041 n)

end

end A299474.P10682069430448217548

/-! ## A299474.P6783426691104249372

`A000041(n)/(A008683(A005117(n+1))/2)²`
-/

namespace A299474.P6783426691104249372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) / ((A008683 (A005117 (n + 1)).toNat : ℚ) / 2) ^ 2

end

end A299474.P6783426691104249372

/-! ## A299474.P3014030777274756891

`A000041(n)/(A008683(A014963(n+1))/2)²`
-/

namespace A299474.P3014030777274756891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) / ((A008683 (A014963 (n + 1)).toNat : ℚ) / 2) ^ 2

end

end A299474.P3014030777274756891

/-! ## A299474.P10212803482683440532

`A183008(n)/6`
-/

namespace A299474.P10212803482683440532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183008 n : ℚ) / 6

end

end A299474.P10212803482683440532

/-! ## A299474.P401729252262670862

`2*(A000070(n)-A058884(n))`
-/

namespace A299474.P401729252262670862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000070 n - A058884 n)

end

end A299474.P401729252262670862

/-! ## A299474.P179138119512670931

`4/(n+1)*A228816(n+1)`
-/

namespace A299474.P179138119512670931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (n + 1 : ℚ) * (A228816 (n + 1) : ℚ)

end

end A299474.P179138119512670931

/-!
# A299475: a(n) is the number of vertices in the diagram of partitions of n (see example).

The programs for A299475, there is no canonical definition to state claims against.
-/

/-! ## A299475.P7579111787058873572

`3*A052810(n)-2`
-/

namespace A299475.P7579111787058873572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A052810 n - 2

end

end A299475.P7579111787058873572

/-! ## A299475.P7371999446484830889

`3*(A000094(n+1)+1+n)-2`
-/

namespace A299475.P7371999446484830889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A000094 (n + 1) + 1 + (n : ℤ)) - 2

end

end A299475.P7371999446484830889

/-! ## A299475.P14352409861193081655

`3*A000041(n%a(n-1))+1` with `a(0)=1`
-/

namespace A299475.P14352409861193081655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A000041 (Int.tmod (n : ℤ) (a (n - 1))).toNat + 1

end

end A299475.P14352409861193081655

/-! ## A299475.P6916380995980930019

`3*(A057427(n)+A000041(n))-2`
-/

namespace A299475.P6916380995980930019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A057427 n + A000041 n) - 2

end

end A299475.P6916380995980930019

/-! ## A299475.P14964263330703169838

`3*(A000041(n)-A130716(n+2))+1`
-/

namespace A299475.P14964263330703169838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A000041 n - A130716 (n + 2)) + 1

end

end A299475.P14964263330703169838

/-! ## A299475.P8981376417722764315

`A299473(n)%A299473(n+1)+1`
-/

namespace A299475.P8981376417722764315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299473 n) (A299473 (n + 1)) + 1

end

end A299475.P8981376417722764315

/-! ## A299475.P6493242785803713135

`(A299473(n)+1)%∑[A299473(n)]`
-/

namespace A299475.P6493242785803713135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299473 n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299475.P6493242785803713135

/-! ## A299475.P12559282108079563039

`3*record[A035363(n+1)]+1`
-/

namespace A299475.P12559282108079563039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A299475.P12559282108079563039

/-! ## A299475.P16717525519897498885

`3*record[A035377(n+1)]+1`
-/

namespace A299475.P16717525519897498885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A299475.P16717525519897498885

/-! ## A299475.P8625940726239775368

`3*A000041(n)%A000079(n)+1`
-/

namespace A299475.P8625940726239775368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.tmod (A000041 n) (A000079 n) + 1

end

end A299475.P8625940726239775368

/-! ## A299475.P4088512130974386780

`3*(A295341(n)+A000726(n))%(2^n)+1`
-/

namespace A299475.P4088512130974386780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.tmod (A295341 n + A000726 n) (2 ^ n : ℤ) + 1

end

end A299475.P4088512130974386780

/-!
# A299476: Toothpick sequence on triangular grid with word "abcb".

The programs for A299476, there is no canonical definition to state claims against.
-/

/-! ## A299476.P14556031472938196607

`A299477(n)+a(n-1)` with `a(0)=0`
-/

namespace A299476.P14556031472938196607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A299477 n + a (n - 1)

end

end A299476.P14556031472938196607

/-! ## A299476.P6164974310708850061

`∑[A299477(floor(acot(n)+n))]-1`
-/

namespace A299476.P6164974310708850061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299477 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A299476.P6164974310708850061

/-! ## A299476.P15024015289605871762

`∑[A299477(abs(1-n)+1)]-2`
-/

namespace A299476.P15024015289605871762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299477 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A299476.P15024015289605871762

/-! ## A299476.P15121059205795944491

`abs(1-∑[A299477(A028310(n))])`
-/

namespace A299476.P15121059205795944491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299477 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A299476.P15121059205795944491

/-! ## A299476.P14133348866460408094

`abs(∑[A299477(A123108(2*n))]-1)`
-/

namespace A299476.P14133348866460408094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299477 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A299476.P14133348866460408094

/-! ## A299476.P9365574113304967499

`∑[A057427(n)*A299477(A028310(n))]`
-/

namespace A299476.P9365574113304967499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A299477 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299476.P9365574113304967499

/-! ## A299476.P6916141851494753574

`∑[A178334(n)*A299477(A028310(n))]`
-/

namespace A299476.P6916141851494753574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A299477 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299476.P6916141851494753574

/-! ## A299476.P11650149764222074683

`∑[A299477(A028310(n))%A000070(n)]`
-/

namespace A299476.P11650149764222074683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299477 (A028310 n).toNat) (A000070 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299476.P11650149764222074683

/-! ## A299476.P10029082449015683483

`A033999(2*n+1)+∑[A299477(A028310(n))]`
-/

namespace A299476.P10029082449015683483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299477 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299476.P10029082449015683483

/-!
# A299477: Number of toothpicks added at n-th stage to the structure of the cellular automaton of A299476.

The programs for A299477, there is no canonical definition to state claims against.
-/

/-! ## A299477.P16885791727649616755

`Δ[A299476(n)]`
-/

namespace A299477.P16885791727649616755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299477.P16885791727649616755

/-! ## A299477.P6033859575256662109

`A299476(n+1)-A299476(n)`
-/

namespace A299477.P6033859575256662109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299476 (n + 1) - A299476 n

end

end A299477.P6033859575256662109

/-! ## A299477.P13883156473206457041

`record[A299476(A028920(n))]-A299476(n)`
-/

namespace A299477.P13883156473206457041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299476 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A299476 n

end

end A299477.P13883156473206457041

/-! ## A299477.P5115086883820295671

`record[A299476(A123108(n))]-A299476(n)`
-/

namespace A299477.P5115086883820295671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299476 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A299476 n

end

end A299477.P5115086883820295671

/-!
# A299478: Toothpick sequence on triangular grid with word "abcbc".

The programs for A299478, there is no canonical definition to state claims against.
-/

/-! ## A299478.P9349124902979154116

`A299479(n)+a(n-1)` with `a(0)=0`
-/

namespace A299478.P9349124902979154116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A299479 n + a (n - 1)

end

end A299478.P9349124902979154116

/-! ## A299478.P17534900336504152800

`∑[A299479(floor(acot(n)+n))]-1`
-/

namespace A299478.P17534900336504152800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299479 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A299478.P17534900336504152800

/-! ## A299478.P15756638196501970756

`∑[A299479(round(sqrt(n²+1)))]-1`
-/

namespace A299478.P15756638196501970756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299479 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A299478.P15756638196501970756

/-! ## A299478.P4073945896192272006

`abs(∑[A299479(A028310(n))]-1)`
-/

namespace A299478.P4073945896192272006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299479 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A299478.P4073945896192272006

/-! ## A299478.P17173328673068995447

`∪[∑[A299479(n+1)], A075952(n)]`
-/

namespace A299478.P17173328673068995447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299479 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A299478.P17173328673068995447

/-! ## A299478.P468787539097109117

`∑[A299479(A134478(∑[n]))-1]+n`
-/

namespace A299478.P468787539097109117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299479 (A134478 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A299478.P468787539097109117

/-! ## A299478.P12577318405495209897

`∑[A057427(n)*A299479(A028310(n))]`
-/

namespace A299478.P12577318405495209897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A299479 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299478.P12577318405495209897

/-! ## A299478.P4800411133682886999

`∑[A178334(n)*A299479(A028310(n))]`
-/

namespace A299478.P4800411133682886999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A299479 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299478.P4800411133682886999

/-! ## A299478.P13314978793241078298

`∑[A178489(n)*A299479(A028310(n))]`
-/

namespace A299478.P13314978793241078298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A299479 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299478.P13314978793241078298

/-! ## A299478.P5409171821606200119

`∑[A057428(n)²*A299479(A028310(n))]`
-/

namespace A299478.P5409171821606200119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A299479 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299478.P5409171821606200119

/-!
# A299479: Number of toothpicks added at n-th stage to the structure of the cellular automaton of A299478.

The programs for A299479, there is no canonical definition to state claims against.
-/

/-! ## A299479.P5166691535851658518

`Δ[A299478(n)]`
-/

namespace A299479.P5166691535851658518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299479.P5166691535851658518

/-! ## A299479.P5628835802076163662

`A299478(n+1)-A299478(n)`
-/

namespace A299479.P5628835802076163662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299478 (n + 1) - A299478 n

end

end A299479.P5628835802076163662

/-!
# A299480: List of pairs (a,b) where in the n-th pair, a = number of odd divisors of n and b = number of even divisors of n.

The programs for A299480, the canonical program `A299480.P14776688201908958445` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299480 has offset 1).

The definition of A299480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299480.P14776688201908958445

`∑{d}[A008619(n), (#+n)%2]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A299480

/-- `∑{d}[A008619(n), (#+n)%2]` -/
def P14776688201908958445.Spec : Prop :=
  ∀ n, (P14776688201908958445.a n : ℤ) = A299480 (n + 1)

theorem P14776688201908958445.correct : P14776688201908958445.Spec := by
  intro n
  simp only [A299480, Nat.add_sub_cancel]

end A299480

/-! ## A299480.P1541647953339461005

`∑{d}[A110654(n+1), xor(n, #)%2]`
-/

namespace A299480.P1541647953339461005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.xor n d % 2

end

end A299480.P1541647953339461005

namespace A299480

/-- `∑{d}[A110654(n+1), xor(n, #)%2]` -/
def P1541647953339461005.Spec : Prop :=
  ∀ n, (P1541647953339461005.a n : ℤ) = A299480 (n + 1)

end A299480

/-! ## A299480.P17179226207752893787

`∑{d}[A008619(n), A000035(A000035(n)+#)]`
-/

namespace A299480.P17179226207752893787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 (A000035 n + (d : ℤ)).toNat

end

end A299480.P17179226207752893787

namespace A299480

/-- `∑{d}[A008619(n), A000035(A000035(n)+#)]` -/
def P17179226207752893787.Spec : Prop :=
  ∀ n, P17179226207752893787.a n = A299480 (n + 1)

end A299480

/-! ## A299480.P13668897695189340701

`∑{d}[A008619(n), A000035(#-A000035(n))]`
-/

namespace A299480.P13668897695189340701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 ((d : ℤ) - A000035 n).toNat

end

end A299480.P13668897695189340701

namespace A299480

/-- `∑{d}[A008619(n), A000035(#-A000035(n))]` -/
def P13668897695189340701.Spec : Prop :=
  ∀ n, P13668897695189340701.a n = A299480 (n + 1)

end A299480

/-! ## A299480.P4906539137642006674

`∑{d}[A001057(n+1), and(1, #+n)]`
-/

namespace A299480.P4906539137642006674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 (d + n)

end

end A299480.P4906539137642006674

namespace A299480

/-- `∑{d}[A001057(n+1), and(1, #+n)]` -/
def P4906539137642006674.Spec : Prop :=
  ∀ n, (P4906539137642006674.a n : ℤ) = A299480 (n + 1)

end A299480

/-! ## A299480.P17359485475007862347

`∑{d}[A065033(n+1), and(1, #+n)]`
-/

namespace A299480.P17359485475007862347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 (d + n)

end

end A299480.P17359485475007862347

namespace A299480

/-- `∑{d}[A065033(n+1), and(1, #+n)]` -/
def P17359485475007862347.Spec : Prop :=
  ∀ n, (P17359485475007862347.a n : ℤ) = A299480 (n + 1)

end A299480

/-! ## A299480.P13288647317167921639

`gcd(A183063(n+2), A183063(A008619(n)))`
-/

namespace A299480.P13288647317167921639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183063 (n + 2)) (A183063 (A008619 n).toNat)

end

end A299480.P13288647317167921639

namespace A299480

/-- `gcd(A183063(n+2), A183063(A008619(n)))` -/
def P13288647317167921639.Spec : Prop :=
  ∀ n, (P13288647317167921639.a n : ℤ) = A299480 (n + 1)

end A299480

/-! ## A299480.P10109204496696116513

`∑{d}[A008619(n), A000035(#+n)]`
-/

namespace A299480.P10109204496696116513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 (d + n)

end

end A299480.P10109204496696116513

namespace A299480

/-- `∑{d}[A008619(n), A000035(#+n)]` -/
def P10109204496696116513.Spec : Prop :=
  ∀ n, P10109204496696116513.a n = A299480 (n + 1)

theorem P10109204496696116513.correct : P10109204496696116513.Spec := by
  intro n
  simp only [A299480, Nat.add_sub_cancel, A299480.P10109204496696116513.f1, A299480.P10109204496696116513.a, A299480.P14776688201908958445.f1, A299480.P14776688201908958445.a, A000035, A000035.P2023072528413494694.a, A008619, A008619.P16053834178911111118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A299480

/-! ## A299480.P1208223068205422225

`∑{d}[∑[A000035(n+1)], A000035(#+n)]`
-/

namespace A299480.P1208223068205422225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 (d + n)

end

end A299480.P1208223068205422225

namespace A299480

/-- `∑{d}[∑[A000035(n+1)], A000035(#+n)]` -/
def P1208223068205422225.Spec : Prop :=
  ∀ n, P1208223068205422225.a n = A299480 (n + 1)

end A299480

/-! ## A299480.P15367379697323336915

`A299485(A014681(n+1))`
-/

namespace A299480.P15367379697323336915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299485 (A014681 (n + 1)).toNat

end

end A299480.P15367379697323336915

namespace A299480

/-- `A299485(A014681(n+1))` -/
def P15367379697323336915.Spec : Prop :=
  ∀ n, P15367379697323336915.a n = A299480 (n + 1)

end A299480

/-! ## A299480.P7495752411077476515

`A299485(A103889(n+1))`
-/

namespace A299480.P7495752411077476515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299485 (A103889 (n + 1)).toNat

end

end A299480.P7495752411077476515

namespace A299480

/-- `A299485(A103889(n+1))` -/
def P7495752411077476515.Spec : Prop :=
  ∀ n, P7495752411077476515.a n = A299480 (n + 1)

end A299480

/-! ## A299480.P7377888583136845704

`A183063(n+1)+A183063(n+2)-A299485(n+1)`
-/

namespace A299480.P7377888583136845704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + (A183063 (n + 2) - A299485 (n + 1))

end

end A299480.P7377888583136845704

namespace A299480

/-- `A183063(n+1)+A183063(n+2)-A299485(n+1)` -/
def P7377888583136845704.Spec : Prop :=
  ∀ n, P7377888583136845704.a n = A299480 (n + 1)

end A299480

/-!
# A299481: Irregular triangle read by rows in which row n lists the odd divisors of n in decreasing order together with the even divisors of n in increasing order.

The programs for A299481, there is no canonical definition to state claims against.
-/

/-! ## A299481.P11098635404406335495

`A319846(n+1)+A319847(n+1)-A299483(n+1)`
-/

namespace A299481.P11098635404406335495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319846 (n + 1) + (A319847 (n + 1) - A299483 (n + 1))

end

end A299481.P11098635404406335495

/-! ## A299481.P9504330873955524349

`A319846(A273862(n+2))`
-/

namespace A299481.P9504330873955524349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319846 (A273862 (n + 2)).toNat

end

end A299481.P9504330873955524349

/-! ## A299481.P11481874740245658544

`gcd(A226143(n+1), A241317(A045674(n)))`
-/

namespace A299481.P11481874740245658544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A226143 (n + 1)) (A241317 (A045674 n).toNat)

end

end A299481.P11481874740245658544

/-! ## A299481.P15709729102374443843

`gcd(A180156(3*n+2), A180185(A006005(n+1)))`
-/

namespace A299481.P15709729102374443843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A180156 (3 * n + 2)) (A180185 (A006005 (n + 1)).toNat)

end

end A299481.P15709729102374443843

/-! ## A299481.P17527393462200340749

`A066422(A366542(n+2))`
-/

namespace A299481.P17527393462200340749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066422 (A366542 (n + 2)).toNat

end

end A299481.P17527393462200340749

/-!
# A299482: Numbers m such that in the diagram of the symmetric representation of sigma(k) described in A237593 there is no Dyck path that contains the point (m,m), where both k and m are positive integers.

The programs for A299482, there is no canonical definition to state claims against.
-/

/-! ## A299482.P7388946667048872209

`lt[Δ[A244367(n+1)], 1]+1`
-/

namespace A299482.P7388946667048872209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244367 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A299482.P7388946667048872209

/-! ## A299482.P3445087055321725263

`eq[A244367(abs(1-n)+1), A244367(n+1)]`
-/

namespace A299482.P3445087055321725263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244367 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244367 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A299482.P3445087055321725263

/-! ## A299482.P5045554446431165949

`A020725(eq[0, A244367(n+2)-A244367(n+1)])`
-/

namespace A299482.P5045554446431165949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244367 (n + 2) - A244367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299482.P5045554446431165949

/-! ## A299482.P356010101560044869

`A065475(eq[0, A244367(n+2)-A244367(n+1)])`
-/

namespace A299482.P356010101560044869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244367 (n + 2) - A244367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299482.P356010101560044869

/-! ## A299482.P163010099546749213

`comp[A240542(n+1)%A007918(n+1)]`
-/

namespace A299482.P163010099546749213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240542 (n + 1)) (A007918 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A299482.P163010099546749213

/-!
# A299483: Irregular triangle read by rows in which row n lists the odd divisors of n in increasing order together with the even divisors of n in decreasing order.

The programs for A299483, there is no canonical definition to state claims against.
-/

/-! ## A299483.P17573328353858353115

`A319846(n+1)+A319847(n+1)-A299481(n+1)`
-/

namespace A299483.P17573328353858353115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319846 (n + 1) + (A319847 (n + 1) - A299481 (n + 1))

end

end A299483.P17573328353858353115

/-! ## A299483.P4643608109963110369

`A319847(A273862(n+2))`
-/

namespace A299483.P4643608109963110369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319847 (A273862 (n + 2)).toNat

end

end A299483.P4643608109963110369

/-! ## A299483.P4298315946275448293

`A113398(n+1)/A309400(A059344(n))`
-/

namespace A299483.P4298315946275448293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113398 (n + 1) : ℚ) / (A309400 (A059344 n).toNat : ℚ)

end

end A299483.P4298315946275448293

/-! ## A299483.P8069704824433780198

`gcd(A113398(n+1), A113404(A016116(n)))`
-/

namespace A299483.P8069704824433780198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113398 (n + 1)) (A113404 (A016116 n).toNat)

end

end A299483.P8069704824433780198

/-!
# A299484: Irregular triangle read by rows in which T(n,k) is the number of cells in the k-th level of the diagram of the symmetric representation of sigma(n).

The programs for A299484, there is no canonical definition to state claims against.
-/

/-! ## A299484.P3487391345082556734

`A001221(A107357(n+1)+A090707(n+1))`
-/

namespace A299484.P3487391345082556734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A107357 (n + 1) + A090707 (n + 1)).toNat

end

end A299484.P3487391345082556734

/-! ## A299484.P4006339490798025353

`A005090(lcm(A260484(n+2), A291165(n+1)))`
-/

namespace A299484.P4006339490798025353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (Int.lcm (A260484 (n + 2)) (A291165 (n + 1)))

end

end A299484.P4006339490798025353

/-! ## A299484.P973266620542978971

`A001221(A173185(A334622(n))*A278040(n))`
-/

namespace A299484.P973266620542978971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A173185 (A334622 n).toNat * A278040 n).toNat

end

end A299484.P973266620542978971

/-! ## A299484.P290500750891492901

`A124766(A028879(n+1))+A124760(n)`
-/

namespace A299484.P290500750891492901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A028879 (n + 1)).toNat + A124760 n

end

end A299484.P290500750891492901

/-! ## A299484.P12783959544588075446

`A352515(A254864(2*n+3))+A124765(n)`
-/

namespace A299484.P12783959544588075446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352515 (A254864 (2 * n + 3)).toNat + A124765 n

end

end A299484.P12783959544588075446

/-!
# A299485: List of pairs (a,b) where in the n-th pair, a = number of even divisors of n and b = number of odd divisors of n.

The programs for A299485, the canonical program `A299485.P254309527593595280` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299485 has offset 1).

The definition of A299485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299485.P254309527593595280

`∑{d}[∑[(n+1)%2], (n+1+#)%2]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A299485

/-- `∑{d}[∑[(n+1)%2], (n+1+#)%2]` -/
def P254309527593595280.Spec : Prop :=
  ∀ n, (P254309527593595280.a n : ℤ) = A299485 (n + 1)

theorem P254309527593595280.correct : P254309527593595280.Spec := by
  intro n
  simp only [A299485, Nat.add_sub_cancel]

end A299485

/-! ## A299485.P4628453301162020252

`A299480(abs(xor(n, -2)))`
-/

namespace A299485.P4628453301162020252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 |Int.xor (n : ℤ) (-2)|.toNat

end

end A299485.P4628453301162020252

namespace A299485

/-- `A299480(abs(xor(n, -2)))` -/
def P4628453301162020252.Spec : Prop :=
  ∀ n, P4628453301162020252.a n = A299485 (n + 1)

end A299485

/-! ## A299485.P17323764328305723670

`A299480(xor(1, n)+1)`
-/

namespace A299485.P17323764328305723670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (Nat.xor 1 n + 1)

end

end A299485.P17323764328305723670

namespace A299485

/-- `A299480(xor(1, n)+1)` -/
def P17323764328305723670.Spec : Prop :=
  ∀ n, P17323764328305723670.a n = A299485 (n + 1)

end A299485

/-! ## A299485.P166139447076682255

`A299480(2-xor(1, 1-n))`
-/

namespace A299485.P166139447076682255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (2 - Int.xor 1 (1 - (n : ℤ))).toNat

end

end A299485.P166139447076682255

namespace A299485

/-- `A299480(2-xor(1, 1-n))` -/
def P166139447076682255.Spec : Prop :=
  ∀ n, P166139447076682255.a n = A299485 (n + 1)

end A299485

/-! ## A299485.P5304420053727357285

`A299480(lcm(2, n)+gcd(2, n))`
-/

namespace A299485.P5304420053727357285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (Nat.lcm 2 n + Nat.gcd 2 n)

end

end A299485.P5304420053727357285

namespace A299485

/-- `A299480(lcm(2, n)+gcd(2, n))` -/
def P5304420053727357285.Spec : Prop :=
  ∀ n, P5304420053727357285.a n = A299485 (n + 1)

end A299485

/-! ## A299485.P16173819001313300621

`A299480((-1)^n+n+1)`
-/

namespace A299485.P16173819001313300621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A299485.P16173819001313300621

namespace A299485

/-- `A299480((-1)^n+n+1)` -/
def P16173819001313300621.Spec : Prop :=
  ∀ n, P16173819001313300621.a n = A299485 (n + 1)

end A299485

/-! ## A299485.P18264205255850066657

`∑{d}[A008619(n), (#+n+1)%2]`
-/

namespace A299485.P18264205255850066657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d + n + 1) % 2

end

end A299485.P18264205255850066657

namespace A299485

/-- `∑{d}[A008619(n), (#+n+1)%2]` -/
def P18264205255850066657.Spec : Prop :=
  ∀ n, (P18264205255850066657.a n : ℤ) = A299485 (n + 1)

end A299485

/-! ## A299485.P16944081242440323812

`∑{d}[∑[(n+1)%2], A000035(n+1-#)]`
-/

namespace A299485.P16944081242440323812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000035 (n + 1 - d)

end

end A299485.P16944081242440323812

namespace A299485

/-- `∑{d}[∑[(n+1)%2], A000035(n+1-#)]` -/
def P16944081242440323812.Spec : Prop :=
  ∀ n, P16944081242440323812.a n = A299485 (n + 1)

end A299485

/-! ## A299485.P15225066189546229437

`∑{d}[∑[A059841(n)], A059841(#+n)]`
-/

namespace A299485.P15225066189546229437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059841 (d + n)

end

end A299485.P15225066189546229437

namespace A299485

/-- `∑{d}[∑[A059841(n)], A059841(#+n)]` -/
def P15225066189546229437.Spec : Prop :=
  ∀ n, P15225066189546229437.a n = A299485 (n + 1)

end A299485

/-! ## A299485.P7444247500370932262

`∑{d}[A008619(n), A000035(n+1-#)]`
-/

namespace A299485.P7444247500370932262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 (n + 1 - d)

end

end A299485.P7444247500370932262

namespace A299485

/-- `∑{d}[A008619(n), A000035(n+1-#)]` -/
def P7444247500370932262.Spec : Prop :=
  ∀ n, P7444247500370932262.a n = A299485 (n + 1)

end A299485

/-! ## A299485.P7316666043788741686

`A000005(A008619(n))-A299480(n+1)`
-/

namespace A299485.P7316666043788741686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008619 n).toNat - A299480 (n + 1)

end

end A299485.P7316666043788741686

namespace A299485

/-- `A000005(A008619(n))-A299480(n+1)` -/
def P7316666043788741686.Spec : Prop :=
  ∀ n, P7316666043788741686.a n = A299485 (n + 1)

end A299485

/-! ## A299485.P14445157938075562102

`gcd(A183063(n+1), A183063(A008619(n)))`
-/

namespace A299485.P14445157938075562102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183063 (n + 1)) (A183063 (A008619 n).toNat)

end

end A299485.P14445157938075562102

namespace A299485

/-- `gcd(A183063(n+1), A183063(A008619(n)))` -/
def P14445157938075562102.Spec : Prop :=
  ∀ n, (P14445157938075562102.a n : ℤ) = A299485 (n + 1)

end A299485

/-! ## A299485.P8531867734892031428

`A183063(n+1)+A183063(n+2)-A299480(n+1)`
-/

namespace A299485.P8531867734892031428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + (A183063 (n + 2) - A299480 (n + 1))

end

end A299485.P8531867734892031428

namespace A299485

/-- `A183063(n+1)+A183063(n+2)-A299480(n+1)` -/
def P8531867734892031428.Spec : Prop :=
  ∀ n, P8531867734892031428.a n = A299485 (n + 1)

end A299485

/-!
# A299486: Solution a( ) of the complementary equation a(n) = b(n-1) + b(n-2) + b(n-3), where a(0) = 1, a(1) = 2, a(2) = 3; see Comments.

The programs for A299486, there is no canonical definition to state claims against.
-/

/-! ## A299486.P14204258867780305930

`eq[char[A299487(n)], A000007(n)]`
-/

namespace A299486.P14204258867780305930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299487 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299486.P14204258867780305930

/-! ## A299486.P1129330672623292698

`eq[char[A299487(n)], A000038(n)]`
-/

namespace A299486.P1129330672623292698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299487 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299486.P1129330672623292698

/-! ## A299486.P11009953965954647039

`eq[char[A299487(n)], A278105(n+3)]`
-/

namespace A299486.P11009953965954647039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299487 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278105 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299486.P11009953965954647039

/-! ## A299486.P11284788499065531966

`eq[char[A299487(n)], A299530(2*n+3)]`
-/

namespace A299486.P11284788499065531966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299487 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299530 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299486.P11284788499065531966

/-! ## A299486.P15796456588135759237

`eq[char[A299487(n)], A151933(n)]`
-/

namespace A299486.P15796456588135759237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299487 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299486.P15796456588135759237

/-!
# A299487: Solution b( ) of the complementary equation a(n) = b(n-1) + b(n-2) + b(n-3), where a(0) = 1, a(1) = 2, a(2) = 3; see Comments.

The programs for A299487, there is no canonical definition to state claims against.
-/

/-! ## A299487.P14882595608702017776

`eq[char[A299486(n)], A000007(n)]`
-/

namespace A299487.P14882595608702017776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299486 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299487.P14882595608702017776

/-! ## A299487.P12800821052376947463

`eq[char[A299486(n)], A299529(n+1)]`
-/

namespace A299487.P12800821052376947463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299486 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299487.P12800821052376947463

/-! ## A299487.P10282557974467198218

`eq[char[A299486(n)], A299530(n+1)]`
-/

namespace A299487.P10282557974467198218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299486 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299487.P10282557974467198218

/-! ## A299487.P12798626682298329061

`eq[A008458(n)%2, char[A299486(n)]]`
-/

namespace A299487.P12798626682298329061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008458 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299486 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A299487.P12798626682298329061

/-! ## A299487.P18345775509941254991

`eq[A137688(n)%2, char[A299486(n)]]`
-/

namespace A299487.P18345775509941254991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137688 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299486 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A299487.P18345775509941254991

/-! ## A299487.P14348091277675251164

`eq[A034444(n+1)%2, char[A299486(n)]]`
-/

namespace A299487.P14348091277675251164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034444 (n + 1)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299486 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A299487.P14348091277675251164

/-! ## A299487.P10143598256636035643

`eq[char[A299486(n)], A151933(n)]`
-/

namespace A299487.P10143598256636035643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299486 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299487.P10143598256636035643

/-!
# A299488: Solution a( ) of the complementary equation a(n) = b(n-1) + b(n-2) + b(n-3), where a(0) = 1, a(1) = 2, a(2) = 4; see Comments.

The programs for A299488, there is no canonical definition to state claims against.
-/

/-! ## A299488.P14578662121026048340

`lt[n*char[A299489(n)], n]`
-/

namespace A299488.P14578662121026048340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299489 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A299488.P14578662121026048340

/-! ## A299488.P6170367517369942241

`eq[char[A299489(n)], A000007(n)]`
-/

namespace A299488.P6170367517369942241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299489 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299488.P6170367517369942241

/-! ## A299488.P6235692842340732121

`eq[char[A299489(n)], A000038(n)]`
-/

namespace A299488.P6235692842340732121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299489 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299488.P6235692842340732121

/-! ## A299488.P10806192199677545402

`lt[char[A299489(n)], A057427(n)]`
-/

namespace A299488.P10806192199677545402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299489 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A299488.P10806192199677545402

/-! ## A299488.P3199133171512877443

`eq[char[A299489(n)], A299530(2*n+3)]`
-/

namespace A299488.P3199133171512877443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299489 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299530 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299488.P3199133171512877443

/-!
# A299489: Solution b( ) of the complementary equation a(n) = b(n-1) + b(n-2) + b(n-3), where a(0) = 1, a(1) = 2, a(2) = 4; see Comments.

The programs for A299489, there is no canonical definition to state claims against.
-/

/-! ## A299489.P7801848238033718271

`eq[char[A299488(n)], A000007(n)]`
-/

namespace A299489.P7801848238033718271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299488 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299489.P7801848238033718271

/-! ## A299489.P15968398605186556507

`eq[char[A299488(n)], A000038(n)]`
-/

namespace A299489.P15968398605186556507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299488 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299489.P15968398605186556507

/-! ## A299489.P12035002508239360257

`A008620(A299488(n+3))-2`
-/

namespace A299489.P12035002508239360257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A299488 (n + 3)).toNat - 2

end

end A299489.P12035002508239360257

/-! ## A299489.P1692287074709281456

`eq[char[A299488(n)], A151933(n)]`
-/

namespace A299489.P1692287074709281456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299488 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299489.P1692287074709281456

/-! ## A299489.P3037146570666950030

`lt[A070939(A211228(n)), A013600(n)]`
-/

namespace A299489.P3037146570666950030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A211228 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013600 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A299489.P3037146570666950030

/-!
# A299490: Solution a( ) of the complementary equation a(n) = b(n-1) + b(n-2) + b(n-3), where a(0) = 1, a(1) = 3, a(2) = 5; see Comments.

The programs for A299490, there is no canonical definition to state claims against.
-/

/-! ## A299490.P7901663511326304170

`∩[comp[A299491(n)], A299495(n)]`
-/

namespace A299490.P7901663511326304170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299491 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299495 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A299490.P7901663511326304170

/-! ## A299490.P2397552130926478729

`eq[char[A299491(n)], A000007(n)]`
-/

namespace A299490.P2397552130926478729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299491 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299490.P2397552130926478729

/-! ## A299490.P2492054454514686065

`eq[char[A299491(n)], A000038(n)]`
-/

namespace A299490.P2492054454514686065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299491 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299490.P2492054454514686065

/-! ## A299490.P3939578555172393852

`eq[char[A299491(n)], A020761(n)]`
-/

namespace A299490.P3939578555172393852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299491 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299490.P3939578555172393852

/-! ## A299490.P1996376630777944399

`eq[char[A299491(n)], A151933(n)]`
-/

namespace A299490.P1996376630777944399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299491 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299490.P1996376630777944399

/-!
# A299491: Solution b( ) of the complementary equation a(n) = b(n-1) + b(n-2) + b(n-3), where a(0) = 1, a(1) = 3, a(2) = 5; see Comments.

The programs for A299491, there is no canonical definition to state claims against.
-/

/-! ## A299491.P4757951090144024212

`eq[char[A299490(n)], A000007(n)]`
-/

namespace A299491.P4757951090144024212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299490 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299491.P4757951090144024212

/-! ## A299491.P3671499792529091402

`eq[char[A299490(n)], A000038(n)]`
-/

namespace A299491.P3671499792529091402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299490 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299491.P3671499792529091402

/-! ## A299491.P1473874330218408795

`eq[char[A299490(n)], A036987(2*n)]`
-/

namespace A299491.P1473874330218408795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299490 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299491.P1473874330218408795

/-! ## A299491.P1941082530916689051

`A008620(A299490(n+2)-2)`
-/

namespace A299491.P1941082530916689051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A299490 (n + 2) - 2).toNat

end

end A299491.P1941082530916689051

/-! ## A299491.P7630708727269328081

`record[A233583(n+1)-char[A299490(n)]]`
-/

namespace A299491.P7630708727269328081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299490 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299491.P7630708727269328081

/-! ## A299491.P5734685472030415905

`eq[char[A299490(n)], A151933(n)]`
-/

namespace A299491.P5734685472030415905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299490 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299491.P5734685472030415905

/-!
# A299492: Solution a( ) of the complementary equation a(n) = b(n-1) + b(n-2) + b(n-3), where a(0) = 2, a(1) = 4, a(2) = 5; see Comments.

The programs for A299492, there is no canonical definition to state claims against.
-/

/-! ## A299492.P13111059589004824534

`eq[char[A299493(n)], A000007(n)]`
-/

namespace A299492.P13111059589004824534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299493 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299492.P13111059589004824534

/-! ## A299492.P7855867503428387714

`eq[char[A299493(n)], A000038(n)]`
-/

namespace A299492.P7855867503428387714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299493 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299492.P7855867503428387714

/-! ## A299492.P14587892064605626365

`eq[n, A233583(n+1)+char[A299493(n)]]`
-/

namespace A299492.P14587892064605626365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299493 n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A299492.P14587892064605626365

/-! ## A299492.P4671864797015009073

`eq[char[A299493(n)], A151878(n)]`
-/

namespace A299492.P4671864797015009073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299493 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299492.P4671864797015009073

/-! ## A299492.P3112513717292225383

`eq[char[A299493(n)], A151933(n)]`
-/

namespace A299492.P3112513717292225383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299493 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299492.P3112513717292225383

/-!
# A299493: Solution b( ) of the complementary equation a(n) = b(n-1) + b(n-2) + b(n-3), where a(0) = 2, a(1) = 4, a(2) = 5; see Comments.

The programs for A299493, there is no canonical definition to state claims against.
-/

/-! ## A299493.P16261836598556509903

`eq[char[A299492(n)], A000007(n)]`
-/

namespace A299493.P16261836598556509903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299492 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299493.P16261836598556509903

/-! ## A299493.P420970378068301814

`eq[char[A299492(n)], A000038(n)]`
-/

namespace A299493.P420970378068301814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299492 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299493.P420970378068301814

/-! ## A299493.P6477291582869285807

`eq[char[A299492(n)], A036987(2*n)]`
-/

namespace A299493.P6477291582869285807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299492 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299493.P6477291582869285807

/-! ## A299493.P10570135643670763379

`eq[char[A299492(n)], A029833(2*(n+1))]`
-/

namespace A299493.P10570135643670763379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299492 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029833 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299493.P10570135643670763379

/-! ## A299493.P9288633987021880243

`eq[char[A299492(n)], A151933(n)]`
-/

namespace A299493.P9288633987021880243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299492 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299493.P9288633987021880243

/-!
# A299494: Solution a( ) of the complementary equation a(n) = b(n-1) + b(n-2) + b(n-3), where a(0) = 2, a(1) = 4, a(2) = 6; see Comments.

The programs for A299494, there is no canonical definition to state claims against.
-/

/-! ## A299494.P16042833033410865511

`record[Δ[(A299495(n)/2)²]]`
-/

namespace A299494.P16042833033410865511
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A299495 n : ℚ) / 2) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299494.P16042833033410865511

/-! ## A299494.P10008188225768141336

`∩[A299491(n), comp[A299495(n)]]`
-/

namespace A299494.P10008188225768141336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299491 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299495 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A299494.P10008188225768141336

/-! ## A299494.P17517812363886035751

`record[Δ[A002620(A299495(n))]]`
-/

namespace A299494.P17517812363886035751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A299495 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299494.P17517812363886035751

/-! ## A299494.P18186386017858779689

`eq[char[A299495(n)], A000007(n)]`
-/

namespace A299494.P18186386017858779689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299495 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299494.P18186386017858779689

/-! ## A299494.P5639436095205004639

`eq[char[A299495(n)], A000038(n)]`
-/

namespace A299494.P5639436095205004639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299495 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299494.P5639436095205004639

/-! ## A299494.P4586954544452700412

`eq[(-A008683(4*(n+1)))^n, char[A299495(n)]]`
-/

namespace A299494.P4586954544452700412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-A008683 (4 * (n + 1))) ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299495 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A299494.P4586954544452700412

/-!
# A299495: Solution b( ) of the complementary equation a(n) = b(n-1) + b(n-2) + b(n-3), where a(0) = 2, a(1) = 4, a(2) = 6; see Comments.

The programs for A299495, there is no canonical definition to state claims against.
-/

/-! ## A299495.P4170075719734249473

`comp[A299494(n)-1]+1`
-/

namespace A299495.P4170075719734249473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299494 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A299495.P4170075719734249473

/-! ## A299495.P10630976109723661408

`eq[char[A299494(n)], A000007(n)]`
-/

namespace A299495.P10630976109723661408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299494 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299495.P10630976109723661408

/-! ## A299495.P8879685820620196926

`eq[char[A299494(n)], A000038(n)]`
-/

namespace A299495.P8879685820620196926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299494 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299495.P8879685820620196926

/-! ## A299495.P9483011057996818946

`eq[char[A299494(n)], A063524(n+1)]`
-/

namespace A299495.P9483011057996818946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299494 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299495.P9483011057996818946

/-! ## A299495.P13282272577402830161

`eq[char[A299494(n)], A029833(2*(n+1))]`
-/

namespace A299495.P13282272577402830161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299494 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029833 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299495.P13282272577402830161

/-! ## A299495.P908380301788911655

`eq[char[A299494(n)], A151933(n)]`
-/

namespace A299495.P908380301788911655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299494 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A299495.P908380301788911655

/-!
# A299497: Solution b( ) of the complementary equation a(n) = b(n-1) + b(n-2) + b(n-3), where a(0) = 3, a(1) = 4, a(2) = 5; see Comments.

The programs for A299497, there is no canonical definition to state claims against.
-/

/-! ## A299497.P7420248216883511208

`comp[A299496(n)%record[xor(3, n)]]`
-/

namespace A299497.P7420248216883511208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299496 n) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A299497.P7420248216883511208

/-! ## A299497.P3531280611081178182

`comp[A299496(n+1)-1]+1`
-/

namespace A299497.P3531280611081178182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299496 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A299497.P3531280611081178182

/-! ## A299497.P14422207833607376464

`comp[A057427(n)*A299496(n)]`
-/

namespace A299497.P14422207833607376464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A299496 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A299497.P14422207833607376464

/-! ## A299497.P11334071284094482016

`comp[A299496(n)%A001786(n)]`
-/

namespace A299497.P11334071284094482016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299496 n) (A001786 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A299497.P11334071284094482016

/-! ## A299497.P17580459354059177211

`comp[A048881(A001316(n))*A299496(n)]`
-/

namespace A299497.P17580459354059177211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A001316 n).toNat * A299496 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A299497.P17580459354059177211

/-!
# A299499: Triangle read by rows, T(n,k) = [x^k] Sum_{k=0..n} p_{n,k}(x) where p_{n,k}(x) = x^k*binomial(n, k)*hypergeom([-k, k-n, k-n], [1, -n], 1/x), for 0 <= k <= n.

The programs for A299499, there is no canonical definition to state claims against.
-/

/-! ## A299499.P11039993386630452730

`A223080(A033184(n+1))%A151800(n+2)`
-/

namespace A299499.P11039993386630452730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223080 (A033184 (n + 1)).toNat) (A151800 (n + 2))

end

end A299499.P11039993386630452730

