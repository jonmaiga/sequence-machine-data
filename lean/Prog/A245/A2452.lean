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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
# A245200: Smallest positive solution to k == 0 mod 3 and k == 1 mod prime(n).

The programs for A245200, the canonical program `A245200.P9972553082105733129` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245200 has offset 3).

The definition of A245200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245200.P9972553082105733129

`3*A286679(n+3)%A004139(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A245200

/-- `3*A286679(n+3)%A004139(n+1)` -/
def P9972553082105733129.Spec : Prop :=
  ∀ n, P9972553082105733129.a n = A245200 (n + 3)

theorem P9972553082105733129.correct : P9972553082105733129.Spec := by
  intro n
  simp only [A245200, Nat.add_sub_cancel]

end A245200

/-! ## A245200.P14258677404126509712

`A397571(n+2)+2`
-/

namespace A245200.P14258677404126509712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397571 (n + 2) + 2

end

end A245200.P14258677404126509712

namespace A245200

/-- `A397571(n+2)+2` -/
def P14258677404126509712.Spec : Prop :=
  ∀ n, P14258677404126509712.a n = A245200 (n + 3)

end A245200

/-! ## A245200.P2464182252047522439

`3*A283419(n+3)`
-/

namespace A245200.P2464182252047522439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A283419 (n + 3)

end

end A245200.P2464182252047522439

namespace A245200

/-- `3*A283419(n+3)` -/
def P2464182252047522439.Spec : Prop :=
  ∀ n, P2464182252047522439.a n = A245200 (n + 3)

end A245200

/-! ## A245200.P4517265195462478532

`A165351(A296058(n+2))`
-/

namespace A245200.P4517265195462478532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165351 (A296058 (n + 2)).toNat

end

end A245200.P4517265195462478532

namespace A245200

/-- `A165351(A296058(n+2))` -/
def P4517265195462478532.Spec : Prop :=
  ∀ n, P4517265195462478532.a n = A245200 (n + 3)

end A245200

/-! ## A245200.P17541379644668050536

`A165351(A042948(A181709(n+1)))`
-/

namespace A245200.P17541379644668050536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165351 (A042948 (A181709 (n + 1)).toNat).toNat

end

end A245200.P17541379644668050536

namespace A245200

/-- `A165351(A042948(A181709(n+1)))` -/
def P17541379644668050536.Spec : Prop :=
  ∀ n, P17541379644668050536.a n = A245200 (n + 3)

end A245200

/-! ## A245200.P6140265994575325960

`3*A006369(A048673(p?[2*n+1]))`
-/

namespace A245200.P6140265994575325960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006369 (A048673 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A245200.P6140265994575325960

namespace A245200

/-- `3*A006369(A048673(p?[2*n+1]))` -/
def P6140265994575325960.Spec : Prop :=
  ∀ n, P6140265994575325960.a n = A245200 (n + 3)

end A245200

/-! ## A245200.P1312565275144540503

`3*A085767(A000040(n+3))`
-/

namespace A245200.P1312565275144540503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A085767 (A000040 (n + 3)).toNat

end

end A245200.P1312565275144540503

namespace A245200

/-- `3*A085767(A000040(n+3))` -/
def P1312565275144540503.Spec : Prop :=
  ∀ n, P1312565275144540503.a n = A245200 (n + 3)

end A245200

/-! ## A245200.P12795196977549695728

`A008585(A085767(p?[A267872(n)]))`
-/

namespace A245200.P12795196977549695728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A085767 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A245200.P12795196977549695728

namespace A245200

/-- `A008585(A085767(p?[A267872(n)]))` -/
def P12795196977549695728.Spec : Prop :=
  ∀ n, P12795196977549695728.a n = A245200 (n + 3)

end A245200

/-! ## A245200.P6093529606048989876

`A008486(A092092(p?[A267872(n)]))`
-/

namespace A245200.P6093529606048989876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A092092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A245200.P6093529606048989876

namespace A245200

/-- `A008486(A092092(p?[A267872(n)]))` -/
def P6093529606048989876.Spec : Prop :=
  ∀ n, P6093529606048989876.a n = A245200 (n + 3)

end A245200

/-! ## A245200.P12450023427631550901

`A008486(A092092(p?[A007310(n+1)]))`
-/

namespace A245200.P12450023427631550901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A092092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A245200.P12450023427631550901

namespace A245200

/-- `A008486(A092092(p?[A007310(n+1)]))` -/
def P12450023427631550901.Spec : Prop :=
  ∀ n, P12450023427631550901.a n = A245200 (n + 3)

end A245200

/-! ## A245200.P17371766632112694745

`A078181(A065091(n+2))+A065091(n+2)`
-/

namespace A245200.P17371766632112694745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (A065091 (n + 2)).toNat + A065091 (n + 2)

end

end A245200.P17371766632112694745

namespace A245200

/-- `A078181(A065091(n+2))+A065091(n+2)` -/
def P17371766632112694745.Spec : Prop :=
  ∀ n, P17371766632112694745.a n = A245200 (n + 3)

end A245200

/-! ## A245200.P1447012527911406727

`A004486(A397571(n+2))`
-/

namespace A245200.P1447012527911406727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004486 (A397571 (n + 2)).toNat

end

end A245200.P1447012527911406727

namespace A245200

/-- `A004486(A397571(n+2))` -/
def P1447012527911406727.Spec : Prop :=
  ∀ n, P1447012527911406727.a n = A245200 (n + 3)

end A245200

/-!
# A245202: Numbers k such that tau(k) + phi(k) is a perfect square.

The programs for A245202, the canonical program `A245202.P1209277125421135516` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245202 has offset 1).

The definition of A245202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245202.P1209277125421135516

`eq[1, A007913(A073757(n+1)+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A245202

/-- `eq[1, A007913(A073757(n+1)+1)]+1` -/
def P1209277125421135516.Spec : Prop :=
  ∀ n, (P1209277125421135516.a n : ℤ) = A245202 (n + 1)

theorem P1209277125421135516.correct : P1209277125421135516.Spec := by
  intro n
  simp only [A245202, Nat.add_sub_cancel]

end A245202

/-!
# A245203: Least k>=0 such that A004767(n) = 4n+3 is the mean of primes 4(n-k)+3 and 4(n+k)+3; or -1 if no such k exists.

The programs for A245203, there is no canonical definition to state claims against.
-/

/-! ## A245203.P336356013993844737

`and(A160493(n+1), A303560(A267836(n+1)))`
-/

namespace A245203.P336356013993844737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160493 (n + 1)) (A303560 ((A267836 (n + 1)).toNat + 1))

end

end A245203.P336356013993844737

/-! ## A245203.P7187743629840894374

`A126795(A026676(n+1))*A343914(2*(n+1))`
-/

namespace A245203.P7187743629840894374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126795 (A026676 (n + 1)).toNat * A343914 (2 * (n + 1))

end

end A245203.P7187743629840894374

/-! ## A245203.P8791263321384908051

`A003356(A172001(3*n+4))%A271721(2*n+1)`
-/

namespace A245203.P8791263321384908051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003356 (A172001 (3 * n + 4)).toNat) (A271721 (2 * n + 1))

end

end A245203.P8791263321384908051

/-! ## A245203.P2778308720632050997

`xor(A099302(2*n+5), A330098(A007318(3*n+4)))`
-/

namespace A245203.P2778308720632050997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A099302 (2 * n + 5)) (A330098 (A007318 (3 * n + 4)).toNat)

end

end A245203.P2778308720632050997

/-! ## A245203.P11216602365052333570

`A122201(and(n*(n+3)/2, A286347(n)))`
-/

namespace A245203.P11216602365052333570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122201 (Int.land (SequenceMachineLib.roundAway ((n * (n + 3) : ℚ) / 2)) (A286347 n)).toNat

end

end A245203.P11216602365052333570

/-!
# A245207: a(n) = floor((n + sqrt(2))^2).

The programs for A245207, the canonical program `A245207.P7663719319019513434` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245207 has offset 0).

The definition of A245207 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+sqrt(2))²)` (program `A245207.P7663719319019513434`, by `A245207.P7663719319019513434.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245207.P7663719319019513434

`floor((n+sqrt(2))²)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245207

/-- `floor((n+sqrt(2))²)` -/
def P7663719319019513434.Spec : Prop :=
  ∀ n, P7663719319019513434.a n = A245207 n

theorem P7663719319019513434.correct : P7663719319019513434.Spec := by
  intro n
  simp only [A245207]

end A245207

/-! ## A245207.P3359943146122172598

`∑[2*(n+1)]-A195177(n)`
-/

namespace A245207.P3359943146122172598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A195177 n

end

end A245207.P3359943146122172598

namespace A245207

/-- `∑[2*(n+1)]-A195177(n)` -/
def P3359943146122172598.Spec : Prop :=
  ∀ n, P3359943146122172598.a n = A245207 n

end A245207

/-! ## A245207.P81043312937368578

`A000096(n+1)+∑[n]-A195177(n)`
-/

namespace A245207.P81043312937368578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A195177 n)

end

end A245207.P81043312937368578

namespace A245207

/-- `A000096(n+1)+∑[n]-A195177(n)` -/
def P81043312937368578.Spec : Prop :=
  ∀ n, P81043312937368578.a n = A245207 n

end A245207

/-! ## A245207.P17752384862055490146

`∑[n+1]+A000217(n+1)-A195177(n)`
-/

namespace A245207.P17752384862055490146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A000217 (n + 1) - A195177 n)

end

end A245207.P17752384862055490146

namespace A245207

/-- `∑[n+1]+A000217(n+1)-A195177(n)` -/
def P17752384862055490146.Spec : Prop :=
  ∀ n, P17752384862055490146.a n = A245207 n

end A245207

/-! ## A245207.P2291706563199861814

`A001951(2*n)+n²+2`
-/

namespace A245207.P2291706563199861814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (2 * n) + (n ^ 2 + 2 : ℤ)

end

end A245207.P2291706563199861814

namespace A245207

/-- `A001951(2*n)+n²+2` -/
def P2291706563199861814.Spec : Prop :=
  ∀ n, P2291706563199861814.a n = A245207 n

end A245207

/-! ## A245207.P4718541525696012461

`A059100(n)+A001951(2*n)`
-/

namespace A245207.P4718541525696012461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 n + A001951 (2 * n)

end

end A245207.P4718541525696012461

namespace A245207

/-- `A059100(n)+A001951(2*n)` -/
def P4718541525696012461.Spec : Prop :=
  ∀ n, P4718541525696012461.a n = A245207 n

end A245207

/-! ## A245207.P3328538404561778035

`n²+A001951(A005843(n))+2`
-/

namespace A245207.P3328538404561778035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A001951 (A005843 n).toNat + 2)

end

end A245207.P3328538404561778035

namespace A245207

/-- `n²+A001951(A005843(n))+2` -/
def P3328538404561778035.Spec : Prop :=
  ∀ n, P3328538404561778035.a n = A245207 n

end A245207

/-! ## A245207.P14996229359558424993

`A097508(2*n)+(n+1)²+1`
-/

namespace A245207.P14996229359558424993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (2 * n) + ((n + 1) ^ 2 + 1 : ℤ)

end

end A245207.P14996229359558424993

namespace A245207

/-- `A097508(2*n)+(n+1)²+1` -/
def P14996229359558424993.Spec : Prop :=
  ∀ n, P14996229359558424993.a n = A245207 n

end A245207

/-! ## A245207.P12878975082481173544

`A003056(∑[A017101(n)])+n²`
-/

namespace A245207.P12878975082481173544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n ^ 2 : ℤ)

end

end A245207.P12878975082481173544

namespace A245207

/-- `A003056(∑[A017101(n)])+n²` -/
def P12878975082481173544.Spec : Prop :=
  ∀ n, P12878975082481173544.a n = A245207 n

end A245207

/-!
# A245211: a(n) = Sum_{(d<n) | n} (d * tau(d)).

The programs for A245211, the canonical program `A245211.P9459255729961917414` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245211 has offset 1).

The definition of A245211 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245211.P271669343196635090

`∑{d}[n+1, #*A000005(#)-(n+1)]`
-/

namespace A245211.P271669343196635090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * A000005 d - (n + 1 : ℤ))

end

end A245211.P271669343196635090

namespace A245211

/-- `∑{d}[n+1, #*A000005(#)-(n+1)]` -/
def P271669343196635090.Spec : Prop :=
  ∀ n, P271669343196635090.a n = A245211 (n + 1)

end A245211

/-! ## A245211.P9459255729961917414

`A060640(n+1)-A038040(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A245211

/-- `A060640(n+1)-A038040(n+1)` -/
def P9459255729961917414.Spec : Prop :=
  ∀ n, P9459255729961917414.a n = A245211 (n + 1)

theorem P9459255729961917414.correct : P9459255729961917414.Spec := by
  intro n
  simp only [A245211, Nat.add_sub_cancel]

end A245211

/-! ## A245211.P3074202699711942627

`A038040(n+1)-A245212(n+1)`
-/

namespace A245211.P3074202699711942627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - A245212 (n + 1)

end

end A245211.P3074202699711942627

namespace A245211

/-- `A038040(n+1)-A245212(n+1)` -/
def P3074202699711942627.Spec : Prop :=
  ∀ n, P3074202699711942627.a n = A245211 (n + 1)

theorem P3074202699711942627.correct : P3074202699711942627.Spec := by
  intro n
  simp only [A245211, Nat.add_sub_cancel, A245211.P3074202699711942627.a, A245211.P9459255729961917414.a, A038040, A038040.P16512896840577774730.a, A060640, A060640.P5524646078330777328.f1, A060640.P5524646078330777328.a, A245212, A245212.P13496061215896948389.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A245211

/-! ## A245211.P9761922956467441006

`∑{d}[n+1, A038040(#)-(n+1)]`
-/

namespace A245211.P9761922956467441006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A038040 d - (n + 1 : ℤ))

end

end A245211.P9761922956467441006

namespace A245211

/-- `∑{d}[n+1, A038040(#)-(n+1)]` -/
def P9761922956467441006.Spec : Prop :=
  ∀ n, P9761922956467441006.a n = A245211 (n + 1)

end A245211

/-! ## A245211.P10047918032009338997

`∑{d}[n+1, (n+1)/#*A001065(#)]`
-/

namespace A245211.P10047918032009338997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A001065 d : ℚ)

end

end A245211.P10047918032009338997

namespace A245211

/-- `∑{d}[n+1, (n+1)/#*A001065(#)]` -/
def P10047918032009338997.Spec : Prop :=
  ∀ n, P10047918032009338997.a n = (A245211 (n + 1) : ℚ)

end A245211

/-! ## A245211.P12203657260926232463

`A060640(n+1)-(n+1)*A000005(n+1)`
-/

namespace A245211.P12203657260926232463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060640 (n + 1) - (n + 1 : ℤ) * A000005 (n + 1)

end

end A245211.P12203657260926232463

namespace A245211

/-- `A060640(n+1)-(n+1)*A000005(n+1)` -/
def P12203657260926232463.Spec : Prop :=
  ∀ n, P12203657260926232463.a n = A245211 (n + 1)

end A245211

/-! ## A245211.P13195969819311662874

`∑{d}[n+1, A018804(#)*A032741((n+1)/#)]`
-/

namespace A245211.P13195969819311662874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A032741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245211.P13195969819311662874

namespace A245211

/-- `∑{d}[n+1, A018804(#)*A032741((n+1)/#)]` -/
def P13195969819311662874.Spec : Prop :=
  ∀ n, P13195969819311662874.a n = A245211 (n + 1)

end A245211

/-! ## A245211.P7605670183106834284

`∑{d}[n+1, A000203(#)*A051953((n+1)/#)]`
-/

namespace A245211.P7605670183106834284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A051953 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245211.P7605670183106834284

namespace A245211

/-- `∑{d}[n+1, A000203(#)*A051953((n+1)/#)]` -/
def P7605670183106834284.Spec : Prop :=
  ∀ n, P7605670183106834284.a n = A245211 (n + 1)

end A245211

/-! ## A245211.P13276391319290890484

`∑{d}[n+1, A000005(#)*A063754((n+1)/#)]`
-/

namespace A245211.P13276391319290890484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A063754 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245211.P13276391319290890484

namespace A245211

/-- `∑{d}[n+1, A000005(#)*A063754((n+1)/#)]` -/
def P13276391319290890484.Spec : Prop :=
  ∀ n, P13276391319290890484.a n = A245211 (n + 1)

end A245211

/-! ## A245211.P15074740626265293263

`∑{d}[n+1, A007429(#)*A062790((n+1)/#)]`
-/

namespace A245211.P15074740626265293263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A062790 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245211.P15074740626265293263

namespace A245211

/-- `∑{d}[n+1, A007429(#)*A062790((n+1)/#)]` -/
def P15074740626265293263.Spec : Prop :=
  ∀ n, P15074740626265293263.a n = A245211 (n + 1)

end A245211

/-! ## A245211.P7514415502270439308

`∑{d}[n+1, A091512(#)*A091570((n+1)/#)]`
-/

namespace A245211.P7514415502270439308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091512 d * A091570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245211.P7514415502270439308

namespace A245211

/-- `∑{d}[n+1, A091512(#)*A091570((n+1)/#)]` -/
def P7514415502270439308.Spec : Prop :=
  ∀ n, P7514415502270439308.a n = A245211 (n + 1)

end A245211

/-! ## A245211.P13811076079217123954

`∑{d}[n+1, A000010(#)*A211779((n+1)/#)]`
-/

namespace A245211.P13811076079217123954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A211779 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245211.P13811076079217123954

namespace A245211

/-- `∑{d}[n+1, A000010(#)*A211779((n+1)/#)]` -/
def P13811076079217123954.Spec : Prop :=
  ∀ n, P13811076079217123954.a n = A245211 (n + 1)

end A245211

/-! ## A245211.P15362809868277928870

`∑{d}[n+1, A060640(#)*A157658((n+1)/#)]`
-/

namespace A245211.P15362809868277928870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060640 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245211.P15362809868277928870

namespace A245211

/-- `∑{d}[n+1, A060640(#)*A157658((n+1)/#)]` -/
def P15362809868277928870.Spec : Prop :=
  ∀ n, P15362809868277928870.a n = A245211 (n + 1)

end A245211

/-! ## A245211.P14419647599207239226

`∑{d}[n+1, A029935(#)*A238952((n+1)/#)]`
-/

namespace A245211.P14419647599207239226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A238952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245211.P14419647599207239226

namespace A245211

/-- `∑{d}[n+1, A029935(#)*A238952((n+1)/#)]` -/
def P14419647599207239226.Spec : Prop :=
  ∀ n, P14419647599207239226.a n = A245211 (n + 1)

end A245211

/-! ## A245211.P3080804287324534461

`∑{d}[n+1, A033879(#)*A255242((n+1)/#)]`
-/

namespace A245211.P3080804287324534461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033879 d * A255242 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245211.P3080804287324534461

namespace A245211

/-- `∑{d}[n+1, A033879(#)*A255242((n+1)/#)]` -/
def P3080804287324534461.Spec : Prop :=
  ∀ n, P3080804287324534461.a n = A245211 (n + 1)

end A245211

/-!
# A245212: a(n) = n * tau(n) - Sum_{(d<n) | n} (d * tau(d)).

The programs for A245212, the canonical program `A245212.P13496061215896948389` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245212 has offset 1).

The definition of A245212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245212.P13496061215896948389

`A038040(n+1)-A245211(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A245212

/-- `A038040(n+1)-A245211(n+1)` -/
def P13496061215896948389.Spec : Prop :=
  ∀ n, P13496061215896948389.a n = A245212 (n + 1)

theorem P13496061215896948389.correct : P13496061215896948389.Spec := by
  intro n
  simp only [A245212, Nat.add_sub_cancel]

end A245212

/-! ## A245212.P764013625730558442

`2*A038040(n+1)-A060640(n+1)`
-/

namespace A245212.P764013625730558442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038040 (n + 1) - A060640 (n + 1)

end

end A245212.P764013625730558442

namespace A245212

/-- `2*A038040(n+1)-A060640(n+1)` -/
def P764013625730558442.Spec : Prop :=
  ∀ n, P764013625730558442.a n = A245212 (n + 1)

theorem P764013625730558442.correct : P764013625730558442.Spec := by
  intro n
  simp only [A245212, Nat.add_sub_cancel, A245212.P764013625730558442.a, A245212.P13496061215896948389.a, A038040, A038040.P16512896840577774730.a, A060640, A060640.P5524646078330777328.f1, A060640.P5524646078330777328.a, A245211, A245211.P9459255729961917414.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A245212

/-! ## A245212.P16919784433703881005

`2*(n+1)*A000005(n+1)-∑{d}[n+1, #*A000005(#)]`
-/

namespace A245212.P16919784433703881005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A000005 (n + 1)) - ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000005 d

end

end A245212.P16919784433703881005

namespace A245212

/-- `2*(n+1)*A000005(n+1)-∑{d}[n+1, #*A000005(#)]` -/
def P16919784433703881005.Spec : Prop :=
  ∀ n, P16919784433703881005.a n = A245212 (n + 1)

end A245212

/-! ## A245212.P17821628587340451112

`∑{d}[n+1, (n+1)/#*A033879(#)]`
-/

namespace A245212.P17821628587340451112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A033879 d : ℚ)

end

end A245212.P17821628587340451112

namespace A245212

/-- `∑{d}[n+1, (n+1)/#*A033879(#)]` -/
def P17821628587340451112.Spec : Prop :=
  ∀ n, P17821628587340451112.a n = (A245212 (n + 1) : ℚ)

end A245212

/-! ## A245212.P8851184495293856471

`(n+1)*∏{e}[n+1, #+1]-∑{d}[n+1, #*A000005(#)-(n+1)]`
-/

namespace A245212.P8851184495293856471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℕ) : ℤ) - ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) * A000005 d - (n + 1 : ℤ))

end

end A245212.P8851184495293856471

namespace A245212

/-- `(n+1)*∏{e}[n+1, #+1]-∑{d}[n+1, #*A000005(#)-(n+1)]` -/
def P8851184495293856471.Spec : Prop :=
  ∀ n, P8851184495293856471.a n = A245212 (n + 1)

end A245212

/-! ## A245212.P2467843345892727685

`A060640(n+1)-2*A245211(n+1)`
-/

namespace A245212.P2467843345892727685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060640 (n + 1) - 2 * A245211 (n + 1)

end

end A245212.P2467843345892727685

namespace A245212

/-- `A060640(n+1)-2*A245211(n+1)` -/
def P2467843345892727685.Spec : Prop :=
  ∀ n, P2467843345892727685.a n = A245212 (n + 1)

theorem P2467843345892727685.correct : P2467843345892727685.Spec := by
  intro n
  simp only [A245212, Nat.add_sub_cancel, A245212.P2467843345892727685.a, A245212.P13496061215896948389.a, A038040, A038040.P16512896840577774730.a, A060640, A060640.P5524646078330777328.f1, A060640.P5524646078330777328.a, A245211, A245211.P9459255729961917414.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A245212

/-! ## A245212.P844651777149489868

`∑{d}[n+1, A001478(#)*A033880((n+1)/#)]`
-/

namespace A245212.P844651777149489868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001478 d * A033880 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245212.P844651777149489868

namespace A245212

/-- `∑{d}[n+1, A001478(#)*A033880((n+1)/#)]` -/
def P844651777149489868.Spec : Prop :=
  ∀ n, P844651777149489868.a n = A245212 (n + 1)

end A245212

/-! ## A245212.P7593411949003105572

`∑{d}[n+1, A000203(#)*A083254((n+1)/#)]`
-/

namespace A245212.P7593411949003105572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A083254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245212.P7593411949003105572

namespace A245212

/-- `∑{d}[n+1, A000203(#)*A083254((n+1)/#)]` -/
def P7593411949003105572.Spec : Prop :=
  ∀ n, P7593411949003105572.a n = A245212 (n + 1)

end A245212

/-! ## A245212.P10388639703962708498

`∑{d}[n+1, A038040(#)*A153881((n+1)/#)]`
-/

namespace A245212.P10388639703962708498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A153881 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245212.P10388639703962708498

namespace A245212

/-- `∑{d}[n+1, A038040(#)*A153881((n+1)/#)]` -/
def P10388639703962708498.Spec : Prop :=
  ∀ n, P10388639703962708498.a n = A245212 (n + 1)

end A245212

/-! ## A245212.P2639438764449844652

`∑{d}[n+1, A000010(#)*A296075((n+1)/#)]`
-/

namespace A245212.P2639438764449844652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A296075 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245212.P2639438764449844652

namespace A245212

/-- `∑{d}[n+1, A000010(#)*A296075((n+1)/#)]` -/
def P2639438764449844652.Spec : Prop :=
  ∀ n, P2639438764449844652.a n = A245212 (n + 1)

end A245212

/-! ## A245212.P6575748626141141807

`∑{d}[n+1, A018804(#)*A378216((n+1)/#)]`
-/

namespace A245212.P6575748626141141807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A378216 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245212.P6575748626141141807

namespace A245212

/-- `∑{d}[n+1, A018804(#)*A378216((n+1)/#)]` -/
def P6575748626141141807.Spec : Prop :=
  ∀ n, P6575748626141141807.a n = A245212 (n + 1)

end A245212

/-! ## A245212.P5073261782930801929

`∑{d}[n+1, A034718(#)*A378217((n+1)/#)]`
-/

namespace A245212.P5073261782930801929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034718 d * A378217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245212.P5073261782930801929

namespace A245212

/-- `∑{d}[n+1, A034718(#)*A378217((n+1)/#)]` -/
def P5073261782930801929.Spec : Prop :=
  ∀ n, P5073261782930801929.a n = A245212 (n + 1)

end A245212

/-! ## A245212.P8229766598143024478

`∑{d}[n+1, A034761(#)*A378219((n+1)/#)]`
-/

namespace A245212.P8229766598143024478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034761 d * A378219 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245212.P8229766598143024478

namespace A245212

/-- `∑{d}[n+1, A034761(#)*A378219((n+1)/#)]` -/
def P8229766598143024478.Spec : Prop :=
  ∀ n, P8229766598143024478.a n = A245212 (n + 1)

end A245212

/-! ## A245212.P8600501986145472827

`∑{d}[n+1, A060640(#)*A378225((n+1)/#)]`
-/

namespace A245212.P8600501986145472827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060640 d * A378225 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245212.P8600501986145472827

namespace A245212

/-- `∑{d}[n+1, A060640(#)*A378225((n+1)/#)]` -/
def P8600501986145472827.Spec : Prop :=
  ∀ n, P8600501986145472827.a n = A245212 (n + 1)

end A245212

/-! ## A245212.P3340307534872487656

`∑{d}[n+1, A174466(#)*A378211((n+1)/#)]`
-/

namespace A245212.P3340307534872487656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174466 d * A378211 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245212.P3340307534872487656

namespace A245212

/-- `∑{d}[n+1, A174466(#)*A378211((n+1)/#)]` -/
def P3340307534872487656.Spec : Prop :=
  ∀ n, P3340307534872487656.a n = A245212 (n + 1)

end A245212

/-!
# A245213: Numbers n such that A245212(n) < n.

The programs for A245213, the canonical program `A245213.P16321820402832536688` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245213 has offset 1).

The definition of A245213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245213.P16321820402832536688

`lt[A245212(n+1), n]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A245213

/-- `lt[A245212(n+1), n]+1` -/
def P16321820402832536688.Spec : Prop :=
  ∀ n, (P16321820402832536688.a n : ℤ) = A245213 (n + 1)

theorem P16321820402832536688.correct : P16321820402832536688.Spec := by
  intro n
  simp only [A245213, Nat.add_sub_cancel]

end A245213

/-! ## A245213.P2878935835738388979

`lt[A245212(A028310(n)), n]`
-/

namespace A245213.P2878935835738388979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245212 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A245213.P2878935835738388979

namespace A245213

/-- `lt[A245212(A028310(n)), n]` -/
def P2878935835738388979.Spec : Prop :=
  ∀ n, (P2878935835738388979.a n : ℤ) = A245213 (n + 1)

end A245213

/-! ## A245213.P13926333972307478201

`A014681(lt[A245212(n+1), n])`
-/

namespace A245213.P13926333972307478201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245212 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A245213.P13926333972307478201

namespace A245213

/-- `A014681(lt[A245212(n+1), n])` -/
def P13926333972307478201.Spec : Prop :=
  ∀ n, P13926333972307478201.a n = A245213 (n + 1)

end A245213

/-! ## A245213.P1445833124066756589

`lt[A245212(A000007(n)+n), n]`
-/

namespace A245213.P1445833124066756589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245212 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A245213.P1445833124066756589

namespace A245213

/-- `lt[A245212(A000007(n)+n), n]` -/
def P1445833124066756589.Spec : Prop :=
  ∀ n, (P1445833124066756589.a n : ℤ) = A245213 (n + 1)

end A245213

/-! ## A245213.P8242996773048193630

`lt[A245212(A000038(n)+n), n]`
-/

namespace A245213.P8242996773048193630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245212 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A245213.P8242996773048193630

namespace A245213

/-- `lt[A245212(A000038(n)+n), n]` -/
def P8242996773048193630.Spec : Prop :=
  ∀ n, (P8242996773048193630.a n : ℤ) = A245213 (n + 1)

end A245213

/-! ## A245213.P15768323216447181828

`lt[A245212(xor(n, A000007(n))), n]`
-/

namespace A245213.P15768323216447181828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245212 (Int.xor (n : ℤ) (A000007 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A245213.P15768323216447181828

namespace A245213

/-- `lt[A245212(xor(n, A000007(n))), n]` -/
def P15768323216447181828.Spec : Prop :=
  ∀ n, (P15768323216447181828.a n : ℤ) = A245213 (n + 1)

end A245213

/-!
# A245214: Numbers k such that A245212(k) < 0.

The programs for A245214, the canonical program `A245214.P5252668247013556248` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245214 has offset 1).

The definition of A245214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245214.P5252668247013556248

`lt[A245212(A028310(n)), 0]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A245214

/-- `lt[A245212(A028310(n)), 0]` -/
def P5252668247013556248.Spec : Prop :=
  ∀ n, (P5252668247013556248.a n : ℤ) = A245214 (n + 1)

theorem P5252668247013556248.correct : P5252668247013556248.Spec := by
  intro n
  simp only [A245214, Nat.add_sub_cancel]

end A245214

/-! ## A245214.P14127807483196939172

`A014681(lt[A245212(n+1), 0])`
-/

namespace A245214.P14127807483196939172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245212 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A245214.P14127807483196939172

namespace A245214

/-- `A014681(lt[A245212(n+1), 0])` -/
def P14127807483196939172.Spec : Prop :=
  ∀ n, P14127807483196939172.a n = A245214 (n + 1)

end A245214

/-! ## A245214.P16736434372870487393

`A270308(n+4)%A211240(n+1)`
-/

namespace A245214.P16736434372870487393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270308 (n + 4)) (A211240 (n + 1))

end

end A245214.P16736434372870487393

namespace A245214

/-- `A270308(n+4)%A211240(n+1)` -/
def P16736434372870487393.Spec : Prop :=
  ∀ n, P16736434372870487393.a n = A245214 (n + 1)

end A245214

/-! ## A245214.P12463382725153143274

`A270308(n+4)+A000007(A160525(n))`
-/

namespace A245214.P12463382725153143274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270308 (n + 4) + A000007 (A160525 n).toNat

end

end A245214.P12463382725153143274

namespace A245214

/-- `A270308(n+4)+A000007(A160525(n))` -/
def P12463382725153143274.Spec : Prop :=
  ∀ n, P12463382725153143274.a n = A245214 (n + 1)

end A245214

/-! ## A245214.P13156927599769429557

`A270308(n+4)+A000007(A325015(n+1))`
-/

namespace A245214.P13156927599769429557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270308 (n + 4) + A000007 (A325015 (n + 1)).toNat

end

end A245214.P13156927599769429557

namespace A245214

/-- `A270308(n+4)+A000007(A325015(n+1))` -/
def P13156927599769429557.Spec : Prop :=
  ∀ n, P13156927599769429557.a n = A245214 (n + 1)

end A245214

/-!
# A245215: Decimal expansion of inf{f(n,1)}, where f(1,x) = x + 1 and thereafter f(n,x) = f(n-1,x) + 1 if n is in A000201, else f(n,x) = 1/f(n-1,x).

The programs for A245215, there is no canonical definition to state claims against.
-/

/-! ## A245215.P14515486228384910333

`A246129(n+3-A245920(A246128(n)))`
-/

namespace A245215.P14515486228384910333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246129 (((n + 3 : ℤ) - A245920 (A246128 n).toNat).toNat + 1)

end

end A245215.P14515486228384910333

/-! ## A245215.P8781443107967214761

`A246129(n+1)+A000007(A245935(3*n+1))`
-/

namespace A245215.P8781443107967214761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246129 (n + 1 + 1) + A000007 (A245935 (3 * n + 1)).toNat

end

end A245215.P8781443107967214761

/-! ## A245215.P11425835613956043163

`A246129(A246127(A246128(n+1))+n)`
-/

namespace A245215.P11425835613956043163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246129 ((A246127 (A246128 (n + 1)).toNat + (n : ℤ)).toNat + 1)

end

end A245215.P11425835613956043163

/-! ## A245215.P16733758129352328048

`A246129(n+1)+A000007(A157729(n))`
-/

namespace A245215.P16733758129352328048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246129 (n + 1 + 1) + A000007 (A157729 n).toNat

end

end A245215.P16733758129352328048

/-!
# A245219: Continued fraction expansion of the constant c in A245218; c = sup{f(n,1)}, where f(1,x) = x + 1 and thereafter f(n,x) = x + 1 if n is in A001951, else f(n,x) = 1/x.

The programs for A245219, the canonical program `A245219.P3406685564556385574` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245219 has offset 0).

The definition of A245219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245219.P9291604619651703260

`Δ[ceil(n*sqrt(2))]+1`
-/

namespace A245219.P9291604619651703260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A245219.P9291604619651703260

namespace A245219

/-- `Δ[ceil(n*sqrt(2))]+1` -/
def P9291604619651703260.Spec : Prop :=
  ∀ n, P9291604619651703260.a n = A245219 n

end A245219

/-! ## A245219.P2548918504326203982

`runs[floor(sqrt(2)*n)-n]`
-/

namespace A245219.P2548918504326203982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (n : ℝ)⌋ - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A245219.P2548918504326203982

namespace A245219

/-- `runs[floor(sqrt(2)*n)-n]` -/
def P2548918504326203982.Spec : Prop :=
  ∀ n, (P2548918504326203982.a n : ℤ) = A245219 n

end A245219

/-! ## A245219.P11843187009940546622

`gcd(6, runs[floor(n/sqrt(2))]+1)`
-/

namespace A245219.P11843187009940546622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 (SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n + 1)

end

end A245219.P11843187009940546622

namespace A245219

/-- `gcd(6, runs[floor(n/sqrt(2))]+1)` -/
def P11843187009940546622.Spec : Prop :=
  ∀ n, (P11843187009940546622.a n : ℤ) = A245219 n

end A245219

/-! ## A245219.P8913784314120843514

`xor(3, 2-runs[floor(n/sqrt(2))])`
-/

namespace A245219.P8913784314120843514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (2 - ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ))

end

end A245219.P8913784314120843514

namespace A245219

/-- `xor(3, 2-runs[floor(n/sqrt(2))])` -/
def P8913784314120843514.Spec : Prop :=
  ∀ n, P8913784314120843514.a n = A245219 n

end A245219

/-! ## A245219.P17738699332918002978

`and(7, runs[floor(n/sqrt(2))]+1)`
-/

namespace A245219.P17738699332918002978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 7 (SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n + 1)

end

end A245219.P17738699332918002978

namespace A245219

/-- `and(7, runs[floor(n/sqrt(2))]+1)` -/
def P17738699332918002978.Spec : Prop :=
  ∀ n, (P17738699332918002978.a n : ℤ) = A245219 n

end A245219

/-! ## A245219.P7191271003104553655

`(runs[floor(n/sqrt(2))]+1)%18`
-/

namespace A245219.P7191271003104553655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n + 1) % 18

end

end A245219.P7191271003104553655

namespace A245219

/-- `(runs[floor(n/sqrt(2))]+1)%18` -/
def P7191271003104553655.Spec : Prop :=
  ∀ n, (P7191271003104553655.a n : ℤ) = A245219 n

end A245219

/-! ## A245219.P8589164670899242694

`a(2-runs[floor(n/sqrt(2))])` with `a(0)=3, a(1)=2`
-/

namespace A245219.P8589164670899242694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (2 - (SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n))

end

end A245219.P8589164670899242694

namespace A245219

/-- `a(2-runs[floor(n/sqrt(2))])` -/
def P8589164670899242694.Spec : Prop :=
  ∀ n, (P8589164670899242694.a n : ℤ) = A245219 n

end A245219

/-! ## A245219.P9716976559547750570

`A097509(n)`
-/

namespace A245219.P9716976559547750570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 n

end

end A245219.P9716976559547750570

namespace A245219

/-- `A097509(n)` -/
def P9716976559547750570.Spec : Prop :=
  ∀ n, P9716976559547750570.a n = A245219 n

end A245219

/-! ## A245219.P3406685564556385574

`xor(3, A144611(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A245219

/-- `xor(3, A144611(n))` -/
def P3406685564556385574.Spec : Prop :=
  ∀ n, P3406685564556385574.a n = A245219 n

theorem P3406685564556385574.correct : P3406685564556385574.Spec := by
  intro n
  simp only [A245219]

end A245219

/-! ## A245219.P16406255614848091020

`a(3-A276862(n))` with `a(0)=3, a(1)=2`
-/

namespace A245219.P16406255614848091020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (3 - A276862 n).toNat

end

end A245219.P16406255614848091020

namespace A245219

/-- `a(3-A276862(n))` -/
def P16406255614848091020.Spec : Prop :=
  ∀ n, (P16406255614848091020.a n : ℤ) = A245219 n

end A245219

/-! ## A245219.P9695766713527186824

`A133429(Δ[ceil(n*sqrt(2))])`
-/

namespace A245219.P9695766713527186824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133429 (f1 (n + 1) - f1 n).toNat

end

end A245219.P9695766713527186824

namespace A245219

/-- `A133429(Δ[ceil(n*sqrt(2))])` -/
def P9695766713527186824.Spec : Prop :=
  ∀ n, P9695766713527186824.a n = A245219 n

end A245219

/-! ## A245219.P4452830565526032207

`A359178(Δ[ceil(n*sqrt(2))])`
-/

namespace A245219.P4452830565526032207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359178 (f1 (n + 1) - f1 n).toNat

end

end A245219.P4452830565526032207

namespace A245219

/-- `A359178(Δ[ceil(n*sqrt(2))])` -/
def P4452830565526032207.Spec : Prop :=
  ∀ n, P4452830565526032207.a n = A245219 n

end A245219

/-! ## A245219.P10134462403686212962

`A000040(runs[floor(n/sqrt(2))])`
-/

namespace A245219.P10134462403686212962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n)

end

end A245219.P10134462403686212962

namespace A245219

/-- `A000040(runs[floor(n/sqrt(2))])` -/
def P10134462403686212962.Spec : Prop :=
  ∀ n, P10134462403686212962.a n = A245219 n

end A245219

/-! ## A245219.P3088974650755018507

`a(2-Δ[A195119(n)])` with `a(0)=3, a(1)=2, a(2)=3`
-/

namespace A245219.P3088974650755018507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 n

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 3] fun n a =>
  a (2 - (f1 (n + 1) - f1 n)).toNat

end

end A245219.P3088974650755018507

namespace A245219

/-- `a(2-Δ[A195119(n)])` -/
def P3088974650755018507.Spec : Prop :=
  ∀ n, (P3088974650755018507.a n : ℤ) = A245219 n

end A245219

/-! ## A245219.P160476586111077147

`A276862((2*n+1)%(n+2)+1)`
-/

namespace A245219.P160476586111077147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276862 ((2 * n + 1) % (n + 2) + 1)

end

end A245219.P160476586111077147

namespace A245219

/-- `A276862((2*n+1)%(n+2)+1)` -/
def P160476586111077147.Spec : Prop :=
  ∀ n, P160476586111077147.a n = A245219 n

end A245219

/-! ## A245219.P2707076314016922510

`Δ[A285078(n+1)]`
-/

namespace A245219.P2707076314016922510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245219.P2707076314016922510

namespace A245219

/-- `Δ[A285078(n+1)]` -/
def P2707076314016922510.Spec : Prop :=
  ∀ n, P2707076314016922510.a n = A245219 n

end A245219

/-! ## A245219.P1295432191096069909

`Δ[A188040(Δ[n²])]`
-/

namespace A245219.P1295432191096069909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188040 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245219.P1295432191096069909

namespace A245219

/-- `Δ[A188040(Δ[n²])]` -/
def P1295432191096069909.Spec : Prop :=
  ∀ n, P1295432191096069909.a n = A245219 n

end A245219

/-! ## A245219.P5285140660295747030

`A294180(A289037(A001951(n+1)+n))`
-/

namespace A245219.P5285140660295747030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294180 (A289037 (A001951 (n + 1) + (n : ℤ)).toNat).toNat

end

end A245219.P5285140660295747030

namespace A245219

/-- `A294180(A289037(A001951(n+1)+n))` -/
def P5285140660295747030.Spec : Prop :=
  ∀ n, P5285140660295747030.a n = A245219 n

end A245219

/-! ## A245219.P2094877359061623088

`xor(A178815(n+1), A188037(n+1))`
-/

namespace A245219.P2094877359061623088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178815 (n + 1)) (A188037 (n + 1))

end

end A245219.P2094877359061623088

namespace A245219

/-- `xor(A178815(n+1), A188037(n+1))` -/
def P2094877359061623088.Spec : Prop :=
  ∀ n, P2094877359061623088.a n = A245219 n

end A245219

/-!
# A245222: Continued fraction expansion of the constant c in A245221; c = sup{f(n,1)}, where f(1,x) = x + 1 and thereafter f(n,x) = x + 1 if n is in A022838, else f(n,x) = 1/x.

The programs for A245222, the canonical program `A245222.P5497392532380044089` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245222 has offset 0).

The definition of A245222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245222.P6394583792189722231

`Δ[ceil(n/(sqrt(3)-1))]`
-/

namespace A245222.P6394583792189722231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / (Real.sqrt (3 : ℝ) - 1)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245222.P6394583792189722231

namespace A245222

/-- `Δ[ceil(n/(sqrt(3)-1))]` -/
def P6394583792189722231.Spec : Prop :=
  ∀ n, P6394583792189722231.a n = A245222 n

end A245222

/-! ## A245222.P11223673484606018668

`2-char[A186539(n+1)]`
-/

namespace A245222.P11223673484606018668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A245222.P11223673484606018668

namespace A245222

/-- `2-char[A186539(n+1)]` -/
def P11223673484606018668.Spec : Prop :=
  ∀ n, P11223673484606018668.a n = A245222 n

end A245222

/-! ## A245222.P4061040182699539187

`2-char[A194979(n+1)+n]`
-/

namespace A245222.P4061040182699539187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A245222.P4061040182699539187

namespace A245222

/-- `2-char[A194979(n+1)+n]` -/
def P4061040182699539187.Spec : Prop :=
  ∀ n, P4061040182699539187.a n = A245222 n

end A245222

/-! ## A245222.P14093061226948942055

`char[comp[A097337(n+1)+n+1]]+1`
-/

namespace A245222.P14093061226948942055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (n + 1) + (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A245222.P14093061226948942055

namespace A245222

/-- `char[comp[A097337(n+1)+n+1]]+1` -/
def P14093061226948942055.Spec : Prop :=
  ∀ n, (P14093061226948942055.a n : ℤ) = A245222 n

end A245222

/-! ## A245222.P5497392532380044089

`gcd(Δ[A198081(n)], A215781(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A245222

/-- `gcd(Δ[A198081(n)], A215781(n))` -/
def P5497392532380044089.Spec : Prop :=
  ∀ n, (P5497392532380044089.a n : ℤ) = A245222 n

theorem P5497392532380044089.correct : P5497392532380044089.Spec := by
  intro n
  simp only [A245222]

end A245222

/-! ## A245222.P16249327297956414323

`A188070(n+1)-comp[A188069(n+1)]`
-/

namespace A245222.P16249327297956414323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A245222.P16249327297956414323

namespace A245222

/-- `A188070(n+1)-comp[A188069(n+1)]` -/
def P16249327297956414323.Spec : Prop :=
  ∀ n, P16249327297956414323.a n = A245222 n

end A245222

/-! ## A245222.P13578139745409190490

`2-A188068(A003511(n+1))`
-/

namespace A245222.P13578139745409190490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A188068 (A003511 (n + 1)).toNat

end

end A245222.P13578139745409190490

namespace A245222

/-- `2-A188068(A003511(n+1))` -/
def P13578139745409190490.Spec : Prop :=
  ∀ n, P13578139745409190490.a n = A245222 n

end A245222

/-! ## A245222.P5651441525844788157

`2/A080757(comp[A080590(n+1)])`
-/

namespace A245222.P5651441525844788157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A080757 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ)

end

end A245222.P5651441525844788157

namespace A245222

/-- `2/A080757(comp[A080590(n+1)])` -/
def P5651441525844788157.Spec : Prop :=
  ∀ n, P5651441525844788157.a n = (A245222 n : ℚ)

end A245222

/-! ## A245222.P14097171926742510198

`2-A188068(A188070(n+1)-1)`
-/

namespace A245222.P14097171926742510198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A188068 (A188070 (n + 1) - 1).toNat

end

end A245222.P14097171926742510198

namespace A245222

/-- `2-A188068(A188070(n+1)-1)` -/
def P14097171926742510198.Spec : Prop :=
  ∀ n, P14097171926742510198.a n = A245222 n

end A245222

/-! ## A245222.P6906356777513886237

`2/A080757(A003511(n+1)-1)`
-/

namespace A245222.P6906356777513886237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A080757 (A003511 (n + 1) - 1).toNat : ℚ)

end

end A245222.P6906356777513886237

namespace A245222

/-- `2/A080757(A003511(n+1)-1)` -/
def P6906356777513886237.Spec : Prop :=
  ∀ n, P6906356777513886237.a n = (A245222 n : ℚ)

end A245222

/-! ## A245222.P18306530250956960639

`runs[n-A195120(n)]`
-/

namespace A245222.P18306530250956960639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A195120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A245222.P18306530250956960639

namespace A245222

/-- `runs[n-A195120(n)]` -/
def P18306530250956960639.Spec : Prop :=
  ∀ n, (P18306530250956960639.a n : ℤ) = A245222 n

end A245222

/-! ## A245222.P2803486757914272948

`2-A188071(A188070(n+1))`
-/

namespace A245222.P2803486757914272948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A188071 (A188070 (n + 1)).toNat

end

end A245222.P2803486757914272948

namespace A245222

/-- `2-A188071(A188070(n+1))` -/
def P2803486757914272948.Spec : Prop :=
  ∀ n, P2803486757914272948.a n = A245222 n

end A245222

/-! ## A245222.P14123002330685747825

`runs[n-A080757(n)]`
-/

namespace A245222.P14123002330685747825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A080757 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A245222.P14123002330685747825

namespace A245222

/-- `runs[n-A080757(n)]` -/
def P14123002330685747825.Spec : Prop :=
  ∀ n, (P14123002330685747825.a n : ℤ) = A245222 n

end A245222

/-! ## A245222.P11596084877309933530

`runs[n-A188068(n+1)]`
-/

namespace A245222.P11596084877309933530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A188068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A245222.P11596084877309933530

namespace A245222

/-- `runs[n-A188068(n+1)]` -/
def P11596084877309933530.Spec : Prop :=
  ∀ n, (P11596084877309933530.a n : ℤ) = A245222 n

end A245222

/-! ## A245222.P11248254965978030518

`A014695(Δ[A215781(n)²])`
-/

namespace A245222.P11248254965978030518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215781 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (f1 (n + 1) - f1 n).toNat

end

end A245222.P11248254965978030518

namespace A245222

/-- `A014695(Δ[A215781(n)²])` -/
def P11248254965978030518.Spec : Prop :=
  ∀ n, P11248254965978030518.a n = A245222 n

end A245222

/-! ## A245222.P16641046437605594241

`A072733(A188081(2*(n+1))-A188081(2*n+1))`
-/

namespace A245222.P16641046437605594241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072733 (A188081 (2 * (n + 1)) - A188081 (2 * n + 1)).toNat

end

end A245222.P16641046437605594241

namespace A245222

/-- `A072733(A188081(2*(n+1))-A188081(2*n+1))` -/
def P16641046437605594241.Spec : Prop :=
  ∀ n, P16641046437605594241.a n = A245222 n

end A245222

/-! ## A245222.P794690964293559871

`runs[runs[A194979(n+1)]-n]`
-/

namespace A245222.P794690964293559871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A245222.P794690964293559871

namespace A245222

/-- `runs[runs[A194979(n+1)]-n]` -/
def P794690964293559871.Spec : Prop :=
  ∀ n, (P794690964293559871.a n : ℤ) = A245222 n

end A245222

/-! ## A245222.P15225327475279757124

`runs[A172475(2*n)-n]`
-/

namespace A245222.P15225327475279757124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (2 * n) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A245222.P15225327475279757124

namespace A245222

/-- `runs[A172475(2*n)-n]` -/
def P15225327475279757124.Spec : Prop :=
  ∀ n, (P15225327475279757124.a n : ℤ) = A245222 n

end A245222

/-!
# A245225: Continued fraction expansion of the constant c in A245224; c = sup{f(n,1)}, where f(1,x) = x + 1 and thereafter f(n,x) = x + 1 if n is in A054385, else f(n,x) = 1/x.

The programs for A245225, there is no canonical definition to state claims against.
-/

/-! ## A245225.P17395902676684459848

`Δ[ceil(e*(n-2))]-1`
-/

namespace A245225.P17395902676684459848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * ((n : ℤ) - 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A245225.P17395902676684459848

/-! ## A245225.P16310865959932964032

`5%Δ[A022852(n+14)]`
-/

namespace A245225.P16310865959932964032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022852 (n + 14)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (f1 (n + 1) - f1 n)

end

end A245225.P16310865959932964032

/-! ## A245225.P16380384094859601939

`A000009(Δ[ceil(e*(n-2))])`
-/

namespace A245225.P16380384094859601939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * ((n : ℤ) - 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (f1 (n + 1) - f1 n).toNat

end

end A245225.P16380384094859601939

/-! ## A245225.P2483535521338091066

`A000010(Δ[ceil(e*(n-2))])`
-/

namespace A245225.P2483535521338091066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * ((n : ℤ) - 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat

end

end A245225.P2483535521338091066

/-! ## A245225.P7208009363501137435

`A000034(Δ[ceil(e*(n-2))])`
-/

namespace A245225.P7208009363501137435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * ((n : ℤ) - 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (f1 (n + 1) - f1 n).toNat

end

end A245225.P7208009363501137435

/-! ## A245225.P2829271851134605948

`A000045(Δ[ceil(e*(n-2))])`
-/

namespace A245225.P2829271851134605948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * ((n : ℤ) - 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A245225.P2829271851134605948

/-! ## A245225.P6265575123814621937

`A000065(Δ[ceil(e*(n-2))])`
-/

namespace A245225.P6265575123814621937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * ((n : ℤ) - 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (f1 (n + 1) - f1 n).toNat

end

end A245225.P6265575123814621937

/-! ## A245225.P4551432780089767744

`A000105(Δ[ceil(e*(n-2))])`
-/

namespace A245225.P4551432780089767744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * ((n : ℤ) - 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (f1 (n + 1) - f1 n).toNat

end

end A245225.P4551432780089767744

/-! ## A245225.P7382104923572890595

`A000045(Δ[A022852(n+14)])!`
-/

namespace A245225.P7382104923572890595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022852 (n + 14)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000045 (f1 (n + 1) - f1 n).toNat).toNat

end

end A245225.P7382104923572890595

/-!
# A245226: Values of n such that the equation x^2 - n*y^2 = n has integer solutions.

The programs for A245226, there is no canonical definition to state claims against.
-/

/-! ## A245226.P5499288209274141171

`∪[A020487(n+1), A172000(n+1)]`
-/

namespace A245226.P5499288209274141171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245226.P5499288209274141171

/-! ## A245226.P7809554735758842205

`∪[A028982(n+1), A172000(n+1)]`
-/

namespace A245226.P7809554735758842205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245226.P7809554735758842205

/-! ## A245226.P16129997793885338777

`∪[A046870(n+1), A172000(n+1)]`
-/

namespace A245226.P16129997793885338777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245226.P16129997793885338777

/-! ## A245226.P16158056435861626369

`∪[A172000(n+1), A216500(n+1)]`
-/

namespace A245226.P16158056435861626369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245226.P16158056435861626369

/-! ## A245226.P7638900694787188278

`∪[A172000(n+1), A221222(n+1)]`
-/

namespace A245226.P7638900694787188278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245226.P7638900694787188278

/-! ## A245226.P16977017885760815718

`∪[A172000(n+1), A331221(n+1)]`
-/

namespace A245226.P16977017885760815718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245226.P16977017885760815718

/-! ## A245226.P11070751780072078230

`∪[A172000(n+1), A334832(n+1)]`
-/

namespace A245226.P11070751780072078230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245226.P11070751780072078230

/-! ## A245226.P17898286026458434180

`∪[A172000(n+1), A357632(n+1)]`
-/

namespace A245226.P17898286026458434180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245226.P17898286026458434180

/-! ## A245226.P10448954552862729636

`∪[A172000(n+1), A363282(n+1)]`
-/

namespace A245226.P10448954552862729636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245226.P10448954552862729636

/-! ## A245226.P7264595020852784155

`∪[A172000(n+1), A363283(n+1)]`
-/

namespace A245226.P7264595020852784155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245226.P7264595020852784155

/-!
# A245227: Maximum frustration of complete bipartite graph K(n,5).

The programs for A245227, there is no canonical definition to state claims against.
-/

/-! ## A245227.P4908904179178191058

`A096532(3*n+1)-A118914(A094329(3*n+5))`
-/

namespace A245227.P4908904179178191058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096532 (3 * n + 1) - A118914 (A094329 (3 * n + 5)).toNat

end

end A245227.P4908904179178191058

/-! ## A245227.P11827841302352187452

`lt[Δ[A138236(n+1)], A138197(3*n+2)]`
-/

namespace A245227.P11827841302352187452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138236 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138197 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A245227.P11827841302352187452

/-! ## A245227.P9596502111513246747

`lt[A335659(n+1), A007318(A214329(3*(n+1)))]`
-/

namespace A245227.P9596502111513246747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A214329 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A245227.P9596502111513246747

/-! ## A245227.P7421952658927203182

`lt[A138190(A138222(n+1)), A138197(3*n+2)]`
-/

namespace A245227.P7421952658927203182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138190 (A138222 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138197 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A245227.P7421952658927203182

/-! ## A245227.P11199007555870533166

`lt[A138190(A138224(n+1)), A138197(3*n+2)]`
-/

namespace A245227.P11199007555870533166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138190 (A138224 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138197 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A245227.P11199007555870533166

/-!
# A245229: Primes that are the sum of 7 cubes and no fewer.

The programs for A245229, there is no canonical definition to state claims against.
-/

/-! ## A245229.P13520556324094359260

`p?[A018890(n+1)]`
-/

namespace A245229.P13520556324094359260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245229.P13520556324094359260

/-! ## A245229.P17639619831588886641

`p?[record[A018890(A052938(n))]]`
-/

namespace A245229.P17639619831588886641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018890 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245229.P17639619831588886641

/-! ## A245229.P13994140980497824970

`p?[record[A018890(A328396(n))]]`
-/

namespace A245229.P13994140980497824970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018890 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245229.P13994140980497824970

/-! ## A245229.P2251972607181834583

`record[A002034(A018890(n+2))]`
-/

namespace A245229.P2251972607181834583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A018890 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245229.P2251972607181834583

/-! ## A245229.P3842752776578075856

`record[A345941(A018890(n+4))]`
-/

namespace A245229.P3842752776578075856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (A018890 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245229.P3842752776578075856

/-!
# A245230: Triangle T(m,n), 1<=n<=m, read by rows: maximum frustration of complete bipartite graph K(m,n).

The programs for A245230, there is no canonical definition to state claims against.
-/

/-! ## A245230.P14952036280719006652

`A186437(A046899(n))`
-/

namespace A245230.P14952036280719006652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186437 (A046899 n).toNat

end

end A245230.P14952036280719006652

/-! ## A245230.P1741973920672220455

`A125173(A176120(n))`
-/

namespace A245230.P1741973920672220455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125173 (A176120 n).toNat

end

end A245230.P1741973920672220455

/-! ## A245230.P11910202812527096059

`A333355(A344110(n))`
-/

namespace A245230.P11910202812527096059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333355 (A344110 n).toNat

end

end A245230.P11910202812527096059

/-! ## A245230.P4920946442138788200

`A334591(A355005(n))`
-/

namespace A245230.P4920946442138788200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334591 (A355005 n).toNat

end

end A245230.P4920946442138788200

/-! ## A245230.P10516383558763834929

`A186437(A133644(n+1))`
-/

namespace A245230.P10516383558763834929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186437 (A133644 (n + 1)).toNat

end

end A245230.P10516383558763834929

/-!
# A245231: Maximum frustration of complete bipartite graph K(n,4).

The programs for A245231, the canonical program `A245231.P11344898236792989484` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245231 has offset 1).

The definition of A245231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245231.P11344898236792989484

`ogf((2x+x^2+x^3+x^4+2x^5+x^6+2x^7)/(1-x-x^8+x^9))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245231

/-- `ogf((2x+x^2+x^3+x^4+2x^5+x^6+2x^7)/(1-x-x^8+x^9))` -/
def P11344898236792989484.Spec : Prop :=
  ∀ n, P11344898236792989484.a n = A245231 (n + 1)

theorem P11344898236792989484.correct : P11344898236792989484.Spec := by
  intro n
  simp only [A245231, Nat.add_sub_cancel]

end A245231

/-! ## A245231.P11366617668053575801

`A047203(n+1)+Δ[A132292(n+1)]`
-/

namespace A245231.P11366617668053575801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (n + 1) + (f1 (n + 1) - f1 n)

end

end A245231.P11366617668053575801

namespace A245231

/-- `A047203(n+1)+Δ[A132292(n+1)]` -/
def P11366617668053575801.Spec : Prop :=
  ∀ n, P11366617668053575801.a n = A245231 (n + 1)

end A245231

/-! ## A245231.P3788416341632818211

`A004526(n+1)+n-A004525(A004524(n))`
-/

namespace A245231.P3788416341632818211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + ((n : ℤ) - A004525 (A004524 n).toNat)

end

end A245231.P3788416341632818211

namespace A245231

/-- `A004526(n+1)+n-A004525(A004524(n))` -/
def P3788416341632818211.Spec : Prop :=
  ∀ n, P3788416341632818211.a n = A245231 (n + 1)

end A245231

/-! ## A245231.P57987640567828110

`A005843(n)-A004524(A109613(n)+A004524(n))`
-/

namespace A245231.P57987640567828110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - A004524 (A109613 n + A004524 n).toNat

end

end A245231.P57987640567828110

namespace A245231

/-- `A005843(n)-A004524(A109613(n)+A004524(n))` -/
def P57987640567828110.Spec : Prop :=
  ∀ n, P57987640567828110.a n = A245231 (n + 1)

end A245231

/-! ## A245231.P14870022955902917451

`A004523(A001068(A032766(n+1)))`
-/

namespace A245231.P14870022955902917451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A001068 (A032766 (n + 1)).toNat).toNat

end

end A245231.P14870022955902917451

namespace A245231

/-- `A004523(A001068(A032766(n+1)))` -/
def P14870022955902917451.Spec : Prop :=
  ∀ n, P14870022955902917451.a n = A245231 (n + 1)

end A245231

/-! ## A245231.P15532718551505830633

`A004523(A057360(n+1)+A032766(n+1))`
-/

namespace A245231.P15532718551505830633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A057360 (n + 1) + A032766 (n + 1)).toNat

end

end A245231.P15532718551505830633

namespace A245231

/-- `A004523(A057360(n+1)+A032766(n+1))` -/
def P15532718551505830633.Spec : Prop :=
  ∀ n, P15532718551505830633.a n = A245231 (n + 1)

end A245231

/-! ## A245231.P15219471921518935884

`A004524(A007310(n+1)-A004524(n))`
-/

namespace A245231.P15219471921518935884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A007310 (n + 1) - A004524 n).toNat

end

end A245231.P15219471921518935884

namespace A245231

/-- `A004524(A007310(n+1)-A004524(n))` -/
def P15219471921518935884.Spec : Prop :=
  ∀ n, P15219471921518935884.a n = A245231 (n + 1)

end A245231

/-! ## A245231.P8538702600015190045

`A004524(A047269(2*(n+1))-A004524(n))`
-/

namespace A245231.P8538702600015190045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A047269 (2 * (n + 1)) - A004524 n).toNat

end

end A245231.P8538702600015190045

namespace A245231

/-- `A004524(A047269(2*(n+1))-A004524(n))` -/
def P8538702600015190045.Spec : Prop :=
  ∀ n, P8538702600015190045.a n = A245231 (n + 1)

end A245231

/-! ## A245231.P18304197829995075067

`A004524(A047273(2*(n+1))-A004524(n))`
-/

namespace A245231.P18304197829995075067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A047273 (2 * (n + 1)) - A004524 n).toNat

end

end A245231.P18304197829995075067

namespace A245231

/-- `A004524(A047273(2*(n+1))-A004524(n))` -/
def P18304197829995075067.Spec : Prop :=
  ∀ n, P18304197829995075067.a n = A245231 (n + 1)

end A245231

/-! ## A245231.P5322070148530727141

`A008676(A045572(A045572(A007310(n+1))))`
-/

namespace A245231.P5322070148530727141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A045572 (A045572 (A007310 (n + 1)).toNat).toNat).toNat

end

end A245231.P5322070148530727141

namespace A245231

/-- `A008676(A045572(A045572(A007310(n+1))))` -/
def P5322070148530727141.Spec : Prop :=
  ∀ n, P5322070148530727141.a n = A245231 (n + 1)

end A245231

/-!
# A245232: Semiprimes of the form (2*n^3+n)/3.

The programs for A245232, the canonical program `A245232.P15192089048372292749` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245232 has offset 1).

The definition of A245232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245232.P15192089048372292749

`A005900(A103982(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A245232

/-- `A005900(A103982(n+1))` -/
def P15192089048372292749.Spec : Prop :=
  ∀ n, P15192089048372292749.a n = A245232 (n + 1)

theorem P15192089048372292749.correct : P15192089048372292749.Spec := by
  intro n
  simp only [A245232, Nat.add_sub_cancel]

end A245232

/-! ## A245232.P847486547365119242

`A005900(eq[2, A103981(n)])`
-/

namespace A245232.P847486547365119242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245232.P847486547365119242

namespace A245232

/-- `A005900(eq[2, A103981(n)])` -/
def P847486547365119242.Spec : Prop :=
  ∀ n, P847486547365119242.a n = A245232 (n + 1)

end A245232

/-! ## A245232.P15728595411015499507

`abs(A061317(A103982(n+1))/A174971(n))`
-/

namespace A245232.P15728595411015499507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A061317 (A103982 (n + 1)).toNat : ℚ) / (A174971 n : ℚ)|

end

end A245232.P15728595411015499507

namespace A245232

/-- `abs(A061317(A103982(n+1))/A174971(n))` -/
def P15728595411015499507.Spec : Prop :=
  ∀ n, P15728595411015499507.a n = (A245232 (n + 1) : ℚ)

end A245232

/-! ## A245232.P8688701010822434493

`A061317(A103982(n+1))/A174971(2*n)`
-/

namespace A245232.P8688701010822434493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061317 (A103982 (n + 1)).toNat : ℚ) / (A174971 (2 * n) : ℚ)

end

end A245232.P8688701010822434493

namespace A245232

/-- `A061317(A103982(n+1))/A174971(2*n)` -/
def P8688701010822434493.Spec : Prop :=
  ∀ n, P8688701010822434493.a n = (A245232 (n + 1) : ℚ)

end A245232

/-! ## A245232.P17928293624906980908

`A061317(A103982(n+1))/A001222(A075818(n+1))`
-/

namespace A245232.P17928293624906980908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061317 (A103982 (n + 1)).toNat : ℚ) / (A001222 (A075818 (n + 1)).toNat : ℚ)

end

end A245232.P17928293624906980908

namespace A245232

/-- `A061317(A103982(n+1))/A001222(A075818(n+1))` -/
def P17928293624906980908.Spec : Prop :=
  ∀ n, P17928293624906980908.a n = (A245232 (n + 1) : ℚ)

end A245232

/-!
# A245233: Number of permutations generated by passing an ordered sequence of length n through a stack of depth 2 and an infinite stack in series.

The programs for A245233, there is no canonical definition to state claims against.
-/

/-! ## A245233.P665242722001934654

`A099802(A328320(n!))`
-/

namespace A245233.P665242722001934654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A328320 (Nat.factorial n)).toNat

end

end A245233.P665242722001934654

/-! ## A245233.P14998576926321850456

`A289437(A050146(n)+4)`
-/

namespace A245233.P14998576926321850456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (A050146 n + 4).toNat

end

end A245233.P14998576926321850456

/-! ## A245233.P4438157748408650085

`A008624(or(4, A050146(n)))`
-/

namespace A245233.P4438157748408650085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.lor 4 (A050146 n)).toNat

end

end A245233.P4438157748408650085

/-!
# A245235: Repeat 2^(n*(n+1)/2) n+1 times.

The programs for A245235, the canonical program `A245235.P8719259522222867100` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245235 has offset 0).

The definition of A245235 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245235.P4361332144759215411

`2^(row(n)*(row(n)+1)/2)`
-/

namespace A245235.P4361332144759215411
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((SequenceMachineLib.triRow n * (SequenceMachineLib.triRow n + 1) : ℚ) / 2 : ℝ)

end

end A245235.P4361332144759215411

namespace A245235

/-- `2^(row(n)*(row(n)+1)/2)` -/
def P4361332144759215411.Spec : Prop :=
  ∀ n, P4361332144759215411.a n = (A245235 n : ℝ)

end A245235

/-! ## A245235.P8719259522222867100

`2^n/A059268(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A245235

/-- `2^n/A059268(n)` -/
def P8719259522222867100.Spec : Prop :=
  ∀ n, P8719259522222867100.a n = (A245235 n : ℚ)

end A245235

/-! ## A245235.P12777998091925911271

`2^(n-col(n))`
-/

namespace A245235.P12777998091925911271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A245235.P12777998091925911271

namespace A245235

/-- `2^(n-col(n))` -/
def P12777998091925911271.Spec : Prop :=
  ∀ n, P12777998091925911271.a n = (A245235 n : ℚ)

end A245235

/-! ## A245235.P12902607951447068260

`2^C(∑[char[∑[n]]], 2)`
-/

namespace A245235.P12902607951447068260
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A245235.P12902607951447068260

namespace A245235

/-- `2^C(∑[char[∑[n]]], 2)` -/
def P12902607951447068260.Spec : Prop :=
  ∀ n, (P12902607951447068260.a n : ℤ) = A245235 n

end A245235

/-! ## A245235.P5664177356503741836

`sqrt(2)^(row(n)+row(n)²)`
-/

namespace A245235.P5664177356503741836
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ) ^ (SequenceMachineLib.triRow n + SequenceMachineLib.triRow n ^ 2)

end

end A245235.P5664177356503741836

namespace A245235

/-- `sqrt(2)^(row(n)+row(n)²)` -/
def P5664177356503741836.Spec : Prop :=
  ∀ n, P5664177356503741836.a n = (A245235 n : ℝ)

end A245235

/-! ## A245235.P18095627889348867884

`2^((row(n)+row(n)²)/2)`
-/

namespace A245235.P18095627889348867884
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((SequenceMachineLib.triRow n + SequenceMachineLib.triRow n ^ 2 : ℚ) / 2 : ℝ)

end

end A245235.P18095627889348867884

namespace A245235

/-- `2^((row(n)+row(n)²)/2)` -/
def P18095627889348867884.Spec : Prop :=
  ∀ n, P18095627889348867884.a n = (A245235 n : ℝ)

end A245235

/-! ## A245235.P12367198283196283029

`2^(row(n)²-C(row(n), 2))`
-/

namespace A245235.P12367198283196283029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.triRow n ^ 2 : ℤ) - (Nat.choose (SequenceMachineLib.triRow n) 2 : ℤ) : ℤ)

end

end A245235.P12367198283196283029

namespace A245235

/-- `2^(row(n)²-C(row(n), 2))` -/
def P12367198283196283029.Spec : Prop :=
  ∀ n, P12367198283196283029.a n = (A245235 n : ℚ)

end A245235

/-! ## A245235.P9763185191309143363

`2^((row(n)+1)*row(n)/2)`
-/

namespace A245235.P9763185191309143363
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (((SequenceMachineLib.triRow n + 1) * SequenceMachineLib.triRow n : ℚ) / 2 : ℝ)

end

end A245235.P9763185191309143363

namespace A245235

/-- `2^((row(n)+1)*row(n)/2)` -/
def P9763185191309143363.Spec : Prop :=
  ∀ n, P9763185191309143363.a n = (A245235 n : ℝ)

end A245235

/-! ## A245235.P9885408614079764347

`2^(row(n)^2-C(row(n), 2))`
-/

namespace A245235.P9885408614079764347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.triRow n ^ 2 : ℤ) - (Nat.choose (SequenceMachineLib.triRow n) 2 : ℤ) : ℤ)

end

end A245235.P9885408614079764347

namespace A245235

/-- `2^(row(n)^2-C(row(n), 2))` -/
def P9885408614079764347.Spec : Prop :=
  ∀ n, P9885408614079764347.a n = (A245235 n : ℚ)

end A245235

/-! ## A245235.P13734357500139127818

`2^C(row(n), 2)*2^row(n)`
-/

namespace A245235.P13734357500139127818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.choose (SequenceMachineLib.triRow n) 2 * 2 ^ SequenceMachineLib.triRow n

end

end A245235.P13734357500139127818

namespace A245235

/-- `2^C(row(n), 2)*2^row(n)` -/
def P13734357500139127818.Spec : Prop :=
  ∀ n, (P13734357500139127818.a n : ℤ) = A245235 n

end A245235

/-! ## A245235.P17783717992990612056

`2^A057944(n)`
-/

namespace A245235.P17783717992990612056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A057944 n : ℤ)

end

end A245235.P17783717992990612056

namespace A245235

/-- `2^A057944(n)` -/
def P17783717992990612056.Spec : Prop :=
  ∀ n, P17783717992990612056.a n = (A245235 n : ℚ)

end A245235

/-! ## A245235.P3536358162031904057

`A006125(row(n)+1)`
-/

namespace A245235.P3536358162031904057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (SequenceMachineLib.triRow n + 1)

end

end A245235.P3536358162031904057

namespace A245235

/-- `A006125(row(n)+1)` -/
def P3536358162031904057.Spec : Prop :=
  ∀ n, P3536358162031904057.a n = A245235 n

end A245235

/-! ## A245235.P319715331864735767

`2^(n-A002262(n))`
-/

namespace A245235.P319715331864735767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A002262 n : ℤ)

end

end A245235.P319715331864735767

namespace A245235

/-- `2^(n-A002262(n))` -/
def P319715331864735767.Spec : Prop :=
  ∀ n, P319715331864735767.a n = (A245235 n : ℚ)

end A245235

/-! ## A245235.P12216040792289890107

`2^(A061885(n)-n)`
-/

namespace A245235.P12216040792289890107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A061885 n - (n : ℤ) : ℤ)

end

end A245235.P12216040792289890107

namespace A245235

/-- `2^(A061885(n)-n)` -/
def P12216040792289890107.Spec : Prop :=
  ∀ n, P12216040792289890107.a n = (A245235 n : ℚ)

end A245235

/-! ## A245235.P12952150224035013396

`2^A000217(∑[char[∑[n+1]]])`
-/

namespace A245235.P12952150224035013396
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000217 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A245235.P12952150224035013396

namespace A245235

/-- `2^A000217(∑[char[∑[n+1]]])` -/
def P12952150224035013396.Spec : Prop :=
  ∀ n, P12952150224035013396.a n = (A245235 n : ℚ)

end A245235

/-! ## A245235.P16802198019298244750

`2^(n+1-A002260(n+1))`
-/

namespace A245235.P16802198019298244750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 1 : ℤ) - A002260 (n + 1) : ℤ)

end

end A245235.P16802198019298244750

namespace A245235

/-- `2^(n+1-A002260(n+1))` -/
def P16802198019298244750.Spec : Prop :=
  ∀ n, P16802198019298244750.a n = (A245235 n : ℚ)

end A245235

/-! ## A245235.P16987793398750882363

`2^(A004201(n+1)-(n+1))`
-/

namespace A245235.P16987793398750882363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004201 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A245235.P16987793398750882363

namespace A245235

/-- `2^(A004201(n+1)-(n+1))` -/
def P16987793398750882363.Spec : Prop :=
  ∀ n, P16987793398750882363.a n = (A245235 n : ℚ)

end A245235

/-! ## A245235.P1886312011154638752

`2^(n+2-A131818(n+2))`
-/

namespace A245235.P1886312011154638752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 2 : ℤ) - A131818 (n + 2) : ℤ)

end

end A245235.P1886312011154638752

namespace A245235

/-- `2^(n+2-A131818(n+2))` -/
def P1886312011154638752.Spec : Prop :=
  ∀ n, P1886312011154638752.a n = (A245235 n : ℚ)

end A245235

/-! ## A245235.P17007621661885617689

`(A131436(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A245235.P17007621661885617689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A131436 n + 1) * a (n - 1)

end

end A245235.P17007621661885617689

namespace A245235

/-- `(A131436(n)+1)*a(n-1)` -/
def P17007621661885617689.Spec : Prop :=
  ∀ n, P17007621661885617689.a n = A245235 n

end A245235

/-! ## A245235.P14219772854867019183

`2^(n+1-A057555(2*n+1))`
-/

namespace A245235.P14219772854867019183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 1 : ℤ) - A057555 (2 * n + 1) : ℤ)

end

end A245235.P14219772854867019183

namespace A245235

/-- `2^(n+1-A057555(2*n+1))` -/
def P14219772854867019183.Spec : Prop :=
  ∀ n, P14219772854867019183.a n = (A245235 n : ℚ)

end A245235

/-!
# A245239: Maximum frustration of complete bipartite graph K(n,6).

The programs for A245239, there is no canonical definition to state claims against.
-/

/-! ## A245239.P3939402519857495816

`A026491(n)-A101264(A000213(n))`
-/

namespace A245239.P3939402519857495816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 n - A101264 (A000213 n).toNat

end

end A245239.P3939402519857495816

/-! ## A245239.P3217860778648580099

`A042948(n+1)-A103451(A006330(n))`
-/

namespace A245239.P3217860778648580099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (n + 1) - A103451 (A006330 n).toNat

end

end A245239.P3217860778648580099

/-! ## A245239.P10494246685154300467

`A338062(n+1)-A103451(A006330(n))`
-/

namespace A245239.P10494246685154300467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338062 (n + 1) - A103451 (A006330 n).toNat

end

end A245239.P10494246685154300467

/-! ## A245239.P1354161243244528508

`A099479(3*n+1)-A010054(A000048(n))`
-/

namespace A245239.P1354161243244528508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099479 (3 * n + 1) - A010054 (A000048 n).toNat

end

end A245239.P1354161243244528508

/-! ## A245239.P1581542610198524424

`A091247(A276085(2*(n+2)))+3*n-2*floor(n/2)`
-/

namespace A245239.P1581542610198524424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (A276085 (2 * (n + 2))).toNat + ((3 * n : ℤ) - 2 * ⌊(n : ℚ) / 2⌋)

end

end A245239.P1581542610198524424

/-!
# A245241: Integers n such that 6 * 7^n + 1 is prime.

The programs for A245241, there is no canonical definition to state claims against.
-/

/-! ## A245241.P11445762192259995155

`∪[A002283(n), A109950(A219692(n))]`
-/

namespace A245241.P11445762192259995155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109950 (A219692 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245241.P11445762192259995155

/-!
# A245242: a(n) = Sum_{k=0..n} binomial(n^2 - k^2, n*k - k^2).

The programs for A245242, the canonical program `A245242.P18215245441689136404` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245242 has offset 0).

The definition of A245242 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n²-#², n*#-#²)]` (program `A245242.P18215245441689136404`, by `A245242.P18215245441689136404.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245242.P18215245441689136404

`∑{#}[n, C(n²-#², n*#-#²)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245242

/-- `∑{#}[n, C(n²-#², n*#-#²)]` -/
def P18215245441689136404.Spec : Prop :=
  ∀ n, (P18215245441689136404.a n : ℤ) = A245242 n

theorem P18215245441689136404.correct : P18215245441689136404.Spec := by
  intro n
  simp only [A245242]

end A245242

/-! ## A245242.P4880362674227441468

`∑{#}[n, C(n², n*#)*C(n*#, #²)/C(n², #²)]`
-/

namespace A245242.P4880362674227441468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n ^ 2) (n * k) * Nat.choose (n * k) (k ^ 2) : ℚ) / (Nat.choose (n ^ 2) (k ^ 2) : ℚ)

end

end A245242.P4880362674227441468

namespace A245242

/-- `∑{#}[n, C(n², n*#)*C(n*#, #²)/C(n², #²)]` -/
def P4880362674227441468.Spec : Prop :=
  ∀ n, P4880362674227441468.a n = (A245242 n : ℚ)

end A245242

/-! ## A245242.P269010580829896233

`∑{#}[n, ((n+#)*(n-#))!/((n*(n-#))!*(#*(n-#))!)]`
-/

namespace A245242.P269010580829896233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial ((n + k : ℤ) * ((n : ℤ) - (k : ℤ))).toNat : ℚ) / (Nat.factorial ((n : ℤ) * ((n : ℤ) - (k : ℤ))).toNat * Nat.factorial ((k : ℤ) * ((n : ℤ) - (k : ℤ))).toNat : ℚ)

end

end A245242.P269010580829896233

namespace A245242

/-- `∑{#}[n, ((n+#)*(n-#))!/((n*(n-#))!*(#*(n-#))!)]` -/
def P269010580829896233.Spec : Prop :=
  ∀ n, P269010580829896233.a n = (A245242 n : ℚ)

end A245242

/-!
# A245243: Triangle, read by rows, defined by T(n,k) = C(n^2 - k^2, n*k - k^2), for k=0..n, n>=0.

The programs for A245243, the canonical program `A245243.P3690534272358719593` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245243 has offset 0).

The definition of A245243 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)²-col(n)², row(n)*col(n)-col(n)²)` (program `A245243.P3690534272358719593`, by `A245243.P3690534272358719593.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245243.P3690534272358719593

`C(row(n)²-col(n)², row(n)*col(n)-col(n)²)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245243

/-- `C(row(n)²-col(n)², row(n)*col(n)-col(n)²)` -/
def P3690534272358719593.Spec : Prop :=
  ∀ n, (P3690534272358719593.a n : ℤ) = A245243 n

theorem P3690534272358719593.correct : P3690534272358719593.Spec := by
  intro n
  simp only [A245243]

end A245243

/-! ## A245243.P15837325745522658028

`C(row(n)², row(n)*col(n))*C(row(n)*col(n), col(n)²)/C(row(n)², col(n)²)`
-/

namespace A245243.P15837325745522658028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n ^ 2) (SequenceMachineLib.triRow n * SequenceMachineLib.triCol n) * Nat.choose (SequenceMachineLib.triRow n * SequenceMachineLib.triCol n) (SequenceMachineLib.triCol n ^ 2) : ℚ) / (Nat.choose (SequenceMachineLib.triRow n ^ 2) (SequenceMachineLib.triCol n ^ 2) : ℚ)

end

end A245243.P15837325745522658028

namespace A245243

/-- `C(row(n)², row(n)*col(n))*C(row(n)*col(n), col(n)²)/C(row(n)², col(n)²)` -/
def P15837325745522658028.Spec : Prop :=
  ∀ n, P15837325745522658028.a n = (A245243 n : ℚ)

end A245243

/-! ## A245243.P13334013714898716950

`(row(n)²-col(n)²)!/((row(n)²-row(n)*col(n))!*(row(n)*col(n)-col(n)²)!)`
-/

namespace A245243.P13334013714898716950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((SequenceMachineLib.triRow n ^ 2 : ℤ) - (SequenceMachineLib.triCol n ^ 2 : ℤ)).toNat : ℚ) / (Nat.factorial ((SequenceMachineLib.triRow n ^ 2 : ℤ) - (SequenceMachineLib.triRow n * SequenceMachineLib.triCol n : ℤ)).toNat * Nat.factorial ((SequenceMachineLib.triRow n * SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n ^ 2 : ℤ)).toNat : ℚ)

end

end A245243.P13334013714898716950

namespace A245243

/-- `(row(n)²-col(n)²)!/((row(n)²-row(n)*col(n))!*(row(n)*col(n)-col(n)²)!)` -/
def P13334013714898716950.Spec : Prop :=
  ∀ n, P13334013714898716950.a n = (A245243 n : ℚ)

end A245243

/-! ## A245243.P5349255362940530571

`((row(n)+col(n))*(row(n)-col(n)))!/((row(n)*(row(n)-col(n)))!*(col(n)*(row(n)-col(n)))!)`
-/

namespace A245243.P5349255362940530571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((SequenceMachineLib.triRow n + SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat : ℚ) / (Nat.factorial ((SequenceMachineLib.triRow n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat * Nat.factorial ((SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat : ℚ)

end

end A245243.P5349255362940530571

namespace A245243

/-- `((row(n)+col(n))*(row(n)-col(n)))!/((row(n)*(row(n)-col(n)))!*(col(n)*(row(n)-col(n)))!)` -/
def P5349255362940530571.Spec : Prop :=
  ∀ n, P5349255362940530571.a n = (A245243 n : ℚ)

end A245243

/-! ## A245243.P14184156153261410182

`C(row(n)²-col(n)², col(n)*row(n)-col(n)²)`
-/

namespace A245243.P14184156153261410182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.triRow n ^ 2 : ℤ) - (SequenceMachineLib.triCol n ^ 2 : ℤ)).toNat ((SequenceMachineLib.triCol n * SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n ^ 2 : ℤ)).toNat

end

end A245243.P14184156153261410182

namespace A245243

/-- `C(row(n)²-col(n)², col(n)*row(n)-col(n)²)` -/
def P14184156153261410182.Spec : Prop :=
  ∀ n, (P14184156153261410182.a n : ℤ) = A245243 n

theorem P14184156153261410182.correct : P14184156153261410182.Spec := by
  intro n
  simp only [A245243, Nat.add_sub_cancel, A245243.P14184156153261410182.a, A245243.P3690534272358719593.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A245243

/-! ## A245243.P2455969783537208925

`C(A335821(n), A004247(n))`
-/

namespace A245243.P2455969783537208925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A335821 n).toNat (A004247 n).toNat

end

end A245243.P2455969783537208925

namespace A245243

/-- `C(A335821(n), A004247(n))` -/
def P2455969783537208925.Spec : Prop :=
  ∀ n, (P2455969783537208925.a n : ℤ) = A245243 n

theorem P2455969783537208925.correct : P2455969783537208925.Spec := by
  intro n
  simp only [A245243, Nat.add_sub_cancel, A245243.P2455969783537208925.a, A245243.P3690534272358719593.a, A004247, A004247.P2751605162508615148.a, A335821, A335821.P109563387027522563.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A245243

/-! ## A245243.P5604359998568876383

`C(A335821(n), A091435(n))`
-/

namespace A245243.P5604359998568876383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A335821 n).toNat (A091435 n).toNat

end

end A245243.P5604359998568876383

namespace A245243

/-- `C(A335821(n), A091435(n))` -/
def P5604359998568876383.Spec : Prop :=
  ∀ n, (P5604359998568876383.a n : ℤ) = A245243 n

end A245243

/-! ## A245243.P14891744999552464544

`C(A335821(n), A079904(A061579(n)))`
-/

namespace A245243.P14891744999552464544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A335821 n).toNat (A079904 (A061579 n).toNat).toNat

end

end A245243.P14891744999552464544

namespace A245243

/-- `C(A335821(n), A079904(A061579(n)))` -/
def P14891744999552464544.Spec : Prop :=
  ∀ n, (P14891744999552464544.a n : ℤ) = A245243 n

end A245243

/-! ## A245243.P10748284835219218251

`C(A335821(n), A073254(n)-A143844(n))`
-/

namespace A245243.P10748284835219218251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A335821 n).toNat (A073254 n - A143844 n).toNat

end

end A245243.P10748284835219218251

namespace A245243

/-- `C(A335821(n), A073254(n)-A143844(n))` -/
def P10748284835219218251.Spec : Prop :=
  ∀ n, (P10748284835219218251.a n : ℤ) = A245243 n

end A245243

/-! ## A245243.P13039477881303509655

`C(A335821(n), A003056(n)*A025581(n))`
-/

namespace A245243.P13039477881303509655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A335821 n).toNat (A003056 n * A025581 n).toNat

end

end A245243.P13039477881303509655

namespace A245243

/-- `C(A335821(n), A003056(n)*A025581(n))` -/
def P13039477881303509655.Spec : Prop :=
  ∀ n, (P13039477881303509655.a n : ℤ) = A245243 n

end A245243

/-! ## A245243.P2039600017347191831

`C(A335821(n), A095834(n+1)-A025581(n))`
-/

namespace A245243.P2039600017347191831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A335821 n).toNat (A095834 (n + 1) - A025581 n).toNat

end

end A245243.P2039600017347191831

namespace A245243

/-- `C(A335821(n), A095834(n+1)-A025581(n))` -/
def P2039600017347191831.Spec : Prop :=
  ∀ n, (P2039600017347191831.a n : ℤ) = A245243 n

end A245243

/-! ## A245243.P14990647935582941349

`C(A335821(n), (n-A083920(n))*A025581(n))`
-/

namespace A245243.P14990647935582941349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A335821 n).toNat (((n : ℤ) - A083920 n) * A025581 n).toNat

end

end A245243.P14990647935582941349

namespace A245243

/-- `C(A335821(n), (n-A083920(n))*A025581(n))` -/
def P14990647935582941349.Spec : Prop :=
  ∀ n, (P14990647935582941349.a n : ℤ) = A245243 n

end A245243

/-! ## A245243.P9926988297115619253

`C(A335821(n), A004201(n+1)-A075362(n+1))`
-/

namespace A245243.P9926988297115619253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A335821 n).toNat (A004201 (n + 1) - A075362 (n + 1)).toNat

end

end A245243.P9926988297115619253

namespace A245243

/-- `C(A335821(n), A004201(n+1)-A075362(n+1))` -/
def P9926988297115619253.Spec : Prop :=
  ∀ n, (P9926988297115619253.a n : ℤ) = A245243 n

end A245243

/-! ## A245243.P7882087722491586971

`C(A335821(n), (A004736(n+1)-1)*A003056(n))`
-/

namespace A245243.P7882087722491586971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A335821 n).toNat ((A004736 (n + 1) - 1) * A003056 n).toNat

end

end A245243.P7882087722491586971

namespace A245243

/-- `C(A335821(n), (A004736(n+1)-1)*A003056(n))` -/
def P7882087722491586971.Spec : Prop :=
  ∀ n, (P7882087722491586971.a n : ℤ) = A245243 n

end A245243

/-! ## A245243.P10984555221139147607

`A209330(n)/A226234(n)*A228832(n)`
-/

namespace A245243.P10984555221139147607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209330 n : ℚ) / (A226234 n : ℚ) * (A228832 n : ℚ)

end

end A245243.P10984555221139147607

namespace A245243

/-- `A209330(n)/A226234(n)*A228832(n)` -/
def P10984555221139147607.Spec : Prop :=
  ∀ n, P10984555221139147607.a n = (A245243 n : ℚ)

end A245243

/-! ## A245243.P8860892148944013721

`C(row(n)², col(n)*row(n))*C(col(n)*row(n), col(n)²)/C(row(n)², col(n)²)`
-/

namespace A245243.P8860892148944013721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n ^ 2) (SequenceMachineLib.triCol n * SequenceMachineLib.triRow n) * Nat.choose (SequenceMachineLib.triCol n * SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n ^ 2) : ℚ) / (Nat.choose (SequenceMachineLib.triRow n ^ 2) (SequenceMachineLib.triCol n ^ 2) : ℚ)

end

end A245243.P8860892148944013721

namespace A245243

/-- `C(row(n)², col(n)*row(n))*C(col(n)*row(n), col(n)²)/C(row(n)², col(n)²)` -/
def P8860892148944013721.Spec : Prop :=
  ∀ n, P8860892148944013721.a n = (A245243 n : ℚ)

end A245243

/-!
# A245245: a(n) = C(3*n^2, n^2).

The programs for A245245, the canonical program `A245245.P13409331442410728514` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245245 has offset 0).

The definition of A245245 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*n², n²)` (program `A245245.P13409331442410728514`, by `A245245.P13409331442410728514.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245245.P13409331442410728514

`C(3*n², n²)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245245

/-- `C(3*n², n²)` -/
def P13409331442410728514.Spec : Prop :=
  ∀ n, (P13409331442410728514.a n : ℤ) = A245245 n

theorem P13409331442410728514.correct : P13409331442410728514.Spec := by
  intro n
  simp only [A245245]

end A245245

/-! ## A245245.P2629402659395726754

`A005809(n²)`
-/

namespace A245245.P2629402659395726754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 (n ^ 2)

end

end A245245.P2629402659395726754

namespace A245245

/-- `A005809(n²)` -/
def P2629402659395726754.Spec : Prop :=
  ∀ n, P2629402659395726754.a n = A245245 n

end A245245

/-! ## A245245.P10089179107993598200

`A065942(2*n²)`
-/

namespace A245245.P10089179107993598200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065942 (2 * n ^ 2)

end

end A245245.P10089179107993598200

namespace A245245

/-- `A065942(2*n²)` -/
def P10089179107993598200.Spec : Prop :=
  ∀ n, P10089179107993598200.a n = A245245 n

end A245245

/-! ## A245245.P130606267791456056

`A051033(3*n²)`
-/

namespace A245245.P130606267791456056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051033 (3 * n ^ 2)

end

end A245245.P130606267791456056

namespace A245245

/-- `A051033(3*n²)` -/
def P130606267791456056.Spec : Prop :=
  ∀ n, P130606267791456056.a n = A245245 n

end A245245

/-! ## A245245.P16002859082833003864

`A303259(2*n²+1)`
-/

namespace A245245.P16002859082833003864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303259 (2 * n ^ 2 + 1)

end

end A245245.P16002859082833003864

namespace A245245

/-- `A303259(2*n²+1)` -/
def P16002859082833003864.Spec : Prop :=
  ∀ n, P16002859082833003864.a n = A245245 n

end A245245

/-!
# A245246: Number of ways to delete an edge (up to the outcome) in the simple unlabeled graphs on n nodes.

The programs for A245246, there is no canonical definition to state claims against.
-/

/-! ## A245246.P2439308685053003183

`A126122(n+1)-A025458(A213229(n))`
-/

namespace A245246.P2439308685053003183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126122 (n + 1) - A025458 (A213229 n).toNat

end

end A245246.P2439308685053003183

/-! ## A245246.P15742746274591019295

`A126122(n+1)-A025458(A303830(n+1))`
-/

namespace A245246.P15742746274591019295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126122 (n + 1) - A025458 (A303830 (n + 1)).toNat

end

end A245246.P15742746274591019295

/-! ## A245246.P12443590589941224746

`A303829(n+1)/2-A025458(A213229(n))`
-/

namespace A245246.P12443590589941224746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303829 (n + 1) : ℚ) / 2 - (A025458 (A213229 n).toNat : ℚ)

end

end A245246.P12443590589941224746

/-!
# A245247: E.g.f. satisfies: A'(x) = (1 + x*A(x))^5 with A(0)=1.

The programs for A245247, there is no canonical definition to state claims against.
-/

/-! ## A245247.P13580161245489697735

`A241980(n)+A008624(A362654(n))`
-/

namespace A245247.P13580161245489697735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241980 n + A008624 (A362654 n).toNat

end

end A245247.P13580161245489697735

/-! ## A245247.P14720691453056223526

`A065033(A289539(n))-A026741(n)`
-/

namespace A245247.P14720691453056223526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A289539 n).toNat - A026741 n

end

end A245247.P14720691453056223526

/-!
# A245248: E.g.f. satisfies: A'(x) = (1 + x*A(x))^6 with A(0)=1.

The programs for A245248, there is no canonical definition to state claims against.
-/

/-! ## A245248.P9100535668291215065

`A131886(A182053(n))*A330457(n)`
-/

namespace A245248.P9100535668291215065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131886 (A182053 n).toNat * A330457 n

end

end A245248.P9100535668291215065

/-!
# A245249: E.g.f. satisfies: A'(x) = (1 + x*A(x))^7 with A(0)=1.

The programs for A245249, there is no canonical definition to state claims against.
-/

/-! ## A245249.P7593558332942965035

`7*A360600(a(n-1)+a(n-2)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A245249.P7593558332942965035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7] fun n a =>
  7 * A360600 (a (n - 1) + a (n - 2) - a (n - 3)).toNat

end

end A245249.P7593558332942965035

/-!
# A245251: Triangle T(a,b) read by rows: Sum_{k=1..a-1} floor(k*b/a).

The programs for A245251, there is no canonical definition to state claims against.
-/

/-! ## A245251.P8852433807104111347

`A112367(n)+A001221(A347811(n))`
-/

namespace A245251.P8852433807104111347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A001221 (A347811 n).toNat

end

end A245251.P8852433807104111347

/-! ## A245251.P16624656185537448901

`A302555(A262809(n))+A112367(n)`
-/

namespace A245251.P16624656185537448901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302555 (A262809 n).toNat + A112367 n

end

end A245251.P16624656185537448901

/-! ## A245251.P6855314238537339767

`A326474(A330942(n))+A112367(n)`
-/

namespace A245251.P6855314238537339767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326474 (A330942 n).toNat + A112367 n

end

end A245251.P6855314238537339767

/-! ## A245251.P2333970081269944937

`A326474(A331572(n))+A112367(n)`
-/

namespace A245251.P2333970081269944937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326474 (A331572 n).toNat + A112367 n

end

end A245251.P2333970081269944937

/-! ## A245251.P16268802419608181057

`A000217(A163351(n))+A001221(A347811(n))`
-/

namespace A245251.P16268802419608181057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A163351 n).toNat + A001221 (A347811 n).toNat

end

end A245251.P16268802419608181057

/-!
# A245264: Number of numbers in n-th generation of the tree of Gaussian rationals at A233696.

The programs for A245264, there is no canonical definition to state claims against.
-/

/-! ## A245264.P10926399882785095849

`Δ[A233694(n+1)]`
-/

namespace A245264.P10926399882785095849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245264.P10926399882785095849

/-! ## A245264.P13269110880032513926

`record[Δ[A233694(ceil(n/2))]]`
-/

namespace A245264.P13269110880032513926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233694 ⌈(n : ℚ) / 2⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245264.P13269110880032513926

/-! ## A245264.P9139958257586234392

`abs(Δ[A233694(1-(n-2*n))])`
-/

namespace A245264.P9139958257586234392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233694 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A245264.P9139958257586234392

/-! ## A245264.P12904111399863683785

`Δ[record[A233694(A008611(n))]]`
-/

namespace A245264.P12904111399863683785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233694 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245264.P12904111399863683785

/-! ## A245264.P3597444289744497551

`Δ[record[A233694(A008612(n))]]`
-/

namespace A245264.P3597444289744497551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233694 (A008612 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245264.P3597444289744497551

/-!
# A245265: E.g.f. satisfies: A(x) = exp(x/(1-x*A(x)^4)).

The programs for A245265, there is no canonical definition to state claims against.
-/

/-! ## A245265.P6609682357884660770

`A008619(n²*(n-1)^n)`
-/

namespace A245265.P6609682357884660770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n ^ 2 : ℤ) * ((n : ℤ) - 1) ^ n).toNat

end

end A245265.P6609682357884660770

/-!
# A245266: E.g.f. satisfies: A(x) = exp(Integral(1+x*A(x)^4) dx), where the constant of integration is zero.

The programs for A245266, there is no canonical definition to state claims against.
-/

/-! ## A245266.P1073069031301097579

`6*A140181(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A245266.P1073069031301097579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  6 * A140181 (a (n - 1)).toNat

end

end A245266.P1073069031301097579

/-! ## A245266.P211065509778669441

`A057367(A320349(n))+1`
-/

namespace A245266.P211065509778669441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (A320349 n).toNat + 1

end

end A245266.P211065509778669441

/-!
# A245267: E.g.f. satisfies: A(x) = exp(Integral(1+x*A(x)^5) dx), where the constant of integration is zero.

The programs for A245267, there is no canonical definition to state claims against.
-/

/-! ## A245267.P12630313643101189028

`A127079(2*A127112(n))`
-/

namespace A245267.P12630313643101189028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127079 (2 * A127112 n).toNat

end

end A245267.P12630313643101189028

/-! ## A245267.P12273375873815426190

`∑{d}[A194786(n), A004525(#)]`
-/

namespace A245267.P12273375873815426190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A004525 d

end

end A245267.P12273375873815426190

/-!
# A245268: Sum of binomial(n,k) over squarefree k.

The programs for A245268, there is no canonical definition to state claims against.
-/

/-! ## A245268.P9818808404090400426

`∑{d}[A034386(n+1), C(n+1, #)]`
-/

namespace A245268.P9818808404090400426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.choose (n + 1) d

end

end A245268.P9818808404090400426

/-! ## A245268.P15987639004287058677

`∑{d}[A002110(A066530(n)), C(n+1, #)]`
-/

namespace A245268.P15987639004287058677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A066530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.choose (n + 1) d

end

end A245268.P15987639004287058677

/-! ## A245268.P13873406523470608787

`∑[A135360(n)-A102683(A181951(n+1))]`
-/

namespace A245268.P13873406523470608787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135360 n - A102683 (A181951 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245268.P13873406523470608787

/-! ## A245268.P3459174398119672344

`∑{d}[A002110(n), C(n+1, #)]`
-/

namespace A245268.P3459174398119672344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.choose (n + 1) d

end

end A245268.P3459174398119672344

/-!
# A245269: Sum of binomial(n,k) over cubefree k.

The programs for A245269, there is no canonical definition to state claims against.
-/

/-! ## A245269.P12311950096664110735

`∑[A000027(A000079(n)-A290995(n))]`
-/

namespace A245269.P12311950096664110735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000079 n - A290995 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245269.P12311950096664110735

/-! ## A245269.P387068427740380553

`A000203(2^n)-∑[A290995(n)]`
-/

namespace A245269.P387068427740380553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 ^ n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245269.P387068427740380553

/-! ## A245269.P665185901191778912

`2^(n+1)-A306859(A000005(2^n))`
-/

namespace A245269.P665185901191778912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A306859 (A000005 (2 ^ n)).toNat

end

end A245269.P665185901191778912

/-! ## A245269.P4679932976157196410

`∑[2^n-C(n, A031182(A060920(3*n+1)))]`
-/

namespace A245269.P4679932976157196410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Nat.choose n (A031182 (A060920 (3 * n + 1)).toNat).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245269.P4679932976157196410

/-! ## A245269.P5468776956818252791

`A000010(A000079(n+2))-A306859(n+1)`
-/

namespace A245269.P5468776956818252791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000079 (n + 2)).toNat - A306859 (n + 1)

end

end A245269.P5468776956818252791

/-!
# A245271: a(n) = floor(sqrt(F(n+2)^2 + F(n)^2)), where F(n) = A000045(n).

The programs for A245271, the canonical program `A245271.P16500311172593068837` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245271 has offset 0).

The definition of A245271 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(A000045(n+2)²+A000045(n)²))` (program `A245271.P16500311172593068837`, by `A245271.P16500311172593068837.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245271.P16500311172593068837

`floor(sqrt(A000045(n+2)²+A000045(n)²))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A245271

/-- `floor(sqrt(A000045(n+2)²+A000045(n)²))` -/
def P16500311172593068837.Spec : Prop :=
  ∀ n, P16500311172593068837.a n = A245271 n

theorem P16500311172593068837.correct : P16500311172593068837.Spec := by
  intro n
  simp only [A245271]

end A245271

/-! ## A245271.P106603522418744146

`A000196(A069921(n))`
-/

namespace A245271.P106603522418744146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A069921 n).toNat

end

end A245271.P106603522418744146

namespace A245271

/-- `A000196(A069921(n))` -/
def P106603522418744146.Spec : Prop :=
  ∀ n, P106603522418744146.a n = A245271 n

end A245271

/-! ## A245271.P1052220304020064362

`A000196(A000045(n+2)²+A000045(n)²)`
-/

namespace A245271.P1052220304020064362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000045 (n + 2) ^ 2 + A000045 n ^ 2).toNat

end

end A245271.P1052220304020064362

namespace A245271

/-- `A000196(A000045(n+2)²+A000045(n)²)` -/
def P1052220304020064362.Spec : Prop :=
  ∀ n, P1052220304020064362.a n = A245271 n

end A245271

/-! ## A245271.P18160933292746137322

`floor(sqrt(A069921(n)))`
-/

namespace A245271.P18160933292746137322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A069921 n)

end

end A245271.P18160933292746137322

namespace A245271

/-- `floor(sqrt(A069921(n)))` -/
def P18160933292746137322.Spec : Prop :=
  ∀ n, P18160933292746137322.a n = A245271 n

end A245271

/-! ## A245271.P11371194177608966735

`floor(sqrt(A099016(n+1)))`
-/

namespace A245271.P11371194177608966735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A099016 (n + 1))

end

end A245271.P11371194177608966735

namespace A245271

/-- `floor(sqrt(A099016(n+1)))` -/
def P11371194177608966735.Spec : Prop :=
  ∀ n, P11371194177608966735.a n = A245271 n

end A245271

/-! ## A245271.P4701250814323625660

`floor(sqrt(A362388(2*n)))`
-/

namespace A245271.P4701250814323625660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A362388 (2 * n))

end

end A245271.P4701250814323625660

namespace A245271

/-- `floor(sqrt(A362388(2*n)))` -/
def P4701250814323625660.Spec : Prop :=
  ∀ n, P4701250814323625660.a n = A245271 n

end A245271

/-! ## A245271.P4720988839623872993

`floor(Δ[sqrt(A026647(2*n+3))])`
-/

namespace A245271.P4720988839623872993
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A026647 (2 * n + 3) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A245271.P4720988839623872993

namespace A245271

/-- `floor(Δ[sqrt(A026647(2*n+3))])` -/
def P4720988839623872993.Spec : Prop :=
  ∀ n, P4720988839623872993.a n = A245271 n

end A245271

/-!
# A245272: Composite terms in sequence {A245024(n)-3}.

The programs for A245272, there is no canonical definition to state claims against.
-/

/-! ## A245272.P17103763094321524667

`lt[A020639(n+2), A107286(n)]`
-/

namespace A245272.P17103763094321524667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A245272.P17103763094321524667

/-! ## A245272.P6041683397665281238

`lt[A074828(n+2), A107286(n)]`
-/

namespace A245272.P6041683397665281238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A245272.P6041683397665281238

/-! ## A245272.P3407012704492501535

`lt[A092067(n+1), A063918(A028310(n))]`
-/

namespace A245272.P3407012704492501535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063918 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A245272.P3407012704492501535

/-! ## A245272.P8245854999110601993

`lt[A070229(A117365(n+2)), A107286(n)]`
-/

namespace A245272.P8245854999110601993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (A117365 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A245272.P8245854999110601993

/-! ## A245272.P11281278115184268592

`lt[A117365(A117367(n+2)), A107286(n)]`
-/

namespace A245272.P11281278115184268592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117365 (A117367 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A245272.P11281278115184268592

/-! ## A245272.P37509111997403718

`lt[A092067(n+1), A063918(A233583(n+1))]`
-/

namespace A245272.P37509111997403718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063918 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A245272.P37509111997403718

/-!
# A245273: Decimal expansion of zeta''(0)+2, the coefficient of z^2 in the Laurent expansion of zeta(z) at the origin.

The programs for A245273, there is no canonical definition to state claims against.
-/

/-! ## A245273.P2343885661200925286

`A257549(n+1)`
-/

namespace A245273.P2343885661200925286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257549 (n + 1 + 1)

end

end A245273.P2343885661200925286

/-!
# A245274: Composite terms in sequence {A243937(n)-1}.

The programs for A245274, there is no canonical definition to state claims against.
-/

/-! ## A245274.P14128324555081383780

`∩[A025583(n+1), A243937(n+1)-1]`
-/

namespace A245274.P14128324555081383780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243937 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245274.P14128324555081383780

/-! ## A245274.P17785086696077956953

`∩[A141468(n+1), A243937(n+1)-1]`
-/

namespace A245274.P17785086696077956953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243937 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245274.P17785086696077956953

/-! ## A245274.P7451982868319287524

`∩[A025583(n+1), A233583(A243937(n+1))]`
-/

namespace A245274.P7451982868319287524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A243937 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245274.P7451982868319287524

/-! ## A245274.P3479422371137950293

`filter[A129820(2*(n+1)), A369653(#)]`
-/

namespace A245274.P3479422371137950293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129820 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369653 (f1 j).toNat = 1) n)

end

end A245274.P3479422371137950293

/-!
# A245279: Decimal expansion of a1, the first of two constants associated with Djokovic's conjecture on an integral inequality.

The programs for A245279, there is no canonical definition to state claims against.
-/

/-! ## A245279.P1475184483160264918

`9-A245280(n)`
-/

namespace A245279.P1475184483160264918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A245280 n

end

end A245279.P1475184483160264918

/-!
# A245280: Decimal expansion of a2, the second of two constants associated with Djokovic's conjecture on an integral inequality.

The programs for A245280, there is no canonical definition to state claims against.
-/

/-! ## A245280.P13329606803014033468

`9-A245279(n)`
-/

namespace A245280.P13329606803014033468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A245279 n

end

end A245280.P13329606803014033468

/-!
# A245282: G.f.: Sum_{n>=1} Fibonacci(n+1) * x^n / (1 - x^n).

The programs for A245282, the canonical program `A245282.P6452615831386113322` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245282 has offset 1).

The definition of A245282 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245282.P6452615831386113322

`∑{d}[n+1, A000045(#+1)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A245282

/-- `∑{d}[n+1, A000045(#+1)]` -/
def P6452615831386113322.Spec : Prop :=
  ∀ n, P6452615831386113322.a n = A245282 (n + 1)

theorem P6452615831386113322.correct : P6452615831386113322.Spec := by
  intro n
  simp only [A245282, Nat.add_sub_cancel]

end A245282

/-! ## A245282.P6766044560610167490

`∑{d}[n+1, A000071(#+1)+1]`
-/

namespace A245282.P6766044560610167490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000071 (d + 1) + 1)

end

end A245282.P6766044560610167490

namespace A245282

/-- `∑{d}[n+1, A000071(#+1)+1]` -/
def P6766044560610167490.Spec : Prop :=
  ∀ n, P6766044560610167490.a n = A245282 (n + 1)

theorem P6766044560610167490.correct : P6766044560610167490.Spec := by
  intro n
  simp only [A245282, Nat.add_sub_cancel, A245282.P6766044560610167490.f1, A245282.P6766044560610167490.a, A245282.P6452615831386113322.f1, A245282.P6452615831386113322.a, A000045, A000045.P11838749114346432762.a, A000071, A000071.P17543778731970887199.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245282

/-! ## A245282.P3844514071223747259

`∑{d}[n+1, A001611(#+1)-1]`
-/

namespace A245282.P3844514071223747259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A001611 (d + 1) - 1)

end

end A245282.P3844514071223747259

namespace A245282

/-- `∑{d}[n+1, A001611(#+1)-1]` -/
def P3844514071223747259.Spec : Prop :=
  ∀ n, P3844514071223747259.a n = A245282 (n + 1)

theorem P3844514071223747259.correct : P3844514071223747259.Spec := by
  intro n
  simp only [A245282, Nat.add_sub_cancel, A245282.P3844514071223747259.f1, A245282.P3844514071223747259.a, A245282.P6452615831386113322.f1, A245282.P6452615831386113322.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245282

/-! ## A245282.P9319623957038657196

`A108046(n+1)+A007435(n+1)`
-/

namespace A245282.P9319623957038657196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108046 (n + 1) + A007435 (n + 1)

end

end A245282.P9319623957038657196

namespace A245282

/-- `A108046(n+1)+A007435(n+1)` -/
def P9319623957038657196.Spec : Prop :=
  ∀ n, P9319623957038657196.a n = A245282 (n + 1)

theorem P9319623957038657196.correct : P9319623957038657196.Spec := by
  intro n
  simp only [A245282, Nat.add_sub_cancel, A245282.P9319623957038657196.a, A245282.P6452615831386113322.f1, A245282.P6452615831386113322.a, A000045, A000045.P11838749114346432762.a, A007435, A007435.P9180709624338983869.a, A108046, A108046.P11021715180848033602.f1, A108046.P11021715180848033602.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245282

/-! ## A245282.P6694965542074070403

`A220768(n+1)-A001227(n+1)`
-/

namespace A245282.P6694965542074070403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220768 (n + 1) - A001227 (n + 1)

end

end A245282.P6694965542074070403

namespace A245282

/-- `A220768(n+1)-A001227(n+1)` -/
def P6694965542074070403.Spec : Prop :=
  ∀ n, P6694965542074070403.a n = A245282 (n + 1)

end A245282

/-! ## A245282.P1885306128918435145

`∑{d}[n+1, A000005(#)*A225202((n+1)/#)]`
-/

namespace A245282.P1885306128918435145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A225202 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245282.P1885306128918435145

namespace A245282

/-- `∑{d}[n+1, A000005(#)*A225202((n+1)/#)]` -/
def P1885306128918435145.Spec : Prop :=
  ∀ n, P1885306128918435145.a n = A245282 (n + 1)

end A245282

/-! ## A245282.P13819220378989516040

`∑{d}[n+1, A179942(#)*A225202((n+1)/#)]`
-/

namespace A245282.P13819220378989516040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A179942 d * A225202 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245282.P13819220378989516040

namespace A245282

/-- `∑{d}[n+1, A179942(#)*A225202((n+1)/#)]` -/
def P13819220378989516040.Spec : Prop :=
  ∀ n, P13819220378989516040.a n = A245282 (n + 1)

end A245282

/-! ## A245282.P222246208722411603

`A100107(n+1)-A108046(n+1)`
-/

namespace A245282.P222246208722411603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100107 (n + 1) - A108046 (n + 1)

end

end A245282.P222246208722411603

namespace A245282

/-- `A100107(n+1)-A108046(n+1)` -/
def P222246208722411603.Spec : Prop :=
  ∀ n, P222246208722411603.a n = A245282 (n + 1)

end A245282

/-! ## A245282.P1152968476995309310

`∑{d}[n+1, A092565(#²)]`
-/

namespace A245282.P1152968476995309310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092565 (d ^ 2)

end

end A245282.P1152968476995309310

namespace A245282

/-- `∑{d}[n+1, A092565(#²)]` -/
def P1152968476995309310.Spec : Prop :=
  ∀ n, P1152968476995309310.a n = A245282 (n + 1)

end A245282

/-!
# A245283: a(n) = a(n-1) * (a(n-1) + a(n-2)) / a(n-4) with a(1) = a(2) = a(3) = a(4) = 1.

The programs for A245283, the canonical program `A245283.P18095564797538218435` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245283 has offset 1).

The definition of A245283 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245283.P18095564797538218435

`a(n-1)*(a(n-1)+a(n-2))/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245283

/-- `a(n-1)*(a(n-1)+a(n-2))/a(n-4)` -/
def P18095564797538218435.Spec : Prop :=
  ∀ n, P18095564797538218435.a n = (A245283 (n + 1) : ℚ)

end A245283

/-! ## A245283.P5587798014393535534

`A200181(A261104(n!))`
-/

namespace A245283.P5587798014393535534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (A261104 (Nat.factorial n)).toNat

end

end A245283.P5587798014393535534

namespace A245283

/-- `A200181(A261104(n!))` -/
def P5587798014393535534.Spec : Prop :=
  ∀ n, P5587798014393535534.a n = A245283 (n + 1)

end A245283

/-! ## A245283.P2600206200383117589

`A372671(A350514(n*(n+1)/2))`
-/

namespace A245283.P2600206200383117589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372671 (A350514 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat).toNat

end

end A245283.P2600206200383117589

namespace A245283

/-- `A372671(A350514(n*(n+1)/2))` -/
def P2600206200383117589.Spec : Prop :=
  ∀ n, P2600206200383117589.a n = A245283 (n + 1)

end A245283

/-! ## A245283.P14790216392578354668

`A007732(floor(A258498(n)/A234521(n+1))+1)`
-/

namespace A245283.P14790216392578354668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (⌊(A258498 n : ℚ) / (A234521 (n + 1) : ℚ)⌋ + 1).toNat

end

end A245283.P14790216392578354668

namespace A245283

/-- `A007732(floor(A258498(n)/A234521(n+1))+1)` -/
def P14790216392578354668.Spec : Prop :=
  ∀ n, P14790216392578354668.a n = A245283 (n + 1)

end A245283

/-!
# A245284: For any composite number n with more than a single prime factor, take the polynomial defined by the product of the terms (x-pi)^ei, where pi are the prime factors of n with multiplicities ei. Integrate this polynomial from the minimum to the maximum value of pi. This sequence lists the numbers for which the integral is an integer.

The programs for A245284, there is no canonical definition to state claims against.
-/

/-! ## A245284.P13461315579530491894

`eq[A130784(A173036(n)), A305614(n)]`
-/

namespace A245284.P13461315579530491894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A173036 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245284.P13461315579530491894

/-! ## A245284.P1367491483555429971

`lt[A033478(A074148(n+1)), A305614(n)]`
-/

namespace A245284.P1367491483555429971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033478 (A074148 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A245284.P1367491483555429971

/-!
# A245285: a(n) is the smallest m such that m! > exp(n*m); or where the mean of the logs of the first m integers exceeds n.

The programs for A245285, there is no canonical definition to state claims against.
-/

/-! ## A245285.P7359585575827568577

`record[gcd(n+2, A025201(n+2))]`
-/

namespace A245285.P7359585575827568577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A025201 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245285.P7359585575827568577

/-! ## A245285.P2701841212526072861

`A008620(∑[3*A248873(n)])`
-/

namespace A245285.P2701841212526072861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A248873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A245285.P2701841212526072861

/-! ## A245285.P6511174846969095974

`∑[A001281(A040000(n)*A248873(n))]`
-/

namespace A245285.P6511174846969095974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A040000 n * A248873 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245285.P6511174846969095974

/-! ## A245285.P9340424001792203340

`∑[A064780(n)+A010815(A213227(n))]+1`
-/

namespace A245285.P9340424001792203340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064780 n + A010815 (A213227 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A245285.P9340424001792203340

/-!
# A245288: a(n) = (4*n^2 - 2*n - 1 + (2*n^2 - 2*n + 1)*(-1)^n)/16.

The programs for A245288, the canonical program `A245288.P17886046644745349502` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245288 has offset 0).

The definition of A245288 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n²-2*n-1+(2*n²-2*n+1)*(-1)^n)/16` (program `A245288.P16942508635241021653`, by `A245288.P16942508635241021653.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245288.P17317924980988037621

`ogf((x^2+x^3+2x^4)/(1-3x^2+3x^4-x^6))`
-/

namespace A245288.P17317924980988037621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 1, 2] [1, 0, -3, 0, 3, 0, -1] n

end

end A245288.P17317924980988037621

namespace A245288

/-- `ogf((x^2+x^3+2x^4)/(1-3x^2+3x^4-x^6))` -/
def P17317924980988037621.Spec : Prop :=
  ∀ n, P17317924980988037621.a n = A245288 n

end A245288

/-! ## A245288.P17886046644745349502

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=5, a(5)=3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245288

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P17886046644745349502.Spec : Prop :=
  ∀ n, P17886046644745349502.a n = A245288 n

theorem P17886046644745349502.correct : P17886046644745349502.Spec := by
  intro n
  simp only [A245288]

end A245288

/-! ## A245288.P16942508635241021653

`(4*n²-2*n-1+(2*n²-2*n+1)*(-1)^n)/16`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245288.P16942508635241021653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n ^ 2 : ℤ) - (2 * n : ℤ) - 1 + ((2 * n ^ 2 : ℤ) - (2 * n : ℤ) + 1) * (-1) ^ n : ℚ) / 16

end

end A245288.P16942508635241021653

namespace A245288

/-- `(4*n²-2*n-1+(2*n²-2*n+1)*(-1)^n)/16` -/
def P16942508635241021653.Spec : Prop :=
  ∀ n, P16942508635241021653.a n = (A245288 n : ℚ)

theorem P16942508635241021653.correct : P16942508635241021653.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A245288, Nat.add_sub_cancel, A245288.P16942508635241021653.a, A245288.P17886046644745349502.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A245288, Nat.add_sub_cancel, A245288.P16942508635241021653.a, A245288.P17886046644745349502.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A245288

/-! ## A245288.P7066929118037403582

`(n-1)*floor(n/2)-a(n-1)` with `a(0)=0`
-/

namespace A245288.P7066929118037403582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n : ℤ) - 1) * ⌊(n : ℚ) / 2⌋ - a (n - 1)

end

end A245288.P7066929118037403582

namespace A245288

/-- `(n-1)*floor(n/2)-a(n-1)` -/
def P7066929118037403582.Spec : Prop :=
  ∀ n, P7066929118037403582.a n = A245288 n

end A245288

/-! ## A245288.P1131302205959481098

`∑[floor(n/2)*Δ[(n-2)/gcd(2, n)]]`
-/

namespace A245288.P1131302205959481098
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) / (Nat.gcd 2 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 2⌋ : ℚ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245288.P1131302205959481098

namespace A245288

/-- `∑[floor(n/2)*Δ[(n-2)/gcd(2, n)]]` -/
def P1131302205959481098.Spec : Prop :=
  ∀ n, P1131302205959481098.a n = (A245288 n : ℚ)

end A245288

/-! ## A245288.P16173018614232145809

`A129370(n)-A210977(n)`
-/

namespace A245288.P16173018614232145809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129370 n - A210977 n

end

end A245288.P16173018614232145809

namespace A245288

/-- `A129370(n)-A210977(n)` -/
def P16173018614232145809.Spec : Prop :=
  ∀ n, P16173018614232145809.a n = A245288 n

end A245288

/-! ## A245288.P13709717369176207454

`A211539(n)-A129889(n)`
-/

namespace A245288.P13709717369176207454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211539 n - A129889 n

end

end A245288.P13709717369176207454

namespace A245288

/-- `A211539(n)-A129889(n)` -/
def P13709717369176207454.Spec : Prop :=
  ∀ n, P13709717369176207454.a n = A245288 n

end A245288

/-! ## A245288.P17482514103003673266

`A002717(n)%A084263(n)`
-/

namespace A245288.P17482514103003673266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002717 n) (A084263 n)

end

end A245288.P17482514103003673266

namespace A245288

/-- `A002717(n)%A084263(n)` -/
def P17482514103003673266.Spec : Prop :=
  ∀ n, P17482514103003673266.a n = A245288 n

end A245288

/-! ## A245288.P4341400956767425494

`∑[A004526(n)*A097140(n)]`
-/

namespace A245288.P4341400956767425494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n * A097140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245288.P4341400956767425494

namespace A245288

/-- `∑[A004526(n)*A097140(n)]` -/
def P4341400956767425494.Spec : Prop :=
  ∀ n, P4341400956767425494.a n = A245288 n

end A245288

/-! ## A245288.P7140984508905233807

`A019298(n)%A099392(n+1)`
-/

namespace A245288.P7140984508905233807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019298 n) (A099392 (n + 1))

end

end A245288.P7140984508905233807

namespace A245288

/-- `A019298(n)%A099392(n+1)` -/
def P7140984508905233807.Spec : Prop :=
  ∀ n, P7140984508905233807.a n = A245288 n

end A245288

/-! ## A245288.P13404386445327585915

`∑[(A008619(n)-1)*A097140(n)]`
-/

namespace A245288.P13404386445327585915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008619 n - 1) * A097140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245288.P13404386445327585915

namespace A245288

/-- `∑[(A008619(n)-1)*A097140(n)]` -/
def P13404386445327585915.Spec : Prop :=
  ∀ n, P13404386445327585915.a n = A245288 n

end A245288

/-! ## A245288.P8847243610975578113

`∑[A026741(A004442(n))]-A079097(n)`
-/

namespace A245288.P8847243610975578113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A079097 n

end

end A245288.P8847243610975578113

namespace A245288

/-- `∑[A026741(A004442(n))]-A079097(n)` -/
def P8847243610975578113.Spec : Prop :=
  ∀ n, P8847243610975578113.a n = A245288 n

end A245288

/-! ## A245288.P15220715847028879187

`A004526(n)/2*A014682(A014681(n))`
-/

namespace A245288.P15220715847028879187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 n : ℚ) / 2 * (A014682 (A014681 n).toNat : ℚ)

end

end A245288.P15220715847028879187

namespace A245288

/-- `A004526(n)/2*A014682(A014681(n))` -/
def P15220715847028879187.Spec : Prop :=
  ∀ n, P15220715847028879187.a n = (A245288 n : ℚ)

end A245288

/-! ## A245288.P9493384844438923261

`abs(Δ[A060422(n)])`
-/

namespace A245288.P9493384844438923261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A245288.P9493384844438923261

namespace A245288

/-- `abs(Δ[A060422(n)])` -/
def P9493384844438923261.Spec : Prop :=
  ∀ n, P9493384844438923261.a n = A245288 n

end A245288

/-! ## A245288.P8348105826591627863

`A124093(n+1)+A002620(n)-A123596(n+1)`
-/

namespace A245288.P8348105826591627863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 (n + 1) + (A002620 n - A123596 (n + 1))

end

end A245288.P8348105826591627863

namespace A245288

/-- `A124093(n+1)+A002620(n)-A123596(n+1)` -/
def P8348105826591627863.Spec : Prop :=
  ∀ n, P8348105826591627863.a n = A245288 n

end A245288

/-! ## A245288.P14409186359746875423

`∑{#}[floor(n/2), #^(C(#+#, n)+1)]`
-/

namespace A245288.P14409186359746875423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k ^ (Nat.choose (k + k) n + 1)

end

end A245288.P14409186359746875423

namespace A245288

/-- `∑{#}[floor(n/2), #^(C(#+#, n)+1)]` -/
def P14409186359746875423.Spec : Prop :=
  ∀ n, (P14409186359746875423.a n : ℤ) = A245288 n

end A245288

/-! ## A245288.P8779900432320068252

`∑{#}[floor(n/2), #*C(#, C(#+#, n))]`
-/

namespace A245288.P8779900432320068252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k * Nat.choose k (Nat.choose (k + k) n)

end

end A245288.P8779900432320068252

namespace A245288

/-- `∑{#}[floor(n/2), #*C(#, C(#+#, n))]` -/
def P8779900432320068252.Spec : Prop :=
  ∀ n, (P8779900432320068252.a n : ℤ) = A245288 n

end A245288

/-! ## A245288.P7347195173927115125

`∑{#}[floor(n/2), #*floor(n/2)^C(#, n-#)]`
-/

namespace A245288.P7347195173927115125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k : ℤ) * ⌊(n : ℚ) / 2⌋ ^ Nat.choose k ((n : ℤ) - (k : ℤ)).toNat

end

end A245288.P7347195173927115125

namespace A245288

/-- `∑{#}[floor(n/2), #*floor(n/2)^C(#, n-#)]` -/
def P7347195173927115125.Spec : Prop :=
  ∀ n, P7347195173927115125.a n = A245288 n

end A245288

/-! ## A245288.P13035864243305691851

`A361226(A101881(n))`
-/

namespace A245288.P13035864243305691851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361226 (A101881 n).toNat

end

end A245288.P13035864243305691851

namespace A245288

/-- `A361226(A101881(n))` -/
def P13035864243305691851.Spec : Prop :=
  ∀ n, P13035864243305691851.a n = A245288 n

end A245288

/-!
# A245289: Balanced squarefrees (of order one): squarefree numbers which are the average of the previous squarefree number and the following squarefree number.

The programs for A245289, the canonical program `A245289.P17095845750979976021` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245289 has offset 1).

The definition of A245289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245289.P5323949696412203106

`A005117(eq[0, A376590(n+1)]+2)`
-/

namespace A245289.P5323949696412203106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A245289.P5323949696412203106

namespace A245289

/-- `A005117(eq[0, A376590(n+1)]+2)` -/
def P5323949696412203106.Spec : Prop :=
  ∀ n, P5323949696412203106.a n = A245289 (n + 1)

end A245289

/-! ## A245289.P17095845750979976021

`A144338(eq[A076259(n+1), A076259(n+2)]+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A245289

/-- `A144338(eq[A076259(n+1), A076259(n+2)]+1)` -/
def P17095845750979976021.Spec : Prop :=
  ∀ n, P17095845750979976021.a n = A245289 (n + 1)

theorem P17095845750979976021.correct : P17095845750979976021.Spec := by
  intro n
  simp only [A245289, Nat.add_sub_cancel]

end A245289

/-! ## A245289.P9619251619196560159

`A144338(A376591(n+1))`
-/

namespace A245289.P9619251619196560159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (A376591 (n + 1)).toNat

end

end A245289.P9619251619196560159

namespace A245289

/-- `A144338(A376591(n+1))` -/
def P9619251619196560159.Spec : Prop :=
  ∀ n, P9619251619196560159.a n = A245289 (n + 1)

end A245289

/-! ## A245289.P17261249646802084148

`A005117(A376591(n+1)+1)`
-/

namespace A245289.P17261249646802084148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A376591 (n + 1) + 1).toNat

end

end A245289.P17261249646802084148

namespace A245289

/-- `A005117(A376591(n+1)+1)` -/
def P17261249646802084148.Spec : Prop :=
  ∀ n, P17261249646802084148.a n = A245289 (n + 1)

end A245289

/-! ## A245289.P4775055860383700060

`A023977(A148524(n))+A016825(n)`
-/

namespace A245289.P4775055860383700060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023977 (A148524 n).toNat + A016825 n

end

end A245289.P4775055860383700060

namespace A245289

/-- `A023977(A148524(n))+A016825(n)` -/
def P4775055860383700060.Spec : Prop :=
  ∀ n, P4775055860383700060.a n = A245289 (n + 1)

end A245289

/-!
# A245290: Number of normalized graph Laplacian matrices of nonempty labeled graphs of 2n vertices that are separable in C^2 X C^n as density matrices in quantum mechanics.

The programs for A245290, there is no canonical definition to state claims against.
-/

/-! ## A245290.P8166904251046317384

`2^((n+1)*n)*A229865(n+1)-1`
-/

namespace A245290.P8166904251046317384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ ((n + 1) * n) : ℤ) * A229865 (n + 1) - 1

end

end A245290.P8166904251046317384

/-! ## A245290.P17889618148811980038

`A002416(n+1)*A007080(n+1)-1`
-/

namespace A245290.P17889618148811980038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002416 (n + 1) * A007080 (n + 1) - 1

end

end A245290.P17889618148811980038

/-!
# A245291: Number of normalized graph Laplacian matrices of nonempty labeled graphs of 2n vertices that are entangled in C^2 x C^n as density matrices in quantum mechanics.

The programs for A245291, there is no canonical definition to state claims against.
-/

/-! ## A245291.P17173876178109168038

`2^((n+1)*(2*(n+1)-1))-2^((n+1)*n)*A229865(n+1)`
-/

namespace A245291.P17173876178109168038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 1 : ℤ) * ((2 * (n + 1) : ℤ) - 1) : ℤ) - ((2 ^ ((n + 1) * n) : ℤ) * A229865 (n + 1) : ℚ)

end

end A245291.P17173876178109168038

/-!
# A245294: Decimal expansion of the square root of 6/5.

The programs for A245294, there is no canonical definition to state claims against.
-/

/-! ## A245294.P327877259908452638

`A176057(n)-A000007(n)`
-/

namespace A245294.P327877259908452638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176057 (n + 1) - A000007 n

end

end A245294.P327877259908452638

/-! ## A245294.P11918820252893480869

`A176057(n)-char[A058305(A001844(n))]`
-/

namespace A245294.P11918820252893480869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A001844 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176057 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A245294.P11918820252893480869

/-! ## A245294.P2934851791664815787

`A040024(n)/A010700(n+1)*A176057(n)`
-/

namespace A245294.P2934851791664815787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040024 n : ℚ) / (A010700 (n + 1) : ℚ) * (A176057 (n + 1) : ℚ)

end

end A245294.P2934851791664815787

/-! ## A245294.P12652305353075247162

`A176057(n)^A001222(A008578(n+1))`
-/

namespace A245294.P12652305353075247162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176057 (n + 1) : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A245294.P12652305353075247162

/-! ## A245294.P4968075781254118348

`A176057(n)/A014963(A016825(n))`
-/

namespace A245294.P4968075781254118348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176057 (n + 1) : ℚ) / (A014963 (A016825 n).toNat : ℚ)

end

end A245294.P4968075781254118348

/-! ## A245294.P10049495122542499128

`A176057(n)/A014963(∑[A010700(n)])`
-/

namespace A245294.P10049495122542499128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010700 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176057 (n + 1) : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A245294.P10049495122542499128

/-! ## A245294.P2919652428115911946

`A176057(n)^(A000225(n)%2)`
-/

namespace A245294.P2919652428115911946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176057 (n + 1) : ℚ) ^ (Int.tmod (A000225 n) 2 : ℤ)

end

end A245294.P2919652428115911946

