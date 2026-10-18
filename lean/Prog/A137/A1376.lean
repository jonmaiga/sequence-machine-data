import SequenceMachineLib
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
import Seq.B000.C032
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

/-!
# A137600: Numbers n such that sigma(sigma(n))-phi(phi(n)) = 3n.

The programs for A137600, there is no canonical definition to state claims against.
-/

/-! ## A137600.P453067346868604146

`filter[A136131(n+2), A341629(#)]`
-/

namespace A137600.P453067346868604146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136131 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A137600.P453067346868604146

/-!
# A137605: Consider the sequence: b(0) = n, and for k >= 1, b(k) = b(k-1)/2 if b(k-1) is even, otherwise b(k) = n - (b(k-1)+1)/2. Then a(n) = m, where m is the smallest index such that b(m) = 1.

The programs for A137605, there is no canonical definition to state claims against.
-/

/-! ## A137605.P4987270421315002234

`A003558(char[1]+n)-1`
-/

namespace A137605.P4987270421315002234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 ((if ∃ j, f1 j = n then 1 else 0) + n) - 1

end

end A137605.P4987270421315002234

/-! ## A137605.P6250247812870168107

`abs(1-char[1]-A003558(n))`
-/

namespace A137605.P6250247812870168107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A003558 n|

end

end A137605.P6250247812870168107

/-! ## A137605.P5708119714051293723

`A057428(abs(1-n))+A003558(n)`
-/

namespace A137605.P5708119714051293723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 |1 - (n : ℤ)|.toNat + A003558 n

end

end A137605.P5708119714051293723

/-! ## A137605.P4566741963340724315

`(A003558(n)+A289207(n)+2)%(n+1)`
-/

namespace A137605.P4566741963340724315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003558 n + (A289207 n + 2)) (n + 1 : ℤ)

end

end A137605.P4566741963340724315

/-! ## A137605.P9345809370913114317

`A028310(A003558(n))-A060576(n)`
-/

namespace A137605.P9345809370913114317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A003558 n).toNat - A060576 n

end

end A137605.P9345809370913114317

/-! ## A137605.P5135194529095928679

`(A233583(n+1)+A003558(n))%(n+1)`
-/

namespace A137605.P5135194529095928679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (n + 1) + A003558 n) (n + 1 : ℤ)

end

end A137605.P5135194529095928679

/-!
# A137606: Numbers m such that all numbers {1...m} appear in the sequence {b(0) = m, b(n+1) = b(n)/2 if even, m-(b(n)+1)/2 otherwise}.

The programs for A137606, there is no canonical definition to state claims against.
-/

/-! ## A137606.P13239480117878870000

`round(p?[A007885(n+1)]/2)`
-/

namespace A137606.P13239480117878870000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2)

end

end A137606.P13239480117878870000

/-! ## A137606.P12525900667326534285

`record[A082654(n+1)+1]`
-/

namespace A137606.P12525900667326534285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082654 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137606.P12525900667326534285

/-! ## A137606.P9369609006962003976

`record[and(n, A003558(n))+1]`
-/

namespace A137606.P9369609006962003976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A003558 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137606.P9369609006962003976

/-! ## A137606.P13451324433216811061

`record[and(n, A053447(n))+1]`
-/

namespace A137606.P13451324433216811061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A053447 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137606.P13451324433216811061

/-! ## A137606.P7782715853235200354

`eq[n, and(n, A216829(n+1))]+1`
-/

namespace A137606.P7782715853235200354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A216829 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137606.P7782715853235200354

/-! ## A137606.P9260458558029360280

`record[(n+1)/a(A001221(A141110(n)))]` with `a(0)=1`
-/

namespace A137606.P9260458558029360280
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℚ) / f1 (A001221 (A141110 n).toNat).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137606.P9260458558029360280

/-! ## A137606.P15161537184598992615

`eq[A001935(n), A001935(A003558(n))]+1`
-/

namespace A137606.P15161537184598992615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (A003558 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A137606.P15161537184598992615

/-! ## A137606.P10351177818643519457

`eq[A008619(A003558(n)), A008619(n)]+1`
-/

namespace A137606.P10351177818643519457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003558 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A137606.P10351177818643519457

/-! ## A137606.P4506532437221382688

`eq[A016095(A003558(n)), A016095(n)]+1`
-/

namespace A137606.P4506532437221382688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016095 (A003558 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016095 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A137606.P4506532437221382688

/-! ## A137606.P4242636279974544826

`eq[A052928(A003558(n)), A052928(n)]+1`
-/

namespace A137606.P4242636279974544826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A003558 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A137606.P4242636279974544826

/-! ## A137606.P940353351061620584

`eq[A060143(A003558(n)), A060143(n)]+1`
-/

namespace A137606.P940353351061620584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A003558 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A137606.P940353351061620584

/-! ## A137606.P13466138027384671449

`eq[A052928(n), A052928(A053447(n))]+1`
-/

namespace A137606.P13466138027384671449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A053447 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A137606.P13466138027384671449

/-! ## A137606.P3561755621760683713

`eq[A109613(A003558(n)), A109613(n)]+1`
-/

namespace A137606.P3561755621760683713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A003558 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A137606.P3561755621760683713

/-! ## A137606.P106045469285692625

`eq[A267872(A003558(n)), A267872(n)]+1`
-/

namespace A137606.P106045469285692625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (A003558 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A137606.P106045469285692625

/-! ## A137606.P14531065194331680014

`eq[A267873(A003558(n)), A267873(n)]+1`
-/

namespace A137606.P14531065194331680014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 (A003558 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A137606.P14531065194331680014

/-! ## A137606.P18220754288151978977

`record[gcd(n+1, A026741(A002326(n))+1)]`
-/

namespace A137606.P18220754288151978977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A026741 (A002326 n).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137606.P18220754288151978977

/-! ## A137606.P5306259604919688555

`A007897(p?[A007885(n+1)])`
-/

namespace A137606.P5306259604919688555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007897 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137606.P5306259604919688555

/-! ## A137606.P16721209799544082578

`record[(n+1)%(A078898(A055388(n+1))+2)]`
-/

namespace A137606.P16721209799544082578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A078898 (A055388 (n + 1)).toNat + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137606.P16721209799544082578

/-! ## A137606.P692547712993119739

`eq[A007735(2*n+1), A065033(2*n)]+1`
-/

namespace A137606.P692547712993119739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A137606.P692547712993119739

/-! ## A137606.P10306706171836440621

`A007898(p?[A007885(n+1)])`
-/

namespace A137606.P10306706171836440621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007898 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137606.P10306706171836440621

/-!
# A137608: Expansion of (1 - psi(-q)^3 / psi(-q^3)) / 3 in powers of q where psi() is a Ramanujan theta function.

The programs for A137608, the canonical program `A137608.P11362222229796310962` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137608 has offset 1).

The definition of A137608 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035178, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A137608.P11362222229796310962

`(-1)^n*A035178(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A137608

/-- `(-1)^n*A035178(n+1)` -/
def P11362222229796310962.Spec : Prop :=
  ∀ n, P11362222229796310962.a n = A137608 (n + 1)

theorem P11362222229796310962.correct : P11362222229796310962.Spec := by
  intro n
  simp only [A137608, Nat.add_sub_cancel]

end A137608

/-! ## A137608.P10930228301176387209

`A123863(A038502(n+1))`
-/

namespace A137608.P10930228301176387209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123863 (A038502 (n + 1)).toNat

end

end A137608.P10930228301176387209

namespace A137608

/-- `A123863(A038502(n+1))` -/
def P10930228301176387209.Spec : Prop :=
  ∀ n, P10930228301176387209.a n = A137608 (n + 1)

end A137608

/-! ## A137608.P11782936730093406994

`A093829(A259445(n+1))`
-/

namespace A137608.P11782936730093406994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (A259445 (n + 1)).toNat

end

end A137608.P11782936730093406994

namespace A137608

/-- `A093829(A259445(n+1))` -/
def P11782936730093406994.Spec : Prop :=
  ∀ n, P11782936730093406994.a n = A137608 (n + 1)

end A137608

/-! ## A137608.P10663848789609606382

`A113447(n+1)*A309873(n+1)`
-/

namespace A137608.P10663848789609606382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113447 (n + 1) * A309873 (n + 1)

end

end A137608.P10663848789609606382

namespace A137608

/-- `A113447(n+1)*A309873(n+1)` -/
def P10663848789609606382.Spec : Prop :=
  ∀ n, P10663848789609606382.a n = A137608 (n + 1)

end A137608

/-! ## A137608.P17621432523308408736

`A113447(n+1)*A343785(n+1)`
-/

namespace A137608.P17621432523308408736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113447 (n + 1) * A343785 (n + 1)

end

end A137608.P17621432523308408736

namespace A137608

/-- `A113447(n+1)*A343785(n+1)` -/
def P17621432523308408736.Spec : Prop :=
  ∀ n, P17621432523308408736.a n = A137608 (n + 1)

end A137608

/-! ## A137608.P17037963060869065389

`A122860(n+1)/A105931(n+1)`
-/

namespace A137608.P17037963060869065389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122860 (n + 1) : ℚ) / (A105931 (n + 1) : ℚ)

end

end A137608.P17037963060869065389

namespace A137608

/-- `A122860(n+1)/A105931(n+1)` -/
def P17037963060869065389.Spec : Prop :=
  ∀ n, P17037963060869065389.a n = (A137608 (n + 1) : ℚ)

end A137608

/-! ## A137608.P3137456580423398004

`∑{d}[n+1, A069517(#)*A112298((n+1)/#)]`
-/

namespace A137608.P3137456580423398004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069517 d * A112298 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A137608.P3137456580423398004

namespace A137608

/-- `∑{d}[n+1, A069517(#)*A112298((n+1)/#)]` -/
def P3137456580423398004.Spec : Prop :=
  ∀ n, P3137456580423398004.a n = A137608 (n + 1)

end A137608

/-! ## A137608.P10086584862383677143

`∑{d}[n+1, A123484(#)*A209229((n+1)/#)]`
-/

namespace A137608.P10086584862383677143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A123484 d * A209229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A137608.P10086584862383677143

namespace A137608

/-- `∑{d}[n+1, A123484(#)*A209229((n+1)/#)]` -/
def P10086584862383677143.Spec : Prop :=
  ∀ n, P10086584862383677143.a n = A137608 (n + 1)

end A137608

/-! ## A137608.P18111472868379401257

`∑{d}[n+1, A117212(#)*A326575((n+1)/#)]`
-/

namespace A137608.P18111472868379401257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117212 d * A326575 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A137608.P18111472868379401257

namespace A137608

/-- `∑{d}[n+1, A117212(#)*A326575((n+1)/#)]` -/
def P18111472868379401257.Spec : Prop :=
  ∀ n, P18111472868379401257.a n = A137608 (n + 1)

end A137608

/-! ## A137608.P16740202932105375054

`∑{d}[n+1, A036987(#-1)*A123484((n+1)/#)]`
-/

namespace A137608.P16740202932105375054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A123484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A137608.P16740202932105375054

namespace A137608

/-- `∑{d}[n+1, A036987(#-1)*A123484((n+1)/#)]` -/
def P16740202932105375054.Spec : Prop :=
  ∀ n, P16740202932105375054.a n = A137608 (n + 1)

end A137608

/-! ## A137608.P7415139930086684488

`lcm(A033999(n), A113447(n+1))*A033999(n)`
-/

namespace A137608.P7415139930086684488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A033999 n) (A113447 (n + 1)) : ℤ) * A033999 n

end

end A137608.P7415139930086684488

namespace A137608

/-- `lcm(A033999(n), A113447(n+1))*A033999(n)` -/
def P7415139930086684488.Spec : Prop :=
  ∀ n, P7415139930086684488.a n = A137608 (n + 1)

end A137608

/-! ## A137608.P15529960298817255598

`A132973(n+1)/(1-8/2)`
-/

namespace A137608.P15529960298817255598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132973 (n + 1) : ℚ) / (1 - (8 : ℚ) / 2)

end

end A137608.P15529960298817255598

namespace A137608

/-- `A132973(n+1)/(1-8/2)` -/
def P15529960298817255598.Spec : Prop :=
  ∀ n, P15529960298817255598.a n = (A137608 (n + 1) : ℚ)

end A137608

/-! ## A137608.P18266088190623928605

`A035178(n+1)*A097197(n)/A139135(n)`
-/

namespace A137608.P18266088190623928605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035178 (n + 1) * A097197 n : ℚ) / (A139135 n : ℚ)

end

end A137608.P18266088190623928605

namespace A137608

/-- `A035178(n+1)*A097197(n)/A139135(n)` -/
def P18266088190623928605.Spec : Prop :=
  ∀ n, P18266088190623928605.a n = (A137608 (n + 1) : ℚ)

end A137608

/-! ## A137608.P4480211606802635521

`A113447((n+1)*A056832(n+1))`
-/

namespace A137608.P4480211606802635521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113447 ((n + 1 : ℤ) * A056832 (n + 1)).toNat

end

end A137608.P4480211606802635521

namespace A137608

/-- `A113447((n+1)*A056832(n+1))` -/
def P4480211606802635521.Spec : Prop :=
  ∀ n, P4480211606802635521.a n = A137608 (n + 1)

end A137608

/-! ## A137608.P15319976092154517800

`A113447((n+1)*A060236(n+1))`
-/

namespace A137608.P15319976092154517800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113447 ((n + 1 : ℤ) * A060236 (n + 1)).toNat

end

end A137608.P15319976092154517800

namespace A137608

/-- `A113447((n+1)*A060236(n+1))` -/
def P15319976092154517800.Spec : Prop :=
  ∀ n, P15319976092154517800.a n = A137608 (n + 1)

end A137608

/-! ## A137608.P13583735494215106373

`A035178(n+1)*A057077(2*n)`
-/

namespace A137608.P13583735494215106373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035178 (n + 1) * A057077 (2 * n)

end

end A137608.P13583735494215106373

namespace A137608

/-- `A035178(n+1)*A057077(2*n)` -/
def P13583735494215106373.Spec : Prop :=
  ∀ n, P13583735494215106373.a n = A137608 (n + 1)

end A137608

/-! ## A137608.P7719733810976954437

`A035178(n+1)/A057077(Δ[n²])`
-/

namespace A137608.P7719733810976954437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035178 (n + 1) : ℚ) / (A057077 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A137608.P7719733810976954437

namespace A137608

/-- `A035178(n+1)/A057077(Δ[n²])` -/
def P7719733810976954437.Spec : Prop :=
  ∀ n, P7719733810976954437.a n = (A137608 (n + 1) : ℚ)

end A137608

/-! ## A137608.P4991858187149094210

`A035178(n+1)*A101455(2*n+1)`
-/

namespace A137608.P4991858187149094210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035178 (n + 1) * A101455 (2 * n + 1)

end

end A137608.P4991858187149094210

namespace A137608

/-- `A035178(n+1)*A101455(2*n+1)` -/
def P4991858187149094210.Spec : Prop :=
  ∀ n, P4991858187149094210.a n = A137608 (n + 1)

end A137608

/-! ## A137608.P14837278791818266671

`A093829(2*2*A327937(n+1))`
-/

namespace A137608.P14837278791818266671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (2 * (2 * A327937 (n + 1))).toNat

end

end A137608.P14837278791818266671

namespace A137608

/-- `A093829(2*2*A327937(n+1))` -/
def P14837278791818266671.Spec : Prop :=
  ∀ n, P14837278791818266671.a n = A137608 (n + 1)

end A137608

/-! ## A137608.P18230797893761979807

`A113974(n+1)/A056832(n+1)`
-/

namespace A137608.P18230797893761979807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113974 (n + 1) : ℚ) / (A056832 (n + 1) : ℚ)

end

end A137608.P18230797893761979807

namespace A137608

/-- `A113974(n+1)/A056832(n+1)` -/
def P18230797893761979807.Spec : Prop :=
  ∀ n, P18230797893761979807.a n = (A137608 (n + 1) : ℚ)

end A137608

/-!
# A137609: Consider a line in n-space given parametrically by y(t)=v*t, where v is the vector (2,3,5,..prime(n)). Let t0>0 be the least value of t such that y(t0) is closest to an integer point not on the line y(t). a(n) is t0 times v.v.

The programs for A137609, there is no canonical definition to state claims against.
-/

/-! ## A137609.P843210927116580222

`A048265(A273026(n+1))`
-/

namespace A137609.P843210927116580222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048265 (A273026 (n + 1)).toNat

end

end A137609.P843210927116580222

/-!
# A137610: Self-convolution of A014062, where A014062(n) = C(n^2, n).

The programs for A137610, there is no canonical definition to state claims against.
-/

/-! ## A137610.P16508777056309843627

`A115063(A305604(n))+A000217(n)`
-/

namespace A137610.P16508777056309843627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115063 (A305604 n).toNat + A000217 n

end

end A137610.P16508777056309843627

/-!
# A137611: Lesser of a pair of distinct closest n-digit primes that add up to 10^n.

The programs for A137611, there is no canonical definition to state claims against.
-/

/-! ## A137611.P1586870074683892445

`A124450(n%a(n-1)+1)` with `a(0)=3`
-/

namespace A137611.P1586870074683892445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A124450 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A137611.P1586870074683892445

/-! ## A137611.P15538131606360773959

`A124450(n+1)-A000038(n)`
-/

namespace A137611.P15538131606360773959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124450 (n + 1) - A000038 n

end

end A137611.P15538131606360773959

/-! ## A137611.P3935746102516331144

`A124450(n+1)-2*A000007(n)`
-/

namespace A137611.P3935746102516331144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124450 (n + 1) - 2 * A000007 n

end

end A137611.P3935746102516331144

/-! ## A137611.P5221564694046919549

`xor(A087936(A178334(n)), A124450(n+1))`
-/

namespace A137611.P5221564694046919549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087936 (A178334 n).toNat) (A124450 (n + 1))

end

end A137611.P5221564694046919549

/-! ## A137611.P16146024111617133977

`A124450(n+1)-A126869(p?[A007989(n)])`
-/

namespace A137611.P16146024111617133977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124450 (n + 1) - A126869 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137611.P16146024111617133977

/-! ## A137611.P4288914858232194302

`A124450(n+1)-A126869(A000040(n+1))`
-/

namespace A137611.P4288914858232194302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124450 (n + 1) - A126869 (A000040 (n + 1)).toNat

end

end A137611.P4288914858232194302

/-! ## A137611.P8483072232680275540

`A124450(n+1)-A126869(A007989(n))*A126869(n)`
-/

namespace A137611.P8483072232680275540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124450 (n + 1) - A126869 (A007989 n).toNat * A126869 n

end

end A137611.P8483072232680275540

/-!
# A137612: Greater of a pair of closest (n-digit) distinct primes that add up to 10^n.

The programs for A137612, there is no canonical definition to state claims against.
-/

/-! ## A137612.P996949719632700892

`10^(n+1)-A137611(n+1)`
-/

namespace A137612.P996949719632700892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - A137611 (n + 1)

end

end A137612.P996949719632700892

/-! ## A137612.P16304124722905003166

`p?[A017934(n)-A137611(A065033(n))]`
-/

namespace A137612.P16304124722905003166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 n - A137611 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137612.P16304124722905003166

/-!
# A137613: Omit the 1's from Rowland's sequence f(n) - f(n-1) = gcd(n,f(n-1)), where f(1) = 7.

The programs for A137613, there is no canonical definition to state claims against.
-/

/-! ## A137613.P7685724317971013656

`A020639(A190894(n+1))`
-/

namespace A137613.P7685724317971013656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A190894 (n + 1)).toNat

end

end A137613.P7685724317971013656

/-! ## A137613.P7672335801167849079

`A190894(n+2)+1-A190894(n+1)`
-/

namespace A137613.P7672335801167849079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190894 (n + 2) + (1 - A190894 (n + 1))

end

end A137613.P7672335801167849079

/-! ## A137613.P16350233272368481152

`Δ[A168007(2*(n+3))]+1`
-/

namespace A137613.P16350233272368481152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168007 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A137613.P16350233272368481152

/-! ## A137613.P7017000031196856922

`record[A168007(n+7)]-A168007(2*(n+3))`
-/

namespace A137613.P7017000031196856922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168007 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A168007 (2 * (n + 3))

end

end A137613.P7017000031196856922

/-! ## A137613.P3824626711614137132

`A168007(2*n+7)-A168007(2*(n+3))`
-/

namespace A137613.P3824626711614137132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168007 (2 * n + 7) - A168007 (2 * (n + 3))

end

end A137613.P3824626711614137132

/-! ## A137613.P5377602351436801425

`p?[A168007(n+6)-A168007(n+5)]`
-/

namespace A137613.P5377602351436801425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168007 (n + 6) - A168007 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137613.P5377602351436801425

/-! ## A137613.P13420776865228815938

`p?[A168007(n+5)%A168007(n+4)]`
-/

namespace A137613.P13420776865228815938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168007 (n + 5)) (A168007 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137613.P13420776865228815938

/-! ## A137613.P12684419440945498946

`gcd(A190894(n+1), A190895(n+2))`
-/

namespace A137613.P12684419440945498946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A190894 (n + 1)) (A190895 (n + 2))

end

end A137613.P12684419440945498946

/-!
# A137614: Triangle read by rows: A000012 * A047812 as infinite lower triangular matrices.

The programs for A137614, there is no canonical definition to state claims against.
-/

/-! ## A137614.P4549302470964990416

`A178798(A282044(n))+A051128(n+1)`
-/

namespace A137614.P4549302470964990416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A282044 n).toNat + A051128 (n + 1)

end

end A137614.P4549302470964990416

/-! ## A137614.P17555930060965228109

`A350029(A347000(n+1))`
-/

namespace A137614.P17555930060965228109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350029 (A347000 (n + 1)).toNat

end

end A137614.P17555930060965228109

/-! ## A137614.P6893485052393389990

`A050724(A051128(n+1)+1)`
-/

namespace A137614.P6893485052393389990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050724 (A051128 (n + 1) + 1).toNat

end

end A137614.P6893485052393389990

/-! ## A137614.P17270022138373274522

`A048766(5*A221693(n+1))`
-/

namespace A137614.P17270022138373274522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (5 * A221693 (n + 1)).toNat

end

end A137614.P17270022138373274522

/-! ## A137614.P16979837371588773455

`A048766(5*A232149(n+1))`
-/

namespace A137614.P16979837371588773455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (5 * A232149 (n + 1)).toNat

end

end A137614.P16979837371588773455

/-!
# A137620: Smallest k such that k! >= A058694(n).

The programs for A137620, there is no canonical definition to state claims against.
-/

/-! ## A137620.P4000485059888569635

`A132018(n+1)-C(2, C(n², 5))`
-/

namespace A137620.P4000485059888569635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132018 (n + 1) - (Nat.choose 2 (Nat.choose (n ^ 2) 5) : ℤ)

end

end A137620.P4000485059888569635

/-! ## A137620.P7779299967410601159

`A132018(n+1)-A094497(n)`
-/

namespace A137620.P7779299967410601159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132018 (n + 1) - A094497 n

end

end A137620.P7779299967410601159

/-! ## A137620.P16757196666007353286

`A132018(n+1)-A130716(n)`
-/

namespace A137620.P16757196666007353286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132018 (n + 1) - A130716 n

end

end A137620.P16757196666007353286

/-! ## A137620.P17960239456479730933

`A132018(n+1)-char[A058955(n)]`
-/

namespace A137620.P17960239456479730933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058955 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132018 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A137620.P17960239456479730933

/-! ## A137620.P16122078113107033285

`A132018(n+1)-char[A090591(n)]`
-/

namespace A137620.P16122078113107033285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090591 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132018 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A137620.P16122078113107033285

/-! ## A137620.P11543423512805751546

`A132018(n+1)-char[A178562(n)]`
-/

namespace A137620.P11543423512805751546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178562 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132018 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A137620.P11543423512805751546

/-! ## A137620.P964660204944828376

`A132018(n+1)-A001222(C(2, n)+1)`
-/

namespace A137620.P964660204944828376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132018 (n + 1) - A001222 (Nat.choose 2 n + 1)

end

end A137620.P964660204944828376

/-! ## A137620.P16820896701191533611

`A132018(n+1)-C(2, n)*A001221(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A137620.P16820896701191533611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A132018 (n + 1) - (Nat.choose 2 n : ℤ) * A001221 (a (n - 1)).toNat

end

end A137620.P16820896701191533611

/-! ## A137620.P677354522457049853

`A132018(n+1)-A008683(A081676(n+1))`
-/

namespace A137620.P677354522457049853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132018 (n + 1) - A008683 (A081676 (n + 1)).toNat

end

end A137620.P677354522457049853

/-! ## A137620.P11423127890730074030

`A132018(n+1)-A103451(A000040(n+1))`
-/

namespace A137620.P11423127890730074030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132018 (n + 1) - A103451 (A000040 (n + 1)).toNat

end

end A137620.P11423127890730074030

/-!
# A137621: Divisors of nonprimes not occurring earlier.

The programs for A137621, there is no canonical definition to state claims against.
-/

/-! ## A137621.P13971674512375307145

`A137622(A137623(n+1))`
-/

namespace A137621.P13971674512375307145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137622 (A137623 (n + 1)).toNat

end

end A137621.P13971674512375307145

/-! ## A137621.P18369174093166720483

`A137623(A137622(1-(n-2*n)))`
-/

namespace A137621.P18369174093166720483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137623 (A137622 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat).toNat

end

end A137621.P18369174093166720483

/-! ## A137621.P7404697367317399590

`A137623(A112990(n+1)-Δ[A294108(n+1)])`
-/

namespace A137621.P7404697367317399590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137623 (A112990 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A137621.P7404697367317399590

/-!
# A137622: Inverse of A137621.

The programs for A137622, there is no canonical definition to state claims against.
-/

/-! ## A137622.P3134069637096008415

`A112990(n+1)-Δ[A294108(n+1)]`
-/

namespace A137622.P3134069637096008415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112990 (n + 1) - (f1 (n + 1) - f1 n)

end

end A137622.P3134069637096008415

/-! ## A137622.P18063451174927017246

`A112990(n+1)+A001489(Δ[A294108(n+1)]+1)+1`
-/

namespace A137622.P18063451174927017246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112990 (n + 1) + A001489 (f1 (n + 1) - f1 n + 1).toNat + 1

end

end A137622.P18063451174927017246

/-!
# A137623: A137621(A137621(n)).

The programs for A137623, there is no canonical definition to state claims against.
-/

/-! ## A137623.P2707525923174552910

`A137621(A137621(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A137623.P2707525923174552910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137621 (A137621 (n + 1)).toNat

end

end A137623.P2707525923174552910

/-!
# A137624: Complement of A120632.

The programs for A137624, there is no canonical definition to state claims against.
-/

/-! ## A137624.P15907319086539264463

`lt[abs(xor(n, -2)), A089088(n)]`
-/

namespace A137624.P15907319086539264463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A137624.P15907319086539264463

/-! ## A137624.P6381191594624404320

`∑[char[A065897(n+1)]+1]`
-/

namespace A137624.P6381191594624404320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137624.P6381191594624404320

/-! ## A137624.P3747346090790779559

`comp[A120632(n+1)-1]+1`
-/

namespace A137624.P3747346090790779559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120632 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A137624.P3747346090790779559

/-! ## A137624.P13558523679745465468

`∑[char[A163468(n+1)-2]+1]`
-/

namespace A137624.P13558523679745465468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163468 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137624.P13558523679745465468

/-! ## A137624.P7075323581229785879

`comp[comp[n+2-A056171(n+1)]-1]`
-/

namespace A137624.P7075323581229785879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A056171 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A137624.P7075323581229785879

/-! ## A137624.P5759790570517833669

`∑[A105661(A018252(n+1))!]`
-/

namespace A137624.P5759790570517833669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A105661 (A018252 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137624.P5759790570517833669

/-! ## A137624.P13136504933762523408

`A055679(comp[record[A000010(n+1)]]+1)+n+1`
-/

namespace A137624.P13136504933762523408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + (n + 1 : ℤ)

end

end A137624.P13136504933762523408

/-! ## A137624.P9276664607472825967

`comp[char[A006530(n+2)-1]*A137622(n+1)]`
-/

namespace A137624.P9276664607472825967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A137622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A137624.P9276664607472825967

/-!
# A137625: The initial prime in the first set of n consecutive primes for which p+4 is semiprime.

The programs for A137625, there is no canonical definition to state claims against.
-/

/-! ## A137625.P11900727810031371560

`A137627(n+1)-4`
-/

namespace A137625.P11900727810031371560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137627 (n + 1) - 4

end

end A137625.P11900727810031371560

/-! ## A137625.P9457438083029787985

`A138176(A177849(n))+A137627(n+1)`
-/

namespace A137625.P9457438083029787985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138176 (A177849 n).toNat + A137627 (n + 1)

end

end A137625.P9457438083029787985

/-! ## A137625.P4026853834361327114

`A138176(A291168(n))+A137627(n+1)`
-/

namespace A137625.P4026853834361327114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138176 (A291168 n).toNat + A137627 (n + 1)

end

end A137625.P4026853834361327114

/-! ## A137625.P16849908142522919488

`A339703(A000040(n+1))+A137627(n+1)`
-/

namespace A137625.P16849908142522919488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339703 (A000040 (n + 1)).toNat + A137627 (n + 1)

end

end A137625.P16849908142522919488

/-! ## A137625.P12382310932653706015

`(A137627(n+1)+A137626(n+1))%A137628(n+1)`
-/

namespace A137625.P12382310932653706015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137627 (n + 1) + A137626 (n + 1)) (A137628 (n + 1))

end

end A137625.P12382310932653706015

/-!
# A137626: The largest prime in the first set of n consecutive primes for which p+4 is semiprime.

The programs for A137626, there is no canonical definition to state claims against.
-/

/-! ## A137626.P665159957814068420

`A137628(n+1)-4`
-/

namespace A137626.P665159957814068420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137628 (n + 1) - 4

end

end A137626.P665159957814068420

/-! ## A137626.P11568020325285998149

`A138176(A177849(n))+A137628(n+1)`
-/

namespace A137626.P11568020325285998149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138176 (A177849 n).toNat + A137628 (n + 1)

end

end A137626.P11568020325285998149

/-! ## A137626.P2896509710118616526

`A138176(A291168(n))+A137628(n+1)`
-/

namespace A137626.P2896509710118616526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138176 (A291168 n).toNat + A137628 (n + 1)

end

end A137626.P2896509710118616526

/-! ## A137626.P4972243141370028533

`A194094(A097031(n+1))+A137628(n+1)`
-/

namespace A137626.P4972243141370028533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194094 (A097031 (n + 1)).toNat + A137628 (n + 1)

end

end A137626.P4972243141370028533

/-!
# A137627: Semiprimes (p+4) associated with first prime in A137625.

The programs for A137627, there is no canonical definition to state claims against.
-/

/-! ## A137627.P13514416573080800144

`A137625(n+1)+4`
-/

namespace A137627.P13514416573080800144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137625 (n + 1) + 4

end

end A137627.P13514416573080800144

/-!
# A137628: Semiprimes (p+4) associated with last prime in A137626.

The programs for A137628, there is no canonical definition to state claims against.
-/

/-! ## A137628.P1661797639901986760

`A137626(n+1)+4`
-/

namespace A137628.P1661797639901986760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137626 (n + 1) + 4

end

end A137628.P1661797639901986760

/-!
# A137629: Triangle read by rows: A026794^2 as infinite lower triangular matrix.

The programs for A137629, there is no canonical definition to state claims against.
-/

/-! ## A137629.P1310575255475999382

`A220504(n+1)-Δ[A209314(A125800(n))]`
-/

namespace A137629.P1310575255475999382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209314 (A125800 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220504 (n + 1) - (f1 (n + 1) - f1 n)

end

end A137629.P1310575255475999382

/-! ## A137629.P5840964000894212135

`A126988(n+1)+A001842(A144285(n+1))`
-/

namespace A137629.P5840964000894212135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) + A001842 (A144285 (n + 1)).toNat

end

end A137629.P5840964000894212135

/-! ## A137629.P13341811802759679969

`A344462(2^A137712(n+1))+A026807(n+1)-1`
-/

namespace A137629.P13341811802759679969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344462 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A137712 (n + 1) : ℤ))).toNat + (A026807 (n + 1) - 1)

end

end A137629.P13341811802759679969

/-! ## A137629.P15930911402520566256

`A000065(A010766(n+1))+A001222(5^A137712(n+1))`
-/

namespace A137629.P15930911402520566256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (A010766 (n + 1)).toNat + A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A137712 (n + 1) : ℤ))).toNat

end

end A137629.P15930911402520566256

/-! ## A137629.P8416768372274710164

`A066633(n+1)-A333382(A219310(n+1))`
-/

namespace A137629.P8416768372274710164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066633 (n + 1) - A333382 (A219310 (n + 1)).toNat

end

end A137629.P8416768372274710164

/-!
# A137630: Row sums of triangle A137629.

The programs for A137630, there is no canonical definition to state claims against.
-/

/-! ## A137630.P3089085621369077013

`A342525(A046746(n+1))`
-/

namespace A137630.P3089085621369077013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342525 (A046746 (n + 1)).toNat

end

end A137630.P3089085621369077013

/-! ## A137630.P11106674430530301424

`A359889(A360251(n+4)+n)`
-/

namespace A137630.P11106674430530301424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359889 (A360251 (n + 4) + (n : ℤ)).toNat

end

end A137630.P11106674430530301424

/-! ## A137630.P3144981495543310402

`A000196(A118035(n)*A204458(n+1))`
-/

namespace A137630.P3144981495543310402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A118035 n * A204458 (n + 1)).toNat

end

end A137630.P3144981495543310402

/-! ## A137630.P12767028093701735183

`A222048(A032563(n+1))+A000015(n+1)`
-/

namespace A137630.P12767028093701735183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222048 (A032563 (n + 1)).toNat + A000015 (n + 1)

end

end A137630.P12767028093701735183

/-! ## A137630.P16435626324751710294

`A222048(A077739(n+1))+A000015(n+1)`
-/

namespace A137630.P16435626324751710294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222048 (A077739 (n + 1)).toNat + A000015 (n + 1)

end

end A137630.P16435626324751710294

/-!
# A137631: Left border of triangle A137629.

The programs for A137631, there is no canonical definition to state claims against.
-/

/-! ## A137631.P4852090781493034856

`A137629(∑[n]+1)`
-/

namespace A137631.P4852090781493034856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137629 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A137631.P4852090781493034856

/-! ## A137631.P15341257274728561426

`record[A137629(n+1)]`
-/

namespace A137631.P15341257274728561426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137631.P15341257274728561426

/-! ## A137631.P13121162656915414308

`A007318(∑[n])*A137629(A000124(n))`
-/

namespace A137631.P13121162656915414308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A137629 (A000124 n).toNat

end

end A137631.P13121162656915414308

/-! ## A137631.P505208433021365779

`A252474(A073472(n))`
-/

namespace A137631.P505208433021365779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (A073472 n).toNat

end

end A137631.P505208433021365779

/-! ## A137631.P14255188383500659162

`A147820(A065095(n+1))`
-/

namespace A137631.P14255188383500659162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147820 (A065095 (n + 1)).toNat

end

end A137631.P14255188383500659162

/-!
# A137632: Sums of 2 cubes of distinct odd primes.

The programs for A137632, there is no canonical definition to state claims against.
-/

/-! ## A137632.P9779288434952857643

`2*A138855(n+1)`
-/

namespace A137632.P9779288434952857643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138855 (n + 1)

end

end A137632.P9779288434952857643

/-! ## A137632.P16217688000512132105

`record[2*A138855(A154958(n))]`
-/

namespace A137632.P16217688000512132105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138855 (A154958 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137632.P16217688000512132105

/-! ## A137632.P14047352325810343357

`record[2*A138855(A291769(n))]`
-/

namespace A137632.P14047352325810343357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138855 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137632.P14047352325810343357

/-! ## A137632.P3075609695616670272

`record[2*A138855(A329048(n))]`
-/

namespace A137632.P3075609695616670272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138855 (A329048 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137632.P3075609695616670272

/-! ## A137632.P15055633222001327042

`filter[A120398(n+1), A354034(#)]`
-/

namespace A137632.P15055633222001327042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A137632.P15055633222001327042

/-!
# A137633: Triangle read by rows, A000012 * A026794.

The programs for A137633, there is no canonical definition to state claims against.
-/

/-! ## A137633.P5672982129729785827

`A166276(A393918(n+1))`
-/

namespace A137633.P5672982129729785827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166276 (A393918 (n + 1)).toNat

end

end A137633.P5672982129729785827

/-! ## A137633.P1931649053776597454

`A066633(n+1)-A125005(A114192(n))`
-/

namespace A137633.P1931649053776597454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066633 (n + 1) - A125005 (A114192 n).toNat

end

end A137633.P1931649053776597454

/-! ## A137633.P3972337609977504363

`A066633(n+1)-A333382(A281446(n))`
-/

namespace A137633.P3972337609977504363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066633 (n + 1) - A333382 (A281446 n).toNat

end

end A137633.P3972337609977504363

/-! ## A137633.P2876136705034167860

`A256993(A176088(n)+1)`
-/

namespace A137633.P2876136705034167860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256993 (A176088 n + 1).toNat

end

end A137633.P2876136705034167860

/-! ## A137633.P4943362173513560970

`ceil(A091401(n+1)/A105060(n+1))`
-/

namespace A137633.P4943362173513560970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A091401 (n + 1) : ℚ) / (A105060 (n + 1) : ℚ)⌉

end

end A137633.P4943362173513560970

/-!
# A137635: a(n) = Sum_{k=0..n} C(2k,k)*C(2k,n-k); equals row 0 of square array A137634.

The programs for A137635, there is no canonical definition to state claims against.
-/

/-! ## A137635.P344859996178401173

`A014963(A001316(n))*A320326(n)`
-/

namespace A137635.P344859996178401173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A320326 n

end

end A137635.P344859996178401173

/-! ## A137635.P4051718587133547378

`A020639(A000118(n))*A320326(n)`
-/

namespace A137635.P4051718587133547378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000118 n).toNat * A320326 n

end

end A137635.P4051718587133547378

/-! ## A137635.P14086247079376827497

`A020639(A004277(n))*A320326(n)`
-/

namespace A137635.P14086247079376827497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A320326 n

end

end A137635.P14086247079376827497

/-! ## A137635.P8894135364973275356

`A020639(A103517(n))*A320326(n)`
-/

namespace A137635.P8894135364973275356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103517 n).toNat * A320326 n

end

end A137635.P8894135364973275356

/-! ## A137635.P13579727704729235699

`A361830(∑[n+3])`
-/

namespace A137635.P13579727704729235699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361830 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137635.P13579727704729235699

/-! ## A137635.P1436403707981454821

`A020639(A000123(n))*A320326(n)`
-/

namespace A137635.P1436403707981454821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000123 n).toNat * A320326 n

end

end A137635.P1436403707981454821

/-!
# A137636: a(n) = Sum_{k=0..n} C(2k+1,k)*C(2k+1,n-k) ; equals row 1 of square array A137634; also equals the convolution of A137635 and A073157.

The programs for A137636, there is no canonical definition to state claims against.
-/

/-! ## A137636.P1810198949290645384

`A320326(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A137636.P1810198949290645384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320326 (n + 1) - a (n - 1)

end

end A137636.P1810198949290645384

/-! ## A137636.P9883376457338859529

`A137635(n+1)/2-a(n-1)` with `a(0)=1`
-/

namespace A137636.P9883376457338859529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A137635 (n + 1) : ℚ) / 2 - a (n - 1)

end

end A137636.P9883376457338859529

/-! ## A137636.P18068929233454058007

`A137634(∑[n+2]-1)`
-/

namespace A137636.P18068929233454058007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137634 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A137636.P18068929233454058007

/-! ## A137636.P4259380423814001290

`record[A137634(gcd(n, A104975(n)))]`
-/

namespace A137636.P4259380423814001290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137634 (Int.gcd (n : ℤ) (A104975 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137636.P4259380423814001290

/-! ## A137636.P5720633937410454637

`record[A137634(and(n, A097807(n)))]`
-/

namespace A137636.P5720633937410454637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137634 (Int.land (n : ℤ) (A097807 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137636.P5720633937410454637

/-!
# A137637: a(n) = Sum_{k=0..n} C(2k+2,k)*C(2k+2,n-k) ; equals row 2 of square array A137634 ; also equals the convolution of A137635 and the self-convolution of A073157.

The programs for A137637, there is no canonical definition to state claims against.
-/

/-! ## A137637.P8281953825628546545

`A137635(n+1)-A073155(n+1)`
-/

namespace A137637.P8281953825628546545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137635 (n + 1) - A073155 (n + 1)

end

end A137637.P8281953825628546545

/-! ## A137637.P11800377265598119636

`A137634(∑[n+3])`
-/

namespace A137637.P11800377265598119636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137634 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137637.P11800377265598119636

/-! ## A137637.P12086517565397529225

`record[A137634(A198463(n+1))]`
-/

namespace A137637.P12086517565397529225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137634 (A198463 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137637.P12086517565397529225

/-! ## A137637.P5683613179914546060

`record[and(A104975(n), A137634(n))]`
-/

namespace A137637.P5683613179914546060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104975 n) (A137634 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137637.P5683613179914546060

/-!
# A137638: Antidiagonal sums of square array A137634.

The programs for A137638, there is no canonical definition to state claims against.
-/

/-! ## A137638.P13747375041394914268

`A084132(n)+A048881(A047854(n))`
-/

namespace A137638.P13747375041394914268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084132 n + A048881 (A047854 n).toNat

end

end A137638.P13747375041394914268

/-! ## A137638.P9830292313259745130

`A028392(A026379(n+2))-A026376(n+1)`
-/

namespace A137638.P9830292313259745130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 (A026379 (n + 2)).toNat - A026376 (n + 1)

end

end A137638.P9830292313259745130

/-!
# A137639: Triangle read by rows, A026794 * A051731.

The programs for A137639, there is no canonical definition to state claims against.
-/

/-! ## A137639.P16258411829157916215

`A168019(A286158(n+1)%A097970(n+1))`
-/

namespace A137639.P16258411829157916215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168019 (Int.tmod (A286158 (n + 1)) (A097970 (n + 1))).toNat

end

end A137639.P16258411829157916215

/-! ## A137639.P1220409963272883900

`A285957(A285998(2*(n+2)))+A168021(n+1)`
-/

namespace A137639.P1220409963272883900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285957 (A285998 (2 * (n + 2))).toNat + A168021 (n + 1)

end

end A137639.P1220409963272883900

/-! ## A137639.P2080025071451536486

`A175608(A175583(2*(n+2)))+A168021(n+1)`
-/

namespace A137639.P2080025071451536486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175608 (A175583 (2 * (n + 2))).toNat + A168021 (n + 1)

end

end A137639.P2080025071451536486

/-! ## A137639.P11726924598688985624

`or(A079979(A189076(n)), A168021(n+1))`
-/

namespace A137639.P11726924598688985624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079979 (A189076 n).toNat) (A168021 (n + 1))

end

end A137639.P11726924598688985624

/-! ## A137639.P2234512084244508947

`or(A168021(n+1), A288216(A060455(n)))`
-/

namespace A137639.P2234512084244508947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A168021 (n + 1)) (A288216 (A060455 n).toNat)

end

end A137639.P2234512084244508947

/-!
# A137640: Row sums of triangle A137639.

The programs for A137640, there is no canonical definition to state claims against.
-/

/-! ## A137640.P7580225786103029318

`record[and(A005378(n), A331146(n+1))]`
-/

namespace A137640.P7580225786103029318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005378 n) (A331146 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137640.P7580225786103029318

/-!
# A137644: a(n) = Sum_{k=0..n} C(n+k,k)*C(n+k,n-k).

The programs for A137644, there is no canonical definition to state claims against.
-/

/-! ## A137644.P7332178089675955063

`A063967(∑[4*n])`
-/

namespace A137644.P7332178089675955063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063967 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137644.P7332178089675955063

/-! ## A137644.P18344589477787070464

`record[A063967(A092530(n))]`
-/

namespace A137644.P18344589477787070464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063967 (A092530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137644.P18344589477787070464

/-! ## A137644.P142519705796588368

`record[A063967(A241496(n))]`
-/

namespace A137644.P142519705796588368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063967 (A241496 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137644.P142519705796588368

/-! ## A137644.P16958982425085140251

`record[A003982(n)*A063967(n)]`
-/

namespace A137644.P16958982425085140251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A063967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137644.P16958982425085140251

/-! ## A137644.P13130911953665338777

`record[A063967(n*A008619(n))]`
-/

namespace A137644.P13130911953665338777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063967 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137644.P13130911953665338777

/-! ## A137644.P11369942930832615296

`record[A063967(n*A028242(n))]`
-/

namespace A137644.P11369942930832615296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063967 ((n : ℤ) * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137644.P11369942930832615296

/-! ## A137644.P54533863072425457

`record[A063967(n*A110654(n+1))]`
-/

namespace A137644.P54533863072425457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063967 ((n : ℤ) * A110654 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137644.P54533863072425457

/-! ## A137644.P5542699680172232227

`record[A063967(n*A121496(n+1))]`
-/

namespace A137644.P5542699680172232227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063967 ((n : ℤ) * A121496 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137644.P5542699680172232227

/-! ## A137644.P5973893190587601396

`A063967(A092530(2*n+1))*A063967(A092530(2*n))`
-/

namespace A137644.P5973893190587601396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063967 (A092530 (2 * n + 1)).toNat * A063967 (A092530 (2 * n)).toNat

end

end A137644.P5973893190587601396

/-!
# A137645: a(n) = Sum_{k=0..n} C((n-k)*k, k) * C((n-k)*k, n-k).

The programs for A137645, there is no canonical definition to state claims against.
-/

/-! ## A137645.P1793770539626770979

`∑{d}[A103221(A053549(n)), #]`
-/

namespace A137645.P1793770539626770979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A053549 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A137645.P1793770539626770979

/-! ## A137645.P6647099434682863797

`∑{d}[A103221(n*A001187(n)), #]`
-/

namespace A137645.P6647099434682863797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 ((n : ℤ) * A001187 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A137645.P6647099434682863797

/-!
# A137646: a(n) = Sum_{k=0..n} C(k*(k+1)/2, k) * C(k*(k+1)/2, n-k).

The programs for A137646, there is no canonical definition to state claims against.
-/

/-! ## A137646.P8535755169767175331

`A213172(∑[n!])-n`
-/

namespace A137646.P8535755169767175331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213172 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A137646.P8535755169767175331

/-!
# A137647: a(n) = Sum_{k=0..n} C(k(k+1), k) * C(k(k+1), n-k).

The programs for A137647, there is no canonical definition to state claims against.
-/

/-! ## A137647.P17200740457399014059

`A163332(n)+A068360(A352254(n))`
-/

namespace A137647.P17200740457399014059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163332 n + A068360 (A352254 n).toNat

end

end A137647.P17200740457399014059

/-!
# A137648: a(n) = Sum_{k=0..n} C(k^2, k) * C(k^2, n-k).

The programs for A137648, there is no canonical definition to state claims against.
-/

/-! ## A137648.P15033539883947074994

`A011760(A263345(n²))`
-/

namespace A137648.P15033539883947074994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A263345 (n ^ 2)).toNat

end

end A137648.P15033539883947074994

/-!
# A137649: Triangle read by rows, A000012 * A008277.

The programs for A137649, there is no canonical definition to state claims against.
-/

/-! ## A137649.P5320018512327449834

`A137596(comp[∑[n]])`
-/

namespace A137649.P5320018512327449834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137596 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A137649.P5320018512327449834

/-! ## A137649.P640584997974274155

`A036560(n)+char[∑[n]]`
-/

namespace A137649.P640584997974274155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036560 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A137649.P640584997974274155

/-! ## A137649.P14563149082383569906

`abs(A036560(n)-A198954(n))`
-/

namespace A137649.P14563149082383569906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A036560 n - A198954 n|

end

end A137649.P14563149082383569906

/-! ## A137649.P544927122073593849

`abs(xor(A036560(n), A197870(n)))`
-/

namespace A137649.P544927122073593849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A036560 n) (A197870 n)|

end

end A137649.P544927122073593849

/-! ## A137649.P3862520727375427127

`A036560(n)+2-A238303(n)`
-/

namespace A137649.P3862520727375427127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036560 n + 2 - A238303 n

end

end A137649.P3862520727375427127

/-! ## A137649.P10084081188635762339

`xor(1, xor(1, A036560(n)+A010054(n)))`
-/

namespace A137649.P10084081188635762339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A036560 n + A010054 n))

end

end A137649.P10084081188635762339

/-! ## A137649.P2192347267776798362

`(A036560(n)+A010054(n))/A007318(C(2, n+2))`
-/

namespace A137649.P2192347267776798362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036560 n + A010054 n : ℚ) / (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A137649.P2192347267776798362

/-! ## A137649.P6907130532896713104

`A036560(A066182(n+1))`
-/

namespace A137649.P6907130532896713104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036560 (A066182 (n + 1)).toNat

end

end A137649.P6907130532896713104

/-! ## A137649.P1842188212295545451

`A107893(n+1)/A233543(n)`
-/

namespace A137649.P1842188212295545451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107893 (n + 1) : ℚ) / (A233543 n : ℚ)

end

end A137649.P1842188212295545451

/-! ## A137649.P6573460207807610698

`A107893(n+1)/A002262(n)!`
-/

namespace A137649.P6573460207807610698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107893 (n + 1) : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A137649.P6573460207807610698

/-! ## A137649.P3699598746749030480

`(A036560(n)+A010054(n))*A007318(∑[n])`
-/

namespace A137649.P3699598746749030480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036560 n + A010054 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137649.P3699598746749030480

/-!
# A137650: Triangle read by rows, A008277 * A000012.

The programs for A137650, there is no canonical definition to state claims against.
-/

/-! ## A137650.P11739085162606771577

`A133611(comp[∑[n]]+1)`
-/

namespace A137650.P11739085162606771577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A137650.P11739085162606771577

/-! ## A137650.P17119115899281143921

`A211561(∑[char[∑[n]]]²-n)`
-/

namespace A137650.P17119115899281143921
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A137650.P17119115899281143921

/-! ## A137650.P4615440136899586865

`and(-1, A211561(A038722(n+1)))`
-/

namespace A137650.P4615440136899586865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A211561 (A038722 (n + 1)).toNat)

end

end A137650.P4615440136899586865

/-! ## A137650.P10270836258137558530

`A010051(A175914(n+1))*A211561(A038722(n+1))`
-/

namespace A137650.P10270836258137558530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A175914 (n + 1)).toNat * A211561 (A038722 (n + 1)).toNat

end

end A137650.P10270836258137558530

/-! ## A137650.P8047319716900618472

`A211561(A038722(n+1))+A010051(A046312(n+1))`
-/

namespace A137650.P8047319716900618472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A038722 (n + 1)).toNat + A010051 (A046312 (n + 1)).toNat

end

end A137650.P8047319716900618472

/-! ## A137650.P14336451619666640392

`A211561(A038722(n+1))+A186683(A280649(n+1))`
-/

namespace A137650.P14336451619666640392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A038722 (n + 1)).toNat + A186683 (A280649 (n + 1)).toNat

end

end A137650.P14336451619666640392

/-! ## A137650.P17851120542914656544

`A211561(A038722(n+1))+A186683(A175914(3*(n+1)))`
-/

namespace A137650.P17851120542914656544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A038722 (n + 1)).toNat + A186683 (A175914 (3 * (n + 1))).toNat

end

end A137650.P17851120542914656544

/-!
# A137651: Triangle read by rows: T(n,k) is the number of primitive (aperiodic) word structures of length n using exactly k different symbols.

The programs for A137651, there is no canonical definition to state claims against.
-/

/-! ## A137651.P10412709154760585081

`A008277(n+1)-A016389(A265606(n))`
-/

namespace A137651.P10412709154760585081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A016389 (A265606 n).toNat

end

end A137651.P10412709154760585081

/-! ## A137651.P12098602043313533064

`A008277(n+1)-A016389(A281446(n))`
-/

namespace A137651.P12098602043313533064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A016389 (A281446 n).toNat

end

end A137651.P12098602043313533064

/-! ## A137651.P17161830149173499167

`A008277(n+1)-A276791(A114153(n))`
-/

namespace A137651.P17161830149173499167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A276791 (A114153 n).toNat

end

end A137651.P17161830149173499167

/-! ## A137651.P2412973827910989660

`A008277(n+1)-A049310(A355282(n))`
-/

namespace A137651.P2412973827910989660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A049310 (A355282 n).toNat

end

end A137651.P2412973827910989660

/-! ## A137651.P18105856523036574617

`A008277(n+1)-A306550(A215861(n))`
-/

namespace A137651.P18105856523036574617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A306550 (A215861 n).toNat

end

end A137651.P18105856523036574617

/-!
# A137652: Numbers k such that 12^k + 5 is prime.

The programs for A137652, there is no canonical definition to state claims against.
-/

/-! ## A137652.P580765679576586014

`lt[A127798(n+1), 6]+1`
-/

namespace A137652.P580765679576586014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127798 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A137652.P580765679576586014

/-! ## A137652.P1341273676411514436

`eq[5, A127798(A254667(n))]`
-/

namespace A137652.P1341273676411514436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127798 (A254667 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137652.P1341273676411514436

/-! ## A137652.P11794839925335532104

`eq[A000007(n), A025803(A127798(n))]`
-/

namespace A137652.P11794839925335532104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025803 (A127798 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137652.P11794839925335532104

/-! ## A137652.P8856018603575851096

`eq[A000038(n), A025803(A127798(n))]`
-/

namespace A137652.P8856018603575851096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025803 (A127798 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137652.P8856018603575851096

/-! ## A137652.P12735928989120104335

`eq[A057427(n), A096765(A127798(n))]`
-/

namespace A137652.P12735928989120104335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (A127798 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137652.P12735928989120104335

/-!
# A137657: Primes that are simultaneously of the forms 24i+7 and 7j+24.

The programs for A137657, there is no canonical definition to state claims against.
-/

/-! ## A137657.P2351507542150000105

`p?[12*14*n+31]`
-/

namespace A137657.P2351507542150000105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (14 * n) + 31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137657.P2351507542150000105

/-! ## A137657.P10090082787336384169

`7*A137659(n+1)+24`
-/

namespace A137657.P10090082787336384169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A137659 (n + 1) + 24

end

end A137657.P10090082787336384169

/-! ## A137657.P7286201586595454500

`24*A137658(n+1)+7`
-/

namespace A137657.P7286201586595454500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A137658 (n + 1) + 7

end

end A137657.P7286201586595454500

/-! ## A137657.P8307639681741119891

`record[A006530(12*14*n+31)]`
-/

namespace A137657.P8307639681741119891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (12 * (14 * n) + 31)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137657.P8307639681741119891

/-! ## A137657.P3563230540960724344

`record[A020639(12*14*n+31)]`
-/

namespace A137657.P3563230540960724344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (12 * (14 * n) + 31)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137657.P3563230540960724344

/-!
# A137658: Values of i from A137657.

The programs for A137658, there is no canonical definition to state claims against.
-/

/-! ## A137658.P9886161137216705391

`floor(p?[12*14*n+31]/24)`
-/

namespace A137658.P9886161137216705391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (14 * n) + 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 24⌋

end

end A137658.P9886161137216705391

/-! ## A137658.P3557368198279258905

`round(p?[12*14*n+31]/24)`
-/

namespace A137658.P3557368198279258905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (14 * n) + 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 24)

end

end A137658.P3557368198279258905

/-! ## A137658.P12204926660397375796

`(p?[12*14*n+31]-7)/24`
-/

namespace A137658.P12204926660397375796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (14 * n) + 31

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 7 : ℚ) / 24

end

end A137658.P12204926660397375796

/-! ## A137658.P14004380443127626517

`7*A139639(n+1)+1`
-/

namespace A137658.P14004380443127626517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A139639 (n + 1) + 1

end

end A137658.P14004380443127626517

/-! ## A137658.P1095468518696519163

`floor(record[A006530(12*14*n+31)]/24)`
-/

namespace A137658.P1095468518696519163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (12 * (14 * n) + 31)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 24⌋

end

end A137658.P1095468518696519163

/-! ## A137658.P14768593780443986297

`floor(record[A020639(12*14*n+31)]/24)`
-/

namespace A137658.P14768593780443986297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (12 * (14 * n) + 31)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 24⌋

end

end A137658.P14768593780443986297

/-! ## A137658.P17304015790621058629

`7*eq[1, A001222(12*14*n+31)]+1`
-/

namespace A137658.P17304015790621058629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (12 * (14 * n) + 31)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137658.P17304015790621058629

/-! ## A137658.P14021391485742408391

`7*eq[2, A000005(12*14*n+31)]+1`
-/

namespace A137658.P14021391485742408391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (12 * (14 * n) + 31)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137658.P14021391485742408391

/-! ## A137658.P12443057548858504567

`A016993(A139639(n+1))`
-/

namespace A137658.P12443057548858504567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A139639 (n + 1)).toNat

end

end A137658.P12443057548858504567

/-! ## A137658.P1540622310064724951

`∩[A139483(n+1), A016993(n)]`
-/

namespace A137658.P1540622310064724951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137658.P1540622310064724951

/-!
# A137659: Values of j from A137657.

The programs for A137659, there is no canonical definition to state claims against.
-/

/-! ## A137659.P16473350477401535920

`(p?[12*14*n+31]-24)/7`
-/

namespace A137659.P16473350477401535920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (14 * n) + 31

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 24 : ℚ) / 7

end

end A137659.P16473350477401535920

/-! ## A137659.P14569696958321132960

`24*floor(floor(p?[12*14*n+31]/24)/7)+1`
-/

namespace A137659.P14569696958321132960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (14 * n) + 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * ⌊(⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 24⌋ : ℚ) / 7⌋ + 1

end

end A137659.P14569696958321132960

/-! ## A137659.P15898622224603711424

`(record[A006530(12*14*n+31)]-24)/7`
-/

namespace A137659.P15898622224603711424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (12 * (14 * n) + 31)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 24 : ℚ) / 7

end

end A137659.P15898622224603711424

/-! ## A137659.P10612549070656509702

`(record[A020639(12*14*n+31)]-24)/7`
-/

namespace A137659.P10612549070656509702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (12 * (14 * n) + 31)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 24 : ℚ) / 7

end

end A137659.P10612549070656509702

/-! ## A137659.P15171131751364715358

`24*eq[2, A000005(12*14*n+31)]+1`
-/

namespace A137659.P15171131751364715358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (12 * (14 * n) + 31)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137659.P15171131751364715358

/-!
# A137661: a(n+1) = if a(n) is prime then (number of primes so far) else (number of nonprimes so far), a(1) = 1.

The programs for A137661, there is no canonical definition to state claims against.
-/

/-! ## A137661.P4708503200288602907

`A342025(A057977(n))+A085268(n)`
-/

namespace A137661.P4708503200288602907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342025 (A057977 n).toNat + A085268 (n + 32)

end

end A137661.P4708503200288602907

/-! ## A137661.P6704084308521397969

`A085268(n)+A010054(A079955(2*n))`
-/

namespace A137661.P6704084308521397969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085268 (n + 32) + A010054 (A079955 (2 * n)).toNat

end

end A137661.P6704084308521397969

/-! ## A137661.P1378314142681007548

`A004233(A099512(n)+A072493(n+1)²)`
-/

namespace A137661.P1378314142681007548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (A099512 n + A072493 (n + 1) ^ 2).toNat

end

end A137661.P1378314142681007548

/-! ## A137661.P1222083016683651212

`A081604(A291252(n))`
-/

namespace A137661.P1222083016683651212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A291252 n).toNat

end

end A137661.P1222083016683651212

/-! ## A137661.P14953180619878588712

`A081604(A376787(n+1))`
-/

namespace A137661.P14953180619878588712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A376787 (n + 1)).toNat

end

end A137661.P14953180619878588712

/-!
# A137664: a(n) = (p+1)^p - 1 where p = prime(n).

The programs for A137664, there is no canonical definition to state claims against.
-/

/-! ## A137664.P16805747044471140382

`record[∑{p}[n+2, (n+3)^#-1]]`
-/

namespace A137664.P16805747044471140382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), (((n + 3) ^ p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137664.P16805747044471140382

/-! ## A137664.P8086207189206698417

`A104127(n+1)-1`
-/

namespace A137664.P8086207189206698417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104127 (n + 1) - 1

end

end A137664.P8086207189206698417

/-! ## A137664.P1504858685583334912

`record[(n+3)^A006530(n+2)-1]`
-/

namespace A137664.P1504858685583334912
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) ^ (A006530 (n + 2) : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137664.P1504858685583334912

/-! ## A137664.P9054908594255495006

`record[(n+3)^A014963(n+2)-1]`
-/

namespace A137664.P9054908594255495006
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) ^ (A014963 (n + 2) : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137664.P9054908594255495006

/-! ## A137664.P1937502383003213603

`A037205(A000040(n+1))`
-/

namespace A137664.P1937502383003213603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037205 (A000040 (n + 1)).toNat

end

end A137664.P1937502383003213603

/-!
# A137665: Quotients ((p+1)^p - 1)/p^2 for p = prime(n).

The programs for A137665, there is no canonical definition to state claims against.
-/

/-! ## A137665.P12776310219867120666

`A060073(A000040(n+1)+1)`
-/

namespace A137665.P12776310219867120666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060073 (A000040 (n + 1) + 1).toNat

end

end A137665.P12776310219867120666

/-! ## A137665.P4057588710071334970

`A060073(A049551(n+1)+1)`
-/

namespace A137665.P4057588710071334970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060073 (A049551 (n + 1) + 1).toNat

end

end A137665.P4057588710071334970

/-! ## A137665.P11242036429829704628

`A060073(p?[A018252(n+1)-7]+1)`
-/

namespace A137665.P11242036429829704628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060073 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A137665.P11242036429829704628

/-! ## A137665.P13967732359661272425

`A137664(n+1)/p?[A018252(n+1)-7]²`
-/

namespace A137665.P13967732359661272425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137664 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 : ℚ)

end

end A137665.P13967732359661272425

/-! ## A137665.P2481514992275341648

`A060072(A000040(n+1)+1)/A000040(n+1)`
-/

namespace A137665.P2481514992275341648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060072 (A000040 (n + 1) + 1).toNat : ℚ) / (A000040 (n + 1) : ℚ)

end

end A137665.P2481514992275341648

/-!
# A137667: The sequence alternates even and odd integers but also even and odd digits; it is monotonically increasing and a(n) is always the smallest integer fitting the pattern.

The programs for A137667, there is no canonical definition to state claims against.
-/

/-! ## A137667.P16063167417393844070

`∩[A049872(n), A097962(n)]`
-/

namespace A137667.P16063167417393844070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097962 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137667.P16063167417393844070

/-! ## A137667.P2672591109549259203

`∩[A055645(n), A097962(n)]`
-/

namespace A137667.P2672591109549259203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097962 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137667.P2672591109549259203

/-! ## A137667.P7104547254346292546

`∩[A055646(n), A097962(n)]`
-/

namespace A137667.P7104547254346292546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055646 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097962 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137667.P7104547254346292546

/-! ## A137667.P8018191048579456215

`∩[A055647(n), A097962(n)]`
-/

namespace A137667.P8018191048579456215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055647 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097962 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137667.P8018191048579456215

/-!
# A137669: Prime numbers p such that p +- a and p +- b are prime numbers where a and b are distinct positive integers with a < b < p.

The programs for A137669, the canonical program `A137669.P17129941573586355176` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137669 has offset 1).

The definition of A137669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137669.P10580023649324867760

`p?[lt[10, A176348(n)]]`
-/

namespace A137669.P10580023649324867760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176348 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137669.P10580023649324867760

namespace A137669

/-- `p?[lt[10, A176348(n)]]` -/
def P10580023649324867760.Spec : Prop :=
  ∀ n, (P10580023649324867760.a n : ℤ) = A137669 (n + 1)

end A137669

/-! ## A137669.P12890685075011296916

`p?[lt[12, A004086(n+2)]]`
-/

namespace A137669.P12890685075011296916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137669.P12890685075011296916

namespace A137669

/-- `p?[lt[12, A004086(n+2)]]` -/
def P12890685075011296916.Spec : Prop :=
  ∀ n, (P12890685075011296916.a n : ℤ) = A137669 (n + 1)

end A137669

/-! ## A137669.P1056538937138410305

`p?[lt[42, A056615(n+1)]]`
-/

namespace A137669.P1056538937138410305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056615 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137669.P1056538937138410305

namespace A137669

/-- `p?[lt[42, A056615(n+1)]]` -/
def P1056538937138410305.Spec : Prop :=
  ∀ n, (P1056538937138410305.a n : ℤ) = A137669 (n + 1)

end A137669

/-! ## A137669.P4356599473941461581

`p?[lt[46, A099906(n+1)]]`
-/

namespace A137669.P4356599473941461581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  46

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099906 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137669.P4356599473941461581

namespace A137669

/-- `p?[lt[46, A099906(n+1)]]` -/
def P4356599473941461581.Spec : Prop :=
  ∀ n, (P4356599473941461581.a n : ℤ) = A137669 (n + 1)

end A137669

/-! ## A137669.P17780220824709826291

`p?[2*A143616(n+1)-1]`
-/

namespace A137669.P17780220824709826291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143616 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137669.P17780220824709826291

namespace A137669

/-- `p?[2*A143616(n+1)-1]` -/
def P17780220824709826291.Spec : Prop :=
  ∀ n, P17780220824709826291.a n = A137669 (n + 1)

end A137669

/-! ## A137669.P11328168785522874763

`p?[A130245(a(n-1))+2+n]` with `a(0)=1`
-/

namespace A137669.P11328168785522874763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A130245 (f1 (n - 1)).toNat + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137669.P11328168785522874763

namespace A137669

/-- `p?[A130245(a(n-1))+2+n]` -/
def P11328168785522874763.Spec : Prop :=
  ∀ n, P11328168785522874763.a n = A137669 (n + 1)

end A137669

/-! ## A137669.P17129941573586355176

`A000040(floor(2*n/(n+3)+n+3)+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A137669

/-- `A000040(floor(2*n/(n+3)+n+3)+2)` -/
def P17129941573586355176.Spec : Prop :=
  ∀ n, P17129941573586355176.a n = A137669 (n + 1)

theorem P17129941573586355176.correct : P17129941573586355176.Spec := by
  intro n
  simp only [A137669, Nat.add_sub_cancel]

end A137669

/-! ## A137669.P6887993933675937997

`A004139(A055495(n+1))`
-/

namespace A137669.P6887993933675937997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A055495 (n + 1)).toNat

end

end A137669.P6887993933675937997

namespace A137669

/-- `A004139(A055495(n+1))` -/
def P6887993933675937997.Spec : Prop :=
  ∀ n, P6887993933675937997.a n = A137669 (n + 1)

end A137669

/-! ## A137669.P2027098694984905586

`A046022(A143616(n+2))`
-/

namespace A137669.P2027098694984905586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A143616 (n + 2)).toNat

end

end A137669.P2027098694984905586

namespace A137669

/-- `A046022(A143616(n+2))` -/
def P2027098694984905586.Spec : Prop :=
  ∀ n, P2027098694984905586.a n = A137669 (n + 1)

end A137669

/-! ## A137669.P2808953062049406911

`A051948(A253472(n+2))`
-/

namespace A137669.P2808953062049406911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (A253472 (n + 2)).toNat

end

end A137669.P2808953062049406911

namespace A137669

/-- `A051948(A253472(n+2))` -/
def P2808953062049406911.Spec : Prop :=
  ∀ n, P2808953062049406911.a n = A137669 (n + 1)

end A137669

/-! ## A137669.P15131399351027820017

`p?[comp[A007318(A092565(n))]]`
-/

namespace A137669.P15131399351027820017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A092565 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137669.P15131399351027820017

namespace A137669

/-- `p?[comp[A007318(A092565(n))]]` -/
def P15131399351027820017.Spec : Prop :=
  ∀ n, (P15131399351027820017.a n : ℤ) = A137669 (n + 1)

end A137669

/-! ## A137669.P7029275928714248481

`p?[A381767(A381767(n+3))]`
-/

namespace A137669.P7029275928714248481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381767 (A381767 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137669.P7029275928714248481

namespace A137669

/-- `p?[A381767(A381767(n+3))]` -/
def P7029275928714248481.Spec : Prop :=
  ∀ n, P7029275928714248481.a n = A137669 (n + 1)

end A137669

/-! ## A137669.P6226470087111593590

`eq[A016112(n), A051161(n+1)]`
-/

namespace A137669.P6226470087111593590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016112 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051161 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137669.P6226470087111593590

namespace A137669

/-- `eq[A016112(n), A051161(n+1)]` -/
def P6226470087111593590.Spec : Prop :=
  ∀ n, (P6226470087111593590.a n : ℤ) = A137669 (n + 1)

end A137669

/-! ## A137669.P2456667056189131281

`eq[A051161(n+1), A072480(n)]`
-/

namespace A137669.P2456667056189131281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137669.P2456667056189131281

namespace A137669

/-- `eq[A051161(n+1), A072480(n)]` -/
def P2456667056189131281.Spec : Prop :=
  ∀ n, (P2456667056189131281.a n : ℤ) = A137669 (n + 1)

end A137669

/-! ## A137669.P16759901298052718009

`eq[A016112(n), A162518(n+1)]`
-/

namespace A137669.P16759901298052718009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016112 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162518 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137669.P16759901298052718009

namespace A137669

/-- `eq[A016112(n), A162518(n+1)]` -/
def P16759901298052718009.Spec : Prop :=
  ∀ n, (P16759901298052718009.a n : ℤ) = A137669 (n + 1)

end A137669

/-! ## A137669.P6345961881783070727

`eq[A051161(n+1), A277894(n)]`
-/

namespace A137669.P6345961881783070727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137669.P6345961881783070727

namespace A137669

/-- `eq[A051161(n+1), A277894(n)]` -/
def P6345961881783070727.Spec : Prop :=
  ∀ n, (P6345961881783070727.a n : ℤ) = A137669 (n + 1)

end A137669

/-! ## A137669.P18074317771849576636

`lt[2*A007953(n), A055672(n)]`
-/

namespace A137669.P18074317771849576636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A137669.P18074317771849576636

namespace A137669

/-- `lt[2*A007953(n), A055672(n)]` -/
def P18074317771849576636.Spec : Prop :=
  ∀ n, (P18074317771849576636.a n : ℤ) = A137669 (n + 1)

end A137669

/-! ## A137669.P6468687220520809319

`∪[A078138(n+1), A046440(n)]`
-/

namespace A137669.P6468687220520809319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046440 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137669.P6468687220520809319

namespace A137669

/-- `∪[A078138(n+1), A046440(n)]` -/
def P6468687220520809319.Spec : Prop :=
  ∀ n, (P6468687220520809319.a n : ℤ) = A137669 (n + 1)

end A137669

/-! ## A137669.P231968825742935116

`p?[A340610(A212450(n+2)+1)]`
-/

namespace A137669.P231968825742935116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340610 (A212450 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137669.P231968825742935116

namespace A137669

/-- `p?[A340610(A212450(n+2)+1)]` -/
def P231968825742935116.Spec : Prop :=
  ∀ n, P231968825742935116.a n = A137669 (n + 1)

end A137669

/-! ## A137669.P3275292990101157392

`∪[A006489(n+1), A078138(n+1)]`
-/

namespace A137669.P3275292990101157392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137669.P3275292990101157392

namespace A137669

/-- `∪[A006489(n+1), A078138(n+1)]` -/
def P3275292990101157392.Spec : Prop :=
  ∀ n, (P3275292990101157392.a n : ℤ) = A137669 (n + 1)

end A137669

/-!
# A137670: Prime numbers p such that p-b < p-a < p < p+a < p+b are prime for some a and b.

The programs for A137670, there is no canonical definition to state claims against.
-/

/-! ## A137670.P4440344324998809673

`p?[floor((4-6/(n+1))*a(n-1)/4)+6]` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=-1, a(4)=0, a(5)=1`
-/

namespace A137670.P4440344324998809673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1, -1, 0, 1] fun n f1 =>
  ⌊(4 - 6 / (n + 1 : ℚ)) * (f1 (n - 1) : ℚ) / 4⌋ + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137670.P4440344324998809673

/-! ## A137670.P15224623599399348901

`record[A323075(n+32)]`
-/

namespace A137670.P15224623599399348901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323075 (n + 32)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137670.P15224623599399348901

/-! ## A137670.P7680257930759996396

`p?[A114306(n+1)+5]`
-/

namespace A137670.P7680257930759996396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114306 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137670.P7680257930759996396

/-! ## A137670.P15272629605516600454

`A000040(comp[4^n²]+7)`
-/

namespace A137670.P15272629605516600454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 7)

end

end A137670.P15272629605516600454

/-! ## A137670.P4355470406606040358

`p?[comp[A151413(n+1)-1]]`
-/

namespace A137670.P4355470406606040358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151413 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137670.P4355470406606040358

/-! ## A137670.P401389329785579310

`p?[Δ[(A225871(n+1)+2)²]]`
-/

namespace A137670.P401389329785579310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A225871 (n + 1) + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137670.P401389329785579310

/-! ## A137670.P13679079895310050628

`A137669(A055495(n+1))`
-/

namespace A137670.P13679079895310050628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137669 (A055495 (n + 1)).toNat

end

end A137670.P13679079895310050628

/-! ## A137670.P547459384355142470

`A120533(A133043(n+1))`
-/

namespace A137670.P547459384355142470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (A133043 (n + 1)).toNat

end

end A137670.P547459384355142470

/-! ## A137670.P1537656332501955312

`A063884(A253472(n+2))`
-/

namespace A137670.P1537656332501955312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063884 (A253472 (n + 2)).toNat

end

end A137670.P1537656332501955312

/-! ## A137670.P17707747057364245530

`A137669(A293754(n+1)+2)`
-/

namespace A137670.P17707747057364245530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137669 (A293754 (n + 1) + 2).toNat

end

end A137670.P17707747057364245530

/-!
# A137671: a(n+1) is the number of preceding terms having in binary representation the same number of ones as a(n), starting with a(1) = 1.

The programs for A137671, there is no canonical definition to state claims against.
-/

/-! ## A137671.P14535711320848985168

`A056557(A359851(n)+A001221(n+1))`
-/

namespace A137671.P14535711320848985168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056557 (A359851 n + A001221 (n + 1)).toNat

end

end A137671.P14535711320848985168

/-!
# A137672: Number of ones in binary representation of A137671(n).

The programs for A137672, there is no canonical definition to state claims against.
-/

/-! ## A137672.P3315201888822400006

`A000120(A137671(n+1))`
-/

namespace A137672.P3315201888822400006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A137671 (n + 1)).toNat

end

end A137672.P3315201888822400006

/-! ## A137672.P971459674080025110

`A001222(A001316(2*A137671(n+1)))`
-/

namespace A137672.P971459674080025110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (2 * A137671 (n + 1)).toNat).toNat

end

end A137672.P971459674080025110

/-! ## A137672.P979940283763693235

`A000005(A001316(A137671(n+1))/2)`
-/

namespace A137672.P979940283763693235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A001316 (A137671 (n + 1)).toNat : ℚ) / 2)).toNat

end

end A137672.P979940283763693235

/-! ## A137672.P7310296925529667694

`A001222(A001316(lcm(2, A137671(n+1))))`
-/

namespace A137672.P7310296925529667694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (Int.lcm 2 (A137671 (n + 1)))).toNat

end

end A137672.P7310296925529667694

/-! ## A137672.P12024626828662855290

`∑{d}[A001316(A137671(n+1)), A001221(#)]`
-/

namespace A137672.P12024626828662855290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A137671 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A137672.P12024626828662855290

/-!
# A137673: Smallest m such that A137671(m) = n.

The programs for A137673, there is no canonical definition to state claims against.
-/

/-! ## A137673.P814970043315918862

`A390813(A298805(n))`
-/

namespace A137673.P814970043315918862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390813 (A298805 n).toNat

end

end A137673.P814970043315918862

/-! ## A137673.P9668275031759197629

`lt[A110658(n), A062843(n+1)]`
-/

namespace A137673.P9668275031759197629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062843 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A137673.P9668275031759197629

/-! ## A137673.P2453441712652277430

`lt[A035699(n+2), Δ[A057361(n)]]`
-/

namespace A137673.P2453441712652277430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035699 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A137673.P2453441712652277430

/-!
# A137674: Numbers m such that A137671(m) = 1.

The programs for A137674, there is no canonical definition to state claims against.
-/

/-! ## A137674.P9727927447397082915

`eq[1, A137671(n+1)]+1`
-/

namespace A137674.P9727927447397082915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137674.P9727927447397082915

/-! ## A137674.P15333244593732565077

`record[A000027(n+1)/A137671(n+1)]`
-/

namespace A137674.P15333244593732565077
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A137671 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137674.P15333244593732565077

/-! ## A137674.P12200661933940224510

`eq[A057427(n), A137671(A028310(n))]`
-/

namespace A137674.P12200661933940224510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137671 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137674.P12200661933940224510

/-! ## A137674.P6082317475426006211

`record[A008619(2*n)/A137671(n+1)]`
-/

namespace A137674.P6082317475426006211
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A137671 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137674.P6082317475426006211

/-! ## A137674.P12880409527536301324

`A137671(record[A137673(n+1)/A137671(n+1)])`
-/

namespace A137674.P12880409527536301324
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137673 (n + 1) : ℚ) / (A137671 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137671 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A137674.P12880409527536301324

/-!
# A137675: Prime numbers p such that p +- a, p +- b, p +- c and p +- d are prime numbers, where a, b, c and d are distinct positive integers with p > d, d > c, c > b and b > a.

The programs for A137675, there is no canonical definition to state claims against.
-/

/-! ## A137675.P9195169981789752682

`p?[floor(n/cos(50))+33]`
-/

namespace A137675.P9195169981789752682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.cos (50 : ℝ)⌋ + 33

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137675.P9195169981789752682

/-! ## A137675.P8888791820862251306

`p?[(n+31)%lcm(31, n+1)]`
-/

namespace A137675.P8888791820862251306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 31) % Nat.lcm 31 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137675.P8888791820862251306

/-! ## A137675.P8980513249389203834

`p?[A297468(n)+30]`
-/

namespace A137675.P8980513249389203834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297468 n + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137675.P8980513249389203834

/-! ## A137675.P10193451994782361944

`p?[A348553(n)+35]`
-/

namespace A137675.P10193451994782361944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 n + 35

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137675.P10193451994782361944

/-! ## A137675.P2465276590554724984

`p?[xor(n, -A016266(n))]`
-/

namespace A137675.P2465276590554724984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-A016266 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137675.P2465276590554724984

/-! ## A137675.P7323950740210461218

`p?[A069715(n+2)+22]`
-/

namespace A137675.P7323950740210461218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069715 (n + 2) + 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137675.P7323950740210461218

/-! ## A137675.P7630643833428721452

`p?[A001690(n+2)+27]`
-/

namespace A137675.P7630643833428721452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 2) + 27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137675.P7630643833428721452

/-! ## A137675.P13175854773419132592

`p?[A007412(n+1)+34]`
-/

namespace A137675.P13175854773419132592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1) + 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137675.P13175854773419132592

/-! ## A137675.P9507350165051925945

`record[A006530(floor((n+4)/cos(50))+33)]`
-/

namespace A137675.P9507350165051925945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (⌊(n + 4 : ℝ) / Real.cos (50 : ℝ)⌋ + 33).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137675.P9507350165051925945

/-!
# A137676: Expansion of f(-x^2, -x^3) / f(-x, -x^3) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A137676, there is no canonical definition to state claims against.
-/

/-! ## A137676.P2726356214490548147

`A255270(A094988(n)*A225853(n))`
-/

namespace A137676.P2726356214490548147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A094988 n * A225853 n).toNat

end

end A137676.P2726356214490548147

/-! ## A137676.P8722884047260462828

`A172099(A033547(n)-A161680(n))`
-/

namespace A137676.P8722884047260462828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172099 (A033547 n - A161680 n).toNat

end

end A137676.P8722884047260462828

/-! ## A137676.P18446591725008971564

`A172099(A143166(n)-A172076(n))`
-/

namespace A137676.P18446591725008971564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172099 (A143166 n - A172076 n).toNat

end

end A137676.P18446591725008971564

/-! ## A137676.P1075227531208025060

`A172099(A081489(n+1)-A002061(n))`
-/

namespace A137676.P1075227531208025060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172099 (A081489 (n + 1) - A002061 n).toNat

end

end A137676.P1075227531208025060

/-! ## A137676.P7259814358419476527

`A172099(∑[(n+1)²+2])`
-/

namespace A137676.P7259814358419476527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172099 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137676.P7259814358419476527

/-!
# A137677: Expansion of f(-x, -x^4) / psi(-x) where psi() is a Ramanujan theta function and f(, ) is Ramanujan's general theta function.

The programs for A137677, there is no canonical definition to state claims against.
-/

/-! ## A137677.P4611236989909477031

`A025845(n)*A059841(A000330(n))`
-/

namespace A137677.P4611236989909477031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025845 n * A059841 (A000330 n).toNat

end

end A137677.P4611236989909477031

/-! ## A137677.P4779401880301149243

`A172099(A049480(n+1))`
-/

namespace A137677.P4779401880301149243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172099 (A049480 (n + 1)).toNat

end

end A137677.P4779401880301149243

/-! ## A137677.P11971490153054447416

`A172099(∑[A002522(n)]+n)`
-/

namespace A137677.P11971490153054447416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172099 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A137677.P11971490153054447416

/-! ## A137677.P1026659955864389135

`A172099(A081489(n+1)+n)`
-/

namespace A137677.P1026659955864389135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172099 (A081489 (n + 1) + (n : ℤ)).toNat

end

end A137677.P1026659955864389135

/-! ## A137677.P1735715128873851319

`A172099(∑[∑[A004280(n+1)]])`
-/

namespace A137677.P1735715128873851319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172099 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A137677.P1735715128873851319

/-!
# A137678: Consider the consecutive composite numbers between prime(n) and prime(n+1). Letting k = prime(n+1)-prime(n)-1, a(n) is the number of these numbers that have all prime factors less than k.

The programs for A137678, there is no canonical definition to state claims against.
-/

/-! ## A137678.P2786602899243999429

`A184159(or(A003961(n+1), A227187(n)))`
-/

namespace A137678.P2786602899243999429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184159 (Int.lor (A003961 (n + 1)) (A227187 n)).toNat

end

end A137678.P2786602899243999429

/-! ## A137678.P10645234933656340255

`A271012(A108426(n))%A108415(n+2)`
-/

namespace A137678.P10645234933656340255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271012 (A108426 n).toNat) (A108415 (n + 2))

end

end A137678.P10645234933656340255

/-! ## A137678.P15558379291497859325

`A321013(A331914(3*n+5)+5)`
-/

namespace A137678.P15558379291497859325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321013 (A331914 (3 * n + 5) + 5).toNat

end

end A137678.P15558379291497859325

/-! ## A137678.P8998913789456359471

`val(A339645(n+1), p?[A153675(n+1)])`
-/

namespace A137678.P8998913789456359471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153675 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A339645 (n + 1)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137678.P8998913789456359471

/-! ## A137678.P9642158764231994210

`and(A345415(A169865(n+1)), A378282(3*n+2))`
-/

namespace A137678.P9642158764231994210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A345415 (A169865 (n + 1)).toNat) (A378282 (3 * n + 2))

end

end A137678.P9642158764231994210

/-!
# A137679: Triangle read by rows, A000012 * A008284.

The programs for A137679, there is no canonical definition to state claims against.
-/

/-! ## A137679.P9917528876762142242

`A259324(A061579(n))`
-/

namespace A137679.P9917528876762142242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259324 (A061579 n).toNat

end

end A137679.P9917528876762142242

/-! ## A137679.P7999642186752861112

`A259324(A038722(n+1)-1)`
-/

namespace A137679.P7999642186752861112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259324 (A038722 (n + 1) - 1).toNat

end

end A137679.P7999642186752861112

/-! ## A137679.P5775419775159940060

`A259324(A038722(n+2))`
-/

namespace A137679.P5775419775159940060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259324 (A038722 (n + 2)).toNat

end

end A137679.P5775419775159940060

/-! ## A137679.P16833099135644968837

`A092905(comp[∑[n]])`
-/

namespace A137679.P16833099135644968837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092905 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A137679.P16833099135644968837

/-! ## A137679.P14702679956530814356

`A259324(A278818(n)-1)`
-/

namespace A137679.P14702679956530814356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259324 (A278818 n - 1).toNat

end

end A137679.P14702679956530814356

/-! ## A137679.P10730460525738839756

`A259324(A278818(n+1))`
-/

namespace A137679.P10730460525738839756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259324 (A278818 (n + 1)).toNat

end

end A137679.P10730460525738839756

/-!
# A137680: Triangle read by rows, T(n,k) = T(n-1, k-1) - T(n-k, k-1); with leftmost term in each row = sum of all previous terms.

The programs for A137680, there is no canonical definition to state claims against.
-/

/-! ## A137680.P10503032994567738186

`A318241(A119502(n))+A079217(n)`
-/

namespace A137680.P10503032994567738186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318241 (A119502 n).toNat + A079217 n

end

end A137680.P10503032994567738186

/-!
# A137681: Row sums of triangle A137680.

The programs for A137681, there is no canonical definition to state claims against.
-/

/-! ## A137681.P15741402883184134026

`Δ[Δ[A067687(n)]]`
-/

namespace A137681.P15741402883184134026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067687 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137681.P15741402883184134026

/-! ## A137681.P9938845797691913570

`Δ[Δ[A343234(∑[n])]]`
-/

namespace A137681.P9938845797691913570
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343234 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137681.P9938845797691913570

/-! ## A137681.P9331830718308425072

`Δ[A137682(n+1)%(4^n)]`
-/

namespace A137681.P9331830718308425072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137682 (n + 1)) (4 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137681.P9331830718308425072

/-! ## A137681.P17836900374323141122

`A000007(n)+Δ[A137682(n+1)]`
-/

namespace A137681.P17836900374323141122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A137681.P17836900374323141122

/-!
# A137682: Left border of triangle A137680.

The programs for A137682, there is no canonical definition to state claims against.
-/

/-! ## A137682.P2344684701589415298

`Δ[A067687(n)%(3^n)]`
-/

namespace A137682.P2344684701589415298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067687 n) (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137682.P2344684701589415298

/-! ## A137682.P10061941233752140223

`A137681(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A137682.P10061941233752140223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A137681 n + a (n - 1)

end

end A137682.P10061941233752140223

/-! ## A137682.P17013790928661427884

`A000007(n)+Δ[A067687(n)]`
-/

namespace A137682.P17013790928661427884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A137682.P17013790928661427884

/-! ## A137682.P17459335064154594409

`Δ[A067687(n)+A057427(n)]`
-/

namespace A137682.P17459335064154594409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067687 n + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137682.P17459335064154594409

/-!
# A137683: Triangle read by rows, A026794 * A007318^(-1).

The programs for A137683, there is no canonical definition to state claims against.
-/

/-! ## A137683.P12030119309638919869

`or(A000035(A185034(n)), A128317(n+1))`
-/

namespace A137683.P12030119309638919869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A185034 n).toNat) (A128317 (n + 1))

end

end A137683.P12030119309638919869

/-!
# A137685: Expansion of phi(-q^3) / f(-q)^2 in powers of q where phi(), f() are Ramanujan theta functions.

The programs for A137685, there is no canonical definition to state claims against.
-/

/-! ## A137685.P2405516168985637517

`A328547(n)+A328499(A351971(n))`
-/

namespace A137685.P2405516168985637517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328547 n + A328499 (A351971 n).toNat

end

end A137685.P2405516168985637517

/-! ## A137685.P7383162604915262429

`A003056(A001405(n)*A286522(n))`
-/

namespace A137685.P7383162604915262429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A001405 n * A286522 n).toNat

end

end A137685.P7383162604915262429

/-!
# A137686: a(n) = Bigomega(Catalan(n)) - round( 3 n /(2 log(n+2))) (= A081399 - A137687).

The programs for A137686, the canonical program `A137686.P2137066375668895625` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137686 has offset 0).

The definition of A137686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137686.P2137066375668895625

`A081399(n)-A137687(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A137686

/-- `A081399(n)-A137687(n)` -/
def P2137066375668895625.Spec : Prop :=
  ∀ n, P2137066375668895625.a n = A137686 n

theorem P2137066375668895625.correct : P2137066375668895625.Spec := by
  intro n
  simp only [A137686]

end A137686

/-! ## A137686.P10321356474035432210

`A023816(n)-(A137687(n)+A001222(n+1))`
-/

namespace A137686.P10321356474035432210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 n - (A137687 n + A001222 (n + 1))

end

end A137686.P10321356474035432210

namespace A137686

/-- `A023816(n)-(A137687(n)+A001222(n+1))` -/
def P10321356474035432210.Spec : Prop :=
  ∀ n, P10321356474035432210.a n = A137686 n

end A137686

/-! ## A137686.P222102050594045494

`∑[A001222(A111284(n+1))-A001222(n+1)]-A137687(n)`
-/

namespace A137686.P222102050594045494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A111284 (n + 1)).toNat - A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A137687 n

end

end A137686.P222102050594045494

namespace A137686

/-- `∑[A001222(A111284(n+1))-A001222(n+1)]-A137687(n)` -/
def P222102050594045494.Spec : Prop :=
  ∀ n, P222102050594045494.a n = A137686 n

end A137686

/-! ## A137686.P7997133799917368766

`A048621(2*n+1)-A001222(2*n+1)-round(3*n/(2*log(n+2)))`
-/

namespace A137686.P7997133799917368766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (2 * n + 1) - A001222 (2 * n + 1) - SequenceMachineLib.roundAway (3 * ((n : ℝ) / (2 * Real.log (n + 2 : ℝ))))

end

end A137686.P7997133799917368766

namespace A137686

/-- `A048621(2*n+1)-A001222(2*n+1)-round(3*n/(2*log(n+2)))` -/
def P7997133799917368766.Spec : Prop :=
  ∀ n, P7997133799917368766.a n = A137686 n

end A137686

/-! ## A137686.P11490222458652559896

`A048621(2*n+1)+A022559(2*n)-A022559(2*n+1)-A137687(n)`
-/

namespace A137686.P11490222458652559896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (2 * n + 1) + (A022559 (2 * n) - A022559 (2 * n + 1)) - A137687 n

end

end A137686.P11490222458652559896

namespace A137686

/-- `A048621(2*n+1)+A022559(2*n)-A022559(2*n+1)-A137687(n)` -/
def P11490222458652559896.Spec : Prop :=
  ∀ n, P11490222458652559896.a n = A137686 n

end A137686

/-! ## A137686.P5360853562996281387

`∑[A252736(A111284(n+1))-A252736(n+1)]-A137687(n)`
-/

namespace A137686.P5360853562996281387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A111284 (n + 1)).toNat - A252736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A137687 n

end

end A137686.P5360853562996281387

namespace A137686

/-- `∑[A252736(A111284(n+1))-A252736(n+1)]-A137687(n)` -/
def P5360853562996281387.Spec : Prop :=
  ∀ n, P5360853562996281387.a n = A137686 n

end A137686

/-! ## A137686.P7471542370927944002

`A081399(n)-A048766(A140091(n)+A007982(n+1))`
-/

namespace A137686.P7471542370927944002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 n - A048766 (A140091 n + A007982 (n + 1)).toNat

end

end A137686.P7471542370927944002

namespace A137686

/-- `A081399(n)-A048766(A140091(n)+A007982(n+1))` -/
def P7471542370927944002.Spec : Prop :=
  ∀ n, P7471542370927944002.a n = A137686 n

end A137686

/-! ## A137686.P540853323435930564

`A081399(n)-A048766(A281668(n+1)+A028895(n))`
-/

namespace A137686.P540853323435930564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 n - A048766 (A281668 (n + 1) + A028895 n).toNat

end

end A137686.P540853323435930564

namespace A137686

/-- `A081399(n)-A048766(A281668(n+1)+A028895(n))` -/
def P540853323435930564.Spec : Prop :=
  ∀ n, P540853323435930564.a n = A137686 n

end A137686

/-!
# A137687: a(n) = round(3 n / (2 log(n+2))), an approximation to A081399.

The programs for A137687, the canonical program `A137687.P3610335691254570375` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137687 has offset 0).

The definition of A137687 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137687.P3610335691254570375

`round(3*n/log(n+2)/2)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A137687

/-- `round(3*n/log(n+2)/2)` -/
def P3610335691254570375.Spec : Prop :=
  ∀ n, P3610335691254570375.a n = A137687 n

theorem P3610335691254570375.correct : P3610335691254570375.Spec := by
  intro n
  simp only [A137687]

end A137687

/-! ## A137687.P10804638588007714536

`A081399(n)-A137686(n)`
-/

namespace A137687.P10804638588007714536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 n - A137686 n

end

end A137687.P10804638588007714536

namespace A137687

/-- `A081399(n)-A137686(n)` -/
def P10804638588007714536.Spec : Prop :=
  ∀ n, P10804638588007714536.a n = A137687 n

end A137687

/-! ## A137687.P10665457034923091875

`A023816(n)-(A137686(n)+A001222(n+1))`
-/

namespace A137687.P10665457034923091875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 n - (A137686 n + A001222 (n + 1))

end

end A137687.P10665457034923091875

namespace A137687

/-- `A023816(n)-(A137686(n)+A001222(n+1))` -/
def P10665457034923091875.Spec : Prop :=
  ∀ n, P10665457034923091875.a n = A137687 n

end A137687

/-! ## A137687.P3745960625761343379

`A048621(2*n+1)-A001222(2*n+1)-A137686(n)`
-/

namespace A137687.P3745960625761343379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (2 * n + 1) - A001222 (2 * n + 1) - A137686 n

end

end A137687.P3745960625761343379

namespace A137687

/-- `A048621(2*n+1)-A001222(2*n+1)-A137686(n)` -/
def P3745960625761343379.Spec : Prop :=
  ∀ n, P3745960625761343379.a n = A137687 n

end A137687

/-! ## A137687.P11646947649612708237

`A048621(2*n+1)+A022559(2*n)-A022559(2*n+1)-A137686(n)`
-/

namespace A137687.P11646947649612708237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (2 * n + 1) + (A022559 (2 * n) - A022559 (2 * n + 1)) - A137686 n

end

end A137687.P11646947649612708237

namespace A137687

/-- `A048621(2*n+1)+A022559(2*n)-A022559(2*n+1)-A137686(n)` -/
def P11646947649612708237.Spec : Prop :=
  ∀ n, P11646947649612708237.a n = A137687 n

end A137687

/-! ## A137687.P11874270366548237940

`A048766(A140091(n)+A007982(n+1))`
-/

namespace A137687.P11874270366548237940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A140091 n + A007982 (n + 1)).toNat

end

end A137687.P11874270366548237940

namespace A137687

/-- `A048766(A140091(n)+A007982(n+1))` -/
def P11874270366548237940.Spec : Prop :=
  ∀ n, P11874270366548237940.a n = A137687 n

end A137687

/-! ## A137687.P13137556141823984625

`A048766(A281668(n+1)+A028895(n))`
-/

namespace A137687.P13137556141823984625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A281668 (n + 1) + A028895 n).toNat

end

end A137687.P13137556141823984625

namespace A137687

/-- `A048766(A281668(n+1)+A028895(n))` -/
def P13137556141823984625.Spec : Prop :=
  ∀ n, P13137556141823984625.a n = A137687 n

end A137687

/-! ## A137687.P18256144201654443783

`A172471(A172471(∑[A013928(n+1)²]))`
-/

namespace A137687.P18256144201654443783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A172471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A137687.P18256144201654443783

namespace A137687

/-- `A172471(A172471(∑[A013928(n+1)²]))` -/
def P18256144201654443783.Spec : Prop :=
  ∀ n, P18256144201654443783.a n = A137687 n

end A137687

/-!
# A137688: 2^A003056: 2^n appears n+1 times.

The programs for A137688, the canonical program `A137688.P9746695207037186753` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137688 has offset 0).

The definition of A137688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137688.P9746695207037186753

`2^A003056(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A137688

/-- `2^A003056(n)` -/
def P9746695207037186753.Spec : Prop :=
  ∀ n, P9746695207037186753.a n = (A137688 n : ℚ)

end A137688

/-! ## A137688.P15650845652428233378

`A007664(n+1)-A007664(n)`
-/

namespace A137688.P15650845652428233378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 (n + 1) - A007664 n

end

end A137688.P15650845652428233378

namespace A137688

/-- `A007664(n+1)-A007664(n)` -/
def P15650845652428233378.Spec : Prop :=
  ∀ n, P15650845652428233378.a n = A137688 n

end A137688

/-! ## A137688.P11581316711635540020

`∏[char[∑[n+1]]+1]`
-/

namespace A137688.P11581316711635540020
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A137688.P11581316711635540020

namespace A137688

/-- `∏[char[∑[n+1]]+1]` -/
def P11581316711635540020.Spec : Prop :=
  ∀ n, (P11581316711635540020.a n : ℤ) = A137688 n

end A137688

/-! ## A137688.P7972359591937214324

`2^∑[and(1, char[∑[n+1]])]`
-/

namespace A137688.P7972359591937214324
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137688.P7972359591937214324

namespace A137688

/-- `2^∑[and(1, char[∑[n+1]])]` -/
def P7972359591937214324.Spec : Prop :=
  ∀ n, (P7972359591937214324.a n : ℤ) = A137688 n

end A137688

/-! ## A137688.P6443871133560249386

`2^∑[char[∑[C(n+1, n)]]]`
-/

namespace A137688.P6443871133560249386
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137688.P6443871133560249386

namespace A137688

/-- `2^∑[char[∑[C(n+1, n)]]]` -/
def P6443871133560249386.Spec : Prop :=
  ∀ n, (P6443871133560249386.a n : ℤ) = A137688 n

end A137688

/-! ## A137688.P7262235687044975841

`(char[∑[n]]+1)*a(n-1)` with `a(0)=1`
-/

namespace A137688.P7262235687044975841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0) + 1) * a (n - 1)

end

end A137688.P7262235687044975841

namespace A137688

/-- `(char[∑[n]]+1)*a(n-1)` -/
def P7262235687044975841.Spec : Prop :=
  ∀ n, (P7262235687044975841.a n : ℤ) = A137688 n

end A137688

/-! ## A137688.P13215215329109702741

`2^(∑[char[∑[n+1]]]%(n+1))`
-/

namespace A137688.P13215215329109702741
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A137688.P13215215329109702741

namespace A137688

/-- `2^(∑[char[∑[n+1]]]%(n+1))` -/
def P13215215329109702741.Spec : Prop :=
  ∀ n, (P13215215329109702741.a n : ℤ) = A137688 n

end A137688

/-! ## A137688.P4029681467173618909

`2^∑[char[a(n-1)+n+1]]` with `a(0)=1`
-/

namespace A137688.P4029681467173618909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137688.P4029681467173618909

namespace A137688

/-- `2^∑[char[a(n-1)+n+1]]` -/
def P4029681467173618909.Spec : Prop :=
  ∀ n, (P4029681467173618909.a n : ℤ) = A137688 n

end A137688

/-! ## A137688.P10357456717346558872

`Δ[A007664(n)]`
-/

namespace A137688.P10357456717346558872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137688.P10357456717346558872

namespace A137688

/-- `Δ[A007664(n)]` -/
def P10357456717346558872.Spec : Prop :=
  ∀ n, P10357456717346558872.a n = A137688 n

end A137688

/-! ## A137688.P15037205125827231722

`A140513(n)/2`
-/

namespace A137688.P15037205125827231722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140513 n : ℚ) / 2

end

end A137688.P15037205125827231722

namespace A137688

/-- `A140513(n)/2` -/
def P15037205125827231722.Spec : Prop :=
  ∀ n, P15037205125827231722.a n = (A137688 n : ℚ)

end A137688

/-! ## A137688.P5516398662198710211

`sqrt(2^A279891(n))`
-/

namespace A137688.P5516398662198710211
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((2 : ℚ) ^ (A279891 n : ℤ) : ℝ)

end

end A137688.P5516398662198710211

namespace A137688

/-- `sqrt(2^A279891(n))` -/
def P5516398662198710211.Spec : Prop :=
  ∀ n, P5516398662198710211.a n = (A137688 n : ℝ)

end A137688

/-! ## A137688.P3474180165604764192

`∏[A035214(n)]/2`
-/

namespace A137688.P3474180165604764192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A137688.P3474180165604764192

namespace A137688

/-- `∏[A035214(n)]/2` -/
def P3474180165604764192.Spec : Prop :=
  ∀ n, P3474180165604764192.a n = (A137688 n : ℚ)

end A137688

/-! ## A137688.P16100802928988450393

`2^∑[A073424(n)]`
-/

namespace A137688.P16100802928988450393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A137688.P16100802928988450393

namespace A137688

/-- `2^∑[A073424(n)]` -/
def P16100802928988450393.Spec : Prop :=
  ∀ n, P16100802928988450393.a n = (A137688 n : ℚ)

end A137688

/-! ## A137688.P16883906116741969877

`2^Δ[A006463(n)]`
-/

namespace A137688.P16883906116741969877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A137688.P16883906116741969877

namespace A137688

/-- `2^Δ[A006463(n)]` -/
def P16883906116741969877.Spec : Prop :=
  ∀ n, P16883906116741969877.a n = (A137688 n : ℚ)

end A137688

/-! ## A137688.P4549180719205134053

`A011782(∑[char[∑[n]]])`
-/

namespace A137688.P4549180719205134053
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137688.P4549180719205134053

namespace A137688

/-- `A011782(∑[char[∑[n]]])` -/
def P4549180719205134053.Spec : Prop :=
  ∀ n, P4549180719205134053.a n = A137688 n

end A137688

/-! ## A137688.P2618952450743502065

`A098354(n+1)/4`
-/

namespace A137688.P2618952450743502065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098354 (n + 1) : ℚ) / 4

end

end A137688.P2618952450743502065

namespace A137688

/-- `A098354(n+1)/4` -/
def P2618952450743502065.Spec : Prop :=
  ∀ n, P2618952450743502065.a n = (A137688 n : ℚ)

end A137688

/-! ## A137688.P5414129876927164279

`2^(n-A083920(n))`
-/

namespace A137688.P5414129876927164279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A083920 n : ℤ)

end

end A137688.P5414129876927164279

namespace A137688

/-- `2^(n-A083920(n))` -/
def P5414129876927164279.Spec : Prop :=
  ∀ n, P5414129876927164279.a n = (A137688 n : ℚ)

end A137688

/-! ## A137688.P4909186806390484471

`A166444(comp[∑[n]]-n)`
-/

namespace A137688.P4909186806390484471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A137688.P4909186806390484471

namespace A137688

/-- `A166444(comp[∑[n]]-n)` -/
def P4909186806390484471.Spec : Prop :=
  ∀ n, P4909186806390484471.a n = A137688 n

end A137688

/-! ## A137688.P6169545537055832529

`∏[A010054(n)+1]/2`
-/

namespace A137688.P6169545537055832529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A137688.P6169545537055832529

namespace A137688

/-- `∏[A010054(n)+1]/2` -/
def P6169545537055832529.Spec : Prop :=
  ∀ n, P6169545537055832529.a n = (A137688 n : ℚ)

end A137688

/-! ## A137688.P8533772239547813789

`2^floor(log2(∑[A007318(n)]))`
-/

namespace A137688.P8533772239547813789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.log 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A137688.P8533772239547813789

namespace A137688

/-- `2^floor(log2(∑[A007318(n)]))` -/
def P8533772239547813789.Spec : Prop :=
  ∀ n, (P8533772239547813789.a n : ℤ) = A137688 n

end A137688

/-!
# A137690: Primes of the form A128646(k)-1 for some k (listed in A137689), where A128646 = denominators of partial sums of 1/(prime(i)-1).

The programs for A137690, there is no canonical definition to state claims against.
-/

/-! ## A137690.P1575270659759861551

`p?[record[A128646(n+1)-1]]`
-/

namespace A137690.P1575270659759861551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128646 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137690.P1575270659759861551

/-! ## A137690.P11039516314955849691

`p?[record[A128648(n+1)-1]]`
-/

namespace A137690.P11039516314955849691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128648 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137690.P11039516314955849691

/-! ## A137690.P8855288005965441035

`p?[A128646(n+1)-A011558(n)]`
-/

namespace A137690.P8855288005965441035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128646 (n + 1) - A011558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137690.P8855288005965441035

/-! ## A137690.P608803043441207973

`p?[A128646(n+1)-A124778(n)]`
-/

namespace A137690.P608803043441207973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128646 (n + 1) - A124778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137690.P608803043441207973

/-!
# A137691: Indices m such that A128646(m)+1 is prime, where A128646 = denominators of partial sums of 1/(prime(i)-1).

The programs for A137691, there is no canonical definition to state claims against.
-/

/-! ## A137691.P12823781022249752716

`∑[A025450(A203580(n)!)]`
-/

namespace A137691.P12823781022249752716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 (Nat.factorial (A203580 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137691.P12823781022249752716

/-! ## A137691.P9050574145775061055

`∑[A025450(A135938(n+1)!)]`
-/

namespace A137691.P9050574145775061055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 (Nat.factorial (A135938 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137691.P9050574145775061055

/-! ## A137691.P7804077754243306925

`∑[A000010(A133707(∑[2^n]))]`
-/

namespace A137691.P7804077754243306925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A133707 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137691.P7804077754243306925

/-!
# A137693: Numbers n such that 3n^2-n = 6k^2-2k for some integer k>0.

The programs for A137693, there is no canonical definition to state claims against.
-/

/-! ## A137693.P14029530085908129546

`A046090(4*n+2)/3`
-/

namespace A137693.P14029530085908129546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046090 (4 * n + 2) : ℚ) / 3

end

end A137693.P14029530085908129546

/-! ## A137693.P15404220358653360456

`A024537(A017113(n))/3`
-/

namespace A137693.P15404220358653360456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024537 (A017113 n).toNat : ℚ) / 3

end

end A137693.P15404220358653360456

/-! ## A137693.P4183183430709848726

`A171842(A004770(n+1))/3`
-/

namespace A137693.P4183183430709848726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171842 (A004770 (n + 1)).toNat : ℚ) / 3

end

end A137693.P4183183430709848726

/-! ## A137693.P12055844106077538481

`A002315(2*n+1)*A077420(n)`
-/

namespace A137693.P12055844106077538481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 (2 * n + 1) * A077420 n

end

end A137693.P12055844106077538481

/-!
# A137694: Numbers k such that 6k^2-2k = 3n^2-n for some integer n>0.

The programs for A137694, there is no canonical definition to state claims against.
-/

/-! ## A137694.P912428225280640939

`A011900(A016825(n))/3`
-/

namespace A137694.P912428225280640939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011900 (A016825 n).toNat : ℚ) / 3

end

end A137694.P912428225280640939

/-! ## A137694.P786342773973058100

`A001653(2*n+2)*A077420(n)`
-/

namespace A137694.P786342773973058100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (2 * n + 2) * A077420 n

end

end A137694.P786342773973058100

/-! ## A137694.P8400248337393644935

`(A041027(2*n+1)+A041027(2*n))*A041027(2*n)`
-/

namespace A137694.P8400248337393644935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A041027 (2 * n + 1) + A041027 (2 * n)) * A041027 (2 * n)

end

end A137694.P8400248337393644935

/-!
# A137695: Tower of Hanoi with p pegs: A(p,n) = number of moves needed for n disks, using Frame's or Stewart's algorithm, read by columns of the upper right triangle of rows p >= 3, columns n >= p-2.

The programs for A137695, there is no canonical definition to state claims against.
-/

/-! ## A137695.P1111689672008027468

`or(A006530(A019538(3*n+1)), A325242(n+1))`
-/

namespace A137695.P1111689672008027468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006530 (A019538 (3 * n + 1)).toNat) (A325242 (n + 1))

end

end A137695.P1111689672008027468

/-! ## A137695.P18303647442940724640

`A103517(A091264(n))-A157928(A084858(n))`
-/

namespace A137695.P18303647442940724640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A091264 n).toNat - A157928 (A084858 n).toNat

end

end A137695.P18303647442940724640

/-!
# A137696: Triangular sequence of coefficients from a polynomial recursion: p(x,n)=p(x,Floor[(n-1)/2])-x^2*p(x,n-3)+x.

The programs for A137696, there is no canonical definition to state claims against.
-/

/-! ## A137696.P9903588195345350772

`A275308(n+1)-A071858(A025506(n))`
-/

namespace A137696.P9903588195345350772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275308 (n + 1) - A071858 (A025506 n).toNat

end

end A137696.P9903588195345350772

/-! ## A137696.P16175249757021451046

`A093829(A262795(n+1)+A206734(n+1))`
-/

namespace A137696.P16175249757021451046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (A262795 (n + 1) + A206734 (n + 1)).toNat

end

end A137696.P16175249757021451046

/-! ## A137696.P7432927649506339016

`A367771(A285152(n+1))-A296657(n+1)`
-/

namespace A137696.P7432927649506339016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367771 (A285152 (n + 1)).toNat - A296657 (n + 1)

end

end A137696.P7432927649506339016

/-! ## A137696.P17870275961352791800

`A014474(A283666(2*n+1))*A025869(2*n)`
-/

namespace A137696.P17870275961352791800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014474 (A283666 (2 * n + 1)).toNat * A025869 (2 * n)

end

end A137696.P17870275961352791800

/-! ## A137696.P17017315841945623362

`A344606(A047967(n+2))-A379476(3*n+4)`
-/

namespace A137696.P17017315841945623362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344606 (A047967 (n + 2)).toNat - A379476 (3 * n + 4)

end

end A137696.P17017315841945623362

/-!
# A137697: a(n) = x(n) * 2^((n mod 2 - 1)/2), with x(n)=Sum(x(k)*x(n-k-1):0<=k

The programs for A137697, there is no canonical definition to state claims against.
-/

/-! ## A137697.P12836007136354189914

`(n%2+1)*(4-6/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A137697.P12836007136354189914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n % 2 + 1 : ℕ) : ℚ) * ((4 - 6 / (n + 1 : ℚ)) * a (n - 1))

end

end A137697.P12836007136354189914

/-! ## A137697.P7319169997184120458

`(4-6/(n+1))*a(n-1)*gcd(2, n+1)` with `a(0)=1`
-/

namespace A137697.P7319169997184120458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 6 / (n + 1 : ℚ)) * a (n - 1) * (Nat.gcd 2 (n + 1) : ℚ)

end

end A137697.P7319169997184120458

/-! ## A137697.P5185276792436967862

`(4-6/(n+1))*a(n-1)*Δ[or(1, n)]!` with `a(0)=1`
-/

namespace A137697.P5185276792436967862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 6 / (n + 1 : ℚ)) * a (n - 1) * (Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A137697.P5185276792436967862

/-! ## A137697.P8676050831699402157

`(4-6/(n+1))*a(n-1)*Δ[comp[3*n]]` with `a(0)=1`
-/

namespace A137697.P8676050831699402157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 6 / (n + 1 : ℚ)) * a (n - 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A137697.P8676050831699402157

/-! ## A137697.P14985156055578573949

`C(2*n, n)/(n+1)*2^n/2^floor(n/2)`
-/

namespace A137697.P14985156055578573949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (2 ^ n : ℚ) / (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A137697.P14985156055578573949

/-!
# A137698: a(1)=2. a(n) = the smallest integer > a(n-1) that is not in sequence A137699. A137699(n) = the smallest integer > A137698(n) and not coprime to A137698(n). (A137699(n) = A137698(n) + smallest prime dividing A137698(n).).

The programs for A137698, there is no canonical definition to state claims against.
-/

/-! ## A137698.P16242067811922644955

`comp[A137699(n+1)-2]+2`
-/

namespace A137698.P16242067811922644955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137699 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A137698.P16242067811922644955

/-! ## A137698.P3598290903316704247

`∑[A000034(C(A182531(n+1)+1, 2)+1)]`
-/

namespace A137698.P3598290903316704247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (Nat.choose (A182531 (n + 1) + 1).toNat 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137698.P3598290903316704247

/-! ## A137698.P14475787114818000722

`∑[A000034(A000124(A182531(n+1)))]`
-/

namespace A137698.P14475787114818000722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000124 (A182531 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137698.P14475787114818000722

/-! ## A137698.P1699277338741964914

`record[A281354(n+1)-A275926(A275918(n))]`
-/

namespace A137698.P1699277338741964914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281354 (n + 1) - A275926 (A275918 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137698.P1699277338741964914

/-! ## A137698.P14632271645713501083

`∑[A000034(∏{d}[A249693(n), #])]`
-/

namespace A137698.P14632271645713501083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (∏ d ∈ Nat.divisors (f2 n).natAbs, d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137698.P14632271645713501083

/-!
# A137699: a(n) = the smallest integer > A137698(n) and not coprime to A137698(n). (a(n) = A137698(n) + smallest prime dividing A137698(n).).

The programs for A137699, there is no canonical definition to state claims against.
-/

/-! ## A137699.P16138280187941583481

`A137698(n+1)+A020639(A137698(n+1))`
-/

namespace A137699.P16138280187941583481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137698 (n + 1) + A020639 (A137698 (n + 1)).toNat

end

end A137699.P16138280187941583481

/-! ## A137699.P1089642412826108437

`A061228(A137698(n+1))`
-/

namespace A137699.P1089642412826108437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (A137698 (n + 1)).toNat

end

end A137699.P1089642412826108437

/-! ## A137699.P12281187352602768181

`A061228(record[A281354(n+1)-A034536(n+1)])`
-/

namespace A137699.P12281187352602768181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281354 (n + 1) - A034536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A137699.P12281187352602768181

/-! ## A137699.P5670166001552517217

`record[A281354(n+1)-A034536(n+1)]+A020639(record[A281354(n+1)-A034536(n+1)])`
-/

namespace A137699.P5670166001552517217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281354 (n + 1) - A034536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281354 (n + 1) - A034536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A020639 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

end

end A137699.P5670166001552517217

/-! ## A137699.P13896164891986085013

`A179881(or(A060475(n), A212439(n)))`
-/

namespace A137699.P13896164891986085013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179881 (Int.lor (A060475 n) (A212439 n)).toNat

end

end A137699.P13896164891986085013

