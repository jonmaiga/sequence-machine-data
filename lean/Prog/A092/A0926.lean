import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A092602: A093572 with duplicates removed.

The programs for A092602, there is no canonical definition to state claims against.
-/

/-! ## A092602.P2306961347344862341

`record[A076556(n+1)]`
-/

namespace A092602.P2306961347344862341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092602.P2306961347344862341

/-! ## A092602.P5900896374799687264

`record[(-1)^n*A093572(n+1)]`
-/

namespace A092602.P5900896374799687264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A093572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092602.P5900896374799687264

/-! ## A092602.P2099698558540406503

`record[A093572(A029579(n))]`
-/

namespace A092602.P2099698558540406503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093572 (A029579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092602.P2099698558540406503

/-! ## A092602.P13248517266864713925

`record[A002034(A014688(n+1))]`
-/

namespace A092602.P13248517266864713925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A014688 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092602.P13248517266864713925

/-! ## A092602.P14080854084057658323

`record[A093572(A000265(n+1))]`
-/

namespace A092602.P14080854084057658323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093572 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092602.P14080854084057658323

/-!
# A092603: a(n) = Sum_{k=1..n} min(k!, binomial(n,k)).

The programs for A092603, there is no canonical definition to state claims against.
-/

/-! ## A092603.P3508412009071672583

`2^n-A044934(n!)`
-/

namespace A092603.P3508412009071672583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A044934 (Nat.factorial n)

end

end A092603.P3508412009071672583

/-! ## A092603.P15114796326554110860

`2^n-A056170(n!)`
-/

namespace A092603.P15114796326554110860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A056170 (Nat.factorial n)

end

end A092603.P15114796326554110860

/-! ## A092603.P14585425201195230036

`2^n-A046660(∏[abs(or(1, -n))])`
-/

namespace A092603.P14585425201195230036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A046660 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A092603.P14585425201195230036

/-! ## A092603.P10582271124106471758

`A172471(A039648(n))`
-/

namespace A092603.P10582271124106471758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A039648 n).toNat

end

end A092603.P10582271124106471758

/-!
# A092604: Complement of A013939.

The programs for A092604, the canonical program `A092604.P14882743689300084007` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092604 has offset 1).

The definition of A092604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092604.P14882743689300084007

`comp[A013939(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092604

/-- `comp[A013939(n+1)]` -/
def P14882743689300084007.Spec : Prop :=
  ∀ n, (P14882743689300084007.a n : ℤ) = A092604 (n + 1)

theorem P14882743689300084007.correct : P14882743689300084007.Spec := by
  intro n
  simp only [A092604, Nat.add_sub_cancel]

end A092604

/-! ## A092604.P1230684453642486132

`comp[A355538(n+1)+n]`
-/

namespace A092604.P1230684453642486132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355538 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092604.P1230684453642486132

namespace A092604

/-- `comp[A355538(n+1)+n]` -/
def P1230684453642486132.Spec : Prop :=
  ∀ n, (P1230684453642486132.a n : ℤ) = A092604 (n + 1)

end A092604

/-! ## A092604.P6731262166498359121

`comp[A001221(n)+a(n-1)]` with `a(0)=0`
-/

namespace A092604.P6731262166498359121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A001221 n + f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092604.P6731262166498359121

namespace A092604

/-- `comp[A001221(n)+a(n-1)]` -/
def P6731262166498359121.Spec : Prop :=
  ∀ n, (P6731262166498359121.a n : ℤ) = A092604 (n + 1)

end A092604

/-! ## A092604.P7658600928126333227

`eq[0, char[∑[A001221(n+1)]]]`
-/

namespace A092604.P7658600928126333227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092604.P7658600928126333227

namespace A092604

/-- `eq[0, char[∑[A001221(n+1)]]]` -/
def P7658600928126333227.Spec : Prop :=
  ∀ n, (P7658600928126333227.a n : ℤ) = A092604 (n + 1)

end A092604

/-! ## A092604.P11405174521466762430

`eq[char[A013939(n+2)], A010051(2*(n+1))]`
-/

namespace A092604.P11405174521466762430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A092604.P11405174521466762430

namespace A092604

/-- `eq[char[A013939(n+2)], A010051(2*(n+1))]` -/
def P11405174521466762430.Spec : Prop :=
  ∀ n, (P11405174521466762430.a n : ℤ) = A092604 (n + 1)

end A092604

/-! ## A092604.P1733332433201214965

`eq[1, A082287(n+2)/A082287(n+1)]`
-/

namespace A092604.P1733332433201214965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082287 (n + 2) : ℚ) / (A082287 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A092604.P1733332433201214965

namespace A092604

/-- `eq[1, A082287(n+2)/A082287(n+1)]` -/
def P1733332433201214965.Spec : Prop :=
  ∀ n, (P1733332433201214965.a n : ℤ) = A092604 (n + 1)

end A092604

/-!
# A092605: Decimal expansion of e^(-1/2) or 1/sqrt(e).

The programs for A092605, there is no canonical definition to state claims against.
-/

/-! ## A092605.P14573272300642695189

`9-A290506(n)`
-/

namespace A092605.P14573272300642695189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A290506 n

end

end A092605.P14573272300642695189

/-!
# A092606: Fixed point of the morphism 0 -> 021, 1 -> 0, 2 -> 0; starting with a(1) = 0.

The programs for A092606, the canonical program `A092606.P13489676363175363184` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092606 has offset 1).

The definition of A092606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092606.P11672662015787344251

`A339584(n+1)-1`
-/

namespace A092606.P11672662015787344251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339584 (n + 1) - 1

end

end A092606.P11672662015787344251

namespace A092606

/-- `A339584(n+1)-1` -/
def P11672662015787344251.Spec : Prop :=
  ∀ n, P11672662015787344251.a n = A092606 (n + 1)

end A092606

/-! ## A092606.P13489676363175363184

`val(A161580(n+1)-1, 2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A092606

/-- `val(A161580(n+1)-1, 2)` -/
def P13489676363175363184.Spec : Prop :=
  ∀ n, (P13489676363175363184.a n : ℤ) = A092606 (n + 1)

theorem P13489676363175363184.correct : P13489676363175363184.Spec := by
  intro n
  simp only [A092606, Nat.add_sub_cancel]

end A092606

/-! ## A092606.P17243463399294906856

`(2*A328727(n+1))%3`
-/

namespace A092606.P17243463399294906856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A328727 (n + 1)) 3

end

end A092606.P17243463399294906856

namespace A092606

/-- `(2*A328727(n+1))%3` -/
def P17243463399294906856.Spec : Prop :=
  ∀ n, P17243463399294906856.a n = A092606 (n + 1)

end A092606

/-! ## A092606.P16796961723311338553

`A191254(A161580(n+1)-1)`
-/

namespace A092606.P16796961723311338553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 (A161580 (n + 1) - 1).toNat

end

end A092606.P16796961723311338553

namespace A092606

/-- `A191254(A161580(n+1)-1)` -/
def P16796961723311338553.Spec : Prop :=
  ∀ n, P16796961723311338553.a n = A092606 (n + 1)

end A092606

/-! ## A092606.P14160554021942069077

`A026465(n+1)*A395088(n)`
-/

namespace A092606.P14160554021942069077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (n + 1) * A395088 n

end

end A092606.P14160554021942069077

namespace A092606

/-- `A026465(n+1)*A395088(n)` -/
def P14160554021942069077.Spec : Prop :=
  ∀ n, P14160554021942069077.a n = A092606 (n + 1)

end A092606

/-! ## A092606.P4157237566268430172

`A001513(n)%A339584(n+1)`
-/

namespace A092606.P4157237566268430172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A339584 (n + 1))

end

end A092606.P4157237566268430172

namespace A092606

/-- `A001513(n)%A339584(n+1)` -/
def P4157237566268430172.Spec : Prop :=
  ∀ n, P4157237566268430172.a n = A092606 (n + 1)

end A092606

/-! ## A092606.P4275132050872757685

`A001538(n)%A339584(n+1)`
-/

namespace A092606.P4275132050872757685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A339584 (n + 1))

end

end A092606.P4275132050872757685

namespace A092606

/-- `A001538(n)%A339584(n+1)` -/
def P4275132050872757685.Spec : Prop :=
  ∀ n, P4275132050872757685.a n = A092606 (n + 1)

end A092606

/-! ## A092606.P16658463623026556508

`A002148(n)%A339584(n+1)`
-/

namespace A092606.P16658463623026556508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A339584 (n + 1))

end

end A092606.P16658463623026556508

namespace A092606

/-- `A002148(n)%A339584(n+1)` -/
def P16658463623026556508.Spec : Prop :=
  ∀ n, P16658463623026556508.a n = A092606 (n + 1)

end A092606

/-! ## A092606.P12062368480677725659

`A004538(n)%A339584(n+1)`
-/

namespace A092606.P12062368480677725659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004538 n) (A339584 (n + 1))

end

end A092606.P12062368480677725659

namespace A092606

/-- `A004538(n)%A339584(n+1)` -/
def P12062368480677725659.Spec : Prop :=
  ∀ n, P12062368480677725659.a n = A092606 (n + 1)

end A092606

/-! ## A092606.P8415400398935583777

`A016969(n)%A339584(n+1)`
-/

namespace A092606.P8415400398935583777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) (A339584 (n + 1))

end

end A092606.P8415400398935583777

namespace A092606

/-- `A016969(n)%A339584(n+1)` -/
def P8415400398935583777.Spec : Prop :=
  ∀ n, P8415400398935583777.a n = A092606 (n + 1)

end A092606

/-! ## A092606.P5266309445851913555

`A016971(n)%A339584(n+1)`
-/

namespace A092606.P5266309445851913555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016971 n) (A339584 (n + 1))

end

end A092606.P5266309445851913555

namespace A092606

/-- `A016971(n)%A339584(n+1)` -/
def P5266309445851913555.Spec : Prop :=
  ∀ n, P5266309445851913555.a n = A092606 (n + 1)

end A092606

/-! ## A092606.P1526320304935395013

`A016973(n)%A339584(n+1)`
-/

namespace A092606.P1526320304935395013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016973 n) (A339584 (n + 1))

end

end A092606.P1526320304935395013

namespace A092606

/-- `A016973(n)%A339584(n+1)` -/
def P1526320304935395013.Spec : Prop :=
  ∀ n, P1526320304935395013.a n = A092606 (n + 1)

end A092606

/-! ## A092606.P8319423844907075106

`A016975(n)%A339584(n+1)`
-/

namespace A092606.P8319423844907075106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016975 n) (A339584 (n + 1))

end

end A092606.P8319423844907075106

namespace A092606

/-- `A016975(n)%A339584(n+1)` -/
def P8319423844907075106.Spec : Prop :=
  ∀ n, P8319423844907075106.a n = A092606 (n + 1)

end A092606

/-! ## A092606.P14013387993544340397

`A017581(n)%A339584(n+1)`
-/

namespace A092606.P14013387993544340397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017581 n) (A339584 (n + 1))

end

end A092606.P14013387993544340397

namespace A092606

/-- `A017581(n)%A339584(n+1)` -/
def P14013387993544340397.Spec : Prop :=
  ∀ n, P14013387993544340397.a n = A092606 (n + 1)

end A092606

/-! ## A092606.P4643295879534665541

`A017583(n)%A339584(n+1)`
-/

namespace A092606.P4643295879534665541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017583 n) (A339584 (n + 1))

end

end A092606.P4643295879534665541

namespace A092606

/-- `A017583(n)%A339584(n+1)` -/
def P4643295879534665541.Spec : Prop :=
  ∀ n, P4643295879534665541.a n = A092606 (n + 1)

end A092606

/-! ## A092606.P5578125349041899280

`A017585(n)%A339584(n+1)`
-/

namespace A092606.P5578125349041899280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017585 n) (A339584 (n + 1))

end

end A092606.P5578125349041899280

namespace A092606

/-- `A017585(n)%A339584(n+1)` -/
def P5578125349041899280.Spec : Prop :=
  ∀ n, P5578125349041899280.a n = A092606 (n + 1)

end A092606

/-! ## A092606.P11373825117419353966

`A017653(n)%A339584(n+1)`
-/

namespace A092606.P11373825117419353966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017653 n) (A339584 (n + 1))

end

end A092606.P11373825117419353966

namespace A092606

/-- `A017653(n)%A339584(n+1)` -/
def P11373825117419353966.Spec : Prop :=
  ∀ n, P11373825117419353966.a n = A092606 (n + 1)

end A092606

/-! ## A092606.P8166411920696173257

`A017655(n)%A339584(n+1)`
-/

namespace A092606.P8166411920696173257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017655 n) (A339584 (n + 1))

end

end A092606.P8166411920696173257

namespace A092606

/-- `A017655(n)%A339584(n+1)` -/
def P8166411920696173257.Spec : Prop :=
  ∀ n, P8166411920696173257.a n = A092606 (n + 1)

end A092606

/-! ## A092606.P5678628096692724082

`A017657(n)%A339584(n+1)`
-/

namespace A092606.P5678628096692724082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017657 n) (A339584 (n + 1))

end

end A092606.P5678628096692724082

namespace A092606

/-- `A017657(n)%A339584(n+1)` -/
def P5678628096692724082.Spec : Prop :=
  ∀ n, P5678628096692724082.a n = A092606 (n + 1)

end A092606

/-!
# A092607: Length of longest contiguous block of ones in binary representation of n!.

The programs for A092607, there is no canonical definition to state claims against.
-/

/-! ## A092607.P13963990640002876125

`A211100(A049203(n+1)%A290301(n))`
-/

namespace A092607.P13963990640002876125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (Int.tmod (A049203 (n + 1)) (A290301 n)).toNat

end

end A092607.P13963990640002876125

/-!
# A092608: Number of connected ordered 5-element T_0-antichains on an unlabeled n-set.

The programs for A092608, there is no canonical definition to state claims against.
-/

/-! ## A092608.P8367323619691392852

`A355675(A092617(n))`
-/

namespace A092608.P8367323619691392852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355675 (A092617 n).toNat

end

end A092608.P8367323619691392852

/-! ## A092608.P16010985734617707523

`A025444(∑[A130463(n)²])`
-/

namespace A092608.P16010985734617707523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130463 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A092608.P16010985734617707523

/-!
# A092609: Product of first n primes that end in 1.

The programs for A092609, there is no canonical definition to state claims against.
-/

/-! ## A092609.P10085332178314342104

`∏[p?[5*n+1]]`
-/

namespace A092609.P10085332178314342104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092609.P10085332178314342104

/-! ## A092609.P15278686277982566980

`exp(∑[log(p?[5*n+1])])`
-/

namespace A092609.P15278686277982566980
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092609.P15278686277982566980

/-! ## A092609.P1196709908409488781

`∏[or(1, p?[a(n-1)+5])]` with `a(0)=1`
-/

namespace A092609.P1196709908409488781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092609.P1196709908409488781

/-! ## A092609.P1894199737820071843

`∏[A030430(n+1)]`
-/

namespace A092609.P1894199737820071843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092609.P1894199737820071843

/-! ## A092609.P3592775924606682709

`∏[A045453(n+2)]`
-/

namespace A092609.P3592775924606682709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092609.P3592775924606682709

/-!
# A092610: Product of first n primes that end in 3.

The programs for A092610, there is no canonical definition to state claims against.
-/

/-! ## A092610.P642636573398729072

`∏[p?[5*n-2]]`
-/

namespace A092610.P642636573398729072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092610.P642636573398729072

/-! ## A092610.P17879783157447448356

`a(n-1)*p?[5*n-2]` with `a(0)=3`
-/

namespace A092610.P17879783157447448356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092610.P17879783157447448356

/-! ## A092610.P10876371698367819879

`lcm(a(n-1), p?[a(n-1)+5])` with `a(0)=3`
-/

namespace A092610.P10876371698367819879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lcm (a (n - 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A092610.P10876371698367819879

/-! ## A092610.P15275233741088088996

`∏[A030431(n+1)]`
-/

namespace A092610.P15275233741088088996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092610.P15275233741088088996

/-! ## A092610.P4655323735594730581

`∏[record[A006530(5*n+3)]]`
-/

namespace A092610.P4655323735594730581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092610.P4655323735594730581

/-!
# A092611: Product of first n primes that end in 9.

The programs for A092611, there is no canonical definition to state claims against.
-/

/-! ## A092611.P1624759496501024923

`∏[p?[5*n-1]]`
-/

namespace A092611.P1624759496501024923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092611.P1624759496501024923

/-! ## A092611.P2213071469144787907

`∏[or(1, p?[a(n-1)+5])]` with `a(0)=4`
-/

namespace A092611.P2213071469144787907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092611.P2213071469144787907

/-! ## A092611.P9662705139047102594

`∏[∏{d}[p?[a(n-1)+5], #]]` with `a(0)=4`
-/

namespace A092611.P9662705139047102594
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f3 =>
  f3 (n - 1) + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092611.P9662705139047102594

/-! ## A092611.P3856479935983574395

`∏[∏{p}[p?[a(n-1)+5], #]]` with `a(0)=4`
-/

namespace A092611.P3856479935983574395
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f3 =>
  f3 (n - 1) + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092611.P3856479935983574395

/-! ## A092611.P4569419541706058892

`∏[record[p?[a(n-1)+5]]]` with `a(0)=19, a(1)=5, a(2)=4`
-/

namespace A092611.P4569419541706058892
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [19, 5, 4] fun n f3 =>
  f3 (n - 1) + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092611.P4569419541706058892

/-!
# A092612: Product of first n primes that end in 7.

The programs for A092612, there is no canonical definition to state claims against.
-/

/-! ## A092612.P7684171623918788368

`∏[p?[5*n+7]]`
-/

namespace A092612.P7684171623918788368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092612.P7684171623918788368

/-! ## A092612.P16952958799883863478

`a(n-1)*p?[a(n-1)+5]` with `a(0)=7`
-/

namespace A092612.P16952958799883863478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A092612.P16952958799883863478

/-! ## A092612.P8882224111308304969

`∏[A030432(n+1)]`
-/

namespace A092612.P8882224111308304969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092612.P8882224111308304969

/-! ## A092612.P10317676420385884984

`∏[A045380(n+2)]`
-/

namespace A092612.P10317676420385884984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092612.P10317676420385884984

/-! ## A092612.P1805603026591389027

`∏[A045357(n+3)]`
-/

namespace A092612.P1805603026591389027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092612.P1805603026591389027

/-!
# A092613: Let p_i(n) = n-th prime ending in i; then a(n) = p_1(n) + p_3(n) + p_7(n) + p_9(n).

The programs for A092613, there is no canonical definition to state claims against.
-/

/-! ## A092613.P11802364990039262197

`10*A092614(n+1)`
-/

namespace A092613.P11802364990039262197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A092614 (n + 1)

end

end A092613.P11802364990039262197

/-! ## A092613.P2845454274377248171

`10*(∑[A093723(floor(acot(n)+n))]-1)`
-/

namespace A092613.P2845454274377248171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093723 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A092613.P2845454274377248171

/-! ## A092613.P3776683263159435202

`10*(∑[A093723(C(3, n²)+n)]-1)`
-/

namespace A092613.P3776683263159435202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093723 (Nat.choose 3 (n ^ 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A092613.P3776683263159435202

/-! ## A092613.P10338339891147311997

`10*(∑[A093723(floor(sqrt(n²+1)))]-1)`
-/

namespace A092613.P10338339891147311997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093723 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A092613.P10338339891147311997

/-! ## A092613.P13927180702449183544

`10*(∑[A093723(floor(1/(n+1))+n)]-1)*(2*n+1)%2`
-/

namespace A092613.P13927180702449183544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093723 (⌊1 / (n + 1 : ℚ)⌋ + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (∑ j ∈ Finset.range (n + 1), f1 j - 1) * (((2 * n + 1) % 2 : ℕ) : ℤ)

end

end A092613.P13927180702449183544

/-!
# A092614: Let p_i(n) = n-th prime ending in i; then a(n) = (p_1(n) + p_3(n) + p_7(n) + p_9(n))/10.

The programs for A092614, there is no canonical definition to state claims against.
-/

/-! ## A092614.P10238162467110493890

`A092613(n+1)/10`
-/

namespace A092614.P10238162467110493890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092613 (n + 1) : ℚ) / 10

end

end A092614.P10238162467110493890

/-! ## A092614.P2458182950835200123

`A093723(n)+a(n-1)` with `a(0)=4`
-/

namespace A092614.P2458182950835200123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A093723 n + a (n - 1)

end

end A092614.P2458182950835200123

/-! ## A092614.P5541737661775174691

`∑[A093723(floor(acot(n)+n))]-1`
-/

namespace A092614.P5541737661775174691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093723 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A092614.P5541737661775174691

/-! ## A092614.P11205584419198865375

`∑[A093723(C(3, n²)+n)]-1`
-/

namespace A092614.P11205584419198865375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093723 (Nat.choose 3 (n ^ 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A092614.P11205584419198865375

/-! ## A092614.P2097678950754565228

`∑[A093723(floor(sqrt(n²+1)))]-1`
-/

namespace A092614.P2097678950754565228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093723 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A092614.P2097678950754565228

/-! ## A092614.P1255743406552987518

`∑[A093723(n)%A000351(a(n-1))]` with `a(0)=4`
-/

namespace A092614.P1255743406552987518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  Int.tmod (A093723 n) (A000351 (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092614.P1255743406552987518

/-! ## A092614.P1074042172909377918

`A028310(10*(∑[A093723(C(2, n+2)+n)]-1))/10`
-/

namespace A092614.P1074042172909377918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093723 (Nat.choose 2 (n + 2) + n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (10 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat : ℚ) / 10

end

end A092614.P1074042172909377918

/-! ## A092614.P16637180968588082212

`A153881(n+2)+∑[A093723(A028310(n))]`
-/

namespace A092614.P16637180968588082212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093723 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092614.P16637180968588082212

/-!
# A092617: Number of connected ordered 5-element antichains on an unlabeled n-set.

The programs for A092617, there is no canonical definition to state claims against.
-/

/-! ## A092617.P5852327358339710216

`A173003(A265947(n))`
-/

namespace A092617.P5852327358339710216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173003 (A265947 n).toNat

end

end A092617.P5852327358339710216

/-! ## A092617.P8706279267974306665

`A232395(A251714(∑[n]))`
-/

namespace A092617.P8706279267974306665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232395 (A251714 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A092617.P8706279267974306665

/-!
# A092619: Numbers with property that number of prime digits is prime.

The programs for A092619, there is no canonical definition to state claims against.
-/

/-! ## A092619.P13937392662014993929

`A085557(n+5)`
-/

namespace A092619.P13937392662014993929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 5)

end

end A092619.P13937392662014993929

/-! ## A092619.P8550462458715676443

`lt[1, A193238(n)]`
-/

namespace A092619.P8550462458715676443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092619.P8550462458715676443

/-! ## A092619.P14093275523154992020

`lt[1, A257994(A113581(n))]`
-/

namespace A092619.P14093275523154992020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092619.P14093275523154992020

/-! ## A092619.P2108881242284007498

`lt[A276729(n), log2(A055642(n))]`
-/

namespace A092619.P2108881242284007498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A055642 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A092619.P2108881242284007498

/-! ## A092619.P15544558535809391458

`lt[A276729(n), log2(A262190(n))]`
-/

namespace A092619.P15544558535809391458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A262190 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A092619.P15544558535809391458

/-! ## A092619.P18310926117761586110

`eq[0, A001222(a(A193238(n)))]` with `a(0)=4`
-/

namespace A092619.P18310926117761586110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A001222 (f2 (A193238 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092619.P18310926117761586110

/-! ## A092619.P2421849775807835974

`eq[1, A000045(a(A193238(n)))]` with `a(0)=4`
-/

namespace A092619.P2421849775807835974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000045 (f2 (A193238 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092619.P2421849775807835974

/-! ## A092619.P10175989605761005461

`eq[1, A000010(a(A193238(n)))]` with `a(0)=5`
-/

namespace A092619.P10175989605761005461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A000010 (f2 (A193238 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092619.P10175989605761005461

/-! ## A092619.P6894443466215597380

`eq[2, A000005(a(A193238(n)))]` with `a(0)=6`
-/

namespace A092619.P6894443466215597380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A000005 (f2 (A193238 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092619.P6894443466215597380

/-! ## A092619.P5144535416247809365

`eq[2, A006530(a(A193238(n))+1)]` with `a(0)=4`
-/

namespace A092619.P5144535416247809365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A006530 (f2 (A193238 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092619.P5144535416247809365

/-!
# A092620: Numbers with exactly one prime digit.

The programs for A092620, the canonical program `A092620.P17008262234244374479` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092620 has offset 1).

The definition of A092620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092620.P17976859911819240933

`eq[1, A193238(n)]`
-/

namespace A092620.P17976859911819240933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092620.P17976859911819240933

namespace A092620

/-- `eq[1, A193238(n)]` -/
def P17976859911819240933.Spec : Prop :=
  ∀ n, (P17976859911819240933.a n : ℤ) = A092620 (n + 1)

end A092620

/-! ## A092620.P5264903960376854808

`record[(n+1)/a(A193238(n+1))]` with `a(0)=2, a(1)=1`
-/

namespace A092620.P5264903960376854808
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (n + 1 : ℚ) / f1 (A193238 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092620.P5264903960376854808

namespace A092620

/-- `record[(n+1)/a(A193238(n+1))]` -/
def P5264903960376854808.Spec : Prop :=
  ∀ n, P5264903960376854808.a n = (A092620 (n + 1) : ℚ)

end A092620

/-! ## A092620.P17008262234244374479

`eq[A276729(n)+1, A055642(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092620

/-- `eq[A276729(n)+1, A055642(n)]` -/
def P17008262234244374479.Spec : Prop :=
  ∀ n, (P17008262234244374479.a n : ℤ) = A092620 (n + 1)

theorem P17008262234244374479.correct : P17008262234244374479.Spec := by
  intro n
  simp only [A092620, Nat.add_sub_cancel]

end A092620

/-! ## A092620.P5373605030309809322

`eq[A276729(n)+1, A004218(n+1)]`
-/

namespace A092620.P5373605030309809322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092620.P5373605030309809322

namespace A092620

/-- `eq[A276729(n)+1, A004218(n+1)]` -/
def P5373605030309809322.Spec : Prop :=
  ∀ n, (P5373605030309809322.a n : ℤ) = A092620 (n + 1)

end A092620

/-! ## A092620.P18120506237028599828

`eq[A102673(A107130(n))+1, A102669(n)]`
-/

namespace A092620.P18120506237028599828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (A107130 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092620.P18120506237028599828

namespace A092620

/-- `eq[A102673(A107130(n))+1, A102669(n)]` -/
def P18120506237028599828.Spec : Prop :=
  ∀ n, (P18120506237028599828.a n : ℤ) = A092620 (n + 1)

end A092620

/-! ## A092620.P1306602765964351313

`record[A118950(n+1)/A193238(A118950(n+1))]`
-/

namespace A092620.P1306602765964351313
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118950 (n + 1) : ℚ) / (A193238 (A118950 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092620.P1306602765964351313

namespace A092620

/-- `record[A118950(n+1)/A193238(A118950(n+1))]` -/
def P1306602765964351313.Spec : Prop :=
  ∀ n, P1306602765964351313.a n = (A092620 (n + 1) : ℚ)

end A092620

/-! ## A092620.P8909753724579625237

`A000720(p?[A008578(n+1)*A193238(n)])`
-/

namespace A092620.P8909753724579625237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A193238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A092620.P8909753724579625237

namespace A092620

/-- `A000720(p?[A008578(n+1)*A193238(n)])` -/
def P8909753724579625237.Spec : Prop :=
  ∀ n, P8909753724579625237.a n = A092620 (n + 1)

end A092620

/-! ## A092620.P7725665035032972200

`eq[1, A257994(A113581(n))]`
-/

namespace A092620.P7725665035032972200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092620.P7725665035032972200

namespace A092620

/-- `eq[1, A257994(A113581(n))]` -/
def P7725665035032972200.Spec : Prop :=
  ∀ n, (P7725665035032972200.a n : ℤ) = A092620 (n + 1)

end A092620

/-! ## A092620.P8121507170527018478

`A000720(A155989(n+1))`
-/

namespace A092620.P8121507170527018478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A155989 (n + 1)).toNat

end

end A092620.P8121507170527018478

namespace A092620

/-- `A000720(A155989(n+1))` -/
def P8121507170527018478.Spec : Prop :=
  ∀ n, P8121507170527018478.a n = A092620 (n + 1)

end A092620

/-!
# A092621: Primes with exactly one prime digit.

The programs for A092621, the canonical program `A092621.P5799589778367909611` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092621 has offset 1).

The definition of A092621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092621.P5799589778367909611

`A000040(eq[1, A109066(n+1)]+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092621

/-- `A000040(eq[1, A109066(n+1)]+1)` -/
def P5799589778367909611.Spec : Prop :=
  ∀ n, P5799589778367909611.a n = A092621 (n + 1)

theorem P5799589778367909611.correct : P5799589778367909611.Spec := by
  intro n
  simp only [A092621, Nat.add_sub_cancel]

end A092621

/-! ## A092621.P4791546397271697762

`p?[A000040(n+1)*A109066(n+1)]`
-/

namespace A092621.P4791546397271697762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A109066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092621.P4791546397271697762

namespace A092621

/-- `p?[A000040(n+1)*A109066(n+1)]` -/
def P4791546397271697762.Spec : Prop :=
  ∀ n, P4791546397271697762.a n = A092621 (n + 1)

end A092621

/-! ## A092621.P15003882317187364400

`p?[A092620(n+1)]`
-/

namespace A092621.P15003882317187364400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092621.P15003882317187364400

namespace A092621

/-- `p?[A092620(n+1)]` -/
def P15003882317187364400.Spec : Prop :=
  ∀ n, P15003882317187364400.a n = A092621 (n + 1)

end A092621

/-! ## A092621.P193351970133069736

`filter[A092620(n+1), A010051(#)]`
-/

namespace A092621.P193351970133069736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A092621.P193351970133069736

namespace A092621

/-- `filter[A092620(n+1), A010051(#)]` -/
def P193351970133069736.Spec : Prop :=
  ∀ n, P193351970133069736.a n = A092621 (n + 1)

end A092621

/-! ## A092621.P8753517907616198102

`∩[A000040(n+1), A092620(n+1)]`
-/

namespace A092621.P8753517907616198102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092621.P8753517907616198102

namespace A092621

/-- `∩[A000040(n+1), A092620(n+1)]` -/
def P8753517907616198102.Spec : Prop :=
  ∀ n, (P8753517907616198102.a n : ℤ) = A092621 (n + 1)

end A092621

/-! ## A092621.P65193595471259400

`∩[A008578(n+1), A092620(n+1)]`
-/

namespace A092621.P65193595471259400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092621.P65193595471259400

namespace A092621

/-- `∩[A008578(n+1), A092620(n+1)]` -/
def P65193595471259400.Spec : Prop :=
  ∀ n, (P65193595471259400.a n : ℤ) = A092621 (n + 1)

end A092621

/-! ## A092621.P7176429976790578781

`∩[A046022(n+1), A092620(n+1)]`
-/

namespace A092621.P7176429976790578781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092621.P7176429976790578781

namespace A092621

/-- `∩[A046022(n+1), A092620(n+1)]` -/
def P7176429976790578781.Spec : Prop :=
  ∀ n, (P7176429976790578781.a n : ℤ) = A092621 (n + 1)

end A092621

/-! ## A092621.P3984939825430368658

`∩[A051948(n+1), A092620(n+1)]`
-/

namespace A092621.P3984939825430368658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092621.P3984939825430368658

namespace A092621

/-- `∩[A051948(n+1), A092620(n+1)]` -/
def P3984939825430368658.Spec : Prop :=
  ∀ n, (P3984939825430368658.a n : ℤ) = A092621 (n + 1)

end A092621

/-! ## A092621.P16077709057589582491

`∩[A066050(n+1), A092620(n+1)]`
-/

namespace A092621.P16077709057589582491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092621.P16077709057589582491

namespace A092621

/-- `∩[A066050(n+1), A092620(n+1)]` -/
def P16077709057589582491.Spec : Prop :=
  ∀ n, (P16077709057589582491.a n : ℤ) = A092621 (n + 1)

end A092621

/-! ## A092621.P15322771165947243114

`∩[A067126(n+1), A092620(n+1)]`
-/

namespace A092621.P15322771165947243114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092621.P15322771165947243114

namespace A092621

/-- `∩[A067126(n+1), A092620(n+1)]` -/
def P15322771165947243114.Spec : Prop :=
  ∀ n, (P15322771165947243114.a n : ℤ) = A092621 (n + 1)

end A092621

/-! ## A092621.P15626497127245027402

`∩[A092620(n+1), A106118(n+1)]`
-/

namespace A092621.P15626497127245027402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092621.P15626497127245027402

namespace A092621

/-- `∩[A092620(n+1), A106118(n+1)]` -/
def P15626497127245027402.Spec : Prop :=
  ∀ n, (P15626497127245027402.a n : ℤ) = A092621 (n + 1)

end A092621

/-! ## A092621.P3992685500750981213

`∩[A092620(n+1), A116974(n+1)]`
-/

namespace A092621.P3992685500750981213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092621.P3992685500750981213

namespace A092621

/-- `∩[A092620(n+1), A116974(n+1)]` -/
def P3992685500750981213.Spec : Prop :=
  ∀ n, (P3992685500750981213.a n : ℤ) = A092621 (n + 1)

end A092621

/-! ## A092621.P11160095706694146223

`∩[A092620(n+1), A158611(n+1)]`
-/

namespace A092621.P11160095706694146223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092621.P11160095706694146223

namespace A092621

/-- `∩[A092620(n+1), A158611(n+1)]` -/
def P11160095706694146223.Spec : Prop :=
  ∀ n, (P11160095706694146223.a n : ℤ) = A092621 (n + 1)

end A092621

/-! ## A092621.P12089470050229496217

`∩[A092620(n+1), A175787(n+1)]`
-/

namespace A092621.P12089470050229496217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092621.P12089470050229496217

namespace A092621

/-- `∩[A092620(n+1), A175787(n+1)]` -/
def P12089470050229496217.Spec : Prop :=
  ∀ n, (P12089470050229496217.a n : ℤ) = A092621 (n + 1)

end A092621

/-! ## A092621.P14540349391034239827

`∩[A092620(n+1), A179336(n+1)]`
-/

namespace A092621.P14540349391034239827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092621.P14540349391034239827

namespace A092621

/-- `∩[A092620(n+1), A179336(n+1)]` -/
def P14540349391034239827.Spec : Prop :=
  ∀ n, (P14540349391034239827.a n : ℤ) = A092621 (n + 1)

end A092621

/-! ## A092621.P5511936162792878688

`∩[A092620(n+1), A182986(n+1)]`
-/

namespace A092621.P5511936162792878688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092621.P5511936162792878688

namespace A092621

/-- `∩[A092620(n+1), A182986(n+1)]` -/
def P5511936162792878688.Spec : Prop :=
  ∀ n, (P5511936162792878688.a n : ℤ) = A092621 (n + 1)

end A092621

/-! ## A092621.P14899045921602192401

`∩[A092620(n+1), A251595(n+1)]`
-/

namespace A092621.P14899045921602192401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092621.P14899045921602192401

namespace A092621

/-- `∩[A092620(n+1), A251595(n+1)]` -/
def P14899045921602192401.Spec : Prop :=
  ∀ n, (P14899045921602192401.a n : ℤ) = A092621 (n + 1)

end A092621

/-! ## A092621.P7259507341951930828

`∩[A092620(n+1), A284696(n+1)]`
-/

namespace A092621.P7259507341951930828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092621.P7259507341951930828

namespace A092621

/-- `∩[A092620(n+1), A284696(n+1)]` -/
def P7259507341951930828.Spec : Prop :=
  ∀ n, (P7259507341951930828.a n : ℤ) = A092621 (n + 1)

end A092621

/-! ## A092621.P3755139548636195231

`∩[A348283(n+1), A092620(n+1)]`
-/

namespace A092621.P3755139548636195231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092621.P3755139548636195231

namespace A092621

/-- `∩[A348283(n+1), A092620(n+1)]` -/
def P3755139548636195231.Spec : Prop :=
  ∀ n, (P3755139548636195231.a n : ℤ) = A092621 (n + 1)

end A092621

/-! ## A092621.P976934211589012929

`∩[A092620(n+1), A094317(n+1)]`
-/

namespace A092621.P976934211589012929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092621.P976934211589012929

namespace A092621

/-- `∩[A092620(n+1), A094317(n+1)]` -/
def P976934211589012929.Spec : Prop :=
  ∀ n, (P976934211589012929.a n : ℤ) = A092621 (n + 1)

end A092621

/-!
# A092622: Primes with exactly two prime digits.

The programs for A092622, the canonical program `A092622.P18267383796182270712` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092622 has offset 1).

The definition of A092622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092622.P18267383796182270712

`p?[A092624(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A092622

/-- `p?[A092624(n+1)]` -/
def P18267383796182270712.Spec : Prop :=
  ∀ n, P18267383796182270712.a n = A092622 (n + 1)

theorem P18267383796182270712.correct : P18267383796182270712.Spec := by
  intro n
  simp only [A092622, Nat.add_sub_cancel]

end A092622

/-! ## A092622.P14606046949354974928

`filter[A092624(n+1), A010051(#)]`
-/

namespace A092622.P14606046949354974928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A092622.P14606046949354974928

namespace A092622

/-- `filter[A092624(n+1), A010051(#)]` -/
def P14606046949354974928.Spec : Prop :=
  ∀ n, P14606046949354974928.a n = A092622 (n + 1)

end A092622

/-! ## A092622.P14586041343552100586

`filter[A092624(n+1), A323153(#)]`
-/

namespace A092622.P14586041343552100586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A092622.P14586041343552100586

namespace A092622

/-- `filter[A092624(n+1), A323153(#)]` -/
def P14586041343552100586.Spec : Prop :=
  ∀ n, P14586041343552100586.a n = A092622 (n + 1)

end A092622

/-! ## A092622.P4634714035590053712

`filter[A092624(2*(n+1)), A323152(#)]`
-/

namespace A092622.P4634714035590053712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092624 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A092622.P4634714035590053712

namespace A092622

/-- `filter[A092624(2*(n+1)), A323152(#)]` -/
def P4634714035590053712.Spec : Prop :=
  ∀ n, P4634714035590053712.a n = A092622 (n + 1)

end A092622

/-! ## A092622.P16099505720207557782

`∩[A000040(n+1), A092624(n+1)]`
-/

namespace A092622.P16099505720207557782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092622.P16099505720207557782

namespace A092622

/-- `∩[A000040(n+1), A092624(n+1)]` -/
def P16099505720207557782.Spec : Prop :=
  ∀ n, (P16099505720207557782.a n : ℤ) = A092622 (n + 1)

end A092622

/-! ## A092622.P14046969283502643029

`∩[A004139(n+1), A092624(n+1)]`
-/

namespace A092622.P14046969283502643029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092622.P14046969283502643029

namespace A092622

/-- `∩[A004139(n+1), A092624(n+1)]` -/
def P14046969283502643029.Spec : Prop :=
  ∀ n, (P14046969283502643029.a n : ℤ) = A092622 (n + 1)

end A092622

/-! ## A092622.P18146399244528849429

`∩[A006005(n+1), A092624(n+1)]`
-/

namespace A092622.P18146399244528849429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092622.P18146399244528849429

namespace A092622

/-- `∩[A006005(n+1), A092624(n+1)]` -/
def P18146399244528849429.Spec : Prop :=
  ∀ n, (P18146399244528849429.a n : ℤ) = A092622 (n + 1)

end A092622

/-! ## A092622.P11647082492751651879

`∩[A008578(n+1), A092624(n+1)]`
-/

namespace A092622.P11647082492751651879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092622.P11647082492751651879

namespace A092622

/-- `∩[A008578(n+1), A092624(n+1)]` -/
def P11647082492751651879.Spec : Prop :=
  ∀ n, (P11647082492751651879.a n : ℤ) = A092622 (n + 1)

end A092622

/-! ## A092622.P11673694039426057874

`∩[A033946(n+1), A092624(n+1)]`
-/

namespace A092622.P11673694039426057874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092622.P11673694039426057874

namespace A092622

/-- `∩[A033946(n+1), A092624(n+1)]` -/
def P11673694039426057874.Spec : Prop :=
  ∀ n, (P11673694039426057874.a n : ℤ) = A092622 (n + 1)

end A092622

/-! ## A092622.P18417544055197652013

`∩[A045319(n+1), A092624(n+1)]`
-/

namespace A092622.P18417544055197652013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092622.P18417544055197652013

namespace A092622

/-- `∩[A045319(n+1), A092624(n+1)]` -/
def P18417544055197652013.Spec : Prop :=
  ∀ n, (P18417544055197652013.a n : ℤ) = A092622 (n + 1)

end A092622

/-! ## A092622.P14836717175275149293

`∩[A045344(n+1), A092624(n+1)]`
-/

namespace A092622.P14836717175275149293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092622.P14836717175275149293

namespace A092622

/-- `∩[A045344(n+1), A092624(n+1)]` -/
def P14836717175275149293.Spec : Prop :=
  ∀ n, (P14836717175275149293.a n : ℤ) = A092622 (n + 1)

end A092622

/-! ## A092622.P15739003440153857465

`∩[A046022(n+1), A092624(n+1)]`
-/

namespace A092622.P15739003440153857465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092622.P15739003440153857465

namespace A092622

/-- `∩[A046022(n+1), A092624(n+1)]` -/
def P15739003440153857465.Spec : Prop :=
  ∀ n, (P15739003440153857465.a n : ℤ) = A092622 (n + 1)

end A092622

/-! ## A092622.P17948848110668567246

`∩[A053813(n+1), A092624(n+1)]`
-/

namespace A092622.P17948848110668567246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092622.P17948848110668567246

namespace A092622

/-- `∩[A053813(n+1), A092624(n+1)]` -/
def P17948848110668567246.Spec : Prop :=
  ∀ n, (P17948848110668567246.a n : ℤ) = A092622 (n + 1)

end A092622

/-! ## A092622.P15847329760999290534

`∩[A062972(n+1), A092624(n+1)]`
-/

namespace A092622.P15847329760999290534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092622.P15847329760999290534

namespace A092622

/-- `∩[A062972(n+1), A092624(n+1)]` -/
def P15847329760999290534.Spec : Prop :=
  ∀ n, (P15847329760999290534.a n : ℤ) = A092622 (n + 1)

end A092622

/-! ## A092622.P16816690522126666440

`∩[A065091(n+1), A092624(n+1)]`
-/

namespace A092622.P16816690522126666440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092622.P16816690522126666440

namespace A092622

/-- `∩[A065091(n+1), A092624(n+1)]` -/
def P16816690522126666440.Spec : Prop :=
  ∀ n, (P16816690522126666440.a n : ℤ) = A092622 (n + 1)

end A092622

/-! ## A092622.P17099570099748845240

`∩[A065396(n+1), A092624(n+1)]`
-/

namespace A092622.P17099570099748845240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092622.P17099570099748845240

namespace A092622

/-- `∩[A065396(n+1), A092624(n+1)]` -/
def P17099570099748845240.Spec : Prop :=
  ∀ n, (P17099570099748845240.a n : ℤ) = A092622 (n + 1)

end A092622

/-! ## A092622.P4617685790026784102

`∩[A066050(n+1), A092624(n+1)]`
-/

namespace A092622.P4617685790026784102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092622.P4617685790026784102

namespace A092622

/-- `∩[A066050(n+1), A092624(n+1)]` -/
def P4617685790026784102.Spec : Prop :=
  ∀ n, (P4617685790026784102.a n : ℤ) = A092622 (n + 1)

end A092622

/-! ## A092622.P10735725381577227364

`∩[A067126(n+1), A092624(n+1)]`
-/

namespace A092622.P10735725381577227364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092622.P10735725381577227364

namespace A092622

/-- `∩[A067126(n+1), A092624(n+1)]` -/
def P10735725381577227364.Spec : Prop :=
  ∀ n, (P10735725381577227364.a n : ℤ) = A092622 (n + 1)

end A092622

/-! ## A092622.P11831155285262787894

`p?[eq[2, A193238(n)]]`
-/

namespace A092622.P11831155285262787894
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A092622.P11831155285262787894

namespace A092622

/-- `p?[eq[2, A193238(n)]]` -/
def P11831155285262787894.Spec : Prop :=
  ∀ n, (P11831155285262787894.a n : ℤ) = A092622 (n + 1)

end A092622

/-! ## A092622.P3674322871469542452

`eq[A056148(n), A193238(n)]`
-/

namespace A092622.P3674322871469542452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056148 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092622.P3674322871469542452

namespace A092622

/-- `eq[A056148(n), A193238(n)]` -/
def P3674322871469542452.Spec : Prop :=
  ∀ n, (P3674322871469542452.a n : ℤ) = A092622 (n + 1)

end A092622

/-!
# A092623: Primes with exactly three prime digits.

The programs for A092623, the canonical program `A092623.P15617629317689966350` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092623 has offset 1).

The definition of A092623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092623.P15617629317689966350

`p?[A092625(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092623

/-- `p?[A092625(n+1)]` -/
def P15617629317689966350.Spec : Prop :=
  ∀ n, P15617629317689966350.a n = A092623 (n + 1)

theorem P15617629317689966350.correct : P15617629317689966350.Spec := by
  intro n
  simp only [A092623, Nat.add_sub_cancel]

end A092623

/-! ## A092623.P3320674805682870557

`record[A006530(A092625(n+2))]`
-/

namespace A092623.P3320674805682870557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A092625 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092623.P3320674805682870557

namespace A092623

/-- `record[A006530(A092625(n+2))]` -/
def P3320674805682870557.Spec : Prop :=
  ∀ n, P3320674805682870557.a n = A092623 (n + 1)

end A092623

/-! ## A092623.P14313816437012948199

`filter[A092625(n+1), A010051(#)]`
-/

namespace A092623.P14313816437012948199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A092623.P14313816437012948199

namespace A092623

/-- `filter[A092625(n+1), A010051(#)]` -/
def P14313816437012948199.Spec : Prop :=
  ∀ n, P14313816437012948199.a n = A092623 (n + 1)

end A092623

/-! ## A092623.P12174286522382833053

`filter[A092625(n+1), A323153(#)]`
-/

namespace A092623.P12174286522382833053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A092623.P12174286522382833053

namespace A092623

/-- `filter[A092625(n+1), A323153(#)]` -/
def P12174286522382833053.Spec : Prop :=
  ∀ n, P12174286522382833053.a n = A092623 (n + 1)

end A092623

/-! ## A092623.P3347390493384164960

`filter[A092625(2*(n+1)), A323152(#)]`
-/

namespace A092623.P3347390493384164960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A092623.P3347390493384164960

namespace A092623

/-- `filter[A092625(2*(n+1)), A323152(#)]` -/
def P3347390493384164960.Spec : Prop :=
  ∀ n, P3347390493384164960.a n = A092623 (n + 1)

end A092623

/-! ## A092623.P13508844607167458948

`∩[A000040(n+1), A092625(n+1)]`
-/

namespace A092623.P13508844607167458948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092623.P13508844607167458948

namespace A092623

/-- `∩[A000040(n+1), A092625(n+1)]` -/
def P13508844607167458948.Spec : Prop :=
  ∀ n, (P13508844607167458948.a n : ℤ) = A092623 (n + 1)

end A092623

/-! ## A092623.P12048811566532127841

`∩[A004139(n+1), A092625(n+1)]`
-/

namespace A092623.P12048811566532127841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092623.P12048811566532127841

namespace A092623

/-- `∩[A004139(n+1), A092625(n+1)]` -/
def P12048811566532127841.Spec : Prop :=
  ∀ n, (P12048811566532127841.a n : ℤ) = A092623 (n + 1)

end A092623

/-! ## A092623.P10282429980051426000

`∩[A006005(n+1), A092625(n+1)]`
-/

namespace A092623.P10282429980051426000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092623.P10282429980051426000

namespace A092623

/-- `∩[A006005(n+1), A092625(n+1)]` -/
def P10282429980051426000.Spec : Prop :=
  ∀ n, (P10282429980051426000.a n : ℤ) = A092623 (n + 1)

end A092623

/-! ## A092623.P10000550335895734034

`∩[A008578(n+1), A092625(n+1)]`
-/

namespace A092623.P10000550335895734034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092623.P10000550335895734034

namespace A092623

/-- `∩[A008578(n+1), A092625(n+1)]` -/
def P10000550335895734034.Spec : Prop :=
  ∀ n, (P10000550335895734034.a n : ℤ) = A092623 (n + 1)

end A092623

/-! ## A092623.P10401370417022549232

`∩[A033946(n+1), A092625(n+1)]`
-/

namespace A092623.P10401370417022549232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092623.P10401370417022549232

namespace A092623

/-- `∩[A033946(n+1), A092625(n+1)]` -/
def P10401370417022549232.Spec : Prop :=
  ∀ n, (P10401370417022549232.a n : ℤ) = A092623 (n + 1)

end A092623

/-! ## A092623.P2718130417136071120

`∩[A045319(n+1), A092625(n+1)]`
-/

namespace A092623.P2718130417136071120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092623.P2718130417136071120

namespace A092623

/-- `∩[A045319(n+1), A092625(n+1)]` -/
def P2718130417136071120.Spec : Prop :=
  ∀ n, (P2718130417136071120.a n : ℤ) = A092623 (n + 1)

end A092623

/-! ## A092623.P9233480683483193996

`∩[A045344(n+1), A092625(n+1)]`
-/

namespace A092623.P9233480683483193996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092623.P9233480683483193996

namespace A092623

/-- `∩[A045344(n+1), A092625(n+1)]` -/
def P9233480683483193996.Spec : Prop :=
  ∀ n, (P9233480683483193996.a n : ℤ) = A092623 (n + 1)

end A092623

/-! ## A092623.P15757126989263952799

`∩[A046022(n+1), A092625(n+1)]`
-/

namespace A092623.P15757126989263952799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092623.P15757126989263952799

namespace A092623

/-- `∩[A046022(n+1), A092625(n+1)]` -/
def P15757126989263952799.Spec : Prop :=
  ∀ n, (P15757126989263952799.a n : ℤ) = A092623 (n + 1)

end A092623

/-! ## A092623.P8267267486822750530

`∩[A051948(n+1), A092625(n+1)]`
-/

namespace A092623.P8267267486822750530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092623.P8267267486822750530

namespace A092623

/-- `∩[A051948(n+1), A092625(n+1)]` -/
def P8267267486822750530.Spec : Prop :=
  ∀ n, (P8267267486822750530.a n : ℤ) = A092623 (n + 1)

end A092623

/-! ## A092623.P10073972830964770348

`∩[A053813(n+1), A092625(n+1)]`
-/

namespace A092623.P10073972830964770348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092623.P10073972830964770348

namespace A092623

/-- `∩[A053813(n+1), A092625(n+1)]` -/
def P10073972830964770348.Spec : Prop :=
  ∀ n, (P10073972830964770348.a n : ℤ) = A092623 (n + 1)

end A092623

/-! ## A092623.P7731140917004832367

`∩[A062972(n+1), A092625(n+1)]`
-/

namespace A092623.P7731140917004832367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092623.P7731140917004832367

namespace A092623

/-- `∩[A062972(n+1), A092625(n+1)]` -/
def P7731140917004832367.Spec : Prop :=
  ∀ n, (P7731140917004832367.a n : ℤ) = A092623 (n + 1)

end A092623

/-! ## A092623.P11811544513137406940

`∩[A064728(n+1), A092625(n+1)]`
-/

namespace A092623.P11811544513137406940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092623.P11811544513137406940

namespace A092623

/-- `∩[A064728(n+1), A092625(n+1)]` -/
def P11811544513137406940.Spec : Prop :=
  ∀ n, (P11811544513137406940.a n : ℤ) = A092623 (n + 1)

end A092623

/-! ## A092623.P5248640524334517997

`∩[A065091(n+1), A092625(n+1)]`
-/

namespace A092623.P5248640524334517997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092623.P5248640524334517997

namespace A092623

/-- `∩[A065091(n+1), A092625(n+1)]` -/
def P5248640524334517997.Spec : Prop :=
  ∀ n, (P5248640524334517997.a n : ℤ) = A092623 (n + 1)

end A092623

/-! ## A092623.P7130461009205978704

`∩[A065376(n+1), A092625(n+1)]`
-/

namespace A092623.P7130461009205978704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092623.P7130461009205978704

namespace A092623

/-- `∩[A065376(n+1), A092625(n+1)]` -/
def P7130461009205978704.Spec : Prop :=
  ∀ n, (P7130461009205978704.a n : ℤ) = A092623 (n + 1)

end A092623

/-! ## A092623.P13521883025667277573

`∩[A065396(n+1), A092625(n+1)]`
-/

namespace A092623.P13521883025667277573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092623.P13521883025667277573

namespace A092623

/-- `∩[A065396(n+1), A092625(n+1)]` -/
def P13521883025667277573.Spec : Prop :=
  ∀ n, (P13521883025667277573.a n : ℤ) = A092623 (n + 1)

end A092623

/-!
# A092624: Numbers with exactly two prime digits.

The programs for A092624, the canonical program `A092624.P5299980934081124882` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092624 has offset 1).

The definition of A092624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092624.P17938648277436900288

`eq[2, A193238(n)]`
-/

namespace A092624.P17938648277436900288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092624.P17938648277436900288

namespace A092624

/-- `eq[2, A193238(n)]` -/
def P17938648277436900288.Spec : Prop :=
  ∀ n, (P17938648277436900288.a n : ℤ) = A092624 (n + 1)

end A092624

/-! ## A092624.P5299980934081124882

`eq[A276729(n)+2, A055642(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092624

/-- `eq[A276729(n)+2, A055642(n)]` -/
def P5299980934081124882.Spec : Prop :=
  ∀ n, (P5299980934081124882.a n : ℤ) = A092624 (n + 1)

theorem P5299980934081124882.correct : P5299980934081124882.Spec := by
  intro n
  simp only [A092624, Nat.add_sub_cancel]

end A092624

/-! ## A092624.P7534371160741598847

`eq[A276729(n)+2, A004218(n+1)]`
-/

namespace A092624.P7534371160741598847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092624.P7534371160741598847

namespace A092624

/-- `eq[A276729(n)+2, A004218(n+1)]` -/
def P7534371160741598847.Spec : Prop :=
  ∀ n, (P7534371160741598847.a n : ℤ) = A092624 (n + 1)

end A092624

/-! ## A092624.P8429299418331424488

`eq[A102673(A107130(n))+2, A102669(n)]`
-/

namespace A092624.P8429299418331424488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (A107130 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092624.P8429299418331424488

namespace A092624

/-- `eq[A102673(A107130(n))+2, A102669(n)]` -/
def P8429299418331424488.Spec : Prop :=
  ∀ n, (P8429299418331424488.a n : ℤ) = A092624 (n + 1)

end A092624

/-! ## A092624.P18097029792610508686

`eq[2, A257994(A113581(n))]`
-/

namespace A092624.P18097029792610508686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092624.P18097029792610508686

namespace A092624

/-- `eq[2, A257994(A113581(n))]` -/
def P18097029792610508686.Spec : Prop :=
  ∀ n, (P18097029792610508686.a n : ℤ) = A092624 (n + 1)

end A092624

/-! ## A092624.P7321359961760252256

`lt[2, A141310(A008578(n+1)*A193238(n))]`
-/

namespace A092624.P7321359961760252256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A008578 (n + 1) * A193238 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092624.P7321359961760252256

namespace A092624

/-- `lt[2, A141310(A008578(n+1)*A193238(n))]` -/
def P7321359961760252256.Spec : Prop :=
  ∀ n, (P7321359961760252256.a n : ℤ) = A092624 (n + 1)

end A092624

/-!
# A092625: Numbers with exactly three prime digits.

The programs for A092625, the canonical program `A092625.P14121284793211722884` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092625 has offset 1).

The definition of A092625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1536 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092625.P14121284793211722884

`eq[3, A193238(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A092625

/-- `eq[3, A193238(n)]` -/
def P14121284793211722884.Spec : Prop :=
  ∀ n, (P14121284793211722884.a n : ℤ) = A092625 (n + 1)

theorem P14121284793211722884.correct : P14121284793211722884.Spec := by
  intro n
  simp only [A092625, Nat.add_sub_cancel]

end A092625

/-! ## A092625.P3665249262067200782

`lt[A141310(A008578(n+1)), A193238(n)]`
-/

namespace A092625.P3665249262067200782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092625.P3665249262067200782

namespace A092625

/-- `lt[A141310(A008578(n+1)), A193238(n)]` -/
def P3665249262067200782.Spec : Prop :=
  ∀ n, (P3665249262067200782.a n : ℤ) = A092625 (n + 1)

end A092625

/-! ## A092625.P8188148646597642802

`lt[A141310(A001742(n+1)), A193238(n)]`
-/

namespace A092625.P8188148646597642802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A001742 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092625.P8188148646597642802

namespace A092625

/-- `lt[A141310(A001742(n+1)), A193238(n)]` -/
def P8188148646597642802.Spec : Prop :=
  ∀ n, (P8188148646597642802.a n : ℤ) = A092625 (n + 1)

end A092625

/-! ## A092625.P15091798439136580511

`A048380(A104155(n+1))`
-/

namespace A092625.P15091798439136580511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048380 (A104155 (n + 1)).toNat

end

end A092625.P15091798439136580511

namespace A092625

/-- `A048380(A104155(n+1))` -/
def P15091798439136580511.Spec : Prop :=
  ∀ n, P15091798439136580511.a n = A092625 (n + 1)

end A092625

/-! ## A092625.P17434235128129632657

`lt[2, A257994(A113581(n))]`
-/

namespace A092625.P17434235128129632657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092625.P17434235128129632657

namespace A092625

/-- `lt[2, A257994(A113581(n))]` -/
def P17434235128129632657.Spec : Prop :=
  ∀ n, (P17434235128129632657.a n : ℤ) = A092625 (n + 1)

end A092625

/-! ## A092625.P6238674674840600606

`∑{d}[A329147(A104155(n+1)), A000010(#)]`
-/

namespace A092625.P6238674674840600606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329147 (A104155 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A092625.P6238674674840600606

namespace A092625

/-- `∑{d}[A329147(A104155(n+1)), A000010(#)]` -/
def P6238674674840600606.Spec : Prop :=
  ∀ n, P6238674674840600606.a n = A092625 (n + 1)

end A092625

/-! ## A092625.P2226096797939858847

`A007318(C(2, n))*A329147(A104155(n+1))`
-/

namespace A092625.P2226096797939858847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A329147 (A104155 (n + 1)).toNat

end

end A092625.P2226096797939858847

namespace A092625

/-- `A007318(C(2, n))*A329147(A104155(n+1))` -/
def P2226096797939858847.Spec : Prop :=
  ∀ n, P2226096797939858847.a n = A092625 (n + 1)

end A092625

/-! ## A092625.P5568372934165980264

`A000041(C(n, n²))*A329147(A104155(n+1))`
-/

namespace A092625.P5568372934165980264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A329147 (A104155 (n + 1)).toNat

end

end A092625.P5568372934165980264

namespace A092625

/-- `A000041(C(n, n²))*A329147(A104155(n+1))` -/
def P5568372934165980264.Spec : Prop :=
  ∀ n, P5568372934165980264.a n = A092625 (n + 1)

end A092625

/-! ## A092625.P11420557007510127583

`A329147(A104155(n+1))+A008683(4*(n+1))`
-/

namespace A092625.P11420557007510127583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329147 (A104155 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A092625.P11420557007510127583

namespace A092625

/-- `A329147(A104155(n+1))+A008683(4*(n+1))` -/
def P11420557007510127583.Spec : Prop :=
  ∀ n, P11420557007510127583.a n = A092625 (n + 1)

end A092625

/-! ## A092625.P1476355209942053583

`A014963(6*(n+1))*A329147(A104155(n+1))`
-/

namespace A092625.P1476355209942053583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A329147 (A104155 (n + 1)).toNat

end

end A092625.P1476355209942053583

namespace A092625

/-- `A014963(6*(n+1))*A329147(A104155(n+1))` -/
def P1476355209942053583.Spec : Prop :=
  ∀ n, P1476355209942053583.a n = A092625 (n + 1)

end A092625

/-!
# A092626: Primes with one nonprime digit.

The programs for A092626, the canonical program `A092626.P14541878196379180679` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092626 has offset 1).

The definition of A092626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092626.P14541878196379180679

`p?[eq[1, A276729(n)]]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092626

/-- `p?[eq[1, A276729(n)]]` -/
def P14541878196379180679.Spec : Prop :=
  ∀ n, (P14541878196379180679.a n : ℤ) = A092626 (n + 1)

theorem P14541878196379180679.correct : P14541878196379180679.Spec := by
  intro n
  simp only [A092626, Nat.add_sub_cancel]

end A092626

/-! ## A092626.P5234842691214756466

`eq[A003415(n), A276729(n)]`
-/

namespace A092626.P5234842691214756466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092626.P5234842691214756466

namespace A092626

/-- `eq[A003415(n), A276729(n)]` -/
def P5234842691214756466.Spec : Prop :=
  ∀ n, (P5234842691214756466.a n : ℤ) = A092626 (n + 1)

end A092626

/-! ## A092626.P15974226345429349855

`eq[A018783(n), A276729(n)]`
-/

namespace A092626.P15974226345429349855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092626.P15974226345429349855

namespace A092626

/-- `eq[A018783(n), A276729(n)]` -/
def P15974226345429349855.Spec : Prop :=
  ∀ n, (P15974226345429349855.a n : ℤ) = A092626 (n + 1)

end A092626

/-! ## A092626.P17553785750597578539

`eq[A175126(n), A276729(n)]`
-/

namespace A092626.P17553785750597578539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092626.P17553785750597578539

namespace A092626

/-- `eq[A175126(n), A276729(n)]` -/
def P17553785750597578539.Spec : Prop :=
  ∀ n, (P17553785750597578539.a n : ℤ) = A092626 (n + 1)

end A092626

/-! ## A092626.P5485478895216541329

`eq[A276729(n), A302055(n)]`
-/

namespace A092626.P5485478895216541329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092626.P5485478895216541329

namespace A092626

/-- `eq[A276729(n), A302055(n)]` -/
def P5485478895216541329.Spec : Prop :=
  ∀ n, (P5485478895216541329.a n : ℤ) = A092626 (n + 1)

end A092626

/-! ## A092626.P6474234786621714701

`eq[A276729(n), A328772(n)]`
-/

namespace A092626.P6474234786621714701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092626.P6474234786621714701

namespace A092626

/-- `eq[A276729(n), A328772(n)]` -/
def P6474234786621714701.Spec : Prop :=
  ∀ n, (P6474234786621714701.a n : ℤ) = A092626 (n + 1)

end A092626

/-! ## A092626.P11145124881967182267

`eq[A276729(n)², A369971(n)]`
-/

namespace A092626.P11145124881967182267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092626.P11145124881967182267

namespace A092626

/-- `eq[A276729(n)², A369971(n)]` -/
def P11145124881967182267.Spec : Prop :=
  ∀ n, (P11145124881967182267.a n : ℤ) = A092626 (n + 1)

end A092626

/-! ## A092626.P5324058654621705286

`eq[A276729(n)+1, A225244(n)]`
-/

namespace A092626.P5324058654621705286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092626.P5324058654621705286

namespace A092626

/-- `eq[A276729(n)+1, A225244(n)]` -/
def P5324058654621705286.Spec : Prop :=
  ∀ n, (P5324058654621705286.a n : ℤ) = A092626 (n + 1)

end A092626

/-! ## A092626.P1800193843755222939

`eq[A276729(n)+1, A343371(n)]`
-/

namespace A092626.P1800193843755222939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343371 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092626.P1800193843755222939

namespace A092626

/-- `eq[A276729(n)+1, A343371(n)]` -/
def P1800193843755222939.Spec : Prop :=
  ∀ n, (P1800193843755222939.a n : ℤ) = A092626 (n + 1)

end A092626

/-! ## A092626.P7895169438006770489

`eq[1, A105700(n)*A276729(n)]`
-/

namespace A092626.P7895169438006770489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n * A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092626.P7895169438006770489

namespace A092626

/-- `eq[1, A105700(n)*A276729(n)]` -/
def P7895169438006770489.Spec : Prop :=
  ∀ n, (P7895169438006770489.a n : ℤ) = A092626 (n + 1)

end A092626

/-! ## A092626.P10093357010801778849

`eq[A276729(n)+n, A055672(n)]`
-/

namespace A092626.P10093357010801778849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092626.P10093357010801778849

namespace A092626

/-- `eq[A276729(n)+n, A055672(n)]` -/
def P10093357010801778849.Spec : Prop :=
  ∀ n, (P10093357010801778849.a n : ℤ) = A092626 (n + 1)

end A092626

/-! ## A092626.P16193440336593577288

`eq[n, A007918(n)*A276729(n)]`
-/

namespace A092626.P16193440336593577288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n * A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092626.P16193440336593577288

namespace A092626

/-- `eq[n, A007918(n)*A276729(n)]` -/
def P16193440336593577288.Spec : Prop :=
  ∀ n, (P16193440336593577288.a n : ℤ) = A092626 (n + 1)

end A092626

/-! ## A092626.P12758105833821136770

`p?[A000040(n+1)*A276729(A000040(n+1))]`
-/

namespace A092626.P12758105833821136770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A276729 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092626.P12758105833821136770

namespace A092626

/-- `p?[A000040(n+1)*A276729(A000040(n+1))]` -/
def P12758105833821136770.Spec : Prop :=
  ∀ n, P12758105833821136770.a n = A092626 (n + 1)

end A092626

/-! ## A092626.P7838535231266010288

`eq[A276729(n)+1, A053204(n)]`
-/

namespace A092626.P7838535231266010288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092626.P7838535231266010288

namespace A092626

/-- `eq[A276729(n)+1, A053204(n)]` -/
def P7838535231266010288.Spec : Prop :=
  ∀ n, (P7838535231266010288.a n : ℤ) = A092626 (n + 1)

end A092626

/-! ## A092626.P6245104184863970224

`eq[A276729(n)+1, A326486(n)]`
-/

namespace A092626.P6245104184863970224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092626.P6245104184863970224

namespace A092626

/-- `eq[A276729(n)+1, A326486(n)]` -/
def P6245104184863970224.Spec : Prop :=
  ∀ n, (P6245104184863970224.a n : ℤ) = A092626 (n + 1)

end A092626

/-! ## A092626.P12416326997192009787

`eq[1, A032741(n*A276729(n))]`
-/

namespace A092626.P12416326997192009787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 ((n : ℤ) * A276729 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092626.P12416326997192009787

namespace A092626

/-- `eq[1, A032741(n*A276729(n))]` -/
def P12416326997192009787.Spec : Prop :=
  ∀ n, (P12416326997192009787.a n : ℤ) = A092626 (n + 1)

end A092626

/-! ## A092626.P10142233515243933327

`eq[2, A225244(n*A276729(n))]`
-/

namespace A092626.P10142233515243933327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 ((n : ℤ) * A276729 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092626.P10142233515243933327

namespace A092626

/-- `eq[2, A225244(n*A276729(n))]` -/
def P10142233515243933327.Spec : Prop :=
  ∀ n, (P10142233515243933327.a n : ℤ) = A092626 (n + 1)

end A092626

/-! ## A092626.P3707436404320828628

`eq[2, A343371(n*A276729(n))]`
-/

namespace A092626.P3707436404320828628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343371 ((n : ℤ) * A276729 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092626.P3707436404320828628

namespace A092626

/-- `eq[2, A343371(n*A276729(n))]` -/
def P3707436404320828628.Spec : Prop :=
  ∀ n, (P3707436404320828628.a n : ℤ) = A092626 (n + 1)

end A092626

/-!
# A092627: Primes with exactly two nonprime digits.

The programs for A092627, the canonical program `A092627.P9592149620023770609` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092627 has offset 1).

The definition of A092627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092627.P9592149620023770609

`p?[eq[2, A276729(n)]]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092627

/-- `p?[eq[2, A276729(n)]]` -/
def P9592149620023770609.Spec : Prop :=
  ∀ n, (P9592149620023770609.a n : ℤ) = A092627 (n + 1)

theorem P9592149620023770609.correct : P9592149620023770609.Spec := by
  intro n
  simp only [A092627, Nat.add_sub_cancel]

end A092627

/-! ## A092627.P7479102590923679309

`eq[A184727(n+1), A276729(n)]`
-/

namespace A092627.P7479102590923679309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092627.P7479102590923679309

namespace A092627

/-- `eq[A184727(n+1), A276729(n)]` -/
def P7479102590923679309.Spec : Prop :=
  ∀ n, (P7479102590923679309.a n : ℤ) = A092627 (n + 1)

end A092627

/-! ## A092627.P2215686814759973135

`eq[A349825(n)+2, A276729(n)]`
-/

namespace A092627.P2215686814759973135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349825 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092627.P2215686814759973135

namespace A092627

/-- `eq[A349825(n)+2, A276729(n)]` -/
def P2215686814759973135.Spec : Prop :=
  ∀ n, (P2215686814759973135.a n : ℤ) = A092627 (n + 1)

end A092627

/-! ## A092627.P6672997269058404747

`eq[2, A003415(n)*A276729(n)]`
-/

namespace A092627.P6672997269058404747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n * A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092627.P6672997269058404747

namespace A092627

/-- `eq[2, A003415(n)*A276729(n)]` -/
def P6672997269058404747.Spec : Prop :=
  ∀ n, (P6672997269058404747.a n : ℤ) = A092627 (n + 1)

end A092627

/-! ## A092627.P5507672027708475758

`eq[2*A018783(n), A276729(n)]`
-/

namespace A092627.P5507672027708475758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092627.P5507672027708475758

namespace A092627

/-- `eq[2*A018783(n), A276729(n)]` -/
def P5507672027708475758.Spec : Prop :=
  ∀ n, (P5507672027708475758.a n : ℤ) = A092627 (n + 1)

end A092627

/-! ## A092627.P10256070103766495145

`eq[2*A175126(n), A276729(n)]`
-/

namespace A092627.P10256070103766495145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092627.P10256070103766495145

namespace A092627

/-- `eq[2*A175126(n), A276729(n)]` -/
def P10256070103766495145.Spec : Prop :=
  ∀ n, (P10256070103766495145.a n : ℤ) = A092627 (n + 1)

end A092627

/-! ## A092627.P17727274186911964088

`eq[2, A276729(n)*A302055(n)]`
-/

namespace A092627.P17727274186911964088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n * A302055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092627.P17727274186911964088

namespace A092627

/-- `eq[2, A276729(n)*A302055(n)]` -/
def P17727274186911964088.Spec : Prop :=
  ∀ n, (P17727274186911964088.a n : ℤ) = A092627 (n + 1)

end A092627

/-! ## A092627.P9490212089004393590

`eq[2*A328772(n), A276729(n)]`
-/

namespace A092627.P9490212089004393590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A328772 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092627.P9490212089004393590

namespace A092627

/-- `eq[2*A328772(n), A276729(n)]` -/
def P9490212089004393590.Spec : Prop :=
  ∀ n, (P9490212089004393590.a n : ℤ) = A092627 (n + 1)

end A092627

/-! ## A092627.P1395903744890088773

`eq[2, A276729(n)*A369971(n)]`
-/

namespace A092627.P1395903744890088773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n * A369971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092627.P1395903744890088773

namespace A092627

/-- `eq[2, A276729(n)*A369971(n)]` -/
def P1395903744890088773.Spec : Prop :=
  ∀ n, (P1395903744890088773.a n : ℤ) = A092627 (n + 1)

end A092627

/-! ## A092627.P3119946118474951749

`eq[2, A276729(gcd(n, A007918(n)))]`
-/

namespace A092627.P3119946118474951749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (Int.gcd (n : ℤ) (A007918 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092627.P3119946118474951749

namespace A092627

/-- `eq[2, A276729(gcd(n, A007918(n)))]` -/
def P3119946118474951749.Spec : Prop :=
  ∀ n, (P3119946118474951749.a n : ℤ) = A092627 (n + 1)

end A092627

/-! ## A092627.P18294143284332981417

`eq[A225244(n)+2, A276729(n)²]`
-/

namespace A092627.P18294143284332981417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092627.P18294143284332981417

namespace A092627

/-- `eq[A225244(n)+2, A276729(n)²]` -/
def P18294143284332981417.Spec : Prop :=
  ∀ n, (P18294143284332981417.a n : ℤ) = A092627 (n + 1)

end A092627

/-! ## A092627.P17803919216561904205

`eq[A276729(n)+2, A343371(n)²]`
-/

namespace A092627.P17803919216561904205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343371 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092627.P17803919216561904205

namespace A092627

/-- `eq[A276729(n)+2, A343371(n)²]` -/
def P17803919216561904205.Spec : Prop :=
  ∀ n, (P17803919216561904205.a n : ℤ) = A092627 (n + 1)

end A092627

/-! ## A092627.P12912221508819591733

`eq[2, A105700(n)²*A276729(n)]`
-/

namespace A092627.P12912221508819591733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n ^ 2 * A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092627.P12912221508819591733

namespace A092627

/-- `eq[2, A105700(n)²*A276729(n)]` -/
def P12912221508819591733.Spec : Prop :=
  ∀ n, (P12912221508819591733.a n : ℤ) = A092627 (n + 1)

end A092627

/-! ## A092627.P11899191021104125630

`eq[2, A276729(A089026(n+1))]+1`
-/

namespace A092627.P11899191021104125630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (A089026 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A092627.P11899191021104125630

namespace A092627

/-- `eq[2, A276729(A089026(n+1))]+1` -/
def P11899191021104125630.Spec : Prop :=
  ∀ n, (P11899191021104125630.a n : ℤ) = A092627 (n + 1)

end A092627

/-! ## A092627.P11729304727149307240

`eq[A016789(A007920(n)), A276729(n)]`
-/

namespace A092627.P11729304727149307240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A007920 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092627.P11729304727149307240

namespace A092627

/-- `eq[A016789(A007920(n)), A276729(n)]` -/
def P11729304727149307240.Spec : Prop :=
  ∀ n, (P11729304727149307240.a n : ℤ) = A092627 (n + 1)

end A092627

/-! ## A092627.P18080817042580222776

`eq[A000096(A032741(n)), A276729(n)]`
-/

namespace A092627.P18080817042580222776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092627.P18080817042580222776

namespace A092627

/-- `eq[A000096(A032741(n)), A276729(n)]` -/
def P18080817042580222776.Spec : Prop :=
  ∀ n, (P18080817042580222776.a n : ℤ) = A092627 (n + 1)

end A092627

/-! ## A092627.P4272700199239869985

`eq[A062394(A051699(n)), A276729(n)]`
-/

namespace A092627.P4272700199239869985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062394 (A051699 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092627.P4272700199239869985

namespace A092627

/-- `eq[A062394(A051699(n)), A276729(n)]` -/
def P4272700199239869985.Spec : Prop :=
  ∀ n, (P4272700199239869985.a n : ℤ) = A092627 (n + 1)

end A092627

/-! ## A092627.P528194893407109305

`eq[A060264(A349825(n)), A276729(n)]`
-/

namespace A092627.P528194893407109305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (A349825 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092627.P528194893407109305

namespace A092627

/-- `eq[A060264(A349825(n)), A276729(n)]` -/
def P528194893407109305.Spec : Prop :=
  ∀ n, (P528194893407109305.a n : ℤ) = A092627 (n + 1)

end A092627

/-! ## A092627.P1078679190744904302

`eq[A000096(A231820(n+1)), A276729(n)]`
-/

namespace A092627.P1078679190744904302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A231820 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092627.P1078679190744904302

namespace A092627

/-- `eq[A000096(A231820(n+1)), A276729(n)]` -/
def P1078679190744904302.Spec : Prop :=
  ∀ n, (P1078679190744904302.a n : ℤ) = A092627 (n + 1)

end A092627

/-! ## A092627.P8584813747350198444

`A000040(eq[2, A276729(A000040(n+1))]+1)`
-/

namespace A092627.P8584813747350198444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A092627.P8584813747350198444

namespace A092627

/-- `A000040(eq[2, A276729(A000040(n+1))]+1)` -/
def P8584813747350198444.Spec : Prop :=
  ∀ n, P8584813747350198444.a n = A092627 (n + 1)

end A092627

/-!
# A092628: Primes with exactly three nonprime digits.

The programs for A092628, the canonical program `A092628.P4218772193652976516` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092628 has offset 1).

The definition of A092628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092628.P4218772193652976516

`p?[eq[3, A276729(n)]]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092628

/-- `p?[eq[3, A276729(n)]]` -/
def P4218772193652976516.Spec : Prop :=
  ∀ n, (P4218772193652976516.a n : ℤ) = A092628 (n + 1)

theorem P4218772193652976516.correct : P4218772193652976516.Spec := by
  intro n
  simp only [A092628, Nat.add_sub_cancel]

end A092628

/-! ## A092628.P14534436512526214536

`eq[A225244(n)+1, A276729(n)]`
-/

namespace A092628.P14534436512526214536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092628.P14534436512526214536

namespace A092628

/-- `eq[A225244(n)+1, A276729(n)]` -/
def P14534436512526214536.Spec : Prop :=
  ∀ n, (P14534436512526214536.a n : ℤ) = A092628 (n + 1)

end A092628

/-! ## A092628.P10462345190714491777

`eq[A343371(n)+1, A276729(n)]`
-/

namespace A092628.P10462345190714491777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343371 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092628.P10462345190714491777

namespace A092628

/-- `eq[A343371(n)+1, A276729(n)]` -/
def P10462345190714491777.Spec : Prop :=
  ∀ n, (P10462345190714491777.a n : ℤ) = A092628 (n + 1)

end A092628

/-! ## A092628.P3319073795885290490

`eq[A003415(n)+2, A276729(n)]`
-/

namespace A092628.P3319073795885290490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092628.P3319073795885290490

namespace A092628

/-- `eq[A003415(n)+2, A276729(n)]` -/
def P3319073795885290490.Spec : Prop :=
  ∀ n, (P3319073795885290490.a n : ℤ) = A092628 (n + 1)

end A092628

/-! ## A092628.P5492394473619605800

`eq[A018783(n)+2, A276729(n)]`
-/

namespace A092628.P5492394473619605800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092628.P5492394473619605800

namespace A092628

/-- `eq[A018783(n)+2, A276729(n)]` -/
def P5492394473619605800.Spec : Prop :=
  ∀ n, (P5492394473619605800.a n : ℤ) = A092628 (n + 1)

end A092628

/-! ## A092628.P3950471849231461266

`eq[A326486(n)+1, A276729(n)]`
-/

namespace A092628.P3950471849231461266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326486 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092628.P3950471849231461266

namespace A092628

/-- `eq[A326486(n)+1, A276729(n)]` -/
def P3950471849231461266.Spec : Prop :=
  ∀ n, (P3950471849231461266.a n : ℤ) = A092628 (n + 1)

end A092628

/-!
# A092629: Numbers that have a nonprime number of prime digits.

The programs for A092629, there is no canonical definition to state claims against.
-/

/-! ## A092629.P9765730383682073358

`comp[A078239(n+8)]`
-/

namespace A092629.P9765730383682073358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078239 (n + 8)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092629.P9765730383682073358

/-! ## A092629.P11770553610449825171

`lt[A193238(n), atan(n)]`
-/

namespace A092629.P11770553610449825171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A092629.P11770553610449825171

/-! ## A092629.P4790280010799973229

`lt[A193238(n+1), 2]+1`
-/

namespace A092629.P4790280010799973229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A092629.P4790280010799973229

/-! ## A092629.P10903299881253094850

`comp[A034895(n+1)-1]+1`
-/

namespace A092629.P10903299881253094850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034895 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A092629.P10903299881253094850

/-! ## A092629.P17053232684649436466

`comp[A092619(n+1)-1]+1`
-/

namespace A092629.P17053232684649436466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092619 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A092629.P17053232684649436466

/-! ## A092629.P3637337587228272849

`comp[A092624(n+1)-1]+1`
-/

namespace A092629.P3637337587228272849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092624 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A092629.P3637337587228272849

/-! ## A092629.P13412004590892790241

`comp[A106582(n+1)-1]+1`
-/

namespace A092629.P13412004590892790241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A092629.P13412004590892790241

/-! ## A092629.P2508520095640604233

`comp[A254751(n+1)-1]+1`
-/

namespace A092629.P2508520095640604233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254751 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A092629.P2508520095640604233

/-! ## A092629.P328430037351964546

`eq[A193238(n)!, A054977(n)]`
-/

namespace A092629.P328430037351964546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A193238 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092629.P328430037351964546

/-! ## A092629.P6054719142150334960

`∪[A085520(n+1), A034894(n)]`
-/

namespace A092629.P6054719142150334960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034894 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092629.P6054719142150334960

/-!
# A092630: Nonprime numbers with exactly one nonprime digit.

The programs for A092630, the canonical program `A092630.P6093579132525366148` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092630 has offset 1).

The definition of A092630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1530 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092630.P6093579132525366148

`eq[gcd(n, A007918(n)), A276729(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092630

/-- `eq[gcd(n, A007918(n)), A276729(n)]` -/
def P6093579132525366148.Spec : Prop :=
  ∀ n, (P6093579132525366148.a n : ℤ) = A092630 (n + 1)

theorem P6093579132525366148.correct : P6093579132525366148.Spec := by
  intro n
  simp only [A092630, Nat.add_sub_cancel]

end A092630

/-! ## A092630.P3316971810891976340

`eq[n^A339579(n+1), A276729(n)]`
-/

namespace A092630.P3316971810891976340
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A339579 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A092630.P3316971810891976340

namespace A092630

/-- `eq[n^A339579(n+1), A276729(n)]` -/
def P3316971810891976340.Spec : Prop :=
  ∀ n, (P3316971810891976340.a n : ℤ) = A092630 (n + 1)

end A092630

/-! ## A092630.P346743512570554383

`eq[A057427(n)+A055671(n), A276729(n)]`
-/

namespace A092630.P346743512570554383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092630.P346743512570554383

namespace A092630

/-- `eq[A057427(n)+A055671(n), A276729(n)]` -/
def P346743512570554383.Spec : Prop :=
  ∀ n, (P346743512570554383.a n : ℤ) = A092630 (n + 1)

end A092630

/-! ## A092630.P1872244478299214335

`eq[A276729(n)+A057428(n), A055671(n)]`
-/

namespace A092630.P1872244478299214335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n + A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092630.P1872244478299214335

namespace A092630

/-- `eq[A276729(n)+A057428(n), A055671(n)]` -/
def P1872244478299214335.Spec : Prop :=
  ∀ n, (P1872244478299214335.a n : ℤ) = A092630 (n + 1)

end A092630

/-! ## A092630.P4936281447347241352

`eq[A055671(n)+A134824(n)², A276729(n)]`
-/

namespace A092630.P4936281447347241352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n + A134824 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092630.P4936281447347241352

namespace A092630

/-- `eq[A055671(n)+A134824(n)², A276729(n)]` -/
def P4936281447347241352.Spec : Prop :=
  ∀ n, (P4936281447347241352.a n : ℤ) = A092630 (n + 1)

end A092630

/-! ## A092630.P10794713126362091951

`eq[A276729(n)+A055671(n), A000038(n)!]`
-/

namespace A092630.P10794713126362091951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n + A055671 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A092630.P10794713126362091951

namespace A092630

/-- `eq[A276729(n)+A055671(n), A000038(n)!]` -/
def P10794713126362091951.Spec : Prop :=
  ∀ n, (P10794713126362091951.a n : ℤ) = A092630 (n + 1)

end A092630

/-! ## A092630.P9268779063850627724

`eq[gcd(n², A194603(n+1)), A276729(n)]`
-/

namespace A092630.P9268779063850627724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A194603 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092630.P9268779063850627724

namespace A092630

/-- `eq[gcd(n², A194603(n+1)), A276729(n)]` -/
def P9268779063850627724.Spec : Prop :=
  ∀ n, (P9268779063850627724.a n : ℤ) = A092630 (n + 1)

end A092630

/-!
# A092632: Nonprime numbers with exactly two nonprime digits.

The programs for A092632, the canonical program `A092632.P7603526325188784515` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092632 has offset 1).

The definition of A092632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092632.P7603526325188784515

`eq[2, A276729(n)+A055671(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092632

/-- `eq[2, A276729(n)+A055671(n)]` -/
def P7603526325188784515.Spec : Prop :=
  ∀ n, (P7603526325188784515.a n : ℤ) = A092632 (n + 1)

theorem P7603526325188784515.correct : P7603526325188784515.Spec := by
  intro n
  simp only [A092632, Nat.add_sub_cancel]

end A092632

/-! ## A092632.P6344321846410647652

`eq[2, A276729(n)+A055672(n)]`
-/

namespace A092632.P6344321846410647652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n + A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092632.P6344321846410647652

namespace A092632

/-- `eq[2, A276729(n)+A055672(n)]` -/
def P6344321846410647652.Spec : Prop :=
  ∀ n, (P6344321846410647652.a n : ℤ) = A092632 (n + 1)

end A092632

/-! ## A092632.P4345355551368434804

`eq[1, or(3, A107393(n))-A276729(n)]`
-/

namespace A092632.P4345355551368434804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A107393 n) - A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092632.P4345355551368434804

namespace A092632

/-- `eq[1, or(3, A107393(n))-A276729(n)]` -/
def P4345355551368434804.Spec : Prop :=
  ∀ n, (P4345355551368434804.a n : ℤ) = A092632 (n + 1)

end A092632

/-! ## A092632.P12101867308413291045

`eq[2, A276729(n)+atan(A339579(n+1))]`
-/

namespace A092632.P12101867308413291045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A276729 n : ℝ) + Real.arctan (A339579 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A092632.P12101867308413291045

namespace A092632

/-- `eq[2, A276729(n)+atan(A339579(n+1))]` -/
def P12101867308413291045.Spec : Prop :=
  ∀ n, (P12101867308413291045.a n : ℤ) = A092632 (n + 1)

end A092632

/-! ## A092632.P16084345974063234191

`eq[A049084(A028310(n))+2, A276729(n)]`
-/

namespace A092632.P16084345974063234191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A028310 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092632.P16084345974063234191

namespace A092632

/-- `eq[A049084(A028310(n))+2, A276729(n)]` -/
def P16084345974063234191.Spec : Prop :=
  ∀ n, (P16084345974063234191.a n : ℤ) = A092632 (n + 1)

end A092632

/-! ## A092632.P5335527066390078224

`A000027(eq[2-A055671(n), A276729(n)])`
-/

namespace A092632.P5335527066390078224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A092632.P5335527066390078224

namespace A092632

/-- `A000027(eq[2-A055671(n), A276729(n)])` -/
def P5335527066390078224.Spec : Prop :=
  ∀ n, P5335527066390078224.a n = A092632 (n + 1)

end A092632

/-! ## A092632.P6706600171572024400

`eq[A089026(A060000(n+1))+1, A276729(n)]`
-/

namespace A092632.P6706600171572024400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A060000 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092632.P6706600171572024400

namespace A092632

/-- `eq[A089026(A060000(n+1))+1, A276729(n)]` -/
def P6706600171572024400.Spec : Prop :=
  ∀ n, (P6706600171572024400.a n : ℤ) = A092632 (n + 1)

end A092632

/-! ## A092632.P14050760620082981323

`eq[A000032(A055672(n)), A276729(n)]`
-/

namespace A092632.P14050760620082981323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A055672 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092632.P14050760620082981323

namespace A092632

/-- `eq[A000032(A055672(n)), A276729(n)]` -/
def P14050760620082981323.Spec : Prop :=
  ∀ n, (P14050760620082981323.a n : ℤ) = A092632 (n + 1)

end A092632

/-! ## A092632.P11907022251229726594

`eq[A007918(A055671(n)), A276729(n)]`
-/

namespace A092632.P11907022251229726594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A055671 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092632.P11907022251229726594

namespace A092632

/-- `eq[A007918(A055671(n)), A276729(n)]` -/
def P11907022251229726594.Spec : Prop :=
  ∀ n, (P11907022251229726594.a n : ℤ) = A092632 (n + 1)

end A092632

/-!
# A092633: Nonprime numbers with exactly three nonprime digits.

The programs for A092633, the canonical program `A092633.P7450104256530509530` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092633 has offset 1).

The definition of A092633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2850 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092633.P17881572524844152206

`eq[or(3, A107393(n)), A276729(n)]`
-/

namespace A092633.P17881572524844152206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A107393 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092633.P17881572524844152206

namespace A092633

/-- `eq[or(3, A107393(n)), A276729(n)]` -/
def P17881572524844152206.Spec : Prop :=
  ∀ n, (P17881572524844152206.a n : ℤ) = A092633 (n + 1)

end A092633

/-! ## A092633.P7450104256530509530

`eq[A257890(A055672(n)), A276729(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092633

/-- `eq[A257890(A055672(n)), A276729(n)]` -/
def P7450104256530509530.Spec : Prop :=
  ∀ n, (P7450104256530509530.a n : ℤ) = A092633 (n + 1)

theorem P7450104256530509530.correct : P7450104256530509530.Spec := by
  intro n
  simp only [A092633, Nat.add_sub_cancel]

end A092633

/-! ## A092633.P2915170145635794822

`A000027(eq[3, A276729(n)+A055671(n)])`
-/

namespace A092633.P2915170145635794822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n + A055671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A092633.P2915170145635794822

namespace A092633

/-- `A000027(eq[3, A276729(n)+A055671(n)])` -/
def P2915170145635794822.Spec : Prop :=
  ∀ n, P2915170145635794822.a n = A092633 (n + 1)

end A092633

/-! ## A092633.P14793272807886451469

`eq[A089026(A060000(n+1))+2, A276729(n)]`
-/

namespace A092633.P14793272807886451469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A060000 (n + 1)).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092633.P14793272807886451469

namespace A092633

/-- `eq[A089026(A060000(n+1))+2, A276729(n)]` -/
def P14793272807886451469.Spec : Prop :=
  ∀ n, (P14793272807886451469.a n : ℤ) = A092633 (n + 1)

end A092633

/-! ## A092633.P9622758957469190153

`eq[A016885(A055671(n)/2), A276729(n)]`
-/

namespace A092633.P9622758957469190153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (SequenceMachineLib.roundAway ((A055671 n : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092633.P9622758957469190153

namespace A092633

/-- `eq[A016885(A055671(n)/2), A276729(n)]` -/
def P9622758957469190153.Spec : Prop :=
  ∀ n, (P9622758957469190153.a n : ℤ) = A092633 (n + 1)

end A092633

/-!
# A092634: a(n) = 1 - Sum_{k=2..n} k*k!.

The programs for A092634, the canonical program `A092634.P4640231185373247813` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092634 has offset 2).

The definition of A092634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092634.P4640231185373247813

`3-(n+3)!`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092634

/-- `3-(n+3)!` -/
def P4640231185373247813.Spec : Prop :=
  ∀ n, P4640231185373247813.a n = A092634 (n + 2)

theorem P4640231185373247813.correct : P4640231185373247813.Spec := by
  intro n
  simp only [A092634, Nat.add_sub_cancel]

end A092634

/-! ## A092634.P7310469601712860144

`3-A003422(n+4)+A003422(n+3)`
-/

namespace A092634.P7310469601712860144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A003422 (n + 4) + A003422 (n + 3)

end

end A092634.P7310469601712860144

namespace A092634

/-- `3-A003422(n+4)+A003422(n+3)` -/
def P7310469601712860144.Spec : Prop :=
  ∀ n, P7310469601712860144.a n = A092634 (n + 2)

end A092634

/-! ## A092634.P2829477541003008016

`3-2*∏[n+3]`
-/

namespace A092634.P2829477541003008016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((2 * (∏ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A092634.P2829477541003008016

namespace A092634

/-- `3-2*∏[n+3]` -/
def P2829477541003008016.Spec : Prop :=
  ∀ n, P2829477541003008016.a n = A092634 (n + 2)

end A092634

/-! ## A092634.P3958303634334143006

`-record[abs(3-n)!-3]`
-/

namespace A092634.P3958303634334143006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |3 - (n : ℤ)|.toNat : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092634.P3958303634334143006

namespace A092634

/-- `-record[abs(3-n)!-3]` -/
def P3958303634334143006.Spec : Prop :=
  ∀ n, P3958303634334143006.a n = A092634 (n + 2)

end A092634

/-! ## A092634.P1414983921333422253

`floor(-(tan(5)+(n+3)!))`
-/

namespace A092634.P1414983921333422253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-(Real.tan (5 : ℝ) + (Nat.factorial (n + 3) : ℝ))⌋

end

end A092634.P1414983921333422253

namespace A092634

/-- `floor(-(tan(5)+(n+3)!))` -/
def P1414983921333422253.Spec : Prop :=
  ∀ n, P1414983921333422253.a n = A092634 (n + 2)

end A092634

/-! ## A092634.P2425232912303358680

`round(-(tan(5)+(n+3)!))`
-/

namespace A092634.P2425232912303358680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-(Real.tan (5 : ℝ) + (Nat.factorial (n + 3) : ℝ)))

end

end A092634.P2425232912303358680

namespace A092634

/-- `round(-(tan(5)+(n+3)!))` -/
def P2425232912303358680.Spec : Prop :=
  ∀ n, P2425232912303358680.a n = A092634 (n + 2)

end A092634

/-! ## A092634.P6272945551319797880

`floor(-(cot(6)+(n+3)!))`
-/

namespace A092634.P6272945551319797880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-(Real.cot (6 : ℝ) + (Nat.factorial (n + 3) : ℝ))⌋

end

end A092634.P6272945551319797880

namespace A092634

/-- `floor(-(cot(6)+(n+3)!))` -/
def P6272945551319797880.Spec : Prop :=
  ∀ n, P6272945551319797880.a n = A092634 (n + 2)

end A092634

/-! ## A092634.P11941570503752845296

`round(-(cot(6)+(n+3)!))`
-/

namespace A092634.P11941570503752845296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-(Real.cot (6 : ℝ) + (Nat.factorial (n + 3) : ℝ)))

end

end A092634.P11941570503752845296

namespace A092634

/-- `round(-(cot(6)+(n+3)!))` -/
def P11941570503752845296.Spec : Prop :=
  ∀ n, P11941570503752845296.a n = A092634 (n + 2)

end A092634

/-! ## A092634.P14750151366964463401

`xor(3, -and(-5, (n+3)!))`
-/

namespace A092634.P14750151366964463401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (-Int.land (-5) (Nat.factorial (n + 3) : ℤ))

end

end A092634.P14750151366964463401

namespace A092634

/-- `xor(3, -and(-5, (n+3)!))` -/
def P14750151366964463401.Spec : Prop :=
  ∀ n, P14750151366964463401.a n = A092634 (n + 2)

end A092634

/-! ## A092634.P11862188103470046687

`or(1, 2-(2*n-(n-3))!)`
-/

namespace A092634.P11862188103470046687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 - (Nat.factorial ((2 * n : ℤ) - ((n : ℤ) - 3)).toNat : ℤ))

end

end A092634.P11862188103470046687

namespace A092634

/-- `or(1, 2-(2*n-(n-3))!)` -/
def P11862188103470046687.Spec : Prop :=
  ∀ n, P11862188103470046687.a n = A092634 (n + 2)

end A092634

/-!
# A092636: Number of consecutive prime runs of 1 prime congruent to 1 mod 4 below 10^n.

The programs for A092636, there is no canonical definition to state claims against.
-/

/-! ## A092636.P15223078935156988185

`A122906(∑[A087432(2*n)])`
-/

namespace A092636.P15223078935156988185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087432 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122906 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A092636.P15223078935156988185

/-!
# A092637: Number of consecutive prime runs of 1 prime congruent to 3 mod 4 below 10^n.

The programs for A092637, there is no canonical definition to state claims against.
-/

/-! ## A092637.P4799727807008949691

`A008620(A081657(n))-n`
-/

namespace A092637.P4799727807008949691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A081657 n).toNat - (n : ℤ)

end

end A092637.P4799727807008949691

/-!
# A092638: Absolute value of difference between counts of uninterrupted runs of single primes in A092636 and A092637.

The programs for A092638, there is no canonical definition to state claims against.
-/

/-! ## A092638.P9688537117068240115

`abs(A092636(n+1)-A092637(n+1))`
-/

namespace A092638.P9688537117068240115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A092636 (n + 1) - A092637 (n + 1)|

end

end A092638.P9688537117068240115

/-! ## A092638.P14006852234216570087

`gcd(A092636(n+1)-A092637(n+1), A331302(n+1))`
-/

namespace A092638.P14006852234216570087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092636 (n + 1) - A092637 (n + 1)) (A331302 (n + 1))

end

end A092638.P14006852234216570087

/-!
# A092640: Number of consecutive prime runs of 2 primes congruent to 3 mod 4 below 10^n.

The programs for A092640, there is no canonical definition to state claims against.
-/

/-! ## A092640.P265711049621901820

`A052275(10^n)-A002260(n+1)`
-/

namespace A092640.P265711049621901820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052275 (10 ^ n) - A002260 (n + 1)

end

end A092640.P265711049621901820

/-!
# A092641: Absolute value of difference between counts of uninterrupted runs of 2 primes in A092639 and A092640.

The programs for A092641, there is no canonical definition to state claims against.
-/

/-! ## A092641.P4300072872586256935

`abs(A092639(n+1)-A092640(n+1))`
-/

namespace A092641.P4300072872586256935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A092639 (n + 1) - A092640 (n + 1)|

end

end A092641.P4300072872586256935

/-! ## A092641.P8378241703007042661

`or(n, A025677(A002315(n)))`
-/

namespace A092641.P8378241703007042661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A025677 (A002315 n).toNat)

end

end A092641.P8378241703007042661

/-!
# A092642: Number of consecutive prime runs of 3 primes congruent to 1 mod 4 below 10^n.

The programs for A092642, there is no canonical definition to state claims against.
-/

/-! ## A092642.P4239806872052676670

`A182276(A149467(n))`
-/

namespace A092642.P4239806872052676670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182276 (A149467 n).toNat

end

end A092642.P4239806872052676670

/-!
# A092643: Number of consecutive prime runs of 3 primes congruent to 3 mod 4 below 10^n.

The programs for A092643, there is no canonical definition to state claims against.
-/

/-! ## A092643.P11255435115760932728

`A337453(a(n-1))-1` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A092643.P11255435115760932728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A337453 (a (n - 1)).toNat - 1

end

end A092643.P11255435115760932728

/-!
# A092644: Absolute value of difference between counts of uninterrupted runs of 3 primes in A092642 and A092643.

The programs for A092644, there is no canonical definition to state claims against.
-/

/-! ## A092644.P5171158562822769789

`abs(A092642(n+1)-A092643(n+1))`
-/

namespace A092644.P5171158562822769789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A092642 (n + 1) - A092643 (n + 1)|

end

end A092644.P5171158562822769789

/-!
# A092645: Number of consecutive prime runs of just 4 primes congruent to 1 mod 4 below 10^n.

The programs for A092645, there is no canonical definition to state claims against.
-/

/-! ## A092645.P13111108010977089540

`∑[A062602(A045900(n)²)]`
-/

namespace A092645.P13111108010977089540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A045900 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092645.P13111108010977089540

/-! ## A092645.P11860691082195520020

`∑[A062602(A151426(n)²)]`
-/

namespace A092645.P11860691082195520020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A151426 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092645.P11860691082195520020

/-!
# A092646: Number of consecutive prime runs of just 4 primes congruent to 3 mod 4 below 10^n.

The programs for A092646, there is no canonical definition to state claims against.
-/

/-! ## A092646.P8077459673295401561

`∑[A013940(A293748(n)²)]`
-/

namespace A092646.P8077459673295401561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013940 (A293748 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092646.P8077459673295401561

/-! ## A092646.P10278990996778350610

`A107128(A185055(n)+A129839(n))`
-/

namespace A092646.P10278990996778350610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 (A185055 n + A129839 n).toNat

end

end A092646.P10278990996778350610

/-!
# A092647: Absolute value of difference between counts of uninterrupted runs of 4 primes in A092645 and A092646.

The programs for A092647, there is no canonical definition to state claims against.
-/

/-! ## A092647.P2162307853850734236

`abs(A092646(n+1)-A092645(n+1))`
-/

namespace A092647.P2162307853850734236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A092646 (n + 1) - A092645 (n + 1)|

end

end A092647.P2162307853850734236

/-! ## A092647.P7435282411432679023

`∑[A068076(A219650(n!))]`
-/

namespace A092647.P7435282411432679023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068076 (A219650 (Nat.factorial n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092647.P7435282411432679023

/-! ## A092647.P9179832089377969026

`A334455(A001586(n))%n!`
-/

namespace A092647.P9179832089377969026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334455 (A001586 n).toNat) (Nat.factorial n : ℤ)

end

end A092647.P9179832089377969026

/-!
# A092648: Number of consecutive prime runs of 5 primes congruent to 1 mod 4 below 10^n.

The programs for A092648, there is no canonical definition to state claims against.
-/

/-! ## A092648.P16214505845585807989

`A092649(n+1)-A277101(A277274(2*n+1)%(∑[n]+1))`
-/

namespace A092648.P16214505845585807989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092649 (n + 1) - A277101 (Int.tmod (A277274 (2 * n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat

end

end A092648.P16214505845585807989

/-! ## A092648.P8606053740044471237

`A092649(n+1)-A126208(A089971(n+1)%A210848(n))`
-/

namespace A092648.P8606053740044471237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092649 (n + 1) - A126208 (Int.tmod (A089971 (n + 1)) (A210848 n)).toNat

end

end A092648.P8606053740044471237

/-!
# A092649: Number of consecutive prime runs of 5 primes congruent to 3 mod 4 below 10^n.

The programs for A092649, there is no canonical definition to state claims against.
-/

/-! ## A092649.P13926974528112390108

`A092650(n+1)+A092648(n+1)%A092651(n+5)`
-/

namespace A092649.P13926974528112390108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092650 (n + 1) + Int.tmod (A092648 (n + 1)) (A092651 (n + 5))

end

end A092649.P13926974528112390108

/-! ## A092649.P7925186283600431605

`A092648(n+1)+A092650(n+1)^A092666(2*n+1)`
-/

namespace A092649.P7925186283600431605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092648 (n + 1) : ℚ) + (A092650 (n + 1) : ℚ) ^ (A092666 (2 * n + 1) : ℤ)

end

end A092649.P7925186283600431605

/-!
# A092650: Absolute value of difference between counts of uninterrupted runs of 5 primes in A092648 and A092649.

The programs for A092650, there is no canonical definition to state claims against.
-/

/-! ## A092650.P17330142135584415470

`abs(A092648(n+1)-A092649(n+1))`
-/

namespace A092650.P17330142135584415470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A092648 (n + 1) - A092649 (n + 1)|

end

end A092650.P17330142135584415470

/-! ## A092650.P10428788661903035894

`A277101(A277274(2*n+1)%(∑[n]+1))`
-/

namespace A092650.P10428788661903035894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277101 (Int.tmod (A277274 (2 * n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat

end

end A092650.P10428788661903035894

/-! ## A092650.P508353923892764564

`A241950(and(A045846(n), A364740(n)))`
-/

namespace A092650.P508353923892764564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241950 (Int.land (A045846 n) (A364740 n)).toNat

end

end A092650.P508353923892764564

/-!
# A092651: Number of consecutive prime runs of 6 primes congruent to 1 mod 4 below 10^n.

The programs for A092651, there is no canonical definition to state claims against.
-/

/-! ## A092651.P7533921607413972665

`xor(1, A068348(n!))`
-/

namespace A092651.P7533921607413972665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A068348 (Nat.factorial n))

end

end A092651.P7533921607413972665

/-! ## A092651.P2126964068864323470

`round(A316201(n+1)/83)`
-/

namespace A092651.P2126964068864323470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A316201 (n + 1) : ℚ) / 83)

end

end A092651.P2126964068864323470

/-!
# A092652: Number of consecutive prime runs of 6 primes congruent to 3 mod 4 below 10^n.

The programs for A092652, there is no canonical definition to state claims against.
-/

/-! ## A092652.P11971733098374588704

`A054237(C(∑[n], 8))`
-/

namespace A092652.P11971733098374588704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054237 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 8)

end

end A092652.P11971733098374588704

/-! ## A092652.P12673395267457229174

`A274528(C(∑[n], 8))`
-/

namespace A092652.P12673395267457229174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 8)

end

end A092652.P12673395267457229174

/-!
# A092653: Absolute value of difference between counts of uninterrupted runs of 6 primes in A092651 and A092652.

The programs for A092653, there is no canonical definition to state claims against.
-/

/-! ## A092653.P7511975882245564374

`abs(A092651(n+1)-A092652(n+1))`
-/

namespace A092653.P7511975882245564374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A092651 (n + 1) - A092652 (n + 1)|

end

end A092653.P7511975882245564374

/-! ## A092653.P14006334241164766688

`A282192(A074430(n+1)-A159787(n))`
-/

namespace A092653.P14006334241164766688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282192 (A074430 (n + 1) - A159787 n).toNat

end

end A092653.P14006334241164766688

/-!
# A092654: Number of consecutive prime runs of 7 primes congruent to 1 mod 4 below 10^n.

The programs for A092654, there is no canonical definition to state claims against.
-/

/-! ## A092654.P363683068293560899

`A106618(A092655(n+1)-A092656(n+1))`
-/

namespace A092654.P363683068293560899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (A092655 (n + 1) - A092656 (n + 1)).toNat

end

end A092654.P363683068293560899

/-! ## A092654.P11845393533155510682

`A254667(A092655(n+1)-A092656(n+1))`
-/

namespace A092654.P11845393533155510682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A092655 (n + 1) - A092656 (n + 1)).toNat

end

end A092654.P11845393533155510682

/-! ## A092654.P502808710509160973

`A340391(A383974(n))`
-/

namespace A092654.P502808710509160973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340391 (A383974 n).toNat

end

end A092654.P502808710509160973

/-!
# A092655: Number of consecutive prime runs of 7 primes congruent to 3 mod 4 below 10^n.

The programs for A092655, there is no canonical definition to state claims against.
-/

/-! ## A092655.P10124848759933293510

`A106618(A092654(n+1))+A092656(n+1)`
-/

namespace A092655.P10124848759933293510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (A092654 (n + 1)).toNat + A092656 (n + 1)

end

end A092655.P10124848759933293510

/-! ## A092655.P17612236894440971886

`A007318(A141713(n))%A116539(n)`
-/

namespace A092655.P17612236894440971886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A141713 n).toNat) (A116539 n)

end

end A092655.P17612236894440971886

/-! ## A092655.P18287287263075338332

`A008676(xor(A051789(n), A328358(n)))`
-/

namespace A092655.P18287287263075338332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (Int.xor (A051789 n) (A328358 n)).toNat

end

end A092655.P18287287263075338332

/-!
# A092656: Absolute value of difference between counts of uninterrupted runs of 7 primes in A092654 and A092655.

The programs for A092656, there is no canonical definition to state claims against.
-/

/-! ## A092656.P9496147396654540129

`abs(A092654(n+1)-A092655(n+1))`
-/

namespace A092656.P9496147396654540129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A092654 (n + 1) - A092655 (n + 1)|

end

end A092656.P9496147396654540129

/-!
# A092657: Number of consecutive prime runs of 8 primes congruent to 1 mod 4 below 10^n.

The programs for A092657, there is no canonical definition to state claims against.
-/

/-! ## A092657.P4387068244382697620

`A007095(A177523(n)-A177520(n))`
-/

namespace A092657.P4387068244382697620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A177523 n - A177520 n).toNat

end

end A092657.P4387068244382697620

/-! ## A092657.P5585159101991220700

`A007095(A177523(n)%A177520(n))`
-/

namespace A092657.P5585159101991220700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A177523 n) (A177520 n)).toNat

end

end A092657.P5585159101991220700

/-! ## A092657.P3218453093224930258

`A051626(A054368(n))`
-/

namespace A092657.P3218453093224930258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A054368 n).toNat

end

end A092657.P3218453093224930258

/-!
# A092658: Number of consecutive prime runs of 8 primes congruent to 3 mod 4 below 10^n.

The programs for A092658, there is no canonical definition to state claims against.
-/

/-! ## A092658.P17756565951374579722

`∑[∑[2*n²]%A110302(n)]`
-/

namespace A092658.P17756565951374579722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A110302 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092658.P17756565951374579722

/-! ## A092658.P17021742067145461829

`A239510(A245388(n+1))`
-/

namespace A092658.P17021742067145461829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239510 (A245388 (n + 1)).toNat

end

end A092658.P17021742067145461829

/-! ## A092658.P7368741886090010148

`A181391(A371271(n)+A272020(n))`
-/

namespace A092658.P7368741886090010148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A371271 n + A272020 n).toNat

end

end A092658.P7368741886090010148

/-!
# A092659: Absolute value of difference between counts of uninterrupted runs of 8 primes in A092657 and A092658.

The programs for A092659, there is no canonical definition to state claims against.
-/

/-! ## A092659.P4513388997286300909

`abs(A092657(n+1)-A092658(n+1))`
-/

namespace A092659.P4513388997286300909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A092657 (n + 1) - A092658 (n + 1)|

end

end A092659.P4513388997286300909

/-! ## A092659.P10841991988599229687

`gcd(A092657(n+1)-A092658(n+1), A235044(n))`
-/

namespace A092659.P10841991988599229687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092657 (n + 1) - A092658 (n + 1)) (A235044 n)

end

end A092659.P10841991988599229687

/-!
# A092660: Number of consecutive prime runs of 9 primes congruent to 1 mod 4 below 10^n.

The programs for A092660, there is no canonical definition to state claims against.
-/

/-! ## A092660.P16870800597991681548

`A092661(n+1)-A092662(n+1)`
-/

namespace A092660.P16870800597991681548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092661 (n + 1) - A092662 (n + 1)

end

end A092660.P16870800597991681548

/-! ## A092660.P9650357029661512628

`A008615(A006850(n)%A012263(n))`
-/

namespace A092660.P9650357029661512628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.tmod (A006850 n) (A012263 n)).toNat

end

end A092660.P9650357029661512628

/-! ## A092660.P4344714221881893405

`A025462(A370023(n+1)+A333381(3*n))`
-/

namespace A092660.P4344714221881893405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 (A370023 (n + 1) + A333381 (3 * n)).toNat

end

end A092660.P4344714221881893405

/-!
# A092661: Number of consecutive prime runs of 9 primes congruent to 3 mod 4 below 10^n.

The programs for A092661, there is no canonical definition to state claims against.
-/

/-! ## A092661.P4038028525505413462

`A092662(n+1)+A092660(n+1)`
-/

namespace A092661.P4038028525505413462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092662 (n + 1) + A092660 (n + 1)

end

end A092661.P4038028525505413462

/-! ## A092661.P8253329072900938248

`round(A000435(n+1)/A014540(3*n+5))`
-/

namespace A092661.P8253329072900938248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000435 (n + 1) : ℚ) / (A014540 (3 * n + 5) : ℚ))

end

end A092661.P8253329072900938248

/-! ## A092661.P11855882110928881902

`A195315(n+1)%A362051(A373632(n))`
-/

namespace A092661.P11855882110928881902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195315 (n + 1)) (A362051 (A373632 n).toNat)

end

end A092661.P11855882110928881902

/-! ## A092661.P15864591599738042911

`A092662(n+1)+A008615(A006850(n)%A012263(n))`
-/

namespace A092661.P15864591599738042911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092662 (n + 1) + A008615 (Int.tmod (A006850 n) (A012263 n)).toNat

end

end A092661.P15864591599738042911

/-!
# A092662: Absolute value of difference between counts of uninterrupted runs of 9 primes in A092660 and A092661.

The programs for A092662, there is no canonical definition to state claims against.
-/

/-! ## A092662.P13311154971651323165

`A092661(n+1)-A092660(n+1)`
-/

namespace A092662.P13311154971651323165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092661 (n + 1) - A092660 (n + 1)

end

end A092662.P13311154971651323165

/-!
# A092663: Number of consecutive prime runs of 10 primes congruent to 1 mod 4 below 10^n.

The programs for A092663, there is no canonical definition to state claims against.
-/

/-! ## A092663.P6079906624219380423

`xor(1, A013599(A086855(n)))`
-/

namespace A092663.P6079906624219380423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A013599 (A086855 n).toNat)

end

end A092663.P6079906624219380423

/-! ## A092663.P13857819420971464482

`∑[A001479(A005896(n)!)]`
-/

namespace A092663.P13857819420971464482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001479 (Nat.factorial (A005896 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092663.P13857819420971464482

/-! ## A092663.P2911838408792762564

`xor(1, A292272(A072879(n+1)))`
-/

namespace A092663.P2911838408792762564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A292272 (A072879 (n + 1)).toNat)

end

end A092663.P2911838408792762564

/-! ## A092663.P17610892343809593079

`A005117(A352307(n))%A090338(n)`
-/

namespace A092663.P17610892343809593079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005117 (A352307 n).toNat) (A090338 n)

end

end A092663.P17610892343809593079

/-!
# A092664: Number of consecutive prime runs of 10 primes congruent to 3 mod 4 below 10^n.

The programs for A092664, there is no canonical definition to state claims against.
-/

/-! ## A092664.P10969163368681046827

`A092663(n+1)+A168201(A275690(n))*A212159(n+2)`
-/

namespace A092664.P10969163368681046827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092663 (n + 1) + A168201 (A275690 n).toNat * A212159 (n + 2)

end

end A092664.P10969163368681046827

/-! ## A092664.P9086942931593839064

`A092663(n+1)+A168201(A302289(n))*A212159(n+2)`
-/

namespace A092664.P9086942931593839064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092663 (n + 1) + A168201 (A302289 n).toNat * A212159 (n + 2)

end

end A092664.P9086942931593839064

/-! ## A092664.P11637666435910767268

`A092663(n+1)+A212159(n+2)*A258573(A325578(n))`
-/

namespace A092664.P11637666435910767268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092663 (n + 1) + A212159 (n + 2) * A258573 (A325578 n).toNat

end

end A092664.P11637666435910767268

/-! ## A092664.P2476433741662693078

`A274716(n^A258204(n+1))`
-/

namespace A092664.P2476433741662693078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274716 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A258204 (n + 1) : ℤ))).toNat

end

end A092664.P2476433741662693078

/-!
# A092665: Absolute value of difference between counts of uninterrupted runs of 10 primes in A092663 and A092664.

The programs for A092665, there is no canonical definition to state claims against.
-/

/-! ## A092665.P653225163162330359

`abs(A092663(n+1)-A092664(n+1))`
-/

namespace A092665.P653225163162330359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A092663 (n + 1) - A092664 (n + 1)|

end

end A092665.P653225163162330359

/-! ## A092665.P6197271779174059516

`A215057(n+1)%∏[gcd(1-n, n%2)]`
-/

namespace A092665.P6197271779174059516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215057 (n + 1)) ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A092665.P6197271779174059516

/-! ## A092665.P9532254471926965416

`Δ[or(9, A003984(floor(n!/(9*n+6))))]`
-/

namespace A092665.P9532254471926965416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 9 (A003984 ⌊(Nat.factorial n : ℚ) / (9 * n + 6 : ℚ)⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092665.P9532254471926965416

/-! ## A092665.P16549970313720537176

`A006579(3^n)%(2^∑[∑{e}[and(n, -n), #]])`
-/

namespace A092665.P16549970313720537176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006579 (3 ^ n)) (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A092665.P16549970313720537176

/-! ## A092665.P7797885858186649320

`A394332(A048814(n))`
-/

namespace A092665.P7797885858186649320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394332 (A048814 (n + 10)).toNat

end

end A092665.P7797885858186649320

/-!
# A092666: a(n) = number of Egyptian fractions 1 = 1/x_1 + ... + 1/x_k (for any k), with 0 < x_1 <= ... <= x_k = n.

The programs for A092666, there is no canonical definition to state claims against.
-/

/-! ## A092666.P4915040829537046293

`A000007(n)+Δ[A020473(A028310(n))]`
-/

namespace A092666.P4915040829537046293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020473 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A092666.P4915040829537046293

/-! ## A092666.P16206757982187391622

`Δ[A057427(n)+A020473(A028310(n))]`
-/

namespace A092666.P16206757982187391622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020473 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092666.P16206757982187391622

/-! ## A092666.P13220355442994335816

`Δ[A020473(A028310(n))-A057428(n)]`
-/

namespace A092666.P13220355442994335816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020473 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092666.P13220355442994335816

/-! ## A092666.P17081687796551277886

`Δ[A020473(A028310(n))+A000040(n+1)%2]`
-/

namespace A092666.P17081687796551277886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020473 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092666.P17081687796551277886

/-! ## A092666.P7480198385387602362

`A020473(n+1)+A000007(n)-A020473(A028310(n))`
-/

namespace A092666.P7480198385387602362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020473 (n + 1) + (A000007 n - A020473 (A028310 n).toNat)

end

end A092666.P7480198385387602362

/-! ## A092666.P3748048353244043492

`A020473(n+1)+A020473(A028310(n))*A057428(n)`
-/

namespace A092666.P3748048353244043492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020473 (n + 1) + A020473 (A028310 n).toNat * A057428 n

end

end A092666.P3748048353244043492

/-! ## A092666.P7231920777741745666

`A020473(n+1)-A020473(A028310(n))*A057427(n)`
-/

namespace A092666.P7231920777741745666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020473 (n + 1) - A020473 (A028310 n).toNat * A057427 n

end

end A092666.P7231920777741745666

/-! ## A092666.P6727361894884076955

`Δ[A020473(A028310(n))%A000079(n)]`
-/

namespace A092666.P6727361894884076955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020473 (A028310 n).toNat) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092666.P6727361894884076955

/-!
# A092667: a(n) = number of Egyptian fractions 1 = 1/x_1 + ... + 1/x_k (for any k), with max{x_i}=n.

The programs for A092667, there is no canonical definition to state claims against.
-/

/-! ## A092667.P16480490196596442514

`A000007(n)+Δ[A038034(A028310(n))]`
-/

namespace A092667.P16480490196596442514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038034 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A092667.P16480490196596442514

/-! ## A092667.P4234955085744561295

`Δ[A178334(n)+A038034(A028310(n))]`
-/

namespace A092667.P4234955085744561295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A038034 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092667.P4234955085744561295

/-! ## A092667.P11899570672293680316

`Δ[A178489(n)+A038034(A028310(n))]`
-/

namespace A092667.P11899570672293680316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n + A038034 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092667.P11899570672293680316

/-! ## A092667.P9713605286948532704

`Δ[A038034(A028310(n))-A054977(n)]`
-/

namespace A092667.P9713605286948532704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038034 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092667.P9713605286948532704

/-! ## A092667.P6337655305463302764

`Δ[A038034(A028310(n))-A057428(n)]`
-/

namespace A092667.P6337655305463302764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038034 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092667.P6337655305463302764

/-!
# A092668: Bisection of A000011.

The programs for A092668, the canonical program `A092668.P1148416843814148712` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092668 has offset 0).

The definition of A092668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092668.P18330853300761902935

`A000011(Δ[n²])`
-/

namespace A092668.P18330853300761902935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A092668.P18330853300761902935

namespace A092668

/-- `A000011(Δ[n²])` -/
def P18330853300761902935.Spec : Prop :=
  ∀ n, P18330853300761902935.a n = A092668 n

end A092668

/-! ## A092668.P8334287317820349908

`A007147(Δ[n²])`
-/

namespace A092668.P8334287317820349908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007147 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A092668.P8334287317820349908

namespace A092668

/-- `A007147(Δ[n²])` -/
def P8334287317820349908.Spec : Prop :=
  ∀ n, P8334287317820349908.a n = A092668 n

end A092668

/-! ## A092668.P11355415410661570345

`A056357(Δ[n²])+1`
-/

namespace A092668.P11355415410661570345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056357 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A092668.P11355415410661570345

namespace A092668

/-- `A056357(Δ[n²])+1` -/
def P11355415410661570345.Spec : Prop :=
  ∀ n, P11355415410661570345.a n = A092668 n

end A092668

/-! ## A092668.P15118872816158644825

`A000029(Δ[n²])/2`
-/

namespace A092668.P15118872816158644825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000029 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A092668.P15118872816158644825

namespace A092668

/-- `A000029(Δ[n²])/2` -/
def P15118872816158644825.Spec : Prop :=
  ∀ n, P15118872816158644825.a n = (A092668 n : ℚ)

end A092668

/-! ## A092668.P4808092226039371314

`record[A000011(lcm(2, n)/2)]`
-/

namespace A092668.P4808092226039371314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092668.P4808092226039371314

namespace A092668

/-- `record[A000011(lcm(2, n)/2)]` -/
def P4808092226039371314.Spec : Prop :=
  ∀ n, P4808092226039371314.a n = A092668 n

end A092668

/-! ## A092668.P12181284979677655354

`record[A000011(n*and(1, n))]`
-/

namespace A092668.P12181284979677655354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n * Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092668.P12181284979677655354

namespace A092668

/-- `record[A000011(n*and(1, n))]` -/
def P12181284979677655354.Spec : Prop :=
  ∀ n, P12181284979677655354.a n = A092668 n

end A092668

/-! ## A092668.P8159389888494128945

`record[A000011(n)^and(1, n)]`
-/

namespace A092668.P8159389888494128945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 n ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092668.P8159389888494128945

namespace A092668

/-- `record[A000011(n)^and(1, n)]` -/
def P8159389888494128945.Spec : Prop :=
  ∀ n, P8159389888494128945.a n = A092668 n

end A092668

/-! ## A092668.P17384756174279867225

`∑{d}[2*n+1, A000046(#)]`
-/

namespace A092668.P17384756174279867225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000046 d

end

end A092668.P17384756174279867225

namespace A092668

/-- `∑{d}[2*n+1, A000046(#)]` -/
def P17384756174279867225.Spec : Prop :=
  ∀ n, P17384756174279867225.a n = A092668 n

end A092668

/-! ## A092668.P13431410139382109783

`or(char[3], A000011(2*n+1))`
-/

namespace A092668.P13431410139382109783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A000011 (2 * n + 1))

end

end A092668.P13431410139382109783

namespace A092668

/-- `or(char[3], A000011(2*n+1))` -/
def P13431410139382109783.Spec : Prop :=
  ∀ n, P13431410139382109783.a n = A092668 n

end A092668

/-! ## A092668.P10128592897407556252

`A056342(2*n+1)/2+1`
-/

namespace A092668.P10128592897407556252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056342 (2 * n + 1) : ℚ) / 2 + 1

end

end A092668.P10128592897407556252

namespace A092668

/-- `A056342(2*n+1)/2+1` -/
def P10128592897407556252.Spec : Prop :=
  ∀ n, P10128592897407556252.a n = (A092668 n : ℚ)

end A092668

/-! ## A092668.P18337277576537933141

`(A091696(2*n+1)+1)/2`
-/

namespace A092668.P18337277576537933141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091696 (2 * n + 1) + 1 : ℚ) / 2

end

end A092668.P18337277576537933141

namespace A092668

/-- `(A091696(2*n+1)+1)/2` -/
def P18337277576537933141.Spec : Prop :=
  ∀ n, P18337277576537933141.a n = (A092668 n : ℚ)

end A092668

/-! ## A092668.P11438634337930883926

`record[A000011((n+1)/and(n+1, -(n+1)))]`
-/

namespace A092668.P11438634337930883926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092668.P11438634337930883926

namespace A092668

/-- `record[A000011((n+1)/and(n+1, -(n+1)))]` -/
def P11438634337930883926.Spec : Prop :=
  ∀ n, P11438634337930883926.a n = A092668 n

end A092668

/-! ## A092668.P11102691920194534778

`record[A000011(A006257(n))]`
-/

namespace A092668.P11102691920194534778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092668.P11102691920194534778

namespace A092668

/-- `record[A000011(A006257(n))]` -/
def P11102691920194534778.Spec : Prop :=
  ∀ n, P11102691920194534778.a n = A092668 n

end A092668

/-! ## A092668.P4970319683932487995

`record[A000011(A026741(n))]`
-/

namespace A092668.P4970319683932487995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092668.P4970319683932487995

namespace A092668

/-- `record[A000011(A026741(n))]` -/
def P4970319683932487995.Spec : Prop :=
  ∀ n, P4970319683932487995.a n = A092668 n

end A092668

/-! ## A092668.P6831493795490504004

`record[A000011(A014681(n)+1)]`
-/

namespace A092668.P6831493795490504004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092668.P6831493795490504004

namespace A092668

/-- `record[A000011(A014681(n)+1)]` -/
def P6831493795490504004.Spec : Prop :=
  ∀ n, P6831493795490504004.a n = A092668 n

end A092668

/-! ## A092668.P14358418753969777192

`record[A000011(A083220(n)+1)]`
-/

namespace A092668.P14358418753969777192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (A083220 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092668.P14358418753969777192

namespace A092668

/-- `record[A000011(A083220(n)+1)]` -/
def P14358418753969777192.Spec : Prop :=
  ∀ n, P14358418753969777192.a n = A092668 n

end A092668

/-! ## A092668.P7442210444933345008

`record[A000011(A273724(n)+1)]`
-/

namespace A092668.P7442210444933345008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (A273724 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092668.P7442210444933345008

namespace A092668

/-- `record[A000011(A273724(n)+1)]` -/
def P7442210444933345008.Spec : Prop :=
  ∀ n, P7442210444933345008.a n = A092668 n

end A092668

/-! ## A092668.P13157694648767943843

`record[gcd(A000011(n), A000029(n))]`
-/

namespace A092668.P13157694648767943843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000011 n) (A000029 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092668.P13157694648767943843

namespace A092668

/-- `record[gcd(A000011(n), A000029(n))]` -/
def P13157694648767943843.Spec : Prop :=
  ∀ n, (P13157694648767943843.a n : ℤ) = A092668 n

end A092668

/-! ## A092668.P1148416843814148712

`A059053(2*n+1)+A000079(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A092668

/-- `A059053(2*n+1)+A000079(n)` -/
def P1148416843814148712.Spec : Prop :=
  ∀ n, P1148416843814148712.a n = A092668 n

theorem P1148416843814148712.correct : P1148416843814148712.Spec := by
  intro n
  simp only [A092668]

end A092668

/-! ## A092668.P3125108468946687537

`A256216(2*n+1)+A000079(n)`
-/

namespace A092668.P3125108468946687537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256216 (2 * n + 1) + A000079 n

end

end A092668.P3125108468946687537

namespace A092668

/-- `A256216(2*n+1)+A000079(n)` -/
def P3125108468946687537.Spec : Prop :=
  ∀ n, P3125108468946687537.a n = A092668 n

end A092668

/-!
# A092669: a(n) = number of Egyptian fractions 1 = 1/x_1 + ... + 1/x_k (for any k), 0

The programs for A092669, there is no canonical definition to state claims against.
-/

/-! ## A092669.P9883595339610198115

`A000007(n)+Δ[A092670(A028310(n))]`
-/

namespace A092669.P9883595339610198115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092670 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A092669.P9883595339610198115

/-! ## A092669.P5177349530259519334

`Δ[A092670(A028310(n))+A057427(n)]`
-/

namespace A092669.P5177349530259519334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092670 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092669.P5177349530259519334

/-! ## A092669.P1348128747409803815

`Δ[A092670(A028310(n))-A057428(n)]`
-/

namespace A092669.P1348128747409803815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092670 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092669.P1348128747409803815

/-! ## A092669.P13936325208247354078

`A092670(n+1)+A000007(n)-A092670(A028310(n))`
-/

namespace A092669.P13936325208247354078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092670 (n + 1) + (A000007 n - A092670 (A028310 n).toNat)

end

end A092669.P13936325208247354078

/-! ## A092669.P14644420495620015353

`A092670(n+1)+A057428(n)*A092670(A028310(n))`
-/

namespace A092669.P14644420495620015353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092670 (n + 1) + A057428 n * A092670 (A028310 n).toNat

end

end A092669.P14644420495620015353

/-! ## A092669.P15597590275975721118

`A092670(n+1)-A057427(n)*A092670(A028310(n))`
-/

namespace A092669.P15597590275975721118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092670 (n + 1) - A057427 n * A092670 (A028310 n).toNat

end

end A092669.P15597590275975721118

/-! ## A092669.P9762048069313254098

`Δ[A092670(A028310(n))%A000045(2*n+1)]`
-/

namespace A092669.P9762048069313254098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092670 (A028310 n).toNat) (A000045 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092669.P9762048069313254098

/-!
# A092670: a(n) = number of Egyptian fractions 1 = 1/x_1 + ... + 1/x_k (for any k), 0

The programs for A092670, there is no canonical definition to state claims against.
-/

/-! ## A092670.P5067089831549393515

`∑[A092669(n+1)]`
-/

namespace A092670.P5067089831549393515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092670.P5067089831549393515

/-! ## A092670.P461320683906778482

`A092669(char[1]+1+n)+a(n-1)` with `a(0)=1`
-/

namespace A092670.P461320683906778482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092669 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + a (n - 1)

end

end A092670.P461320683906778482

/-! ## A092670.P11764419898681021287

`a(n-1)+A092669(n+1)+A000007(n)` with `a(0)=1`
-/

namespace A092670.P11764419898681021287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A092669 (n + 1) + A000007 n)

end

end A092670.P11764419898681021287

/-! ## A092670.P2409818500668605110

`a(n-1)+A005171(n+1)*A092669(n+1)` with `a(0)=1`
-/

namespace A092670.P2409818500668605110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A005171 (n + 1) * A092669 (n + 1)

end

end A092670.P2409818500668605110

/-! ## A092670.P12835128484254030992

`a(n-1)+A209229(2*n+1)+A092669(n+1)` with `a(0)=1`
-/

namespace A092670.P12835128484254030992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A209229 (2 * n + 1) + A092669 (n + 1))

end

end A092670.P12835128484254030992

/-! ## A092670.P8335135176685020911

`a(n-1)+A001221(A007918(n))*A092669(n+1)` with `a(0)=1`
-/

namespace A092670.P8335135176685020911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001221 (A007918 n).toNat * A092669 (n + 1)

end

end A092670.P8335135176685020911

/-! ## A092670.P12828468447043310663

`a(n-1)+A001222(A068831(n+1))*A092669(n+1)` with `a(0)=1`
-/

namespace A092670.P12828468447043310663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001222 (A068831 (n + 1)).toNat * A092669 (n + 1)

end

end A092670.P12828468447043310663

/-!
# A092671: Numbers n such that there exists a solution to the equation 1 = 1/x_1 + ... + 1/x_k (for any k), 0 < x_1 < ... < x_k = n.

The programs for A092671, there is no canonical definition to state claims against.
-/

/-! ## A092671.P15695023563566003719

`eq[n, A275288(A028310(n))]`
-/

namespace A092671.P15695023563566003719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275288 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092671.P15695023563566003719

/-! ## A092671.P2258785287874294384

`A275288(eq[n+1, A275288(n+1)]+1)`
-/

namespace A092671.P2258785287874294384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275288 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A092671.P2258785287874294384

/-! ## A092671.P11681408085061440886

`A275288(record[2*n+1-A275288(n+1)]+1)`
-/

namespace A092671.P11681408085061440886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A275288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275288 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A092671.P11681408085061440886

/-! ## A092671.P8395377370555715684

`lt[0, char[A275288(n+1)]]`
-/

namespace A092671.P8395377370555715684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275288 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092671.P8395377370555715684

/-! ## A092671.P6321796546656406509

`record[(n+1)/A116417(xor(n+1, A275288(n+1)))]`
-/

namespace A092671.P6321796546656406509
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A116417 (Int.xor (n + 1 : ℤ) (A275288 (n + 1))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092671.P6321796546656406509

/-! ## A092671.P10376471315484642107

`record[(n+1)/A271410(xor(n+1, A275288(n+1)))]`
-/

namespace A092671.P10376471315484642107
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A271410 (Int.xor (n + 1 : ℤ) (A275288 (n + 1))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092671.P10376471315484642107

/-!
# A092672: Nonzero elements of A092669.

The programs for A092672, there is no canonical definition to state claims against.
-/

/-! ## A092672.P15893654482276209913

`A092669(A092671(n+1))`
-/

namespace A092672.P15893654482276209913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092669 (A092671 (n + 1)).toNat

end

end A092672.P15893654482276209913

/-! ## A092672.P18065259072111569188

`A092669(eq[1, char[A275288(n+1)]])`
-/

namespace A092672.P18065259072111569188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275288 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092669 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A092672.P18065259072111569188

/-! ## A092672.P14171199489022912966

`A092669(record[n%(A092669(n+1)+n)]+1)`
-/

namespace A092672.P14171199489022912966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A092669 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092669 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A092672.P14171199489022912966

/-! ## A092672.P3580631490825028094

`Δ[record[A092670(n+1)-A037265(5*n+2)]]`
-/

namespace A092672.P3580631490825028094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092670 (n + 1) - A037265 (5 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092672.P3580631490825028094

/-! ## A092672.P9075234774247142105

`Δ[record[A092670(n+1)%A092666(n+1)]]`
-/

namespace A092672.P9075234774247142105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092670 (n + 1)) (A092666 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092672.P9075234774247142105

/-!
# A092673: a(n) = moebius(n) - moebius(n/2) where moebius(n) is zero if n is not an integer.

The programs for A092673, the canonical program `A092673.P12157065487718693493` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092673 has offset 1).

The definition of A092673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092673.P16768552902448098735

`round(A361019(n+1)/2)`
-/

namespace A092673.P16768552902448098735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A361019 (n + 1) : ℚ) / 2)

end

end A092673.P16768552902448098735

namespace A092673

/-- `round(A361019(n+1)/2)` -/
def P16768552902448098735.Spec : Prop :=
  ∀ n, P16768552902448098735.a n = A092673 (n + 1)

end A092673

/-! ## A092673.P14250455908351134421

`A092155(n)+a(n-1)` with `a(0)=1`
-/

namespace A092673.P14250455908351134421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092155 n + a (n - 1)

end

end A092673.P14250455908351134421

namespace A092673

/-- `A092155(n)+a(n-1)` -/
def P14250455908351134421.Spec : Prop :=
  ∀ n, P14250455908351134421.a n = A092673 (n + 1)

end A092673

/-! ## A092673.P9781801794589829123

`A323885(n+1)-A001511(n+1)`
-/

namespace A092673.P9781801794589829123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323885 (n + 1) - A001511 (n + 1)

end

end A092673.P9781801794589829123

namespace A092673

/-- `A323885(n+1)-A001511(n+1)` -/
def P9781801794589829123.Spec : Prop :=
  ∀ n, P9781801794589829123.a n = A092673 (n + 1)

end A092673

/-! ## A092673.P4350569099618989145

`A092152(n+1)-A292273(n+1)`
-/

namespace A092673.P4350569099618989145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n + 1) - A292273 (n + 1)

end

end A092673.P4350569099618989145

namespace A092673

/-- `A092152(n+1)-A292273(n+1)` -/
def P4350569099618989145.Spec : Prop :=
  ∀ n, P4350569099618989145.a n = A092673 (n + 1)

end A092673

/-! ## A092673.P12898903789465634201

`A323885(n+1)+1-A085058(n)`
-/

namespace A092673.P12898903789465634201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323885 (n + 1) + (1 - A085058 n)

end

end A092673.P12898903789465634201

namespace A092673

/-- `A323885(n+1)+1-A085058(n)` -/
def P12898903789465634201.Spec : Prop :=
  ∀ n, P12898903789465634201.a n = A092673 (n + 1)

end A092673

/-! ## A092673.P12157065487718693493

`A056832(n+1)*A092152(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A092673

/-- `A056832(n+1)*A092152(n+1)` -/
def P12157065487718693493.Spec : Prop :=
  ∀ n, P12157065487718693493.a n = A092673 (n + 1)

theorem P12157065487718693493.correct : P12157065487718693493.Spec := by
  intro n
  simp only [A092673, Nat.add_sub_cancel]

end A092673

/-! ## A092673.P15202268719867208405

`A092152(n+1)*A138191(n+1)`
-/

namespace A092673.P15202268719867208405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n + 1) * A138191 (n + 1)

end

end A092673.P15202268719867208405

namespace A092673

/-- `A092152(n+1)*A138191(n+1)` -/
def P15202268719867208405.Spec : Prop :=
  ∀ n, P15202268719867208405.a n = A092673 (n + 1)

end A092673

/-! ## A092673.P17704353062759934042

`A092152(n+1)*A158298(n+1)`
-/

namespace A092673.P17704353062759934042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n + 1) * A158298 (n + 1)

end

end A092673.P17704353062759934042

namespace A092673

/-- `A092152(n+1)*A158298(n+1)` -/
def P17704353062759934042.Spec : Prop :=
  ∀ n, P17704353062759934042.a n = A092673 (n + 1)

end A092673

/-! ## A092673.P11142766113206325292

`A092152(n+1)*A386261(n+1)`
-/

namespace A092673.P11142766113206325292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n + 1) * A386261 (n + 1)

end

end A092673.P11142766113206325292

namespace A092673

/-- `A092152(n+1)*A386261(n+1)` -/
def P11142766113206325292.Spec : Prop :=
  ∀ n, P11142766113206325292.a n = A092673 (n + 1)

end A092673

/-! ## A092673.P9326869881550026139

`A306653(n+1)/A060594(n+1)`
-/

namespace A092673.P9326869881550026139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306653 (n + 1) : ℚ) / (A060594 (n + 1) : ℚ)

end

end A092673.P9326869881550026139

namespace A092673

/-- `A306653(n+1)/A060594(n+1)` -/
def P9326869881550026139.Spec : Prop :=
  ∀ n, P9326869881550026139.a n = (A092673 (n + 1) : ℚ)

end A092673

/-! ## A092673.P4265382516728935680

`A306653(n+1)/A174273(n+1)`
-/

namespace A092673.P4265382516728935680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306653 (n + 1) : ℚ) / (A174273 (n + 1) : ℚ)

end

end A092673.P4265382516728935680

namespace A092673

/-- `A306653(n+1)/A174273(n+1)` -/
def P4265382516728935680.Spec : Prop :=
  ∀ n, P4265382516728935680.a n = (A092673 (n + 1) : ℚ)

end A092673

/-! ## A092673.P6237157521738201645

`A306653(n+1)/A299150(n+1)`
-/

namespace A092673.P6237157521738201645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306653 (n + 1) : ℚ) / (A299150 (n + 1) : ℚ)

end

end A092673.P6237157521738201645

namespace A092673

/-- `A306653(n+1)/A299150(n+1)` -/
def P6237157521738201645.Spec : Prop :=
  ∀ n, P6237157521738201645.a n = (A092673 (n + 1) : ℚ)

end A092673

/-! ## A092673.P14893226806972736938

`A306653(n+1)/A320111(n+1)`
-/

namespace A092673.P14893226806972736938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306653 (n + 1) : ℚ) / (A320111 (n + 1) : ℚ)

end

end A092673.P14893226806972736938

namespace A092673

/-- `A306653(n+1)/A320111(n+1)` -/
def P14893226806972736938.Spec : Prop :=
  ∀ n, P14893226806972736938.a n = (A092673 (n + 1) : ℚ)

end A092673

/-! ## A092673.P17966978332270497941

`A323885(n+1)-(A007814(n+1)+1)`
-/

namespace A092673.P17966978332270497941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323885 (n + 1) - (A007814 (n + 1) + 1)

end

end A092673.P17966978332270497941

namespace A092673

/-- `A323885(n+1)-(A007814(n+1)+1)` -/
def P17966978332270497941.Spec : Prop :=
  ∀ n, P17966978332270497941.a n = A092673 (n + 1)

end A092673

/-! ## A092673.P809673693424723262

`A306653(n+1)/(A155828(n+1)+1)`
-/

namespace A092673.P809673693424723262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306653 (n + 1) : ℚ) / (A155828 (n + 1) + 1 : ℚ)

end

end A092673.P809673693424723262

namespace A092673

/-- `A306653(n+1)/(A155828(n+1)+1)` -/
def P809673693424723262.Spec : Prop :=
  ∀ n, P809673693424723262.a n = (A092673 (n + 1) : ℚ)

end A092673

/-! ## A092673.P3186341637040829717

`2*A008683(n+1)-A359591(n+1)`
-/

namespace A092673.P3186341637040829717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008683 (n + 1) - A359591 (n + 1)

end

end A092673.P3186341637040829717

namespace A092673

/-- `2*A008683(n+1)-A359591(n+1)` -/
def P3186341637040829717.Spec : Prop :=
  ∀ n, P3186341637040829717.a n = A092673 (n + 1)

end A092673

/-! ## A092673.P4640857606956319561

`(2-A355690(n+1)²)*A092152(n+1)`
-/

namespace A092673.P4640857606956319561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A355690 (n + 1) ^ 2) * A092152 (n + 1)

end

end A092673.P4640857606956319561

namespace A092673

/-- `(2-A355690(n+1)²)*A092152(n+1)` -/
def P4640857606956319561.Spec : Prop :=
  ∀ n, P4640857606956319561.a n = A092673 (n + 1)

end A092673

/-! ## A092673.P2342969226069187302

`∑[A092155(n+1)]+1-A092155(n+1)`
-/

namespace A092673.P2342969226069187302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A092155 (n + 1))

end

end A092673.P2342969226069187302

namespace A092673

/-- `∑[A092155(n+1)]+1-A092155(n+1)` -/
def P2342969226069187302.Spec : Prop :=
  ∀ n, P2342969226069187302.a n = A092673 (n + 1)

end A092673

/-! ## A092673.P2926241438417500411

`A306653(n+1)/2^val(A319100(n+1), 2)`
-/

namespace A092673.P2926241438417500411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306653 (n + 1) : ℚ) / (2 ^ SequenceMachineLib.valuation (A319100 (n + 1)).toNat 2 : ℚ)

end

end A092673.P2926241438417500411

namespace A092673

/-- `A306653(n+1)/2^val(A319100(n+1), 2)` -/
def P2926241438417500411.Spec : Prop :=
  ∀ n, P2926241438417500411.a n = (A092673 (n + 1) : ℚ)

end A092673

/-! ## A092673.P16224834737713623142

`∑{d}[n+1, A001227(#)*A007428((n+1)/#)]`
-/

namespace A092673.P16224834737713623142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A007428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A092673.P16224834737713623142

namespace A092673

/-- `∑{d}[n+1, A001227(#)*A007428((n+1)/#)]` -/
def P16224834737713623142.Spec : Prop :=
  ∀ n, P16224834737713623142.a n = A092673 (n + 1)

end A092673

/-!
# A092674: Derived from a(n)=binomial(n+1,2) - sum{i=1,n-1,a(i)*floor(n/i)} (see A000010) - this is the value of the constant term.

The programs for A092674, there is no canonical definition to state claims against.
-/

/-! ## A092674.P5552417267023908929

`A092154(n)+a(n-1)` with `a(0)=0`
-/

namespace A092674.P5552417267023908929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A092154 n + a (n - 1)

end

end A092674.P5552417267023908929

/-! ## A092674.P3360100012267320177

`∑[A092154(floor(acot(n)²+n))]`
-/

namespace A092674.P3360100012267320177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092154 ⌊SequenceMachineLib.acot (n : ℝ) ^ 2 + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092674.P3360100012267320177

/-! ## A092674.P7652082901263582650

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-A092673(n+1)`
-/

namespace A092674.P7652082901263582650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - (A092673 (n + 1) : ℚ)

end

end A092674.P7652082901263582650

/-! ## A092674.P17423668916299439761

`∑[A092154(A000038(n)+n)]`
-/

namespace A092674.P17423668916299439761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092154 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092674.P17423668916299439761

/-! ## A092674.P17678483709128652926

`∑[A092154(abs(n-A000038(n)))]`
-/

namespace A092674.P17678483709128652926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092154 |(n : ℤ) - A000038 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092674.P17678483709128652926

/-! ## A092674.P6743323956715495640

`Δ[A002088(n)]-A092673(n+1)`
-/

namespace A092674.P6743323956715495640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A092673 (n + 1)

end

end A092674.P6743323956715495640

/-! ## A092674.P14490493769362393936

`Δ[A005728(n)]-A092673(n+1)`
-/

namespace A092674.P14490493769362393936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A092673 (n + 1)

end

end A092674.P14490493769362393936

/-! ## A092674.P3039532823182361216

`A000010(n+1)-A092673(n+1)`
-/

namespace A092674.P3039532823182361216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A092673 (n + 1)

end

end A092674.P3039532823182361216

/-! ## A092674.P6258834104595929765

`A000010(n+1)-A123706(∑[n]+1)`
-/

namespace A092674.P6258834104595929765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A123706 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A092674.P6258834104595929765

/-! ## A092674.P3790189176761630010

`∑[A092154(n+1)]-A092154(n+1)`
-/

namespace A092674.P3790189176761630010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A092154 (n + 1)

end

end A092674.P3790189176761630010

/-!
# A092676: Numerators of coefficients in the series for inverf(2x/sqrt(Pi)).

The programs for A092676, there is no canonical definition to state claims against.
-/

/-! ## A092676.P4988732553956424155

`A002067(n)/gcd(A000680(n), A002067(n))`
-/

namespace A092676.P4988732553956424155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002067 n : ℚ) / (Int.gcd (A000680 n) (A002067 n) : ℚ)

end

end A092676.P4988732553956424155

/-! ## A092676.P435159528121076818

`A092677(n+1)/A007019(n)*A002067(n)`
-/

namespace A092676.P435159528121076818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092677 (n + 1) : ℚ) / (A007019 n : ℚ) * (A002067 n : ℚ)

end

end A092676.P435159528121076818

/-! ## A092676.P16242141027685093625

`A026944(n+1)/gcd(A026944(n+1), A122551(n))`
-/

namespace A092676.P16242141027685093625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026944 (n + 1) : ℚ) / (Int.gcd (A026944 (n + 1)) (A122551 n) : ℚ)

end

end A092676.P16242141027685093625

/-! ## A092676.P7615927969538760898

`lcm(A002067(n), A327021(n))/A327021(n)`
-/

namespace A092676.P7615927969538760898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002067 n) (A327021 n) : ℚ) / (A327021 n : ℚ)

end

end A092676.P7615927969538760898

/-! ## A092676.P15902365328912279584

`lcm(A026944(n+1), A122551(n))/A122551(n)`
-/

namespace A092676.P15902365328912279584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A026944 (n + 1)) (A122551 n) : ℚ) / (A122551 n : ℚ)

end

end A092676.P15902365328912279584

/-!
# A092677: Denominators of coefficients in the series for inverf(2x/sqrt(Pi)).

The programs for A092677, there is no canonical definition to state claims against.
-/

/-! ## A092677.P5573045105950364298

`A007019(n)/gcd(A000680(n), A002067(n))`
-/

namespace A092677.P5573045105950364298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007019 n : ℚ) / (Int.gcd (A000680 n) (A002067 n) : ℚ)

end

end A092677.P5573045105950364298

/-! ## A092677.P3902578518691239341

`A092676(n+1)/A002067(n)*A007019(n)`
-/

namespace A092677.P3902578518691239341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092676 (n + 1) : ℚ) / (A002067 n : ℚ) * (A007019 n : ℚ)

end

end A092677.P3902578518691239341

/-! ## A092677.P13093434178683588039

`(2*n+1)*A132467(n)`
-/

namespace A092677.P13093434178683588039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A132467 n

end

end A092677.P13093434178683588039

/-! ## A092677.P10336839090763593820

`lcm(A005408(n)*A132467(n), A005408(n))`
-/

namespace A092677.P10336839090763593820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005408 n * A132467 n) (A005408 n)

end

end A092677.P10336839090763593820

/-! ## A092677.P17488169356067679146

`A005408(n)*A132467(n)*A007318(∑[n])`
-/

namespace A092677.P17488169356067679146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A132467 n * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092677.P17488169356067679146

/-!
# A092681: Least number 2k such that p^2 divides the numerator of the Bernoulli number B(2k), where p is the n-th irregular prime, A000928(n).

The programs for A092681, there is no canonical definition to state claims against.
-/

/-! ## A092681.P10797778392991241362

`A092682(n+1)%A000010(A090798(n+1)²)`
-/

namespace A092681.P10797778392991241362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092682 (n + 1)) (A000010 (A090798 (n + 1) ^ 2).toNat)

end

end A092681.P10797778392991241362

/-!
# A092683: Triangle, read by rows, such that the convolution of each row with {1,1} produces a triangle which, when flattened, equals this flattened form of the original triangle.

The programs for A092683, there is no canonical definition to state claims against.
-/

/-! ## A092683.P940703616696300012

`dr(A096108(A212431(n)))`
-/

namespace A092683.P940703616696300012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A096108 (A212431 n).toNat)

end

end A092683.P940703616696300012

/-! ## A092683.P3148651479512669126

`A167227(A092689(n)+1)`
-/

namespace A092683.P3148651479512669126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167227 (A092689 n + 1).toNat

end

end A092683.P3148651479512669126

/-! ## A092683.P14670354470627622025

`A331255(A349980(n+1))`
-/

namespace A092683.P14670354470627622025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331255 (A349980 (n + 1)).toNat

end

end A092683.P14670354470627622025

/-! ## A092683.P13252615565804035670

`A162246(2*A092689(n))`
-/

namespace A092683.P13252615565804035670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162246 (2 * A092689 n).toNat

end

end A092683.P13252615565804035670

/-! ## A092683.P4238420026085879937

`A082024(n)+A057515(A075853(n))`
-/

namespace A092683.P4238420026085879937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082024 n + A057515 (A075853 n).toNat

end

end A092683.P4238420026085879937

/-!
# A092684: First column and main diagonal of triangle A092683, in which the convolution of each row with {1,1} produces a triangle that, when flattened, equals the flattened form of A092683.

The programs for A092684, there is no canonical definition to state claims against.
-/

/-! ## A092684.P4427368958186830888

`A092683(∑[n])`
-/

namespace A092684.P4427368958186830888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092683 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092684.P4427368958186830888

/-! ## A092684.P16741356150785651378

`and(-1, A092683(n*(n+3)/2))`
-/

namespace A092684.P16741356150785651378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A092683 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 3 : ℚ) / 2))).toNat)

end

end A092684.P16741356150785651378

/-! ## A092684.P11777117281653065651

`gcd((2^n)%2, A092683(C(n+1, 2)))`
-/

namespace A092684.P11777117281653065651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 ^ n % 2 : ℕ) : ℤ) (A092683 (Nat.choose (n + 1) 2))

end

end A092684.P11777117281653065651

/-! ## A092684.P15401902375920623388

`lcm((-1)^(n%3), A092683(record[C(n, 2)-n]))`
-/

namespace A092684.P15401902375920623388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ (n % 3)) (A092683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A092684.P15401902375920623388

/-! ## A092684.P13106758112539969928

`A092683(xor(1, (n+1)²+n)/2)%(7*2^n-gcd(2, n))`
-/

namespace A092684.P13106758112539969928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092683 (SequenceMachineLib.roundAway ((Nat.xor 1 ((n + 1) ^ 2 + n) : ℚ) / 2)).toNat) ((7 * 2 ^ n : ℤ) - (Nat.gcd 2 n : ℤ))

end

end A092684.P13106758112539969928

/-!
# A092685: Row sums of triangle A092683, in which the convolution of each row with {1,1} produces a triangle that, when flattened, equals the flattened form of A092683.

The programs for A092685, there is no canonical definition to state claims against.
-/

/-! ## A092685.P12802110493959847560

`record[∑[A092683(n)]/A013610(n)]`
-/

namespace A092685.P12802110493959847560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092683 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A013610 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092685.P12802110493959847560

/-! ## A092685.P13031634086785712610

`record[∑[A092683(n)]/A059268(n)]`
-/

namespace A092685.P13031634086785712610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092683 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A059268 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092685.P13031634086785712610

/-! ## A092685.P14468522019417742105

`record[∑[A092683(n)]/A062344(n)]`
-/

namespace A092685.P14468522019417742105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092683 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A062344 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092685.P14468522019417742105

/-! ## A092685.P1359554984164644663

`record[∑[A092683(n)]/A002260(n+1)]`
-/

namespace A092685.P1359554984164644663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092683 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A002260 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092685.P1359554984164644663

/-! ## A092685.P12457553639259639431

`record[∑[A092683(n)]/A063431(n+1)]`
-/

namespace A092685.P12457553639259639431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092683 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A063431 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092685.P12457553639259639431

/-!
# A092687: First column and main diagonal of triangle A092686, in which the convolution of each row with {1,2} produces a triangle that, when flattened, equals the flattened form of A092686.

The programs for A092687, there is no canonical definition to state claims against.
-/

/-! ## A092687.P2809058461511265020

`A092686(∑[n])`
-/

namespace A092687.P2809058461511265020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092686 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092687.P2809058461511265020

/-! ## A092687.P1466958690086297195

`record[A092686(n)]`
-/

namespace A092687.P1466958690086297195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092686 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092687.P1466958690086297195

/-! ## A092687.P16879888615293921571

`lcm(gcd(2, ∏{p}[n, #]), A092686(n*(n+1)/2))`
-/

namespace A092687.P16879888615293921571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ) (A092686 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat)

end

end A092687.P16879888615293921571

/-! ## A092687.P3137133120970819395

`lcm((-1)^(n%3), A092686(abs(1-C(n+2, 2))))`
-/

namespace A092687.P3137133120970819395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ (n % 3)) (A092686 |1 - (Nat.choose (n + 2) 2 : ℤ)|.toNat)

end

end A092687.P3137133120970819395

/-! ## A092687.P10122329628316353939

`and(-1, A092686(A000096(n)))`
-/

namespace A092687.P10122329628316353939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A092686 (A000096 n).toNat)

end

end A092687.P10122329628316353939

/-!
# A092688: Row sums of triangle A092686, in which the convolution of each row with {1,2} produces a triangle that, when flattened, equals the flattened form of A092686.

The programs for A092688, there is no canonical definition to state claims against.
-/

/-! ## A092688.P2231632105394620876

`A014245(A002919(n)+A000720(n+1))`
-/

namespace A092688.P2231632105394620876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014245 (A002919 n + A000720 (n + 1)).toNat

end

end A092688.P2231632105394620876

/-! ## A092688.P1857908147530386949

`A089576(A362516(n+1))`
-/

namespace A092688.P1857908147530386949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089576 (A362516 (n + 1)).toNat

end

end A092688.P1857908147530386949

/-!
# A092690: Row sums of triangle A092689, which is related to the central trinomial coefficients (A002426).

The programs for A092690, the canonical program `A092690.P2634630127419684393` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092690 has offset 0).

The definition of A092690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092690.P2634630127419684393

`A132894(n)+A002426(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A092690

/-- `A132894(n)+A002426(n)` -/
def P2634630127419684393.Spec : Prop :=
  ∀ n, P2634630127419684393.a n = A092690 n

theorem P2634630127419684393.correct : P2634630127419684393.Spec := by
  intro n
  simp only [A092690]

end A092690

/-! ## A092690.P13191710423504515230

`A132894(n)+A005213(2*n)`
-/

namespace A092690.P13191710423504515230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132894 n + A005213 (2 * n)

end

end A092690.P13191710423504515230

namespace A092690

/-- `A132894(n)+A005213(2*n)` -/
def P13191710423504515230.Spec : Prop :=
  ∀ n, P13191710423504515230.a n = A092690 n

end A092690

/-! ## A092690.P11701670378096670521

`A002426(n)+n*A005773(n)`
-/

namespace A092690.P11701670378096670521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n + (n : ℤ) * A005773 n

end

end A092690.P11701670378096670521

namespace A092690

/-- `A002426(n)+n*A005773(n)` -/
def P11701670378096670521.Spec : Prop :=
  ∀ n, P11701670378096670521.a n = A092690 n

end A092690

/-! ## A092690.P4641709192950277979

`A097861(n)+A257520(n)+A132894(n)`
-/

namespace A092690.P4641709192950277979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n + (A257520 n + A132894 n)

end

end A092690.P4641709192950277979

namespace A092690

/-- `A097861(n)+A257520(n)+A132894(n)` -/
def P4641709192950277979.Spec : Prop :=
  ∀ n, P4641709192950277979.a n = A092690 n

end A092690

/-! ## A092690.P18178732692338864363

`A005717(n+1)+A132894(n)-A005774(n)`
-/

namespace A092690.P18178732692338864363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 1) + (A132894 n - A005774 n)

end

end A092690.P18178732692338864363

namespace A092690

/-- `A005717(n+1)+A132894(n)-A005774(n)` -/
def P18178732692338864363.Spec : Prop :=
  ∀ n, P18178732692338864363.a n = A092690 n

end A092690

/-! ## A092690.P13930724716147493646

`A134757(n+1)-A132894(n)`
-/

namespace A092690.P13930724716147493646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134757 (n + 1) - A132894 n

end

end A092690.P13930724716147493646

namespace A092690

/-- `A134757(n+1)-A132894(n)` -/
def P13930724716147493646.Spec : Prop :=
  ∀ n, P13930724716147493646.a n = A092690 n

end A092690

/-! ## A092690.P1053244596524072227

`A132894(n+1)-2*A132894(n)`
-/

namespace A092690.P1053244596524072227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132894 (n + 1) - 2 * A132894 n

end

end A092690.P1053244596524072227

namespace A092690

/-- `A132894(n+1)-2*A132894(n)` -/
def P1053244596524072227.Spec : Prop :=
  ∀ n, P1053244596524072227.a n = A092690 n

end A092690

/-! ## A092690.P12319976836399710426

`Δ[A132894(n)]-A132894(n)%A001803(n)`
-/

namespace A092690.P12319976836399710426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.tmod (A132894 n) (A001803 n)

end

end A092690.P12319976836399710426

namespace A092690

/-- `Δ[A132894(n)]-A132894(n)%A001803(n)` -/
def P12319976836399710426.Spec : Prop :=
  ∀ n, P12319976836399710426.a n = A092690 n

end A092690

/-! ## A092690.P6691033814216422898

`Δ[A132894(n)]%A002011(n)-A132894(n)`
-/

namespace A092690.P6691033814216422898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A002011 n) - A132894 n

end

end A092690.P6691033814216422898

namespace A092690

/-- `Δ[A132894(n)]%A002011(n)-A132894(n)` -/
def P6691033814216422898.Spec : Prop :=
  ∀ n, P6691033814216422898.a n = A092690 n

end A092690

/-! ## A092690.P7620914513665418843

`A328347(∑[n])+A132894(n)`
-/

namespace A092690.P7620914513665418843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328347 (∑ j ∈ Finset.range (n + 1), f1 j) + A132894 n

end

end A092690.P7620914513665418843

namespace A092690

/-- `A328347(∑[n])+A132894(n)` -/
def P7620914513665418843.Spec : Prop :=
  ∀ n, P7620914513665418843.a n = A092690 n

end A092690

/-!
# A092691: a(n) = n! * Sum_{k=1..floor(n/2)} 1/(2k).

The programs for A092691, there is no canonical definition to state claims against.
-/

/-! ## A092691.P3127562248458854557

`A000254(n)-A081358(n)`
-/

namespace A092691.P3127562248458854557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n - A081358 n

end

end A092691.P3127562248458854557

/-! ## A092691.P16094069184699926907

`abs(A081048(n))-A081358(n)`
-/

namespace A092691.P16094069184699926907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081048 n| - A081358 n

end

end A092691.P16094069184699926907

/-! ## A092691.P7975901148331796618

`A067176(∑[n])-A081358(n)`
-/

namespace A092691.P7975901148331796618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (∑ j ∈ Finset.range (n + 1), f1 j) - A081358 n

end

end A092691.P7975901148331796618

/-! ## A092691.P7222834801640700007

`record[A067176(n)]-A081358(n)`
-/

namespace A092691.P7222834801640700007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A081358 n

end

end A092691.P7222834801640700007

/-! ## A092691.P12923098881917383876

`A000254(n)%A081358(A028310(n))`
-/

namespace A092691.P12923098881917383876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000254 n) (A081358 (A028310 n).toNat)

end

end A092691.P12923098881917383876

/-! ## A092691.P9780134679599723158

`A000254(n)-(A186768(n)+A186763(n))`
-/

namespace A092691.P9780134679599723158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n - (A186768 n + A186763 n)

end

end A092691.P9780134679599723158

/-! ## A092691.P4118828394558944763

`abs(A081048(n))-(A186768(n)+A186763(n))`
-/

namespace A092691.P4118828394558944763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081048 n| - (A186768 n + A186763 n)

end

end A092691.P4118828394558944763

/-!
# A092692: Expansion of e.g.f. -log(1-x)/(1-x^2).

The programs for A092692, there is no canonical definition to state claims against.
-/

/-! ## A092692.P9189726188926027791

`A000254(n)-n*a(n-1)` with `a(0)=0`
-/

namespace A092692.P9189726188926027791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000254 n - (n : ℤ) * a (n - 1)

end

end A092692.P9189726188926027791

/-! ## A092692.P14634600094107735658

`abs(A081048(n))-n*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A092692.P14634600094107735658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  |A081048 n| - (n : ℤ) * a (n - 1)

end

end A092692.P14634600094107735658

/-! ## A092692.P9740833739638867709

`A000774(n)-n!-n*a(n-1)` with `a(0)=0`
-/

namespace A092692.P9740833739638867709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000774 n - (Nat.factorial n : ℤ) - (n : ℤ) * a (n - 1)

end

end A092692.P9740833739638867709

/-! ## A092692.P1043229947526788979

`n!-A081047(n)-n*a(n-1)` with `a(0)=0`
-/

namespace A092692.P1043229947526788979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.factorial n : ℤ) - A081047 n - (n : ℤ) * a (n - 1)

end

end A092692.P1043229947526788979

/-! ## A092692.P7130015121785909993

`A052517(n+1)/2-n*a(n-1)` with `a(0)=0`
-/

namespace A092692.P7130015121785909993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A052517 (n + 1) : ℚ) / 2 - (n : ℚ) * a (n - 1)

end

end A092692.P7130015121785909993

/-! ## A092692.P15417813733554039552

`A052881(n)-(n*a(n-1)-(n-1)!)` with `a(0)=0`
-/

namespace A092692.P15417813733554039552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A052881 n - ((n : ℤ) * a (n - 1) - (Nat.factorial ((n : ℤ) - 1).toNat : ℤ))

end

end A092692.P15417813733554039552

/-! ## A092692.P10292077366701189601

`A302611(n+1)-A081358(n)`
-/

namespace A092692.P10292077366701189601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302611 (n + 1) - A081358 n

end

end A092692.P10292077366701189601

/-! ## A092692.P12159200903304191344

`A052881(n)-(n*a(n-1)-A104150(n))` with `a(0)=0`
-/

namespace A092692.P12159200903304191344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A052881 n - ((n : ℤ) * a (n - 1) - A104150 n)

end

end A092692.P12159200903304191344

/-! ## A092692.P16083663752559392262

`lcm(A007318(n), A081048(n))-a(n-1)/n^-1` with `a(0)=0`
-/

namespace A092692.P16083663752559392262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (Int.lcm (A007318 n) (A081048 n) : ℚ) - a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A092692.P16083663752559392262

/-! ## A092692.P11656001329583875151

`A302611(n+1)+A081358(n)/A008683(A068486(n+1))`
-/

namespace A092692.P11656001329583875151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302611 (n + 1) : ℚ) + (A081358 n : ℚ) / (A008683 (A068486 (n + 1)).toNat : ℚ)

end

end A092692.P11656001329583875151

/-!
# A092693: Sum of iterated phi(n).

The programs for A092693, the canonical program `A092693.P489239560406468948` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092693 has offset 1).

The definition of A092693 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053478, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A092693.P489239560406468948

`A053478(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A092693

/-- `A053478(n+1)-(n+1)` -/
def P489239560406468948.Spec : Prop :=
  ∀ n, P489239560406468948.a n = A092693 (n + 1)

theorem P489239560406468948.correct : P489239560406468948.Spec := by
  intro n
  simp only [A092693, Nat.add_sub_cancel]

end A092693

/-! ## A092693.P2037506397063178277

`A000010(n+1)+a(A109606(n+1))` with `a(0)=0`
-/

namespace A092693.P2037506397063178277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000010 (n + 1) + a (A109606 (n + 1)).toNat

end

end A092693.P2037506397063178277

namespace A092693

/-- `A000010(n+1)+a(A109606(n+1))` -/
def P2037506397063178277.Spec : Prop :=
  ∀ n, P2037506397063178277.a n = A092693 (n + 1)

end A092693

/-! ## A092693.P132486720757630055

`A053478(A000010(n+1))%A053478(n+1)`
-/

namespace A092693.P132486720757630055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053478 (A000010 (n + 1)).toNat) (A053478 (n + 1))

end

end A092693.P132486720757630055

namespace A092693

/-- `A053478(A000010(n+1))%A053478(n+1)` -/
def P132486720757630055.Spec : Prop :=
  ∀ n, P132486720757630055.a n = A092693 (n + 1)

end A092693

/-! ## A092693.P4837010797452695435

`(A053478(n+1)+A000217(n))%A000217(n+1)`
-/

namespace A092693.P4837010797452695435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053478 (n + 1) + A000217 n) (A000217 (n + 1))

end

end A092693.P4837010797452695435

namespace A092693

/-- `(A053478(n+1)+A000217(n))%A000217(n+1)` -/
def P4837010797452695435.Spec : Prop :=
  ∀ n, P4837010797452695435.a n = A092693 (n + 1)

end A092693

/-! ## A092693.P2258566655606349070

`A053478(A000010(n+1))*A067029(A020639(n+1))`
-/

namespace A092693.P2258566655606349070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053478 (A000010 (n + 1)).toNat * A067029 (A020639 (n + 1)).toNat

end

end A092693.P2258566655606349070

namespace A092693

/-- `A053478(A000010(n+1))*A067029(A020639(n+1))` -/
def P2258566655606349070.Spec : Prop :=
  ∀ n, P2258566655606349070.a n = A092693 (n + 1)

end A092693

/-!
# A092694: Product of iterated phi(n).

The programs for A092694, the canonical program `A092694.P10526234463377638545` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092694 has offset 1).

The definition of A092694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092694.P10526234463377638545

`A291782(n+1)/(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A092694

/-- `A291782(n+1)/(n+1)` -/
def P10526234463377638545.Spec : Prop :=
  ∀ n, P10526234463377638545.a n = (A092694 (n + 1) : ℚ)

end A092694

/-! ## A092694.P3583265035159291129

`A291782(Δ[A002088(n)])`
-/

namespace A092694.P3583265035159291129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291782 (f1 (n + 1) - f1 n).toNat

end

end A092694.P3583265035159291129

namespace A092694

/-- `A291782(Δ[A002088(n)])` -/
def P3583265035159291129.Spec : Prop :=
  ∀ n, P3583265035159291129.a n = A092694 (n + 1)

end A092694

/-! ## A092694.P644727852749880163

`A291782(A000010(n+1))`
-/

namespace A092694.P644727852749880163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291782 (A000010 (n + 1)).toNat

end

end A092694.P644727852749880163

namespace A092694

/-- `A291782(A000010(n+1))` -/
def P644727852749880163.Spec : Prop :=
  ∀ n, P644727852749880163.a n = A092694 (n + 1)

end A092694

/-! ## A092694.P11206257753840305466

`A291782(A109606(n+1)+1)`
-/

namespace A092694.P11206257753840305466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291782 (A109606 (n + 1) + 1).toNat

end

end A092694.P11206257753840305466

namespace A092694

/-- `A291782(A109606(n+1)+1)` -/
def P11206257753840305466.Spec : Prop :=
  ∀ n, P11206257753840305466.a n = A092694 (n + 1)

end A092694

/-! ## A092694.P11304043440027755257

`A291782(1-A051953(n+1)+n)`
-/

namespace A092694.P11304043440027755257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291782 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A092694.P11304043440027755257

namespace A092694

/-- `A291782(1-A051953(n+1)+n)` -/
def P11304043440027755257.Spec : Prop :=
  ∀ n, P11304043440027755257.a n = A092694 (n + 1)

end A092694

/-! ## A092694.P18268590643811777826

`a(A109606(n+1))*A000010(n+1)` with `a(0)=1`
-/

namespace A092694.P18268590643811777826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A109606 (n + 1)).toNat * A000010 (n + 1)

end

end A092694.P18268590643811777826

namespace A092694

/-- `a(A109606(n+1))*A000010(n+1)` -/
def P18268590643811777826.Spec : Prop :=
  ∀ n, P18268590643811777826.a n = A092694 (n + 1)

end A092694

/-! ## A092694.P10852885432384058050

`A291782(A002088(n+1)-A002088(n))`
-/

namespace A092694.P10852885432384058050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291782 (A002088 (n + 1) - A002088 n).toNat

end

end A092694.P10852885432384058050

namespace A092694

/-- `A291782(A002088(n+1)-A002088(n))` -/
def P10852885432384058050.Spec : Prop :=
  ∀ n, P10852885432384058050.a n = A092694 (n + 1)

end A092694

/-! ## A092694.P6325844481762786948

`A291782(A063070(n+1)+A000005(n+1))`
-/

namespace A092694.P6325844481762786948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291782 (A063070 (n + 1) + A000005 (n + 1)).toNat

end

end A092694.P6325844481762786948

namespace A092694

/-- `A291782(A063070(n+1)+A000005(n+1))` -/
def P6325844481762786948.Spec : Prop :=
  ∀ n, P6325844481762786948.a n = A092694 (n + 1)

end A092694

/-! ## A092694.P3687158590775118325

`(A039649(n+1)-1)*a(A046073(n+1)*A060594(n+1)-1)` with `a(0)=1`
-/

namespace A092694.P3687158590775118325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A039649 (n + 1) - 1) * a (A046073 (n + 1) * A060594 (n + 1) - 1).toNat

end

end A092694.P3687158590775118325

namespace A092694

/-- `(A039649(n+1)-1)*a(A046073(n+1)*A060594(n+1)-1)` -/
def P3687158590775118325.Spec : Prop :=
  ∀ n, P3687158590775118325.a n = A092694 (n + 1)

end A092694

/-! ## A092694.P16700610870246128870

`(A039649(n+1)-1)*a(A049633(n)-A049632(n)-1)` with `a(0)=1`
-/

namespace A092694.P16700610870246128870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A039649 (n + 1) - 1) * a (A049633 n - A049632 n - 1).toNat

end

end A092694.P16700610870246128870

namespace A092694

/-- `(A039649(n+1)-1)*a(A049633(n)-A049632(n)-1)` -/
def P16700610870246128870.Spec : Prop :=
  ∀ n, P16700610870246128870.a n = A092694 (n + 1)

end A092694

/-! ## A092694.P7496374018428726945

`(A039649(n+1)-1)*a(A282634(∑[n]+1)-1)` with `a(0)=1`
-/

namespace A092694.P7496374018428726945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A039649 (n + 1) - 1) * a (A282634 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1).toNat

end

end A092694.P7496374018428726945

namespace A092694

/-- `(A039649(n+1)-1)*a(A282634(∑[n]+1)-1)` -/
def P7496374018428726945.Spec : Prop :=
  ∀ n, P7496374018428726945.a n = A092694 (n + 1)

end A092694

/-!
# A092695: Number of positive integers less than or equal to n which are not divisible by the primes 2,3,5,7.

The programs for A092695, the canonical program `A092695.P10644607240594613429` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092695 has offset 0).

The definition of A092695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092695.P1714921171725979884

`∑[char[A008364(n+1)]]`
-/

namespace A092695.P1714921171725979884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092695.P1714921171725979884

namespace A092695

/-- `∑[char[A008364(n+1)]]` -/
def P1714921171725979884.Spec : Prop :=
  ∀ n, (P1714921171725979884.a n : ℤ) = A092695 n

end A092695

/-! ## A092695.P12715449262921561665

`∑[C(2, A242627(n)+1)]`
-/

namespace A092695.P12715449262921561665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A242627 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092695.P12715449262921561665

namespace A092695

/-- `∑[C(2, A242627(n)+1)]` -/
def P12715449262921561665.Spec : Prop :=
  ∀ n, (P12715449262921561665.a n : ℤ) = A092695 n

end A092695

/-! ## A092695.P10644607240594613429

`n-∑[char[A080672(n+1)]]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A092695

/-- `n-∑[char[A080672(n+1)]]` -/
def P10644607240594613429.Spec : Prop :=
  ∀ n, P10644607240594613429.a n = A092695 n

theorem P10644607240594613429.correct : P10644607240594613429.Spec := by
  intro n
  simp only [A092695]

end A092695

/-! ## A092695.P13946801684916577834

`∑[char[lt[7, A102457(n+2)]+1]]`
-/

namespace A092695.P13946801684916577834
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092695.P13946801684916577834

namespace A092695

/-- `∑[char[lt[7, A102457(n+2)]+1]]` -/
def P13946801684916577834.Spec : Prop :=
  ∀ n, (P13946801684916577834.a n : ℤ) = A092695 n

end A092695

/-! ## A092695.P18009030893642645337

`∑[char[A049296(n)+a(n-1)]]` with `a(0)=1`
-/

namespace A092695.P18009030893642645337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A049296 n + f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092695.P18009030893642645337

namespace A092695

/-- `∑[char[A049296(n)+a(n-1)]]` -/
def P18009030893642645337.Spec : Prop :=
  ∀ n, (P18009030893642645337.a n : ℤ) = A092695 n

end A092695

/-! ## A092695.P6044234662160507168

`a(n-1)+C(n, A008364(a(n-1)+1))` with `a(0)=0`
-/

namespace A092695.P6044234662160507168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.choose n (A008364 (a (n - 1) + 1)).toNat

end

end A092695.P6044234662160507168

namespace A092695

/-- `a(n-1)+C(n, A008364(a(n-1)+1))` -/
def P6044234662160507168.Spec : Prop :=
  ∀ n, (P6044234662160507168.a n : ℤ) = A092695 n

end A092695

/-! ## A092695.P18401254654385361431

`∑[A000005(gcd(n, A158559(n+1)))%2]`
-/

namespace A092695.P18401254654385361431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (Int.gcd (n : ℤ) (A158559 (n + 1)))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092695.P18401254654385361431

namespace A092695

/-- `∑[A000005(gcd(n, A158559(n+1)))%2]` -/
def P18401254654385361431.Spec : Prop :=
  ∀ n, P18401254654385361431.a n = A092695 n

end A092695

/-! ## A092695.P15109170434084047959

`∑[C(2, A242627(2*n))]`
-/

namespace A092695.P15109170434084047959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A242627 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092695.P15109170434084047959

namespace A092695

/-- `∑[C(2, A242627(2*n))]` -/
def P15109170434084047959.Spec : Prop :=
  ∀ n, (P15109170434084047959.a n : ℤ) = A092695 n

end A092695

/-! ## A092695.P4819399752723179538

`∑[char[A284254(2*n+1)]]`
-/

namespace A092695.P4819399752723179538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284254 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092695.P4819399752723179538

namespace A092695

/-- `∑[char[A284254(2*n+1)]]` -/
def P4819399752723179538.Spec : Prop :=
  ∀ n, (P4819399752723179538.a n : ℤ) = A092695 n

end A092695

/-!
# A092698: Ooguri-Vafa invariants of disk degeneracies for brane III in the O(K)->P^1 x P^1 geometry.

The programs for A092698, there is no canonical definition to state claims against.
-/

/-! ## A092698.P5254333323063346746

`∑[∑[∑[∑[2*n^4]]]]`
-/

namespace A092698.P5254333323063346746
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092698.P5254333323063346746

/-! ## A092698.P4265958206505228304

`2*∑[∑[∑[A231689(n)]]]`
-/

namespace A092698.P4265958206505228304
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231689 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092698.P4265958206505228304

