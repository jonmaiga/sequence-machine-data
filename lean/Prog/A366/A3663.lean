import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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

/-!
# A366307: Powerful numbers that are products of "Fermi-Dirac primes" (A050376) that are powers of primes with exponents that are powers of 4.

The programs for A366307, there is no canonical definition to state claims against.
-/

/-! ## A366307.P364978363437249912

`A366243(n+1)²`
-/

namespace A366307.P364978363437249912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366243 (n + 1) ^ 2

end

end A366307.P364978363437249912

/-! ## A366307.P3530947680206317573

`record[A366244(n+1)²²]`
-/

namespace A366307.P3530947680206317573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A366244 (n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366307.P3530947680206317573

/-! ## A366307.P4058834985644099722

`∩[A028260(n+1), A252895(n+1)²]²`
-/

namespace A366307.P4058834985644099722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252895 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A366307.P4058834985644099722

/-! ## A366307.P6281715673206321044

`A000290(A252895(n+1)²)`
-/

namespace A366307.P6281715673206321044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A252895 (n + 1) ^ 2).toNat

end

end A366307.P6281715673206321044

/-!
# A366308: The number of infinitary divisors of n that are terms of A366242.

The programs for A366308, the canonical program `A366308.P7657093434936862615` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366308 has offset 1).

The definition of A366308 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366246, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366308.P7657093434936862615

`2^A366246(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366308

/-- `2^A366246(n+1)` -/
def P7657093434936862615.Spec : Prop :=
  ∀ n, P7657093434936862615.a n = (A366308 (n + 1) : ℚ)

end A366308

/-! ## A366308.P12553157296341492140

`A037445(n+1)/A366309(n+1)`
-/

namespace A366308.P12553157296341492140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037445 (n + 1) : ℚ) / (A366309 (n + 1) : ℚ)

end

end A366308.P12553157296341492140

namespace A366308

/-- `A037445(n+1)/A366309(n+1)` -/
def P12553157296341492140.Spec : Prop :=
  ∀ n, P12553157296341492140.a n = (A366308 (n + 1) : ℚ)

end A366308

/-! ## A366308.P5788126613872637844

`2^∑{e}[n+1, and(5, #)%3]`
-/

namespace A366308.P5788126613872637844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.land 5 (Nat.factorization (f1 n) p) % 3)

end

end A366308.P5788126613872637844

namespace A366308

/-- `2^∑{e}[n+1, and(5, #)%3]` -/
def P5788126613872637844.Spec : Prop :=
  ∀ n, (P5788126613872637844.a n : ℤ) = A366308 (n + 1)

end A366308

/-! ## A366308.P17537422476369658274

`A037445(A366244(n+1))`
-/

namespace A366308.P17537422476369658274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A366244 (n + 1)).toNat

end

end A366308.P17537422476369658274

namespace A366308

/-- `A037445(A366244(n+1))` -/
def P17537422476369658274.Spec : Prop :=
  ∀ n, P17537422476369658274.a n = A366308 (n + 1)

end A366308

/-! ## A366308.P4576872170400469970

`A366309(A278254(n+1))`
-/

namespace A366308.P4576872170400469970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366309 (A278254 (n + 1)).toNat

end

end A366308.P4576872170400469970

namespace A366308

/-- `A366309(A278254(n+1))` -/
def P4576872170400469970.Spec : Prop :=
  ∀ n, P4576872170400469970.a n = A366308 (n + 1)

end A366308

/-! ## A366308.P10378100684477803365

`A286324(A322483(A293185(A368977(n+1))))`
-/

namespace A366308.P10378100684477803365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (A322483 (A293185 (A368977 (n + 1)).toNat).toNat).toNat

end

end A366308.P10378100684477803365

namespace A366308

/-- `A286324(A322483(A293185(A368977(n+1))))` -/
def P10378100684477803365.Spec : Prop :=
  ∀ n, P10378100684477803365.a n = A366308 (n + 1)

end A366308

/-! ## A366308.P1925664423084486325

`A366309((n+1)²)`
-/

namespace A366308.P1925664423084486325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366309 ((n + 1) ^ 2)

end

end A366308.P1925664423084486325

namespace A366308

/-- `A366309((n+1)²)` -/
def P1925664423084486325.Spec : Prop :=
  ∀ n, P1925664423084486325.a n = A366308 (n + 1)

end A366308

/-! ## A366308.P7745841396371781933

`2^A366247((n+1)²)`
-/

namespace A366308.P7745841396371781933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A366247 ((n + 1) ^ 2) : ℤ)

end

end A366308.P7745841396371781933

namespace A366308

/-- `2^A366247((n+1)²)` -/
def P7745841396371781933.Spec : Prop :=
  ∀ n, P7745841396371781933.a n = (A366308 (n + 1) : ℚ)

end A366308

/-! ## A366308.P911196872634359132

`dr(A366309(∑[2*n+1]))`
-/

namespace A366308.P911196872634359132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A366309 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A366308.P911196872634359132

namespace A366308

/-- `dr(A366309(∑[2*n+1]))` -/
def P911196872634359132.Spec : Prop :=
  ∀ n, (P911196872634359132.a n : ℤ) = A366308 (n + 1)

end A366308

/-! ## A366308.P12134363925362282284

`A278908(A011262(n+1))`
-/

namespace A366308.P12134363925362282284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 (A011262 (n + 1)).toNat

end

end A366308.P12134363925362282284

namespace A366308

/-- `A278908(A011262(n+1))` -/
def P12134363925362282284.Spec : Prop :=
  ∀ n, P12134363925362282284.a n = A366308 (n + 1)

end A366308

/-!
# A366309: The number of infinitary divisors of n that are terms of A366243.

The programs for A366309, the canonical program `A366309.P14240225199999852292` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366309 has offset 1).

The definition of A366309 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366247, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366309.P14240225199999852292

`2^A366247(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A366309

/-- `2^A366247(n+1)` -/
def P14240225199999852292.Spec : Prop :=
  ∀ n, P14240225199999852292.a n = (A366309 (n + 1) : ℚ)

end A366309

/-! ## A366309.P14788036032579121280

`A037445(n+1)/A366308(n+1)`
-/

namespace A366309.P14788036032579121280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037445 (n + 1) : ℚ) / (A366308 (n + 1) : ℚ)

end

end A366309.P14788036032579121280

namespace A366309

/-- `A037445(n+1)/A366308(n+1)` -/
def P14788036032579121280.Spec : Prop :=
  ∀ n, P14788036032579121280.a n = (A366309 (n + 1) : ℚ)

end A366309

/-! ## A366309.P3585738083815811717

`A037445((n+1)/A366244(n+1))`
-/

namespace A366309.P3585738083815811717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A366244 (n + 1) : ℚ))).toNat

end

end A366309.P3585738083815811717

namespace A366309

/-- `A037445((n+1)/A366244(n+1))` -/
def P3585738083815811717.Spec : Prop :=
  ∀ n, P3585738083815811717.a n = A366309 (n + 1)

end A366309

/-! ## A366309.P7946209212192871366

`A078978(A112624(n+1))`
-/

namespace A366309.P7946209212192871366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078978 (A112624 (n + 1)).toNat

end

end A366309.P7946209212192871366

namespace A366309

/-- `A078978(A112624(n+1))` -/
def P7946209212192871366.Spec : Prop :=
  ∀ n, P7946209212192871366.a n = A366309 (n + 1)

end A366309

/-! ## A366309.P4293646557390878817

`gcd(A007425(n+1), A071044(A116882(n+1)))`
-/

namespace A366309.P4293646557390878817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007425 (n + 1)) (A071044 (A116882 (n + 1)).toNat)

end

end A366309.P4293646557390878817

namespace A366309

/-- `gcd(A007425(n+1), A071044(A116882(n+1)))` -/
def P4293646557390878817.Spec : Prop :=
  ∀ n, (P4293646557390878817.a n : ℤ) = A366309 (n + 1)

end A366309

/-! ## A366309.P9196288593443662169

`A365333(A335324(n+1)²)`
-/

namespace A366309.P9196288593443662169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365333 (A335324 (n + 1) ^ 2).toNat

end

end A366309.P9196288593443662169

namespace A366309

/-- `A365333(A335324(n+1)²)` -/
def P9196288593443662169.Spec : Prop :=
  ∀ n, P9196288593443662169.a n = A366309 (n + 1)

end A366309

/-! ## A366309.P7851118838197684117

`A366308(A335324(n+1)²)`
-/

namespace A366309.P7851118838197684117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366308 (A335324 (n + 1) ^ 2).toNat

end

end A366309.P7851118838197684117

namespace A366309

/-- `A366308(A335324(n+1)²)` -/
def P7851118838197684117.Spec : Prop :=
  ∀ n, P7851118838197684117.a n = A366309 (n + 1)

end A366309

/-! ## A366309.P3425844380559798821

`A366308((n+1)²)`
-/

namespace A366309.P3425844380559798821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366308 ((n + 1) ^ 2)

end

end A366309.P3425844380559798821

namespace A366309

/-- `A366308((n+1)²)` -/
def P3425844380559798821.Spec : Prop :=
  ∀ n, P3425844380559798821.a n = A366309 (n + 1)

end A366309

/-! ## A366309.P1993426147260602124

`2^A366246((n+1)²)`
-/

namespace A366309.P1993426147260602124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A366246 ((n + 1) ^ 2) : ℤ)

end

end A366309.P1993426147260602124

namespace A366309

/-- `2^A366246((n+1)²)` -/
def P1993426147260602124.Spec : Prop :=
  ∀ n, P1993426147260602124.a n = (A366309 (n + 1) : ℚ)

end A366309

/-! ## A366309.P1808894464678061952

`A063775(A053165(n+1)²)`
-/

namespace A366309.P1808894464678061952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063775 (A053165 (n + 1) ^ 2).toNat

end

end A366309.P1808894464678061952

namespace A366309

/-- `A063775(A053165(n+1)²)` -/
def P1808894464678061952.Spec : Prop :=
  ∀ n, P1808894464678061952.a n = A366309 (n + 1)

end A366309

/-! ## A366309.P13801896161392336420

`A037445(A366244((n+1)²))`
-/

namespace A366309.P13801896161392336420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A366244 ((n + 1) ^ 2)).toNat

end

end A366309.P13801896161392336420

namespace A366309

/-- `A037445(A366244((n+1)²))` -/
def P13801896161392336420.Spec : Prop :=
  ∀ n, P13801896161392336420.a n = A366309 (n + 1)

end A366309

/-!
# A366310: First of a sequence of exactly n consecutive primes whose squares have the same last digit.

The programs for A366310, there is no canonical definition to state claims against.
-/

/-! ## A366310.P3452429145660369398

`A119570(A050532(n))`
-/

namespace A366310.P3452429145660369398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119570 (A050532 n).toNat

end

end A366310.P3452429145660369398

/-!
# A366314: a(n) = a(n-1) + 3*a(n-2) + 9*a(n-3) with a(0)=0, a(1)=1, a(2)=4.

The programs for A366314, the canonical program `A366314.P1446963717835803063` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366314 has offset 0).

The definition of A366314 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)+9*a(n-3)` (program `A366314.P1446963717835803063`, by `A366314.P1446963717835803063.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366314.P1446963717835803063

`a(n-1)+3*a(n-2)+9*a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A366314

/-- `a(n-1)+3*a(n-2)+9*a(n-3)` -/
def P1446963717835803063.Spec : Prop :=
  ∀ n, (P1446963717835803063.a n : ℤ) = A366314 n

theorem P1446963717835803063.correct : P1446963717835803063.Spec := by
  intro n
  simp only [A366314]

end A366314

/-! ## A366314.P4820280122488142206

`Δ[A103770(n)/3]`
-/

namespace A366314.P4820280122488142206
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103770 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366314.P4820280122488142206

namespace A366314

/-- `Δ[A103770(n)/3]` -/
def P4820280122488142206.Spec : Prop :=
  ∀ n, P4820280122488142206.a n = (A366314 n : ℚ)

end A366314

/-! ## A366314.P16729039819055413309

`A288834(n+1)%A248088(n)`
-/

namespace A366314.P16729039819055413309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288834 (n + 1)) (A248088 n)

end

end A366314.P16729039819055413309

namespace A366314

/-- `A288834(n+1)%A248088(n)` -/
def P16729039819055413309.Spec : Prop :=
  ∀ n, P16729039819055413309.a n = A366314 n

end A366314

/-! ## A366314.P4811118077049837654

`A255588(Δ[A103770(n)])`
-/

namespace A366314.P4811118077049837654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 (f1 (n + 1) - f1 n).toNat

end

end A366314.P4811118077049837654

namespace A366314

/-- `A255588(Δ[A103770(n)])` -/
def P4811118077049837654.Spec : Prop :=
  ∀ n, P4811118077049837654.a n = A366314 n

end A366314

/-!
# A366317: Number of unordered pairs of strict integer partitions of n.

The programs for A366317, there is no canonical definition to state claims against.
-/

/-! ## A366317.P451241625405596700

`A000217(A000009(n))`
-/

namespace A366317.P451241625405596700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000009 n).toNat

end

end A366317.P451241625405596700

/-! ## A366317.P8867502349050449952

`A366132(n)+A000009(n)`
-/

namespace A366317.P8867502349050449952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366132 n + A000009 n

end

end A366317.P8867502349050449952

/-! ## A366317.P11980074782947084934

`A304990(n)-A366132(n)`
-/

namespace A366317.P11980074782947084934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304990 n - A366132 n

end

end A366317.P11980074782947084934

/-! ## A366317.P18019250829551943772

`C(A111133(n)+2, 2)`
-/

namespace A366317.P18019250829551943772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A111133 n + 2).toNat 2

end

end A366317.P18019250829551943772

/-! ## A366317.P11494463862411592387

`C(A052839(n), A111133(n))`
-/

namespace A366317.P11494463862411592387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A052839 n).toNat (A111133 n).toNat

end

end A366317.P11494463862411592387

/-! ## A366317.P3626946453325905505

`A265508(n)+A265506(n)`
-/

namespace A366317.P3626946453325905505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265508 n + A265506 n

end

end A366317.P3626946453325905505

/-! ## A366317.P18364812308873510301

`A000217(abs(A081360(n)))`
-/

namespace A366317.P18364812308873510301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 |A081360 n|.toNat

end

end A366317.P18364812308873510301

/-! ## A366317.P15275365095169733075

`A000217(∑[A087897(n)])`
-/

namespace A366317.P15275365095169733075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A366317.P15275365095169733075

/-! ## A366317.P11716324515367060750

`A000217(A111133(n)+1)`
-/

namespace A366317.P11716324515367060750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A111133 n + 1).toNat

end

end A366317.P11716324515367060750

/-!
# A366318: Heinz numbers of integer partitions that are of length 2 or begin with n/2, where n is the sum of all parts.

The programs for A366318, there is no canonical definition to state claims against.
-/

/-! ## A366318.P15395676936080296702

`∪[A001358(n+1), A344415(n+1)]`
-/

namespace A366318.P15395676936080296702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366318.P15395676936080296702

/-! ## A366318.P10574411579007459273

`∪[A006881(n+1), A344415(n+1)]`
-/

namespace A366318.P10574411579007459273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366318.P10574411579007459273

/-! ## A366318.P7706034364724074877

`∪[A344415(n+1), A350486(n+1)]`
-/

namespace A366318.P7706034364724074877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366318.P7706034364724074877

/-! ## A366318.P16708811327018952865

`lt[A302129(A003415(n)), A327766(n)]`
-/

namespace A366318.P16708811327018952865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302129 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366318.P16708811327018952865

/-!
# A366319: Numbers k such that the sum of prime indices of k is not twice the maximum prime index of k, meaning A056239(k) != 2 * A061395(k).

The programs for A366319, there is no canonical definition to state claims against.
-/

/-! ## A366319.P4924057326722161979

`comp[A344415(n+1)-1]+1`
-/

namespace A366319.P4924057326722161979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344415 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A366319.P4924057326722161979

/-! ## A366319.P14318138226514335187

`comp[∑{p}[n+1, #^val(n+1, #)]*A353832(n+1)]`
-/

namespace A366319.P14318138226514335187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) * A353832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A366319.P14318138226514335187

/-! ## A366319.P16223633654160218358

`∪[A300063(n+1), A366321(n)]`
-/

namespace A366319.P16223633654160218358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366321 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366319.P16223633654160218358

/-! ## A366319.P14740629662832277980

`∪[A371731(n+1), A313922(n)]`
-/

namespace A366319.P14740629662832277980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313922 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366319.P14740629662832277980

/-! ## A366319.P15045594886834560674

`∪[A371731(n+1), A315329(n)]`
-/

namespace A366319.P15045594886834560674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315329 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366319.P15045594886834560674

/-! ## A366319.P490597666993092174

`∪[A371731(n+1), A366321(n)]`
-/

namespace A366319.P490597666993092174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366321 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366319.P490597666993092174

/-! ## A366319.P7225119265144416816

`∪[A090081(n+1), A321453(n+1)]`
-/

namespace A366319.P7225119265144416816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366319.P7225119265144416816

/-! ## A366319.P3976654345158045019

`∪[A137845(n+1), A321453(n+1)]`
-/

namespace A366319.P3976654345158045019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366319.P3976654345158045019

/-! ## A366319.P4404902035362927719

`∪[A090081(n+1), A371731(n+1)]`
-/

namespace A366319.P4404902035362927719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366319.P4404902035362927719

/-! ## A366319.P13756536220963989147

`∪[A154893(n+1), A371731(n+1)]`
-/

namespace A366319.P13756536220963989147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366319.P13756536220963989147

/-!
# A366321: Numbers m whose prime indices have even sum k such that k/2 is not a prime index of m.

The programs for A366321, there is no canonical definition to state claims against.
-/

/-! ## A366321.P11159692817656114478

`∩[A300061(n+1), A366319(n+1)]`
-/

namespace A366321.P11159692817656114478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366321.P11159692817656114478

/-!
# A366322: Heinz numbers of integer partitions containing at least one odd part. Numbers divisible by at least one prime of odd index.

The programs for A366322, there is no canonical definition to state claims against.
-/

/-! ## A366322.P1792020085262517344

`comp[C(A248101(n+1), n)]`
-/

namespace A366322.P1792020085262517344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A248101 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A366322.P1792020085262517344

/-! ## A366322.P5155129756978111935

`lt[0, A257991(n+1)]+1`
-/

namespace A366322.P5155129756978111935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A366322.P5155129756978111935

/-! ## A366322.P8108530667676882379

`lt[0, A366725(n+1)]+1`
-/

namespace A366322.P8108530667676882379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366725 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A366322.P8108530667676882379

/-! ## A366322.P8642744399654048634

`lt[1, A247503(n+1)]+1`
-/

namespace A366322.P8642744399654048634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A366322.P8642744399654048634

/-! ## A366322.P1336341703827381004

`lt[1, A319521(n+1)]+1`
-/

namespace A366322.P1336341703827381004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A366322.P1336341703827381004

/-! ## A366322.P3787273286903758585

`lt[1, A344908(n+1)]+1`
-/

namespace A366322.P3787273286903758585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344908 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A366322.P3787273286903758585

/-! ## A366322.P14197243881018520753

`comp[A066207(n+1)-1]+1`
-/

namespace A366322.P14197243881018520753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A366322.P14197243881018520753

/-! ## A366322.P1681759169339538715

`comp[A297002(n+1)-1]+1`
-/

namespace A366322.P1681759169339538715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297002 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A366322.P1681759169339538715

/-! ## A366322.P17302581017301209682

`lt[2, A247503(A008458(n))]`
-/

namespace A366322.P17302581017301209682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A366322.P17302581017301209682

/-! ## A366322.P11184886830288716412

`∪[A065502(n+1), A244991(n+1)]`
-/

namespace A366322.P11184886830288716412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366322.P11184886830288716412

/-!
# A366323: Numbers k such that (k*3^k - 1)/2 is a prime.

The programs for A366323, there is no canonical definition to state claims against.
-/

/-! ## A366323.P5758784793814542131

`filter[A242274(n+1), A000035(#)]`
-/

namespace A366323.P5758784793814542131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A366323.P5758784793814542131

/-!
# A366330: Minimal numbers (with respect to division) with no coprime divisor shift.

The programs for A366330, there is no canonical definition to state claims against.
-/

/-! ## A366330.P16650133821873924834

`A003627(n+1)*A374624(A276625(3*n+1))`
-/

namespace A366330.P16650133821873924834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) * A374624 (A276625 (3 * n + 1)).toNat

end

end A366330.P16650133821873924834

/-! ## A366330.P16086699810626148978

`∩[A288313(n+1), A293654(n+1)]`
-/

namespace A366330.P16086699810626148978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366330.P16086699810626148978

/-! ## A366330.P537678324933054856

`A003627(n+1)*A122553(A339103(2*n+3))`
-/

namespace A366330.P537678324933054856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) * A122553 (A339103 (2 * n + 3)).toNat

end

end A366330.P537678324933054856

/-! ## A366330.P6413065878624280462

`A003627(n+1)*A122553(A000045(n))`
-/

namespace A366330.P6413065878624280462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) * A122553 (A000045 n).toNat

end

end A366330.P6413065878624280462

/-! ## A366330.P7367948576138327214

`A325789(2*(n+1))+A001281(A003627(n+1))`
-/

namespace A366330.P7367948576138327214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325789 (2 * (n + 1)) + A001281 (A003627 (n + 1)).toNat

end

end A366330.P7367948576138327214

/-!
# A366331: Number of main classes of diagonal Latin squares of order 2n+1 that contain a horizontally semicyclic Latin square.

The programs for A366331, there is no canonical definition to state claims against.
-/

/-! ## A366331.P11543037805668433870

`A366333(n)+A296210(A006204(n+1))`
-/

namespace A366331.P11543037805668433870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366333 n + A296210 (A006204 (n + 1)).toNat

end

end A366331.P11543037805668433870

/-!
# A366334: Number of free (4,2)-polyominoids with n cells.

The programs for A366334, there is no canonical definition to state claims against.
-/

/-! ## A366334.P8574688219171603796

`A387003(A347468(n+1)+A000931(2*n+3))`
-/

namespace A366334.P8574688219171603796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387003 (A347468 (n + 1) + A000931 (2 * n + 3)).toNat

end

end A366334.P8574688219171603796

/-!
# A366335: Number of fixed (4,2)-polyominoids with n cells.

The programs for A366335, there is no canonical definition to state claims against.
-/

/-! ## A366335.P3518225712472351005

`A385715(A020752(n))`
-/

namespace A366335.P3518225712472351005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385715 (A020752 n).toNat

end

end A366335.P3518225712472351005

/-!
# A366336: Number of free (4,3)-polyominoids with n cells.

The programs for A366336, there is no canonical definition to state claims against.
-/

/-! ## A366336.P892977912773840400

`A118764(A020555(n))`
-/

namespace A366336.P892977912773840400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118764 (A020555 n).toNat

end

end A366336.P892977912773840400

/-!
# A366338: Number of free (4,2)-polyominoids with n cells, allowing right-angled (or hard) connections only.

The programs for A366338, there is no canonical definition to state claims against.
-/

/-! ## A366338.P7477471659401031854

`A191921(A334500(2*n+1))`
-/

namespace A366338.P7477471659401031854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191921 (A334500 (2 * n + 1)).toNat

end

end A366338.P7477471659401031854

/-!
# A366340: Number of free (4,3)-polyominoids with n cells, allowing right-angled (or hard) connections only.

The programs for A366340, there is no canonical definition to state claims against.
-/

/-! ## A366340.P3926973405562743312

`A256271(A061602(n)*A374747(n))`
-/

namespace A366340.P3926973405562743312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256271 (A061602 n * A374747 n).toNat

end

end A366340.P3926973405562743312

/-! ## A366340.P7481655008004965536

`xor(A322236(n+1), A325678(A002415(n)))`
-/

namespace A366340.P7481655008004965536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A322236 (n + 1)) (A325678 (A002415 n).toNat)

end

end A366340.P7481655008004965536

/-!
# A366342: a(n) = Product_{k=1..n} Sum_{j=1..k} j^k.

The programs for A366342, there is no canonical definition to state claims against.
-/

/-! ## A366342.P11707917671079717247

`∏[A031971(n+1)]`
-/

namespace A366342.P11707917671079717247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A366342.P11707917671079717247

/-! ## A366342.P8027877926270172149

`∏[A215078(∑[n+2])]`
-/

namespace A366342.P8027877926270172149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215078 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A366342.P8027877926270172149

/-!
# A366343: Numbers k such that every prime power q with q-1 | k-1 is a prime number.

The programs for A366343, there is no canonical definition to state claims against.
-/

/-! ## A366343.P7682711114423840448

`eq[A060775(2*n+1), A341591(A279789(n))]`
-/

namespace A366343.P7682711114423840448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341591 (A279789 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366343.P7682711114423840448

/-! ## A366343.P12962859957628302357

`A007494(lt[A340386(3*n+5), A055015(2*n)])`
-/

namespace A366343.P12962859957628302357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340386 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055015 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A366343.P12962859957628302357

/-! ## A366343.P13108517214976507802

`lt[A032759(n+1), A242874(A351831(n+1))]`
-/

namespace A366343.P13108517214976507802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242874 (A351831 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366343.P13108517214976507802

/-!
# A366344: Irregular triangle T(n, k), n >= 0, k = 1 or 2, read by rows; the n-th row contains two coprime positive integers whose prime factorizations are encoded in the ternary expansion of n (see Comments section for precise definition).

The programs for A366344, there is no canonical definition to state claims against.
-/

/-! ## A366344.P17928330979386666893

`∏{e}[A038547(n+1), A274641(#)]`
-/

namespace A366344.P17928330979386666893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A274641 (Nat.factorization (f1 n).natAbs p)

end

end A366344.P17928330979386666893

/-! ## A366344.P4855884835181810949

`A175834(A086911(n+1))`
-/

namespace A366344.P4855884835181810949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175834 (A086911 (n + 1)).toNat

end

end A366344.P4855884835181810949

/-! ## A366344.P11303999115851387524

`A059126(A025480(n)%A048054(n+1))`
-/

namespace A366344.P11303999115851387524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 (Int.tmod (A025480 n) (A048054 (n + 1))).toNat

end

end A366344.P11303999115851387524

/-! ## A366344.P6005412509227538463

`A050430(A097706(n+1)%A062572(n+1))`
-/

namespace A366344.P6005412509227538463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050430 (Int.tmod (A097706 (n + 1)) (A062572 (n + 1))).toNat

end

end A366344.P6005412509227538463

/-! ## A366344.P15344519314132415520

`A286363(3*n+3)/A000005(A233523(n+1))`
-/

namespace A366344.P15344519314132415520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286363 (3 * n + 3) : ℚ) / (A000005 (A233523 (n + 1)).toNat : ℚ)

end

end A366344.P15344519314132415520

/-!
# A366346: a(n) = A002070(n) + A036689(n).

The programs for A366346, there is no canonical definition to state claims against.
-/

/-! ## A366346.P14299677763757292677

`A002070(n+1)+A036689(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366346.P14299677763757292677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002070 (n + 1) + A036689 (n + 1)

end

end A366346.P14299677763757292677

/-! ## A366346.P4219092074841089896

`A001248(n+1)-A376073(n+1)`
-/

namespace A366346.P4219092074841089896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A376073 (n + 1)

end

end A366346.P4219092074841089896

/-! ## A366346.P5961801506059819751

`A000040(n+1)²-A376073(n+1)`
-/

namespace A366346.P5961801506059819751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A376073 (n + 1)

end

end A366346.P5961801506059819751

/-! ## A366346.P8850167859600288496

`A002618(sqrt(A001248(n+1)))+A002070(n+1)`
-/

namespace A366346.P8850167859600288496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat + A002070 (n + 1)

end

end A366346.P8850167859600288496

/-! ## A366346.P9776275370361776138

`A002618(A040976(n+1)+2)+A002070(n+1)`
-/

namespace A366346.P9776275370361776138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (A040976 (n + 1) + 2).toNat + A002070 (n + 1)

end

end A366346.P9776275370361776138

/-! ## A366346.P7822371789805720330

`A002070(n+1)+A000010(A001248(n+1))`
-/

namespace A366346.P7822371789805720330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002070 (n + 1) + A000010 (A001248 (n + 1)).toNat

end

end A366346.P7822371789805720330

/-!
# A366347: a(n) has as many prime factors as the ternary expansion of n has runs of nonzero digits; if the k-th run corresponds to A032924(e) and appears after m-1 0's then the p-adic valuation of a(n) is e (where p corresponds to the m-th prime number).

The programs for A366347, there is no canonical definition to state claims against.
-/

/-! ## A366347.P5453397543800337727

`A332815(A365279(n))`
-/

namespace A366347.P5453397543800337727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 (A365279 n).toNat

end

end A366347.P5453397543800337727

/-! ## A366347.P8698032932560607968

`A005940(A365279(n)+1)`
-/

namespace A366347.P8698032932560607968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A365279 n + 1).toNat

end

end A366347.P8698032932560607968

/-! ## A366347.P13866155379601945452

`A122111(∑[A353392(n)!])`
-/

namespace A366347.P13866155379601945452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A353392 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A366347.P13866155379601945452

/-! ## A366347.P11392200054599629349

`A243052(∑[A339163(n)!])`
-/

namespace A366347.P11392200054599629349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A339163 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243052 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A366347.P11392200054599629349

/-! ## A366347.P5000467045090007561

`A122111(record[A093555(n+5)])`
-/

namespace A366347.P5000467045090007561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093555 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366347.P5000467045090007561

/-!
# A366348: Inverse to A366347.

The programs for A366348, there is no canonical definition to state claims against.
-/

/-! ## A366348.P753406533369118412

`A365278(A156552(n+1))`
-/

namespace A366348.P753406533369118412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365278 (A156552 (n + 1)).toNat

end

end A366348.P753406533369118412

/-!
# A366352: Lesser of 2 successive primes (k, k+4) sandwiching 3 consecutive nonsquarefree numbers.

The programs for A366352, there is no canonical definition to state claims against.
-/

/-! ## A366352.P2863211537437930879

`∩[A002476(n+1), A061400(n+1)]`
-/

namespace A366352.P2863211537437930879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366352.P2863211537437930879

/-! ## A366352.P9656320394400581669

`∩[A029710(n+1), A061400(n+1)]`
-/

namespace A366352.P9656320394400581669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366352.P9656320394400581669

/-! ## A366352.P8042061026016046824

`∩[A015913(n+1), A319051(n+1)]`
-/

namespace A366352.P8042061026016046824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366352.P8042061026016046824

/-! ## A366352.P12425668442943734457

`∩[A029710(n+1), A319051(n+1)]`
-/

namespace A366352.P12425668442943734457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366352.P12425668442943734457

/-! ## A366352.P4687094368211823088

`∩[A015913(n+1), A349231(n+1)]`
-/

namespace A366352.P4687094368211823088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366352.P4687094368211823088

/-!
# A366353: a(0) = 0; for n > 0, a(n) is the largest taxicab distance on a square spiral between a(n-1) and any previous occurrence of a(n-1). If a(n-1) has not previously occurred then a(n) = 0.

The programs for A366353, there is no canonical definition to state claims against.
-/

/-! ## A366353.P2252827357153046710

`lcm(A124778(n), A366354(n))`
-/

namespace A366353.P2252827357153046710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A124778 n) (A366354 n)

end

end A366353.P2252827357153046710

/-! ## A366353.P22612059903204876

`A366354(n)%record[A217309(n)]`
-/

namespace A366353.P22612059903204876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366354 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A366353.P22612059903204876

/-! ## A366353.P6805086342238161940

`and(A179612(n+1), A366354(n))`
-/

namespace A366353.P6805086342238161940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179612 (n + 1)) (A366354 n)

end

end A366353.P6805086342238161940

/-! ## A366353.P17339413087067376783

`A366354(n)+A000007(A183079(n+1))`
-/

namespace A366353.P17339413087067376783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366354 n + A000007 (A183079 (n + 1)).toNat

end

end A366353.P17339413087067376783

/-! ## A366353.P12000411992761285365

`A366354(n)+A116373(A322272(n+1))`
-/

namespace A366353.P12000411992761285365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366354 n + A116373 (A322272 (n + 1)).toNat

end

end A366353.P12000411992761285365

/-!
# A366355: a(n) = (-1)^n * QPochhammer(n, n, n).

The programs for A366355, there is no canonical definition to state claims against.
-/

/-! ## A366355.P7484409057905093395

`A320354(2*n²)`
-/

namespace A366355.P7484409057905093395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320354 (2 * n ^ 2)

end

end A366355.P7484409057905093395

/-!
# A366357: G.f. satisfies A(x) = 1/(1 - x) + x/A(x)^2.

The programs for A366357, there is no canonical definition to state claims against.
-/

/-! ## A366357.P6787512774148360325

`A025581(A026330(n+1))-A100981(n+1)`
-/

namespace A366357.P6787512774148360325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A026330 (n + 1)).toNat - A100981 (n + 1)

end

end A366357.P6787512774148360325

/-!
# A366358: G.f. satisfies A(x) = 1/(1 - x) + x/A(x)^3.

The programs for A366358, there is no canonical definition to state claims against.
-/

/-! ## A366358.P5850817701630377907

`A374630(3*n)+A023900(A291677(n))`
-/

namespace A366358.P5850817701630377907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374630 (3 * n) + A023900 (A291677 n).toNat

end

end A366358.P5850817701630377907

/-!
# A366363: G.f. satisfies A(x) = (1 + x/A(x))/(1 - x).

The programs for A366363, there is no canonical definition to state claims against.
-/

/-! ## A366363.P270200014379906520

`A100238(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A366363.P270200014379906520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A100238 n + a (n - 1)

end

end A366363.P270200014379906520

/-! ## A366363.P10134647614429939667

`A057428(n)+∑[A100238(n)]`
-/

namespace A366363.P10134647614429939667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366363.P10134647614429939667

/-! ## A366363.P690919636692795109

`∑[A100238(n)]-A057427(n)`
-/

namespace A366363.P690919636692795109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n

end

end A366363.P690919636692795109

/-! ## A366363.P9235955088430741880

`1-A033999(n)*A052709(n)`
-/

namespace A366363.P9235955088430741880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033999 n * A052709 n

end

end A366363.P9235955088430741880

/-! ## A366363.P9362429950124865203

`A033999(3*n+1)*A052709(n)+1`
-/

namespace A366363.P9362429950124865203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (3 * n + 1) * A052709 n + 1

end

end A366363.P9362429950124865203

/-!
# A366364: G.f. satisfies A(x) = (1 + x/A(x)^2)/(1 - x).

The programs for A366364, there is no canonical definition to state claims against.
-/

/-! ## A366364.P7473978908756409037

`∑[A366434(n)]`
-/

namespace A366364.P7473978908756409037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366364.P7473978908756409037

/-!
# A366365: G.f. satisfies A(x) = (1 + x/A(x)^3)/(1 - x).

The programs for A366365, there is no canonical definition to state claims against.
-/

/-! ## A366365.P18152682902415369170

`∑[A366436(n)]`
-/

namespace A366365.P18152682902415369170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366365.P18152682902415369170

/-!
# A366367: Number of simplicial-free connected simple graphs on n unlabeled vertices.

The programs for A366367, there is no canonical definition to state claims against.
-/

/-! ## A366367.P9178547199193749900

`A367144(n)-A083893(A000244(n))`
-/

namespace A366367.P9178547199193749900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367144 n - A083893 (A000244 n).toNat

end

end A366367.P9178547199193749900

/-! ## A366367.P17673553419576998004

`A367144(n)-A083893(A082700(n+1))`
-/

namespace A366367.P17673553419576998004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367144 n - A083893 (A082700 (n + 1)).toNat

end

end A366367.P17673553419576998004

/-!
# A366368: a(n) = LCM of pairwise products of distinct integers from {1,2,...,n}.

The programs for A366368, the canonical program `A366368.P8633765823509835394` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366368 has offset 0).

The definition of A366368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366368.P8633765823509835394

`A003418(n)*A139550(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A366368

/-- `A003418(n)*A139550(n)` -/
def P8633765823509835394.Spec : Prop :=
  ∀ n, P8633765823509835394.a n = A366368 n

theorem P8633765823509835394.correct : P8633765823509835394.Spec := by
  intro n
  simp only [A366368]

end A366368

/-! ## A366368.P5488717832187943178

`A003418(n)*A003418(floor(n/2))`
-/

namespace A366368.P5488717832187943178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n * A003418 ⌊(n : ℚ) / 2⌋.toNat

end

end A366368.P5488717832187943178

namespace A366368

/-- `A003418(n)*A003418(floor(n/2))` -/
def P5488717832187943178.Spec : Prop :=
  ∀ n, P5488717832187943178.a n = A366368 n

end A366368

/-! ## A366368.P14161008463558777996

`A003418(n)²/A366369(n)`
-/

namespace A366368.P14161008463558777996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n ^ 2 : ℚ) / (A366369 n : ℚ)

end

end A366368.P14161008463558777996

namespace A366368

/-- `A003418(n)²/A366369(n)` -/
def P14161008463558777996.Spec : Prop :=
  ∀ n, P14161008463558777996.a n = (A366368 n : ℚ)

end A366368

/-! ## A366368.P16770470571264247198

`A139550(n)²*A366369(n)`
-/

namespace A366368.P16770470571264247198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 n ^ 2 * A366369 n

end

end A366368.P16770470571264247198

namespace A366368

/-- `A139550(n)²*A366369(n)` -/
def P16770470571264247198.Spec : Prop :=
  ∀ n, P16770470571264247198.a n = A366368 n

end A366368

/-! ## A366368.P10474521075045150489

`A003418(n)*A139554(2*n)`
-/

namespace A366368.P10474521075045150489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n * A139554 (2 * n)

end

end A366368.P10474521075045150489

namespace A366368

/-- `A003418(n)*A139554(2*n)` -/
def P10474521075045150489.Spec : Prop :=
  ∀ n, P10474521075045150489.a n = A366368 n

end A366368

/-! ## A366368.P9599915511651061374

`A139550(2*n)*A139550(n)`
-/

namespace A366368.P9599915511651061374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (2 * n) * A139550 n

end

end A366368.P9599915511651061374

namespace A366368

/-- `A139550(2*n)*A139550(n)` -/
def P9599915511651061374.Spec : Prop :=
  ∀ n, P9599915511651061374.a n = A366368 n

end A366368

/-!
# A366369: a(n) = product of primes p such that p^k <= n < 2*p^k for some k >= 1.

The programs for A366369, the canonical program `A366369.P15037694032256763167` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366369 has offset 0).

The definition of A366369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366369.P15037694032256763167

`A003418(n)/A139550(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A366369

/-- `A003418(n)/A139550(n)` -/
def P15037694032256763167.Spec : Prop :=
  ∀ n, P15037694032256763167.a n = (A366369 n : ℚ)

end A366369

/-! ## A366369.P8572997997016736822

`A003418(n)/A003418(floor(n/2))`
-/

namespace A366369.P8572997997016736822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A003418 ⌊(n : ℚ) / 2⌋.toNat : ℚ)

end

end A366369.P8572997997016736822

namespace A366369

/-- `A003418(n)/A003418(floor(n/2))` -/
def P8572997997016736822.Spec : Prop :=
  ∀ n, P8572997997016736822.a n = (A366369 n : ℚ)

end A366369

/-! ## A366369.P940529486013867998

`A003418(n)²/A366368(n)`
-/

namespace A366369.P940529486013867998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n ^ 2 : ℚ) / (A366368 n : ℚ)

end

end A366369.P940529486013867998

namespace A366369

/-- `A003418(n)²/A366368(n)` -/
def P940529486013867998.Spec : Prop :=
  ∀ n, P940529486013867998.a n = (A366369 n : ℚ)

end A366369

/-! ## A366369.P10728660092059878191

`A003418(n)/A139554(2*n)`
-/

namespace A366369.P10728660092059878191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A139554 (2 * n) : ℚ)

end

end A366369.P10728660092059878191

namespace A366369

/-- `A003418(n)/A139554(2*n)` -/
def P10728660092059878191.Spec : Prop :=
  ∀ n, P10728660092059878191.a n = (A366369 n : ℚ)

end A366369

/-! ## A366369.P4720972554129272153

`A139550(2*n)/A139550(n)`
-/

namespace A366369.P4720972554129272153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139550 (2 * n) : ℚ) / (A139550 n : ℚ)

end

end A366369.P4720972554129272153

namespace A366369

/-- `A139550(2*n)/A139550(n)` -/
def P4720972554129272153.Spec : Prop :=
  ∀ n, P4720972554129272153.a n = (A366369 n : ℚ)

end A366369

/-! ## A366369.P7866006182745471452

`A366368(n)/A139550(n)²`
-/

namespace A366369.P7866006182745471452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366368 n : ℚ) / (A139550 n ^ 2 : ℚ)

end

end A366369.P7866006182745471452

namespace A366369

/-- `A366368(n)/A139550(n)²` -/
def P7866006182745471452.Spec : Prop :=
  ∀ n, P7866006182745471452.a n = (A366369 n : ℚ)

end A366369

/-!
# A366370: Square array A(n,k) giving the length of the least significant run of 0-bits in binary expansion of A000225(n)^k, or 0 if A000225(n)^k is a binary repunit.

The programs for A366370, there is no canonical definition to state claims against.
-/

/-! ## A366370.P13019964198072299491

`A092779(A379712(n))`
-/

namespace A366370.P13019964198072299491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092779 (A379712 n).toNat

end

end A366370.P13019964198072299491

/-! ## A366370.P15471215142688752336

`A089311(A245789(n+1))`
-/

namespace A366370.P15471215142688752336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089311 (A245789 (n + 1)).toNat

end

end A366370.P15471215142688752336

/-! ## A366370.P9535795248926422688

`∑{e}[A232464(A160870(n+1)), #]`
-/

namespace A366370.P9535795248926422688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232464 (A160870 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A366370.P9535795248926422688

/-! ## A366370.P12778772597926016463

`A000196(A000213(n))%A028262(n)`
-/

namespace A366370.P12778772597926016463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (A000213 n).toNat) (A028262 n)

end

end A366370.P12778772597926016463

/-! ## A366370.P5951769549753443597

`A325184(A060543(n))`
-/

namespace A366370.P5951769549753443597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325184 (A060543 n).toNat

end

end A366370.P5951769549753443597

/-!
# A366371: Number of divisors of n that are either an odd prime power > 1 or twice such a number.

The programs for A366371, the canonical program `A366371.P15492993876669342531` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366371 has offset 1).

The definition of A366371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366371.P8866340748911418397

`A000034(n)*A087436(n+1)`
-/

namespace A366371.P8866340748911418397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A087436 (n + 1)

end

end A366371.P8866340748911418397

namespace A366371

/-- `A000034(n)*A087436(n+1)` -/
def P8866340748911418397.Spec : Prop :=
  ∀ n, P8866340748911418397.a n = A366371 (n + 1)

end A366371

/-! ## A366371.P6825765087247327309

`A084642(n)*A087436(n+1)`
-/

namespace A366371.P6825765087247327309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 n * A087436 (n + 1)

end

end A366371.P6825765087247327309

namespace A366371

/-- `A084642(n)*A087436(n+1)` -/
def P6825765087247327309.Spec : Prop :=
  ∀ n, P6825765087247327309.a n = A366371 (n + 1)

end A366371

/-! ## A366371.P15492993876669342531

`∑{d}[n+1, A000034(#-1)*A174275((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A366371

/-- `∑{d}[n+1, A000034(#-1)*A174275((n+1)/#)]` -/
def P15492993876669342531.Spec : Prop :=
  ∀ n, P15492993876669342531.a n = A366371 (n + 1)

theorem P15492993876669342531.correct : P15492993876669342531.Spec := by
  intro n
  simp only [A366371, Nat.add_sub_cancel]

end A366371

/-! ## A366371.P17956770842503079746

`A087436(A079097(n))`
-/

namespace A366371.P17956770842503079746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A079097 n).toNat

end

end A366371.P17956770842503079746

namespace A366371

/-- `A087436(A079097(n))` -/
def P17956770842503079746.Spec : Prop :=
  ∀ n, P17956770842503079746.a n = A366371 (n + 1)

end A366371

/-! ## A366371.P17691522429235918375

`gcd(2, A038754(n))*A087436(n+1)`
-/

namespace A366371.P17691522429235918375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A038754 n) : ℤ) * A087436 (n + 1)

end

end A366371.P17691522429235918375

namespace A366371

/-- `gcd(2, A038754(n))*A087436(n+1)` -/
def P17691522429235918375.Spec : Prop :=
  ∀ n, P17691522429235918375.a n = A366371 (n + 1)

end A366371

/-! ## A366371.P16715440722373827085

`A087436(A065679(n+1))`
-/

namespace A366371.P16715440722373827085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A065679 (n + 1)).toNat

end

end A366371.P16715440722373827085

namespace A366371

/-- `A087436(A065679(n+1))` -/
def P16715440722373827085.Spec : Prop :=
  ∀ n, P16715440722373827085.a n = A366371 (n + 1)

end A366371

/-!
# A366372: a(n) = A332214(n) - n, where A332214 is the Mersenne-prime fixing variant of permutation A163511.

The programs for A366372, there is no canonical definition to state claims against.
-/

/-! ## A366372.P15843368485348793151

`A332214(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366372.P15843368485348793151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332214 n - (n : ℤ)

end

end A366372.P15843368485348793151

/-! ## A366372.P7846974158442499811

`A366373(n)*A366375(n)-n`
-/

namespace A366372.P7846974158442499811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366373 n * A366375 n - (n : ℤ)

end

end A366372.P7846974158442499811

/-! ## A366372.P5264732407655218553

`A332212(A163511(n))-n`
-/

namespace A366372.P5264732407655218553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (A163511 n).toNat - (n : ℤ)

end

end A366372.P5264732407655218553

/-! ## A366372.P5951757194505916071

`A332212(A108548(A332817(n)))-n`
-/

namespace A366372.P5951757194505916071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (A108548 (A332817 n).toNat).toNat - (n : ℤ)

end

end A366372.P5951757194505916071

/-! ## A366372.P11588360645386162609

`A023456(A332214(n))+A022970(n)`
-/

namespace A366372.P11588360645386162609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023456 (A332214 n).toNat + A022970 n

end

end A366372.P11588360645386162609

/-!
# A366373: a(n) = gcd(n, A332214(n)), where A332214 is the Mersenne-prime fixing variant of permutation A163511.

The programs for A366373, there is no canonical definition to state claims against.
-/

/-! ## A366373.P13142087374212667301

`gcd(n, A332214(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366373.P13142087374212667301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A332214 n)

end

end A366373.P13142087374212667301

/-! ## A366373.P1084894542149659239

`A332214(n)/A366375(n)`
-/

namespace A366373.P1084894542149659239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332214 n : ℚ) / (A366375 n : ℚ)

end

end A366373.P1084894542149659239

/-! ## A366373.P1048603791383130064

`gcd(A028310(n), A366372(n))`
-/

namespace A366373.P1048603791383130064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n) (A366372 n)

end

end A366373.P1048603791383130064

/-! ## A366373.P4831863817883301166

`A008458(n)/A008458(A366374(n))`
-/

namespace A366373.P4831863817883301166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 n : ℚ) / (A008458 (A366374 n).toNat : ℚ)

end

end A366373.P4831863817883301166

/-! ## A366373.P345508862982238696

`A008574(n)/A008574(A366374(n))`
-/

namespace A366373.P345508862982238696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 n : ℚ) / (A008574 (A366374 n).toNat : ℚ)

end

end A366373.P345508862982238696

/-! ## A366373.P11358341602079378279

`A123108(2*n)/A366374(A123108(2*n))`
-/

namespace A366373.P11358341602079378279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123108 (2 * n) : ℚ) / (A366374 (A123108 (2 * n)).toNat : ℚ)

end

end A366373.P11358341602079378279

/-! ## A366373.P15386838299007007058

`A332212(A163511(n))/A366375(n)`
-/

namespace A366373.P15386838299007007058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332212 (A163511 n).toNat : ℚ) / (A366375 n : ℚ)

end

end A366373.P15386838299007007058

/-! ## A366373.P420545651118517381

`A364254(A332214(n))`
-/

namespace A366373.P420545651118517381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364254 (A332214 n).toNat

end

end A366373.P420545651118517381

/-! ## A366373.P6484658135245841881

`A364254(A366372(n)+n)`
-/

namespace A366373.P6484658135245841881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364254 (A366372 n + (n : ℤ)).toNat

end

end A366373.P6484658135245841881

/-!
# A366374: a(n) = n / gcd(n, A332214(n)), where A332214 is the Mersenne-prime fixing variant of permutation A163511.

The programs for A366374, there is no canonical definition to state claims against.
-/

/-! ## A366374.P13098680810451386639

`n/A366373(n)`
-/

namespace A366374.P13098680810451386639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A366373 n : ℚ)

end

end A366374.P13098680810451386639

/-! ## A366374.P1070909814955715086

`n/gcd(n, A332214(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366374.P1070909814955715086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (n : ℤ) (A332214 n) : ℚ)

end

end A366374.P1070909814955715086

/-! ## A366374.P9724367679674356670

`n/A332214(n)*A366375(n)`
-/

namespace A366374.P9724367679674356670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A332214 n : ℚ) * (A366375 n : ℚ)

end

end A366374.P9724367679674356670

/-! ## A366374.P17308842185518549712

`n/gcd(A028310(n), A366372(n))`
-/

namespace A366374.P17308842185518549712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (A028310 n) (A366372 n) : ℚ)

end

end A366374.P17308842185518549712

/-! ## A366374.P12620636981398186939

`n/A364254(A332214(n))`
-/

namespace A366374.P12620636981398186939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A364254 (A332214 n).toNat : ℚ)

end

end A366374.P12620636981398186939

/-!
# A366375: a(n) = A332214(n) / gcd(n, A332214(n)), where A332214 is the Mersenne-prime fixing variant of permutation A163511.

The programs for A366375, there is no canonical definition to state claims against.
-/

/-! ## A366375.P6799575815509699641

`A332214(n)/A366373(n)`
-/

namespace A366375.P6799575815509699641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332214 n : ℚ) / (A366373 n : ℚ)

end

end A366375.P6799575815509699641

/-! ## A366375.P9536554737531505362

`(A366372(n)+n)/A366373(n)`
-/

namespace A366375.P9536554737531505362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366372 n + (n : ℤ) : ℚ) / (A366373 n : ℚ)

end

end A366375.P9536554737531505362

/-! ## A366375.P4469340609794589123

`A332212(A163511(n))/A366373(n)`
-/

namespace A366375.P4469340609794589123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332212 (A163511 n).toNat : ℚ) / (A366373 n : ℚ)

end

end A366375.P4469340609794589123

/-!
# A366376: Lexicographically earliest infinite sequence such that a(i) = a(j) => A366375(i) = A366375(j) for all i, j >= 0, where A366375(n) is the denominator of n / A332214(n).

The programs for A366376, there is no canonical definition to state claims against.
-/

/-! ## A366376.P17083299420137651203

`A279612(A000118(n*A000079(n)))`
-/

namespace A366376.P17083299420137651203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279612 (A000118 ((n : ℤ) * A000079 n).toNat).toNat

end

end A366376.P17083299420137651203

/-! ## A366376.P15433186460831396509

`A112049(A367657(n)+A072774(n+1))`
-/

namespace A366376.P15433186460831396509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112049 (A367657 n + A072774 (n + 1)).toNat

end

end A366376.P15433186460831396509

/-! ## A366376.P5218597857462158416

`A082370(A378282(n+1)+A282072(n))`
-/

namespace A366376.P5218597857462158416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082370 (A378282 (n + 1) + A282072 n).toNat

end

end A366376.P5218597857462158416

/-! ## A366376.P510177333477429491

`A067029(lcm(A039755(n), A297607(n+1)))`
-/

namespace A366376.P510177333477429491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (Int.lcm (A039755 n) (A297607 (n + 1)))

end

end A366376.P510177333477429491

/-! ## A366376.P11319901537950413172

`A220062(n+2)+A178616(A281988(n+1))`
-/

namespace A366376.P11319901537950413172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 (n + 2) + A178616 (A281988 (n + 1)).toNat

end

end A366376.P11319901537950413172

/-!
# A366377: Number of branching factorizations of the primorial inflation of n.

The programs for A366377, there is no canonical definition to state claims against.
-/

/-! ## A366377.P10562791374607335413

`A366884(A329901(n+1))`
-/

namespace A366377.P10562791374607335413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366884 (A329901 (n + 1)).toNat

end

end A366377.P10562791374607335413

/-! ## A366377.P1995207904581488173

`A277120(A108951(n+1))`
-/

namespace A366377.P1995207904581488173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277120 (A108951 (n + 1)).toNat

end

end A366377.P1995207904581488173

/-! ## A366377.P5476113339902267576

`A277120(A337471(n+1))`
-/

namespace A366377.P5476113339902267576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277120 (A337471 (n + 1)).toNat

end

end A366377.P5476113339902267576

/-! ## A366377.P15259228663142954348

`A104725(A108951(n+1)%A003198(2*n))`
-/

namespace A366377.P15259228663142954348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (Int.tmod (A108951 (n + 1)) (A003198 (2 * n))).toNat

end

end A366377.P15259228663142954348

/-!
# A366378: Numbers k such that A057889(k) == k (mod 3), where A057889 is the bijective bit-reverse.

The programs for A366378, the canonical program `A366378.P2407206345280088483` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366378 has offset 1).

The definition of A366378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5799 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366378.P10492632444430769705

`comp[A366379(n+1)]`
-/

namespace A366378.P10492632444430769705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A366378.P10492632444430769705

namespace A366378

/-- `comp[A366379(n+1)]` -/
def P10492632444430769705.Spec : Prop :=
  ∀ n, (P10492632444430769705.a n : ℤ) = A366378 (n + 1)

end A366378

/-! ## A366378.P2783547907057335266

`eq[n, A366389(A057889(n))]`
-/

namespace A366378.P2783547907057335266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366389 (A057889 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366378.P2783547907057335266

namespace A366378

/-- `eq[n, A366389(A057889(n))]` -/
def P2783547907057335266.Spec : Prop :=
  ∀ n, (P2783547907057335266.a n : ℤ) = A366378 (n + 1)

end A366378

/-! ## A366378.P2407206345280088483

`eq[A010872(n), A010872(A057889(n))]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A366378

/-- `eq[A010872(n), A010872(A057889(n))]` -/
def P2407206345280088483.Spec : Prop :=
  ∀ n, (P2407206345280088483.a n : ℤ) = A366378 (n + 1)

theorem P2407206345280088483.correct : P2407206345280088483.Spec := by
  intro n
  simp only [A366378, Nat.add_sub_cancel]

end A366378

/-! ## A366378.P11669388439046899874

`eq[A057079(n), A057079(A057889(n))]`
-/

namespace A366378.P11669388439046899874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (A057889 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366378.P11669388439046899874

namespace A366378

/-- `eq[A057079(n), A057079(A057889(n))]` -/
def P11669388439046899874.Spec : Prop :=
  ∀ n, (P11669388439046899874.a n : ℤ) = A366378 (n + 1)

end A366378

/-! ## A366378.P5112999211241455090

`eq[A139329(n), A139329(A366389(n))]`
-/

namespace A366378.P5112999211241455090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139329 (A366389 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366378.P5112999211241455090

namespace A366378

/-- `eq[A139329(n), A139329(A366389(n))]` -/
def P5112999211241455090.Spec : Prop :=
  ∀ n, (P5112999211241455090.a n : ℤ) = A366378 (n + 1)

end A366378

/-!
# A366379: Numbers k such that A057889(k) != k (mod 3), where A057889 is the bijective bit-reverse.

The programs for A366379, the canonical program `A366379.P12647451880837089221` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366379 has offset 1).

The definition of A366379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366379.P12647451880837089221

`lt[char[A366378(n+1)], 1]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A366379

/-- `lt[char[A366378(n+1)], 1]` -/
def P12647451880837089221.Spec : Prop :=
  ∀ n, (P12647451880837089221.a n : ℤ) = A366379 (n + 1)

theorem P12647451880837089221.correct : P12647451880837089221.Spec := by
  intro n
  simp only [A366379, Nat.add_sub_cancel]

end A366379

/-! ## A366379.P8481481480788980306

`eq[3, A010872(n)+A010872(A057889(n))]`
-/

namespace A366379.P8481481480788980306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 n + A010872 (A057889 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366379.P8481481480788980306

namespace A366379

/-- `eq[3, A010872(n)+A010872(A057889(n))]` -/
def P8481481480788980306.Spec : Prop :=
  ∀ n, (P8481481480788980306.a n : ℤ) = A366379 (n + 1)

end A366379

/-!
# A366381: Lexicographically earliest infinite sequence such that a(i) = a(j) => A336466(i) = A336466(j) and A336467(i) = A336467(j) for all i, j >= 1, where A336466 is fully multiplicative with a(p) = oddpart(p-1) for any prime p and A336467 is fully multiplicative with a(2) = 1 and a(p) = oddpart(p+1) for odd primes p.

The programs for A366381, there is no canonical definition to state claims against.
-/

/-! ## A366381.P9385486776422475902

`A348330(A140215(n+1))`
-/

namespace A366381.P9385486776422475902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348330 (A140215 (n + 1)).toNat

end

end A366381.P9385486776422475902

/-! ## A366381.P5868194813084015337

`A292375(A244634(n+1))`
-/

namespace A366381.P5868194813084015337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292375 (A244634 (n + 1)).toNat

end

end A366381.P5868194813084015337

/-! ## A366381.P12735365431870870282

`A292375(A033428(3*(n+1)))`
-/

namespace A366381.P12735365431870870282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292375 (A033428 (3 * (n + 1))).toNat

end

end A366381.P12735365431870870282

/-! ## A366381.P5928336669883930130

`A061395(A334463(3*(n+1)))-1`
-/

namespace A366381.P5928336669883930130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A334463 (3 * (n + 1))).toNat - 1

end

end A366381.P5928336669883930130

/-! ## A366381.P17097621580569413376

`A126760(n+1)%A225321(n+2)`
-/

namespace A366381.P17097621580569413376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126760 (n + 1)) (A225321 (n + 2))

end

end A366381.P17097621580569413376

/-!
# A366384: Lexicographically earliest infinite sequence such that a(i) = a(j) => A355828(i) = A355828(j) for all i, j >= 1, where A355828 is Dirichlet inverse of A342671, the greatest common divisor of sigma(n) and A003961(n).

The programs for A366384, there is no canonical definition to state claims against.
-/

/-! ## A366384.P329903650966352417

`A305891(n+1)%A089473(2*n+3)`
-/

namespace A366384.P329903650966352417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305891 (n + 1)) (A089473 (2 * n + 3))

end

end A366384.P329903650966352417

/-! ## A366384.P4910490695875172278

`A291761(n+1)%A061425(A049213(n+1))`
-/

namespace A366384.P4910490695875172278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291761 (n + 1)) (A061425 (A049213 (n + 1)).toNat)

end

end A366384.P4910490695875172278

/-! ## A366384.P17741945105052958173

`A319347(n+1)%A002496(A199921(n+1))`
-/

namespace A366384.P17741945105052958173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319347 (n + 1)) (A002496 (A199921 (n + 1)).toNat)

end

end A366384.P17741945105052958173

/-! ## A366384.P10954206666042934506

`A319337(n+1)%A305939(A003961(n+1))`
-/

namespace A366384.P10954206666042934506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319337 (n + 1)) (A305939 (A003961 (n + 1)).toNat)

end

end A366384.P10954206666042934506

/-! ## A366384.P1894457749482942

`A318888(n+1)%A326951(A001055(n+1))`
-/

namespace A366384.P1894457749482942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318888 (n + 1)) (A326951 (A001055 (n + 1)).toNat)

end

end A366384.P1894457749482942

/-!
# A366385: Divide n by its largest prime factor, then multiply with the index of that same prime; a(1) = 0 by convention.

The programs for A366385, the canonical program `A366385.P9857088472437292857` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366385 has offset 1).

The definition of A366385 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, A061395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366385.P9857088472437292857

`A052126(n+1)*A061395(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A366385

/-- `A052126(n+1)*A061395(n+1)` -/
def P9857088472437292857.Spec : Prop :=
  ∀ n, P9857088472437292857.a n = A366385 (n + 1)

theorem P9857088472437292857.correct : P9857088472437292857.Spec := by
  intro n
  simp only [A366385, Nat.add_sub_cancel]

end A366385

/-! ## A366385.P206084780699515743

`A000720(A006530(n+1))*A052126(n+1)`
-/

namespace A366385.P206084780699515743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006530 (n + 1)).toNat * A052126 (n + 1)

end

end A366385.P206084780699515743

namespace A366385

/-- `A000720(A006530(n+1))*A052126(n+1)` -/
def P206084780699515743.Spec : Prop :=
  ∀ n, P206084780699515743.a n = A366385 (n + 1)

end A366385

/-! ## A366385.P1444664818023635221

`(A243055(n+1)+A055396(n+1))*A052126(n+1)`
-/

namespace A366385.P1444664818023635221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A243055 (n + 1) + A055396 (n + 1)) * A052126 (n + 1)

end

end A366385.P1444664818023635221

namespace A366385

/-- `(A243055(n+1)+A055396(n+1))*A052126(n+1)` -/
def P1444664818023635221.Spec : Prop :=
  ∀ n, P1444664818023635221.a n = A366385 (n + 1)

end A366385

/-! ## A366385.P5479360798732439569

`(A339894(n+1)-A339895(n+1))*A052126(n+1)`
-/

namespace A366385.P5479360798732439569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A339894 (n + 1) - A339895 (n + 1)) * A052126 (n + 1)

end

end A366385.P5479360798732439569

namespace A366385

/-- `(A339894(n+1)-A339895(n+1))*A052126(n+1)` -/
def P5479360798732439569.Spec : Prop :=
  ∀ n, P5479360798732439569.a n = A366385 (n + 1)

end A366385

/-! ## A366385.P260214751534896844

`val(A181821(n+1), 2)*A052126(n+1)`
-/

namespace A366385.P260214751534896844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A181821 (n + 1)).toNat 2 : ℤ) * A052126 (n + 1)

end

end A366385.P260214751534896844

namespace A366385

/-- `val(A181821(n+1), 2)*A052126(n+1)` -/
def P260214751534896844.Spec : Prop :=
  ∀ n, P260214751534896844.a n = A366385 (n + 1)

end A366385

/-! ## A366385.P14375501492332506166

`A061395(n+1)*A346704(A342768(n+1))`
-/

namespace A366385.P14375501492332506166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) * A346704 (A342768 (n + 1)).toNat

end

end A366385.P14375501492332506166

namespace A366385

/-- `A061395(n+1)*A346704(A342768(n+1))` -/
def P14375501492332506166.Spec : Prop :=
  ∀ n, P14375501492332506166.a n = A366385 (n + 1)

end A366385

/-! ## A366385.P2425596130881801062

`A052126(n+1)*A055396(A006530(n+1)²)`
-/

namespace A366385.P2425596130881801062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A055396 (A006530 (n + 1) ^ 2).toNat

end

end A366385.P2425596130881801062

namespace A366385

/-- `A052126(n+1)*A055396(A006530(n+1)²)` -/
def P2425596130881801062.Spec : Prop :=
  ∀ n, P2425596130881801062.a n = A366385 (n + 1)

end A366385

/-!
# A366386: Excess of n when n is factored into factors q(i) = prime(i)/i: a(n) = A196050(n) - A324923(n).

The programs for A366386, there is no canonical definition to state claims against.
-/

/-! ## A366386.P3714159437173216869

`A196050(n+1)-A324923(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366386.P3714159437173216869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1) - A324923 (n + 1)

end

end A366386.P3714159437173216869

/-! ## A366386.P3758103054817993177

`A061775(n+1)-A317713(n+1)`
-/

namespace A366386.P3758103054817993177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1) - A317713 (n + 1)

end

end A366386.P3758103054817993177

/-! ## A366386.P15988676007778256837

`A061775(n+1)-(A324923(n+1)+1)`
-/

namespace A366386.P15988676007778256837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1) - (A324923 (n + 1) + 1)

end

end A366386.P15988676007778256837

/-! ## A366386.P3972750163675909657

`A196050(n+1)+1-A317713(n+1)`
-/

namespace A366386.P3972750163675909657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1) + (1 - A317713 (n + 1))

end

end A366386.P3972750163675909657

/-! ## A366386.P323238817201338709

`A109129(n+1)+A366388(n+1)-A324923(n+1)`
-/

namespace A366386.P323238817201338709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1) + (A366388 (n + 1) - A324923 (n + 1))

end

end A366386.P323238817201338709

/-! ## A366386.P10061052246719427432

`A061775(n+1)-A324923(A000040(n+1))`
-/

namespace A366386.P10061052246719427432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1) - A324923 (A000040 (n + 1)).toNat

end

end A366386.P10061052246719427432

/-! ## A366386.P17246588428544174216

`A196068(n+1)-A196047(n+1)-A324923(A000040(n+1))`
-/

namespace A366386.P17246588428544174216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196068 (n + 1) - A196047 (n + 1) - A324923 (A000040 (n + 1)).toNat

end

end A366386.P17246588428544174216

/-! ## A366386.P16957163861337547754

`∑{e}[A324922(n+1), #-1]`
-/

namespace A366386.P16957163861337547754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A366386.P16957163861337547754

/-!
# A366387: Divide n by its smallest prime factor, then multiply with the index of that same prime; a(1) = 0 by convention.

The programs for A366387, there is no canonical definition to state claims against.
-/

/-! ## A366387.P15839869359282981603

`A032742(n+1)*A055396(n+1)`
-/

namespace A366387.P15839869359282981603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A055396 (n + 1)

end

end A366387.P15839869359282981603

/-! ## A366387.P11455378553512995939

`A000720(A020639(n+1))*A032742(n+1)`
-/

namespace A366387.P11455378553512995939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A020639 (n + 1)).toNat * A032742 (n + 1)

end

end A366387.P11455378553512995939

/-! ## A366387.P11443104516962381009

`A032742(n+1)*A049084(sqrt(A088377(n+1)))`
-/

namespace A366387.P11443104516962381009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A049084 (SequenceMachineLib.roundAway (Real.sqrt (A088377 (n + 1) : ℝ))).toNat

end

end A366387.P11443104516962381009

/-! ## A366387.P4877162491611903620

`A032742(n+1)*A346698(2*A020639(n+1))`
-/

namespace A366387.P4877162491611903620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A346698 (2 * A020639 (n + 1)).toNat

end

end A366387.P4877162491611903620

/-! ## A366387.P8232452491719399850

`∑{d}[A020639(n+1), A056239(#)]*A032742(n+1)`
-/

namespace A366387.P8232452491719399850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d) * A032742 (n + 1)

end

end A366387.P8232452491719399850

/-! ## A366387.P6756849101468035648

`A032742(n+1)*A056239((n+1)/A032742(n+1))`
-/

namespace A366387.P6756849101468035648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A056239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A032742 (n + 1) : ℚ))).toNat

end

end A366387.P6756849101468035648

/-! ## A366387.P4711213356551814817

`A032742(n+1)*A286471(2*(n+1))`
-/

namespace A366387.P4711213356551814817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A286471 (2 * (n + 1))

end

end A366387.P4711213356551814817

/-! ## A366387.P17388274552346144373

`A055396(n+1)*A283464(A266645(n+1))`
-/

namespace A366387.P17388274552346144373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) * A283464 (A266645 (n + 1)).toNat

end

end A366387.P17388274552346144373

/-! ## A366387.P13450874422335595651

`A055396(n+1)*A283463(A266646(n+1))`
-/

namespace A366387.P13450874422335595651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) * A283463 (A266646 (n + 1)).toNat

end

end A366387.P13450874422335595651

/-! ## A366387.P9590575641733272803

`A032742(n+1)*A346698(A020639(n+1)²)`
-/

namespace A366387.P9590575641733272803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A346698 (A020639 (n + 1) ^ 2).toNat

end

end A366387.P9590575641733272803

/-!
# A366388: The number of edges minus the number of leafs in the rooted tree with Matula-Goebel number n.

The programs for A366388, there is no canonical definition to state claims against.
-/

/-! ## A366388.P18222890006446978556

`A196050(n+1)-A109129(n+1)`
-/

namespace A366388.P18222890006446978556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1) - A109129 (n + 1)

end

end A366388.P18222890006446978556

/-! ## A366388.P4716949043097765208

`A061775(A198328(n+1))-1`
-/

namespace A366388.P4716949043097765208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A198328 (n + 1)).toNat - 1

end

end A366388.P4716949043097765208

/-! ## A366388.P16907138781391522692

`A028310(A342507(n+1))-1`
-/

namespace A366388.P16907138781391522692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A342507 (n + 1)).toNat - 1

end

end A366388.P16907138781391522692

/-! ## A366388.P15357178236092654457

`A342507(n+1)+A057428(n)`
-/

namespace A366388.P15357178236092654457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (n + 1) + A057428 n

end

end A366388.P15357178236092654457

/-! ## A366388.P8147177477473848827

`A342507(n+1)-A057427(n)`
-/

namespace A366388.P8147177477473848827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (n + 1) - A057427 n

end

end A366388.P8147177477473848827

/-! ## A366388.P2562363807042041870

`A061775(n+1)-(A109129(n+1)+1)`
-/

namespace A366388.P2562363807042041870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1) - (A109129 (n + 1) + 1)

end

end A366388.P2562363807042041870

/-! ## A366388.P16012134045867216506

`A325544(n+1)-(A325544(n)+A109129(n+1))`
-/

namespace A366388.P16012134045867216506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325544 (n + 1) - (A325544 n + A109129 (n + 1))

end

end A366388.P16012134045867216506

/-! ## A366388.P14015174406570522127

`A342507(2*(n+1))-1`
-/

namespace A366388.P14015174406570522127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (2 * (n + 1)) - 1

end

end A366388.P14015174406570522127

/-! ## A366388.P15331604337496611844

`A087436(A324922(n+1))`
-/

namespace A366388.P15331604337496611844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A324922 (n + 1)).toNat

end

end A366388.P15331604337496611844

/-! ## A366388.P12139071411328529998

`A366788(A243071(n+1))`
-/

namespace A366388.P12139071411328529998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366788 (A243071 (n + 1)).toNat

end

end A366388.P12139071411328529998

/-!
# A366390: Dirichlet inverse of A366389.

The programs for A366390, there is no canonical definition to state claims against.
-/

/-! ## A366390.P15116395821909438998

`(A131571(n+1)+1)*A008683(n+1)`
-/

namespace A366390.P15116395821909438998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131571 (n + 1) + 1) * A008683 (n + 1)

end

end A366390.P15116395821909438998

/-!
# A366394: a(n) is the smallest number that can be obtained by deleting n digits from A007908(n).

The programs for A366394, there is no canonical definition to state claims against.
-/

/-! ## A366394.P9624028227579908185

`floor(10^n/9)-A085980(A060884(n))`
-/

namespace A366394.P9624028227579908185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 9⌋ - A085980 (A060884 n).toNat

end

end A366394.P9624028227579908185

/-! ## A366394.P589782022197013671

`A002275(A029731(n+1))%or(1, 10^n)`
-/

namespace A366394.P589782022197013671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002275 (A029731 (n + 1)).toNat) (Nat.lor 1 (10 ^ n) : ℤ)

end

end A366394.P589782022197013671

/-! ## A366394.P11209400869640292678

`A002275(A029970(n+1))%or(1, 10^n)`
-/

namespace A366394.P11209400869640292678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002275 (A029970 (n + 1)).toNat) (Nat.lor 1 (10 ^ n) : ℤ)

end

end A366394.P11209400869640292678

/-! ## A366394.P10707875750297230317

`A002275(A097855(n+1))%or(1, 10^n)`
-/

namespace A366394.P10707875750297230317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002275 (A097855 (n + 1)).toNat) (Nat.lor 1 (10 ^ n) : ℤ)

end

end A366394.P10707875750297230317

/-! ## A366394.P7468183471669868465

`A244159(A014137(n)-∑{digits}[n, 10^#]%9)`
-/

namespace A366394.P7468183471669868465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244159 (A014137 n - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9 : ℕ) : ℤ)).toNat

end

end A366394.P7468183471669868465

/-!
# A366395: a(n) = Sum_{k=1..n} (-1)^(k-1) * binomial(floor(n/k)+2,3).

The programs for A366395, the canonical program `A366395.P13167208851470863280` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366395 has offset 1).

The definition of A366395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366395.P13167208851470863280

`∑[A365007(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A366395

/-- `∑[A365007(n+1)]` -/
def P13167208851470863280.Spec : Prop :=
  ∀ n, P13167208851470863280.a n = A366395 (n + 1)

theorem P13167208851470863280.correct : P13167208851470863280.Spec := by
  intro n
  simp only [A366395, Nat.add_sub_cancel]

end A366395

/-! ## A366395.P1320556113059780659

`∑[A363969(n+1)+A346759(n+1)]`
-/

namespace A366395.P1320556113059780659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363969 (n + 1) + A346759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366395.P1320556113059780659

namespace A366395

/-- `∑[A363969(n+1)+A346759(n+1)]` -/
def P1320556113059780659.Spec : Prop :=
  ∀ n, P1320556113059780659.a n = A366395 (n + 1)

end A366395

/-! ## A366395.P17311576901664615869

`∑[∑{d}[n+1, A007438(#)*A048272((n+1)/#)]]`
-/

namespace A366395.P17311576901664615869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A007438 d * A048272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366395.P17311576901664615869

namespace A366395

/-- `∑[∑{d}[n+1, A007438(#)*A048272((n+1)/#)]]` -/
def P17311576901664615869.Spec : Prop :=
  ∀ n, P17311576901664615869.a n = A366395 (n + 1)

end A366395

/-! ## A366395.P13211484630374366951

`∑[∑{d}[n+1, A057661(#)*A193356((n+1)/#)]]`
-/

namespace A366395.P13211484630374366951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A057661 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366395.P13211484630374366951

namespace A366395

/-- `∑[∑{d}[n+1, A057661(#)*A193356((n+1)/#)]]` -/
def P13211484630374366951.Spec : Prop :=
  ∀ n, P13211484630374366951.a n = A366395 (n + 1)

end A366395

/-! ## A366395.P420121105341371769

`∑[∑{d}[n+1, A117212(#)*A309731((n+1)/#)]]`
-/

namespace A366395.P420121105341371769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A117212 d * A309731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366395.P420121105341371769

namespace A366395

/-- `∑[∑{d}[n+1, A117212(#)*A309731((n+1)/#)]]` -/
def P420121105341371769.Spec : Prop :=
  ∀ n, P420121105341371769.a n = A366395 (n + 1)

end A366395

/-!
# A366398: a(n) is the number of distinct triangles with prime sides and whose perimeter is equal to the n-th prime.

The programs for A366398, there is no canonical definition to state claims against.
-/

/-! ## A366398.P1190224566497566179

`A070088(A000040(n+1))`
-/

namespace A366398.P1190224566497566179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (A000040 (n + 1)).toNat

end

end A366398.P1190224566497566179

/-! ## A366398.P5957269726112001150

`A070088(A006005(n+1))`
-/

namespace A366398.P5957269726112001150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (A006005 (n + 1)).toNat

end

end A366398.P5957269726112001150

/-! ## A366398.P16260083137405966500

`A070088(A161847(n+1))`
-/

namespace A366398.P16260083137405966500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (A161847 (n + 1)).toNat

end

end A366398.P16260083137405966500

/-! ## A366398.P16924619355581896119

`A070088(A008578(n+2))`
-/

namespace A366398.P16924619355581896119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (A008578 (n + 2)).toNat

end

end A366398.P16924619355581896119

/-! ## A366398.P5297031598936720161

`A070088(A075643(n+2))`
-/

namespace A366398.P5297031598936720161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (A075643 (n + 2)).toNat

end

end A366398.P5297031598936720161

/-! ## A366398.P11407605047974051408

`A070088(A171525(n+2))`
-/

namespace A366398.P11407605047974051408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (A171525 (n + 2)).toNat

end

end A366398.P11407605047974051408

/-! ## A366398.P15151771240572345231

`A070088(A175787(n+2))`
-/

namespace A366398.P15151771240572345231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (A175787 (n + 2)).toNat

end

end A366398.P15151771240572345231

/-! ## A366398.P15608546218341397495

`A070088(A182986(n+2))`
-/

namespace A366398.P15608546218341397495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (A182986 (n + 2)).toNat

end

end A366398.P15608546218341397495

/-! ## A366398.P1393554172721260567

`A070088(eq[1, A070088(2*(n+1))])`
-/

namespace A366398.P1393554172721260567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A366398.P1393554172721260567

/-! ## A366398.P3504334747757911000

`A070088(A330225(n+1))`
-/

namespace A366398.P3504334747757911000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (A330225 (n + 1)).toNat

end

end A366398.P3504334747757911000

/-!
# A366399: Triangle read by rows: T(n,k) is the number of paths traveling orthogonally on an n X k grid that visit every cell.

The programs for A366399, there is no canonical definition to state claims against.
-/

/-! ## A366399.P8814737312230925392

`A332307(A245300(n)+1)`
-/

namespace A366399.P8814737312230925392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A245300 n + 1).toNat

end

end A366399.P8814737312230925392

/-! ## A366399.P10954490995346367550

`A173675(A100851(n))`
-/

namespace A366399.P10954490995346367550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 (A100851 n).toNat

end

end A366399.P10954490995346367550

/-! ## A366399.P11448674842254861974

`A173675(A100852(n))`
-/

namespace A366399.P11448674842254861974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 (A100852 n).toNat

end

end A366399.P11448674842254861974

/-! ## A366399.P6142340651613560363

`A213373(A122366(n))`
-/

namespace A366399.P6142340651613560363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213373 (A122366 n).toNat

end

end A366399.P6142340651613560363

