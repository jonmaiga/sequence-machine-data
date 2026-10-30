import SequenceMachineLib.Basic
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
# A362800: E.g.f. satisfies A(x) = exp( (exp(x) - 1) * A(x)^(x^2) ).

The programs for A362800, there is no canonical definition to state claims against.
-/

/-! ## A362800.P6775767625289116962

`A326036(8*floor((n/2)²))`
-/

namespace A362800.P6775767625289116962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326036 (8 * ⌊((n : ℚ) / 2) ^ 2⌋).toNat

end

end A362800.P6775767625289116962

/-! ## A362800.P10941060828952441883

`A052732(n)+A001055(A324853(n))`
-/

namespace A362800.P10941060828952441883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052732 n + A001055 (A324853 n).toNat

end

end A362800.P10941060828952441883

/-!
# A362801: Numbers whose set of divisors can be partitioned into disjoint parts, all of length > 1 and having integer harmonic mean.

The programs for A362801, there is no canonical definition to state claims against.
-/

/-! ## A362801.P1203623389448199421

`lt[A359606(n+1), A362802(n+1)]+1`
-/

namespace A362801.P1203623389448199421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362802 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A362801.P1203623389448199421

/-! ## A362801.P555416389647209163

`lt[A362802(n+1), A362802(A233583(n+1))]`
-/

namespace A362801.P555416389647209163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362802 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362801.P555416389647209163

/-!
# A362802: a(n) is the number of ways in which the set of divisors of n can be partitioned into disjoint parts, all of length > 1 and with integer harmonic mean.

The programs for A362802, there is no canonical definition to state claims against.
-/

/-! ## A362802.P1216141009278819904

`∑[A368379(n+2)]%A327156(n+1)`
-/

namespace A362802.P1216141009278819904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368379 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A327156 (n + 1))

end

end A362802.P1216141009278819904

/-! ## A362802.P13544518742520722178

`A257991(A038201(n)^A080225(n+1))`
-/

namespace A362802.P13544518742520722178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (SequenceMachineLib.roundAway ((A038201 n : ℚ) ^ (A080225 (n + 1) : ℤ))).toNat

end

end A362802.P13544518742520722178

/-! ## A362802.P5662274020904264383

`A056175(A334491(n+1))%A288996(n+2)`
-/

namespace A362802.P5662274020904264383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056175 (A334491 (n + 1)).toNat) (A288996 (n + 2))

end

end A362802.P5662274020904264383

/-! ## A362802.P5735478891526067772

`A331283(A175060(2*n+5))%A325470(n+1)`
-/

namespace A362802.P5735478891526067772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331283 (A175060 (2 * n + 5)).toNat) (A325470 (n + 1))

end

end A362802.P5735478891526067772

/-! ## A362802.P3047097333601783823

`A000290(A237821(n+1))%A378604(n+1)`
-/

namespace A362802.P3047097333601783823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A237821 (n + 1)).toNat) (A378604 (n + 1))

end

end A362802.P3047097333601783823

/-!
# A362804: Numbers k such that the set of divisors {d | k, BitOr(k, d) = k} has an integer harmonic mean.

The programs for A362804, there is no canonical definition to state claims against.
-/

/-! ## A362804.P1897478036170270575

`A324850(n+1)+A024153(A316220(n+1))`
-/

namespace A362804.P1897478036170270575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324850 (n + 1) + A024153 (A316220 (n + 1)).toNat

end

end A362804.P1897478036170270575

/-! ## A362804.P3982582822364485773

`A324850(n+1)+A066568(A309864(n))`
-/

namespace A362804.P3982582822364485773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324850 (n + 1) + A066568 (A309864 n).toNat

end

end A362804.P3982582822364485773

/-!
# A362807: Number of (non-null) connected induced subgraphs in the n-flower graph.

The programs for A362807, there is no canonical definition to state claims against.
-/

/-! ## A362807.P5084114231608001932

`16^(n+1)-A362793(n+1)-1`
-/

namespace A362807.P5084114231608001932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 ^ (n + 1) : ℤ) - A362793 (n + 1) - 1

end

end A362807.P5084114231608001932

/-!
# A362810: Define G(n, k) to be the n-th derivative of Gamma(x) at k. a(n)=floor(min(G(2n, x))), where min(f) is the local minimum of f in [0,oo).

The programs for A362810, there is no canonical definition to state claims against.
-/

/-! ## A362810.P9137592032441423777

`A049472(A340249(n+1)+A177340(n))`
-/

namespace A362810.P9137592032441423777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A340249 (n + 1) + A177340 n).toNat

end

end A362810.P9137592032441423777

/-! ## A362810.P1771496419349971337

`A057359(A005651(n)-A241638(n+1))`
-/

namespace A362810.P1771496419349971337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 (A005651 n - A241638 (n + 1)).toNat

end

end A362810.P1771496419349971337

/-! ## A362810.P7286434970508767640

`A140106(A274100(n)-A140106(n+1))`
-/

namespace A362810.P7286434970508767640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A274100 n - A140106 (n + 1)).toNat

end

end A362810.P7286434970508767640

/-!
# A362811: Sphenic numbers (product of 3 distinct primes) sandwiched between two semiprimes (product of 2 primes).

The programs for A362811, the canonical program `A362811.P11607570532390556629` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362811 has offset 1).

The definition of A362811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1026 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362811.P18311313399296995734

`∩[A075819(n+1), A124936(n+1)]`
-/

namespace A362811.P18311313399296995734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362811.P18311313399296995734

namespace A362811

/-- `∩[A075819(n+1), A124936(n+1)]` -/
def P18311313399296995734.Spec : Prop :=
  ∀ n, (P18311313399296995734.a n : ℤ) = A362811 (n + 1)

end A362811

/-! ## A362811.P11607570532390556629

`filter[A124936(n+1), A354926(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A362811

/-- `filter[A124936(n+1), A354926(#)]` -/
def P11607570532390556629.Spec : Prop :=
  ∀ n, P11607570532390556629.a n = A362811 (n + 1)

theorem P11607570532390556629.correct : P11607570532390556629.Spec := by
  intro n
  simp only [A362811, Nat.add_sub_cancel]

end A362811

/-! ## A362811.P9934418482710363590

`∩[A124936(n+1), A160350(n+1)]`
-/

namespace A362811.P9934418482710363590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362811.P9934418482710363590

namespace A362811

/-- `∩[A124936(n+1), A160350(n+1)]` -/
def P9934418482710363590.Spec : Prop :=
  ∀ n, (P9934418482710363590.a n : ℤ) = A362811 (n + 1)

end A362811

/-! ## A362811.P7348081069262831425

`∩[A007304(n+1), A124936(n+1)]`
-/

namespace A362811.P7348081069262831425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362811.P7348081069262831425

namespace A362811

/-- `∩[A007304(n+1), A124936(n+1)]` -/
def P7348081069262831425.Spec : Prop :=
  ∀ n, (P7348081069262831425.a n : ℤ) = A362811 (n + 1)

end A362811

/-! ## A362811.P7501961321848740713

`∩[A068405(n+1), A109067(n+1)]`
-/

namespace A362811.P7501961321848740713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362811.P7501961321848740713

namespace A362811

/-- `∩[A068405(n+1), A109067(n+1)]` -/
def P7501961321848740713.Spec : Prop :=
  ∀ n, (P7501961321848740713.a n : ℤ) = A362811 (n + 1)

end A362811

/-!
# A362812: Number of minimal total dominating sets in the n-double cone graph.

The programs for A362812, the canonical program `A362812.P18262087313192357707` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362812 has offset 3).

The definition of A362812 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362812.P18262087313192357707

`2*(n+3)+A300738(n+3)²`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A362812

/-- `2*(n+3)+A300738(n+3)²` -/
def P18262087313192357707.Spec : Prop :=
  ∀ n, P18262087313192357707.a n = A362812 (n + 3)

theorem P18262087313192357707.correct : P18262087313192357707.Spec := by
  intro n
  simp only [A362812, Nat.add_sub_cancel]

end A362812

/-!
# A362815: Start with 2. Then, numbers are added to the sequence if they do not form any arithmetic progression p with numbers in the sequence such that length(p) > min(p).

The programs for A362815, there is no canonical definition to state claims against.
-/

/-! ## A362815.P5354330833911246850

`lt[A183526(3*n+1)%A358977(n+1), n]`
-/

namespace A362815.P5354330833911246850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183526 (3 * n + 1)) (A358977 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A362815.P5354330833911246850

/-! ## A362815.P11720801176259839517

`∑[gcd(A088409(n+4), A229935(2*n+3))]`
-/

namespace A362815.P11720801176259839517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088409 (n + 4)) (A229935 (2 * n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362815.P11720801176259839517

/-! ## A362815.P5002142408280127286

`lt[A007920(n), A068118(A186412(3*n+1))]`
-/

namespace A362815.P5002142408280127286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068118 (A186412 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362815.P5002142408280127286

/-! ## A362815.P14696748102326301610

`eq[A000038(n), A008683(A072052(2*n+5))]`
-/

namespace A362815.P14696748102326301610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A072052 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A362815.P14696748102326301610

/-! ## A362815.P5425350326012165073

`eq[A008683(A072052(2*n+5)), A151933(n)]`
-/

namespace A362815.P5425350326012165073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A072052 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A362815.P5425350326012165073

/-!
# A362816: Lexicographically earliest sequence such that nowhere is a term a(n) contained in an arithmetic progression of length greater than a(n).

The programs for A362816, there is no canonical definition to state claims against.
-/

/-! ## A362816.P102945981262105745

`A117592(n)+A003557(A143410(n))`
-/

namespace A362816.P102945981262105745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n + A003557 (A143410 n).toNat

end

end A362816.P102945981262105745

/-! ## A362816.P12732633067025147332

`A051301(gcd(A144182(3*n+4), A229037(n+1)))`
-/

namespace A362816.P12732633067025147332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051301 (Int.gcd (A144182 (3 * n + 4)) (A229037 (n + 1)))

end

end A362816.P12732633067025147332

/-! ## A362816.P2469075080352474381

`A117592(n)+A050873(A157209(n+3))`
-/

namespace A362816.P2469075080352474381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n + A050873 (A157209 (n + 3)).toNat

end

end A362816.P2469075080352474381

/-! ## A362816.P4270606536922861978

`(A117592(n)+1)%A262100(n+1)`
-/

namespace A362816.P4270606536922861978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117592 n + 1) (A262100 (n + 1))

end

end A362816.P4270606536922861978

/-! ## A362816.P1631656103270246273

`A117592(n)%A320459(2*(n+1))+1`
-/

namespace A362816.P1631656103270246273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117592 n) (A320459 (2 * (n + 1))) + 1

end

end A362816.P1631656103270246273

/-!
# A362818: Total number of edges of all polygons (or parts) of the symmetric representation of sigma(n).

The programs for A362818, there is no canonical definition to state claims against.
-/

/-! ## A362818.P6225226083110231055

`A062011(3^A322809(n+1))`
-/

namespace A362818.P6225226083110231055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A322809 (n + 1) : ℤ))).toNat

end

end A362818.P6225226083110231055

/-! ## A362818.P4991119201794435574

`A303809(A285811(n+1))*A323161(n+2)`
-/

namespace A362818.P4991119201794435574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303809 (A285811 (n + 1)).toNat * A323161 (n + 2)

end

end A362818.P4991119201794435574

/-!
# A362819: Number of ordered pairs of involutions on [n] that commute.

The programs for A362819, the canonical program `A362819.P13937643064219918537` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362819 has offset 0).

The definition of A362819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362819.P13937643064219918537

`∑{#}[floor(n/2), A000085(n-2*#)*A000898(#)*C(n, 2*#)*(2*#)!/(#!*2^#)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A362819

/-- `∑{#}[floor(n/2), A000085(n-2*#)*A000898(#)*C(n, 2*#)*(2*#)!/(#!*2^#)]` -/
def P13937643064219918537.Spec : Prop :=
  ∀ n, P13937643064219918537.a n = (A362819 n : ℚ)

end A362819

/-! ## A362819.P6749152239370675539

`A362824(∑[n+3])`
-/

namespace A362819.P6749152239370675539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362824 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362819.P6749152239370675539

namespace A362819

/-- `A362824(∑[n+3])` -/
def P6749152239370675539.Spec : Prop :=
  ∀ n, P6749152239370675539.a n = A362819 n

end A362819

/-!
# A362820: Number of ordered pairs of derangements on [n] that commute.

The programs for A362820, there is no canonical definition to state claims against.
-/

/-! ## A362820.P7599072226819005905

`or(n, A146852(3*n+5))-n`
-/

namespace A362820.P7599072226819005905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A146852 (3 * n + 5)) - (n : ℤ)

end

end A362820.P7599072226819005905

/-! ## A362820.P603847945352826956

`A175076(a(n-1)+2)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A362820.P603847945352826956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 4] fun n a =>
  A175076 (a (n - 1) + 2).toNat

end

end A362820.P603847945352826956

/-!
# A362821: Number of labeled right involutory Płonka magmas with n elements.

The programs for A362821, there is no canonical definition to state claims against.
-/

/-! ## A362821.P7447254164666899678

`A013936(∏[(n-1)*a(n-1)/floor(n/2)])` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A362821.P7447254164666899678
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) * (f1 (n - 1) / (⌊(n : ℚ) / 2⌋ : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013936 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A362821.P7447254164666899678

/-! ## A362821.P2396418656018509673

`A004526(A006057(n))+A000009(n)`
-/

namespace A362821.P2396418656018509673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A006057 n).toNat + A000009 n

end

end A362821.P2396418656018509673

/-!
# A362822: Number of nonisomorphic magmas with n elements satisfying the identities (xy)y = x and (xy)z = (xz)y.

The programs for A362822, there is no canonical definition to state claims against.
-/

/-! ## A362822.P5864297770013902926

`A136175(A066411(n))`
-/

namespace A362822.P5864297770013902926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136175 (A066411 n).toNat

end

end A362822.P5864297770013902926

/-! ## A362822.P7923079338453343691

`A325712(A014437(n)+1)`
-/

namespace A362822.P7923079338453343691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325712 (A014437 n + 1).toNat

end

end A362822.P7923079338453343691

/-!
# A362823: Number of labeled magmas with n elements satisfying the identities (xy)y = x and (xy)z = (xz)y.

The programs for A362823, there is no canonical definition to state claims against.
-/

/-! ## A362823.P12022894525207825350

`A362824(∑[4*n])`
-/

namespace A362823.P12022894525207825350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362824 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362823.P12022894525207825350

/-! ## A362823.P15281187668594771436

`or(A000007(n), A362824(A046092(n)))`
-/

namespace A362823.P15281187668594771436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A362824 (A046092 n).toNat)

end

end A362823.P15281187668594771436

/-! ## A362823.P17135726021168660451

`A362824(A046092(n))+A070205(n+1)`
-/

namespace A362823.P17135726021168660451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362824 (A046092 n).toNat + A070205 (n + 1)

end

end A362823.P17135726021168660451

/-! ## A362823.P1299798397948792664

`A362824(A046092(n))+A000007(2*(n+2))`
-/

namespace A362823.P1299798397948792664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362824 (A046092 n).toNat + A000007 (2 * (n + 2))

end

end A362823.P1299798397948792664

/-! ## A362823.P11785060268520229308

`A362824(A046092(n))+A164555(2*n+3)`
-/

namespace A362823.P11785060268520229308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362824 (A046092 n).toNat + A164555 (2 * n + 3)

end

end A362823.P11785060268520229308

/-!
# A362825: Number of ordered triples of involutions on [n] that pairwise commute.

The programs for A362825, there is no canonical definition to state claims against.
-/

/-! ## A362825.P10803461619142844748

`A362824(∑[n+3]+n+3)`
-/

namespace A362825.P10803461619142844748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362824 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A362825.P10803461619142844748

/-! ## A362825.P15142287348542271208

`A000010(n+1)*A083036(A098544(n+1))`
-/

namespace A362825.P15142287348542271208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A083036 (A098544 (n + 1)).toNat

end

end A362825.P15142287348542271208

/-!
# A362826: Array read by antidiagonals: T(n,k) is the number of k-tuples of permutations of [n] which commute, divided by n!, n >= 0, k >= 1.

The programs for A362826, there is no canonical definition to state claims against.
-/

/-! ## A362826.P5006166781306838132

`A336112(A227578(n)%A096682(n+4))`
-/

namespace A362826.P5006166781306838132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336112 (Int.tmod (A227578 n) (A096682 (n + 4))).toNat

end

end A362826.P5006166781306838132

/-!
# A362828: Number of n-tuples of permutations of [n] that pairwise commute.

The programs for A362828, there is no canonical definition to state claims against.
-/

/-! ## A362828.P8037657604459460861

`A362827(∑[4*n])`
-/

namespace A362828.P8037657604459460861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362827 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362828.P8037657604459460861

/-! ## A362828.P10782558350711481195

`or(A019590(n+1), A362827(A046092(n)))`
-/

namespace A362828.P10782558350711481195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A019590 (n + 1)) (A362827 (A046092 n).toNat)

end

end A362828.P10782558350711481195

/-! ## A362828.P11163640437548702592

`A362827(A046092(n))+A048298(2*n+3)`
-/

namespace A362828.P11163640437548702592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362827 (A046092 n).toNat + A048298 (2 * n + 3)

end

end A362828.P11163640437548702592

/-! ## A362828.P2784301958307003540

`A362827(A046092(n))+A019590(3*n+4)`
-/

namespace A362828.P2784301958307003540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362827 (A046092 n).toNat + A019590 (3 * n + 4)

end

end A362828.P2784301958307003540

/-!
# A362829: Positions in lexicographic order of odd partitions of sufficiently large numbers.

The programs for A362829, there is no canonical definition to state claims against.
-/

/-! ## A362829.P4129273621304313704

`record[A286622(record[xor(n, 2*n)])]`
-/

namespace A362829.P4129273621304313704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362829.P4129273621304313704

/-! ## A362829.P8277297387114229062

`record[A286622(A277335(n))]`
-/

namespace A362829.P8277297387114229062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 (A277335 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362829.P8277297387114229062

/-! ## A362829.P11431654107171810186

`record[A286622(record[A048724(n)])]`
-/

namespace A362829.P11431654107171810186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362829.P11431654107171810186

/-! ## A362829.P13445689600058259713

`A375497(A030477(2*(n+1))%A224774(n+1))`
-/

namespace A362829.P13445689600058259713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375497 (Int.tmod (A030477 (2 * (n + 1))) (A224774 (n + 1))).toNat

end

end A362829.P13445689600058259713

/-!
# A362830: Number of bases b with 2 <= b < n such that n written in base b is a strictly increasing sequence of digits.

The programs for A362830, there is no canonical definition to state claims against.
-/

/-! ## A362830.P3999209805844197018

`A077342(n+1)-A356770(A077342(n+1))`
-/

namespace A362830.P3999209805844197018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077342 (n + 1) - A356770 (A077342 (n + 1)).toNat

end

end A362830.P3999209805844197018

/-! ## A362830.P2355313452107898855

`A242474(n+1)-A356770(A242474(n+1))`
-/

namespace A362830.P2355313452107898855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242474 (n + 1) - A356770 (A242474 (n + 1)).toNat

end

end A362830.P2355313452107898855

/-! ## A362830.P13916634311669068325

`A351374(n+1)-A356770(A351374(n+1))`
-/

namespace A362830.P13916634311669068325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351374 (n + 1) - A356770 (A351374 (n + 1)).toNat

end

end A362830.P13916634311669068325

/-! ## A362830.P11599592697918567115

`A076084(n+1)-A356770(A076084(n+1))`
-/

namespace A362830.P11599592697918567115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076084 (n + 1) - A356770 (A076084 (n + 1)).toNat

end

end A362830.P11599592697918567115

/-! ## A362830.P16415298165683819510

`A151764(n+1)-A356770(A151764(n+1))`
-/

namespace A362830.P16415298165683819510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151764 (n + 1) - A356770 (A151764 (n + 1)).toNat

end

end A362830.P16415298165683819510

/-!
# A362831: Number of partitions of n into two distinct parts (s,t) such that pi(s) = pi(t).

The programs for A362831, the canonical program `A362831.P18331278576335527605` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362831 has offset 1).

The definition of A362831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362831.P18331278576335527605

`col(A007590(n+2)%A076973(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A362831

/-- `col(A007590(n+2)%A076973(n+1))` -/
def P18331278576335527605.Spec : Prop :=
  ∀ n, (P18331278576335527605.a n : ℤ) = A362831 (n + 1)

theorem P18331278576335527605.correct : P18331278576335527605.Spec := by
  intro n
  simp only [A362831, Nat.add_sub_cancel]

end A362831

/-! ## A362831.P17853124706469949170

`A395409(A076271(n+1))`
-/

namespace A362831.P17853124706469949170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395409 (A076271 (n + 1)).toNat

end

end A362831.P17853124706469949170

namespace A362831

/-- `A395409(A076271(n+1))` -/
def P17853124706469949170.Spec : Prop :=
  ∀ n, P17853124706469949170.a n = A362831 (n + 1)

end A362831

/-! ## A362831.P525022139069200489

`A346700(A289439(n+2)%A096638(n))`
-/

namespace A362831.P525022139069200489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (Int.tmod (A289439 (n + 2)) (A096638 n)).toNat

end

end A362831.P525022139069200489

namespace A362831

/-- `A346700(A289439(n+2)%A096638(n))` -/
def P525022139069200489.Spec : Prop :=
  ∀ n, P525022139069200489.a n = A362831 (n + 1)

end A362831

/-! ## A362831.P13897469010649303533

`A346700(A289439(n+2))%A193040(n)`
-/

namespace A362831.P13897469010649303533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346700 (A289439 (n + 2)).toNat) (A193040 n)

end

end A362831.P13897469010649303533

namespace A362831

/-- `A346700(A289439(n+2))%A193040(n)` -/
def P13897469010649303533.Spec : Prop :=
  ∀ n, P13897469010649303533.a n = A362831 (n + 1)

end A362831

/-! ## A362831.P12629307290238702987

`A163396(2*(n+2))%A329888(A289439(n+2))`
-/

namespace A362831.P12629307290238702987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163396 (2 * (n + 2))) (A329888 (A289439 (n + 2)).toNat)

end

end A362831.P12629307290238702987

namespace A362831

/-- `A163396(2*(n+2))%A329888(A289439(n+2))` -/
def P12629307290238702987.Spec : Prop :=
  ∀ n, P12629307290238702987.a n = A362831 (n + 1)

end A362831

/-!
# A362832: Number of partitions of n into two distinct parts (s,t) such that phi(s) = phi(t).

The programs for A362832, there is no canonical definition to state claims against.
-/

/-! ## A362832.P7000527030082827217

`A337930(n+1)-n%2`
-/

namespace A362832.P7000527030082827217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337930 (n + 1) - ((n % 2 : ℕ) : ℤ)

end

end A362832.P7000527030082827217

/-! ## A362832.P17125177584105418053

`floor(A362719(A028310(n))/2)`
-/

namespace A362832.P17125177584105418053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A362719 (A028310 n).toNat : ℚ) / 2⌋

end

end A362832.P17125177584105418053

/-! ## A362832.P15532336975343289126

`A337930(n+1)-A000035(n)`
-/

namespace A362832.P15532336975343289126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337930 (n + 1) - A000035 n

end

end A362832.P15532336975343289126

/-! ## A362832.P7198525385806995925

`A004526(n)-A337931(n+1)`
-/

namespace A362832.P7198525385806995925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A337931 (n + 1)

end

end A362832.P7198525385806995925

/-! ## A362832.P5843163134105658

`A337930(n+1)-∑[A062157(n)]`
-/

namespace A362832.P5843163134105658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337930 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362832.P5843163134105658

/-! ## A362832.P14115747920477671136

`A337930(n+1)-Δ[A008619(n)]`
-/

namespace A362832.P14115747920477671136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337930 (n + 1) - (f1 (n + 1) - f1 n)

end

end A362832.P14115747920477671136

/-! ## A362832.P17973057361389792643

`n-(A337931(n+1)+A110654(n))`
-/

namespace A362832.P17973057361389792643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A337931 (n + 1) + A110654 n)

end

end A362832.P17973057361389792643

/-! ## A362832.P4091835049177280781

`A337930(n+1)-Δ[A002265(2*(n+2))]`
-/

namespace A362832.P4091835049177280781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337930 (n + 1) - (f1 (n + 1) - f1 n)

end

end A362832.P4091835049177280781

/-! ## A362832.P15606604002849504683

`A337930(n+1)-A131743(n²)`
-/

namespace A362832.P15606604002849504683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337930 (n + 1) - A131743 (n ^ 2)

end

end A362832.P15606604002849504683

/-!
# A362834: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = (-1)^n * n! * Sum_{j=0..floor(n/2)} k^j * Stirling1(n-j,j)/(n-j)!.

The programs for A362834, there is no canonical definition to state claims against.
-/

/-! ## A362834.P2211218651780294197

`A004086(A361652(n))%A130139(n+1)`
-/

namespace A362834.P2211218651780294197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A361652 n).toNat) (A130139 (n + 1))

end

end A362834.P2211218651780294197

/-! ## A362834.P7668472188478262813

`A362837(n)/A362852(A000032(n))`
-/

namespace A362834.P7668472188478262813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362837 n : ℚ) / (A362852 (A000032 n).toNat : ℚ)

end

end A362834.P7668472188478262813

/-! ## A362834.P12294833142701507997

`A029837(2^A361652(n))`
-/

namespace A362834.P12294833142701507997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A361652 n : ℤ))).toNat

end

end A362834.P12294833142701507997

/-! ## A362834.P6682283507585846168

`A056239(2^A361652(n))`
-/

namespace A362834.P6682283507585846168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A361652 n : ℤ))).toNat

end

end A362834.P6682283507585846168

/-! ## A362834.P10629277761987825843

`A276075(2^A361652(n))`
-/

namespace A362834.P10629277761987825843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276075 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A361652 n : ℤ))).toNat

end

end A362834.P10629277761987825843

/-!
# A362835: Expansion of e.g.f. 1/(1 + LambertW(x * log(1-x))).

The programs for A362835, there is no canonical definition to state claims against.
-/

/-! ## A362835.P16693420695242635741

`A371140(A073787(n))`
-/

namespace A362835.P16693420695242635741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371140 (A073787 n).toNat

end

end A362835.P16693420695242635741

/-! ## A362835.P16252445160406040700

`A002264(A375672(n)+2)`
-/

namespace A362835.P16252445160406040700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A375672 n + 2).toNat

end

end A362835.P16252445160406040700

/-!
# A362836: Expansion of e.g.f. 1/(1 + LambertW(-x * (exp(x) - 1))).

The programs for A362836, there is no canonical definition to state claims against.
-/

/-! ## A362836.P16818280186348190396

`A371142(n)-A004525(A052785(n))`
-/

namespace A362836.P16818280186348190396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371142 n - A004525 (A052785 n).toNat

end

end A362836.P16818280186348190396

/-! ## A362836.P6577085017024892344

`A371142(A162225(n+1))`
-/

namespace A362836.P6577085017024892344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371142 (A162225 (n + 1)).toNat

end

end A362836.P6577085017024892344

/-!
# A362837: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = (-1)^n * n! * Sum_{j=0..floor(n/2)} k^(n-j) * Stirling1(n-j,j)/(n-j)!.

The programs for A362837, there is no canonical definition to state claims against.
-/

/-! ## A362837.P14916291839241749747

`A362834(n)*A362852(A000032(n))`
-/

namespace A362837.P14916291839241749747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362834 n * A362852 (A000032 n).toNat

end

end A362837.P14916291839241749747

/-! ## A362837.P3948988594342557327

`A362839(n)%A108052(n+2)`
-/

namespace A362837.P3948988594342557327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362839 n) (A108052 (n + 2))

end

end A362837.P3948988594342557327

/-! ## A362837.P65494682303002417

`A362839(n)+A000007(A045545(n))`
-/

namespace A362837.P65494682303002417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362839 n + A000007 (A045545 n).toNat

end

end A362837.P65494682303002417

/-! ## A362837.P8002430993197966632

`A362839(n)+A006926(A362834(n))`
-/

namespace A362837.P8002430993197966632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362839 n + A006926 (A362834 n).toNat

end

end A362837.P8002430993197966632

/-! ## A362837.P9826394785278748729

`A362839(n)^A007318(A362789(n))`
-/

namespace A362837.P9826394785278748729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362839 n : ℚ) ^ (A007318 (A362789 n).toNat : ℤ)

end

end A362837.P9826394785278748729

/-!
# A362838: a(n) = (-1)^n * n! * Sum_{k=0..floor(n/2)} n^(n-k) * Stirling1(n-k,k)/(n-k)!.

The programs for A362838, there is no canonical definition to state claims against.
-/

/-! ## A362838.P7333966479351002831

`A362837(∑[4*n])`
-/

namespace A362838.P7333966479351002831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362837 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362838.P7333966479351002831

/-! ## A362838.P6395106129390993710

`A019554(A000312(n))*A355842(n)`
-/

namespace A362838.P6395106129390993710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A000312 n).toNat * A355842 n

end

end A362838.P6395106129390993710

/-!
# A362839: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = n! * Sum_{j=0..floor(n/2)} k^(n-j) * Stirling2(n-j,j)/(n-j)!.

The programs for A362839, there is no canonical definition to state claims against.
-/

/-! ## A362839.P2563401160442949367

`A270644(A212801(n+1))*A357681(n)`
-/

namespace A362839.P2563401160442949367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270644 (A212801 (n + 1)).toNat * A357681 n

end

end A362839.P2563401160442949367

/-! ## A362839.P16725055640766866158

`and(A186302(A115127(2*n+5)), A362837(n))`
-/

namespace A362839.P16725055640766866158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A186302 (A115127 (2 * n + 5)).toNat) (A362837 n)

end

end A362839.P16725055640766866158

/-!
# A362840: a(n) is the smallest number x between 1 and n-1 for which the number 1/x achieves the longest cycle of repeating digits in its expansion in base n.

The programs for A362840, there is no canonical definition to state claims against.
-/

/-! ## A362840.P15548903918467745329

`A070939(A286701(n)+A125165(n))`
-/

namespace A362840.P15548903918467745329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A286701 n + A125165 n).toNat

end

end A362840.P15548903918467745329

/-! ## A362840.P6193051012474670062

`A070939(A286701(n)+A099377(n+1))`
-/

namespace A362840.P6193051012474670062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A286701 n + A099377 (n + 1)).toNat

end

end A362840.P6193051012474670062

/-! ## A362840.P17287405422035502339

`A070939(A286701(n)+A191426(n+1))`
-/

namespace A362840.P17287405422035502339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A286701 n + A191426 (n + 1)).toNat

end

end A362840.P17287405422035502339

/-! ## A362840.P13147733434885748859

`A070939(A286701(n)+A132741(3*n+1))`
-/

namespace A362840.P13147733434885748859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A286701 n + A132741 (3 * n + 1)).toNat

end

end A362840.P13147733434885748859

/-!
# A362841: Numbers with at least one 5 in their prime signature.

The programs for A362841, there is no canonical definition to state claims against.
-/

/-! ## A362841.P17450635908177885740

`∪[A386808(n+1), A386809(n+1)]`
-/

namespace A362841.P17450635908177885740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A362841.P17450635908177885740

/-! ## A362841.P16508199166650757426

`eq[5, A007814(A328400(n+1))]+1`
-/

namespace A362841.P16508199166650757426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A328400 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A362841.P16508199166650757426

/-! ## A362841.P1941978124259341038

`eq[2, A066301(n+1)-2]+1`
-/

namespace A362841.P1941978124259341038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (n + 1) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A362841.P1941978124259341038

/-! ## A362841.P9114513057780427085

`eq[5, A067132(n+1)-1]+1`
-/

namespace A362841.P9114513057780427085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A362841.P9114513057780427085

/-! ## A362841.P11614722459731399436

`eq[4, A066301(A028310(n))]`
-/

namespace A362841.P11614722459731399436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A362841.P11614722459731399436

/-! ## A362841.P12674462406283059971

`eq[5, A051903(A000122(n)+1+n)]+1`
-/

namespace A362841.P12674462406283059971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000122 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A362841.P12674462406283059971

/-! ## A362841.P14031683971253308421

`eq[5, A051903(n%A000041(n)+1)]+1`
-/

namespace A362841.P14031683971253308421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Int.tmod (n : ℤ) (A000041 n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A362841.P14031683971253308421

/-!
# A362843: Numbers that are equal to the sum of their digits raised to consecutive odd numbered powers (1,3,5,7,...).

The programs for A362843, there is no canonical definition to state claims against.
-/

/-! ## A362843.P942382290943706849

`A250002(A081064(n))+n`
-/

namespace A362843.P942382290943706849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 (A081064 n).toNat + (n : ℤ)

end

end A362843.P942382290943706849

/-! ## A362843.P9842389219778400625

`A308841(A279214(n))+n`
-/

namespace A362843.P9842389219778400625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308841 (A279214 n).toNat + (n : ℤ)

end

end A362843.P9842389219778400625

/-! ## A362843.P11894848984598834469

`or(n, A374640(A143573(n)))`
-/

namespace A362843.P11894848984598834469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A374640 (A143573 n).toNat)

end

end A362843.P11894848984598834469

/-! ## A362843.P18436483437608722461

`A250002(A217374(n+2))+n`
-/

namespace A362843.P18436483437608722461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 (A217374 (n + 2)).toNat + (n : ℤ)

end

end A362843.P18436483437608722461

/-! ## A362843.P5500268787276335973

`A364272(A248133(n+3))+n`
-/

namespace A362843.P5500268787276335973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364272 (A248133 (n + 3)).toNat + (n : ℤ)

end

end A362843.P5500268787276335973

/-!
# A362844: a(n) is the largest k < A360768(n) such that rad(k) = rad(A360768(n)) and n mod k != 0, where rad(n) = A007947(n).

The programs for A362844, there is no canonical definition to state claims against.
-/

/-! ## A362844.P10367384329105596861

`A359929(∑[A359382(n+1)])`
-/

namespace A362844.P10367384329105596861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359929 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A362844.P10367384329105596861

/-! ## A362844.P5234294241691264792

`A285328(A360768(n+1))`
-/

namespace A362844.P5234294241691264792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285328 (A360768 (n + 1)).toNat

end

end A362844.P5234294241691264792

/-! ## A362844.P16344583818513401775

`A285328(lt[0, A355432(n+1)]+1)`
-/

namespace A362844.P16344583818513401775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A362844.P16344583818513401775

/-!
# A362845: Number of divisors of 7*n-2 of form 7*k+1.

The programs for A362845, the canonical program `A362845.P17536639591038917226` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362845 has offset 1).

The definition of A362845 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A362845.P17536639591038917226

`A279061(7*(n+1)-2)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A362845

/-- `A279061(7*(n+1)-2)` -/
def P17536639591038917226.Spec : Prop :=
  ∀ n, P17536639591038917226.a n = A362845 (n + 1)

theorem P17536639591038917226.correct : P17536639591038917226.Spec := by
  intro n
  simp only [A362845, Nat.add_sub_cancel]

end A362845

/-! ## A362845.P11607894637877441732

`A363807(7*(n+1)-2)`
-/

namespace A362845.P11607894637877441732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363807 (7 * (n + 1) - 2)

end

end A362845.P11607894637877441732

namespace A362845

/-- `A363807(7*(n+1)-2)` -/
def P11607894637877441732.Spec : Prop :=
  ∀ n, P11607894637877441732.a n = A362845 (n + 1)

end A362845

/-! ## A362845.P15611746345415752339

`A375150(n)+A363854(n+1)`
-/

namespace A362845.P15611746345415752339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375150 n + A363854 (n + 1)

end

end A362845.P15611746345415752339

namespace A362845

/-- `A375150(n)+A363854(n+1)` -/
def P15611746345415752339.Spec : Prop :=
  ∀ n, P15611746345415752339.a n = A362845 (n + 1)

theorem P15611746345415752339.correct : P15611746345415752339.Spec := by
  intro n
  simp only [A362845, Nat.add_sub_cancel, A362845.P15611746345415752339.a, A362845.P17536639591038917226.a, A279061, A279061.P5329778650763394169.f1, A279061.P5329778650763394169.a, A363854, A363854.P10747963757695572000.a, A375150, A375150.P910805378827683235.a, A082784, A082784.P13357688651719004354.a, A363808, A363808.P3028635677623268450.f1, A363808.P3028635677623268450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A362845

/-! ## A362845.P8750772752553837961

`A188512(A363729(n+1))`
-/

namespace A362845.P8750772752553837961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188512 (A363729 (n + 1)).toNat

end

end A362845.P8750772752553837961

namespace A362845

/-- `A188512(A363729(n+1))` -/
def P8750772752553837961.Spec : Prop :=
  ∀ n, P8750772752553837961.a n = A362845 (n + 1)

end A362845

/-! ## A362845.P3510198080262217820

`A285425(A271513(2*n)%A239747(n+3))`
-/

namespace A362845.P3510198080262217820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285425 (Int.tmod (A271513 (2 * n)) (A239747 (n + 3))).toNat

end

end A362845.P3510198080262217820

namespace A362845

/-- `A285425(A271513(2*n)%A239747(n+3))` -/
def P3510198080262217820.Spec : Prop :=
  ∀ n, P3510198080262217820.a n = A362845 (n + 1)

end A362845

/-!
# A362846: a(n) = Sum_{k=0..n-1} Gamma(n + k) / Gamma(n - k) for n > 0, a(0) = 1. Row sums of A362787.

The programs for A362846, there is no canonical definition to state claims against.
-/

/-! ## A362846.P11759937084044316862

`A003470(record[abs(xor(1, n-2))]-1)`
-/

namespace A362846.P11759937084044316862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) - 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003470 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1).toNat

end

end A362846.P11759937084044316862

/-! ## A362846.P6894082883340378875

`A003470(lt[∑{d}[n+1, #%or(1, #)], 5])`
-/

namespace A362846.P6894082883340378875
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d % Nat.lor 1 d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003470 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A362846.P6894082883340378875

/-! ## A362846.P10046638864289429365

`A003470(A004275(n))`
-/

namespace A362846.P10046638864289429365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003470 (A004275 n).toNat

end

end A362846.P10046638864289429365

/-! ## A362846.P607511239541734575

`A003470(record[A029578(n)])`
-/

namespace A362846.P607511239541734575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003470 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A362846.P607511239541734575

/-! ## A362846.P17601516385429988877

`A003470(record[n/A093178(n)])`
-/

namespace A362846.P17601516385429988877
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A093178 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003470 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A362846.P17601516385429988877

/-!
# A362847: Triangle read by rows, T(n, k) = 4^k * Gamma(n + k + 1/2) / Gamma(n - k + 1/2).

The programs for A362847, there is no canonical definition to state claims against.
-/

/-! ## A362847.P16790921531030424506

`A206496(2^(n+1)+1)`
-/

namespace A362847.P16790921531030424506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206496 (2 ^ (n + 1) + 1)

end

end A362847.P16790921531030424506

/-! ## A362847.P13714419803704338422

`A355201(2*(∑[∑[n]]+2))`
-/

namespace A362847.P13714419803704338422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355201 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 2))

end

end A362847.P13714419803704338422

/-!
# A362848: a(n) = Sum_{k=0..n} 4^k * Gamma(n + k + 1/2) / Gamma(n - k + 1/2). Row sums of A362847.

The programs for A362848, there is no canonical definition to state claims against.
-/

/-! ## A362848.P9071123135468939449

`A112294(2*n)`
-/

namespace A362848.P9071123135468939449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112294 (2 * n)

end

end A362848.P9071123135468939449

/-! ## A362848.P18345368954620667616

`record[A112294(A065190(n+1)-1)]`
-/

namespace A362848.P18345368954620667616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112294 (A065190 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362848.P18345368954620667616

/-! ## A362848.P8687103618774710666

`A112294(A005843(n))/A067032(n)`
-/

namespace A362848.P8687103618774710666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112294 (A005843 n).toNat : ℚ) / (A067032 n : ℚ)

end

end A362848.P8687103618774710666

/-! ## A362848.P13702143021344904235

`C(A112294(A005843(n)), A112348(n))`
-/

namespace A362848.P13702143021344904235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A112294 (A005843 n).toNat).toNat (A112348 n).toNat

end

end A362848.P13702143021344904235

/-! ## A362848.P9964998310477731437

`A230614(n+1)+A112294(A005843(n))`
-/

namespace A362848.P9964998310477731437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230614 (n + 1) + A112294 (A005843 n).toNat

end

end A362848.P9964998310477731437

/-!
# A362849: Triangle read by rows, T(n, k) = A243664(n) * binomial(n, k).

The programs for A362849, there is no canonical definition to state claims against.
-/

/-! ## A362849.P10738060935175778971

`A243664(row(n))*C(row(n), col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362849.P10738060935175778971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243664 (SequenceMachineLib.triRow n) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ)

end

end A362849.P10738060935175778971

/-! ## A362849.P14017415287554335215

`abs(A130595(n)*A243664(A003056(n)))`
-/

namespace A362849.P14017415287554335215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A243664 (A003056 n).toNat|

end

end A362849.P14017415287554335215

/-! ## A362849.P3392082804469539196

`Δ[A102363(n)]*A243664(A003056(n))`
-/

namespace A362849.P3392082804469539196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A243664 (A003056 n).toNat

end

end A362849.P3392082804469539196

/-! ## A362849.P1467093629478138633

`abs(2-A173740(n))*A243664(A003056(n))`
-/

namespace A362849.P1467093629478138633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A173740 n| * A243664 (A003056 n).toNat

end

end A362849.P1467093629478138633

/-! ## A362849.P2895577867939254382

`(A131061(n)+3)/4*A243664(A003056(n))`
-/

namespace A362849.P2895577867939254382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131061 n + 3 : ℚ) / 4 * (A243664 (A003056 n).toNat : ℚ)

end

end A362849.P2895577867939254382

/-!
# A362850: Positions of records in A194943.

The programs for A362850, there is no canonical definition to state claims against.
-/

/-! ## A362850.P2791698123754214367

`eq[A003415(n), A007318(A239689(n+1))]`
-/

namespace A362850.P2791698123754214367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A239689 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A362850.P2791698123754214367

/-! ## A362850.P14221306160290471172

`record[p?[A271315(2*n)]]`
-/

namespace A362850.P14221306160290471172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271315 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362850.P14221306160290471172

/-! ## A362850.P4217977972977803123

`A123318(A051147(n))`
-/

namespace A362850.P4217977972977803123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123318 (A051147 n).toNat

end

end A362850.P4217977972977803123

/-! ## A362850.P4039874477836382929

`A218123(A010737(n))`
-/

namespace A362850.P4039874477836382929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218123 (A010737 n).toNat

end

end A362850.P4039874477836382929

/-! ## A362850.P4042099873811175740

`A123318(A091696(n+1))`
-/

namespace A362850.P4042099873811175740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123318 (A091696 (n + 1)).toNat

end

end A362850.P4042099873811175740

/-!
# A362851: Records in A194943.

The programs for A362851, there is no canonical definition to state claims against.
-/

/-! ## A362851.P4074556718440452684

`A194943(A362850(n+1))`
-/

namespace A362851.P4074556718440452684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194943 (A362850 (n + 1)).toNat

end

end A362851.P4074556718440452684

/-! ## A362851.P14791386666625541476

`record[A194943(n+2)]`
-/

namespace A362851.P14791386666625541476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194943 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362851.P14791386666625541476

/-! ## A362851.P6508433214733344463

`record[floor(A085420(n+2)/(n+2))]`
-/

namespace A362851.P6508433214733344463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A085420 (n + 2) : ℚ) / (n + 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362851.P6508433214733344463

/-! ## A362851.P2517380920504616695

`record[A089884(n+1)]`
-/

namespace A362851.P2517380920504616695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362851.P2517380920504616695

/-!
# A362852: The number of divisors of n that are both bi-unitary and exponential.

The programs for A362852, the canonical program `A362852.P3005074600133069083` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362852 has offset 1).

The definition of A362852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362852.P3005074600133069083

`∏{e}[n+1, A076984(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A362852

/-- `∏{e}[n+1, A076984(#)]` -/
def P3005074600133069083.Spec : Prop :=
  ∀ n, P3005074600133069083.a n = A362852 (n + 1)

theorem P3005074600133069083.correct : P3005074600133069083.Spec := by
  intro n
  simp only [A362852, Nat.add_sub_cancel]

end A362852

/-! ## A362852.P16149816932563480387

`∏{e}[n+1, A023645(#)+1]`
-/

namespace A362852.P16149816932563480387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A023645 (Nat.factorization (f1 n) p) + 1)

end

end A362852.P16149816932563480387

namespace A362852

/-- `∏{e}[n+1, A023645(#)+1]` -/
def P16149816932563480387.Spec : Prop :=
  ∀ n, P16149816932563480387.a n = A362852 (n + 1)

end A362852

/-! ## A362852.P8175659260694838649

`∏{e}[n+1, A001221(A052542(#))]`
-/

namespace A362852.P8175659260694838649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001221 (A052542 (Nat.factorization (f1 n) p)).toNat

end

end A362852.P8175659260694838649

namespace A362852

/-- `∏{e}[n+1, A001221(A052542(#))]` -/
def P8175659260694838649.Spec : Prop :=
  ∀ n, P8175659260694838649.a n = A362852 (n + 1)

end A362852

/-! ## A362852.P16783109820860081581

`∏{e}[(n+1)²/∏{p}[n+1, #], A122921(#)]`
-/

namespace A362852.P16783109820860081581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A122921 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A362852.P16783109820860081581

namespace A362852

/-- `∏{e}[(n+1)²/∏{p}[n+1, #], A122921(#)]` -/
def P16783109820860081581.Spec : Prop :=
  ∀ n, P16783109820860081581.a n = A362852 (n + 1)

end A362852

/-! ## A362852.P14781375720751049578

`∏{e}[A242420(n+1), A104307(#)]`
-/

namespace A362852.P14781375720751049578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A104307 (Nat.factorization (f1 n).natAbs p)

end

end A362852.P14781375720751049578

namespace A362852

/-- `∏{e}[A242420(n+1), A104307(#)]` -/
def P14781375720751049578.Spec : Prop :=
  ∀ n, P14781375720751049578.a n = A362852 (n + 1)

end A362852

/-! ## A362852.P8055031262394985628

`A001222(A050361(n+1)*A056157(n+1))`
-/

namespace A362852.P8055031262394985628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A050361 (n + 1) * A056157 (n + 1)).toNat

end

end A362852.P8055031262394985628

namespace A362852

/-- `A001222(A050361(n+1)*A056157(n+1))` -/
def P8055031262394985628.Spec : Prop :=
  ∀ n, P8055031262394985628.a n = A362852 (n + 1)

end A362852

/-! ## A362852.P8467002530548058

`A046072(A050361(n+1)*A161344(n+4))`
-/

namespace A362852.P8467002530548058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (A050361 (n + 1) * A161344 (n + 4)).toNat

end

end A362852.P8467002530548058

namespace A362852

/-- `A046072(A050361(n+1)*A161344(n+4))` -/
def P8467002530548058.Spec : Prop :=
  ∀ n, P8467002530548058.a n = A362852 (n + 1)

end A362852

/-! ## A362852.P7701754421742491548

`A001222(A001359(2*n+1)*A050361(n+1))`
-/

namespace A362852.P7701754421742491548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001359 (2 * n + 1) * A050361 (n + 1)).toNat

end

end A362852.P7701754421742491548

namespace A362852

/-- `A001222(A001359(2*n+1)*A050361(n+1))` -/
def P7701754421742491548.Spec : Prop :=
  ∀ n, P7701754421742491548.a n = A362852 (n + 1)

end A362852

/-! ## A362852.P6514660395850322930

`A001222(A050361(n+1)*A129484(n+1))`
-/

namespace A362852.P6514660395850322930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A050361 (n + 1) * A129484 (n + 1)).toNat

end

end A362852.P6514660395850322930

namespace A362852

/-- `A001222(A050361(n+1)*A129484(n+1))` -/
def P6514660395850322930.Spec : Prop :=
  ∀ n, P6514660395850322930.a n = A362852 (n + 1)

end A362852

/-! ## A362852.P16457208812844554529

`gcd(A007054(n), A385418(n+1))`
-/

namespace A362852.P16457208812844554529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007054 n) (A385418 (n + 1))

end

end A362852.P16457208812844554529

namespace A362852

/-- `gcd(A007054(n), A385418(n+1))` -/
def P16457208812844554529.Spec : Prop :=
  ∀ n, (P16457208812844554529.a n : ℤ) = A362852 (n + 1)

end A362852

/-!
# A362853: Numbers with a record number of divisors that are both bi-unitary and exponential.

The programs for A362853, there is no canonical definition to state claims against.
-/

/-! ## A362853.P15927175320310209594

`A333931(A141769(n+1))^3`
-/

namespace A362853.P15927175320310209594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333931 (A141769 (n + 1)).toNat ^ 3

end

end A362853.P15927175320310209594

/-! ## A362853.P6944890963059037059

`filter[A254521(n+1), A322585(#)]`
-/

namespace A362853.P6944890963059037059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A362853.P6944890963059037059

/-! ## A362853.P8254564584059648110

`A308618(n+1)^A000032(A323275(n+1))`
-/

namespace A362853.P8254564584059648110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308618 (n + 1) : ℚ) ^ (A000032 (A323275 (n + 1)).toNat : ℤ)

end

end A362853.P8254564584059648110

/-!
# A362854: The sum of the divisors of n that are both bi-unitary and exponential.

The programs for A362854, there is no canonical definition to state claims against.
-/

/-! ## A362854.P16468966193600699901

`A361810(n+1)+A157228(A369817(n+1))`
-/

namespace A362854.P16468966193600699901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361810 (n + 1) + A157228 (A369817 (n + 1)).toNat

end

end A362854.P16468966193600699901

/-!
# A362855: a(n) = n for n <= 3; for n > 3, a(n) is the least novel multiple of k, the product of all distinct prime factors of a(n-2) that do not divide a(n-1).

The programs for A362855, there is no canonical definition to state claims against.
-/

/-! ## A362855.P6466041567922073696

`A368133(n+1)`
-/

namespace A362855.P6466041567922073696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368133 (n + 1)

end

end A362855.P6466041567922073696

/-! ## A362855.P17771507002536865775

`A370740(n+1)+A000007(A370775(n+1))`
-/

namespace A362855.P17771507002536865775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370740 (n + 1) + A000007 (A370775 (n + 1)).toNat

end

end A362855.P17771507002536865775

/-! ## A362855.P8343112438915920400

`A370740(n+1)/A001227(A152716(2*n))`
-/

namespace A362855.P8343112438915920400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370740 (n + 1) : ℚ) / (A001227 (A152716 (2 * n)).toNat : ℚ)

end

end A362855.P8343112438915920400

/-! ## A362855.P11546053743819972975

`A370740(n+1)%A173555(A234695(n+1))`
-/

namespace A362855.P11546053743819972975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370740 (n + 1)) (A173555 (A234695 (n + 1)).toNat)

end

end A362855.P11546053743819972975

/-! ## A362855.P6206766504154570051

`A370740(n+1)^A250286(A359902(n+1))`
-/

namespace A362855.P6206766504154570051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370740 (n + 1) : ℚ) ^ (A250286 (A359902 (n + 1)).toNat : ℤ)

end

end A362855.P6206766504154570051

/-! ## A362855.P18407025650192294519

`A370740(n+1)+A007814(A161329(n+5))`
-/

namespace A362855.P18407025650192294519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370740 (n + 1) + A007814 (A161329 (n + 5)).toNat

end

end A362855.P18407025650192294519

/-! ## A362855.P13114962613885299803

`A370740(n+1)+A216218(A370721(n+1))`
-/

namespace A362855.P13114962613885299803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370740 (n + 1) + A216218 (A370721 (n + 1)).toNat

end

end A362855.P13114962613885299803

/-! ## A362855.P8839792430570301053

`A370740(n+1)%A016825(A139274(n))`
-/

namespace A362855.P8839792430570301053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370740 (n + 1)) (A016825 (A139274 n).toNat)

end

end A362855.P8839792430570301053

/-! ## A362855.P1209301033649199357

`A089026(A005899(n))*A370740(n+1)`
-/

namespace A362855.P1209301033649199357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A005899 n).toNat * A370740 (n + 1)

end

end A362855.P1209301033649199357

/-! ## A362855.P11699146412438112759

`A089026(A064549(2*n+1))*A370740(n+1)`
-/

namespace A362855.P11699146412438112759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A064549 (2 * n + 1)).toNat * A370740 (n + 1)

end

end A362855.P11699146412438112759

/-!
# A362857: Expansion of e.g.f. exp(-2*x) / (1 + LambertW(-x)).

The programs for A362857, the canonical program `A362857.P15314416275955649690` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362857 has offset 0).

The definition of A362857 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362857.P1662415383310834820

`∑{#}[n, (-1)^#*A350212(C(n+1, 2)+#)]`
-/

namespace A362857.P1662415383310834820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * A350212 (Nat.choose (n + 1) 2 + k)

end

end A362857.P1662415383310834820

namespace A362857

/-- `∑{#}[n, (-1)^#*A350212(C(n+1, 2)+#)]` -/
def P1662415383310834820.Spec : Prop :=
  ∀ n, P1662415383310834820.a n = A362857 n

end A362857

/-! ## A362857.P15314416275955649690

`∑{#}[n, (-2)^(n-#)*#^#*C(n, #)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A362857

/-- `∑{#}[n, (-2)^(n-#)*#^#*C(n, #)]` -/
def P15314416275955649690.Spec : Prop :=
  ∀ n, P15314416275955649690.a n = (A362857 n : ℚ)

end A362857

/-! ## A362857.P12380536379927027586

`A362856(∑[n+3])`
-/

namespace A362857.P12380536379927027586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362856 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362857.P12380536379927027586

namespace A362857

/-- `A362856(∑[n+3])` -/
def P12380536379927027586.Spec : Prop :=
  ∀ n, P12380536379927027586.a n = A362857 n

end A362857

/-!
# A362858: Expansion of e.g.f. exp(-3*x) / (1 + LambertW(-x)).

The programs for A362858, the canonical program `A362858.P11874270202256558126` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362858 has offset 0).

The definition of A362858 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362858.P11874270202256558126

`∑{#}[n, (-3)^(n-#)*#^#*C(n, #)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A362858

/-- `∑{#}[n, (-3)^(n-#)*#^#*C(n, #)]` -/
def P11874270202256558126.Spec : Prop :=
  ∀ n, P11874270202256558126.a n = (A362858 n : ℚ)

end A362858

/-! ## A362858.P13720417216165058364

`A362856(∑[n+4]+2)`
-/

namespace A362858.P13720417216165058364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362856 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A362858.P13720417216165058364

namespace A362858

/-- `A362856(∑[n+4]+2)` -/
def P13720417216165058364.Spec : Prop :=
  ∀ n, P13720417216165058364.a n = A362858 n

end A362858

/-!
# A362859: Expansion of e.g.f. exp(-x) / (1 + LambertW(-2*x)).

The programs for A362859, there is no canonical definition to state claims against.
-/

/-! ## A362859.P3078929294905895913

`A362019(∑[n+3])`
-/

namespace A362859.P3078929294905895913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362019 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362859.P3078929294905895913

/-!
# A362860: Expansion of e.g.f. exp(-x) / (1 + LambertW(-3*x)).

The programs for A362860, there is no canonical definition to state claims against.
-/

/-! ## A362860.P16805992362794830671

`A362019(A046691(n+2))`
-/

namespace A362860.P16805992362794830671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362019 (A046691 (n + 2)).toNat

end

end A362860.P16805992362794830671

/-! ## A362860.P876358817377458888

`A362019(eq[3, A025581(n)])`
-/

namespace A362860.P876358817377458888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362860.P876358817377458888

/-! ## A362860.P13507805684207978062

`A362019(A052905(n+1)+1)`
-/

namespace A362860.P13507805684207978062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362019 (A052905 (n + 1) + 1).toNat

end

end A362860.P13507805684207978062

/-! ## A362860.P10196661726261242236

`A362019(A055998(n+2)-1)`
-/

namespace A362860.P10196661726261242236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362019 (A055998 (n + 2) - 1).toNat

end

end A362860.P10196661726261242236

/-! ## A362860.P15432571324999891214

`A362019(A000217(n+4)-4)`
-/

namespace A362860.P15432571324999891214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362019 (A000217 (n + 4) - 4).toNat

end

end A362860.P15432571324999891214

/-!
# A362862: a(n) = (-1)^n * Sum_{k=0..n} (-n*k)^k * binomial(n,k).

The programs for A362862, the canonical program `A362862.P15170223958240208674` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362862 has offset 0).

The definition of A362862 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*∑{#}[n, (-n*#)^#*C(n, #)]` (program `A362862.P15170223958240208674`, by `A362862.P15170223958240208674.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A362862.P15170223958240208674

`(-1)^n*∑{#}[n, (-n*#)^#*C(n, #)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A362862

/-- `(-1)^n*∑{#}[n, (-n*#)^#*C(n, #)]` -/
def P15170223958240208674.Spec : Prop :=
  ∀ n, P15170223958240208674.a n = A362862 n

theorem P15170223958240208674.correct : P15170223958240208674.Spec := by
  intro n
  simp only [A362862]

end A362862

/-! ## A362862.P732521019751749580

`A362019(∑[4*n])`
-/

namespace A362862.P732521019751749580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362019 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362862.P732521019751749580

namespace A362862

/-- `A362019(∑[4*n])` -/
def P732521019751749580.Spec : Prop :=
  ∀ n, P732521019751749580.a n = A362862 n

end A362862

/-!
# A362863: Centered hecatonicosachoral numbers.

The programs for A362863, the canonical program `A362863.P14523637703416089899` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362863 has offset 1).

The definition of A362863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362863.P14523637703416089899

`300*(n+1)^4-600*(n+1)^3+420*(n+1)²-120*(n+1)+1`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A362863

/-- `300*(n+1)^4-600*(n+1)^3+420*(n+1)²-120*(n+1)+1` -/
def P14523637703416089899.Spec : Prop :=
  ∀ n, P14523637703416089899.a n = A362863 (n + 1)

theorem P14523637703416089899.correct : P14523637703416089899.Spec := by
  intro n
  simp only [A362863, Nat.add_sub_cancel]

end A362863

/-!
# A362866: Numbers k with the property that the parts of the symmetric representation of sigma(k) are two octagons.

The programs for A362866, there is no canonical definition to state claims against.
-/

/-! ## A362866.P9124748880461027547

`2*p?[2*n+5]`
-/

namespace A362866.P9124748880461027547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A362866.P9124748880461027547

/-! ## A362866.P5439561834732283603

`record[2*∑{p}[n+5, #]]`
-/

namespace A362866.P5439561834732283603
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362866.P5439561834732283603

/-! ## A362866.P8725734286696819175

`lcm(2, p?[Δ[(n+2)²]])`
-/

namespace A362866.P8725734286696819175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A362866.P8725734286696819175

/-! ## A362866.P18055400017124346993

`Δ[2*∑[p?[Δ[n²]]]]`
-/

namespace A362866.P18055400017124346993
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A362866.P18055400017124346993

/-! ## A362866.P15039567785445932118

`A073582(3+n)`
-/

namespace A362866.P15039567785445932118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073582 (3 + n)

end

end A362866.P15039567785445932118

/-! ## A362866.P10733780266158492433

`A100484(n+3)`
-/

namespace A362866.P10733780266158492433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 3)

end

end A362866.P10733780266158492433

/-! ## A362866.P9592766652888843420

`A001747(n+4)`
-/

namespace A362866.P9592766652888843420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 4)

end

end A362866.P9592766652888843420

/-! ## A362866.P16056165921556530311

`A074845(n+4)`
-/

namespace A362866.P16056165921556530311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074845 (n + 4)

end

end A362866.P16056165921556530311

/-! ## A362866.P6776984354577287873

`A077017(n+4)`
-/

namespace A362866.P6776984354577287873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077017 (n + 4)

end

end A362866.P6776984354577287873

/-! ## A362866.P5463718259339889443

`A161344(n+4)`
-/

namespace A362866.P5463718259339889443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161344 (n + 4)

end

end A362866.P5463718259339889443

/-!
# A362867: Irregular triangle read by rows; the n-th row is the n-th permutation of 0 to infinity, in reversed colexicographic ordering, terminating when the rest of the row equals k.

The programs for A362867, there is no canonical definition to state claims against.
-/

/-! ## A362867.P16076761358868092178

`A055089(n)-1`
-/

namespace A362867.P16076761358868092178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055089 n - 1

end

end A362867.P16076761358868092178

/-! ## A362867.P13905165396371873414

`A001538(n)%A055089(n)`
-/

namespace A362867.P13905165396371873414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A055089 n)

end

end A362867.P13905165396371873414

/-! ## A362867.P1455521406625863407

`A002148(n)%A055089(n)`
-/

namespace A362867.P1455521406625863407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A055089 n)

end

end A362867.P1455521406625863407

/-! ## A362867.P18044832145978417593

`A017653(n)%A055089(n)`
-/

namespace A362867.P18044832145978417593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017653 n) (A055089 n)

end

end A362867.P18044832145978417593

/-! ## A362867.P891107158804654389

`A017655(n)%A055089(n)`
-/

namespace A362867.P891107158804654389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017655 n) (A055089 n)

end

end A362867.P891107158804654389

/-! ## A362867.P2994733685111477597

`A017657(n)%A055089(n)`
-/

namespace A362867.P2994733685111477597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017657 n) (A055089 n)

end

end A362867.P2994733685111477597

/-! ## A362867.P2937167051531881201

`A033300(n)%A055089(n)`
-/

namespace A362867.P2937167051531881201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033300 n) (A055089 n)

end

end A362867.P2937167051531881201

/-! ## A362867.P14007996374505971070

`A052940(n)%A055089(n)`
-/

namespace A362867.P14007996374505971070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052940 n) (A055089 n)

end

end A362867.P14007996374505971070

/-! ## A362867.P32762361002315324

`A052996(n)%A055089(n)`
-/

namespace A362867.P32762361002315324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052996 n) (A055089 n)

end

end A362867.P32762361002315324

/-! ## A362867.P4677457815986962280

`A065532(n)%A055089(n)`
-/

namespace A362867.P4677457815986962280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065532 n) (A055089 n)

end

end A362867.P4677457815986962280

/-!
# A362868: Triangle read by rows: T(n,k) is the number of connected simple graphs G of order n with the property that k is the order of the largest quotient graph G/~ that is a complete graph. 1 <= k <= n.

The programs for A362868, there is no canonical definition to state claims against.
-/

/-! ## A362868.P11192339007245768937

`A094937(A230049(n))`
-/

namespace A362868.P11192339007245768937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094937 (A230049 n).toNat

end

end A362868.P11192339007245768937

/-! ## A362868.P1143759149005958861

`A034463(3^A004248(n))`
-/

namespace A362868.P1143759149005958861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034463 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A004248 n : ℤ))).toNat

end

end A362868.P1143759149005958861

/-! ## A362868.P6119940431002312114

`A034463(3^A048723(n))`
-/

namespace A362868.P6119940431002312114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034463 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A048723 n : ℤ))).toNat

end

end A362868.P6119940431002312114

/-! ## A362868.P15841316523679666772

`A280726(5^A004248(n))`
-/

namespace A362868.P15841316523679666772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280726 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A004248 n : ℤ))).toNat

end

end A362868.P15841316523679666772

/-! ## A362868.P17751817837647867725

`∑{e}[A000831(A048993(n)), #]`
-/

namespace A362868.P17751817837647867725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000831 (A048993 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A362868.P17751817837647867725

/-!
# A362869: a(n) is equal to the number of cells in one octant of the octagon of unit squares with side equal n.

The programs for A362869, the canonical program `A362869.P15295900808212364066` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362869 has offset 1).

The definition of A362869 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362869.P15295900808212364066

`ogf((1+x+4x^2+x^3)/(1-x-2x^2+2x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A362869

/-- `ogf((1+x+4x^2+x^3)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P15295900808212364066.Spec : Prop :=
  ∀ n, P15295900808212364066.a n = A362869 (n + 1)

theorem P15295900808212364066.correct : P15295900808212364066.Spec := by
  intro n
  simp only [A362869, Nat.add_sub_cancel]

end A362869

/-! ## A362869.P16681775691440068764

`floor(7*(n/2)²)-a(n-1)+n+1` with `a(0)=1`
-/

namespace A362869.P16681775691440068764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊7 * ((n : ℚ) / 2) ^ 2⌋ - a (n - 1) + (n + 1 : ℤ)

end

end A362869.P16681775691440068764

namespace A362869

/-- `floor(7*(n/2)²)-a(n-1)+n+1` -/
def P16681775691440068764.Spec : Prop :=
  ∀ n, P16681775691440068764.a n = A362869 (n + 1)

end A362869

/-! ## A362869.P16129923692201711940

`∑[(n+2)*(n+1)%2/2+n*(2-n%2)]`
-/

namespace A362869.P16129923692201711940
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) * ((n + 1) % 2) : ℕ) : ℚ) / 2 + ((n : ℤ) * (2 - ((n % 2 : ℕ) : ℤ)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362869.P16129923692201711940

namespace A362869

/-- `∑[(n+2)*(n+1)%2/2+n*(2-n%2)]` -/
def P16129923692201711940.Spec : Prop :=
  ∀ n, P16129923692201711940.a n = (A362869 (n + 1) : ℚ)

end A362869

/-! ## A362869.P10403380007817140033

`A118277(n)+1+floor(n/2)`
-/

namespace A362869.P10403380007817140033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118277 n + (1 + ⌊(n : ℚ) / 2⌋)

end

end A362869.P10403380007817140033

namespace A362869

/-- `A118277(n)+1+floor(n/2)` -/
def P10403380007817140033.Spec : Prop :=
  ∀ n, P10403380007817140033.a n = A362869 (n + 1)

end A362869

/-! ## A362869.P5574225669490052990

`A085787(n)+(1+floor(n/2))²`
-/

namespace A362869.P5574225669490052990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n + (1 + ⌊(n : ℚ) / 2⌋) ^ 2

end

end A362869.P5574225669490052990

namespace A362869

/-- `A085787(n)+(1+floor(n/2))²` -/
def P5574225669490052990.Spec : Prop :=
  ∀ n, P5574225669490052990.a n = A362869 (n + 1)

end A362869

/-! ## A362869.P16874066126776596042

`A001318(2*floor(n/2)+1)+C(n+1, 2)`
-/

namespace A362869.P16874066126776596042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (2 * ⌊(n : ℚ) / 2⌋ + 1).toNat + (Nat.choose (n + 1) 2 : ℤ)

end

end A362869.P16874066126776596042

namespace A362869

/-- `A001318(2*floor(n/2)+1)+C(n+1, 2)` -/
def P16874066126776596042.Spec : Prop :=
  ∀ n, P16874066126776596042.a n = A362869 (n + 1)

end A362869

/-! ## A362869.P8462852470761902271

`A008795(n)+A001859(n)`
-/

namespace A362869.P8462852470761902271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n + A001859 n

end

end A362869.P8462852470761902271

namespace A362869

/-- `A008795(n)+A001859(n)` -/
def P8462852470761902271.Spec : Prop :=
  ∀ n, P8462852470761902271.a n = A362869 (n + 1)

end A362869

/-! ## A362869.P17103556459896047281

`A319390(n)+A266440(n)`
-/

namespace A362869.P17103556459896047281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n + A266440 n

end

end A362869.P17103556459896047281

namespace A362869

/-- `A319390(n)+A266440(n)` -/
def P17103556459896047281.Spec : Prop :=
  ∀ n, P17103556459896047281.a n = A362869 (n + 1)

end A362869

/-! ## A362869.P5117562791502984070

`A008805(n)+A001082(n+1)`
-/

namespace A362869.P5117562791502984070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n + A001082 (n + 1)

end

end A362869.P5117562791502984070

namespace A362869

/-- `A008805(n)+A001082(n+1)` -/
def P5117562791502984070.Spec : Prop :=
  ∀ n, P5117562791502984070.a n = A362869 (n + 1)

end A362869

/-! ## A362869.P10089461818895610537

`A211539(n)+A093005(n+1)`
-/

namespace A362869.P10089461818895610537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211539 n + A093005 (n + 1)

end

end A362869.P10089461818895610537

namespace A362869

/-- `A211539(n)+A093005(n+1)` -/
def P10089461818895610537.Spec : Prop :=
  ∀ n, P10089461818895610537.a n = A362869 (n + 1)

end A362869

/-! ## A362869.P16765343340516768568

`A212959(n)-A057569(n+1)`
-/

namespace A362869.P16765343340516768568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 n - A057569 (n + 1)

end

end A362869.P16765343340516768568

namespace A362869

/-- `A212959(n)-A057569(n+1)` -/
def P16765343340516768568.Spec : Prop :=
  ∀ n, P16765343340516768568.a n = A362869 (n + 1)

end A362869

/-! ## A362869.P11107321916337179470

`A319556(n+1)+A057570(n+1)`
-/

namespace A362869.P11107321916337179470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319556 (n + 1) + A057570 (n + 1)

end

end A362869.P11107321916337179470

namespace A362869

/-- `A319556(n+1)+A057570(n+1)` -/
def P11107321916337179470.Spec : Prop :=
  ∀ n, P11107321916337179470.a n = A362869 (n + 1)

end A362869

/-! ## A362869.P5886019370302778619

`A274830(n+1)+A193356(n+1)`
-/

namespace A362869.P5886019370302778619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274830 (n + 1) + A193356 (n + 1)

end

end A362869.P5886019370302778619

namespace A362869

/-- `A274830(n+1)+A193356(n+1)` -/
def P5886019370302778619.Spec : Prop :=
  ∀ n, P5886019370302778619.a n = A362869 (n + 1)

end A362869

/-! ## A362869.P13025420863030908671

`A211539(n)+A211539(n)+A101881(n)`
-/

namespace A362869.P13025420863030908671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211539 n + (A211539 n + A101881 n)

end

end A362869.P13025420863030908671

namespace A362869

/-- `A211539(n)+A211539(n)+A101881(n)` -/
def P13025420863030908671.Spec : Prop :=
  ∀ n, P13025420863030908671.a n = A362869 (n + 1)

end A362869

/-! ## A362869.P17080609757864388341

`A274830(n+2)-A080512(n+1)`
-/

namespace A362869.P17080609757864388341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274830 (n + 2) - A080512 (n + 1)

end

end A362869.P17080609757864388341

namespace A362869

/-- `A274830(n+2)-A080512(n+1)` -/
def P17080609757864388341.Spec : Prop :=
  ∀ n, P17080609757864388341.a n = A362869 (n + 1)

end A362869

/-! ## A362869.P5985179210707154784

`A077043(n+1)-(A131259(n+1)+A131259(n))`
-/

namespace A362869.P5985179210707154784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (n + 1) - (A131259 (n + 1) + A131259 n)

end

end A362869.P5985179210707154784

namespace A362869

/-- `A077043(n+1)-(A131259(n+1)+A131259(n))` -/
def P5985179210707154784.Spec : Prop :=
  ∀ n, P5985179210707154784.a n = A362869 (n + 1)

end A362869

/-! ## A362869.P1429604489861647677

`A093005(n+1)+A181995(n+1)-A085787(n)`
-/

namespace A362869.P1429604489861647677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1) + (A181995 (n + 1) - A085787 n)

end

end A362869.P1429604489861647677

namespace A362869

/-- `A093005(n+1)+A181995(n+1)-A085787(n)` -/
def P1429604489861647677.Spec : Prop :=
  ∀ n, P1429604489861647677.a n = A362869 (n + 1)

end A362869

/-! ## A362869.P8615646726810640132

`A001082(n+2)+A008794(n)-A008795(n+1)`
-/

namespace A362869.P8615646726810640132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 2) + (A008794 n - A008795 (n + 1))

end

end A362869.P8615646726810640132

namespace A362869

/-- `A001082(n+2)+A008794(n)-A008795(n+1)` -/
def P8615646726810640132.Spec : Prop :=
  ∀ n, P8615646726810640132.a n = A362869 (n + 1)

end A362869

/-! ## A362869.P365919119254393391

`A274830(n+2)+A085787(n)-A085787(n+1)`
-/

namespace A362869.P365919119254393391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274830 (n + 2) + (A085787 n - A085787 (n + 1))

end

end A362869.P365919119254393391

namespace A362869

/-- `A274830(n+2)+A085787(n)-A085787(n+1)` -/
def P365919119254393391.Spec : Prop :=
  ∀ n, P365919119254393391.a n = A362869 (n + 1)

end A362869

/-! ## A362869.P9333468678234023055

`A212989(Δ[n²])-(n+1)`
-/

namespace A362869.P9333468678234023055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212989 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A362869.P9333468678234023055

namespace A362869

/-- `A212989(Δ[n²])-(n+1)` -/
def P9333468678234023055.Spec : Prop :=
  ∀ n, P9333468678234023055.a n = A362869 (n + 1)

end A362869

/-!
# A362871: Leading digit of 6^n.

The programs for A362871, there is no canonical definition to state claims against.
-/

/-! ## A362871.P12289704024843013981

`A071588(n)%10`
-/

namespace A362871.P12289704024843013981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071588 n) 10

end

end A362871.P12289704024843013981

/-!
# A362872: Length of the "fractional part" of the phi-representation of n.

The programs for A362872, there is no canonical definition to state claims against.
-/

/-! ## A362872.P2901232767724375054

`and(-2, A362692(n))`
-/

namespace A362872.P2901232767724375054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A362692 n)

end

end A362872.P2901232767724375054

/-! ## A362872.P13601685998650747564

`∑[2*char[∑[A005248(n)]]]`
-/

namespace A362872.P13601685998650747564
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362872.P13601685998650747564

/-! ## A362872.P9786445198389280213

`∑[2*char[A002878(n)+1]]`
-/

namespace A362872.P9786445198389280213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362872.P9786445198389280213

/-! ## A362872.P12516251267740172834

`2*∑[char[∑[A000032(2*n)]]]`
-/

namespace A362872.P12516251267740172834
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362872.P12516251267740172834

/-! ## A362872.P3725186331320175676

`2*∑[char[∑[A061084(2*n+1)]]]`
-/

namespace A362872.P3725186331320175676
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362872.P3725186331320175676

/-! ## A362872.P15497336214522268052

`∑[2*char[∑[A001006(n+2)-n]]]`
-/

namespace A362872.P15497336214522268052
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 2) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362872.P15497336214522268052

/-! ## A362872.P17924090703744336277

`A052928(A362692(n))`
-/

namespace A362872.P17924090703744336277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A362692 n).toNat

end

end A362872.P17924090703744336277

/-! ## A362872.P7331058023775805538

`A052928(A362918(n))`
-/

namespace A362872.P7331058023775805538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A362918 n).toNat

end

end A362872.P7331058023775805538

/-! ## A362872.P16418309870036996814

`and(A153480(n), A362918(n))`
-/

namespace A362872.P16418309870036996814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153480 n) (A362918 n)

end

end A362872.P16418309870036996814

/-! ## A362872.P8384632789923723177

`and(A182467(n), A362918(n))`
-/

namespace A362872.P8384632789923723177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A182467 n) (A362918 n)

end

end A362872.P8384632789923723177

/-!
# A362874: Number of strongly magic quad squares that can be formed using cards from Quads-2^n deck.

The programs for A362874, the canonical program `A362874.P5200122764253207242` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362874 has offset 4).

The definition of A362874 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362874.P5200122764253207242

`2^(n+4)*(2^(n+4)-1)*(2^(n+4)-2)*(2^(n+4)-4)*(2^(n+4)-8)`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A362874

/-- `2^(n+4)*(2^(n+4)-1)*(2^(n+4)-2)*(2^(n+4)-4)*(2^(n+4)-8)` -/
def P5200122764253207242.Spec : Prop :=
  ∀ n, P5200122764253207242.a n = A362874 (n + 4)

theorem P5200122764253207242.correct : P5200122764253207242.Spec := by
  intro n
  simp only [A362874, Nat.add_sub_cancel]

end A362874

/-!
# A362882: Number of even numbers generated by adding two distinct odd primes <= prime(n+1).

The programs for A362882, there is no canonical definition to state claims against.
-/

/-! ## A362882.P12095145942314937497

`∑[A083060(2+n)]`
-/

namespace A362882.P12095145942314937497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083060 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362882.P12095145942314937497

/-! ## A362882.P1043832586858575741

`A049880(n+2)-(n+1)`
-/

namespace A362882.P1043832586858575741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049880 (n + 2) - (n + 1 : ℤ)

end

end A362882.P1043832586858575741

/-! ## A362882.P4096760087629975075

`A253250(n)+a(n-1)-1` with `a(0)=0`
-/

namespace A362882.P4096760087629975075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A253250 n + (a (n - 1) - 1)

end

end A362882.P4096760087629975075

/-! ## A362882.P9036724167616395292

`A023443(A049880(n+2)-n)`
-/

namespace A362882.P9036724167616395292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A049880 (n + 2) - (n : ℤ)).toNat

end

end A362882.P9036724167616395292

/-! ## A362882.P17134120924888018875

`A174007(2*(n+2))+A049880(n+2)`
-/

namespace A362882.P17134120924888018875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174007 (2 * (n + 2)) + A049880 (n + 2)

end

end A362882.P17134120924888018875

/-! ## A362882.P2364178090400247788

`abs(∑[A253250(A028310(n))]-1)-(n+1)`
-/

namespace A362882.P2364178090400247788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253250 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1| - (n + 1 : ℤ)

end

end A362882.P2364178090400247788

/-! ## A362882.P13759782770006389905

`(A049880(n+2)+xor(n, -1))%A000124(n)`
-/

namespace A362882.P13759782770006389905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049880 (n + 2) + Int.xor (n : ℤ) (-1)) (A000124 n)

end

end A362882.P13759782770006389905

/-! ## A362882.P11967626148352391455

`1-A253250(n+1)-∑[1-A253250(n+1)]`
-/

namespace A362882.P11967626148352391455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A253250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A253250 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362882.P11967626148352391455

/-! ## A362882.P1477984781764367566

`∑[A253250(A028310(n))-A054977(n)]`
-/

namespace A362882.P1477984781764367566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253250 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362882.P1477984781764367566

/-! ## A362882.P5645938997363418770

`A001478(n+1)+∑[A253250(A028310(n))]-1`
-/

namespace A362882.P5645938997363418770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253250 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A362882.P5645938997363418770

/-!
# A362883: a(n) = A055498(n) - A055500(n).

The programs for A362883, there is no canonical definition to state claims against.
-/

/-! ## A362883.P10543237193728473399

`A055498(n)-A055500(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362883.P10543237193728473399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055498 n - A055500 n

end

end A362883.P10543237193728473399

/-! ## A362883.P2532958651213518551

`∪[A073022(n+1), A055499(n)]-A055500(n)`
-/

namespace A362883.P2532958651213518551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055499 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A055500 n

end

end A362883.P2532958651213518551

/-! ## A362883.P3909622598232385493

`A055498(n)-A115350(A345020(n))`
-/

namespace A362883.P3909622598232385493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055498 n - A115350 (A345020 n).toNat

end

end A362883.P3909622598232385493

/-!
# A362884: a(n) = (a(n-1)*a(n-2)*a(n-3)+64)/(4*a(n-4)) with a(0) = a(2) = a(3) = 2 and a(1) = 16.

The programs for A362884, the canonical program `A362884.P18343904038144239915` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362884 has offset 0).

The definition of A362884 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362884.P18343904038144239915

`(a(n-1)*a(n-2)*a(n-3)+64)/(4*a(n-4))` with `a(0)=2, a(1)=16, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A362884

/-- `(a(n-1)*a(n-2)*a(n-3)+64)/(4*a(n-4))` -/
def P18343904038144239915.Spec : Prop :=
  ∀ n, P18343904038144239915.a n = (A362884 n : ℚ)

end A362884

/-!
# A362885: Array read by ascending antidiagonals: A(n, k) = (1 + 2*n)*k^n.

The programs for A362885, the canonical program `A362885.P8325505387999950337` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362885 has offset 0).

The definition of A362885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362885.P8325505387999950337

`(1+2*(row(n)-col(n)))*col(n)^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A362885

/-- `(1+2*(row(n)-col(n)))*col(n)^(row(n)-col(n))` -/
def P8325505387999950337.Spec : Prop :=
  ∀ n, P8325505387999950337.a n = (A362885 n : ℚ)

end A362885

/-! ## A362885.P12996307716088997416

`(∑[2*n]%(comp[∑[n]]+1)+1)*A004248(n)`
-/

namespace A362885.P12996307716088997416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 : ℕ) : ℤ) * A004248 n

end

end A362885.P12996307716088997416

namespace A362885

/-- `(∑[2*n]%(comp[∑[n]]+1)+1)*A004248(n)` -/
def P12996307716088997416.Spec : Prop :=
  ∀ n, P12996307716088997416.a n = A362885 n

end A362885

/-! ## A362885.P10754136521577349612

`A004248(n)*A099375(n)`
-/

namespace A362885.P10754136521577349612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n * A099375 n

end

end A362885.P10754136521577349612

namespace A362885

/-- `A004248(n)*A099375(n)` -/
def P10754136521577349612.Spec : Prop :=
  ∀ n, P10754136521577349612.a n = A362885 n

end A362885

/-! ## A362885.P6702869845990095637

`A004248(n)*A131414(n+1)`
-/

namespace A362885.P6702869845990095637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n * A131414 (n + 1)

end

end A362885.P6702869845990095637

namespace A362885

/-- `A004248(n)*A131414(n+1)` -/
def P6702869845990095637.Spec : Prop :=
  ∀ n, P6702869845990095637.a n = A362885 n

end A362885

/-! ## A362885.P11515400340642854868

`A004248(n)*A005408(A025660(n+1))`
-/

namespace A362885.P11515400340642854868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n * A005408 (A025660 (n + 1)).toNat

end

end A362885.P11515400340642854868

namespace A362885

/-- `A004248(n)*A005408(A025660(n+1))` -/
def P11515400340642854868.Spec : Prop :=
  ∀ n, P11515400340642854868.a n = A362885 n

end A362885

/-! ## A362885.P535496768981407490

`A004248(n)*A158405(A038722(n+1))`
-/

namespace A362885.P535496768981407490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n * A158405 (A038722 (n + 1)).toNat

end

end A362885.P535496768981407490

namespace A362885

/-- `A004248(n)*A158405(A038722(n+1))` -/
def P535496768981407490.Spec : Prop :=
  ∀ n, P535496768981407490.a n = A362885 n

end A362885

/-!
# A362886: Antidiagonal sums of A362885.

The programs for A362886, the canonical program `A362886.P134669266685975036` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362886 has offset 0).

The definition of A362886 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362886.P134669266685975036

`∑{#}[n, (1+2*(n-#))*#^(n-#)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A362886

/-- `∑{#}[n, (1+2*(n-#))*#^(n-#)]` -/
def P134669266685975036.Spec : Prop :=
  ∀ n, P134669266685975036.a n = (A362886 n : ℚ)

end A362886

/-! ## A362886.P4284136470741001352

`A129309(A150807(n))`
-/

namespace A362886.P4284136470741001352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129309 (A150807 n).toNat

end

end A362886.P4284136470741001352

namespace A362886

/-- `A129309(A150807(n))` -/
def P4284136470741001352.Spec : Prop :=
  ∀ n, P4284136470741001352.a n = A362886 n

end A362886

/-! ## A362886.P4368805045359846539

`A100196(A127087(n+1))-A081134(n+1)`
-/

namespace A362886.P4368805045359846539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A127087 (n + 1)).toNat - A081134 (n + 1)

end

end A362886.P4368805045359846539

namespace A362886

/-- `A100196(A127087(n+1))-A081134(n+1)` -/
def P4368805045359846539.Spec : Prop :=
  ∀ n, P4368805045359846539.a n = A362886 n

end A362886

/-!
# A362887: a(0) = 0; for n>=1, a(n) is the smallest number whose Hamming distance from a(n-1) is prime(n).

The programs for A362887, there is no canonical definition to state claims against.
-/

/-! ## A362887.P12841865030014289219

`A001348(n)-a(n-1)` with `a(0)=0`
-/

namespace A362887.P12841865030014289219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001348 n - a (n - 1)

end

end A362887.P12841865030014289219

/-! ## A362887.P6882043287359701710

`record[A063670(floor(n/10))]-a(n-1)` with `a(0)=0`
-/

namespace A362887.P6882043287359701710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063670 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A362887.P6882043287359701710

/-! ## A362887.P4706880277572007478

`A000225(A000040(n))-a(n-1)` with `a(0)=0`
-/

namespace A362887.P4706880277572007478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000225 (A000040 n).toNat - a (n - 1)

end

end A362887.P4706880277572007478

/-! ## A362887.P13312670462802280413

`A000225(A008578(n+1))-a(n-1)` with `a(0)=0`
-/

namespace A362887.P13312670462802280413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000225 (A008578 (n + 1)).toNat - a (n - 1)

end

end A362887.P13312670462802280413

/-!
# A362889: a(n) = n for n <= 2. Let i = a(n-2), j = a(n-1), q = gpf(i*j) = prime(s), and k = product of all distinct primes < q which do not divide i*j. For n > 2 a(n) is the least novel multiple of either k (if k is not the empty product), or of prime(s+1) if it is.

The programs for A362889, there is no canonical definition to state claims against.
-/

/-! ## A362889.P17114851036517143856

`A374379(n+1)%A007622(A084139(3*n+1))`
-/

namespace A362889.P17114851036517143856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374379 (n + 1)) (A007622 (A084139 (3 * n + 1)).toNat)

end

end A362889.P17114851036517143856

/-! ## A362889.P7014395187206349649

`A037291(A160014(n))*A374379(n+1)`
-/

namespace A362889.P7014395187206349649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037291 (A160014 n).toNat * A374379 (n + 1)

end

end A362889.P7014395187206349649

/-! ## A362889.P16352224891761709446

`A374379(n+1)%A210712(A325677(n+1))`
-/

namespace A362889.P16352224891761709446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374379 (n + 1)) (A210712 (A325677 (n + 1)).toNat)

end

end A362889.P16352224891761709446

/-! ## A362889.P16289333402939806436

`A374379(n+1)+A000122(A006450(3*n+2))`
-/

namespace A362889.P16289333402939806436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374379 (n + 1) + A000122 (A006450 (3 * n + 2)).toNat

end

end A362889.P16289333402939806436

/-! ## A362889.P15199801178478364742

`A374379(n+1)+A007949(A079524(3*n+1))`
-/

namespace A362889.P15199801178478364742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374379 (n + 1) + A007949 (A079524 (3 * n + 1)).toNat

end

end A362889.P15199801178478364742

/-! ## A362889.P1438430199309391084

`A374379(n+1)+A000038(A292733(n+1))`
-/

namespace A362889.P1438430199309391084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374379 (n + 1) + A000038 (A292733 (n + 1)).toNat

end

end A362889.P1438430199309391084

/-! ## A362889.P12015679193125826951

`A040001(A282037(n+1))*A374379(n+1)`
-/

namespace A362889.P12015679193125826951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A282037 (n + 1)).toNat * A374379 (n + 1)

end

end A362889.P12015679193125826951

/-! ## A362889.P14005007373634944828

`or(A319401(A151935(n)), A374379(n+1))`
-/

namespace A362889.P14005007373634944828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A319401 (A151935 n).toNat) (A374379 (n + 1))

end

end A362889.P14005007373634944828

/-! ## A362889.P1048520347139091974

`A374379(n+1)%A372308(n+5)`
-/

namespace A362889.P1048520347139091974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374379 (n + 1)) (A372308 (n + 5))

end

end A362889.P1048520347139091974

/-! ## A362889.P18394453032926994994

`A374379(n+1)+A000014(A151935(n+3))`
-/

namespace A362889.P18394453032926994994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374379 (n + 1) + A000014 (A151935 (n + 3)).toNat

end

end A362889.P18394453032926994994

/-!
# A362890: a(1)=a(2)=1. For n>2, a(n) is the number of times that a(n-1) and a(n-2) are adjacent in the sequence thus far (in any order).

The programs for A362890, there is no canonical definition to state claims against.
-/

/-! ## A362890.P2519067705895928678

`gcd(A057353(A304025(n+1)), A065825(2*(n+1)))`
-/

namespace A362890.P2519067705895928678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057353 (A304025 (n + 1)).toNat) (A065825 (2 * (n + 1)))

end

end A362890.P2519067705895928678

/-! ## A362890.P2181855396793631247

`gcd(A055642(A294414(n)), A083920(n+4))`
-/

namespace A362890.P2181855396793631247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055642 (A294414 n).toNat) (A083920 (n + 4))

end

end A362890.P2181855396793631247

/-! ## A362890.P12709031337738454031

`A124734(A029494(n+2)*A178095(n+1))`
-/

namespace A362890.P12709031337738454031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124734 (A029494 (n + 2) * A178095 (n + 1)).toNat

end

end A362890.P12709031337738454031

/-! ## A362890.P6926852553237859425

`A069288(A122897(3*(n+1))+A074985(n+1))`
-/

namespace A362890.P6926852553237859425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (A122897 (3 * (n + 1)) + A074985 (n + 1)).toNat

end

end A362890.P6926852553237859425

/-! ## A362890.P6762342779065240660

`A128538(A300660(n)+2)`
-/

namespace A362890.P6762342779065240660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128538 (A300660 n + 2).toNat

end

end A362890.P6762342779065240660

/-!
# A362891: Expansion of e.g.f. 1/(1 + LambertW(x^2 * log(1-x))).

The programs for A362891, there is no canonical definition to state claims against.
-/

/-! ## A362891.P10927247325886690155

`A263273(A353228(n))*A371148(n+2)`
-/

namespace A362891.P10927247325886690155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A353228 n).toNat * A371148 (n + 2)

end

end A362891.P10927247325886690155

/-! ## A362891.P11143905827389895064

`A222256(A371302(n))`
-/

namespace A362891.P11143905827389895064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222256 (A371302 n).toNat

end

end A362891.P11143905827389895064

/-! ## A362891.P3829689026106984874

`A265352(A371233(n))`
-/

namespace A362891.P3829689026106984874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A371233 n).toNat

end

end A362891.P3829689026106984874

/-!
# A362892: Expansion of e.g.f. 1/(1 + LambertW(-x^2 * (exp(x) - 1))).

The programs for A362892, there is no canonical definition to state claims against.
-/

/-! ## A362892.P12799858275709856752

`A375663(n)/A297770(A047849(n))`
-/

namespace A362892.P12799858275709856752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375663 n : ℚ) / (A297770 (A047849 n).toNat : ℚ)

end

end A362892.P12799858275709856752

/-! ## A362892.P1606845991924293802

`A009947(A375663(n)+1)`
-/

namespace A362892.P1606845991924293802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (A375663 n + 1).toNat

end

end A362892.P1606845991924293802

/-! ## A362892.P839758220269335863

`A002264(A375663(n)+2)`
-/

namespace A362892.P839758220269335863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A375663 n + 2).toNat

end

end A362892.P839758220269335863

/-!
# A362894: Triangle read by rows: T(n,k) is the number of simple connected graphs on n unlabeled nodes having Hadwiger number k, 1 <= k <= n.

The programs for A362894, there is no canonical definition to state claims against.
-/

/-! ## A362894.P4889277225341791637

`A325268(n)+A306433(A306444(n))`
-/

namespace A362894.P4889277225341791637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325268 n + A306433 (A306444 n).toNat

end

end A362894.P4889277225341791637

/-! ## A362894.P12024429122197346776

`A293113(n)+A090750(A325712(n+1))`
-/

namespace A362894.P12024429122197346776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 n + A090750 (A325712 (n + 1)).toNat

end

end A362894.P12024429122197346776

/-! ## A362894.P15041198877325719973

`A346415(n)-A240467(A279755(n))`
-/

namespace A362894.P15041198877325719973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346415 n - A240467 (A279755 n).toNat

end

end A362894.P15041198877325719973

/-! ## A362894.P18266023820207347911

`A346415(n)+A151564(A035422(n+1))`
-/

namespace A362894.P18266023820207347911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346415 n + A151564 (A035422 (n + 1)).toNat

end

end A362894.P18266023820207347911

/-! ## A362894.P1765485938625197112

`A346415(n)+A010054(A213249(n+2))`
-/

namespace A362894.P1765485938625197112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346415 n + A010054 (A213249 (n + 2)).toNat

end

end A362894.P1765485938625197112

/-!
# A362898: Number of nonisomorphic unordered triples of endofunctions on an n-set.

The programs for A362898, there is no canonical definition to state claims against.
-/

/-! ## A362898.P4636572500472931802

`A362897(A056000(n)+6)`
-/

namespace A362898.P4636572500472931802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362897 (A056000 n + 6).toNat

end

end A362898.P4636572500472931802

/-! ## A362898.P11713845295131584302

`A362897(A000217(n+4)-4)`
-/

namespace A362898.P11713845295131584302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362897 (A000217 (n + 4) - 4).toNat

end

end A362898.P11713845295131584302

/-! ## A362898.P3735294187369628008

`A362897(eq[4, A004736(n+1)])`
-/

namespace A362898.P3735294187369628008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362897 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362898.P3735294187369628008

/-! ## A362898.P14245091968680916954

`A362897(2*n+3+A000217(n+2))`
-/

namespace A362898.P14245091968680916954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362897 ((2 * n + 3 : ℤ) + A000217 (n + 2)).toNat

end

end A362898.P14245091968680916954

/-! ## A362898.P13785064864415559705

`A362897(lt[A362897(n+3), A362648(n+2)])`
-/

namespace A362898.P13785064864415559705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362897 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362648 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362897 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A362898.P13785064864415559705

/-!
# A362899: Array read by antidiagonals: T(n,k) is the number of nonisomorphic multisets of fixed-point-free endofunctions on an n-set with k endofunctions.

The programs for A362899, there is no canonical definition to state claims against.
-/

/-! ## A362899.P8401982083317929592

`A352129(A184848(n+1)*A390369(n))`
-/

namespace A362899.P8401982083317929592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352129 (A184848 (n + 1) * A390369 n).toNat

end

end A362899.P8401982083317929592

/-! ## A362899.P7373826824481685691

`A341981(A226441(n+1)%A157156(n))`
-/

namespace A362899.P7373826824481685691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341981 ((Int.tmod (A226441 (n + 1)) (A157156 n)).toNat + 101)

end

end A362899.P7373826824481685691

/-! ## A362899.P16390854481357476061

`A187069(A152977(n)%A032644(3*n+2))`
-/

namespace A362899.P16390854481357476061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (Int.tmod (A152977 n) (A032644 (3 * n + 2))).toNat

end

end A362899.P16390854481357476061

/-! ## A362899.P3796956217870130110

`∑{e}[A266994(n+1)²²+1, #]`
-/

namespace A362899.P3796956217870130110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A266994 (n + 1) ^ 2) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A362899.P3796956217870130110

/-! ## A362899.P11183916392584271127

`A301343(A046716(n))`
-/

namespace A362899.P11183916392584271127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301343 (A046716 n).toNat

end

end A362899.P11183916392584271127

