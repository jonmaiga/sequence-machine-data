import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A221201: Number of 2 X n arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221201, there is no canonical definition to state claims against.
-/

/-! ## A221201.P16060586645049738817

`A221200(∑[n+1]+2)`
-/

namespace A221201.P16060586645049738817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221201.P16060586645049738817

/-! ## A221201.P16569447390145370301

`record[A221200(A133263(∑{e}[n, #]))]`
-/

namespace A221201.P16569447390145370301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221201.P16569447390145370301

/-! ## A221201.P1962761769581931005

`record[A221200(n+3)/A051380(n)]`
-/

namespace A221201.P1962761769581931005
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221200 (n + 3) : ℚ) / (A051380 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221201.P1962761769581931005

/-!
# A221202: Number of 3Xn arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221202, there is no canonical definition to state claims against.
-/

/-! ## A221202.P1032975957511921420

`A221200(∑[n+2]+4)`
-/

namespace A221202.P1032975957511921420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221202.P1032975957511921420

/-! ## A221202.P8504378907106709414

`A221200(A167614(n+1))+A011731(n)`
-/

namespace A221202.P8504378907106709414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (A167614 (n + 1)).toNat + A011731 n

end

end A221202.P8504378907106709414

/-! ## A221202.P16668005387270110248

`A221200(A167614(n+1))+A025439(n)`
-/

namespace A221202.P16668005387270110248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (A167614 (n + 1)).toNat + A025439 n

end

end A221202.P16668005387270110248

/-! ## A221202.P8163710129333076184

`A221200(A167614(n+1))+A025442(n)`
-/

namespace A221202.P8163710129333076184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (A167614 (n + 1)).toNat + A025442 n

end

end A221202.P8163710129333076184

/-! ## A221202.P15121718770667707304

`A221200(A167614(n+1))+A025469(n)`
-/

namespace A221202.P15121718770667707304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (A167614 (n + 1)).toNat + A025469 n

end

end A221202.P15121718770667707304

/-!
# A221203: Number of 4 X n arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221203, there is no canonical definition to state claims against.
-/

/-! ## A221203.P950465767266009847

`A221200(A141214(n)+7)`
-/

namespace A221203.P950465767266009847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (A141214 n + 7).toNat

end

end A221203.P950465767266009847

/-! ## A221203.P1350645749342876723

`A221200(A052905(n)+9)`
-/

namespace A221203.P1350645749342876723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (A052905 n + 9).toNat

end

end A221203.P1350645749342876723

/-! ## A221203.P11869921854573286360

`A221200(A055999(n)+10)`
-/

namespace A221203.P11869921854573286360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (A055999 n + 10).toNat

end

end A221203.P11869921854573286360

/-! ## A221203.P114198604262036778

`A221200(eq[5, A066657(n)])`
-/

namespace A221203.P114198604262036778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221203.P114198604262036778

/-! ## A221203.P16792363007509396410

`A221200(A167614(n+2)+1)`
-/

namespace A221203.P16792363007509396410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (A167614 (n + 2) + 1).toNat

end

end A221203.P16792363007509396410

/-!
# A221204: Number of 5Xn arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221204, there is no canonical definition to state claims against.
-/

/-! ## A221204.P8108570650852587095

`A221200(A167499(n+3))`
-/

namespace A221204.P8108570650852587095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (A167499 (n + 3)).toNat

end

end A221204.P8108570650852587095

/-! ## A221204.P4783050222693516971

`A221200(A155212(n)+13)`
-/

namespace A221204.P4783050222693516971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (A155212 n + 13).toNat

end

end A221204.P4783050222693516971

/-! ## A221204.P8002206690609786390

`A221200(A056000(n)+15)`
-/

namespace A221204.P8002206690609786390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (A056000 n + 15).toNat

end

end A221204.P8002206690609786390

/-! ## A221204.P531257656476471636

`A221200(eq[7, A066657(n)])`
-/

namespace A221204.P531257656476471636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221204.P531257656476471636

/-!
# A221205: a(n) is the nearest integer to sqrt(pi(10^n)) (see A006880).

The programs for A221205, the canonical program `A221205.P3574255995108441508` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221205 has offset 0).

The definition of A221205 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006880, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A221205.P3574255995108441508

`round(sqrt(A006880(n)))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A221205

/-- `round(sqrt(A006880(n)))` -/
def P3574255995108441508.Spec : Prop :=
  ∀ n, P3574255995108441508.a n = A221205 n

theorem P3574255995108441508.correct : P3574255995108441508.Spec := by
  intro n
  simp only [A221205]

end A221205

/-! ## A221205.P1842652584005601173

`round(sqrt(∑[A006879(n)]))`
-/

namespace A221205.P1842652584005601173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A221205.P1842652584005601173

namespace A221205

/-- `round(sqrt(∑[A006879(n)]))` -/
def P1842652584005601173.Spec : Prop :=
  ∀ n, P1842652584005601173.a n = A221205 n

end A221205

/-! ## A221205.P9024412188038436236

`round(sqrt(A090226(n+1)-1))`
-/

namespace A221205.P9024412188038436236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A090226 (n + 1) - 1 : ℝ))

end

end A221205.P9024412188038436236

namespace A221205

/-- `round(sqrt(A090226(n+1)-1))` -/
def P9024412188038436236.Spec : Prop :=
  ∀ n, P9024412188038436236.a n = A221205 n

end A221205

/-! ## A221205.P17089372821139999031

`round(sqrt(A058289(n)-A058290(n)))`
-/

namespace A221205.P17089372821139999031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A058289 n - A058290 n : ℝ))

end

end A221205.P17089372821139999031

namespace A221205

/-- `round(sqrt(A058289(n)-A058290(n)))` -/
def P17089372821139999031.Spec : Prop :=
  ∀ n, P17089372821139999031.a n = A221205 n

end A221205

/-! ## A221205.P1766307806217523803

`round(sqrt(A090226(n+1)))%A058289(n)`
-/

namespace A221205.P1766307806217523803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A090226 (n + 1) : ℝ))) (A058289 n)

end

end A221205.P1766307806217523803

namespace A221205

/-- `round(sqrt(A090226(n+1)))%A058289(n)` -/
def P1766307806217523803.Spec : Prop :=
  ∀ n, P1766307806217523803.a n = A221205 n

end A221205

/-!
# A221206: a(n) = nearest integer to sqrt(10^n/log(10^n)).

The programs for A221206, the canonical program `A221206.P13585945770861599822` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221206 has offset 1).

The definition of A221206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221206.P13585945770861599822

`round(sqrt(10^(n+1)/log(10^(n+1))))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A221206

/-- `round(sqrt(10^(n+1)/log(10^(n+1))))` -/
def P13585945770861599822.Spec : Prop :=
  ∀ n, P13585945770861599822.a n = A221206 (n + 1)

theorem P13585945770861599822.correct : P13585945770861599822.Spec := by
  intro n
  simp only [A221206, Nat.add_sub_cancel]

end A221206

/-!
# A221212: Rounded area of distinct right triangles appearing in the unit golden spiral.

The programs for A221212, the canonical program `A221212.P12557449265820937602` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221212 has offset 1).

The definition of A221212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221212.P12557449265820937602

`3*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=7, a(4)=9, a(5)=18, a(6)=25, a(7)=47, a(8)=65`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A221212

/-- `3*a(n-2)-a(n-4)` -/
def P12557449265820937602.Spec : Prop :=
  ∀ n, P12557449265820937602.a n = A221212 (n + 1)

theorem P12557449265820937602.correct : P12557449265820937602.Spec := by
  intro n
  simp only [A221212, Nat.add_sub_cancel]

end A221212

/-! ## A221212.P10755293034233145046

`round(A002878(n+1)/A109794(n+2))`
-/

namespace A221212.P10755293034233145046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002878 (n + 1) : ℚ) / (A109794 (n + 2) : ℚ))

end

end A221212.P10755293034233145046

namespace A221212

/-- `round(A002878(n+1)/A109794(n+2))` -/
def P10755293034233145046.Spec : Prop :=
  ∀ n, P10755293034233145046.a n = A221212 (n + 1)

end A221212

/-! ## A221212.P4228796232326841534

`round(A005248(n+2)/A178766(n+4))`
-/

namespace A221212.P4228796232326841534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005248 (n + 2) : ℚ) / (A178766 (n + 4) : ℚ))

end

end A221212.P4228796232326841534

namespace A221212

/-- `round(A005248(n+2)/A178766(n+4))` -/
def P4228796232326841534.Spec : Prop :=
  ∀ n, P4228796232326841534.a n = A221212 (n + 1)

end A221212

/-! ## A221212.P7943385298513905276

`round(A109794(2*n+3)/A109794(n+2))`
-/

namespace A221212.P7943385298513905276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A109794 (2 * n + 3) : ℚ) / (A109794 (n + 2) : ℚ))

end

end A221212.P7943385298513905276

namespace A221212

/-- `round(A109794(2*n+3)/A109794(n+2))` -/
def P7943385298513905276.Spec : Prop :=
  ∀ n, P7943385298513905276.a n = A221212 (n + 1)

end A221212

/-! ## A221212.P4473202520120080136

`round(A178766(2*n+5)/A178766(n+4))`
-/

namespace A221212.P4473202520120080136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178766 (2 * n + 5) : ℚ) / (A178766 (n + 4) : ℚ))

end

end A221212.P4473202520120080136

namespace A221212

/-- `round(A178766(2*n+5)/A178766(n+4))` -/
def P4473202520120080136.Spec : Prop :=
  ∀ n, P4473202520120080136.a n = A221212 (n + 1)

end A221212

/-! ## A221212.P14830851447116461135

`round(A001254(n+3)/A178766(n+6))`
-/

namespace A221212.P14830851447116461135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001254 (n + 3) : ℚ) / (A178766 (n + 6) : ℚ))

end

end A221212.P14830851447116461135

namespace A221212

/-- `round(A001254(n+3)/A178766(n+6))` -/
def P14830851447116461135.Spec : Prop :=
  ∀ n, P14830851447116461135.a n = A221212 (n + 1)

end A221212

/-!
# A221214: O.g.f.: Sum_{n>=0} (3*n+1)^(3*n+1) * exp(-(3*n+1)^3*x) * x^n / n!.

The programs for A221214, there is no canonical definition to state claims against.
-/

/-! ## A221214.P11639186867371883321

`A282629(A051682(n+1))`
-/

namespace A221214.P11639186867371883321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282629 (A051682 (n + 1)).toNat

end

end A221214.P11639186867371883321

/-!
# A221215: T(n,k)= ((n+k)^2-2*(n+k)+4-(n+3*k-2)*(-1)^(n+k))/2; n , k > 0, read by antidiagonals.

The programs for A221215, the canonical program `A221215.P8611431365744757998` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221215 has offset 1).

The definition of A221215 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221215.P8611431365744757998

`(A003057(n+2)²-2*A003057(n+2)+4-(A002260(n+1)+3*A004736(n+1)-2)*(-1)^A003056(n))/2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A221215

/-- `(A003057(n+2)²-2*A003057(n+2)+4-(A002260(n+1)+3*A004736(n+1)-2)*(-1)^A003056(n))/2` -/
def P8611431365744757998.Spec : Prop :=
  ∀ n, P8611431365744757998.a n = (A221215 (n + 1) : ℚ)

end A221215

/-! ## A221215.P5155082617047970822

`A211394(A056011(n+1))`
-/

namespace A221215.P5155082617047970822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (A056011 (n + 1)).toNat

end

end A221215.P5155082617047970822

namespace A221215

/-- `A211394(A056011(n+1))` -/
def P5155082617047970822.Spec : Prop :=
  ∀ n, P5155082617047970822.a n = A221215 (n + 1)

end A221215

/-! ## A221215.P8495059389116322631

`A211394(n+1)+A221217(n+1)-A221216(n+1)`
-/

namespace A221215.P8495059389116322631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (n + 1) + (A221217 (n + 1) - A221216 (n + 1))

end

end A221215.P8495059389116322631

namespace A221215

/-- `A211394(n+1)+A221217(n+1)-A221216(n+1)` -/
def P8495059389116322631.Spec : Prop :=
  ∀ n, P8495059389116322631.a n = A221215 (n + 1)

end A221215

/-! ## A221215.P36546677917735567

`A221216(A038722(n+1))`
-/

namespace A221215.P36546677917735567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221216 (A038722 (n + 1)).toNat

end

end A221215.P36546677917735567

namespace A221215

/-- `A221216(A038722(n+1))` -/
def P36546677917735567.Spec : Prop :=
  ∀ n, P36546677917735567.a n = A221215 (n + 1)

end A221215

/-! ## A221215.P8036328072384329550

`A221217(A056023(n+1))`
-/

namespace A221215.P8036328072384329550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221217 (A056023 (n + 1)).toNat

end

end A221215.P8036328072384329550

namespace A221215

/-- `A221217(A056023(n+1))` -/
def P8036328072384329550.Spec : Prop :=
  ∀ n, P8036328072384329550.a n = A221215 (n + 1)

end A221215

/-! ## A221215.P1854987166360636226

`A221216(A061579(n)+1)`
-/

namespace A221215.P1854987166360636226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221216 (A061579 n + 1).toNat

end

end A221215.P1854987166360636226

namespace A221215

/-- `A221216(A061579(n)+1)` -/
def P1854987166360636226.Spec : Prop :=
  ∀ n, P1854987166360636226.a n = A221215 (n + 1)

end A221215

/-! ## A221215.P4421939068409088758

`A221216(A221217(A211394(n+1)))`
-/

namespace A221215.P4421939068409088758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221216 (A221217 (A211394 (n + 1)).toNat).toNat

end

end A221215.P4421939068409088758

namespace A221215

/-- `A221216(A221217(A211394(n+1)))` -/
def P4421939068409088758.Spec : Prop :=
  ∀ n, P4421939068409088758.a n = A221215 (n + 1)

end A221215

/-!
# A221216: T(n,k) = ((n+k)^2-2*(n+k)+4-(3*n+k-2)*(-1)^(n+k))/2; n , k > 0, read by antidiagonals.

The programs for A221216, the canonical program `A221216.P11272535362071828525` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221216 has offset 1).

The definition of A221216 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221216.P11272535362071828525

`(A003057(n+2)²-2*A003057(n+2)+4-(3*A002260(n+1)+A004736(n+1)-2)*(-1)^A003056(n))/2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A221216

/-- `(A003057(n+2)²-2*A003057(n+2)+4-(3*A002260(n+1)+A004736(n+1)-2)*(-1)^A003056(n))/2` -/
def P11272535362071828525.Spec : Prop :=
  ∀ n, P11272535362071828525.a n = (A221216 (n + 1) : ℚ)

end A221216

/-! ## A221216.P14442722052788917352

`A221217(A056011(n+1))`
-/

namespace A221216.P14442722052788917352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221217 (A056011 (n + 1)).toNat

end

end A221216.P14442722052788917352

namespace A221216

/-- `A221217(A056011(n+1))` -/
def P14442722052788917352.Spec : Prop :=
  ∀ n, P14442722052788917352.a n = A221216 (n + 1)

end A221216

/-! ## A221216.P8860115410633589821

`A211394(n+1)+A221217(n+1)-A221215(n+1)`
-/

namespace A221216.P8860115410633589821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (n + 1) + (A221217 (n + 1) - A221215 (n + 1))

end

end A221216.P8860115410633589821

namespace A221216

/-- `A211394(n+1)+A221217(n+1)-A221215(n+1)` -/
def P8860115410633589821.Spec : Prop :=
  ∀ n, P8860115410633589821.a n = A221216 (n + 1)

end A221216

/-! ## A221216.P13465847354135509327

`A221215(A038722(n+1))`
-/

namespace A221216.P13465847354135509327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221215 (A038722 (n + 1)).toNat

end

end A221216.P13465847354135509327

namespace A221216

/-- `A221215(A038722(n+1))` -/
def P13465847354135509327.Spec : Prop :=
  ∀ n, P13465847354135509327.a n = A221216 (n + 1)

end A221216

/-! ## A221216.P8837248938455296055

`A211394(A056023(n+1))`
-/

namespace A221216.P8837248938455296055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (A056023 (n + 1)).toNat

end

end A221216.P8837248938455296055

namespace A221216

/-- `A211394(A056023(n+1))` -/
def P8837248938455296055.Spec : Prop :=
  ∀ n, P8837248938455296055.a n = A221216 (n + 1)

end A221216

/-! ## A221216.P7857683718472147168

`A221215(A061579(n)+1)`
-/

namespace A221216.P7857683718472147168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221215 (A061579 n + 1).toNat

end

end A221216.P7857683718472147168

namespace A221216

/-- `A221215(A061579(n)+1)` -/
def P7857683718472147168.Spec : Prop :=
  ∀ n, P7857683718472147168.a n = A221216 (n + 1)

end A221216

/-! ## A221216.P8497147755561161041

`A221215(A221217(A211394(n+1)))`
-/

namespace A221216.P8497147755561161041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221215 (A221217 (A211394 (n + 1)).toNat).toNat

end

end A221216.P8497147755561161041

namespace A221216

/-- `A221215(A221217(A211394(n+1)))` -/
def P8497147755561161041.Spec : Prop :=
  ∀ n, P8497147755561161041.a n = A221216 (n + 1)

end A221216

/-!
# A221217: T(n,k) = ((n+k)^2-2*n+3-(n+k-1)*(1+2*(-1)^(n+k)))/2; n , k > 0, read by antidiagonals.

The programs for A221217, the canonical program `A221217.P9319195554370161815` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221217 has offset 1).

The definition of A221217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221217.P16203673833248222028

`A221216(A056011(n+1))`
-/

namespace A221217.P16203673833248222028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221216 (A056011 (n + 1)).toNat

end

end A221217.P16203673833248222028

namespace A221217

/-- `A221216(A056011(n+1))` -/
def P16203673833248222028.Spec : Prop :=
  ∀ n, P16203673833248222028.a n = A221217 (n + 1)

end A221217

/-! ## A221217.P9319195554370161815

`A211394(n+1)+A114327(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A221217

/-- `A211394(n+1)+A114327(n)` -/
def P9319195554370161815.Spec : Prop :=
  ∀ n, P9319195554370161815.a n = A221217 (n + 1)

theorem P9319195554370161815.correct : P9319195554370161815.Spec := by
  intro n
  simp only [A221217, Nat.add_sub_cancel]

end A221217

/-! ## A221217.P4151231481102629395

`A002061(or(1, A002024(n+1)))-n`
-/

namespace A221217.P4151231481102629395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (Int.lor 1 (A002024 (n + 1))).toNat - (n : ℤ)

end

end A221217.P4151231481102629395

namespace A221217

/-- `A002061(or(1, A002024(n+1)))-n` -/
def P4151231481102629395.Spec : Prop :=
  ∀ n, P4151231481102629395.a n = A221217 (n + 1)

end A221217

/-! ## A221217.P7082820724130078524

`A114327(n)+∑[1-A010816(n)]+1`
-/

namespace A221217.P7082820724130078524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221217.P7082820724130078524

namespace A221217

/-- `A114327(n)+∑[1-A010816(n)]+1` -/
def P7082820724130078524.Spec : Prop :=
  ∀ n, P7082820724130078524.a n = A221217 (n + 1)

end A221217

/-! ## A221217.P17149288981943798372

`A038722(n+1)+A274093(n+1)+1`
-/

namespace A221217.P17149288981943798372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + (A274093 (n + 1) + 1)

end

end A221217.P17149288981943798372

namespace A221217

/-- `A038722(n+1)+A274093(n+1)+1` -/
def P17149288981943798372.Spec : Prop :=
  ∀ n, P17149288981943798372.a n = A221217 (n + 1)

end A221217

/-! ## A221217.P3025531350332389884

`A038722(n+1)+A211394(n+1)-(n+1)`
-/

namespace A221217.P3025531350332389884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + (A211394 (n + 1) - (n + 1 : ℤ))

end

end A221217.P3025531350332389884

namespace A221217

/-- `A038722(n+1)+A211394(n+1)-(n+1)` -/
def P3025531350332389884.Spec : Prop :=
  ∀ n, P3025531350332389884.a n = A221217 (n + 1)

end A221217

/-! ## A221217.P8590615177844010434

`A004736(n+1)+A211394(n+1)-A002260(n+1)`
-/

namespace A221217.P8590615177844010434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A211394 (n + 1) - A002260 (n + 1))

end

end A221217.P8590615177844010434

namespace A221217

/-- `A004736(n+1)+A211394(n+1)-A002260(n+1)` -/
def P8590615177844010434.Spec : Prop :=
  ∀ n, P8590615177844010434.a n = A221217 (n + 1)

end A221217

/-! ## A221217.P10805290397498728889

`A221215(n+1)+A221216(n+1)-A211394(n+1)`
-/

namespace A221217.P10805290397498728889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221215 (n + 1) + (A221216 (n + 1) - A211394 (n + 1))

end

end A221217.P10805290397498728889

namespace A221217

/-- `A221215(n+1)+A221216(n+1)-A211394(n+1)` -/
def P10805290397498728889.Spec : Prop :=
  ∀ n, P10805290397498728889.a n = A221217 (n + 1)

end A221217

/-! ## A221217.P2846023146996917743

`A211394(A038722(n+1))`
-/

namespace A221217.P2846023146996917743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (A038722 (n + 1)).toNat

end

end A221217.P2846023146996917743

namespace A221217

/-- `A211394(A038722(n+1))` -/
def P2846023146996917743.Spec : Prop :=
  ∀ n, P2846023146996917743.a n = A221217 (n + 1)

end A221217

/-! ## A221217.P12127034717675780491

`A221215(A056023(n+1))`
-/

namespace A221217.P12127034717675780491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221215 (A056023 (n + 1)).toNat

end

end A221217.P12127034717675780491

namespace A221217

/-- `A221215(A056023(n+1))` -/
def P12127034717675780491.Spec : Prop :=
  ∀ n, P12127034717675780491.a n = A221217 (n + 1)

end A221217

/-! ## A221217.P10157558110845430874

`A211394(A002024(n+1)²-n)`
-/

namespace A221217.P10157558110845430874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A221217.P10157558110845430874

namespace A221217

/-- `A211394(A002024(n+1)²-n)` -/
def P10157558110845430874.Spec : Prop :=
  ∀ n, P10157558110845430874.a n = A221217 (n + 1)

end A221217

/-! ## A221217.P3545540900878980065

`A211394(A000290(A002024(n+1))-n)`
-/

namespace A221217.P3545540900878980065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (A000290 (A002024 (n + 1)).toNat - (n : ℤ)).toNat

end

end A221217.P3545540900878980065

namespace A221217

/-- `A211394(A000290(A002024(n+1))-n)` -/
def P3545540900878980065.Spec : Prop :=
  ∀ n, P3545540900878980065.a n = A221217 (n + 1)

end A221217

/-! ## A221217.P4072491760166822591

`A280682(A280682(n+1)+A024000(n))+A024000(n)`
-/

namespace A221217.P4072491760166822591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280682 (A280682 (n + 1) + A024000 n).toNat + A024000 n

end

end A221217.P4072491760166822591

namespace A221217

/-- `A280682(A280682(n+1)+A024000(n))+A024000(n)` -/
def P4072491760166822591.Spec : Prop :=
  ∀ n, P4072491760166822591.a n = A221217 (n + 1)

end A221217

/-!
# A221220: Numbers with more than one prime factor such that concatenation of its prime factors (without multiplicity) is a prime.

The programs for A221220, there is no canonical definition to state claims against.
-/

/-! ## A221220.P5847522954431640013

`filter[A068998(n+1), A143731(#)]`
-/

namespace A221220.P5847522954431640013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A221220.P5847522954431640013

/-! ## A221220.P16205887464059642073

`∩[A024619(n+1), A068998(n+1)]`
-/

namespace A221220.P16205887464059642073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221220.P16205887464059642073

/-! ## A221220.P14416089245882233900

`∩[A068998(n+1), A361102(n+1)]`
-/

namespace A221220.P14416089245882233900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221220.P14416089245882233900

/-! ## A221220.P1667536688189463504

`filter[A209799(n+1), A143731(#)]`
-/

namespace A221220.P1667536688189463504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A221220.P1667536688189463504

/-! ## A221220.P8809108454128377809

`∩[A068998(n+1), A327476(n+1)]`
-/

namespace A221220.P8809108454128377809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221220.P8809108454128377809

/-!
# A221221: Where powerbacks and powertrains coincide.

The programs for A221221, there is no canonical definition to state claims against.
-/

/-! ## A221221.P6227853028731775472

`eq[A133048(n), A133500(n)]`
-/

namespace A221221.P6227853028731775472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221221.P6227853028731775472

/-! ## A221221.P12127837470453068923

`eq[A133500(A004086(n)), A133500(n)]`
-/

namespace A221221.P12127837470453068923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221221.P12127837470453068923

/-! ## A221221.P2333665837059684525

`lt[A064834(n), A014963(A184392(n+1))]`
-/

namespace A221221.P2333665837059684525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A184392 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A221221.P2333665837059684525

/-! ## A221221.P18198903262621101160

`lt[A308903(n), A091690(A091690(n+5))]`
-/

namespace A221221.P18198903262621101160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308903 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091690 (A091690 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A221221.P18198903262621101160

/-! ## A221221.P6028819177005309902

`eq[A097462(n)², A097462(A351142(n+1))]`
-/

namespace A221221.P6028819177005309902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097462 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097462 (A351142 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221221.P6028819177005309902

/-!
# A221222: Threshold for the P(n)-avoidance vertex-coloring game with two colors and fixed tree size restriction, where P(n) denotes the path on n vertices (see the comments and reference for precise definition).

The programs for A221222, there is no canonical definition to state claims against.
-/

/-! ## A221222.P7284272758943271534

`C(xor(n, n+1), A298048(n+3))+(n+1)²`
-/

namespace A221222.P7284272758943271534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor n (n + 1)) (A298048 (n + 3)).toNat + (n + 1) ^ 2

end

end A221222.P7284272758943271534

/-! ## A221222.P10182509787460475300

`A025480(A185284(n+9))+(n+1)²`
-/

namespace A221222.P10182509787460475300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A185284 (n + 9)).toNat + ((n + 1) ^ 2 : ℤ)

end

end A221222.P10182509787460475300

/-! ## A221222.P17498786390768889873

`A326582(2*n+1)+A227985(A285865(2*n+1))`
-/

namespace A221222.P17498786390768889873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326582 (2 * n + 1) + A227985 (A285865 (2 * n + 1)).toNat

end

end A221222.P17498786390768889873

/-! ## A221222.P4980143881102779739

`C(A072627(A008864(n+1)), A298048(n+3))+(n+1)²`
-/

namespace A221222.P4980143881102779739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A072627 (A008864 (n + 1)).toNat).toNat (A298048 (n + 3)).toNat + (n + 1) ^ 2

end

end A221222.P4980143881102779739

/-! ## A221222.P2547810987358072426

`record[A064066(n)²]`
-/

namespace A221222.P2547810987358072426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064066 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221222.P2547810987358072426

/-!
# A221223: Number of n X 2 arrays of occupancy after each element stays put or moves to some king-move neighbor.

The programs for A221223, there is no canonical definition to state claims against.
-/

/-! ## A221223.P17228019585515881605

`15*a(n-1)-43*a(n-2)+10*a(n-3)` with `a(0)=3, a(1)=35, a(2)=400`
-/

namespace A221223.P17228019585515881605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 35, 400] fun n a =>
  15 * a (n - 1) - 43 * a (n - 2) + 10 * a (n - 3)

end

end A221223.P17228019585515881605

/-! ## A221223.P13265862456963750894

`A221225(∑[n+1]+2)`
-/

namespace A221223.P13265862456963750894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221225 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221223.P13265862456963750894

/-! ## A221223.P4092061385097050560

`record[A221179(n)*A221225(n+3)]`
-/

namespace A221223.P4092061385097050560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221179 n * A221225 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221223.P4092061385097050560

/-! ## A221223.P3124082136415727811

`record[gcd(A221200(n+1), A221225(n+3))]`
-/

namespace A221223.P3124082136415727811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221200 (n + 1)) (A221225 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221223.P3124082136415727811

/-!
# A221224: Number of n X 3 arrays of occupancy after each element stays put or moves to some king-move neighbor.

The programs for A221224, there is no canonical definition to state claims against.
-/

/-! ## A221224.P7119093794462994433

`A221225(∑[n+2]+4)`
-/

namespace A221224.P7119093794462994433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221225 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221224.P7119093794462994433

/-! ## A221224.P12822569737273822846

`lcm(2, A221225(A167614(n+1)))`
-/

namespace A221224.P12822569737273822846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A221225 (A167614 (n + 1)).toNat)

end

end A221224.P12822569737273822846

/-! ## A221224.P7862357468491690957

`record[gcd(A221200(n+1), A221225(n+4))]`
-/

namespace A221224.P7862357468491690957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221200 (n + 1)) (A221225 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221224.P7862357468491690957

/-!
# A221226: Number of n X 2 arrays of occupancy after each element moves to some king-move neighbor, with no occupancy greater than 2.

The programs for A221226, there is no canonical definition to state claims against.
-/

/-! ## A221226.P512400991015847825

`A221229(∑[n+1]+2)`
-/

namespace A221226.P512400991015847825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221229 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221226.P512400991015847825

/-! ## A221226.P3754159589726064782

`A221345(∑[n+1]+2)`
-/

namespace A221226.P3754159589726064782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221345 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221226.P3754159589726064782

/-! ## A221226.P5800896764953139224

`record[A221345(A133263(∑{e}[n, #]))]`
-/

namespace A221226.P5800896764953139224
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221345 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221226.P5800896764953139224

/-! ## A221226.P14640943839143392440

`record[gcd(A098825(n), A221229(n+1))]`
-/

namespace A221226.P14640943839143392440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A221229 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221226.P14640943839143392440

/-! ## A221226.P9821221461340157531

`record[gcd(A060959(n), A221345(n+3))]`
-/

namespace A221226.P9821221461340157531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060959 n) (A221345 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221226.P9821221461340157531

/-!
# A221227: Number of nX3 arrays of occupancy after each element moves to some king-move neighbor, with no occupancy greater than 2.

The programs for A221227, there is no canonical definition to state claims against.
-/

/-! ## A221227.P6469847318488163838

`A221229(∑[n+2]+4)`
-/

namespace A221227.P6469847318488163838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221229 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221227.P6469847318488163838

/-! ## A221227.P16827422535582587657

`record[gcd(A221200(n+1), A221229(n+4))]`
-/

namespace A221227.P16827422535582587657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221200 (n + 1)) (A221229 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221227.P16827422535582587657

/-! ## A221227.P11734136366575040224

`lcm(1-and(2, n), A221229(A167614(n+1)))`
-/

namespace A221227.P11734136366575040224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A221229 (A167614 (n + 1)).toNat)

end

end A221227.P11734136366575040224

/-! ## A221227.P13811185826161684158

`A221229(A167614(n+1))+A025442(n)`
-/

namespace A221227.P13811185826161684158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221229 (A167614 (n + 1)).toNat + A025442 n

end

end A221227.P13811185826161684158

/-!
# A221228: Number of nX4 arrays of occupancy after each element moves to some king-move neighbor, with no occupancy greater than 2.

The programs for A221228, there is no canonical definition to state claims against.
-/

/-! ## A221228.P2416574464184071579

`A221229(∑[n+3]+7)`
-/

namespace A221228.P2416574464184071579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221229 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221228.P2416574464184071579

/-! ## A221228.P2507963665434407517

`record[A221229(A022561(2*n+5)-1)]`
-/

namespace A221228.P2507963665434407517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221229 (A022561 (2 * n + 5) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221228.P2507963665434407517

/-!
# A221229: T(n,k)=Number of nXk arrays of occupancy after each element moves to some king-move neighbor, with no occupancy greater than 2.

The programs for A221229, there is no canonical definition to state claims against.
-/

/-! ## A221229.P759298022706388575

`A221602(n+1)-A185037((2-n)²)`
-/

namespace A221229.P759298022706388575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221602 (n + 1) - A185037 ((2 - (n : ℤ)) ^ 2).toNat

end

end A221229.P759298022706388575

/-!
# A221230: Number of nX2 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221230, there is no canonical definition to state claims against.
-/

/-! ## A221230.P18406952870032761541

`A221234(∑[n+1]+2)`
-/

namespace A221230.P18406952870032761541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221234 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221230.P18406952870032761541

/-! ## A221230.P10783653018689658245

`record[A010054(n)*A221234(n+2)]`
-/

namespace A221230.P10783653018689658245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A221234 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221230.P10783653018689658245

/-! ## A221230.P11212630409987639422

`record[gcd(A221234(n+1), A259776(n))]`
-/

namespace A221230.P11212630409987639422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221234 (n + 1)) (A259776 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221230.P11212630409987639422

/-! ## A221230.P2754434854256997057

`record[gcd(A048993(n), A221234(n+2))]`
-/

namespace A221230.P2754434854256997057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048993 n) (A221234 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221230.P2754434854256997057

/-! ## A221230.P9034414908663820629

`record[gcd(A201637(n), A221234(n+3))]`
-/

namespace A221230.P9034414908663820629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A201637 n) (A221234 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221230.P9034414908663820629

/-!
# A221231: Number of nX3 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221231, there is no canonical definition to state claims against.
-/

/-! ## A221231.P12666304847801858174

`A221234(∑[n+2]+4)`
-/

namespace A221231.P12666304847801858174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221234 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221231.P12666304847801858174

/-! ## A221231.P6417346434860841067

`record[gcd(A221200(n+1), A221234(n+4))]`
-/

namespace A221231.P6417346434860841067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221200 (n + 1)) (A221234 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221231.P6417346434860841067

/-! ## A221231.P13773846686429397088

`or(∑{d}[n, (#%#²)%2], A221234(A167614(n+1)))`
-/

namespace A221231.P13773846686429397088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ d ∈ Nat.divisors (f1 n), d % d ^ 2 % 2 : ℕ) : ℤ) (A221234 (A167614 (n + 1)).toNat)

end

end A221231.P13773846686429397088

/-! ## A221231.P5251899536251204772

`A221234(A167614(n+1))+A011731(n)`
-/

namespace A221231.P5251899536251204772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221234 (A167614 (n + 1)).toNat + A011731 n

end

end A221231.P5251899536251204772

/-! ## A221231.P17520519826016641938

`A221234(A167614(n+1))+A025439(n)`
-/

namespace A221231.P17520519826016641938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221234 (A167614 (n + 1)).toNat + A025439 n

end

end A221231.P17520519826016641938

/-!
# A221232: Number of nX4 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221232, there is no canonical definition to state claims against.
-/

/-! ## A221232.P12408507357562921352

`A221234(∑[n+3]+7)`
-/

namespace A221232.P12408507357562921352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221234 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221232.P12408507357562921352

/-! ## A221232.P12109549745147753487

`A221234(A141214(n)+7)/A016236(n)`
-/

namespace A221232.P12109549745147753487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221234 (A141214 n + 7).toNat : ℚ) / (A016236 n : ℚ)

end

end A221232.P12109549745147753487

/-!
# A221233: Number of n X 5 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221233, there is no canonical definition to state claims against.
-/

/-! ## A221233.P2874463985522607128

`A221234(A374005(n+1))`
-/

namespace A221233.P2874463985522607128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221234 (A374005 (n + 1)).toNat

end

end A221233.P2874463985522607128

/-! ## A221233.P2651682276152386126

`A221234(A167499(n+3))`
-/

namespace A221233.P2651682276152386126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221234 (A167499 (n + 3)).toNat

end

end A221233.P2651682276152386126

/-! ## A221233.P2437161219874483327

`A221234(A155212(n)+13)`
-/

namespace A221233.P2437161219874483327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221234 (A155212 n + 13).toNat

end

end A221233.P2437161219874483327

/-!
# A221234: T(n,k)=Number of nXk arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221234, there is no canonical definition to state claims against.
-/

/-! ## A221234.P12252116810142863370

`A268423(n+1)-A000924(A038110(n+1))`
-/

namespace A221234.P12252116810142863370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268423 (n + 1) - A000924 (A038110 (n + 1)).toNat

end

end A221234.P12252116810142863370

/-! ## A221234.P11668161753506155700

`A344838(A047260(n+1)*A203277(n+1))`
-/

namespace A221234.P11668161753506155700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344838 (A047260 (n + 1) * A203277 (n + 1)).toNat

end

end A221234.P11668161753506155700

/-!
# A221235: Number of nonnegative integer arrays of length n summing to n without adjacent equal values.

The programs for A221235, there is no canonical definition to state claims against.
-/

/-! ## A221235.P11973680296268042918

`A106351(2*A253909(n))`
-/

namespace A221235.P11973680296268042918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (2 * A253909 n).toNat

end

end A221235.P11973680296268042918

/-! ## A221235.P299060167889622800

`A106351(A028310(2*n²))`
-/

namespace A221235.P299060167889622800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (A028310 (2 * n ^ 2)).toNat

end

end A221235.P299060167889622800

/-! ## A221235.P16456788689830665405

`A106351(A253909(n)+n²)`
-/

namespace A221235.P16456788689830665405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (A253909 n + (n ^ 2 : ℤ)).toNat

end

end A221235.P16456788689830665405

/-! ## A221235.P17208755772945419554

`A106351(n²+A028310(n²))`
-/

namespace A221235.P17208755772945419554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 ((n ^ 2 : ℤ) + A028310 (n ^ 2)).toNat

end

end A221235.P17208755772945419554

/-! ## A221235.P11174432612697083278

`A106351(record[2*A000463(n+1)])`
-/

namespace A221235.P11174432612697083278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A221235.P11174432612697083278

/-! ## A221235.P3610978834817340444

`A106351(A005843(A253909(n)))`
-/

namespace A221235.P3610978834817340444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (A005843 (A253909 n).toNat).toNat

end

end A221235.P3610978834817340444

/-! ## A221235.P11617648367601260183

`A106351(A001105(A000007(n)+n))`
-/

namespace A221235.P11617648367601260183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (A001105 (A000007 n + (n : ℤ)).toNat).toNat

end

end A221235.P11617648367601260183

/-! ## A221235.P682865856727229645

`A106351(A005843(record[A000463(n+1)]))`
-/

namespace A221235.P682865856727229645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (A005843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A221235.P682865856727229645

/-! ## A221235.P3899622339922754987

`A106351(A028310(2*n)*A028310(n))`
-/

namespace A221235.P3899622339922754987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (A028310 (2 * n) * A028310 n).toNat

end

end A221235.P3899622339922754987

/-!
# A221236: Number of n X 2 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without 2-loops.

The programs for A221236, there is no canonical definition to state claims against.
-/

/-! ## A221236.P546525284143609834

`record[n%2*A222160(n+1)]`
-/

namespace A221236.P546525284143609834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A222160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221236.P546525284143609834

/-! ## A221236.P17196984484142724560

`record[A000035(n)*A222160(n+1)]`
-/

namespace A221236.P17196984484142724560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A222160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221236.P17196984484142724560

/-! ## A221236.P14136636207546290922

`record[A088705(n)*A222160(n+1)]`
-/

namespace A221236.P14136636207546290922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n * A222160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221236.P14136636207546290922

/-! ## A221236.P13430648307491153131

`record[Δ[A004526(n)]*A222160(n+1)]`
-/

namespace A221236.P13430648307491153131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A222160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221236.P13430648307491153131

/-! ## A221236.P1065362620538374222

`record[char[A168056(n)]*A222160(n+1)]`
-/

namespace A221236.P1065362620538374222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168056 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221236.P1065362620538374222

/-! ## A221236.P14725131228987893985

`A222160(A004277(n))-A000007(n)`
-/

namespace A221236.P14725131228987893985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222160 (A004277 n).toNat - A000007 n

end

end A221236.P14725131228987893985

/-! ## A221236.P708493379356637035

`A057427(n)*A222160(A233583(2*n+1))`
-/

namespace A221236.P708493379356637035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A222160 (A233583 (2 * n + 1)).toNat

end

end A221236.P708493379356637035

/-!
# A221237: Number of nX3 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without 2-loops.

The programs for A221237, there is no canonical definition to state claims against.
-/

/-! ## A221237.P7286647228387472922

`A221240(∑[n+2]+4)`
-/

namespace A221237.P7286647228387472922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221240 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221237.P7286647228387472922

/-! ## A221237.P2717995685460456558

`record[A010054(n)*A221240(n+3)]`
-/

namespace A221237.P2717995685460456558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A221240 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221237.P2717995685460456558

/-! ## A221237.P3074087239908150159

`A221240(A167614(n+1))+A054900(n)`
-/

namespace A221237.P3074087239908150159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221240 (A167614 (n + 1)).toNat + A054900 n

end

end A221237.P3074087239908150159

/-! ## A221237.P17340649956771673524

`A221240(A167614(n+1))+A059995(n)`
-/

namespace A221237.P17340649956771673524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221240 (A167614 (n + 1)).toNat + A059995 n

end

end A221237.P17340649956771673524

/-! ## A221237.P10411221946194113243

`A221240(A167614(n+1))+A178798(n)`
-/

namespace A221237.P10411221946194113243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221240 (A167614 (n + 1)).toNat + A178798 n

end

end A221237.P10411221946194113243

/-!
# A221238: Number of n X 4 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without 2-loops.

The programs for A221238, there is no canonical definition to state claims against.
-/

/-! ## A221238.P9579078950740439545

`A221240(A374004(n+1))`
-/

namespace A221238.P9579078950740439545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221240 (A374004 (n + 1)).toNat

end

end A221238.P9579078950740439545

/-! ## A221238.P9981557357488943300

`A221240(A141214(n)+7)`
-/

namespace A221238.P9981557357488943300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221240 (A141214 n + 7).toNat

end

end A221238.P9981557357488943300

/-! ## A221238.P12217154354603166871

`A221240(A052905(n)+9)`
-/

namespace A221238.P12217154354603166871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221240 (A052905 n + 9).toNat

end

end A221238.P12217154354603166871

/-! ## A221238.P2976473254122471129

`A221240(A055999(n)+10)`
-/

namespace A221238.P2976473254122471129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221240 (A055999 n + 10).toNat

end

end A221238.P2976473254122471129

/-!
# A221239: Number of nX5 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without 2-loops.

The programs for A221239, there is no canonical definition to state claims against.
-/

/-! ## A221239.P14915050092686509318

`A221240(A374005(n+1))`
-/

namespace A221239.P14915050092686509318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221240 (A374005 (n + 1)).toNat

end

end A221239.P14915050092686509318

/-! ## A221239.P13292295619181074855

`A221240(Δ[A264443(n)])`
-/

namespace A221239.P13292295619181074855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221240 (f1 (n + 1) - f1 n).toNat

end

end A221239.P13292295619181074855

/-!
# A221240: T(n,k)=Number of nXk arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without 2-loops.

The programs for A221240, there is no canonical definition to state claims against.
-/

/-! ## A221240.P5609919480860539337

`A140645(A022175(n))-1`
-/

namespace A221240.P5609919480860539337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140645 (A022175 n).toNat - 1

end

end A221240.P5609919480860539337

/-! ## A221240.P16775009970189777158

`A156023(A116469(n+1)+1)`
-/

namespace A221240.P16775009970189777158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156023 (A116469 (n + 1) + 1).toNat

end

end A221240.P16775009970189777158

/-! ## A221240.P9023513627644938977

`A155493(n)-A276625(A155467(n))`
-/

namespace A221240.P9023513627644938977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155493 n - A276625 (A155467 n).toNat

end

end A221240.P9023513627644938977

/-! ## A221240.P11690871829109084703

`A002264(A309748(n+1)+A156939(n))`
-/

namespace A221240.P11690871829109084703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A309748 (n + 1) + A156939 n).toNat

end

end A221240.P11690871829109084703

/-! ## A221240.P8010300195120904204

`A002264(or(A137754(n+1), A156939(n)))`
-/

namespace A221240.P8010300195120904204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.lor (A137754 (n + 1)) (A156939 n)).toNat

end

end A221240.P8010300195120904204

/-!
# A221241: Number of n X 3 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor.

The programs for A221241, there is no canonical definition to state claims against.
-/

/-! ## A221241.P1749727715742114079

`A221245(∑[n+3]+1)`
-/

namespace A221241.P1749727715742114079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221241.P1749727715742114079

/-! ## A221241.P2103311595388958957

`record[A221245(A198464(n+1))]`
-/

namespace A221241.P2103311595388958957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221241.P2103311595388958957

/-! ## A221241.P6812424577023512202

`record[gcd(A113678(n+3), A221245(n+3))]`
-/

namespace A221241.P6812424577023512202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113678 (n + 3)) (A221245 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221241.P6812424577023512202

/-!
# A221242: Number of nX4 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor.

The programs for A221242, there is no canonical definition to state claims against.
-/

/-! ## A221242.P6520866869516918285

`A221245(∑[n+4]+3)`
-/

namespace A221242.P6520866869516918285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221242.P6520866869516918285

/-!
# A221243: Number of n X 5 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor.

The programs for A221243, there is no canonical definition to state claims against.
-/

/-! ## A221243.P12549079934589052922

`A221245(Δ[A264443(n)])`
-/

namespace A221243.P12549079934589052922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (f1 (n + 1) - f1 n).toNat

end

end A221243.P12549079934589052922

/-! ## A221243.P17055097038656899501

`A221245(eq[5, A200370(n+1)])`
-/

namespace A221243.P17055097038656899501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221243.P17055097038656899501

/-! ## A221243.P872526438784566527

`A221245(A264443(n+1)-A264443(n))`
-/

namespace A221243.P872526438784566527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (A264443 (n + 1) - A264443 n).toNat

end

end A221243.P872526438784566527

/-!
# A221244: Number of nX6 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor.

The programs for A221244, there is no canonical definition to state claims against.
-/

/-! ## A221244.P4672380524713599013

`A221245(eq[6, A200370(n+1)])`
-/

namespace A221244.P4672380524713599013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221244.P4672380524713599013

/-!
# A221246: Number of 2 X n arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor.

The programs for A221246, there is no canonical definition to state claims against.
-/

/-! ## A221246.P1049739105350075372

`A221245(∑[n+1]+2)`
-/

namespace A221246.P1049739105350075372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221246.P1049739105350075372

/-! ## A221246.P2527822160646812073

`record[A221245(A133263(∑{e}[n, #]))]`
-/

namespace A221246.P2527822160646812073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221246.P2527822160646812073

/-! ## A221246.P17294437027125412874

`A057427(n)*A221245(A133263(n+1))`
-/

namespace A221246.P17294437027125412874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A221245 (A133263 (n + 1)).toNat

end

end A221246.P17294437027125412874

/-! ## A221246.P574149848525927462

`A221245(A133263(n+1))%A272609(n)`
-/

namespace A221246.P574149848525927462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221245 (A133263 (n + 1)).toNat) (A272609 n)

end

end A221246.P574149848525927462

/-! ## A221246.P15721923457394464205

`lcm(A193592(n), A221245(A133263(n+1)))`
-/

namespace A221246.P15721923457394464205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A193592 n) (A221245 (A133263 (n + 1)).toNat)

end

end A221246.P15721923457394464205

/-!
# A221247: Number of 3Xn arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor.

The programs for A221247, there is no canonical definition to state claims against.
-/

/-! ## A221247.P925284269362302982

`A221245(∑[n+2]+4)`
-/

namespace A221247.P925284269362302982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221247.P925284269362302982

/-! ## A221247.P12961092877987991401

`lcm((-1)^n, A221245(A167614(n+1)))`
-/

namespace A221247.P12961092877987991401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A221245 (A167614 (n + 1)).toNat)

end

end A221247.P12961092877987991401

/-! ## A221247.P1675703872883335685

`A043562(n)*A221245(A167614(n+1))`
-/

namespace A221247.P1675703872883335685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n * A221245 (A167614 (n + 1)).toNat

end

end A221247.P1675703872883335685

/-! ## A221247.P4279603199234293436

`A055801(n)*A221245(A167614(n+1))`
-/

namespace A221247.P4279603199234293436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 n * A221245 (A167614 (n + 1)).toNat

end

end A221247.P4279603199234293436

/-! ## A221247.P4855007761790746883

`A057427(n)*A221245(A167614(n+1))`
-/

namespace A221247.P4855007761790746883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A221245 (A167614 (n + 1)).toNat

end

end A221247.P4855007761790746883

/-!
# A221248: Number of 4 X n arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor.

The programs for A221248, there is no canonical definition to state claims against.
-/

/-! ## A221248.P15719946952358520597

`A221245(A052905(n)+9)`
-/

namespace A221248.P15719946952358520597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (A052905 n + 9).toNat

end

end A221248.P15719946952358520597

/-! ## A221248.P5178469942999820089

`A221245(A055999(n)+10)`
-/

namespace A221248.P5178469942999820089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (A055999 n + 10).toNat

end

end A221248.P5178469942999820089

/-! ## A221248.P16831854108145072407

`A221245(A167614(n+2)+1)`
-/

namespace A221248.P16831854108145072407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (A167614 (n + 2) + 1).toNat

end

end A221248.P16831854108145072407

/-! ## A221248.P9563279116380481798

`A221245(Δ[A264443(n)-n²])`
-/

namespace A221248.P9563279116380481798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (f1 (n + 1) - f1 n).toNat

end

end A221248.P9563279116380481798

/-! ## A221248.P4299439973846013528

`A221245(Δ[A264443(n)]-(2*n+1))`
-/

namespace A221248.P4299439973846013528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (f1 (n + 1) - f1 n - (2 * n + 1 : ℤ)).toNat

end

end A221248.P4299439973846013528

/-!
# A221249: Number of 5Xn arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor.

The programs for A221249, there is no canonical definition to state claims against.
-/

/-! ## A221249.P17991291379106742212

`A221245(A167499(n+3))`
-/

namespace A221249.P17991291379106742212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (A167499 (n + 3)).toNat

end

end A221249.P17991291379106742212

/-! ## A221249.P14366277173444877651

`A221245(A056000(n)+15)`
-/

namespace A221249.P14366277173444877651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (A056000 n + 15).toNat

end

end A221249.P14366277173444877651

/-!
# A221250: Number of n X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221250, there is no canonical definition to state claims against.
-/

/-! ## A221250.P1290788807551163892

`A221255((n+1)²+n²)`
-/

namespace A221250.P1290788807551163892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 ((n + 1) ^ 2 + n ^ 2)

end

end A221250.P1290788807551163892

/-!
# A221251: Number of nX4 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221251, there is no canonical definition to state claims against.
-/

/-! ## A221251.P6103814798080432435

`A221255(A141214(n+1))`
-/

namespace A221251.P6103814798080432435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (A141214 (n + 1)).toNat

end

end A221251.P6103814798080432435

/-! ## A221251.P15860347916004090131

`A221255(A155212(n)+5)`
-/

namespace A221251.P15860347916004090131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (A155212 n + 5).toNat

end

end A221251.P15860347916004090131

/-! ## A221251.P14716871296319733409

`A221255(A056000(n)+7)`
-/

namespace A221251.P14716871296319733409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (A056000 n + 7).toNat

end

end A221251.P14716871296319733409

/-! ## A221251.P18226824904390704476

`A221255(eq[2, A152157(n)])`
-/

namespace A221251.P18226824904390704476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221251.P18226824904390704476

/-! ## A221251.P9649873604314686723

`A221255(eq[2, A350529(n)])`
-/

namespace A221251.P9649873604314686723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221251.P9649873604314686723

/-!
# A221252: Number of nX5 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221252, there is no canonical definition to state claims against.
-/

/-! ## A221252.P3293749689929632909

`A221255(Δ[A264443(n)])`
-/

namespace A221252.P3293749689929632909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (f1 (n + 1) - f1 n).toNat

end

end A221252.P3293749689929632909

/-! ## A221252.P5028218488608946772

`A221255(eq[2, A092921(n)])`
-/

namespace A221252.P5028218488608946772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221252.P5028218488608946772

/-! ## A221252.P3681136171510650001

`A221255(eq[3, A152157(n)])`
-/

namespace A221252.P3681136171510650001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221252.P3681136171510650001

/-! ## A221252.P15311008791106605337

`A221255(eq[4, A193592(n)])`
-/

namespace A221252.P15311008791106605337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221252.P15311008791106605337

/-! ## A221252.P10186143063109784183

`A221255(Δ[A023545(n+1)])`
-/

namespace A221252.P10186143063109784183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (f1 (n + 1) - f1 n).toNat

end

end A221252.P10186143063109784183

/-!
# A221253: Number of nX6 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221253, there is no canonical definition to state claims against.
-/

/-! ## A221253.P10111302866334764688

`A221255(A056119(n)+16)`
-/

namespace A221253.P10111302866334764688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (A056119 n + 16).toNat

end

end A221253.P10111302866334764688

/-! ## A221253.P9585014600146047620

`A221255(eq[3, A219347(n)])`
-/

namespace A221253.P9585014600146047620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221253.P9585014600146047620

/-! ## A221253.P4347591253040577539

`A221255(eq[5, A193592(n)])`
-/

namespace A221253.P4347591253040577539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221253.P4347591253040577539

/-! ## A221253.P3520251288029208419

`A221255(eq[8, A258709(n)])`
-/

namespace A221253.P3520251288029208419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221253.P3520251288029208419

/-! ## A221253.P7275050686186135696

`A221255(eq[8, A185782(n+1)])`
-/

namespace A221253.P7275050686186135696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221253.P7275050686186135696

/-!
# A221254: Number of nX7 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221254, there is no canonical definition to state claims against.
-/

/-! ## A221254.P14309122213614445983

`A221255(eq[6, A193592(n)])`
-/

namespace A221254.P14309122213614445983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221254.P14309122213614445983

/-! ## A221254.P3055042207674578213

`A221255(eq[2, A219347(n)-2])`
-/

namespace A221254.P3055042207674578213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221254.P3055042207674578213

/-!
# A221256: Number of 2 X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221256, there is no canonical definition to state claims against.
-/

/-! ## A221256.P1511378859275963089

`A221255(∑[n+1]+2)`
-/

namespace A221256.P1511378859275963089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221256.P1511378859275963089

/-! ## A221256.P5432788757263711946

`A221255(A133263(n+1))%A242323(n)`
-/

namespace A221256.P5432788757263711946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221255 (A133263 (n + 1)).toNat) (A242323 (n + 36))

end

end A221256.P5432788757263711946

/-!
# A221257: Number of 3Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221257, there is no canonical definition to state claims against.
-/

/-! ## A221257.P12888483284681920910

`A221255(∑[n+2]+4)`
-/

namespace A221257.P12888483284681920910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221257.P12888483284681920910

/-! ## A221257.P13491169583978468871

`A221255(A167614(n+1))+A185284(n)`
-/

namespace A221257.P13491169583978468871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (A167614 (n + 1)).toNat + A185284 n

end

end A221257.P13491169583978468871

/-! ## A221257.P9752332614677633964

`A326455(n)+A221255(A167614(n+1))`
-/

namespace A221257.P9752332614677633964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 n + A221255 (A167614 (n + 1)).toNat

end

end A221257.P9752332614677633964

/-! ## A221257.P12560299676981489377

`A221255(A167614(n+1))%A034663(n)`
-/

namespace A221257.P12560299676981489377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221255 (A167614 (n + 1)).toNat) (A034663 n)

end

end A221257.P12560299676981489377

/-! ## A221257.P6934399796755976800

`lcm(A033999(n), A221255(A167614(n+1)))`
-/

namespace A221257.P6934399796755976800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A221255 (A167614 (n + 1)).toNat)

end

end A221257.P6934399796755976800

/-!
# A221258: Number of 4Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221258, there is no canonical definition to state claims against.
-/

/-! ## A221258.P16269127586349256418

`A221255(A141214(n)+7)`
-/

namespace A221258.P16269127586349256418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (A141214 n + 7).toNat

end

end A221258.P16269127586349256418

/-! ## A221258.P9059548714257261961

`A221255(A052905(n)+9)`
-/

namespace A221258.P9059548714257261961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (A052905 n + 9).toNat

end

end A221258.P9059548714257261961

/-! ## A221258.P12508040902581083441

`A221255(A055999(n)+10)`
-/

namespace A221258.P12508040902581083441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (A055999 n + 10).toNat

end

end A221258.P12508040902581083441

/-! ## A221258.P693938875814203990

`A221255(A167614(n+2)+1)`
-/

namespace A221258.P693938875814203990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (A167614 (n + 2) + 1).toNat

end

end A221258.P693938875814203990

/-! ## A221258.P9402554873084649194

`A221255(eq[5, A131818(n+1)])`
-/

namespace A221258.P9402554873084649194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221258.P9402554873084649194

/-!
# A221259: Number of 5Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221259, there is no canonical definition to state claims against.
-/

/-! ## A221259.P244860107817135192

`A221255(A167499(n+3))`
-/

namespace A221259.P244860107817135192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (A167499 (n + 3)).toNat

end

end A221259.P244860107817135192

/-! ## A221259.P12461371074934515413

`A221255(A056000(n)+15)`
-/

namespace A221259.P12461371074934515413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (A056000 n + 15).toNat

end

end A221259.P12461371074934515413

/-! ## A221259.P7711922032801743465

`A221255(eq[6, A131818(n+1)])`
-/

namespace A221259.P7711922032801743465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221259.P7711922032801743465

/-! ## A221259.P7527589464363480476

`A221255(eq[3, A219347(n)]-(2*n+1))`
-/

namespace A221259.P7527589464363480476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (2 * n + 1))

end

end A221259.P7527589464363480476

/-! ## A221259.P17854608308986063392

`A221255(A235717(n+1)-A052905(n))`
-/

namespace A221259.P17854608308986063392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (A235717 (n + 1) - A052905 n).toNat

end

end A221259.P17854608308986063392

/-!
# A221260: Number of 6Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221260, there is no canonical definition to state claims against.
-/

/-! ## A221260.P15879782569815757190

`A221255(A056115(n)+21)`
-/

namespace A221260.P15879782569815757190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (A056115 n + 21).toNat

end

end A221260.P15879782569815757190

/-! ## A221260.P15110548533688919433

`A221255(A167614(n+4)+3)`
-/

namespace A221260.P15110548533688919433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (A167614 (n + 4) + 3).toNat

end

end A221260.P15110548533688919433

/-! ## A221260.P4694377988749747514

`A221255(A000217(n+5)+6)`
-/

namespace A221260.P4694377988749747514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (A000217 (n + 5) + 6).toNat

end

end A221260.P4694377988749747514

/-! ## A221260.P9079595343225570182

`A221255(eq[7, A131818(n+1)])`
-/

namespace A221260.P9079595343225570182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221260.P9079595343225570182

/-! ## A221260.P4576094853533656799

`A221255(eq[32, A059268(n)]+1)`
-/

namespace A221260.P4576094853533656799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A221260.P4576094853533656799

/-!
# A221261: Number of 7Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221261, there is no canonical definition to state claims against.
-/

/-! ## A221261.P10381120277469935119

`A221255(eq[8, A131818(n+1)])`
-/

namespace A221261.P10381120277469935119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221261.P10381120277469935119

/-!
# A221264: Numbers having fewer distinct prime factors of form 4*k+1 than of 4*k+3.

The programs for A221264, the canonical program `A221264.P4034302150785658829` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221264 has offset 1).

The definition of A221264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4562 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221264.P4034302150785658829

`lt[A005094(n+1), 0]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A221264

/-- `lt[A005094(n+1), 0]+1` -/
def P4034302150785658829.Spec : Prop :=
  ∀ n, (P4034302150785658829.a n : ℤ) = A221264 (n + 1)

theorem P4034302150785658829.correct : P4034302150785658829.Spec := by
  intro n
  simp only [A221264, Nat.add_sub_cancel]

end A221264

/-! ## A221264.P3891320426027344265

`lt[A005094(A028310(n)), 0]`
-/

namespace A221264.P3891320426027344265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A221264.P3891320426027344265

namespace A221264

/-- `lt[A005094(A028310(n)), 0]` -/
def P3891320426027344265.Spec : Prop :=
  ∀ n, (P3891320426027344265.a n : ℤ) = A221264 (n + 1)

end A221264

/-! ## A221264.P3721135507054477882

`A020725(lt[A005094(n+1), 0])`
-/

namespace A221264.P3721135507054477882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A221264.P3721135507054477882

namespace A221264

/-- `A020725(lt[A005094(n+1), 0])` -/
def P3721135507054477882.Spec : Prop :=
  ∀ n, P3721135507054477882.a n = A221264 (n + 1)

end A221264

/-! ## A221264.P5108896975984433269

`lt[A005094(A004277(n)), 0]`
-/

namespace A221264.P5108896975984433269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A221264.P5108896975984433269

namespace A221264

/-- `lt[A005094(A004277(n)), 0]` -/
def P5108896975984433269.Spec : Prop :=
  ∀ n, (P5108896975984433269.a n : ℤ) = A221264 (n + 1)

end A221264

/-! ## A221264.P5979533602027697958

`lt[A005094(A008574(n)), 0]`
-/

namespace A221264.P5979533602027697958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A008574 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A221264.P5979533602027697958

namespace A221264

/-- `lt[A005094(A008574(n)), 0]` -/
def P5979533602027697958.Spec : Prop :=
  ∀ n, (P5979533602027697958.a n : ℤ) = A221264 (n + 1)

end A221264

/-! ## A221264.P16951450601649865861

`lt[A005094(A022144(n)), 0]`
-/

namespace A221264.P16951450601649865861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A022144 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A221264.P16951450601649865861

namespace A221264

/-- `lt[A005094(A022144(n)), 0]` -/
def P16951450601649865861.Spec : Prop :=
  ∀ n, (P16951450601649865861.a n : ℤ) = A221264 (n + 1)

end A221264

/-! ## A221264.P1397139305966439016

`lt[A005094(A233583(n+1)), 0]`
-/

namespace A221264.P1397139305966439016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A221264.P1397139305966439016

namespace A221264

/-- `lt[A005094(A233583(n+1)), 0]` -/
def P1397139305966439016.Spec : Prop :=
  ∀ n, (P1397139305966439016.a n : ℤ) = A221264 (n + 1)

end A221264

/-! ## A221264.P5256554291400810016

`record[A072438(A268380(n+1))]%A181484(n+1)`
-/

namespace A221264.P5256554291400810016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A268380 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A181484 (n + 1))

end

end A221264.P5256554291400810016

namespace A221264

/-- `record[A072438(A268380(n+1))]%A181484(n+1)` -/
def P5256554291400810016.Spec : Prop :=
  ∀ n, P5256554291400810016.a n = A221264 (n + 1)

end A221264

/-! ## A221264.P11462697034072825807

`eq[A025435(n²), A293668(n)]`
-/

namespace A221264.P11462697034072825807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221264.P11462697034072825807

namespace A221264

/-- `eq[A025435(n²), A293668(n)]` -/
def P11462697034072825807.Spec : Prop :=
  ∀ n, (P11462697034072825807.a n : ℤ) = A221264 (n + 1)

end A221264

/-! ## A221264.P12095809292408394489

`eq[A014963(A022144(n)), A025435(n²)]`
-/

namespace A221264.P12095809292408394489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A022144 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221264.P12095809292408394489

namespace A221264

/-- `eq[A014963(A022144(n)), A025435(n²)]` -/
def P12095809292408394489.Spec : Prop :=
  ∀ n, (P12095809292408394489.a n : ℤ) = A221264 (n + 1)

end A221264

/-!
# A221265: Numbers having more distinct prime factors of form 4*k+1 than of 4*k+3.

The programs for A221265, the canonical program `A221265.P6244898558375044085` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221265 has offset 1).

The definition of A221265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221265.P6244898558375044085

`lt[0, A005094(n+2)]+2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A221265

/-- `lt[0, A005094(n+2)]+2` -/
def P6244898558375044085.Spec : Prop :=
  ∀ n, (P6244898558375044085.a n : ℤ) = A221265 (n + 1)

theorem P6244898558375044085.correct : P6244898558375044085.Spec := by
  intro n
  simp only [A221265, Nat.add_sub_cancel]

end A221265

/-! ## A221265.P15908217684869499560

`lt[0, A005094(A028310(n))]`
-/

namespace A221265.P15908217684869499560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A221265.P15908217684869499560

namespace A221265

/-- `lt[0, A005094(A028310(n))]` -/
def P15908217684869499560.Spec : Prop :=
  ∀ n, (P15908217684869499560.a n : ℤ) = A221265 (n + 1)

end A221265

/-! ## A221265.P1347086762519604163

`A020725(lt[0, A005094(n+1)])`
-/

namespace A221265.P1347086762519604163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A221265.P1347086762519604163

namespace A221265

/-- `A020725(lt[0, A005094(n+1)])` -/
def P1347086762519604163.Spec : Prop :=
  ∀ n, P1347086762519604163.a n = A221265 (n + 1)

end A221265

/-! ## A221265.P10167912553920056028

`lt[0, A005094(A004277(n))]`
-/

namespace A221265.P10167912553920056028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A221265.P10167912553920056028

namespace A221265

/-- `lt[0, A005094(A004277(n))]` -/
def P10167912553920056028.Spec : Prop :=
  ∀ n, (P10167912553920056028.a n : ℤ) = A221265 (n + 1)

end A221265

/-! ## A221265.P1972121708257007745

`lt[0, A005094(A008574(n))]`
-/

namespace A221265.P1972121708257007745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A221265.P1972121708257007745

namespace A221265

/-- `lt[0, A005094(A008574(n))]` -/
def P1972121708257007745.Spec : Prop :=
  ∀ n, (P1972121708257007745.a n : ℤ) = A221265 (n + 1)

end A221265

/-! ## A221265.P6914853290632878730

`lt[0, A005094(A022144(n))]`
-/

namespace A221265.P6914853290632878730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A221265.P6914853290632878730

namespace A221265

/-- `lt[0, A005094(A022144(n))]` -/
def P6914853290632878730.Spec : Prop :=
  ∀ n, (P6914853290632878730.a n : ℤ) = A221265 (n + 1)

end A221265

/-! ## A221265.P17963329676274856989

`lt[0, A005094(A233583(n+1))]`
-/

namespace A221265.P17963329676274856989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A221265.P17963329676274856989

namespace A221265

/-- `lt[0, A005094(A233583(n+1))]` -/
def P17963329676274856989.Spec : Prop :=
  ∀ n, (P17963329676274856989.a n : ℤ) = A221265 (n + 1)

end A221265

/-!
# A221266: Number of n X 2 arrays of occupancy after each element stays put or moves to some king-move neighbor, with no occupancy greater than 2.

The programs for A221266, the canonical program `A221266.P9087613591654310939` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221266 has offset 1).

The definition of A221266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221266.P9087613591654310939

`10*a(n-1)-19*a(n-2)+8*a(n-3)` with `a(0)=3, a(1)=19, a(2)=141`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A221266

/-- `10*a(n-1)-19*a(n-2)+8*a(n-3)` -/
def P9087613591654310939.Spec : Prop :=
  ∀ n, P9087613591654310939.a n = A221266 (n + 1)

theorem P9087613591654310939.correct : P9087613591654310939.Spec := by
  intro n
  simp only [A221266, Nat.add_sub_cancel]

end A221266

/-! ## A221266.P44471371613848948

`A221269(∑[n+1]+2)`
-/

namespace A221266.P44471371613848948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221269 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221266.P44471371613848948

namespace A221266

/-- `A221269(∑[n+1]+2)` -/
def P44471371613848948.Spec : Prop :=
  ∀ n, P44471371613848948.a n = A221266 (n + 1)

end A221266

/-! ## A221266.P3800220702331094879

`record[A221269(A106247(n)+1)]`
-/

namespace A221266.P3800220702331094879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221269 (A106247 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221266.P3800220702331094879

namespace A221266

/-- `record[A221269(A106247(n)+1)]` -/
def P3800220702331094879.Spec : Prop :=
  ∀ n, P3800220702331094879.a n = A221266 (n + 1)

end A221266

/-! ## A221266.P5713025954889521881

`record[A221269(n+3)/A221345(n+1)]`
-/

namespace A221266.P5713025954889521881
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221269 (n + 3) : ℚ) / (A221345 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221266.P5713025954889521881

namespace A221266

/-- `record[A221269(n+3)/A221345(n+1)]` -/
def P5713025954889521881.Spec : Prop :=
  ∀ n, P5713025954889521881.a n = (A221266 (n + 1) : ℚ)

end A221266

/-! ## A221266.P10594334048417811410

`record[gcd(A221245(n+1), A221269(n+3))]`
-/

namespace A221266.P10594334048417811410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221245 (n + 1)) (A221269 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221266.P10594334048417811410

namespace A221266

/-- `record[gcd(A221245(n+1), A221269(n+3))]` -/
def P10594334048417811410.Spec : Prop :=
  ∀ n, (P10594334048417811410.a n : ℤ) = A221266 (n + 1)

end A221266

/-!
# A221267: Number of nX3 arrays of occupancy after each element stays put or moves to some king-move neighbor, with no occupancy greater than 2.

The programs for A221267, there is no canonical definition to state claims against.
-/

/-! ## A221267.P17791856302044354390

`A221269(∑[n+2]+4)`
-/

namespace A221267.P17791856302044354390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221269 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221267.P17791856302044354390

/-! ## A221267.P12254218842170282758

`or(1, A221269(A167614(n+1)))`
-/

namespace A221267.P12254218842170282758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A221269 (A167614 (n + 1)).toNat)

end

end A221267.P12254218842170282758

/-! ## A221267.P9998379976799830535

`record[A221269(A106247(n+1)+2)]`
-/

namespace A221267.P9998379976799830535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221269 (A106247 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221267.P9998379976799830535

/-! ## A221267.P15659088971336356057

`A221269(A167614(n+1))+A025465(n)`
-/

namespace A221267.P15659088971336356057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221269 (A167614 (n + 1)).toNat + A025465 n

end

end A221267.P15659088971336356057

/-!
# A221268: Number of nX4 arrays of occupancy after each element stays put or moves to some king-move neighbor, with no occupancy greater than 2.

The programs for A221268, there is no canonical definition to state claims against.
-/

/-! ## A221268.P71334050696896277

`A221269(∑[n+3]+7)`
-/

namespace A221268.P71334050696896277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221269 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221268.P71334050696896277

/-!
# A221269: T(n,k)=Number of nXk arrays of occupancy after each element stays put or moves to some king-move neighbor, with no occupancy greater than 2.

The programs for A221269, there is no canonical definition to state claims against.
-/

/-! ## A221269.P14971558355516291756

`A130446(A221378(n+1))`
-/

namespace A221269.P14971558355516291756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A221378 (n + 1)).toNat

end

end A221269.P14971558355516291756

/-! ## A221269.P13181200204116471714

`A221378(n+1)+A215702(A099594(n))`
-/

namespace A221269.P13181200204116471714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221378 (n + 1) + A215702 (A099594 n).toNat

end

end A221269.P13181200204116471714

/-! ## A221269.P15123136426848667309

`A221378(n+1)+A215702(A154867(n))`
-/

namespace A221269.P15123136426848667309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221378 (n + 1) + A215702 (A154867 n).toNat

end

end A221269.P15123136426848667309

/-! ## A221269.P13555311112483625499

`A221378(n+1)+A215702(A155971(n))`
-/

namespace A221269.P13555311112483625499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221378 (n + 1) + A215702 (A155971 n).toNat

end

end A221269.P13555311112483625499

/-! ## A221269.P10193484419067324972

`A130446(or(A007318(n), A221303(n+1)))`
-/

namespace A221269.P10193484419067324972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (Int.lor (A007318 n) (A221303 (n + 1))).toNat

end

end A221269.P10193484419067324972

/-!
# A221270: Number of n X 2 arrays of occupancy after each element moves to some king-move neighbor, with every occupancy equal to zero or two.

The programs for A221270, the canonical program `A221270.P732512471452507031` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221270 has offset 1).

The definition of A221270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221270.P732512471452507031

`6*a(n-1)-10*a(n-2)+4*a(n-3)-2*a(n-5)` with `a(0)=0, a(1)=6, a(2)=16, a(3)=52, a(4)=174`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A221270

/-- `6*a(n-1)-10*a(n-2)+4*a(n-3)-2*a(n-5)` -/
def P732512471452507031.Spec : Prop :=
  ∀ n, P732512471452507031.a n = A221270 (n + 1)

theorem P732512471452507031.correct : P732512471452507031.Spec := by
  intro n
  simp only [A221270, Nat.add_sub_cancel]

end A221270

/-! ## A221270.P18418008517544223798

`A221273(∑[n+1]+2)`
-/

namespace A221270.P18418008517544223798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221273 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221270.P18418008517544223798

namespace A221270

/-- `A221273(∑[n+1]+2)` -/
def P18418008517544223798.Spec : Prop :=
  ∀ n, P18418008517544223798.a n = A221270 (n + 1)

end A221270

/-! ## A221270.P14010487269069656

`A221728(∑[n+1]+2)`
-/

namespace A221270.P14010487269069656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221728 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221270.P14010487269069656

namespace A221270

/-- `A221728(∑[n+1]+2)` -/
def P14010487269069656.Spec : Prop :=
  ∀ n, P14010487269069656.a n = A221270 (n + 1)

end A221270

/-! ## A221270.P13958994288074780548

`record[A221273(A106247(n)+1)]`
-/

namespace A221270.P13958994288074780548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221273 (A106247 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221270.P13958994288074780548

namespace A221270

/-- `record[A221273(A106247(n)+1)]` -/
def P13958994288074780548.Spec : Prop :=
  ∀ n, P13958994288074780548.a n = A221270 (n + 1)

end A221270

/-! ## A221270.P7265205880711435305

`record[A221273(n+1)/A119825(n)]`
-/

namespace A221270.P7265205880711435305
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221273 (n + 1) : ℚ) / (A119825 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221270.P7265205880711435305

namespace A221270

/-- `record[A221273(n+1)/A119825(n)]` -/
def P7265205880711435305.Spec : Prop :=
  ∀ n, P7265205880711435305.a n = (A221270 (n + 1) : ℚ)

end A221270

/-!
# A221271: Number of nX3 arrays of occupancy after each element moves to some king-move neighbor, with every occupancy equal to zero or two.

The programs for A221271, there is no canonical definition to state claims against.
-/

/-! ## A221271.P9551663945663275769

`A221273(∑[n+3]+1)`
-/

namespace A221271.P9551663945663275769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221273 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221271.P9551663945663275769

/-! ## A221271.P9793107750742792796

`A221273(A167614(n+1))%A221273(A141214(n)+7)`
-/

namespace A221271.P9793107750742792796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221273 (A167614 (n + 1)).toNat) (A221273 (A141214 n + 7).toNat)

end

end A221271.P9793107750742792796

/-!
# A221272: Number of nX4 arrays of occupancy after each element moves to some king-move neighbor, with every occupancy equal to zero or two.

The programs for A221272, there is no canonical definition to state claims against.
-/

/-! ## A221272.P10567930727124801453

`A221273(∑[n+3]+7)`
-/

namespace A221272.P10567930727124801453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221273 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221272.P10567930727124801453

/-!
# A221273: T(n,k) is the number of n X k arrays of occupancy after each element moves to some king-move neighbor, with every occupancy equal to zero or two.

The programs for A221273, there is no canonical definition to state claims against.
-/

/-! ## A221273.P4065092249210569306

`A063656(A221308(n+1))^A040515(∑[n])`
-/

namespace A221273.P4065092249210569306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063656 (A221308 (n + 1)).toNat : ℚ) ^ (A040515 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A221273.P4065092249210569306

/-! ## A221273.P545035485885107893

`A063656(A221308(n+1)%A147928(n+1))`
-/

namespace A221273.P545035485885107893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 (Int.tmod (A221308 (n + 1)) (A147928 (n + 1))).toNat

end

end A221273.P545035485885107893

/-! ## A221273.P3880464051186491799

`A063656(A221308(n+1)^A284345(3*n+2))`
-/

namespace A221273.P3880464051186491799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 (SequenceMachineLib.roundAway ((A221308 (n + 1) : ℚ) ^ (A284345 (3 * n + 2) : ℤ))).toNat

end

end A221273.P3880464051186491799

/-! ## A221273.P14379711809768939391

`A063656(A221308(n+1))%A134382(2*(n+1))`
-/

namespace A221273.P14379711809768939391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063656 (A221308 (n + 1)).toNat) (A134382 (2 * (n + 1)))

end

end A221273.P14379711809768939391

/-! ## A221273.P13619361637631184023

`A001221(A030078(n+1))*A063656(A221308(n+1))`
-/

namespace A221273.P13619361637631184023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A030078 (n + 1)).toNat * A063656 (A221308 (n + 1)).toNat

end

end A221273.P13619361637631184023

/-!
# A221274: Number of n X 4 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221274, there is no canonical definition to state claims against.
-/

/-! ## A221274.P6877886544854219296

`A221275(∑[n+4]+3)`
-/

namespace A221274.P6877886544854219296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221275 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221274.P6877886544854219296

/-!
# A221275: T(n,k)=Number of nXk arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221275, there is no canonical definition to state claims against.
-/

/-! ## A221275.P13316424282363539117

`A137172(A190490(n+1))%A338870(n+1)`
-/

namespace A221275.P13316424282363539117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137172 (A190490 (n + 1)).toNat) (A338870 (n + 1))

end

end A221275.P13316424282363539117

/-!
# A221276: Number of 2 X n arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221276, the canonical program `A221276.P11604454553884671383` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221276 has offset 1).

The definition of A221276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221276.P11604454553884671383

`4*a(n-1)-12*a(n-3)+9*a(n-4)` with `a(0)=0, a(1)=4, a(2)=4, a(3)=25`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A221276

/-- `4*a(n-1)-12*a(n-3)+9*a(n-4)` -/
def P11604454553884671383.Spec : Prop :=
  ∀ n, P11604454553884671383.a n = A221276 (n + 1)

theorem P11604454553884671383.correct : P11604454553884671383.Spec := by
  intro n
  simp only [A221276, Nat.add_sub_cancel]

end A221276

/-! ## A221276.P1681671232612226741

`Δ[∑[A001998(n)]-A056449(n)]`
-/

namespace A221276.P1681671232612226741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A056449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221276.P1681671232612226741

namespace A221276

/-- `Δ[∑[A001998(n)]-A056449(n)]` -/
def P1681671232612226741.Spec : Prop :=
  ∀ n, P1681671232612226741.a n = A221276 (n + 1)

end A221276

/-! ## A221276.P12877003268451410456

`A107767(n+1)+Δ[A052993(n)]`
-/

namespace A221276.P12877003268451410456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107767 (n + 1) + (f1 (n + 1) - f1 n)

end

end A221276.P12877003268451410456

namespace A221276

/-- `A107767(n+1)+Δ[A052993(n)]` -/
def P12877003268451410456.Spec : Prop :=
  ∀ n, P12877003268451410456.a n = A221276 (n + 1)

end A221276

/-! ## A221276.P3202643534161813710

`A001998(n+1)-Δ[A056449(n)]`
-/

namespace A221276.P3202643534161813710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001998 (n + 1) - (f1 (n + 1) - f1 n)

end

end A221276.P3202643534161813710

namespace A221276

/-- `A001998(n+1)-Δ[A056449(n)]` -/
def P3202643534161813710.Spec : Prop :=
  ∀ n, P3202643534161813710.a n = A221276 (n + 1)

end A221276

/-! ## A221276.P7761036138772210927

`(A000035(n)+sqrt(A107767(n+1)))²`
-/

namespace A221276.P7761036138772210927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000035 n : ℝ) + Real.sqrt (A107767 (n + 1) : ℝ)) ^ 2

end

end A221276.P7761036138772210927

namespace A221276

/-- `(A000035(n)+sqrt(A107767(n+1)))²` -/
def P7761036138772210927.Spec : Prop :=
  ∀ n, P7761036138772210927.a n = (A221276 (n + 1) : ℝ)

end A221276

/-! ## A221276.P17796673344440181202

`A254006(n+1)+∑[A167993(n+1)]`
-/

namespace A221276.P17796673344440181202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221276.P17796673344440181202

namespace A221276

/-- `A254006(n+1)+∑[A167993(n+1)]` -/
def P17796673344440181202.Spec : Prop :=
  ∀ n, P17796673344440181202.a n = A221276 (n + 1)

end A221276

/-! ## A221276.P16505577366978049050

`A107767(n+1)+A000035(n)*A056449(n)`
-/

namespace A221276.P16505577366978049050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107767 (n + 1) + A000035 n * A056449 n

end

end A221276.P16505577366978049050

namespace A221276

/-- `A107767(n+1)+A000035(n)*A056449(n)` -/
def P16505577366978049050.Spec : Prop :=
  ∀ n, P16505577366978049050.a n = A221276 (n + 1)

end A221276

/-!
# A221277: Number of 3 X n arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221277, there is no canonical definition to state claims against.
-/

/-! ## A221277.P6426753132656738625

`A221275(A167614(n+1)*A179009(n))`
-/

namespace A221277.P6426753132656738625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221275 (A167614 (n + 1) * A179009 n).toNat

end

end A221277.P6426753132656738625

/-! ## A221277.P13577665406375258236

`A221275(A167614(n+1)*A267383(n))`
-/

namespace A221277.P13577665406375258236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221275 (A167614 (n + 1) * A267383 n).toNat

end

end A221277.P13577665406375258236

/-! ## A221277.P18181278427224025880

`A221275(A167614(n+1)^A000700(n))`
-/

namespace A221277.P18181278427224025880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221275 (SequenceMachineLib.roundAway ((A167614 (n + 1) : ℚ) ^ (A000700 n : ℤ))).toNat

end

end A221277.P18181278427224025880

/-! ## A221277.P6933715529134829643

`A221275(A167614(n+1)^A267383(n))`
-/

namespace A221277.P6933715529134829643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221275 (SequenceMachineLib.roundAway ((A167614 (n + 1) : ℚ) ^ (A267383 n : ℤ))).toNat

end

end A221277.P6933715529134829643

/-!
# A221278: Number of 4Xn arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221278, there is no canonical definition to state claims against.
-/

/-! ## A221278.P10684975909055362248

`A221275(∑[n+3]+7)`
-/

namespace A221278.P10684975909055362248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221275 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221278.P10684975909055362248

/-!
# A221279: Smallest tau-value of a special set (in the sense of Heath-Brown) with n elements.

The programs for A221279, there is no canonical definition to state claims against.
-/

/-! ## A221279.P16098867564312145236

`∏[∏{d}[n, A006992(#)]]`
-/

namespace A221279.P16098867564312145236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A006992 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A221279.P16098867564312145236

/-!
# A221280: Numbers m such that lambda(m) = lambda(m+1), where lambda(n) = A008836(n) is the Liouville function.

The programs for A221280, the canonical program `A221280.P2827351552118637345` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221280 has offset 1).

The definition of A221280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221280.P2827351552118637345

`eq[A066829(n+2), A066829(n+1)]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A221280

/-- `eq[A066829(n+2), A066829(n+1)]+1` -/
def P2827351552118637345.Spec : Prop :=
  ∀ n, (P2827351552118637345.a n : ℤ) = A221280 (n + 1)

theorem P2827351552118637345.correct : P2827351552118637345.Spec := by
  intro n
  simp only [A221280, Nat.add_sub_cancel]

end A221280

/-! ## A221280.P17737420078871970107

`eq[1, A065043(n+1)+A065043(A008706(n))]`
-/

namespace A221280.P17737420078871970107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) + A065043 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A221280.P17737420078871970107

namespace A221280

/-- `eq[1, A065043(n+1)+A065043(A008706(n))]` -/
def P17737420078871970107.Spec : Prop :=
  ∀ n, (P17737420078871970107.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P13040100582412216314

`eq[1, A066829(n+1)+A066829(A008706(n))]`
-/

namespace A221280.P13040100582412216314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) + A066829 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A221280.P13040100582412216314

namespace A221280

/-- `eq[1, A066829(n+1)+A066829(A008706(n))]` -/
def P13040100582412216314.Spec : Prop :=
  ∀ n, (P13040100582412216314.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P17050460008733436920

`eq[A007421(n+2), A007421(n+1)]+1`
-/

namespace A221280.P17050460008733436920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007421 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007421 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A221280.P17050460008733436920

namespace A221280

/-- `eq[A007421(n+2), A007421(n+1)]+1` -/
def P17050460008733436920.Spec : Prop :=
  ∀ n, (P17050460008733436920.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P13067217285315605487

`eq[A008836(n+2), A008836(n+1)]+1`
-/

namespace A221280.P13067217285315605487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A221280.P13067217285315605487

namespace A221280

/-- `eq[A008836(n+2), A008836(n+1)]+1` -/
def P13067217285315605487.Spec : Prop :=
  ∀ n, (P13067217285315605487.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P4581295747848283072

`lt[A162512(n+1)*A162512(A004277(n)), 1]`
-/

namespace A221280.P4581295747848283072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162512 (n + 1) * A162512 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A221280.P4581295747848283072

namespace A221280

/-- `lt[A162512(n+1)*A162512(A004277(n)), 1]` -/
def P4581295747848283072.Spec : Prop :=
  ∀ n, (P4581295747848283072.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P13060694280035427452

`eq[1, ∑{e}[∑[n], #]%2]`
-/

namespace A221280.P13060694280035427452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221280.P13060694280035427452

namespace A221280

/-- `eq[1, ∑{e}[∑[n], #]%2]` -/
def P13060694280035427452.Spec : Prop :=
  ∀ n, (P13060694280035427452.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P1809680866413675646

`eq[1, gcd(2, ∑{e}[∑[n], #])]`
-/

namespace A221280.P1809680866413675646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221280.P1809680866413675646

namespace A221280

/-- `eq[1, gcd(2, ∑{e}[∑[n], #])]` -/
def P1809680866413675646.Spec : Prop :=
  ∀ n, (P1809680866413675646.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P577089401087926572

`eq[1, and(1, ∑{e}[∑[n], #])]`
-/

namespace A221280.P577089401087926572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221280.P577089401087926572

namespace A221280

/-- `eq[1, and(1, ∑{e}[∑[n], #])]` -/
def P577089401087926572.Spec : Prop :=
  ∀ n, (P577089401087926572.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P16406415128931695711

`lt[1, A083594(∑{e}[∑[n], #])]`
-/

namespace A221280.P16406415128931695711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083594 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A221280.P16406415128931695711

namespace A221280

/-- `lt[1, A083594(∑{e}[∑[n], #])]` -/
def P16406415128931695711.Spec : Prop :=
  ∀ n, (P16406415128931695711.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P12768211256376307018

`lt[2, A014963(∑{e}[∑[n], #]+2)]`
-/

namespace A221280.P12768211256376307018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A221280.P12768211256376307018

namespace A221280

/-- `lt[2, A014963(∑{e}[∑[n], #]+2)]` -/
def P12768211256376307018.Spec : Prop :=
  ∀ n, (P12768211256376307018.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P5221459507295808191

`lt[1, A319307(∑{e}[n²+n, #])]`
-/

namespace A221280.P5221459507295808191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319307 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A221280.P5221459507295808191

namespace A221280

/-- `lt[1, A319307(∑{e}[n²+n, #])]` -/
def P5221459507295808191.Spec : Prop :=
  ∀ n, (P5221459507295808191.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P14398094916868462361

`lt[4, A319308(A001222(∑[n+1])+1)]+1`
-/

namespace A221280.P14398094916868462361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319308 (A001222 (∑ j ∈ Finset.range (n + 1), f3 j) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A221280.P14398094916868462361

namespace A221280

/-- `lt[4, A319308(A001222(∑[n+1])+1)]+1` -/
def P14398094916868462361.Spec : Prop :=
  ∀ n, (P14398094916868462361.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P2772191341466484911

`lt[1, A055396(A001222((n+1)*(n+2))+1)]+1`
-/

namespace A221280.P2772191341466484911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A001222 ((n + 1) * (n + 2)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A221280.P2772191341466484911

namespace A221280

/-- `lt[1, A055396(A001222((n+1)*(n+2))+1)]+1` -/
def P2772191341466484911.Spec : Prop :=
  ∀ n, (P2772191341466484911.a n : ℤ) = A221280 (n + 1)

end A221280

/-!
# A221281: Numbers n such that lambda(n) = lambda(n+1) = lambda(n+2), where lambda(n) = A008836(n) is the Liouville function.

The programs for A221281, the canonical program `A221281.P3838035016409436131` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221281 has offset 1).

The definition of A221281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5059 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221281.P2859792958376360068

`∩[A221280(n+1)-1, A221280(n+1)]`
-/

namespace A221281.P2859792958376360068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221280 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221281.P2859792958376360068

namespace A221281

/-- `∩[A221280(n+1)-1, A221280(n+1)]` -/
def P2859792958376360068.Spec : Prop :=
  ∀ n, (P2859792958376360068.a n : ℤ) = A221281 (n + 1)

end A221281

/-! ## A221281.P3838035016409436131

`A221280(eq[1, A221280(n+2)-A221280(n+1)]+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A221281

/-- `A221280(eq[1, A221280(n+2)-A221280(n+1)]+1)` -/
def P3838035016409436131.Spec : Prop :=
  ∀ n, P3838035016409436131.a n = A221281 (n + 1)

theorem P3838035016409436131.correct : P3838035016409436131.Spec := by
  intro n
  simp only [A221281, Nat.add_sub_cancel]

end A221281

/-! ## A221281.P7485407723383007115

`eq[0, Δ[4*Δ[A001222(n+1)%2]]]+1`
-/

namespace A221281.P7485407723383007115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (n + 1)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f4 (n + 1) - f4 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A221281.P7485407723383007115

namespace A221281

/-- `eq[0, Δ[4*Δ[A001222(n+1)%2]]]+1` -/
def P7485407723383007115.Spec : Prop :=
  ∀ n, (P7485407723383007115.a n : ℤ) = A221281 (n + 1)

end A221281

/-! ## A221281.P13738630863743851870

`∩[A221280(n+1), A259361(A221280(n+1)²)]`
-/

namespace A221281.P13738630863743851870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A221280 (n + 1) ^ 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221281.P13738630863743851870

namespace A221281

/-- `∩[A221280(n+1), A259361(A221280(n+1)²)]` -/
def P13738630863743851870.Spec : Prop :=
  ∀ n, (P13738630863743851870.a n : ℤ) = A221281 (n + 1)

end A221281

/-!
# A221282: Numbers n such that lambda(n) = lambda(n+1) = lambda(n+2) = lambda(n+3), where lambda(n) = A008836(n) is the Liouville function.

The programs for A221282, the canonical program `A221282.P15751226315535615797` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221282 has offset 1).

The definition of A221282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5083 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221282.P9172663215990894231

`∩[A221281(n+1)-1, A221281(n+1)]`
-/

namespace A221282.P9172663215990894231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221281 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221282.P9172663215990894231

namespace A221282

/-- `∩[A221281(n+1)-1, A221281(n+1)]` -/
def P9172663215990894231.Spec : Prop :=
  ∀ n, (P9172663215990894231.a n : ℤ) = A221282 (n + 1)

end A221282

/-! ## A221282.P15751226315535615797

`A221281(eq[1, A221281(n+2)-A221281(n+1)]+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A221282

/-- `A221281(eq[1, A221281(n+2)-A221281(n+1)]+1)` -/
def P15751226315535615797.Spec : Prop :=
  ∀ n, P15751226315535615797.a n = A221282 (n + 1)

theorem P15751226315535615797.correct : P15751226315535615797.Spec := by
  intro n
  simp only [A221282, Nat.add_sub_cancel]

end A221282

/-! ## A221282.P6533613021402189110

`A221281(eq[1, A221281(n+2)%A221281(n+1)]+1)`
-/

namespace A221282.P6533613021402189110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221281 (n + 2)) (A221281 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A221282.P6533613021402189110

namespace A221282

/-- `A221281(eq[1, A221281(n+2)%A221281(n+1)]+1)` -/
def P6533613021402189110.Spec : Prop :=
  ∀ n, P6533613021402189110.a n = A221282 (n + 1)

end A221282

/-!
# A221283: Number of totients up to 10^n.

The programs for A221283, the canonical program `A221283.P16155625490231982154` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221283 has offset 0).

The definition of A221283 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A221283.P16155625490231982154

`A264810(10^n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A221283

/-- `A264810(10^n)` -/
def P16155625490231982154.Spec : Prop :=
  ∀ n, P16155625490231982154.a n = A221283 n

theorem P16155625490231982154.correct : P16155625490231982154.Spec := by
  intro n
  simp only [A221283]

end A221283

/-!
# A221284: Numbers n such that phi(m) = n^2 for some m.

The programs for A221284, there is no canonical definition to state claims against.
-/

/-! ## A221284.P14621309528542678920

`sqrt(A221285(n+1))`
-/

namespace A221284.P14621309528542678920
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A221285 (n + 1) : ℝ)

end

end A221284.P14621309528542678920

/-! ## A221284.P12108819225317136009

`A000027(root(A221285(n+1), 2))`
-/

namespace A221284.P12108819225317136009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A221285 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A221284.P12108819225317136009

/-! ## A221284.P9094346084184154847

`A221285(n+1)^(A057427(n)/2)`
-/

namespace A221284.P9094346084184154847
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A221285 (n + 1) : ℝ) ^ ((A057427 n : ℚ) / 2 : ℝ)

end

end A221284.P9094346084184154847

/-! ## A221284.P7053372679979543141

`root(A221285(n+1), 2)%A052291(n+1)`
-/

namespace A221284.P7053372679979543141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A221285 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A052291 (n + 1))

end

end A221284.P7053372679979543141

/-! ## A221284.P12237042521311286868

`root(A221285(n+1), 2%A247129(n+1))`
-/

namespace A221284.P12237042521311286868
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A221285 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A247129 (n + 1)) : ℝ))

end

end A221284.P12237042521311286868

/-! ## A221284.P7377187862212807621

`root(A221285(n+1), A028326(∑[n]))`
-/

namespace A221284.P7377187862212807621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A221285 (n + 1) : ℝ) ^ (1 / (A028326 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ))

end

end A221284.P7377187862212807621

/-! ## A221284.P12132064306377067427

`A262689(lcm(2, A221285(n+1)))`
-/

namespace A221284.P12132064306377067427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.lcm 2 (A221285 (n + 1)))

end

end A221284.P12132064306377067427

/-!
# A221285: Square values taken by totient function phi(m) = A000010(m).

The programs for A221285, there is no canonical definition to state claims against.
-/

/-! ## A221285.P10904733028467556905

`A221284(n+1)²`
-/

namespace A221285.P10904733028467556905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221284 (n + 1) ^ 2

end

end A221285.P10904733028467556905

/-! ## A221285.P12341594866961900477

`A221284(A000027(n+1))*A221284(n+1)`
-/

namespace A221285.P12341594866961900477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221284 (A000027 (n + 1)).toNat * A221284 (n + 1)

end

end A221285.P12341594866961900477

/-! ## A221285.P13896890060070133888

`A221284(n+1)^A001222(A001358(n+1))`
-/

namespace A221285.P13896890060070133888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221284 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A221285.P13896890060070133888

/-! ## A221285.P5937433272500138890

`A221284(n+1)^A270026(A004754(n+1))`
-/

namespace A221285.P5937433272500138890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221284 (n + 1) : ℚ) ^ (A270026 (A004754 (n + 1)).toNat : ℤ)

end

end A221285.P5937433272500138890

/-! ## A221285.P4367659715456133560

`A221284(n+1)^A270026(A079033(n+1))`
-/

namespace A221285.P4367659715456133560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221284 (n + 1) : ℚ) ^ (A270026 (A079033 (n + 1)).toNat : ℤ)

end

end A221285.P4367659715456133560

/-! ## A221285.P11790526197670054423

`A221284(n+1)^A326196(A027748(n+1))`
-/

namespace A221285.P11790526197670054423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221284 (n + 1) : ℚ) ^ (A326196 (A027748 (n + 1)).toNat : ℤ)

end

end A221285.P11790526197670054423

/-! ## A221285.P6416283182983132196

`A221284(n+1)^A326196(A244080(n+1))`
-/

namespace A221285.P6416283182983132196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221284 (n + 1) : ℚ) ^ (A326196 (A244080 (n + 1)).toNat : ℤ)

end

end A221285.P6416283182983132196

/-! ## A221285.P14778830413361649552

`A221284(n+1)^(A035263(A221284(n+2)+1)+1)`
-/

namespace A221285.P14778830413361649552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221284 (n + 1) : ℚ) ^ (A035263 (A221284 (n + 2) + 1).toNat + 1 : ℤ)

end

end A221285.P14778830413361649552

/-! ## A221285.P3495740767832691395

`A221284(A008619(2*n+1))*A221284(n+1)`
-/

namespace A221285.P3495740767832691395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221284 (A008619 (2 * n + 1)).toNat * A221284 (n + 1)

end

end A221285.P3495740767832691395

/-! ## A221285.P18243199079672419087

`A000290(A221284(n+2)-Δ[A221284(n+1)])`
-/

namespace A221285.P18243199079672419087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A221284 (n + 2) - (f1 (n + 1) - f1 n)).toNat

end

end A221285.P18243199079672419087

/-! ## A221285.P11229095481618852696

`A000290(2*A221284(n+1)-A221284(n+1))`
-/

namespace A221285.P11229095481618852696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A221284 (n + 1) - A221284 (n + 1)).toNat

end

end A221285.P11229095481618852696

/-! ## A221285.P8911596428418749146

`A067998(A221284(n+1)+1)+1`
-/

namespace A221285.P8911596428418749146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 (A221284 (n + 1) + 1).toNat + 1

end

end A221285.P8911596428418749146

/-! ## A221285.P3377449879049816375

`A221284(n+1)%A240927(n+1)*A221284(n+1)`
-/

namespace A221285.P3377449879049816375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221284 (n + 1)) (A240927 (n + 1)) * A221284 (n + 1)

end

end A221285.P3377449879049816375

/-!
# A221287: Equals two maps: number of n X n binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..3 n X n array.

The programs for A221287, there is no canonical definition to state claims against.
-/

/-! ## A221287.P9473747386847124338

`A221290(∑[4*n]+1)`
-/

namespace A221287.P9473747386847124338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221287.P9473747386847124338

/-!
# A221288: Equals two maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..3 nX5 array.

The programs for A221288, there is no canonical definition to state claims against.
-/

/-! ## A221288.P5483776595592457191

`A221290(∑[n+5]+6)`
-/

namespace A221288.P5483776595592457191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A221288.P5483776595592457191

/-!
# A221289: Equals two maps: number of nX6 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..3 nX6 array.

The programs for A221289, there is no canonical definition to state claims against.
-/

/-! ## A221289.P15721026985686513791

`A221290(A052905(n+3))`
-/

namespace A221289.P15721026985686513791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (A052905 (n + 3)).toNat

end

end A221289.P15721026985686513791

/-! ## A221289.P12180022543303331389

`A221290(A056119(n)+16)`
-/

namespace A221289.P12180022543303331389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (A056119 n + 16).toNat

end

end A221289.P12180022543303331389

/-!
# A221290: T(n,k) = Equals two maps: number of n X k binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..3 n X k array.

The programs for A221290, there is no canonical definition to state claims against.
-/

/-! ## A221290.P4951407048892965467

`A028310(A220935(n+1))`
-/

namespace A221290.P4951407048892965467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A220935 (n + 1)).toNat

end

end A221290.P4951407048892965467

/-! ## A221290.P17325752028515043883

`A220935(A281873(n+1))`
-/

namespace A221290.P17325752028515043883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220935 (A281873 (n + 1)).toNat

end

end A221290.P17325752028515043883

/-! ## A221290.P13644900948755661393

`A023443(A220935(n+1)+1)`
-/

namespace A221290.P13644900948755661393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A220935 (n + 1) + 1).toNat

end

end A221290.P13644900948755661393

/-! ## A221290.P3472981081191990157

`filter[A220935(n+1), A188470(#)]`
-/

namespace A221290.P3472981081191990157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188470 (f1 j).toNat = 1) n)

end

end A221290.P3472981081191990157

/-! ## A221290.P11793084180799255195

`filter[A220935(n+1), A265186(#)]`
-/

namespace A221290.P11793084180799255195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A265186 (f1 j).toNat = 1) n)

end

end A221290.P11793084180799255195

/-!
# A221291: Equals two maps: number of 3Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..3 3Xn array.

The programs for A221291, there is no canonical definition to state claims against.
-/

/-! ## A221291.P17452511707594949858

`A221290(∑[n+2]+4)`
-/

namespace A221291.P17452511707594949858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221291.P17452511707594949858

/-! ## A221291.P18402994902188278447

`record[A221290(A167614(∏{digits}[n, #+1]))]`
-/

namespace A221291.P18402994902188278447
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (A167614 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x + 1).prod).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221291.P18402994902188278447

/-! ## A221291.P5157256466283803593

`lcm((-1)^n, A221290(A167614(n+1)))`
-/

namespace A221291.P5157256466283803593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A221290 (A167614 (n + 1)).toNat)

end

end A221291.P5157256466283803593

/-! ## A221291.P695101985649563680

`A221290(A167614(n+1))+A025437(n)`
-/

namespace A221291.P695101985649563680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (A167614 (n + 1)).toNat + A025437 n

end

end A221291.P695101985649563680

/-! ## A221291.P8220572486952604801

`A221290(A167614(n+1))+A025439(n)`
-/

namespace A221291.P8220572486952604801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (A167614 (n + 1)).toNat + A025439 n

end

end A221291.P8220572486952604801

/-!
# A221292: Equals two maps: number of 4Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..3 4Xn array.

The programs for A221292, there is no canonical definition to state claims against.
-/

/-! ## A221292.P3997119212657090989

`A221290(A141214(n)+7)`
-/

namespace A221292.P3997119212657090989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (A141214 n + 7).toNat

end

end A221292.P3997119212657090989

/-! ## A221292.P15017272029503898035

`A221290(A052905(n)+9)`
-/

namespace A221292.P15017272029503898035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (A052905 n + 9).toNat

end

end A221292.P15017272029503898035

/-! ## A221292.P754074325359297281

`A221290(A055999(n)+10)`
-/

namespace A221292.P754074325359297281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (A055999 n + 10).toNat

end

end A221292.P754074325359297281

/-! ## A221292.P14340302919907668681

`A221290(eq[5, A066657(n)])`
-/

namespace A221292.P14340302919907668681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221292.P14340302919907668681

/-! ## A221292.P577000470384968295

`A221290(A167614(n+2)+1)`
-/

namespace A221292.P577000470384968295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (A167614 (n + 2) + 1).toNat

end

end A221292.P577000470384968295

/-!
# A221293: Equals two maps: number of 5Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..3 5Xn array.

The programs for A221293, there is no canonical definition to state claims against.
-/

/-! ## A221293.P16814754296674936553

`A221290(A167499(n+3))`
-/

namespace A221293.P16814754296674936553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (A167499 (n + 3)).toNat

end

end A221293.P16814754296674936553

/-! ## A221293.P12918188612787312243

`A221290(A155212(n)+13)`
-/

namespace A221293.P12918188612787312243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (A155212 n + 13).toNat

end

end A221293.P12918188612787312243

/-! ## A221293.P2456446387322760012

`A221290(A056000(n)+15)`
-/

namespace A221293.P2456446387322760012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (A056000 n + 15).toNat

end

end A221293.P2456446387322760012

/-!
# A221294: Equals two maps: number of 6Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..3 6Xn array.

The programs for A221294, there is no canonical definition to state claims against.
-/

/-! ## A221294.P5138395290294751578

`A221290(A056115(n)+21)`
-/

namespace A221294.P5138395290294751578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (A056115 n + 21).toNat

end

end A221294.P5138395290294751578

/-!
# A221295: Equals two maps: number of 7Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..3 7Xn array.

The programs for A221295, there is no canonical definition to state claims against.
-/

/-! ## A221295.P4615698438431462525

`A221290(A167487(n+5))`
-/

namespace A221295.P4615698438431462525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (A167487 (n + 5)).toNat

end

end A221295.P4615698438431462525

/-!
# A221296: Number of n X n arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, with no occupancy greater than 2.

The programs for A221296, there is no canonical definition to state claims against.
-/

/-! ## A221296.P5219455642588791775

`A221303(∑[4*n]+1)`
-/

namespace A221296.P5219455642588791775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221296.P5219455642588791775

/-!
# A221297: Number of n X 2 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, with no occupancy greater than 2.

The programs for A221297, there is no canonical definition to state claims against.
-/

/-! ## A221297.P2246064342819918846

`A221303(∑[n+1]+2)`
-/

namespace A221297.P2246064342819918846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221297.P2246064342819918846

/-! ## A221297.P5742898313829055741

`record[A221303(A106247(n)+1)]`
-/

namespace A221297.P5742898313829055741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (A106247 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221297.P5742898313829055741

/-! ## A221297.P10595851321820495183

`record[root(A221303(n+2), A193722(n))]`
-/

namespace A221297.P10595851321820495183
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A221303 (n + 2) : ℝ) ^ (1 / (A193722 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221297.P10595851321820495183

/-! ## A221297.P13096645753026344078

`record[root(A221303(n+2), A261867(n+1))]`
-/

namespace A221297.P13096645753026344078
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A221303 (n + 2) : ℝ) ^ (1 / (A261867 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221297.P13096645753026344078

/-! ## A221297.P310860882781853565

`record[A221303(A198455(n+1))]`
-/

namespace A221297.P310860882781853565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221297.P310860882781853565

/-!
# A221298: Number of nX3 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, with no occupancy greater than 2.

The programs for A221298, there is no canonical definition to state claims against.
-/

/-! ## A221298.P1234448749716223615

`A221303(∑[n+2]+4)`
-/

namespace A221298.P1234448749716223615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221298.P1234448749716223615

/-! ## A221298.P11138712248654100894

`A221303(A167614(n+1))+A185238(n)`
-/

namespace A221298.P11138712248654100894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (A167614 (n + 1)).toNat + A185238 n

end

end A221298.P11138712248654100894

/-! ## A221298.P4445564104207308820

`A152830(n)*A221303(A167614(n+1))`
-/

namespace A221298.P4445564104207308820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152830 n * A221303 (A167614 (n + 1)).toNat

end

end A221298.P4445564104207308820

/-! ## A221298.P15610309562609086981

`A321379(n+1)+A221303(A167614(n+1))`
-/

namespace A221298.P15610309562609086981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321379 (n + 1) + A221303 (A167614 (n + 1)).toNat

end

end A221298.P15610309562609086981

/-! ## A221298.P5032166067134261058

`A221303(A167614(n+1))+A025465(2*n)`
-/

namespace A221298.P5032166067134261058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (A167614 (n + 1)).toNat + A025465 (2 * n)

end

end A221298.P5032166067134261058

/-!
# A221299: Number of nX4 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, with no occupancy greater than 2.

The programs for A221299, there is no canonical definition to state claims against.
-/

/-! ## A221299.P8050745046014715762

`A221303(A374004(n+1))`
-/

namespace A221299.P8050745046014715762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (A374004 (n + 1)).toNat

end

end A221299.P8050745046014715762

/-! ## A221299.P1128599242566438499

`A221303(A055999(n)+10)`
-/

namespace A221299.P1128599242566438499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (A055999 n + 10).toNat

end

end A221299.P1128599242566438499

/-! ## A221299.P16272047636880720823

`A221303(A167614(n+2)+1)`
-/

namespace A221299.P16272047636880720823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (A167614 (n + 2) + 1).toNat

end

end A221299.P16272047636880720823

/-! ## A221299.P6969697339573782838

`A221303(A112355(n+1)+4)`
-/

namespace A221299.P6969697339573782838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (A112355 (n + 1) + 4).toNat

end

end A221299.P6969697339573782838

/-! ## A221299.P55557454809811575

`A221303(eq[5, A131818(n+1)])`
-/

namespace A221299.P55557454809811575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221299.P55557454809811575

